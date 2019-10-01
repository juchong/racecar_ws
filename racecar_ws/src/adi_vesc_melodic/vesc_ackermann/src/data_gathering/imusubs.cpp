#include "ros/ros.h"
#include "std_msgs/String.h"
#include <iostream>
#include <fstream>
#include <sensor_msgs/Imu.h>
#include <geometry_msgs/TransformStamped.h>



using namespace std;
ofstream csv_file("/home/nvidia/imu.csv");



void imucallback(const sensor_msgs::Imu::Ptr& msgs)
{

//ROS_INFO("%d orientation x: %f orientation y: %f orientation z: %f orientation w: %f " , msgs->header.seq,msgs->orientation.x,msgs->orientation.y,msgs->orientation.z,msgs->orientation.w); //new
csv_file <<" " << msgs->header.seq <<"," << msgs->header.stamp <<"," << msgs->angular_velocity.z <<"," << msgs->orientation.x  <<"," << msgs->orientation.y <<"," << msgs->orientation.z <<"," << msgs->orientation.w << endl;
}






int main(int argc, char **argv)
{

ros::init(argc, argv, "imulistener");
ros::NodeHandle n;
csv_file <<"seq, timestamp, angular velocity ,x ,y ,z ,w,  "<<endl;
ros::Subscriber subs = n.subscribe("imu/data", 10, imucallback);
ros::spin();
return 0;
}
