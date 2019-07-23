/*----------------------------------------------------------------------------*/
/* Copyright (c) 2016-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.hal;

public class InterruptJNI extends JNIWrapper {
  public static final int HalInvalidHandle = 0;

  public interface InterruptJNIHandlerFunction {
    void apply(int interruptAssertedMask, Object param);
  }

  public static native int initializeInterrupts(boolean watcher);

  public static native void cleanInterrupts(int interruptHandle);

  public static native int waitForInterrupt(int interruptHandle, double timeout,
                                            boolean ignorePrevious);

  public static native void enableInterrupts(int interruptHandle);

  public static native void disableInterrupts(int interruptHandle);

  public static native long readInterruptRisingTimestamp(int interruptHandle);

  public static native long readInterruptFallingTimestamp(int interruptHandle);

  public static native void requestInterrupts(int interruptHandle, int digitalSourceHandle,
                                              int analogTriggerType);

  public static native void attachInterruptHandler(int interruptHandle,
                                                   InterruptJNIHandlerFunction handler,
                                                   Object param);

  public static native void setInterruptUpSourceEdge(int interruptHandle, boolean risingEdge,
                                                     boolean fallingEdge);
}
