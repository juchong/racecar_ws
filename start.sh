#!/bin/bash

echo "Running Racecar"
cd racecar_ws
catkin_make
source devel/setup.bash
cd src
roslaunch launch main.launch
