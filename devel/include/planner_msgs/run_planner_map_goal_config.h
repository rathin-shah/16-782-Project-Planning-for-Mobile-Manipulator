// Generated by gencpp from file planner_msgs/run_planner_map_goal_config.msg
// DO NOT EDIT!


#ifndef PLANNER_MSGS_MESSAGE_RUN_PLANNER_MAP_GOAL_CONFIG_H
#define PLANNER_MSGS_MESSAGE_RUN_PLANNER_MAP_GOAL_CONFIG_H

#include <ros/service_traits.h>


#include <planner_msgs/run_planner_map_goal_configRequest.h>
#include <planner_msgs/run_planner_map_goal_configResponse.h>


namespace planner_msgs
{

struct run_planner_map_goal_config
{

typedef run_planner_map_goal_configRequest Request;
typedef run_planner_map_goal_configResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct run_planner_map_goal_config
} // namespace planner_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::planner_msgs::run_planner_map_goal_config > {
  static const char* value()
  {
    return "286271ef712febf633313deb7274b04b";
  }

  static const char* value(const ::planner_msgs::run_planner_map_goal_config&) { return value(); }
};

template<>
struct DataType< ::planner_msgs::run_planner_map_goal_config > {
  static const char* value()
  {
    return "planner_msgs/run_planner_map_goal_config";
  }

  static const char* value(const ::planner_msgs::run_planner_map_goal_config&) { return value(); }
};


// service_traits::MD5Sum< ::planner_msgs::run_planner_map_goal_configRequest> should match
// service_traits::MD5Sum< ::planner_msgs::run_planner_map_goal_config >
template<>
struct MD5Sum< ::planner_msgs::run_planner_map_goal_configRequest>
{
  static const char* value()
  {
    return MD5Sum< ::planner_msgs::run_planner_map_goal_config >::value();
  }
  static const char* value(const ::planner_msgs::run_planner_map_goal_configRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::planner_msgs::run_planner_map_goal_configRequest> should match
// service_traits::DataType< ::planner_msgs::run_planner_map_goal_config >
template<>
struct DataType< ::planner_msgs::run_planner_map_goal_configRequest>
{
  static const char* value()
  {
    return DataType< ::planner_msgs::run_planner_map_goal_config >::value();
  }
  static const char* value(const ::planner_msgs::run_planner_map_goal_configRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::planner_msgs::run_planner_map_goal_configResponse> should match
// service_traits::MD5Sum< ::planner_msgs::run_planner_map_goal_config >
template<>
struct MD5Sum< ::planner_msgs::run_planner_map_goal_configResponse>
{
  static const char* value()
  {
    return MD5Sum< ::planner_msgs::run_planner_map_goal_config >::value();
  }
  static const char* value(const ::planner_msgs::run_planner_map_goal_configResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::planner_msgs::run_planner_map_goal_configResponse> should match
// service_traits::DataType< ::planner_msgs::run_planner_map_goal_config >
template<>
struct DataType< ::planner_msgs::run_planner_map_goal_configResponse>
{
  static const char* value()
  {
    return DataType< ::planner_msgs::run_planner_map_goal_config >::value();
  }
  static const char* value(const ::planner_msgs::run_planner_map_goal_configResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PLANNER_MSGS_MESSAGE_RUN_PLANNER_MAP_GOAL_CONFIG_H