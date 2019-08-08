#!/bin/bash

echo "Running usb Cam Node Script"
git clone https://github.com/ros-drivers/usb_cam.git
cd usb_cam
rm -R launch
cd ..
mv usb_cam/* .
rm -R -f usb_cam
sudo apt-get -y install \
    ros-melodic-camera-info-manager ros-melodic-image-transport
echo "Install Complete"
