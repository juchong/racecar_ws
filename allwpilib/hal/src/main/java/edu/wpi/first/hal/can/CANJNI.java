/*----------------------------------------------------------------------------*/
/* Copyright (c) 2016-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.hal.can;

import java.nio.ByteBuffer;
import java.nio.IntBuffer;

import edu.wpi.first.hal.JNIWrapper;

@SuppressWarnings("AbbreviationAsWordInName")
public class CANJNI extends JNIWrapper {
  public static final int CAN_SEND_PERIOD_NO_REPEAT = 0;
  public static final int CAN_SEND_PERIOD_STOP_REPEATING = -1;

  /* Flags in the upper bits of the messageID */
  public static final int CAN_IS_FRAME_REMOTE = 0x80000000;
  public static final int CAN_IS_FRAME_11BIT = 0x40000000;

  @SuppressWarnings("MethodName")
  public static native void FRCNetCommCANSessionMuxSendMessage(int messageID,
                                                               byte[] data,
                                                               int periodMs);

  @SuppressWarnings("MethodName")
  public static native byte[] FRCNetCommCANSessionMuxReceiveMessage(
      IntBuffer messageID, int messageIDMask, ByteBuffer timeStamp);


  @SuppressWarnings("MethodName")
  public static native void GetCANStatus(CANStatus status);
}
