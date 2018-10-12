#!/bin/bash

echo "Running Racecar"
catkin_make
source devel/setup.bash
roslaunch ADI-ToF shubsub-test.launch
