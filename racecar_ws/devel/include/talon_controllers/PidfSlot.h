// Generated by gencpp from file talon_controllers/PidfSlot.msg
// DO NOT EDIT!


#ifndef TALON_CONTROLLERS_MESSAGE_PIDFSLOT_H
#define TALON_CONTROLLERS_MESSAGE_PIDFSLOT_H

#include <ros/service_traits.h>


#include <talon_controllers/PidfSlotRequest.h>
#include <talon_controllers/PidfSlotResponse.h>


namespace talon_controllers
{

struct PidfSlot
{

typedef PidfSlotRequest Request;
typedef PidfSlotResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PidfSlot
} // namespace talon_controllers


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::talon_controllers::PidfSlot > {
  static const char* value()
  {
    return "699888169b1a41d28b65c42d5f593b44";
  }

  static const char* value(const ::talon_controllers::PidfSlot&) { return value(); }
};

template<>
struct DataType< ::talon_controllers::PidfSlot > {
  static const char* value()
  {
    return "talon_controllers/PidfSlot";
  }

  static const char* value(const ::talon_controllers::PidfSlot&) { return value(); }
};


// service_traits::MD5Sum< ::talon_controllers::PidfSlotRequest> should match 
// service_traits::MD5Sum< ::talon_controllers::PidfSlot > 
template<>
struct MD5Sum< ::talon_controllers::PidfSlotRequest>
{
  static const char* value()
  {
    return MD5Sum< ::talon_controllers::PidfSlot >::value();
  }
  static const char* value(const ::talon_controllers::PidfSlotRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::talon_controllers::PidfSlotRequest> should match 
// service_traits::DataType< ::talon_controllers::PidfSlot > 
template<>
struct DataType< ::talon_controllers::PidfSlotRequest>
{
  static const char* value()
  {
    return DataType< ::talon_controllers::PidfSlot >::value();
  }
  static const char* value(const ::talon_controllers::PidfSlotRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::talon_controllers::PidfSlotResponse> should match 
// service_traits::MD5Sum< ::talon_controllers::PidfSlot > 
template<>
struct MD5Sum< ::talon_controllers::PidfSlotResponse>
{
  static const char* value()
  {
    return MD5Sum< ::talon_controllers::PidfSlot >::value();
  }
  static const char* value(const ::talon_controllers::PidfSlotResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::talon_controllers::PidfSlotResponse> should match 
// service_traits::DataType< ::talon_controllers::PidfSlot > 
template<>
struct DataType< ::talon_controllers::PidfSlotResponse>
{
  static const char* value()
  {
    return DataType< ::talon_controllers::PidfSlot >::value();
  }
  static const char* value(const ::talon_controllers::PidfSlotResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TALON_CONTROLLERS_MESSAGE_PIDFSLOT_H