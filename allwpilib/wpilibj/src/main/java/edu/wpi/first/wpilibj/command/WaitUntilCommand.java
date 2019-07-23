/*----------------------------------------------------------------------------*/
/* Copyright (c) 2008-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.wpilibj.command;

import edu.wpi.first.wpilibj.Timer;

/**
 * WaitUntilCommand - waits until an absolute game time. This will wait until the game clock reaches
 * some value, then continue to the next command.
 */
public class WaitUntilCommand extends Command {
  private final double m_time;

  public WaitUntilCommand(double time) {
    super("WaitUntil(" + time + ")");
    m_time = time;
  }

  /**
   * Check if we've reached the actual finish time.
   */
  @Override
  public boolean isFinished() {
    return Timer.getMatchTime() >= m_time;
  }
}
