// Generated by gencpp from file ros_control_boilerplate/set_limit_switch.msg
// DO NOT EDIT!


#ifndef ROS_CONTROL_BOILERPLATE_MESSAGE_SET_LIMIT_SWITCH_H
#define ROS_CONTROL_BOILERPLATE_MESSAGE_SET_LIMIT_SWITCH_H

#include <ros/service_traits.h>


#include <ros_control_boilerplate/set_limit_switchRequest.h>
#include <ros_control_boilerplate/set_limit_switchResponse.h>


namespace ros_control_boilerplate
{

struct set_limit_switch
{

typedef set_limit_switchRequest Request;
typedef set_limit_switchResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct set_limit_switch
} // namespace ros_control_boilerplate


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_control_boilerplate::set_limit_switch > {
  static const char* value()
  {
    return "98a89b0b94ee528e0c04d8b0f6aa13dd";
  }

  static const char* value(const ::ros_control_boilerplate::set_limit_switch&) { return value(); }
};

template<>
struct DataType< ::ros_control_boilerplate::set_limit_switch > {
  static const char* value()
  {
    return "ros_control_boilerplate/set_limit_switch";
  }

  static const char* value(const ::ros_control_boilerplate::set_limit_switch&) { return value(); }
};


// service_traits::MD5Sum< ::ros_control_boilerplate::set_limit_switchRequest> should match 
// service_traits::MD5Sum< ::ros_control_boilerplate::set_limit_switch > 
template<>
struct MD5Sum< ::ros_control_boilerplate::set_limit_switchRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_control_boilerplate::set_limit_switch >::value();
  }
  static const char* value(const ::ros_control_boilerplate::set_limit_switchRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_control_boilerplate::set_limit_switchRequest> should match 
// service_traits::DataType< ::ros_control_boilerplate::set_limit_switch > 
template<>
struct DataType< ::ros_control_boilerplate::set_limit_switchRequest>
{
  static const char* value()
  {
    return DataType< ::ros_control_boilerplate::set_limit_switch >::value();
  }
  static const char* value(const ::ros_control_boilerplate::set_limit_switchRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_control_boilerplate::set_limit_switchResponse> should match 
// service_traits::MD5Sum< ::ros_control_boilerplate::set_limit_switch > 
template<>
struct MD5Sum< ::ros_control_boilerplate::set_limit_switchResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_control_boilerplate::set_limit_switch >::value();
  }
  static const char* value(const ::ros_control_boilerplate::set_limit_switchResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_control_boilerplate::set_limit_switchResponse> should match 
// service_traits::DataType< ::ros_control_boilerplate::set_limit_switch > 
template<>
struct DataType< ::ros_control_boilerplate::set_limit_switchResponse>
{
  static const char* value()
  {
    return DataType< ::ros_control_boilerplate::set_limit_switch >::value();
  }
  static const char* value(const ::ros_control_boilerplate::set_limit_switchResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_CONTROL_BOILERPLATE_MESSAGE_SET_LIMIT_SWITCH_H
