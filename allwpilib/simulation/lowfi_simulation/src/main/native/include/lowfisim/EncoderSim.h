/*----------------------------------------------------------------------------*/
/* Copyright (c) 2018 FIRST. All Rights Reserved.                             */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

#pragma once

#include "lowfisim/SimulatorComponent.h"

namespace frc {
namespace sim {
namespace lowfi {

class EncoderSim : public virtual SimulatorComponent {
 public:
  virtual void SetPosition(double position) = 0;
  virtual void SetVelocity(double velocity) = 0;
};

}  // namespace lowfi
}  // namespace sim
}  // namespace frc
