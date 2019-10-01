/*----------------------------------------------------------------------------*/
/* Copyright (c) 2014-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

#include "GazeboPWM.h"

#include <string>

#include <mockdata/HAL_Value.h>
#include <mockdata/NotifyListener.h>
#include <mockdata/PWMData.h>

#include "simulation/gz_msgs/msgs.h"

static void init_callback(const char* name, void* param,
                          const struct HAL_Value* value) {
  GazeboPWM* pwm = static_cast<GazeboPWM*>(param);
  pwm->SetInitialized(value->data.v_boolean);
}

static void speed_callback(const char* name, void* param,
                           const struct HAL_Value* value) {
  GazeboPWM* pwm = static_cast<GazeboPWM*>(param);
  if (pwm->IsInitialized()) pwm->Publish(value->data.v_double);
}

GazeboPWM::GazeboPWM(int port, HALSimGazebo* halsim) {
  m_port = port;
  m_halsim = halsim;
  HALSIM_RegisterPWMInitializedCallback(port, init_callback, this, true);
  HALSIM_RegisterPWMSpeedCallback(port, speed_callback, this, true);
}

void GazeboPWM::Publish(double value) {
  if (!m_pub) {
    m_pub = m_halsim->node.Advertise<gazebo::msgs::Float64>(
        "~/simulator/pwm/" + std::to_string(m_port));
    m_pub->WaitForConnection(gazebo::common::Time(1, 0));
  }
  gazebo::msgs::Float64 msg;
  msg.set_data(value);
  if (m_pub) m_pub->Publish(msg);
}
