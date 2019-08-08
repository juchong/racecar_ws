#include "vesc_ackermann/ackermann_to_vesc.h"
#include <ackermann_msgs/AckermannDriveStamped.h>
#include <sensor_msgs/Joy.h>
#include <cmath>
#include <sstream>
#include <iostream>
#include <fstream>
#include <std_msgs/Float32.h>


using namespace std;
ofstream csv_file("/home/nvidia/angle.csv");

void anglecallback(const ackermann_msgs::AckermannDriveStamped::ConstPtr& cmd)
{
float a;	
ROS_INFO("angle : %f " , cmd->drive.steering_angle); //new
a=cmd->drive.steering_angle;
csv_file << a <<endl;
//csv_file <<" " << msg->header.seq <<"," << msg->header.stamp <<"," << msg->pose.pose.position.x <<"," << msg->pose.pose.position.y <<"," << msg->pose.pose.orientation.x  <<"," << msg->pose.pose.orientation.y <<"," << msg->pose.pose.orientation.z <<"," << msg->pose.pose.orientation.w << endl; 
}


int main(int argc, char **argv)
{

ros::init(argc, argv, "Angle");
ros::NodeHandle n;
ros::Subscriber sub = n.subscribe("ackermann_cmd", 10, anglecallback);

ros::spin();
return 0;
}
