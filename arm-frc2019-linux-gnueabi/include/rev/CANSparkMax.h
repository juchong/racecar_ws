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

#include <stdint.h>

#include <map>
#include <string>

#include "rev/CANDigitalInput.h"
#include "rev/CANEncoder.h"
#include "rev/CANError.h"
#include "rev/CANPIDController.h"
#include "rev/CANSparkMaxLowLevel.h"

namespace rev {

class CANSparkMax : public CANSparkMaxLowLevel {
public:
    enum class SensorType {
        kNoSensor = 0,
        kHallSensor = 1,
        kEncoder = 2,
        kSensorless = 3
    };

    enum class IdleMode { kCoast = 0, kBrake = 1 };

    enum class InputMode { kPWM = 0, kCAN = 1 };

    enum class FaultID {
        kBrownout = 0,
        kOvercurrent = 1,
        kIWDTReset = 2,
        kMotorFault = 3,
        kSensorFault = 4,
        kStall = 5,
        kEEPROMCRC = 6,
        kCANTX = 7,
        kCANRX = 8,
        kHasReset = 9,
        kDRVFault = 10,
        kOtherFault = 11,
        kSoftLimitFwd = 12,
        kSoftLimitRev = 13,
        kHardLimitFwd = 14,
        kHardLimitRev = 15
    };

    struct ExternalFollower {
        int arbId;
        int configId;
    };

    static constexpr ExternalFollower kFollowerDisabled{0, 0};
    static constexpr ExternalFollower kFollowerSparkMax{0x2051800, 26};
    static constexpr ExternalFollower kFollowerPhoenix{0x2040080, 27};

    /**
     * Create a new SPARK MAX Controller
     *
     * @param deviceID The device ID.
     * @param type     The motor type connected to the controller. Brushless
     *                 motors must be connected to their matching color and the
     *                 hall sensor plugged in. Brushed motors must be connected
     *                 to the Red and Black terminals only.
     */
    explicit CANSparkMax(int deviceID, MotorType type);

    /**
     * Closes the SPARK MAX Controller
     */
    ~CANSparkMax() override = default;

    /**** Speed Controller Interface ****/
    /**
     * Common interface for setting the speed of a speed controller.
     *
     * @param speed The speed to set.  Value should be between -1.0 and 1.0.
     */
    void Set(double speed) override;

    /**
     * Common interface for getting the current set speed of a speed controller.
     *
     * @return The current set speed.  Value is between -1.0 and 1.0.
     */
    double Get() const override;

    /**
     * Common interface for inverting direction of a speed controller.
     * This has no effect if the controller is a follower.
     *
     * @param isInverted The state of inversion, true is inverted.
     */
    void SetInverted(bool isInverted) override;

    /**
     * Common interface for returning the inversion state of a speed controller.
     *
     * @return isInverted The state of inversion, true is inverted.
     */
    bool GetInverted() const override;

    /**
     * Common interface for disabling a motor.
     */
    void Disable() override;

    /**
     * Common interface to stop the motor until Set is called again.
     */
    void StopMotor() override;

    void PIDWrite(double output) override;

    /******* Extended Functions *******/
    /**
     * Returns an object for interfacing with the integrated encoder.
     */
    CANEncoder GetEncoder();

    /**
     * Returns an object for interfacing with the integrated PID controller.
     */
    CANPIDController GetPIDController();

    /**
     * Returns an object for interfacing with the integrated forward limit
     * switch.
     *
     * @param polarity Whether the limit switch is normally open or normally
     *                 closed.
     */
    CANDigitalInput GetForwardLimitSwitch(
        CANDigitalInput::LimitSwitchPolarity polarity);

    /**
     * Returns an object for interfacing with the integrated reverse limit
     * switch.
     *
     * @param polarity Whether the limit switch is normally open or normally
     *                 closed.
     */
    CANDigitalInput GetReverseLimitSwitch(
        CANDigitalInput::LimitSwitchPolarity polarity);

    /**
     * Sets the current limit in Amps.
     *
     * The motor controller will reduce the controller voltage output to avoid
     * surpassing this limit. This limit is enabled by default and used for
     * brushless only. This limit is highly recommended when using the NEO
     * brushless motor.
     *
     * The NEO Brushless Motor has a low internal resistance, which
     * can mean large current spikes that could be enough to cause damage to
     * the motor and controller. This current limit provides a smarter
     * strategy to deal with high current draws and keep the motor and
     * controller operating in a safe region.
     *
     *
     * @param limit      The current limit in Amps.
     */
    CANError SetSmartCurrentLimit(unsigned int limit);

    /**
     * Sets the current limit in Amps.
     *
     * The motor controller will reduce the controller voltage output to avoid
     * surpassing this limit. This limit is enabled by default and used for
     * brushless only. This limit is highly recommended when using the NEO
     * brushless motor.
     *
     * The NEO Brushless Motor has a low internal resistance, which
     * can mean large current spikes that could be enough to cause damage to
     * the motor and controller. This current limit provides a smarter
     * strategy to deal with high current draws and keep the motor and
     * controller operating in a safe region.
     *
     * The controller can also limit the current based on the RPM of the motor
     * in a linear fashion to help with controllability in closed loop control.
     * For a response that is linear the entire RPM range leave limit RPM at 0.
     *
     *
     * @param stallLimit The current limit in Amps at 0 RPM.
     * @param freeLimit The current limit at free speed (5700RPM for NEO).
     * @param limitRPM RPM less than this value will be set to the stallLimit,
     * RPM values greater than limitRPM will scale linearly to freeLimit
     */
    CANError SetSmartCurrentLimit(unsigned int stallLimit,
                                  unsigned int freeLimit,
                                  unsigned int limitRPM = 20000);

