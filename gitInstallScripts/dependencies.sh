#!/bin/bash
git submodule foreach git checkout master
echo "Installing usb cam driver"
cd ../racecar_ws/src/adi_usb_cam_kinetic
git clone https://github.com/ros-drivers/usb_cam.git
cd usb_cam
rm -R launch
cd ..
mv usb_cam/* .
rm -R -f usb_cam
echo "Installing Analog Devices IMU driver"
cd ../adi_driver
git clone https://github.com/tork-a/adi_driver.git
cd adi_driver
rm -R launch
cd ..
mv adi_driver/* .
rm -R -f adi_driver
cd ../adi_tof_kinetic/dependencies/PicoZenseSDK_aarch64_linux
chmod 777 install.sh
./install.sh
cd ../../../../..
sudo apt-get -y install \
    ros-kinetic-camera-info-manager ros-kinetic-image-transport
echo "Install Complete"
