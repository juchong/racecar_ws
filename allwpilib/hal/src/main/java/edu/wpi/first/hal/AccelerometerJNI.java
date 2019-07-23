/*----------------------------------------------------------------------------*/
/* Copyright (c) 2016-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.hal;

public class AccelerometerJNI extends JNIWrapper {
  public static native void setAccelerometerActive(boolean active);

  public static native void setAccelerometerRange(int range);

  public static native double getAccelerometerX();

  public static native double getAccelerometerY();

  public static native double getAccelerometerZ();
}
