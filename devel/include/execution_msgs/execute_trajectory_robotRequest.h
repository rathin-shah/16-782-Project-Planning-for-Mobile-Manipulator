// Generated by gencpp from file execution_msgs/execute_trajectory_robotRequest.msg
// DO NOT EDIT!


#ifndef EXECUTION_MSGS_MESSAGE_EXECUTE_TRAJECTORY_ROBOTREQUEST_H
#define EXECUTION_MSGS_MESSAGE_EXECUTE_TRAJECTORY_ROBOTREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace execution_msgs
{
template <class ContainerAllocator>
struct execute_trajectory_robotRequest_
{
  typedef execute_trajectory_robotRequest_<ContainerAllocator> Type;

  execute_trajectory_robotRequest_()
    : planner_type()
    , run_id()  {
    }
  execute_trajectory_robotRequest_(const ContainerAllocator& _alloc)
    : planner_type(_alloc)
    , run_id(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _planner_type_type;
  _planner_type_type planner_type;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _run_id_type;
  _run_id_type run_id;





  typedef boost::shared_ptr< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> const> ConstPtr;

}; // struct execute_trajectory_robotRequest_

typedef ::execution_msgs::execute_trajectory_robotRequest_<std::allocator<void> > execute_trajectory_robotRequest;

typedef boost::shared_ptr< ::execution_msgs::execute_trajectory_robotRequest > execute_trajectory_robotRequestPtr;
typedef boost::shared_ptr< ::execution_msgs::execute_trajectory_robotRequest const> execute_trajectory_robotRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator1> & lhs, const ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator2> & rhs)
{
  return lhs.planner_type == rhs.planner_type &&
    lhs.run_id == rhs.run_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator1> & lhs, const ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace execution_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8dee15a0afb187fdd6875d10e9162450";
  }

  static const char* value(const ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8dee15a0afb187fdULL;
  static const uint64_t static_value2 = 0xd6875d10e9162450ULL;
};

template<class ContainerAllocator>
struct DataType< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "execution_msgs/execute_trajectory_robotRequest";
  }

  static const char* value(const ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Type of planner (uni or bidirectional)\n"
"string planner_type\n"
"\n"
"#ID of the planner run\n"
"string run_id\n"
"\n"
;
  }

  static const char* value(const ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.planner_type);
      stream.next(m.run_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct execute_trajectory_robotRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::execution_msgs::execute_trajectory_robotRequest_<ContainerAllocator>& v)
  {
    s << indent << "planner_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.planner_type);
    s << indent << "run_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.run_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXECUTION_MSGS_MESSAGE_EXECUTE_TRAJECTORY_ROBOTREQUEST_H
