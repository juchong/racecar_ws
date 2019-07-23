// Generated by gencpp from file frc_msgs/MatchSpecificData.msg
// DO NOT EDIT!


#ifndef FRC_MSGS_MESSAGE_MATCHSPECIFICDATA_H
#define FRC_MSGS_MESSAGE_MATCHSPECIFICDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace frc_msgs
{
template <class ContainerAllocator>
struct MatchSpecificData_
{
  typedef MatchSpecificData_<ContainerAllocator> Type;

  MatchSpecificData_()
    : header()
    , eventName()
    , matchType(0)
    , matchNumber(0)
    , replayNumber(0)
    , matchTimeRemaining(0.0)
    , allianceColor(0)
    , driverStationLocation(0)
    , gameSpecificData()
    , Enabled(false)
    , Disabled(false)
    , Autonomous(false)
    , Test(false)
    , FMSAttached(false)
    , DSAttached(false)
    , OperatorControl(false)
    , BatteryVoltage(0.0)  {
    }
  MatchSpecificData_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , eventName(_alloc)
    , matchType(0)
    , matchNumber(0)
    , replayNumber(0)
    , matchTimeRemaining(0.0)
    , allianceColor(0)
    , driverStationLocation(0)
    , gameSpecificData(_alloc)
    , Enabled(false)
    , Disabled(false)
    , Autonomous(false)
    , Test(false)
    , FMSAttached(false)
    , DSAttached(false)
    , OperatorControl(false)
    , BatteryVoltage(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _eventName_type;
  _eventName_type eventName;

   typedef int8_t _matchType_type;
  _matchType_type matchType;

   typedef int8_t _matchNumber_type;
  _matchNumber_type matchNumber;

   typedef int8_t _replayNumber_type;
  _replayNumber_type replayNumber;

   typedef double _matchTimeRemaining_type;
  _matchTimeRemaining_type matchTimeRemaining;

   typedef int8_t _allianceColor_type;
  _allianceColor_type allianceColor;

   typedef int8_t _driverStationLocation_type;
  _driverStationLocation_type driverStationLocation;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _gameSpecificData_type;
  _gameSpecificData_type gameSpecificData;

   typedef uint8_t _Enabled_type;
  _Enabled_type Enabled;

   typedef uint8_t _Disabled_type;
  _Disabled_type Disabled;

   typedef uint8_t _Autonomous_type;
  _Autonomous_type Autonomous;

   typedef uint8_t _Test_type;
  _Test_type Test;

   typedef uint8_t _FMSAttached_type;
  _FMSAttached_type FMSAttached;

   typedef uint8_t _DSAttached_type;
  _DSAttached_type DSAttached;

   typedef uint8_t _OperatorControl_type;
  _OperatorControl_type OperatorControl;

   typedef double _BatteryVoltage_type;
  _BatteryVoltage_type BatteryVoltage;





  typedef boost::shared_ptr< ::frc_msgs::MatchSpecificData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::frc_msgs::MatchSpecificData_<ContainerAllocator> const> ConstPtr;

}; // struct MatchSpecificData_

typedef ::frc_msgs::MatchSpecificData_<std::allocator<void> > MatchSpecificData;

typedef boost::shared_ptr< ::frc_msgs::MatchSpecificData > MatchSpecificDataPtr;
typedef boost::shared_ptr< ::frc_msgs::MatchSpecificData const> MatchSpecificDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::frc_msgs::MatchSpecificData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::frc_msgs::MatchSpecificData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace frc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'frc_msgs': ['/home/niallmullane/racecar_ws/racecar_ws/src/frc_msgs/msg', '/home/niallmullane/racecar_ws/racecar_ws/src/frc_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::frc_msgs::MatchSpecificData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::frc_msgs::MatchSpecificData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::frc_msgs::MatchSpecificData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::frc_msgs::MatchSpecificData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::frc_msgs::MatchSpecificData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::frc_msgs::MatchSpecificData_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::frc_msgs::MatchSpecificData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "841701141221f3ad34663801c6ab3c63";
  }

  static const char* value(const ::frc_msgs::MatchSpecificData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x841701141221f3adULL;
  static const uint64_t static_value2 = 0x34663801c6ab3c63ULL;
};

template<class ContainerAllocator>
struct DataType< ::frc_msgs::MatchSpecificData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "frc_msgs/MatchSpecificData";
  }

  static const char* value(const ::frc_msgs::MatchSpecificData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::frc_msgs::MatchSpecificData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
string eventName\n\
int8 matchType\n\
int8 matchNumber\n\
int8 replayNumber\n\
\n\
float64 matchTimeRemaining\n\
int8 allianceColor\n\
int8 driverStationLocation\n\
string gameSpecificData\n\
\n\
bool Enabled\n\
bool Disabled\n\
bool Autonomous\n\
bool Test\n\
bool FMSAttached\n\
bool DSAttached\n\
bool OperatorControl\n\
\n\
float64 BatteryVoltage\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::frc_msgs::MatchSpecificData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::frc_msgs::MatchSpecificData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.eventName);
      stream.next(m.matchType);
      stream.next(m.matchNumber);
      stream.next(m.replayNumber);
      stream.next(m.matchTimeRemaining);
      stream.next(m.allianceColor);
      stream.next(m.driverStationLocation);
      stream.next(m.gameSpecificData);
      stream.next(m.Enabled);
      stream.next(m.Disabled);
      stream.next(m.Autonomous);
      stream.next(m.Test);
      stream.next(m.FMSAttached);
      stream.next(m.DSAttached);
      stream.next(m.OperatorControl);
      stream.next(m.BatteryVoltage);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MatchSpecificData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::frc_msgs::MatchSpecificData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::frc_msgs::MatchSpecificData_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "eventName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.eventName);
    s << indent << "matchType: ";
    Printer<int8_t>::stream(s, indent + "  ", v.matchType);
    s << indent << "matchNumber: ";
    Printer<int8_t>::stream(s, indent + "  ", v.matchNumber);
    s << indent << "replayNumber: ";
    Printer<int8_t>::stream(s, indent + "  ", v.replayNumber);
    s << indent << "matchTimeRemaining: ";
    Printer<double>::stream(s, indent + "  ", v.matchTimeRemaining);
    s << indent << "allianceColor: ";
    Printer<int8_t>::stream(s, indent + "  ", v.allianceColor);
    s << indent << "driverStationLocation: ";
    Printer<int8_t>::stream(s, indent + "  ", v.driverStationLocation);
    s << indent << "gameSpecificData: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.gameSpecificData);
    s << indent << "Enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Enabled);
    s << indent << "Disabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Disabled);
    s << indent << "Autonomous: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Autonomous);
    s << indent << "Test: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Test);
    s << indent << "FMSAttached: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FMSAttached);
    s << indent << "DSAttached: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.DSAttached);
    s << indent << "OperatorControl: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.OperatorControl);
    s << indent << "BatteryVoltage: ";
    Printer<double>::stream(s, indent + "  ", v.BatteryVoltage);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FRC_MSGS_MESSAGE_MATCHSPECIFICDATA_H
