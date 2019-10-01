/*
 * Copyright (c) 2018-2019 REV Robotics
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of REV Robotics nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#pragma once

#include "rev/CANError.h"
#include "rev/ControlType.h"

namespace rev {

class CANSparkMax;

class CANPIDController {
public:
    enum class AccelStrategy { kTrapezoidal = 0, kSCurve = 1 };

    /**
     * Constructs a CANPIDController.
     *
     * @param device The Spark Max this object configures.
     */
    explicit CANPIDController(CANSparkMax& device);

    CANPIDController(CANPIDController&&) = default;
    CANPIDController& operator=(CANPIDController&&) = default;

    /**
     * Set the controller reference value based on the selected control mode.
     *
     * @param value The value to set depending on the control mode. For basic
     * duty cycle control this should be a value between -1 and 1
     * Otherwise: Voltage Control: Voltage (volts) Velocity Control: Velocity
     * (RPM) Position Control: Position (Rotations) Current Control: Current
     * (Amps). The units can be changed for position and velocity by a scale
     * factor using setPositionConversionFactor().
     *
     * @param ctrl Is the control type
     *
     * @param pidSlot for this command
     *
     * @param arbFeedforward A value from -32.0 to 32.0 which is a voltage
     * applied to the motor after the result of the specified control mode. The
     * units for the parameter is Volts. This value is set after the control
     * mode, but before any current limits or ramp rates.
     *
     * @return CANError Set to REV_OK if successful
     *
     */
    CANError SetReference(double value, ControlType ctrl, int pidSlot = 0,
                          double arbFeedforward = 0);

    /**
     * Set the Proportional Gain constant of the PIDF controller on the SPARK
     * MAX. This uses the Set Parameter API and should be used infrequently. The
     * parameter does not presist unless burnFlash() is called.  The recommended
     * method to configure this parameter is use to SPARK MAX GUI to tune and
     * save parameters.
     *
     * @param gain The proportional gain value, must be positive
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to REV_OK if successful
     *
     */
    CANError SetP(double gain, int slotID = 0);

    /**
     * Set the Integral Gain constant of the PIDF controller on the SPARK MAX.
     * This uses the Set Parameter API and should be used infrequently. The
     * parameter does not presist unless burnFlash() is called.  The recommended
     * method to configure this parameter is use to SPARK MAX GUI to tune and
     * save parameters.
     *
     * @param gain The integral gain value, must be positive
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to REV_OK if successful
     *
     */
    CANError SetI(double gain, int slotID = 0);

    /**
     * Set the Derivative Gain constant of the PIDF controller on the SPARK MAX.
     * This uses the Set Parameter API and should be used infrequently. The
     * parameter does not presist unless burnFlash() is called.  The recommended
     * method to configure this parameter is use to SPARK MAX GUI to tune and
     * save parameters.
     *
     * @param gain The derivative gain value, must be positive
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to REV_OK if successful
     *
     */
    CANError SetD(double gain, int slotID = 0);

    /**
     * Set the Derivative Filter constant of the PIDF controller on the SPARK
     * MAX. This uses the Set Parameter API and should be used infrequently. The
     * parameter does not presist unless burnFlash() is called.
     *
     * @param gain The derivative filter value, must be a positive number
     * between 0 and 1
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to REV_OK if successful
     *
     */
    CANError SetDFilter(double gain, int slotID = 0);

    /**
     * Set the Feed-froward Gain constant of the PIDF controller on the SPARK
     * MAX. This uses the Set Parameter API and should be used infrequently. The
     * parameter does not presist unless burnFlash() is called.  The recommended
     * method to configure this parameter is use to SPARK MAX GUI to tune and
     * save parameters.
     *
     * @param gain The feed-forward gain value
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to REV_OK if successful
     *
     */
    CANError SetFF(double gain, int slotID = 0);

    /**
     * Set the IZone range of the PIDF controller on the SPARK MAX. This value
     * specifies the range the |error| must be within for the integral constant
     * to take effect.
     *
     * This uses the Set Parameter API and should be used infrequently.
     * The parameter does not presist unless burnFlash() is called.
     * The recommended method to configure this parameter is to use the
     * SPARK MAX GUI to tune and save parameters.
     *
     * @param gain The IZone value, must be positive. Set to 0 to disable
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to REV_OK if successful
     *
     */
    CANError SetIZone(double IZone, int slotID = 0);

    /**
     * Set the min amd max output for the closed loop mode.
     *
     * This uses the Set Parameter API and should be used infrequently.
     * The parameter does not presist unless burnFlash() is called.
     * The recommended method to configure this parameter is to use the
     * SPARK MAX GUI to tune and save parameters.
     *
     * @param min Reverse power minimum to allow the controller to output
     *
     * @param max Forward power maximum to allow the controller to output
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to REV_OK if successful
     *
     */
    CANError SetOutputRange(double min, double max, int slotID = 0);

    /**
     * Get the Proportional Gain constant of the PIDF controller on the SPARK
     * MAX.
     *
     * This uses the Get Parameter API and should be used infrequently. This
     * function uses a non-blocking call and will return a cached value if the
     * parameter is not returned by the timeout. The timeout can be changed by
     * calling SetCANTimeout(int milliseconds)
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return double P Gain value
     *
     */
    double GetP(int slotID = 0);

    /**
     * Get the Integral Gain constant of the PIDF controller on the SPARK MAX.
     *
     * This uses the Get Parameter API and should be used infrequently. This
     * function uses a non-blocking call and will return a cached value if the
     * parameter is not returned by the timeout. The timeout can be changed by
     * calling SetCANTimeout(int milliseconds)
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return double I Gain value
     *
     */
    double GetI(int slotID = 0);

    /**
     * Get the Derivative Gain constant of the PIDF controller on the SPARK MAX.
     *
     * This uses the Get Parameter API and should be used infrequently. This
     * function uses a non-blocking call and will return a cached value if the
     * parameter is not returned by the timeout. The timeout can be changed by
     * calling SetCANTimeout(int milliseconds)
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return double D Gain value
     *
     */
    double GetD(int slotID = 0);

    /**
     * Get the Derivative Filter constant of the PIDF controller on the SPARK
     * MAX.
     *
     * This uses the Get Parameter API and should be used infrequently. This
     * function uses a non-blocking call and will return a cached value if the
     * parameter is not returned by the timeout. The timeout can be changed by
     * calling SetCANTimeout(int milliseconds)
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return double D Filter value
     *
     */
    double GetDFilter(int slotID = 0);

    /**
     * Get the Feed-forward Gain constant of the PIDF controller on the SPARK
     * MAX.
     *
     * This uses the Get Parameter API and should be used infrequently. This
     * function uses a non-blocking call and will return a cached value if the
     * parameter is not returned by the timeout. The timeout can be changed by
     * calling SetCANTimeout(int milliseconds)
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return double F Gain value
     *
     */
    double GetFF(int slotID = 0);

    /**
     * Get the IZone constant of the PIDF controller on the SPARK MAX.
     *
     * This uses the Get Parameter API and should be used infrequently. This
     * function uses a non-blocking call and will return a cached value if the
     * parameter is not returned by the timeout. The timeout can be changed by
     * calling SetCANTimeout(int milliseconds)
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return double IZone value
     *
     */
    double GetIZone(int slotID = 0);

    /**
     * Get the min output of the PIDF controller on the SPARK MAX.
     *
     * This uses the Get Parameter API and should be used infrequently. This
     * function uses a non-blocking call and will return a cached value if the
     * parameter is not returned by the timeout. The timeout can be changed by
     * calling SetCANTimeout(int milliseconds)
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return double min value
     *
     */
    double GetOutputMin(int slotID = 0);

    /**
     * Get the max output of the PIDF controller on the SPARK MAX.
     *
     * This uses the Get Parameter API and should be used infrequently. This
     * function uses a non-blocking call and will return a cached value if the
     * parameter is not returned by the timeout. The timeout can be changed by
     * calling SetCANTimeout(int milliseconds)
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return double max value
     *
     */
    double GetOutputMax(int slotID = 0);

    /**
     * Configure the maximum velocity of the SmartMotion mode. This is the
     * velocity that is reached in the middle of the profile and is what the
     * motor should spend most of its time at
     *
     * @param maxVel The maxmimum cruise velocity for the motion profile in RPM
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to kOK if successful
     */
    CANError SetSmartMotionMaxVelocity(double maxVel, int slotID = 0);

    /**
     * Configure the maximum acceleration of the SmartMotion mode. This is the
     * accleration that the motor velocity will increase at until the max
     * velocity is reached
     *
     * @param maxAccel The maxmimum acceleration for the motion profile in RPM
     * per second
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to kOK if successful
     */
    CANError SetSmartMotionMaxAccel(double maxAccel, int slotID = 0);

    /**
     * Configure the mimimum velocity of the SmartMotion mode. Any requested
     * velocities below this value will be set to 0.
     *
     * @param minVel The minimum velocity for the motion profile in RPM
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to kOK if successful
     */
    CANError SetSmartMotionMinOutputVelocity(double minVel, int slotID = 0);

    /**
     * Configure the allowed closed loop error of SmartMotion mode. This value
     * is how much deviation from your setpoint is tolerated and is useful in
     * preventing oscillation around your setpoint.
     *
     * @param allowedErr The allowed deviation for your setpoint vs actual
     * position in rotations
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to kOK if successful
     */
    CANError SetSmartMotionAllowedClosedLoopError(double allowedErr,
                                                  int slotID = 0);

    /**
     * Coming soon. Configure the acceleration strategy used to control
     * acceleration on the motor. The current strategy is trapezoidal motion
     * profiling.
     *
     * @param accelStrategy The acceleration strategy to use for the
     * automatically generated motion profile
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to kOK if successful
     */
    CANError SetSmartMotionAccelStrategy(AccelStrategy accelStrategy,
                                         int slotID = 0);

    /**
     * Get the maximum velocity of the SmartMotion mode. This is the velocity
     * that is reached in the middle of the profile and is what the motor should
     * spend most of its time at
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return The maxmimum cruise velocity for the motion profile in RPM
     */
    double GetSmartMotionMaxVelocity(int slotID = 0);

    /**
     * Get the maximum acceleration of the SmartMotion mode. This is the
     * accleration that the motor velocity will increase at until the max
     * velocity is reached
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return The maxmimum acceleration for the motion profile in RPM per
     * second
     */
    double GetSmartMotionMaxAccel(int slotID = 0);

    /**
     * Get the mimimum velocity of the SmartMotion mode. Any requested
     * velocities below this value will be set to 0.
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return The minimum velocity for the motion profile in RPM
     */
    double GetSmartMotionMinOutputVelocity(int slotID = 0);

    /**
     * Get the allowed closed loop error of SmartMotion mode. This value is how
     * much deviation from your setpoint is tolerated and is useful in
     * preventing oscillation around your setpoint.
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return The allowed deviation for your setpoint vs actual position in
     * rotations
     */
    double GetSmartMotionAllowedClosedLoopError(int slotID = 0);

    /**
     * Get the acceleration strategy used to control acceleration on the motor.
     * The current strategy is trapezoidal motion profiling.
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return The acceleration strategy to use for the automatically generated
     * motion profile
     */
    AccelStrategy GetSmartMotionAccelStrategy(int slotID = 0);

    /**
     * Configure the maximum I accumulator of the PID controller. This value is
     * used to constrain the I accumulator to help manage integral wind-up
     *
     * @param iMaxAccum The max value to contrain the I accumulator to
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return CANError Set to kOK if successful
     */
    CANError SetIMaxAccum(double iMaxAccum, int slotID = 0);

    /**
     * Get the maximum I accumulator of the PID controller. This value is used
     * to constrain the I accumulator to help manage integral wind-up
     *
     * @param slotID Is the gain schedule slot, the value is a number
     * between 0 and 3. Each slot has its own set of gain values and
     * can be changed in each control frame using SetReference().
     *
     * @return The max value to contrain the I accumulator to
     */
    double GetIMaxAccum(int slotID = 0);

    /**
     * Set the I accumulator of the PID controller. This is useful when wishing
     * to force a reset on the I accumulator of the PID controller. You can also
     * preset values to see how it will respond to certain I characteristics
     *
     * To use this function, the controller must be in a closed loop control
     * mode by calling setReference()
     *
     * @param iAccum The value to set the I accumulator to
     *
     * @return CANError Set to kOK if successful
     */
    CANError SetIAccum(double iAccum);

    /**
     * Get the I accumulator of the PID controller. This is useful when wishing
     * to see what the I accumulator value is to help with PID tuning
     *
     * @return The value of the I accumulator
     */
    double GetIAccum();

private:
    CANSparkMax* m_device;
};

}  // namespace rev
