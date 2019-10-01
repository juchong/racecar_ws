/*----------------------------------------------------------------------------*/
/* Copyright (c) 2014-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

#include "TestBench.h"
#include "frc/PIDController.h"
#include "frc/PIDOutput.h"
#include "frc/PIDSource.h"
#include "frc/Timer.h"
#include "gtest/gtest.h"

using namespace frc;

class PIDToleranceTest : public testing::Test {
 protected:
  const double setpoint = 50.0;
  const double range = 200;
  const double tolerance = 10.0;

  class FakeInput : public PIDSource {
   public:
    double val = 0;

    void SetPIDSourceType(PIDSourceType pidSource) {}

    PIDSourceType GetPIDSourceType() { return PIDSourceType::kDisplacement; }

    double PIDGet() { return val; }
  };

  class FakeOutput : public PIDOutput {
    void PIDWrite(double output) {}
  };

  FakeInput inp;
  FakeOutput out;
  PIDController* pid;

  void SetUp() override {
    pid = new PIDController(0.5, 0.0, 0.0, &inp, &out);
    pid->SetInputRange(-range / 2, range / 2);
  }

  void TearDown() override { delete pid; }

  void Reset() { inp.val = 0; }
};

TEST_F(PIDToleranceTest, Absolute) {
  Reset();

  pid->SetAbsoluteTolerance(tolerance);
  pid->SetSetpoint(setpoint);
  pid->Enable();

  EXPECT_FALSE(pid->OnTarget())
      << "Error was in tolerance when it should not have been. Error was "
      << pid->GetError();

  inp.val = setpoint + tolerance / 2;
  Wait(1.0);

  EXPECT_TRUE(pid->OnTarget())
      << "Error was not in tolerance when it should have been. Error was "
      << pid->GetError();

  inp.val = setpoint + 10 * tolerance;
  Wait(1.0);

  EXPECT_FALSE(pid->OnTarget())
      << "Error was in tolerance when it should not have been. Error was "
      << pid->GetError();
}

TEST_F(PIDToleranceTest, Percent) {
  Reset();

  pid->SetPercentTolerance(tolerance);
  pid->SetSetpoint(setpoint);
  pid->Enable();

  EXPECT_FALSE(pid->OnTarget())
      << "Error was in tolerance when it should not have been. Error was "
      << pid->GetError();

  inp.val =
      setpoint + (tolerance) / 200 *
                     range;  // half of percent tolerance away from setpoint
  Wait(1.0);

  EXPECT_TRUE(pid->OnTarget())
      << "Error was not in tolerance when it should have been. Error was "
      << pid->GetError();

  inp.val =
      setpoint +
      (tolerance) / 50 * range;  // double percent tolerance away from setPoint

  Wait(1.0);

  EXPECT_FALSE(pid->OnTarget())
      << "Error was in tolerance when it should not have been. Error was "
      << pid->GetError();
}
