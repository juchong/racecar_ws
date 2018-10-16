# ADI Racecar

Main repository for setting up our ADI Autonomous Vehicle project. Runs on ROS Kinetic, uses the Nvidia Jetson Tx2 board, and a few sensors to preform its mapping and navigation.

- - -
### How to install and run

###### Note: Make sure you have git configured to gitlab before installing

**1. First clone the git repository**

*$ git clone git@gitlab.analog.com:ATS_Technology_Group/ROS_Projects/racecar_ws.git*

**2. Update the submodules. After cloning the repo, the node directories should be empty. Run the following, to pull the most recent version.**

*$ git submodule init*  
*$ git submodule update*

You can checkout the individual node repos urls in the .gitmodules file.

You can learn more about submodules here: https://git-scm.com/book/en/v2/Git-Tools-Submodules

**3. chmod execute permissions to run the start script.**

*$ chmod 777 ./start.sh*

**4. If your on a windows machine, setup a remote repo to a linux machine (in this instance the Jetson). Make sure to push all your updates.**

**5. On your linux machine, run the start script.**

*$ ./start.sh*

###### Note: You should only have to install once. If your install is complete, you will only need to run ./start.sh to run the script.

It will download all the updated nodes you will need for the project

- - -
### Nodes

The project uses ROS (Robotic Operating System) version Kinetic. Please make sure you have ROS Kinetic Full Desktop Xenial Installed before running the project.

The project makes use of certain nodes which can be found in the /src folder.

##### ADI-usb_cam

- Runs USB Camera ROS Node that interfaces with standard USB cameras.
- For reference, we used Microsoft LifeCam HD-3000 in our project.
- Our repository contains a modified launch file configured to run with ADI-Racecar.
- Check out the original forked node Kinetic version: http://wiki.ros.org/usb_cam

##### ADI-HLDS-lidar

- Modified ROS Lidar node that interfaces with a 360 Laser Distance Sensor (2d scanner). Used for mapping the area for global and local cost maps in SLAM gmapping.
- For reference, we used 'HLS-LFCD-LDS' in our project. Note that this node will only work with the 'HLS-LFCD-LDS' sensor.
- Our repository contains modified launch files configured to run with ADI-Racecar.
- Check out the original forked node Kinetic version: http://wiki.ros.org/hls_lfcd_lds_driver

##### ADI-vesc

- Runs Driver ROS Node that interfaces with the vehicle motors.

##### ADI-ToF

- ROS Node that runs Time of Flight camera sensor.
- For reference, we used Pico Zense model DCAM100.
- Our repository contains a modified launch file configured to run with ADI-Racecar.

##### ADI-SLAM

- ROS Node for implementing SLAM gmapping

##### racecar

- ROS Kinetic Node for teleop code. Controls all Teleoperations for the vehicle.

##### ADI-Navigation

- ROS Node for generating Map costs.
