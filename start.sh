#!/bin/bash

echo "Running Racecar"
cd racecar_ws
catkin_make
source devel/setup.bash
cd src
roslaunch adi_tof_kinetic main.launch
