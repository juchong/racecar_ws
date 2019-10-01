/*----------------------------------------------------------------------------*/
/* Copyright (c) 2017-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

#include "commands/Collect.h"

#include "Robot.h"
#include "commands/CloseClaw.h"
#include "commands/SetCollectionSpeed.h"
#include "commands/SetPivotSetpoint.h"
#include "commands/WaitForBall.h"

Collect::Collect() {
  AddSequential(new SetCollectionSpeed(Collector::kForward));
  AddParallel(new CloseClaw());
  AddSequential(new SetPivotSetpoint(Pivot::kCollect));
  AddSequential(new WaitForBall());
}
