// Generated by gencpp from file frc_msgs/CubeState.msg
// DO NOT EDIT!


#ifndef FRC_MSGS_MESSAGE_CUBESTATE_H
#define FRC_MSGS_MESSAGE_CUBESTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace frc_msgs
{
template <class ContainerAllocator>
struct CubeState_
{
  typedef CubeState_<ContainerAllocator> Type;

  CubeState_()
    : clamp(false)
    , intake_high(false)
    , intake_low(false)
    , has_cube(false)  {
    }
  CubeState_(const ContainerAllocator& _alloc)
    : clamp(false)
    , intake_high(false)
    , intake_low(false)
    , has_cube(false)  {
  (void)_alloc;
    }



   typedef uint8_t _clamp_type;
  _clamp_type clamp;

   typedef uint8_t _intake_high_type;
  _intake_high_type intake_high;

   typedef uint8_t _intake_low_type;
  _intake_low_type intake_low;

   typedef uint8_t _has_cube_type;
  _has_cube_type has_cube;





  typedef boost::shared_ptr< ::frc_msgs::CubeState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::frc_msgs::CubeState_<ContainerAllocator> const> ConstPtr;

}; // struct CubeState_

typedef ::frc_msgs::CubeState_<std::allocator<void> > CubeState;

typedef boost::shared_ptr< ::frc_msgs::CubeState > CubeStatePtr;
typedef boost::shared_ptr< ::frc_msgs::CubeState const> CubeStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::frc_msgs::CubeState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::frc_msgs::CubeState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace frc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'frc_msgs': ['/home/niallmullane/racecar_ws/racecar_ws/src/frc_msgs/msg', '/home/niallmullane/racecar_ws/racecar_ws/src/frc_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::frc_msgs::CubeState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::frc_msgs::CubeState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::frc_msgs::CubeState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::frc_msgs::CubeState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::frc_msgs::CubeState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::frc_msgs::CubeState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::frc_msgs::CubeState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "42388bfc6bfe50e21deb636904eb309b";
  }

  static const char* value(const ::frc_msgs::CubeState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x42388bfc6bfe50e2ULL;
  static const uint64_t static_value2 = 0x1deb636904eb309bULL;
};

template<class ContainerAllocator>
struct DataType< ::frc_msgs::CubeState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "frc_msgs/CubeState";
  }

  static const char* value(const ::frc_msgs::CubeState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::frc_msgs::CubeState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool clamp\n\
bool intake_high\n\
bool intake_low\n\
bool has_cube\n\
";
  }

  static const char* value(const ::frc_msgs::CubeState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::frc_msgs::CubeState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.clamp);
      stream.next(m.intake_high);
      stream.next(m.intake_low);
      stream.next(m.has_cube);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CubeState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::frc_msgs::CubeState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::frc_msgs::CubeState_<ContainerAllocator>& v)
  {
    s << indent << "clamp: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clamp);
    s << indent << "intake_high: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.intake_high);
    s << indent << "intake_low: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.intake_low);
    s << indent << "has_cube: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.has_cube);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FRC_MSGS_MESSAGE_CUBESTATE_H
