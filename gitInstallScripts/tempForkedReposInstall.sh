#!/bin/bash

cd ../racecar_ws/src/ADI-HLDS-lidar
echo "Installing LaserScan Node Script"
git clone https://github.com/ROBOTIS-GIT/hls_lfcd_lds_driver.git
cd hls_lfcd_lds_driver
rm -R launch
cd ..
mv hls_lfcd_lds_driver/* .
rm -R -f hls_lfcd_lds_driver
cd ../adi_usb_cam_kinetic
echo "Installing usb Cam Node Script"
git clone https://github.com/ros-drivers/usb_cam.git
cd usb_cam
rm -R launch
cd ..
mv usb_cam/* .
rm -R -f usb_cam
echo "Installing Analog Devices IMU Script"
cd ../adi_IMU_kinetic
git clone https://github.com/tork-a/adi_driver.git
mv adi_driver/* .
rm -R -f adi_driver
echo "Install Complete"
cd ../../..
