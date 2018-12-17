# ADI Autonomous Vehicle Project

Main repository for running the ADI Autonomous Vehicles project code. The vehicle model uses a NVIDIA Jetson Tx2 board computer attached to a R/C Car and various ADI sensors.
- - -
### Prerequisites

Make sure you have the following tools installed
- Git
    - Installed on both board and ADI Computer
    - Configured for gitlab
        - $ git config --global user.name "LAST-NAME, FIRST-NAME" 
        - $ git config --global user.email "FIRST-NAME.LAST-NAME@analog.com"
    - https://git-scm.com/downloads
    - MinTTY terminal must be installed (default)
- ROS Kinetic Desktop Full Version on the NVIDIA board (https://wiki.ros.org/kinetic/Installation/Ubuntu#Installation.2BAC8-Ubuntu.2BAC8-Sources.Configure_your_Ubuntu_repositories)
- Setup SHH keys between local machine and gitlab
    - https://gitlab.analog.com/profile/keys

See confluence for git workflow, video demo, and additional details: https://confluence.analog.com/pages/viewpage.action?pageId=65483562

- - -
### How to install

**1. On Git Bash (MINGW64), run this command on your ADI Computer. This Clone command will download all ADI Sensor repos used in this project.**

$ git clone --recurse-submodules git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/racecar_ws.git

- Note: Make sure you are on the ADILAN network.

**2. On your board, create a new directory to store the code base. In this example we use racecar**

On the Linux board:
1. $ cd ~
2. $ mkdir racecar
3. $ cd racecar
4. $ git init
5. $ git config receive.denyCurrentBranch 'warn'
    - This configuration is added to enable pushing to non-bare git repositories.

**3. Setup a link to the remote repo on the NVIDIA board from your computer. Make sure to push all your updates. This will setup a git repo for only the main project.**

On your local computer, in git bash:
1. Make sure board and computer are wired to the IOT network or same network. Cannot be ADILAN.
2. $ cd racecar_ws
3. $ git remote add **(remote name)** ssh://**(board_user)@<boards's_ip_address>**:22/home/**(board_user)**/**(repo directory)**
    - Do not copy and paste, make sure you fill out the information before entering. Note that if you make a mistake in typing the wrong directory, it can be changed in the git config file.
    - For example: **$ git remote add jetson ssh://nvidia@192.0.2.255:22/home/nvidia/racecar**
4. $ git push jetson master

**4. Now setup remote repo links for all the ADI sensor repos from the computer to the NVIDIA board. This will setup the git repos for the sensors.**

Then on the Linux board in the same repo:
1. $ git branch (confirm that you have master branch)
2. $ git checkout master
3. $ cd gitInstallScripts
4. $ ./boardSetup.sh

On your local computer
1. $ cd gitInstallScripts
2. $ ./computerSetup.sh

**5. On your board, clone the forked repos and then run the project.**

1. $ cd gitInstallScripts
2. $ ./dependencies.sh

**6. To run the project**
1. $ ./start.sh

If ./start script doesn't work,
- $ cd racecar_ws/src
- $ catkin_make
- $ source devel/setup.bash
- $ roslaunch launch main.launch

- - -

### Updating the git repository

After installing, the git setup should look like this.

Gitlab <--> ADI Computer <--> Nvidia Board

Changes should be made only to the board. To edit the submodules, you must be at the submodules directory in order to update changes.

### Updating to git from board
On the board
- $ git add (name of file(s) that where changed)
- $ git commit -m "Message of what you updated"

On ADI Computer
- $ git pull (name of remote. ex: jetson) master
- $ git push origin master


### Updating to board from git
On ADI Computer
- $ git pull origin master
- $ git push (name of remote. ex: jetson) master:update-master

On the board
- $ git checkout master
- $ git merge update-master
- Delete update-master branch after merge is complete

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

- Vedder Electronic Speed Controller runs Driver ROS Node that interfaces with the teleoperations and vehicle motors.

##### adi_tof_kinetic

- ROS Node that runs Time of Flight camera sensor.
- For reference, we used Pico Zense model DCAM100.

##### adi_slam_gmapping_kinetic

- ROS Node for implementing SLAM gmapping.

##### racecar

- ROS Kinetic Node for teleop code. Controls all Teleoperations for the vehicle.

##### adi_driver

- ROS Package for ADI IMU (inertial measurement unit).
