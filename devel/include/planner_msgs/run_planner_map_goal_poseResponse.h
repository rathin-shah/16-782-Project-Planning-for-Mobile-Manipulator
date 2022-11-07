// Generated by gencpp from file planner_msgs/run_planner_map_goal_poseResponse.msg
// DO NOT EDIT!


#ifndef PLANNER_MSGS_MESSAGE_RUN_PLANNER_MAP_GOAL_POSERESPONSE_H
#define PLANNER_MSGS_MESSAGE_RUN_PLANNER_MAP_GOAL_POSERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <planner_msgs/array2d_double.h>
#include <planner_msgs/array2d_double.h>

namespace planner_msgs
{
template <class ContainerAllocator>
struct run_planner_map_goal_poseResponse_
{
  typedef run_planner_map_goal_poseResponse_<ContainerAllocator> Type;

  run_planner_map_goal_poseResponse_()
    : joint_trajectory()
    , ee_trajectory()
    , success(false)  {
    }
  run_planner_map_goal_poseResponse_(const ContainerAllocator& _alloc)
    : joint_trajectory(_alloc)
    , ee_trajectory(_alloc)
    , success(false)  {
  (void)_alloc;
    }



   typedef  ::planner_msgs::array2d_double_<ContainerAllocator>  _joint_trajectory_type;
  _joint_trajectory_type joint_trajectory;

   typedef  ::planner_msgs::array2d_double_<ContainerAllocator>  _ee_trajectory_type;
  _ee_trajectory_type ee_trajectory;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> const> ConstPtr;

}; // struct run_planner_map_goal_poseResponse_

typedef ::planner_msgs::run_planner_map_goal_poseResponse_<std::allocator<void> > run_planner_map_goal_poseResponse;

typedef boost::shared_ptr< ::planner_msgs::run_planner_map_goal_poseResponse > run_planner_map_goal_poseResponsePtr;
typedef boost::shared_ptr< ::planner_msgs::run_planner_map_goal_poseResponse const> run_planner_map_goal_poseResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator1> & lhs, const ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator2> & rhs)
{
  return lhs.joint_trajectory == rhs.joint_trajectory &&
    lhs.ee_trajectory == rhs.ee_trajectory &&
    lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator1> & lhs, const ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace planner_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cb34f92ebddcd3e658fb29e6f20a0171";
  }

  static const char* value(const ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcb34f92ebddcd3e6ULL;
  static const uint64_t static_value2 = 0x58fb29e6f20a0171ULL;
};

template<class ContainerAllocator>
struct DataType< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planner_msgs/run_planner_map_goal_poseResponse";
  }

  static const char* value(const ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"#Planned joint trajectory\n"
"array2d_double joint_trajectory\n"
"\n"
"#Planned endeffector trajectory\n"
"array2d_double ee_trajectory\n"
"\n"
"#Planning result\n"
"bool success\n"
"\n"
"================================================================================\n"
"MSG: planner_msgs/array2d_double\n"
"array1d_double[] array2d_double\n"
"================================================================================\n"
"MSG: planner_msgs/array1d_double\n"
"float64[] array1d_double\n"
;
  }

  static const char* value(const ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_trajectory);
      stream.next(m.ee_trajectory);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct run_planner_map_goal_poseResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planner_msgs::run_planner_map_goal_poseResponse_<ContainerAllocator>& v)
  {
    s << indent << "joint_trajectory: ";
    s << std::endl;
    Printer< ::planner_msgs::array2d_double_<ContainerAllocator> >::stream(s, indent + "  ", v.joint_trajectory);
    s << indent << "ee_trajectory: ";
    s << std::endl;
    Printer< ::planner_msgs::array2d_double_<ContainerAllocator> >::stream(s, indent + "  ", v.ee_trajectory);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNER_MSGS_MESSAGE_RUN_PLANNER_MAP_GOAL_POSERESPONSE_H
