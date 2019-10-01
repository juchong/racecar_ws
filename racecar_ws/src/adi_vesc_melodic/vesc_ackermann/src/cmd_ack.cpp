#include "ros/ros.h"
#include <geometry_msgs/Twist.h>
#include "std_msgs/String.h"
#include <ackermann_msgs/AckermannDriveStamped.h>



int main(int argc, char **argv)
{

ros::init(argc, argv, "converter");
ros::NodeHandle n;
ros::Subscriber sub = n.subscribe("/cmd_vel", 10, convertercallback);
ros::Publisher chatter_pub = n.advertise<ackermann_msgs::AckermannDriveStamped>("ackermann_cmd1", 10);
ros::spin();
return 0;
}


void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s]", msg->data.c_str());
}

int main(int argc, char **argv)
{

  ros::init(argc, argv, "listener");   
  ros::NodeHandle n;   
  ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);
  ros::Publisher chatter_pub = n.advertise<ackermann_msgs::AckermannDriveStamped>("ackermann_cmd1", 10);

  //ros::Rate loop_rate(10);   

  int count = 0;
  while (ros::ok())
  {

    std_msgs::String msg;

    std::stringstream ss;
    ss << "hello world " << count;
    msg.data = ss.str();

    ROS_INFO("%s", msg.data.c_str());


    chatter_pub.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  ros::spin();

  return 0;
}
