/*----------------------------------------------------------------------------*/
/* Copyright (c) 2017-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

#include "commands/DriveAndShootAutonomous.h"

#include "Robot.h"
#include "commands/CheckForHotGoal.h"
#include "commands/CloseClaw.h"
#include "commands/DriveForward.h"
#include "commands/SetPivotSetpoint.h"
#include "commands/Shoot.h"
#include "commands/WaitForPressure.h"

DriveAndShootAutonomous::DriveAndShootAutonomous() {
  AddSequential(new CloseClaw());
  AddSequential(new WaitForPressure(), 2);
#ifndef SIMULATION
  // NOTE: Simulation doesn't currently have the concept of hot.
  AddSequential(new CheckForHotGoal(2));
#endif
  AddSequential(new SetPivotSetpoint(45));
  AddSequential(new DriveForward(8, 0.3));
  AddSequential(new Shoot());
}
