/*----------------------------------------------------------------------------*/
/* Copyright (c) 2008-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.wpilibj.command;

import org.junit.jupiter.api.BeforeEach;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertEquals;

/**
 * The basic test for all {@link Command} tests.
 */
public abstract class AbstractCommandTest {
  @BeforeEach
  void commandSetup() {
    Scheduler.getInstance().removeAll();
    Scheduler.getInstance().enable();
  }

  public class ASubsystem extends Subsystem {
    Command m_command;

    @Override
    protected void initDefaultCommand() {
      if (m_command != null) {
        setDefaultCommand(m_command);
      }
    }

    public void init(Command command) {
      m_command = command;
    }
  }


  protected void assertCommandState(MockCommand command, int initialize, int execute,
                                    int isFinished, int end, int interrupted) {
    assertAll(
        () -> assertEquals(initialize, command.getInitializeCount()),
        () -> assertEquals(execute, command.getExecuteCount()),
        () -> assertEquals(isFinished, command.getIsFinishedCount()),
        () -> assertEquals(end, command.getEndCount()),
        () -> assertEquals(interrupted, command.getInterruptedCount())
    );
  }

  protected void sleep(int time) {
    assertDoesNotThrow(() -> Thread.sleep(time));
  }
}
