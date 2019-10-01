#include "ros/ros.h"
#include "std_msgs/String.h"
#include <iostream>
#include <fstream>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/TransformStamped.h>
#include "vesc_ackermann/vesc_to_odom.h"


using namespace std;
ofstream csv_file("/home/nvidia/odom.csv");

void odomcallback(const nav_msgs::Odometry::Ptr& msg)
{

//ROS_INFO("%d pose x: %f pose y: %f orientation z: %f orientation w: %f " , msg->header.seq,msg->pose.pose.position.x,msg->pose.pose.position.y,msg->pose.pose.orientation.z,msg->pose.pose.orientation.w); //new
csv_file <<" " << msg->header.seq <<"," << msg->header.stamp <<"," << msg->pose.pose.position.x <<"," << msg->pose.pose.position.y <<"," << msg->pose.pose.orientation.x  <<"," << msg->pose.pose.orientation.y <<"," << msg->pose.pose.orientation.z <<"," << msg->pose.pose.orientation.w << endl; 
}








int main(int argc, char **argv)
{

ros::init(argc, argv, "listener");
ros::NodeHandle n;
csv_file <<"seq, timestamp, xpos, ypos ,x ,y ,z ,w,  "<<endl;
ros::Subscriber sub = n.subscribe("imuodom", 10, odomcallback);
ros::spin();
return 0;
}

