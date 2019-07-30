#!/usr/bin/env bash

if [ -f /home/ubuntu/2019RobotCode/zebROS_ws/devel/setup.bash ] ; then
    # Jetson-specific configuration
    echo "Sourcing Jetson / native Linux environment"
    source /opt/ros/melodic/setup.bash
    source /home/analog/racecar_ws/racecar_ws/devel/setup.bash
    #export ROS_IP=10.9.0.8
    export ROS_IP=`ip route get 10.9.0.1 | head -1 | cut -d ' ' -f 5`
else
    echo "Unknown environment! Trying to proceed anyway using local environment."
    source /opt/ros/melodic/setup.bash
    source $HOME/2019RobotCode/zebROS_ws/devel/setup.bash
    export ROS_IP=`ip route get 10.9.0.1 | head -1 | cut -d ' ' -f 5`
fi

# Common configuration
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export ROS_MASTER_URI=http://10.9.0.8:5802
#export ROS_IP=`/bin/hostname -I | tr -d ' ' | tr -d '\n'`
export ROSLAUNCH_SSH_UNKNOWN=1
echo "ROS_IP set to $ROS_IP"

exec "$@"
