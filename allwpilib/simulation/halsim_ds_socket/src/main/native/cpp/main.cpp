/*----------------------------------------------------------------------------*/
/* Copyright (c) 2018 FIRST. All Rights Reserved.                             */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------
**  This extension reimplements enough of the FRC_Network layer to enable the
**    simulator to communicate with a driver station.  That includes a
**    simple udp layer for communication.
**  The protocol does not appear to be well documented; this implementation
**    is based in part on the Toast ds_comms.cpp by Jaci and in part
**    by the protocol specification given by QDriverStation.
**--------------------------------------------------------------------------*/

#include <sys/types.h>

#include <cstring>
#include <iostream>

#include <DSCommPacket.h>
#include <wpi/EventLoopRunner.h>
#include <wpi/StringRef.h>
#include <wpi/raw_ostream.h>
#include <wpi/raw_uv_ostream.h>
#include <wpi/uv/Tcp.h>
#include <wpi/uv/Timer.h>
#include <wpi/uv/Udp.h>
#include <wpi/uv/util.h>

#if defined(Win32) || defined(_WIN32)
#pragma comment(lib, "Ws2_32.lib")
#endif

using namespace wpi::uv;

static std::unique_ptr<Buffer> singleByte;

namespace {
struct DataStore {
  wpi::SmallVector<uint8_t, 128> m_frame;
  size_t m_frameSize = std::numeric_limits<size_t>::max();
  halsim::DSCommPacket* dsPacket;
};
}  // namespace

static SimpleBufferPool<4>& GetBufferPool() {
  static SimpleBufferPool<4> bufferPool;
  return bufferPool;
}

static void HandleTcpDataStream(Buffer& buf, size_t size, DataStore& store) {
  wpi::StringRef data{buf.base, size};
  while (!data.empty()) {
    if (store.m_frameSize == std::numeric_limits<size_t>::max()) {
      if (store.m_frame.size() < 2u) {
        size_t toCopy = std::min(2u - store.m_frame.size(), data.size());
        store.m_frame.append(data.bytes_begin(), data.bytes_begin() + toCopy);
        data = data.drop_front(toCopy);
        if (store.m_frame.size() < 2u) return;  // need more data
      }
      store.m_frameSize = (static_cast<uint16_t>(store.m_frame[0]) << 8) |
                          static_cast<uint16_t>(store.m_frame[1]);
    }
    if (store.m_frameSize != std::numeric_limits<size_t>::max()) {
      size_t need = store.m_frameSize - (store.m_frame.size() - 2);
      size_t toCopy = std::min(need, data.size());
      store.m_frame.append(data.bytes_begin(), data.bytes_begin() + toCopy);
      data = data.drop_front(toCopy);
      need -= toCopy;
      if (need == 0) {
        auto ds = store.dsPacket;
        ds->DecodeTCP(store.m_frame);
        store.m_frame.clear();
        store.m_frameSize = std::numeric_limits<size_t>::max();
      }
    }
  }
}

static void SetupTcp(wpi::uv::Loop& loop) {
  auto tcp = Tcp::Create(loop);
  auto tcpWaitTimer = Timer::Create(loop);

  auto recStore = std::make_shared<DataStore>();
  recStore->dsPacket = loop.GetData<halsim::DSCommPacket>().get();

  tcp->SetData(recStore);

  tcp->Bind("0.0.0.0", 1740);

  tcp->Listen([t = tcp.get()] {
    auto client = t->Accept();

    client->data.connect([t](Buffer& buf, size_t len) {
      HandleTcpDataStream(buf, len, *t->GetData<DataStore>());
    });
    client->StartRead();
    client->end.connect([c = client.get()] { c->Close(); });
  });
}

static void SetupUdp(wpi::uv::Loop& loop) {
  auto udp = wpi::uv::Udp::Create(loop);
  udp->Bind("0.0.0.0", 1110);

  // Simulation mode packet
  auto simLoopTimer = Timer::Create(loop);
  struct sockaddr_in simAddr;
  NameToAddr("127.0.0.1", 1135, &simAddr);
  simLoopTimer->timeout.connect([ udpLocal = udp.get(), simAddr ] {
    udpLocal->Send(simAddr, wpi::ArrayRef<Buffer>{singleByte.get(), 1},
                   [](auto buf, Error err) {
                     if (err) {
                       wpi::errs() << err.str() << "\n";
                       wpi::errs().flush();
                     }
                   });
  });
  simLoopTimer->Start(Timer::Time{100}, Timer::Time{100});

  // UDP Receive then send
  udp->received.connect([udpLocal = udp.get()](
      Buffer & buf, size_t len, const sockaddr& recSock, unsigned int port) {
    auto ds = udpLocal->GetLoop()->GetData<halsim::DSCommPacket>();
    ds->DecodeUDP(
        wpi::ArrayRef<uint8_t>{reinterpret_cast<uint8_t*>(buf.base), len});

    struct sockaddr_in outAddr;
    std::memcpy(&outAddr, &recSock, sizeof(sockaddr_in));
    outAddr.sin_family = PF_INET;
    outAddr.sin_port = htons(1150);

    wpi::SmallVector<wpi::uv::Buffer, 4> sendBufs;
    wpi::raw_uv_ostream stream{sendBufs, GetBufferPool()};
    ds->SetupSendBuffer(stream);

    udpLocal->Send(outAddr, sendBufs, [](auto bufs, Error err) {
      GetBufferPool().Release(bufs);
      if (err) {
        wpi::errs() << err.str() << "\n";
        wpi::errs().flush();
      }
    });
    ds->SendUDPToHALSim();
  });

  udp->StartRecv();
}

static void SetupEventLoop(wpi::uv::Loop& loop) {
  auto loopData = std::make_shared<halsim::DSCommPacket>();
  loop.SetData(loopData);
  SetupUdp(loop);
  SetupTcp(loop);
}

static std::unique_ptr<wpi::EventLoopRunner> eventLoopRunner;

/*----------------------------------------------------------------------------
** Main entry point.  We will start listen threads going, processing
**  against our driver station packet
**--------------------------------------------------------------------------*/
extern "C" {
#if defined(WIN32) || defined(_WIN32)
__declspec(dllexport)
#endif
    int HALSIM_InitExtension(void) {
  static bool once = false;

  if (once) {
    std::cerr << "Error: cannot invoke HALSIM_InitExtension twice."
              << std::endl;
    return -1;
  }
  once = true;

  std::cout << "DriverStationSocket Initializing." << std::endl;

  singleByte = std::make_unique<Buffer>("0");

  eventLoopRunner = std::make_unique<wpi::EventLoopRunner>();

  eventLoopRunner->ExecAsync(SetupEventLoop);

  std::cout << "DriverStationSocket Initialized!" << std::endl;
  return 0;
}
}  // extern "C"
