/*----------------------------------------------------------------------------*/
/* Copyright (c) 2018 FIRST. All Rights Reserved.                             */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.wpilibj;

import java.io.Closeable;

import edu.wpi.first.hal.CANAPIJNI;
import edu.wpi.first.hal.CANData;
import edu.wpi.first.hal.FRCNetComm.tResourceType;
import edu.wpi.first.hal.HAL;

/**
 * High level class for interfacing with CAN devices conforming to
 * the standard CAN spec.
 *
 * <p>No packets that can be sent gets blocked by the RoboRIO, so all methods
 * work identically in all robot modes.
 *
 * <p>All methods are thread safe, however the CANData object passed into the
 * read methods and the byte[] passed into the write methods need to not
 * be modified for the duration of their respective calls.
 */
public class CAN implements Closeable {
  public static final int kTeamManufacturer = 8;
  public static final int kTeamDeviceType = 10;

  private final int m_handle;

  /**
   * Create a new CAN communication interface with the specific device ID.
   * This uses the team manufacturer and device types.
   * The device ID is 6 bits (0-63).
   *
   * @param deviceId The device id
   */
  public CAN(int deviceId) {
    m_handle = CANAPIJNI.initializeCAN(kTeamManufacturer, deviceId, kTeamDeviceType);
    HAL.report(tResourceType.kResourceType_CAN, deviceId);
  }

  /**
   * Create a new CAN communication interface with a specific device ID,
   * manufacturer and device type. The device ID is 6 bits, the
   * manufacturer is 8 bits, and the device type is 5 bits.
   *
   * @param deviceId           The device ID
   * @param deviceManufacturer The device manufacturer
   * @param deviceType         The device type
   */
  public CAN(int deviceId, int deviceManufacturer, int deviceType) {
    m_handle = CANAPIJNI.initializeCAN(deviceManufacturer, deviceId, deviceType);
    HAL.report(tResourceType.kResourceType_CAN, deviceId);
  }

  /**
   * Closes the CAN communication.
   */
  @Override
  public void close() {
    if (m_handle != 0) {
      CANAPIJNI.cleanCAN(m_handle);
    }
  }

  /**
   * Write a packet to the CAN device with a specific ID. This ID is 10 bits.
   *
   * @param data The data to write (8 bytes max)
   * @param apiId The API ID to write.
   */
  public void writePacket(byte[] data, int apiId) {
    CANAPIJNI.writeCANPacket(m_handle, data, apiId);
  }

  /**
   * Write a repeating packet to the CAN device with a specific ID. This ID is 10 bits.
   * The RoboRIO will automatically repeat the packet at the specified interval
   *
   * @param data The data to write (8 bytes max)
   * @param apiId The API ID to write.
   * @param repeatMs The period to repeat the packet at.
   */
  public void writePacketRepeating(byte[] data, int apiId, int repeatMs) {
    CANAPIJNI.writeCANPacketRepeating(m_handle, data, apiId, repeatMs);
  }

  /**
   * Stop a repeating packet with a specific ID. This ID is 10 bits.
   *
   * @param apiId The API ID to stop repeating
   */
  public void stopPacketRepeating(int apiId) {
    CANAPIJNI.stopCANPacketRepeating(m_handle, apiId);
  }

  /**
   * Read a new CAN packet. This will only return properly once per packet
   * received. Multiple calls without receiving another packet will return false.
   *
   * @param apiId The API ID to read.
   * @param data Storage for the received data.
   * @return True if the data is valid, otherwise false.
   */
  public boolean readPacketNew(int apiId, CANData data) {
    return CANAPIJNI.readCANPacketNew(m_handle, apiId, data);
  }

  /**
   * Read a CAN packet. The will continuously return the last packet received,
   * without accounting for packet age.
   *
   * @param apiId The API ID to read.
   * @param data Storage for the received data.
   * @return True if the data is valid, otherwise false.
   */
  public boolean readPacketLatest(int apiId, CANData data) {
    return CANAPIJNI.readCANPacketLatest(m_handle, apiId, data);
  }

  /**
   * Read a CAN packet. The will return the last packet received until the
   * packet is older then the requested timeout. Then it will return false.
   *
   * @param apiId The API ID to read.
   * @param timeoutMs The timeout time for the packet
   * @param data Storage for the received data.
   * @return True if the data is valid, otherwise false.
   */
  public boolean readPacketTimeout(int apiId, int timeoutMs, CANData data) {
    return CANAPIJNI.readCANPacketTimeout(m_handle, apiId, timeoutMs, data);
  }

  /**
   * Read a CAN packet. The will return the last packet received until the
   * packet is older then the requested timeout. Then it will return false.
   * The period parameter is used when you know the packet is sent at specific
   * intervals, so calls will not attempt to read a new packet from the
   * network until that period has passed. We do not recommend users use this
   * API unless they know the implications.
   *
   * @param apiId The API ID to read.
   * @param timeoutMs The timeout time for the packet
   * @param periodMs The usual period for the packet
   * @param data Storage for the received data.
   * @return True if the data is valid, otherwise false.
   */
  public boolean readPeriodicPacket(int apiId, int timeoutMs, int periodMs, CANData data) {
    return CANAPIJNI.readCANPeriodicPacket(m_handle, apiId, timeoutMs, periodMs, data);
  }
}
