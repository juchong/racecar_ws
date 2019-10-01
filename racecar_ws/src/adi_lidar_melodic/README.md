# Laser Distance Sensor ROS Kinetic Driver

ROS Driver for the hls_lfcd_lds sensor. Source code has been modified to handle TF data and work with the racecar_ws project under ROS_Projects.

ROS Wiki: http://wiki.ros.org/hls_lfcd_lds_driver

Github (Not modified for TF data): https://github.com/ROBOTIS-GIT/hls_lfcd_lds_driver

Sensor documentation: http://emanual.robotis.com/docs/en/platform/turtlebot3/appendix_lds_01/#appendix-lds01

#### Directory Hierarchy
- applications
    - Generates polar map in rviz when running SLAM in racecar_ws  
- include/hls_lfcd_lds_driver
    - Header files for nodes under Src
- launch
    - Configuration files to run lidar sensor 
- rviz
    - Visualization configuration for lidar node 
- src
    - Lidar sensor ROS node