#!/bin/bash
cd ..
echo "Enter the IP number for the board. Format <xx.xx.xxx.xx>"
read IPnumber
echo $IPnumber
cd racecar_ws/src/ADI-HLDS-lidar
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/racecar_ws/racecar_ws/src/ADI-HLDS-lidar
cd ../ADI-Navigation
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/racecar_ws/racecar_ws/src/ADI-Navigation
cd ../ADI-SLAM
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/racecar_ws/racecar_ws/src/ADI-SLAM
cd ../ADI-ToF
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/racecar_ws/racecar_ws/src/ADI-ToF
cd ../ADI-usb_cam
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/racecar_ws/racecar_ws/src/ADI-usb_cam
cd ../ADI-vesc
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/racecar_ws/racecar_ws/src/ADI-vesc
cd ../racecar
git remote add rosnode ssh://nvidia@$IPnumber/home/nvidia/racecar_ws/racecar_ws/src/racecar
cd ../../..
git submodule foreach git push rosnode master
