#!/bin/bash
cd ..
git branch
git checkout master
cd racecar_ws/src  || exit
cd adi_lidar_kinetic  || exit
git init
cd ..
cd adi_tof_kinetic  || exit
git init
cd ..
cd adi_usb_cam_kinetic  || exit
git init
cd ..
cd adi_slam_gmapping_kinetic  || exit
git init
cd ..
cd adi_vesc_kinetic  || exit
git init
cd ..
cd adi_driver  || exit
git init
cd ..
cd zed-ros-wrapper  || exit
git init
cd ..
cd racecar  || exit
git init
cd ../../..  || exit
git submodule foreach git config receive.denyCurrentBranch 'warn'
