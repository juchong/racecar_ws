#!/bin/bash

echo "Installing Analog Devices IMU driver"
git clone https://github.com/tork-a/adi_driver.git
cd adi_imu_kinetic
rm -R launch
cd ..
mv adi_driver/* .
rm -R -f adi_driver
echo "Install Complete"