    /**
     * Sets the secondary current limit in Amps.
     *
     * The motor controller will disable the output of the controller briefly
     * if the current limit is exceeded to reduce the current. This limit is
     * a simplified 'on/off' controller. This limit is enabled by default
     * but is set higher than the default Smart Current Limit.
     *
     * The time the controller is off after the current limit is reached
     * is determined by the parameter limitCycles, which is the number of
     * PWM cycles (20kHz). The recommended value is the default of 0 which
     * is the minimum time and is part of a PWM cycle from when the over
     * current is detected. This allows the controller to regulate the current
     * close to the limit value.
     *
     * The total time is set by the equation
     *
     * @code t = (50us - t0) + 50us * limitCycles
     * t = total off time after over current
     * t0 = time from the start of the PWM cycle until over current is detected
     * @endcode
     *
     *
     * @param limit The current limit in Amps.
     * @param limitCycles The number of additional PWM cycles to turn
     * the driver off after overcurrent is detected.
     */
    CANError SetSecondaryCurrentLimit(double limit, int limitCycles = 0);

    /**
     * Sets the idle mode setting for the SPARK MAX.
     *
     * @param mode Idle mode (coast or brake).
     */
    CANError SetIdleMode(IdleMode mode);

    /**
     * Gets the idle mode setting for the SPARK MAX.
     *
     * This uses the Get Parameter API and should be used infrequently. This
     * function uses a non-blocking call and will return a cached value if the
     * parameter is not returned by the timeout. The timeout can be changed by
     * calling SetCANTimeout(int milliseconds)
     *
     * @return IdleMode Idle mode setting
     */
    IdleMode GetIdleMode();

    /**
     * Sets the voltage compensation setting for all modes on the SPARK MAX and
     * enables voltage compensation.
     *
     * @param nominalVoltage Nominal voltage to compensate output to
     *
     * @return CANError Set to CANError.kOk if successful
     */
    CANError EnableVoltageCompensation(double nominalVoltage);

    /**
     * Disables the voltage compensation setting for all modes on the SPARK MAX.
     *
     * @return CANError Set to CANError.kOk if successful
     */
    CANError DisableVoltageCompensation();

    /**
     * Get the configured voltage compensation nominal voltage value
     *
     * @return The nominal voltage for voltage compensation mode.
     */
    double GetVoltageCompensationNominalVoltage();

    /**
     * Sets the ramp rate for open loop control modes.
     *
     * This is the maximum rate at which the motor controller's output
     * is allowed to change.
     *
     * @param rate Time in seconds to go from 0 to full throttle.
     */
    CANError SetOpenLoopRampRate(double rate);

    /**
     * Sets the ramp rate for closed loop control modes.
     *
     * This is the maximum rate at which the motor controller's output
     * is allowed to change.
     *
     * @param rate Time in seconds to go from 0 to full throttle.
     */
    CANError SetClosedLoopRampRate(double rate);

    /**
     * Get the configured open loop ramp rate
     *
     * This is the maximum rate at which the motor controller's output
     * is allowed to change.
     *
     * @return rampte rate time in seconds to go from 0 to full throttle.
     */
    double GetOpenLoopRampRate();

    /**
     * Get the configured closed loop ramp rate
     *
     * This is the maximum rate at which the motor controller's output
     * is allowed to change.
     *
     * @return rampte rate time in seconds to go from 0 to full throttle.
     */
    double GetClosedLoopRampRate();

    /**
     * Causes this controller's output to mirror the provided leader.
     *
     * Only voltage output is mirrored. Settings changed on the leader do not
     * affect the follower.
     *
     * @param leader The motor controller to follow.
     *
     * @param invert Set the follower to output opposite of the leader
     */
    CANError Follow(const CANSparkMax& leader, bool invert = false);

    /**
     * Causes this controller's output to mirror the provided leader.
     *
     * Only voltage output is mirrored. Settings changed on the leader do not
     * affect the follower.
     *
     * @param leader   The type of motor controller to follow (Talon SRX, Spark
     *                 Max, etc.).
     * @param deviceID The CAN ID of the device to follow.
     *
     * @param invert Set the follower to output opposite of the leader
     */
    CANError Follow(ExternalFollower leader, int deviceID, bool invert = false);

    /**
     * Returns whether the controller is following another controller
     *
     * @return True if this device is following another controller
     * false otherwise
     */
    bool IsFollower();

    /**
     * Returns fault bits.
     */
    uint16_t GetFaults();

    /**
     * Returns sticky fault bits.
     */
    uint16_t GetStickyFaults();

    /**
     * Returns whether the fault with the given ID occurred.
     */
    bool GetFault(FaultID faultID);

    /**
     * Returns whether the sticky fault with the given ID occurred.
     */
    bool GetStickyFault(FaultID faultID);

    /**
     * Returns the voltage fed into the motor controller.
     */
    double GetBusVoltage();

    /**
     * Returns motor controller's output duty cycle.
     */
    double GetAppliedOutput();

    /**
     * Returns motor controller's output current in Amps.
     */
    double GetOutputCurrent();

    /**
     * Returns the motor temperature in Celsius.
     */
    double GetMotorTemperature();

    /**
     * Clears all non-sticky faults.
     *
     * Sticky faults must be cleared by resetting the motor controller.
     */
    CANError ClearFaults();

    /**
     * Writes all settings to flash.
     */
    CANError BurnFlash();

    /**
     * Sets timeout for sending CAN messages.
     *
     * @param milliseconds The timeout in milliseconds.
     */
    CANError SetCANTimeout(int milliseconds);

private:
    // Only used for Get() or Set() api
    double m_setpoint;
};

}  // namespace rev
