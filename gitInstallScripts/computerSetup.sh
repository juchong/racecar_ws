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
#git remote rm $submodule
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_lidar_kinetic
cd ../adi_slam_gmapping_kinetic
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_slam_gmapping_kinetic
cd ../adi_tof_kinetic
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_tof_kinetic
cd ../adi_usb_cam_kinetic
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_usb_cam_kinetic
cd ../adi_driver
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_driver
cd ../adi_vesc_kinetic
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/adi_vesc_kinetic
cd ../zed-ros-wrapper
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/zed-ros-wrapper
cd ../racecar
git remote add $submodule ssh://nvidia@$IPnumber/$racecar/racecar_ws/src/racecar
cd ../../..
git submodule foreach git push $submodule master
