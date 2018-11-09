#!/bin/bash
echo "Installing lidar driver"
cd ../racecar_ws/src/adi_lidar_kinetic
git clone https://github.com/ROBOTIS-GIT/hls_lfcd_lds_driver.git
cd hls_lfcd_lds_driver
rm -R launch
cd ..
mv hls_lfcd_lds_driver/* .
rm -R -f hls_lfcd_lds_driver
echo "Installing usb cam driver"
cd ../adi_usb_cam_kinetic
git clone https://github.com/ros-drivers/usb_cam.git
cd usb_cam
rm -R launch
cd ..
mv usb_cam/* .
rm -R -f usb_cam
echo "Installing Analog Devices IMU driver"
cd ../adi_imu_kinetic
git clone https://github.com/tork-a/adi_driver.git
cd adi_imu_kinetic
rm -R launch
cd ..
mv adi_driver/* .
rm -R -f adi_driver
echo "Install Complete"
cd ../../..
