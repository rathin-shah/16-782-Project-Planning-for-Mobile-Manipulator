# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "execution_msgs: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(execution_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv" NAME_WE)
add_custom_target(_execution_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "execution_msgs" "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv" ""
)

get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv" NAME_WE)
add_custom_target(_execution_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "execution_msgs" "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(execution_msgs
  "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/execution_msgs
)
_generate_srv_cpp(execution_msgs
  "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/execution_msgs
)

### Generating Module File
_generate_module_cpp(execution_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/execution_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(execution_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(execution_msgs_generate_messages execution_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv" NAME_WE)
add_dependencies(execution_msgs_generate_messages_cpp _execution_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv" NAME_WE)
add_dependencies(execution_msgs_generate_messages_cpp _execution_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(execution_msgs_gencpp)
add_dependencies(execution_msgs_gencpp execution_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS execution_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(execution_msgs
  "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/execution_msgs
)
_generate_srv_eus(execution_msgs
  "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/execution_msgs
)

### Generating Module File
_generate_module_eus(execution_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/execution_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(execution_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(execution_msgs_generate_messages execution_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv" NAME_WE)
add_dependencies(execution_msgs_generate_messages_eus _execution_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv" NAME_WE)
add_dependencies(execution_msgs_generate_messages_eus _execution_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(execution_msgs_geneus)
add_dependencies(execution_msgs_geneus execution_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS execution_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(execution_msgs
  "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/execution_msgs
)
_generate_srv_lisp(execution_msgs
  "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/execution_msgs
)

### Generating Module File
_generate_module_lisp(execution_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/execution_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(execution_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(execution_msgs_generate_messages execution_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv" NAME_WE)
add_dependencies(execution_msgs_generate_messages_lisp _execution_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv" NAME_WE)
add_dependencies(execution_msgs_generate_messages_lisp _execution_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(execution_msgs_genlisp)
add_dependencies(execution_msgs_genlisp execution_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS execution_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(execution_msgs
  "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/execution_msgs
)
_generate_srv_nodejs(execution_msgs
  "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/execution_msgs
)

### Generating Module File
_generate_module_nodejs(execution_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/execution_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(execution_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(execution_msgs_generate_messages execution_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv" NAME_WE)
add_dependencies(execution_msgs_generate_messages_nodejs _execution_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv" NAME_WE)
add_dependencies(execution_msgs_generate_messages_nodejs _execution_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(execution_msgs_gennodejs)
add_dependencies(execution_msgs_gennodejs execution_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS execution_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(execution_msgs
  "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/execution_msgs
)
_generate_srv_py(execution_msgs
  "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/execution_msgs
)

### Generating Module File
_generate_module_py(execution_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/execution_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(execution_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(execution_msgs_generate_messages execution_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_rviz.srv" NAME_WE)
add_dependencies(execution_msgs_generate_messages_py _execution_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rathin/Documents/Fall 2022/16782/planning_proj/src/robot_motion_execution/execution_msgs/srv/execute_trajectory_robot.srv" NAME_WE)
add_dependencies(execution_msgs_generate_messages_py _execution_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(execution_msgs_genpy)
add_dependencies(execution_msgs_genpy execution_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS execution_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/execution_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/execution_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(execution_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/execution_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/execution_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(execution_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/execution_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/execution_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(execution_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/execution_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/execution_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(execution_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/execution_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/execution_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/execution_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(execution_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
