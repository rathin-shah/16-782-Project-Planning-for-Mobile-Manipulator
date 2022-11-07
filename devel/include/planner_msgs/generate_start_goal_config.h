// Generated by gencpp from file planner_msgs/generate_start_goal_config.msg
// DO NOT EDIT!


#ifndef PLANNER_MSGS_MESSAGE_GENERATE_START_GOAL_CONFIG_H
#define PLANNER_MSGS_MESSAGE_GENERATE_START_GOAL_CONFIG_H

#include <ros/service_traits.h>


#include <planner_msgs/generate_start_goal_configRequest.h>
#include <planner_msgs/generate_start_goal_configResponse.h>


namespace planner_msgs
{

struct generate_start_goal_config
{

typedef generate_start_goal_configRequest Request;
typedef generate_start_goal_configResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct generate_start_goal_config
} // namespace planner_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::planner_msgs::generate_start_goal_config > {
  static const char* value()
  {
    return "016b486bf23e79f4112223da75806f26";
  }

  static const char* value(const ::planner_msgs::generate_start_goal_config&) { return value(); }
};

template<>
struct DataType< ::planner_msgs::generate_start_goal_config > {
  static const char* value()
  {
    return "planner_msgs/generate_start_goal_config";
  }

  static const char* value(const ::planner_msgs::generate_start_goal_config&) { return value(); }
};


// service_traits::MD5Sum< ::planner_msgs::generate_start_goal_configRequest> should match
// service_traits::MD5Sum< ::planner_msgs::generate_start_goal_config >
template<>
struct MD5Sum< ::planner_msgs::generate_start_goal_configRequest>
{
  static const char* value()
  {
    return MD5Sum< ::planner_msgs::generate_start_goal_config >::value();
  }
  static const char* value(const ::planner_msgs::generate_start_goal_configRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::planner_msgs::generate_start_goal_configRequest> should match
// service_traits::DataType< ::planner_msgs::generate_start_goal_config >
template<>
struct DataType< ::planner_msgs::generate_start_goal_configRequest>
{
  static const char* value()
  {
    return DataType< ::planner_msgs::generate_start_goal_config >::value();
  }
  static const char* value(const ::planner_msgs::generate_start_goal_configRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::planner_msgs::generate_start_goal_configResponse> should match
// service_traits::MD5Sum< ::planner_msgs::generate_start_goal_config >
template<>
struct MD5Sum< ::planner_msgs::generate_start_goal_configResponse>
{
  static const char* value()
  {
    return MD5Sum< ::planner_msgs::generate_start_goal_config >::value();
  }
  static const char* value(const ::planner_msgs::generate_start_goal_configResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::planner_msgs::generate_start_goal_configResponse> should match
// service_traits::DataType< ::planner_msgs::generate_start_goal_config >
template<>
struct DataType< ::planner_msgs::generate_start_goal_configResponse>
{
  static const char* value()
  {
    return DataType< ::planner_msgs::generate_start_goal_config >::value();
  }
  static const char* value(const ::planner_msgs::generate_start_goal_configResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PLANNER_MSGS_MESSAGE_GENERATE_START_GOAL_CONFIG_H