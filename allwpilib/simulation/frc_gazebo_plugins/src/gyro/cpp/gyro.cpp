/*----------------------------------------------------------------------------*/
/* Copyright (c) 2016-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

#include "gyro.h"

#include <boost/algorithm/string/replace.hpp>

GZ_REGISTER_MODEL_PLUGIN(Gyro)

void Gyro::Load(gazebo::physics::ModelPtr model, sdf::ElementPtr sdf) {
  this->model = model;

  // Parse SDF properties
  link = model->GetLink(sdf->Get<std::string>("link"));
  if (sdf->HasElement("topic")) {
    topic = sdf->Get<std::string>("topic");
  } else {
    topic = "~/" + sdf->GetAttribute("name")->GetAsString();
  }

  std::string axisString = sdf->Get<std::string>("axis");
  if (axisString == "roll") axis = Roll;
  if (axisString == "pitch") axis = Pitch;
  if (axisString == "yaw") axis = Yaw;

  if (sdf->HasElement("units")) {
    radians = sdf->Get<std::string>("units") != "degrees";
  } else {
    radians = true;
  }
  zero = GetAngle();

  gzmsg << "Initializing gyro: " << topic << " link=" << link->GetName()
        << " axis=" << axis << " radians=" << radians << std::endl;

  // Connect to Gazebo transport for messaging
  std::string scoped_name =
      model->GetWorld()->Name() + "::" + model->GetScopedName();
  boost::replace_all(scoped_name, "::", "/");
  node = gazebo::transport::NodePtr(new gazebo::transport::Node());
  node->Init(scoped_name);
  command_sub = node->Subscribe(topic + "/control", &Gyro::Callback, this);
  pos_pub = node->Advertise<gazebo::msgs::Float64>(topic + "/position");
  vel_pub = node->Advertise<gazebo::msgs::Float64>(topic + "/velocity");

  // Connect to the world update event.
  // This will trigger the Update function every Gazebo iteration
  updateConn = gazebo::event::Events::ConnectWorldUpdateBegin(
      boost::bind(&Gyro::Update, this, _1));
}

void Gyro::Update(const gazebo::common::UpdateInfo& info) {
  gazebo::msgs::Float64 pos_msg, vel_msg;
  pos_msg.set_data(Limit(GetAngle() - zero));
  pos_pub->Publish(pos_msg);
  vel_msg.set_data(GetVelocity());
  vel_pub->Publish(vel_msg);
}

void Gyro::Callback(const gazebo::msgs::ConstStringPtr& msg) {
  std::string command = msg->data();
  if (command == "reset") {
    zero = GetAngle();
  } else {
    gzerr << "WARNING: Gyro got unknown command '" << command << "'."
          << std::endl;
  }
}

double Gyro::GetAngle() {
  if (radians) {
    return link->WorldCoGPose().Rot().Euler()[axis];
  } else {
    return link->WorldCoGPose().Rot().Euler()[axis] * (180.0 / M_PI);
  }
}

double Gyro::GetVelocity() {
  if (radians) {
    return link->RelativeAngularVel()[axis];
  } else {
    return link->RelativeAngularVel()[axis] * (180.0 / M_PI);
  }
}

double Gyro::Limit(double value) {
  if (radians) {
    while (true) {
      if (value < -M_PI)
        value += 2 * M_PI;
      else if (value > M_PI)
        value -= 2 * M_PI;
      else
        break;
    }
  } else {
    while (true) {
      if (value < -180)
        value += 360;
      else if (value > 180)
        value -= 360;
      else
        break;
    }
  }
  return value;
}
