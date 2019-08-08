#include <ros/ros.h>

#include "vesc_ackermann/ackermann_to_vesc.h"
#include <ackermann_msgs/AckermannDriveStamped.h>
#include <sensor_msgs/Joy.h>

int main(int argc, char** argv)
{
  ros::init(argc, argv, "ackermann_to_vesc_node");
  ros::NodeHandle nh;
  ros::NodeHandle private_nh("~");

//ackermann_sub_ = nh.subscribe("joy_teleop", 10, &AckermannDriveStamped::ackermann_cmd_input_callback);

//void ackermann_cmd_input_callback(ackermann_msgs::AckermannDriveStamped& msg)
//{
//ackermann_sub_.publish(msg);
//}


// AckermannDriveStamped::ackermann_cmd_input_callback(nh,private_nh);
//ackermann_sub_ = nh.subscribe("joy_teleop", 10, &AckermannDriveStamped::ackermann_cmd_input_callback, this);
  vesc_ackermann::AckermannToVesc ackermann_to_vesc(nh, private_nh);
 
  ros::spin();

  return 0;
}
