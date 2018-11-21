cd ..
git branch
git checkout master
cd racecar_ws/src
cd adi_lidar_kinetic
git init
cd ..
cd adi_tof_kinetic
git init
cd ..
cd adi_usb_cam_kinetic
git init
cd ..
cd adi_slam_gmapping_kinetic
git init
cd ..
cd adi_vesc_kinetic
git init
cd ..
cd adi_driver
git init
cd ..
cd racecar
git init
cd ../../..
git submodule foreach git config receive.denyCurrentBranch 'warn'
