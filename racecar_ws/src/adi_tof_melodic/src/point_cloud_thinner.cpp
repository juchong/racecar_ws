#include <ros/ros.h>

#include <sensor_msgs/distortion_models.h>
#include <sensor_msgs/PointCloud.h>
#include <sensor_msgs/ChannelFloat32.h>
#include <geometry_msgs/Point32.h>
#include <tf/transform_broadcaster.h>

// comment out strings if need not needed
#include <cerrno>
#include <iostream>
#include <stdint.h>
#include <ctype.h>
#include <vector>
#include <fstream>

ros::Subscriber point_cloud_sub;
ros::Publisher point_cloud_pub;


double factor;
void point_cloud_cb(const sensor_msgs::PointCloud &point_cloud_msg) {
	sensor_msgs::PointCloud point_cloud_thinned;
	point_cloud_thinned.header = point_cloud_msg.header;
	std::vector<geometry_msgs::Point32> points_thinned = {};
	for(int j = 0; j<point_cloud_msg.channels.size(); j++) {
		sensor_msgs::ChannelFloat32 new_channel;
		new_channel.name = point_cloud_msg.channels[j].name;
		point_cloud_thinned.channels.push_back(new_channel);
	}
	for(int i = 0; i<point_cloud_msg.points.size(); i++) {
		if(rand() % 100 < factor*100) {
			points_thinned.push_back(point_cloud_msg.points[i]);

			for(int j = 0; j<point_cloud_msg.channels.size(); j++) {
				point_cloud_thinned.channels[j].values.push_back(point_cloud_msg.channels[j].values[i]);
			}
		}
	}
	point_cloud_thinned.points = points_thinned;
	point_cloud_pub.publish(point_cloud_thinned);
}

int main(int argc, char** argv) {

	ros::init(argc, argv, "point_cloud_thinner");
	ros::NodeHandle nh;
	ros::NodeHandle nh_private("~");

	nh_private.param<double>("factor", factor, 0.5);

	point_cloud_pub = nh.advertise<sensor_msgs::PointCloud>("camera/point_cloud_thinned", 1);
	point_cloud_sub = nh.subscribe("camera/point_cloud", 3, &point_cloud_cb);

	ros::spin();
	return 0;
}
