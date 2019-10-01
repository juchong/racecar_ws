/*----------------------------------------------------------------------------*/
/* Copyright (c) 2015-2018 FIRST. All Rights Reserved.                        */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.wpilibj;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import edu.wpi.first.hal.FRCNetComm.tResourceType;
import edu.wpi.first.hal.HAL;
import edu.wpi.first.wpilibj.interfaces.Gyro;

/**
 * Use a rate gyro to return the robots heading relative to a starting position. The Gyro class
 * tracks the robots heading based on the starting position. As the robot rotates the new heading is
 * computed by integrating the rate of rotation returned by the sensor. When the class is
 * instantiated, it does a short calibration routine where it samples the gyro while at rest to
 * determine the default offset. This is subtracted from each sample to determine the heading.
 *
 * <p>This class is for the digital ADXRS450 gyro sensor that connects via SPI.
 */
@SuppressWarnings({"TypeName", "AbbreviationAsWordInName", "PMD.UnusedPrivateField"})
public class ADXRS450_Gyro extends GyroBase implements Gyro, PIDSource, Sendable {
  private static final double kSamplePeriod = 0.0005;
  private static final double kCalibrationSampleTime = 5.0;
  private static final double kDegreePerSecondPerLSB = 0.0125;

  private static final int kRateRegister = 0x00;
  private static final int kTemRegister = 0x02;
  private static final int kLoCSTRegister = 0x04;
  private static final int kHiCSTRegister = 0x06;
  private static final int kQuadRegister = 0x08;
  private static final int kFaultRegister = 0x0A;
  private static final int kPIDRegister = 0x0C;
  private static final int kSNHighRegister = 0x0E;
  private static final int kSNLowRegister = 0x10;

  private SPI m_spi;

  /**
   * Constructor.  Uses the onboard CS0.
   */
  public ADXRS450_Gyro() {
    this(SPI.Port.kOnboardCS0);
  }

  /**
   * Constructor.
   *
   * @param port The SPI port that the gyro is connected to
   */
  public ADXRS450_Gyro(SPI.Port port) {
    m_spi = new SPI(port);

    m_spi.setClockRate(3000000);
    m_spi.setMSBFirst();
    m_spi.setSampleDataOnLeadingEdge();
    m_spi.setClockActiveHigh();
    m_spi.setChipSelectActiveLow();

    // Validate the part ID
    if ((readRegister(kPIDRegister) & 0xff00) != 0x5200) {
      m_spi.close();
      m_spi = null;
      DriverStation.reportError("could not find ADXRS450 gyro on SPI port " + port.value,
          false);
      return;
    }

    m_spi.initAccumulator(kSamplePeriod, 0x20000000, 4, 0x0c00000e, 0x04000000, 10, 16,
        true, true);

    calibrate();

    HAL.report(tResourceType.kResourceType_ADXRS450, port.value);
    setName("ADXRS450_Gyro", port.value);
  }

  public boolean isConnected() {
    return m_spi != null;
  }

  @Override
  public void calibrate() {
    if (m_spi == null) {
      return;
    }

    Timer.delay(0.1);

    m_spi.setAccumulatorIntegratedCenter(0);
    m_spi.resetAccumulator();

    Timer.delay(kCalibrationSampleTime);

    m_spi.setAccumulatorIntegratedCenter(m_spi.getAccumulatorIntegratedAverage());
    m_spi.resetAccumulator();
  }

  private boolean calcParity(int value) {
    boolean parity = false;
    while (value != 0) {
      parity = !parity;
      value = value & (value - 1);
    }
    return parity;
  }

  private int readRegister(int reg) {
    int cmdhi = 0x8000 | (reg << 1);
    boolean parity = calcParity(cmdhi);

    ByteBuffer buf = ByteBuffer.allocate(4);
    buf.order(ByteOrder.BIG_ENDIAN);
    buf.put(0, (byte) (cmdhi >> 8));
    buf.put(1, (byte) (cmdhi & 0xff));
    buf.put(2, (byte) 0);
    buf.put(3, (byte) (parity ? 0 : 1));

    m_spi.write(buf, 4);
    m_spi.read(false, buf, 4);

    if ((buf.get(0) & 0xe0) == 0) {
      return 0;  // error, return 0
    }
    return (buf.getInt(0) >> 5) & 0xffff;
  }

  @Override
  public void reset() {
    if (m_spi != null) {
      m_spi.resetAccumulator();
    }
  }

  /**
   * Delete (free) the spi port used for the gyro and stop accumulating.
   */
  @Override
  public void close() {
    super.close();
    if (m_spi != null) {
      m_spi.close();
      m_spi = null;
    }
  }

  @Override
  public double getAngle() {
    if (m_spi == null) {
      return 0.0;
    }
    return m_spi.getAccumulatorIntegratedValue() * kDegreePerSecondPerLSB;
  }

  @Override
  public double getRate() {
    if (m_spi == null) {
      return 0.0;
    }
    return m_spi.getAccumulatorLastValue() * kDegreePerSecondPerLSB;
  }
}
