#!/bin/bash
git submodule foreach git checkout master
echo "Installing usb cam driver"
cd ../racecar_ws/src/adi_usb_cam_kinetic || exit
git clone https://github.com/ros-drivers/usb_cam.git
cd usb_cam || exit
rm -R launch
cd ..
mv usb_cam/* .
rm -R -f usb_cam
cd ../zed-ros-wrapper || exit
chmod 777 ZED_SDK_JTX2_JP3.2_v2.7.1.run
./ZED_SDK_JTX2_JP3.2_v2.7.1.run
cd cfg/ || exit
chmod 777 Zed.cfg
echo "Installing Analog Devices IMU driver"
cd ../../adi_driver || exit
git clone https://github.com/tork-a/adi_driver.git
cd adi_driver || exit
rm -R launch
cd ..
mv adi_driver/* .
rm -R -f adi_driver
cd ../adi_tof_kinetic/dependencies/PicoZenseSDK_aarch64_linux  || exit
chmod 777 install.sh
./install.sh
cd ../../../../..  || exit
sudo apt-get -y install \
    ros-kinetic-camera-info-manager ros-kinetic-image-transport libbullet-dev libsdl-image1.2-dev ros-kinetic-geometry2 ros-kinetic-arm-navigation-msgs
echo "Install Complete"
