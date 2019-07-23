/*----------------------------------------------------------------------------*/
/* Copyright (c) 2016-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

#include "dc_motor.h"

#include <boost/algorithm/string/replace.hpp>

GZ_REGISTER_MODEL_PLUGIN(DCMotor)

void DCMotor::Load(gazebo::physics::ModelPtr model, sdf::ElementPtr sdf) {
  this->model = model;
  signal = 0;

  // Parse SDF properties
  joint = model->GetJoint(sdf->Get<std::string>("joint"));
  if (sdf->HasElement("topic")) {
    topic = sdf->Get<std::string>("topic");
  } else {
    topic = "~/" + sdf->GetAttribute("name")->GetAsString();
  }

  if (sdf->HasElement("multiplier")) {
    multiplier = sdf->Get<double>("multiplier");
  } else {
    multiplier = 1;
  }

  gzmsg << "Initializing motor: " << topic << " joint=" << joint->GetName()
        << " multiplier=" << multiplier << std::endl;

  // Connect to Gazebo transport for messaging
  std::string scoped_name =
      model->GetWorld()->Name() + "::" + model->GetScopedName();
  boost::replace_all(scoped_name, "::", "/");
  node = gazebo::transport::NodePtr(new gazebo::transport::Node());
  node->Init(scoped_name);
  sub = node->Subscribe(topic, &DCMotor::Callback, this);

  // Connect to the world update event.
  // This will trigger the Update function every Gazebo iteration
  updateConn = gazebo::event::Events::ConnectWorldUpdateBegin(
      boost::bind(&DCMotor::Update, this, _1));
}

void DCMotor::Update(const gazebo::common::UpdateInfo& info) {
  joint->SetForce(0, signal * multiplier);
}

void DCMotor::Callback(const gazebo::msgs::ConstFloat64Ptr& msg) {
  signal = msg->data();
  if (signal < -1) {
    signal = -1;
  } else if (signal > 1) {
    signal = 1;
  }
}
