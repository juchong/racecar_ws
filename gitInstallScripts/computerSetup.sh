#!/bin/bash
cd ..
echo "Enter the IP number for the board. Format <xx.xx.xxx.xx>"
read IPnumber
echo $IPnumber
echo "Enter then name of the repo on your board"
read racecar
echo $racecar
echo "Enter a name of your remote for all the submodules"
read submodule
echo $submodule
cd racecar_ws/src/ADI-HLDS-lidar
git remote rm $submodule
git remote add $submodule ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/adi_hldsLidar_kinetic
cd ../ADI-Navigation
git remote rm $submodule
git remote add $submodule ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/adi_navigation_kinetic
cd ../ADI-SLAM
git remote rm $submodule
git remote add $submodule ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/adi_SLAM_kinetic
cd ../ADI-ToF
git remote rm $submodule
git remote add $submodule ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/adi_tof_kinetic
cd ../ADI-usb_cam
git remote rm $submodule
git remote add $submodule ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/adi_usb_cam_kinetic
cd ../ADI-IMU
git remote rm $submodule
git remote add $submodule ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/adi_IMU_kinetic
cd ../ADI-vesc
git remote rm $submodule
git remote add $submodule ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/adi_vesc_kinetic
cd ../racecar
git remote rm $submodule
git remote add $submodule ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/racecar
cd ../../..
git submodule foreach git push $submodule master
