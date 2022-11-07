# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rospy;std_msgs;kuka_motion_control;moveit_core;moveit_ros_planning;trajectory_planning;planning_world_builder;eband_local_planner".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmotion_trajectory_execution".split(';') if "-lmotion_trajectory_execution" != "" else []
PROJECT_NAME = "motion_trajectory_execution"
PROJECT_SPACE_DIR = "/home/rathin/Documents/Fall 2022/16782/planning_proj/install"
PROJECT_VERSION = "0.0.0"
