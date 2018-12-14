#!/bin/bash
cd ..
echo "Enter the IP number for the board. Format <xx.xx.xxx.xx>"
read IPnumber
echo $IPnumber
echo "Enter the directory of your main repo on the board (NO / on begining and end)"
echo "For example: home/nvidia/racecar"
read racecar
echo $racecar
echo "Enter a name of your remote for all the submodules"
read submodule
echo $submodule
cd racecar_ws/src/adi_lidar_kinetic
#Command to remove remote submodule on computer
#git remote rm #submodule
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_lidar_kinetic
echo "added lidar submodule"
cd ../adi_slam_gmapping_kinetic
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_slam_gmapping_kinetic
echo "added slam_gmapping submodule"
cd ../adi_tof_kinetic
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_tof_kinetic
echo "added time of flight submodule"
cd ../adi_usb_cam_kinetic
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_usb_cam_kinetic
echo "added usb cam submodule"
cd ../adi_driver
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_driver
echo "added adi driver submodule"
cd ../adi_vesc_kinetic
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_vesc_kinetic
echo "added vesc submodule"
cd ../zed-ros-wrapper
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/zed-ros-wrapper
echo "added zed cam submodule"
cd ../racecar
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/racecar
echo "added racecar submodule"
cd ../../..
git submodule foreach git push $submodule master
