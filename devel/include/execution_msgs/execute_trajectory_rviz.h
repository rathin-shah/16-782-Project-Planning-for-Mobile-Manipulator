// Generated by gencpp from file execution_msgs/execute_trajectory_rviz.msg
// DO NOT EDIT!


#ifndef EXECUTION_MSGS_MESSAGE_EXECUTE_TRAJECTORY_RVIZ_H
#define EXECUTION_MSGS_MESSAGE_EXECUTE_TRAJECTORY_RVIZ_H

#include <ros/service_traits.h>


#include <execution_msgs/execute_trajectory_rvizRequest.h>
#include <execution_msgs/execute_trajectory_rvizResponse.h>


namespace execution_msgs
{

struct execute_trajectory_rviz
{

typedef execute_trajectory_rvizRequest Request;
typedef execute_trajectory_rvizResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct execute_trajectory_rviz
} // namespace execution_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::execution_msgs::execute_trajectory_rviz > {
  static const char* value()
  {
    return "05acbdefe3087529e04386c5ff659953";
  }

  static const char* value(const ::execution_msgs::execute_trajectory_rviz&) { return value(); }
};

template<>
struct DataType< ::execution_msgs::execute_trajectory_rviz > {
  static const char* value()
  {
    return "execution_msgs/execute_trajectory_rviz";
  }

  static const char* value(const ::execution_msgs::execute_trajectory_rviz&) { return value(); }
};


// service_traits::MD5Sum< ::execution_msgs::execute_trajectory_rvizRequest> should match
// service_traits::MD5Sum< ::execution_msgs::execute_trajectory_rviz >
template<>
struct MD5Sum< ::execution_msgs::execute_trajectory_rvizRequest>
{
  static const char* value()
  {
    return MD5Sum< ::execution_msgs::execute_trajectory_rviz >::value();
  }
  static const char* value(const ::execution_msgs::execute_trajectory_rvizRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::execution_msgs::execute_trajectory_rvizRequest> should match
// service_traits::DataType< ::execution_msgs::execute_trajectory_rviz >
template<>
struct DataType< ::execution_msgs::execute_trajectory_rvizRequest>
{
  static const char* value()
  {
    return DataType< ::execution_msgs::execute_trajectory_rviz >::value();
  }
  static const char* value(const ::execution_msgs::execute_trajectory_rvizRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::execution_msgs::execute_trajectory_rvizResponse> should match
// service_traits::MD5Sum< ::execution_msgs::execute_trajectory_rviz >
template<>
struct MD5Sum< ::execution_msgs::execute_trajectory_rvizResponse>
{
  static const char* value()
  {
    return MD5Sum< ::execution_msgs::execute_trajectory_rviz >::value();
  }
  static const char* value(const ::execution_msgs::execute_trajectory_rvizResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::execution_msgs::execute_trajectory_rvizResponse> should match
// service_traits::DataType< ::execution_msgs::execute_trajectory_rviz >
template<>
struct DataType< ::execution_msgs::execute_trajectory_rvizResponse>
{
  static const char* value()
  {
    return DataType< ::execution_msgs::execute_trajectory_rviz >::value();
  }
  static const char* value(const ::execution_msgs::execute_trajectory_rvizResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // EXECUTION_MSGS_MESSAGE_EXECUTE_TRAJECTORY_RVIZ_H