/*----------------------------------------------------------------------------*/
/* Copyright (c) 2017-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.wpilibj;

import java.util.Arrays;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

class SpeedControllerGroupTest {
  private static Stream<Arguments> speedControllerArguments() {
    return IntStream.of(1, 2, 3).mapToObj(number -> {
      SpeedController[] speedControllers = Stream.generate(MockSpeedController::new)
          .limit(number)
          .toArray(SpeedController[]::new);
      SpeedControllerGroup group = new SpeedControllerGroup(speedControllers[0],
          Arrays.copyOfRange(speedControllers, 1, speedControllers.length));
      return Arguments.of(group, speedControllers);
    });
  }

  @ParameterizedTest
  @MethodSource("speedControllerArguments")
  void setTest(final SpeedControllerGroup group, final SpeedController[] speedControllers) {
    group.set(1.0);

    assertArrayEquals(DoubleStream.generate(() -> 1.0).limit(speedControllers.length).toArray(),
        Arrays.stream(speedControllers).mapToDouble(SpeedController::get).toArray(),
        0.00005);
  }

  @ParameterizedTest
  @MethodSource("speedControllerArguments")
  void getInvertedTest(final SpeedControllerGroup group,
                       final SpeedController[] speedControllers) {
    group.setInverted(true);

    assertTrue(group.getInverted());
  }

  @ParameterizedTest
  @MethodSource("speedControllerArguments")
  void setInvertedDoesNotModifySpeedControllersTest(final SpeedControllerGroup group,
                                                    final SpeedController[] speedControllers) {
    group.setInverted(true);

    assertArrayEquals(Stream.generate(() -> false).limit(speedControllers.length).toArray(),
        Arrays.stream(speedControllers).map(SpeedController::getInverted).toArray());
  }

  @ParameterizedTest
  @MethodSource("speedControllerArguments")
  void setInvertedDoesInvertTest(final SpeedControllerGroup group,
                                 final SpeedController[] speedControllers) {
    group.setInverted(true);
    group.set(1.0);

    assertArrayEquals(DoubleStream.generate(() -> -1.0).limit(speedControllers.length).toArray(),
        Arrays.stream(speedControllers).mapToDouble(SpeedController::get).toArray(),
        0.00005);
  }

  @ParameterizedTest
  @MethodSource("speedControllerArguments")
  void disableTest(final SpeedControllerGroup group,
                   final SpeedController[] speedControllers) {
    group.set(1.0);
    group.disable();

    assertArrayEquals(DoubleStream.generate(() -> 0.0).limit(speedControllers.length).toArray(),
        Arrays.stream(speedControllers).mapToDouble(SpeedController::get).toArray(),
        0.00005);
  }

  @ParameterizedTest
  @MethodSource("speedControllerArguments")
  void stopMotorTest(final SpeedControllerGroup group,
                     final SpeedController[] speedControllers) {
    group.set(1.0);
    group.stopMotor();

    assertArrayEquals(DoubleStream.generate(() -> 0.0).limit(speedControllers.length).toArray(),
        Arrays.stream(speedControllers).mapToDouble(SpeedController::get).toArray(),
        0.00005);
  }

  @ParameterizedTest
  @MethodSource("speedControllerArguments")
  void pidWriteTest(final SpeedControllerGroup group,
                    final SpeedController[] speedControllers) {
    group.pidWrite(1.0);

    assertArrayEquals(DoubleStream.generate(() -> 1.0).limit(speedControllers.length).toArray(),
        Arrays.stream(speedControllers).mapToDouble(SpeedController::get).toArray(),
        0.00005);
  }
}
