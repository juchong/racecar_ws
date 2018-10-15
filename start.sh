#!/bin/bash

echo "Running Racecar"

if [[ "$HOSTNAME" == "foobar" ]]; then
  echo "Quick Install"
  cd racecar_ws/src/ADI-usb_cam
  ./installUSBCamNode.sh
  cd ADI-HLDS-lidar
  ./instalLaserNode.sh
  cd ../../..
fi

cd racecar_ws
catkin_make
source devel/setup.bash
cd src
roslaunch shubsub main.launch
