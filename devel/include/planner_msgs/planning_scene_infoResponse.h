// Generated by gencpp from file planner_msgs/planning_scene_infoResponse.msg
// DO NOT EDIT!


#ifndef PLANNER_MSGS_MESSAGE_PLANNING_SCENE_INFORESPONSE_H
#define PLANNER_MSGS_MESSAGE_PLANNING_SCENE_INFORESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace planner_msgs
{
template <class ContainerAllocator>
struct planning_scene_infoResponse_
{
  typedef planning_scene_infoResponse_<ContainerAllocator> Type;

  planning_scene_infoResponse_()
    : ok(false)  {
    }
  planning_scene_infoResponse_(const ContainerAllocator& _alloc)
    : ok(false)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;





  typedef boost::shared_ptr< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> const> ConstPtr;

}; // struct planning_scene_infoResponse_

typedef ::planner_msgs::planning_scene_infoResponse_<std::allocator<void> > planning_scene_infoResponse;

typedef boost::shared_ptr< ::planner_msgs::planning_scene_infoResponse > planning_scene_infoResponsePtr;
typedef boost::shared_ptr< ::planner_msgs::planning_scene_infoResponse const> planning_scene_infoResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator1> & lhs, const ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ok == rhs.ok;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator1> & lhs, const ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace planner_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f6da3883749771fac40d6deb24a8c02";
  }

  static const char* value(const ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f6da3883749771fULL;
  static const uint64_t static_value2 = 0xac40d6deb24a8c02ULL;
};

template<class ContainerAllocator>
struct DataType< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planner_msgs/planning_scene_infoResponse";
  }

  static const char* value(const ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"bool ok\n"
;
  }

  static const char* value(const ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct planning_scene_infoResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planner_msgs::planning_scene_infoResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNER_MSGS_MESSAGE_PLANNING_SCENE_INFORESPONSE_H