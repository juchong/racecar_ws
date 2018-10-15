#!/bin/bash

echo "Installing Racecar"

mkdir -p racecar_ws/src
cd racecar_ws/src

# Add all nodes to src folder. Uses submodule to update individual git repos.
git submodule add git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-usb_cam.git
# cd ADI-usb_cam
# ./installUSBCamNode.sh
# cd ..
git submodule add git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-HLDS-lidar.git
# cd ADI-HLDS-lidar
# ./instalLaserNode.sh
# cd ..
git submodule add git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-vesc.git
git submodule add git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-ToF.git
git submodule add git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-SLAM.git
git submodule add git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/racecar.git
git submodule add git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/ADI-Navigation.git
cd ../..

# Stops running entire script after Control+C
trap '
  trap - INT # restore default INT handler
  kill -s INT "$$"
' INT
