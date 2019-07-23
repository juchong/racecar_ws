/*----------------------------------------------------------------------------*/
/* Copyright (c) 2018 FIRST. All Rights Reserved.                             */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.wpilibj.sim;

import edu.wpi.first.wpilibj.AnalogOutput;
import edu.wpi.first.hal.HAL;
import edu.wpi.first.hal.sim.AnalogOutSim;
import edu.wpi.first.hal.sim.CallbackStore;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;

class AnalogOutputSimTest {
  static class DoubleStore {
    public boolean m_wasTriggered;
    public boolean m_wasCorrectType;
    public double m_setValue = -1;

    public void reset() {
      m_wasCorrectType = false;
      m_wasTriggered = false;
      m_setValue = -1;
    }
  }

  @Test
  void setCallbackTest() {
    HAL.initialize(500, 0);


    AnalogOutput output = new AnalogOutput(0);
    output.setVoltage(0.5);

    AnalogOutSim outputSim = output.getSimObject();

    DoubleStore store = new DoubleStore();

    try (CallbackStore cb = outputSim.registerVoltageCallback((name, value) -> {
      store.m_wasTriggered = true;
      store.m_wasCorrectType = true;
      store.m_setValue = value.getDouble();
    }, false)) {
      assertFalse(store.m_wasTriggered);

      for (double i = 0.1; i < 5.0; i += 0.1) {
        store.reset();

        output.setVoltage(0);

        assertTrue(store.m_wasTriggered);
        assertEquals(store.m_setValue, 0, 0.001);

        store.reset();

        output.setVoltage(i);

        assertTrue(store.m_wasTriggered);
        assertEquals(store.m_setValue, i, 0.001);

      }
    }
  }
}
