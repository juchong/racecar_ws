#!/bin/bash
cd ..
echo "Enter the IP number for the board. Format <xx.xx.xxx.xx>"
read IPnumber
echo $IPnumber
echo "Enter then name of the repo on your board"
read racecar
echo $racecar
cd racecar_ws/src/ADI-HLDS-lidar
git remote rm rosnode
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/ADI-HLDS-lidar
cd ../ADI-Navigation
git remote rm rosnode
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/ADI-Navigation
cd ../ADI-SLAM
git remote rm rosnode
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/ADI-SLAM
cd ../ADI-ToF
git remote rm rosnode
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/ADI-ToF
cd ../ADI-usb_cam
git remote rm rosnode
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/ADI-usb_cam
cd ../ADI-IMU
git remote rm rosnode
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/ADI-IMU
cd ../ADI-vesc
git remote rm rosnode
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/ADI-vesc
cd ../racecar
git remote rm rosnode
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/$racecar/racecar_ws/src/racecar
cd ../../..
git submodule foreach git push rosnode master
