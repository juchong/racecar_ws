#include <ros/ros.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_ros/buffer.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Twist.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf/transform_datatypes.h>

double x = 0, y=0, z=0, roll=0, pitch=0, yaw=0;
tf2_ros::Buffer tfBuffer;

void velCallback(const geometry_msgs::Twist vel) {
	ROS_INFO("MSG received");
	static tf2_ros::TransformBroadcaster br;
	geometry_msgs::TransformStamped transformStamped;

	transformStamped.header.stamp = ros::Time::now();
	transformStamped.header.frame_id = "odom";
	transformStamped.child_frame_id = "base_link_stabilized";

	//Use x as speed
	x += vel.linear.x*.1*cos(yaw);
	y += vel.linear.x*.1*sin(yaw);
	z += vel.linear.z*.1;

	transformStamped.transform.translation.x = x;
	transformStamped.transform.translation.y = y;
	transformStamped.transform.translation.z = z;

	geometry_msgs::TransformStamped imuTF;
	try {
		imuTF = tfBuffer.lookupTransform("base_link", "base_link_stabilized", ros::Time(0));
	}
	catch (tf2::TransformException &ex) {
		ROS_WARN_THROTTLE(0.5,"%s", ex.what());
		return;
	}

	tf::Quaternion q(imuTF.transform.rotation.x,
			 imuTF.transform.rotation.y,
			 imuTF.transform.rotation.z,
			 imuTF.transform.rotation.w);
	tf::Matrix3x3 (q).getRPY(roll, pitch, yaw);
	yaw = -1*yaw;

	//r += vel.angular.x*.1;
	//p += vel.angular.y*.1;
	//yaw += vel.angular.z*.1;

	tf2::Quaternion quaternion;
	quaternion.setRPY(roll, pitch, yaw);

	transformStamped.transform.rotation.x = 0;
	transformStamped.transform.rotation.y = 0;
	transformStamped.transform.rotation.z = 0;
	transformStamped.transform.rotation.w = 1;

	br.sendTransform(transformStamped);
}

int main(int argc, char** argv) {
	ros::init(argc, argv, "pose_tf2_broadcaster_test");
	ros::NodeHandle nh;
	ros::Subscriber sub = nh.subscribe("/robot_vel", 10, &velCallback);
	tf2_ros::TransformListener imuListener(tfBuffer);
	ros::spin();
	return 0;
}
