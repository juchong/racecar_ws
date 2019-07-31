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

namespace rev {

class CANSparkMax;

class CANDigitalInput {
public:
    enum class LimitSwitch { kForward, kReverse };
    enum class LimitSwitchPolarity { kNormallyOpen = 0, kNormallyClosed = 1 };

    /**
     * Constructs a CANDigitalInput.
     *
     * @param device      The Spark Max to which the limit switch is attached.
     * @param limitSwitch Whether this is forward or reverse limit switch.
     * @param polarity    Whether the limit switch is normally open or normally
     *                    closed.
     */
    explicit CANDigitalInput(CANSparkMax& device, LimitSwitch limitSwitch,
                             LimitSwitchPolarity polarity);

    CANDigitalInput(CANDigitalInput&&) = default;
    CANDigitalInput& operator=(CANDigitalInput&&) = default;

    /**
     * Get the value from a digital input channel.
     *
     * Retrieve the value of a single digital input channel from a motor
     * controller. This method will return the state of the limit input
     * based on the selected polarity, whether or not it is enabled.
     */
    bool Get() const;

    /**
     * Enables or disables controller shutdown based on limit switch.
     */
    CANError EnableLimitSwitch(bool enable);

    /**
     * Returns true if limit switch is enabled.
     */
    bool IsLimitSwitchEnabled();

private:
    CANSparkMax* m_device;
    LimitSwitch m_limitSwitch = LimitSwitch::kForward;
};

}  // namespace rev
