#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
 
int main(int argc, char** argv){
ros::init(argc, argv, "robot_tf_publisher");
ros::NodeHandle n;

//ros::Rate r(100);
static tf::TransformBroadcaster br;
    tf::Transform transform;
    transform.setOrigin( tf::Vector3(0.15, 0, 0.25) ); // position with respect to base (in meters)
    tf::Quaternion q;
    q.setRPY(0, 0, 0); // describes rotation with respect to base
    transform.setRotation(q);
ros::Rate loop_rate(1);

//tf::TransformBroadcaster broadcaster;
 


while(n.ok()){
    // broadcaster.sendTransform(tf::StampedTransform(tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0.1, 0.0, 0.2)),ros::Time::now(),"/base_link", "/laser"));
     //r.sleep();
 // }
 
br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "base_link", "base_laser"));
    ros::spinOnce();
}
}
