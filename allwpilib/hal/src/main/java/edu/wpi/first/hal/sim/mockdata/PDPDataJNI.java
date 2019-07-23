/*----------------------------------------------------------------------------*/
/* Copyright (c) 2018 FIRST. All Rights Reserved.                             */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.hal.sim.mockdata;

import edu.wpi.first.hal.sim.NotifyCallback;
import edu.wpi.first.hal.JNIWrapper;

public class PDPDataJNI extends JNIWrapper {
  public static native int registerInitializedCallback(int index, NotifyCallback callback, boolean initialNotify);
  public static native void cancelInitializedCallback(int index, int uid);
  public static native boolean getInitialized(int index);
  public static native void setInitialized(int index, boolean initialized);

  public static native int registerTemperatureCallback(int index, NotifyCallback callback, boolean initialNotify);
  public static native void cancelTemperatureCallback(int index, int uid);
  public static native double getTemperature(int index);
  public static native void setTemperature(int index, double temperature);

  public static native int registerVoltageCallback(int index, NotifyCallback callback, boolean initialNotify);
  public static native void cancelVoltageCallback(int index, int uid);
  public static native double getVoltage(int index);
  public static native void setVoltage(int index, double voltage);


  public static native int registerCurrentCallback(int index, int channel, NotifyCallback callback, boolean initialNotify);
  public static native void cancelCurrentCallback(int index, int channel, int uid);
  public static native double getCurrent(int index, int channel);
  public static native void setCurrent(int index, int channel, double current);

  public static native void resetData(int index);
}
