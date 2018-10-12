#!/bin/bash

echo "Installing Racecar"

mkdir -p racecar_ws/src
cd racecar_ws/src

# Clone all nodes used
git clone git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-usb_cam.git
cd ADI-usb_cam
./installUSBCamNode.sh
cd ..
git clone git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-HLDS-lidar.git
cd ADI-HLDS-lidar
./instalLaserNode.sh
cd ..
git clone git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-vesc.git
git clone git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-ToF.git
git clone git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-SLAM.git
git clone git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/racecar.git
git clone git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-Navigation.git
cd ../..
mv main.launch racecar_ws/src/

# Stops running entire script after Control+C
trap '
  trap - INT # restore default INT handler
  kill -s INT "$$"
' INT
