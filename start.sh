#!/bin/bash

echo "Running Racecar"
# This is a repo test
cd racecar_ws
catkin_make
source devel/setup.bash
cd src
roslaunch shubsub shubsub.launch
