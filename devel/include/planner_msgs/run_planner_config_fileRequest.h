// Generated by gencpp from file planner_msgs/run_planner_config_fileRequest.msg
// DO NOT EDIT!


#ifndef PLANNER_MSGS_MESSAGE_RUN_PLANNER_CONFIG_FILEREQUEST_H
#define PLANNER_MSGS_MESSAGE_RUN_PLANNER_CONFIG_FILEREQUEST_H


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
struct run_planner_config_fileRequest_
{
  typedef run_planner_config_fileRequest_<ContainerAllocator> Type;

  run_planner_config_fileRequest_()
    : path_configs_file()
    , planner_type()
    , run_id(0)
    , flag_iter_or_time(0)
    , iter_or_time(0.0)
    , tree_optimization(false)
    , informed_sampling(false)
    , show_tree(false)  {
    }
  run_planner_config_fileRequest_(const ContainerAllocator& _alloc)
    : path_configs_file(_alloc)
    , planner_type(_alloc)
    , run_id(0)
    , flag_iter_or_time(0)
    , iter_or_time(0.0)
    , tree_optimization(false)
    , informed_sampling(false)
    , show_tree(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _path_configs_file_type;
  _path_configs_file_type path_configs_file;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _planner_type_type;
  _planner_type_type planner_type;

   typedef uint8_t _run_id_type;
  _run_id_type run_id;

   typedef uint8_t _flag_iter_or_time_type;
  _flag_iter_or_time_type flag_iter_or_time;

   typedef double _iter_or_time_type;
  _iter_or_time_type iter_or_time;

   typedef uint8_t _tree_optimization_type;
  _tree_optimization_type tree_optimization;

   typedef uint8_t _informed_sampling_type;
  _informed_sampling_type informed_sampling;

   typedef uint8_t _show_tree_type;
  _show_tree_type show_tree;





  typedef boost::shared_ptr< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> const> ConstPtr;

}; // struct run_planner_config_fileRequest_

typedef ::planner_msgs::run_planner_config_fileRequest_<std::allocator<void> > run_planner_config_fileRequest;

typedef boost::shared_ptr< ::planner_msgs::run_planner_config_fileRequest > run_planner_config_fileRequestPtr;
typedef boost::shared_ptr< ::planner_msgs::run_planner_config_fileRequest const> run_planner_config_fileRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator1> & lhs, const ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator2> & rhs)
{
  return lhs.path_configs_file == rhs.path_configs_file &&
    lhs.planner_type == rhs.planner_type &&
    lhs.run_id == rhs.run_id &&
    lhs.flag_iter_or_time == rhs.flag_iter_or_time &&
    lhs.iter_or_time == rhs.iter_or_time &&
    lhs.tree_optimization == rhs.tree_optimization &&
    lhs.informed_sampling == rhs.informed_sampling &&
    lhs.show_tree == rhs.show_tree;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator1> & lhs, const ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace planner_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a5bef555858817b9c688ce8a2979c01";
  }

  static const char* value(const ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a5bef555858817bULL;
  static const uint64_t static_value2 = 0x9c688ce8a2979c01ULL;
};

template<class ContainerAllocator>
struct DataType< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planner_msgs/run_planner_config_fileRequest";
  }

  static const char* value(const ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"#Path to file containing the start and goal config\n"
"string path_configs_file\n"
"\n"
"#Type of planner (uni or bidirectional)\n"
"string planner_type\n"
"\n"
"#ID of the planner run\n"
"uint8 run_id\n"
"\n"
"#Flag indicating whether maximum number of iterations of runtime is used\n"
"uint8 flag_iter_or_time\n"
"\n"
"#Max. number of iterations / or max. runtime \n"
"float64 iter_or_time\n"
"\n"
"#Flag indicating whether tree optimization is used\n"
"bool tree_optimization\n"
"\n"
"#Flag indicating whether informed sampling is used\n"
"bool informed_sampling\n"
"\n"
"#Flag to visualize planning process\n"
"bool show_tree\n"
"\n"
;
  }

  static const char* value(const ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path_configs_file);
      stream.next(m.planner_type);
      stream.next(m.run_id);
      stream.next(m.flag_iter_or_time);
      stream.next(m.iter_or_time);
      stream.next(m.tree_optimization);
      stream.next(m.informed_sampling);
      stream.next(m.show_tree);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct run_planner_config_fileRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planner_msgs::run_planner_config_fileRequest_<ContainerAllocator>& v)
  {
    s << indent << "path_configs_file: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.path_configs_file);
    s << indent << "planner_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.planner_type);
    s << indent << "run_id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.run_id);
    s << indent << "flag_iter_or_time: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flag_iter_or_time);
    s << indent << "iter_or_time: ";
    Printer<double>::stream(s, indent + "  ", v.iter_or_time);
    s << indent << "tree_optimization: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.tree_optimization);
    s << indent << "informed_sampling: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.informed_sampling);
    s << indent << "show_tree: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.show_tree);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNER_MSGS_MESSAGE_RUN_PLANNER_CONFIG_FILEREQUEST_H
