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
echo "Lidar Permission for Sensors"
sudo chmod a+rw /dev/ttyUSB0
echo "USB and IMU dependencies"
sudo apt-get -y install \
    ros-kinetic-camera-info-manager ros-kinetic-image-transport libbullet-dev libsdl-image1.2-dev ros-kinetic-geometry2 ros-kinetic-navigation ros-kinetic-imu-filter-madgwick ros-kinetic-roslint ros-kinetic-joy ros-kinetic-teleop-twist-joy ros-kinetic-teleop-twist-keyboard ros-kinetic-laser-proc ros-kinetic-rgbd-launch ros-kinetic-depthimage-to-laserscan ros-kinetic-rosserial-arduino ros-kinetic-rosserial-python ros-kinetic-rosserial-server ros-kinetic-rosserial-client ros-kinetic-rosserial-msgs ros-kinetic-amcl ros-kinetic-map-server ros-kinetic-move-base ros-kinetic-urdf ros-kinetic-xacro ros-kinetic-compressed-image-transport ros-kinetic-rqt-image-view ros-kinetic-gmapping ros-kinetic-navigation ros-kinetic-interactive-markers 
echo "Install Complete"
