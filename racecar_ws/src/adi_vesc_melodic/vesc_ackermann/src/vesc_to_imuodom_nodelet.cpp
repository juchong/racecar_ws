#include <boost/shared_ptr.hpp>
#include <nodelet/nodelet.h>
#include <pluginlib/class_list_macros.h>
#include <ros/ros.h>

#include "vesc_ackermann/vesc_to_imuodom.h"

namespace vesc_ackermann
{

class VescToIMUOdomNodelet: public nodelet::Nodelet
{
public:

  VescToIMUOdomNodelet() {}

private:

  virtual void onInit(void);

  boost::shared_ptr<VescToIMUOdom> vesc_to_imuodom_;

}; // class VescToOdomNodelet

void VescToIMUOdomNodelet::onInit()
{
  NODELET_DEBUG("Initializing RACECAR VESC odometry estimator nodelet");
  //vesc_to_odom_.reset(new VescToOdom(getNodeHandle(), getPrivateNodeHandle()));
  vesc_to_imuodom_.reset(new VescToIMUOdom(getNodeHandle(), getPrivateNodeHandle()));
}

} // namespace vesc_ackermann

PLUGINLIB_EXPORT_CLASS(vesc_ackermann::VescToIMUOdomNodelet, nodelet::Nodelet);
