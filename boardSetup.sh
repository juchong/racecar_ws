git branch
git checkout master
cd racecar_ws/src
cd ADI-HLDS-lidar
git init
./instalLaserNode.sh
cd ..
cd ADI-Navigation
git init
cd ..
cd ADI-ToF
git init
cd ..
cd ADI-usb_cam
git init
./installUSBCamNode.sh
cd ..
cd ADI-SLAM
git init
cd ..
cd ADI-vesc
git init
cd ..
cd racecar
git init
cd ../../..
git submodule foreach git config receive.denyCurrentBranch 'warn'
