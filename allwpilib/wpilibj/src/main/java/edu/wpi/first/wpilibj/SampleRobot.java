/*----------------------------------------------------------------------------*/
/* Copyright (c) 2008-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.wpilibj;

import edu.wpi.first.hal.FRCNetComm.tInstances;
import edu.wpi.first.hal.FRCNetComm.tResourceType;
import edu.wpi.first.hal.HAL;
import edu.wpi.first.wpilibj.livewindow.LiveWindow;
import edu.wpi.first.wpilibj.shuffleboard.Shuffleboard;

/**
 * A simple robot base class that knows the standard FRC competition states (disabled, autonomous,
 * or operator controlled).
 *
 * <p>You can build a simple robot program off of this by overriding the robotinit(), disabled(),
 * autonomous() and operatorControl() methods. The startCompetition() method will calls these
 * methods (sometimes repeatedly). depending on the state of the competition.
 *
 * <p>Alternatively you can override the robotMain() method and manage all aspects of the robot
 * yourself.
 *
 * @deprecated WARNING: While it may look like a good choice to use for your code if you're
 *     inexperienced, don't. Unless you know what you are doing, complex code will
 *     be much more difficult under this system. Use TimedRobot or Command-Based
 *     instead.
 */
@Deprecated
public class SampleRobot extends RobotBase {
  private boolean m_robotMainOverridden = true;

  /**
   * Create a new SampleRobot.
   */
  public SampleRobot() {
    HAL.report(tResourceType.kResourceType_Framework, tInstances.kFramework_Simple);
  }

  /**
   * Robot-wide initialization code should go here.
   *
   * <p>Users should override this method for default Robot-wide initialization which will be called
   * when the robot is first powered on. It will be called exactly one time.
   *
   * <p>Warning: the Driver Station "Robot Code" light and FMS "Robot Ready" indicators will be off
   * until RobotInit() exits. Code in RobotInit() that waits for enable will cause the robot to
   * never indicate that the code is ready, causing the robot to be bypassed in a match.
   */
  protected void robotInit() {
    System.out.println("Default robotInit() method running, consider providing your own");
  }

  /**
   * Disabled should go here. Users should override this method to run code that should run while
   * the field is disabled.
   *
   * <p>Called once each time the robot enters the disabled state.
   */
  protected void disabled() {
    System.out.println("Default disabled() method running, consider providing your own");
  }

  /**
   * Autonomous should go here. Users should add autonomous code to this method that should run
   * while the field is in the autonomous period.
   *
   * <p>Called once each time the robot enters the autonomous state.
   */
  public void autonomous() {
    System.out.println("Default autonomous() method running, consider providing your own");
  }

  /**
   * Operator control (tele-operated) code should go here. Users should add Operator Control code to
   * this method that should run while the field is in the Operator Control (tele-operated) period.
   *
   * <p>Called once each time the robot enters the operator-controlled state.
   */
  public void operatorControl() {
    System.out.println("Default operatorControl() method running, consider providing your own");
  }

  /**
   * Test code should go here. Users should add test code to this method that should run while the
   * robot is in test mode.
   */
  @SuppressWarnings("PMD.JUnit4TestShouldUseTestAnnotation")
  public void test() {
    System.out.println("Default test() method running, consider providing your own");
  }

  /**
   * Robot main program for free-form programs.
   *
   * <p>This should be overridden by user subclasses if the intent is to not use the autonomous()
   * and operatorControl() methods. In that case, the program is responsible for sensing when to run
   * the autonomous and operator control functions in their program.
   *
   * <p>This method will be called immediately after the constructor is called. If it has not been
   * overridden by a user subclass (i.e. the default version runs), then the robotInit(),
   * disabled(), autonomous() and operatorControl() methods will be called.
   */
  public void robotMain() {
    m_robotMainOverridden = false;
  }

  /**
   * Start a competition. This code tracks the order of the field starting to ensure that everything
   * happens in the right order. Repeatedly run the correct method, either Autonomous or
   * OperatorControl when the robot is enabled. After running the correct method, wait for some
   * state to change, either the other mode starts or the robot is disabled. Then go back and wait
   * for the robot to be enabled again.
   */
  @SuppressWarnings("PMD.CyclomaticComplexity")
  @Override
  public void startCompetition() {
    robotInit();

    // Tell the DS that the robot is ready to be enabled
    HAL.observeUserProgramStarting();

    robotMain();

    if (!m_robotMainOverridden) {
      while (true) {
        if (isDisabled()) {
          m_ds.InDisabled(true);
          disabled();
          m_ds.InDisabled(false);
          while (isDisabled()) {
            Timer.delay(0.01);
          }
        } else if (isAutonomous()) {
          m_ds.InAutonomous(true);
          autonomous();
          m_ds.InAutonomous(false);
          while (isAutonomous() && !isDisabled()) {
            Timer.delay(0.01);
          }
        } else if (isTest()) {
          LiveWindow.setEnabled(true);
          Shuffleboard.enableActuatorWidgets();
          m_ds.InTest(true);
          test();
          m_ds.InTest(false);
          while (isTest() && isEnabled()) {
            Timer.delay(0.01);
          }
          LiveWindow.setEnabled(false);
          Shuffleboard.disableActuatorWidgets();
        } else {
          m_ds.InOperatorControl(true);
          operatorControl();
          m_ds.InOperatorControl(false);
          while (isOperatorControl() && !isDisabled()) {
            Timer.delay(0.01);
          }
        }
      } /* while loop */
    }
  }
}
