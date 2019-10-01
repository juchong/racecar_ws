// -*- mode:c++; fill-column: 100; -*-

#include "vesc_ackermann/vesc_to_imuodom.h"
#include <ros/ros.h>
#include <cmath>
#include "std_msgs/String.h"
#include <iostream>
#include <fstream>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/TransformStamped.h>
#include <sensor_msgs/Imu.h>
std_msgs::Float64 imu_xx; 
std_msgs::Float64 imu_yy;
std_msgs::Float64 imu_zz;
std_msgs::Float64 imu_ww; 
std_msgs::Float64 imu_yaw_velocity;
std_msgs::Float64 imuTopicExistss;
std_msgs::Float64 imu_angular_velocity;
//static double x_dot,y_dot;
std_msgs::Float64 imu_yaw_;
double avg_meas=0;
double avg_acc=0;
double amc=0;
double avg_count=100;
double avg_count_inc=0;
double enable_calibration=1;


using namespace std;
ofstream csv_file("/home/nvidia/xywheel.csv");

namespace vesc_ackermann
{

template <typename T>
inline bool getRequiredParam(const ros::NodeHandle& nh, std::string name, T& value);


VescToIMUOdom::VescToIMUOdom(ros::NodeHandle nh, ros::NodeHandle private_nh) :
  odom_frame_("odom"), base_frame_("base_link"),
  use_servo_cmd_(true), publish_tf_(true), x_(0.0), y_(0.0), wheel_yaw_(0.0),imu_yaw_(0.0)
{
  // get ROS parameters
  private_nh.param("odom_frame", odom_frame_, odom_frame_);
  private_nh.param("base_frame", base_frame_, base_frame_);
  private_nh.param("use_servo_cmd_to_calc_angular_velocity", use_servo_cmd_, use_servo_cmd_);
  if (!getRequiredParam(nh, "speed_to_erpm_gain", speed_to_erpm_gain_))
    return;
  if (!getRequiredParam(nh, "speed_to_erpm_offset", speed_to_erpm_offset_))
    return;
  if (use_servo_cmd_) {
    if (!getRequiredParam(nh, "steering_angle_to_servo_gain", steering_to_servo_gain_))
      return;
    if (!getRequiredParam(nh, "steering_angle_to_servo_offset", steering_to_servo_offset_))
      return;
    if (!getRequiredParam(nh, "wheelbase", wheelbase_))
      return;
  
  }
  private_nh.param("publish_tf", publish_tf_, publish_tf_);

  // create odom publisher
  odom_pub_ = nh.advertise<nav_msgs::Odometry>("odom", 10);

  // create tf broadcaster
  if (publish_tf_) {
    tf_pub_.reset(new tf::TransformBroadcaster);
  }

  // subscribe to vesc state and. optionally, servo command
  imu_sub = nh.subscribe("/imu/data", 10, &VescToIMUOdom::imucallback, this);  //new
  vesc_state_sub_ = nh.subscribe("sensors/core", 10, &VescToIMUOdom::vescStateCallback, this);
  if (use_servo_cmd_) {
    servo_sub_ = nh.subscribe("sensors/servo_position_command", 10,
                              &VescToIMUOdom::servoCmdCallback, this);
  }
}

//imu call back
void VescToIMUOdom::imucallback(const sensor_msgs::Imu::Ptr& msgs)
{
imuTopicExistss.data=1;
imu_xx.data = msgs->orientation.x;
imu_yy.data = msgs->orientation.y;
imu_zz.data = msgs->orientation.z;
imu_ww.data = msgs->orientation.w;
imu_angular_velocity.data = msgs->angular_velocity.z;
}

void VescToIMUOdom::vescStateCallback(const vesc_msgs::VescStateStamped::ConstPtr& state)
{
//ROS_INFO(" in odom state func ori x: %f ori y: %f orientation z: %f orientation w: %f " ,imu_xx.data, imu_yy.data, imu_zz.data, imu_ww.data);
  // check that we have a last servo command if we are depending on it for angular velocity
  if (use_servo_cmd_ && !last_servo_cmd_)
    return;

  // convert to engineering units
  double current_speed = ( state->state.speed - speed_to_erpm_offset_ ) / speed_to_erpm_gain_;
  double current_steering_angle(0.0), current_angular_velocity(0.0); //new ;
  if (use_servo_cmd_) {
    current_steering_angle =
      ( last_servo_cmd_->data - steering_to_servo_offset_ ) / steering_to_servo_gain_;
    current_angular_velocity = current_speed * tan(current_steering_angle) / wheelbase_;
  }

  // use current state as last state if this is our first time here
  if (!last_state_)
    last_state_ = state;

  // calc elapsed time
  ros::Duration dt = state->header.stamp - last_state_->header.stamp;

  /** @todo could probably do better propigating odometry, e.g. trapezoidal integration */

   //Calculate yaw
  // imu_yaw_.data = 2.0*asin(imu_zz.data);
   //ROS_INFO(" in odom state func yaw value yaw: %f z: %f " ,imu_yaw_.data,imu_zz.data);

  // double x_dot_imu   = current_speed * cos(imu_yaw_.data);
   //double y_dot_imu   = current_speed * sin(imu_yaw_.data);
   double x_dot_imu   = current_speed * cos(imu_yaw_);// new
   double y_dot_imu   = current_speed * sin(imu_yaw_);//new
   double x_dot_wheel = current_speed * cos(wheel_yaw_);
   double y_dot_wheel = current_speed * sin(wheel_yaw_);

 // propigate odometry
  

//ROS_INFO(" in odom state func x_dot x: %f y_dot y: %f " ,x_dot,y_dot);
  x_imu   += x_dot_imu   * dt.toSec();
  y_imu   += y_dot_imu   * dt.toSec();
  x_wheel += x_dot_wheel * dt.toSec();
  y_wheel += y_dot_wheel * dt.toSec();
  x_      = x_imu;
  y_      = y_imu;
 
//ROS_INFO(" in odom state func x_imu x: %f y_imu y: %f x_wheel x: %f y_wheel y" ,x_imu,y_imu, x_wheel, y_wheel);
csv_file <<" " << state->header.stamp <<"," << x_imu <<"," << y_imu <<"," << x_wheel <<"," <<  y_wheel <<","  << endl;


//ROS_INFO(" in odom state func x_dot x: %f y_dot y: %f " ,x_dot,y_dot);


  if (use_servo_cmd_)
  	if (amc==0){
    		avg_acc=avg_acc+imu_angular_velocity.data;
       		if(avg_count_inc==avg_count){
         		avg_meas=avg_acc/avg_count;
         		amc=1;
         		imu_yaw_=0;
         		//ROS_INFO("avg measurement: %f",avg_meas);
         		//csv_file << " " << avg_meas << endl;
         		}
      		else{
         		avg_count_inc++;
         		imu_yaw_=0;
        		//ROS_INFO("avg count incrementer: %f",avg_count_inc);
        		//csv_file << " " << avg_count_inc << endl;
  			}
	}
  if (enable_calibration) {
  	wheel_yaw_ += current_angular_velocity             * dt.toSec();
  	imu_yaw_   += (imu_angular_velocity.data-avg_meas)  * dt.toSec(); //NEW
	}
  else {
	wheel_yaw_ += current_angular_velocity * dt.toSec();
  	imu_yaw_   += imu_angular_velocity.data  * dt.toSec(); //NEW
  }
  //imu_yaw_ = 2*asin(imu_zz.data);
  //ROS_INFO(" in odom state func x_ x: %f y_ y: %f odom_yaw: %f" ,x_,y_, wheel_yaw_);
  // save state for next time
  last_state_ = state;

  // publish odometry message
  nav_msgs::Odometry::Ptr odom(new nav_msgs::Odometry);
  odom->header.frame_id = odom_frame_;
  odom->header.stamp = state->header.stamp;
  odom->child_frame_id = base_frame_;

  // Position
  odom->pose.pose.position.x = x_;
  odom->pose.pose.position.y = y_;
  odom->pose.pose.orientation.x = imu_xx.data; //0.0;
  odom->pose.pose.orientation.y = imu_yy.data; //0.0;
  odom->pose.pose.orientation.z = sin(imu_yaw_/2.0);//imu_zz.data; //sin(yaw_/2.0);
  odom->pose.pose.orientation.w = cos(imu_yaw_/2.0);//imu_ww.data; //cos(yaw_/2.0);


  // Position uncertainty
  /** @todo Think about position uncertainty, perhaps get from parameters? */
  odom->pose.covariance[0]  = 0.2; ///< x
  odom->pose.covariance[7]  = 0.2; ///< y
  odom->pose.covariance[35] = 0.4; ///< yaw

  // Velocity ("in the coordinate frame given by the child_frame_id")
  odom->twist.twist.linear.x = current_speed;
  odom->twist.twist.linear.y = 0.0;
  odom->twist.twist.angular.z = imu_angular_velocity.data;//current_angular_velocity;

  // Velocity uncertainty
  /** @todo Think about velocity uncertainty */

  if (publish_tf_) {
    geometry_msgs::TransformStamped tf;
    tf.header.frame_id = odom_frame_;
    tf.child_frame_id = base_frame_;
    tf.header.stamp = ros::Time::now();
    tf.transform.translation.x = x_;
    tf.transform.translation.y = y_;
    tf.transform.translation.z = 0.0;
    tf.transform.rotation = odom->pose.pose.orientation;
    if (ros::ok()) {
      tf_pub_->sendTransform(tf);
    }
  }

  if (ros::ok()) {
    odom_pub_.publish(odom);
  }
}


void VescToIMUOdom::servoCmdCallback(const std_msgs::Float64::ConstPtr& servo)
{
  last_servo_cmd_ = servo;
//ROS_INFO(" servo : %f" ,servo);
}

template <typename T>
inline bool getRequiredParam(const ros::NodeHandle& nh, std::string name, T& value)
{
  if (nh.getParam(name, value))
    return true;

  ROS_FATAL("VescToOdom: Parameter %s is required.", name.c_str());
  return false;
}

} // namespace vesc_ackermann
