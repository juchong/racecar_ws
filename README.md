# ADI Autonomous Vehicle Project

Racecar (Rapid Autonomous Complex-Environment Competing Ackermann-steering Robot) Workspace is the main repository for running the ADI Autonomous Vehicles project code. The vehicle model uses a NVIDIA Jetson Tx2 board computer attached to a R/C Car and various ADI sensors. 
- - -
### Prerequisites

Make sure you have the following tools installed
- Git on both your board and computer (Both need to be configured as the same user) (https://git-scm.com/downloads)
- Git Bash terminal (MINW64 recommended) on the computer
- ROS Kinetic Desktop Full Version on the NVIDIA board (https://wiki.ros.org/kinetic/Installation/Ubuntu#Installation.2BAC8-Ubuntu.2BAC8-Sources.Configure_your_Ubuntu_repositories)
- Shared SHH keys between local machine and gitlab (https://docs.gitlab.com/ee/ssh/)

See confluence for git workflow or additional details: https://confluence.analog.com/pages/viewpage.action?pageId=65483562

- - -
### How to install

**1. On your computer from Git Bash (MINGW64), clone the git repo using this command. This command will clone all ADI Sensor repos in the ROS Project Group linked to this project.**

$ git clone --recurse-submodules git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/racecar_ws.git

- Note: Make sure you are on the ADILAN network.

**2. On your board, create a new directory for where you want to the project to be clone in.**

On the Linux board:
1. $ cd ~
2. $ mkdir (repo can be any name)
3. $ cd (made directory)
4. $ git init
5. $ git config receive.denyCurrentBranch 'warn'
    - This configuration is added to enable pushing to non-bare git repositories. 

**3. Setup a remote repo to the NVIDIA board from your computer. Make sure to push all your updates. This will setup a git repo for the main project as well as your submodules.**

On your local computer, in git bash:
1. $ cd (cloned repo)

- Do not copy and paste, make sure you fill jetson's_ip_address before entering **

2. $ git remote add jetson ssh://nvidia@<jetson's_ip_address>:22/home/**(jetson_user)**/**(repo directory)**

** Make sure both machines are on the same network**

3. $ git push jetson master


**3. Setup a remote repo to the NVIDIA board from your computer. Make sure to push all your updates. This will setup a git repo for the main project as well as your submodules.**
Then on the Linux board in the same repo:
1. $ git branch (confirm that you have master branch)
2. $ git checkout master
3. $ cd gitInstallScripts
4. $ chmod 777 boardSetup.sh
5. $ ./boardSetup.sh

On your local computer
1. $ cd gitInstallScripts
2. $ chmod 777 computerSetup.sh
3. $ ./computerSetup.sh

**4. On your Linux board, change your execution permissions to run the project.**

1. $ cd ..
2. git submodule foreach git checkout master
3. $ cd gitInstallScripts
4. $ ./tempForkedRepoInstall.sh
5. $ chmod 777
6. $ ./start.sh

###### Note: You should only have to install once. If your install is complete, you will only need to run ./start.sh to run the script.

It will download all the updated nodes you will need for the project

- - -

### To update submodules to their latest commit on your local machine:

$ git submodule update --remote --merge

### To update submodules on gitlab:
- $ git submodule sync --recursive
- $ git submodule update --recursive --remote
- $ git add .
- $ git commit -m "updated submodules"
- $ git push -u origin master

To learn more about submodules (add, update, remove), please check out this blog. https://chrisjean.com/git-submodules-adding-using-removing-and-updating/

- - -

### Nodes

The project uses ROS (Robotic Operating System) version Kinetic. Please make sure you have ROS Kinetic Full Desktop Xenial Installed before running the project.

The project makes use of certain nodes which can be found in the /src folder.

##### adi_usb_cam_kinetic

- Runs USB Camera ROS Node that interfaces with standard USB cameras.
- For reference, we used Microsoft LifeCam HD-3000 in our project.
- Our repository contains a modified launch file configured to run with ADI-Racecar.
- Check out the original forked node Kinetic version: http://wiki.ros.org/usb_cam

##### adi_lidar_kinetic

- Modified ROS Lidar node that interfaces with a 360 Laser Distance Sensor (2d scanner). Used for mapping the area for global and local cost maps in SLAM gmapping.
- For reference, we used 'HLS-LFCD-LDS' in our project. Note that this node will only work with the 'HLS-LFCD-LDS' sensor.
- Our repository contains modified launch files configured to run with ADI-Racecar.
- Check out the original forked node Kinetic version: http://wiki.ros.org/hls_lfcd_lds_driver

##### adi_vesc_kinetic

- Runs Driver ROS Node that interfaces with the vehicle motors.

##### adi_tof_kinetic

- ROS Node that runs Time of Flight camera sensor.
- For reference, we used Pico Zense model DCAM100.
- Our repository contains a modified launch file configured to run with ADI-Racecar.

##### adi_slam_gmapping_kinetic

- ROS Node for implementing SLAM gmapping

##### racecar

- ROS Kinetic Node for teleop code. Controls all Teleoperations for the vehicle.

##### adi_driver

- ROS Package for ADI Sensor's.
