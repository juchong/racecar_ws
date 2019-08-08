#include <ros/ros.h>

#include "vesc_ackermann/vesc_to_imuodom.h"


int main(int argc, char** argv)
{
  ros::init(argc, argv, "vesc_to_imuodom_node");
  ros::NodeHandle nh;
  ros::NodeHandle private_nh("~");
  
  vesc_ackermann::VescToIMUOdom vesc_to_imuodom(nh, private_nh);
 
  ros::spin();

return 0;
}
