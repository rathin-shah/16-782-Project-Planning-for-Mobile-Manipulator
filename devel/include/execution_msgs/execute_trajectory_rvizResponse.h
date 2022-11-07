// Generated by gencpp from file execution_msgs/execute_trajectory_rvizResponse.msg
// DO NOT EDIT!


#ifndef EXECUTION_MSGS_MESSAGE_EXECUTE_TRAJECTORY_RVIZRESPONSE_H
#define EXECUTION_MSGS_MESSAGE_EXECUTE_TRAJECTORY_RVIZRESPONSE_H


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
struct execute_trajectory_rvizResponse_
{
  typedef execute_trajectory_rvizResponse_<ContainerAllocator> Type;

  execute_trajectory_rvizResponse_()
    : execution_success(false)  {
    }
  execute_trajectory_rvizResponse_(const ContainerAllocator& _alloc)
    : execution_success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _execution_success_type;
  _execution_success_type execution_success;





  typedef boost::shared_ptr< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> const> ConstPtr;

}; // struct execute_trajectory_rvizResponse_

typedef ::execution_msgs::execute_trajectory_rvizResponse_<std::allocator<void> > execute_trajectory_rvizResponse;

typedef boost::shared_ptr< ::execution_msgs::execute_trajectory_rvizResponse > execute_trajectory_rvizResponsePtr;
typedef boost::shared_ptr< ::execution_msgs::execute_trajectory_rvizResponse const> execute_trajectory_rvizResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator1> & lhs, const ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator2> & rhs)
{
  return lhs.execution_success == rhs.execution_success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator1> & lhs, const ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace execution_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0fa97b8c73a5dba72b93645f87382de3";
  }

  static const char* value(const ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0fa97b8c73a5dba7ULL;
  static const uint64_t static_value2 = 0x2b93645f87382de3ULL;
};

template<class ContainerAllocator>
struct DataType< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "execution_msgs/execute_trajectory_rvizResponse";
  }

  static const char* value(const ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"#Flag indicating whether trajectory execution has been successfull\n"
"bool execution_success\n"
"\n"
;
  }

  static const char* value(const ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.execution_success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct execute_trajectory_rvizResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::execution_msgs::execute_trajectory_rvizResponse_<ContainerAllocator>& v)
  {
    s << indent << "execution_success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.execution_success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXECUTION_MSGS_MESSAGE_EXECUTE_TRAJECTORY_RVIZRESPONSE_H
