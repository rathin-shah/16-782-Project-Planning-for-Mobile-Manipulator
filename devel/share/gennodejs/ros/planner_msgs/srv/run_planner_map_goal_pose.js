// Auto-generated. Do not edit!

// (in-package planner_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let array2d_double = require('../msg/array2d_double.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class run_planner_map_goal_poseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_pose = null;
      this.constraint_vec_goal_pose = null;
      this.target_coordinate_dev = null;
      this.planner_type = null;
      this.run_id = null;
      this.flag_iter_or_time = null;
      this.iter_or_time = null;
      this.tree_optimization = null;
      this.informed_sampling = null;
      this.show_tree = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_pose')) {
        this.goal_pose = initObj.goal_pose
      }
      else {
        this.goal_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('constraint_vec_goal_pose')) {
        this.constraint_vec_goal_pose = initObj.constraint_vec_goal_pose
      }
      else {
        this.constraint_vec_goal_pose = [];
      }
      if (initObj.hasOwnProperty('target_coordinate_dev')) {
        this.target_coordinate_dev = initObj.target_coordinate_dev
      }
      else {
        this.target_coordinate_dev = new array2d_double();
      }
      if (initObj.hasOwnProperty('planner_type')) {
        this.planner_type = initObj.planner_type
      }
      else {
        this.planner_type = '';
      }
      if (initObj.hasOwnProperty('run_id')) {
        this.run_id = initObj.run_id
      }
      else {
        this.run_id = 0;
      }
      if (initObj.hasOwnProperty('flag_iter_or_time')) {
        this.flag_iter_or_time = initObj.flag_iter_or_time
      }
      else {
        this.flag_iter_or_time = 0;
      }
      if (initObj.hasOwnProperty('iter_or_time')) {
        this.iter_or_time = initObj.iter_or_time
      }
      else {
        this.iter_or_time = 0.0;
      }
      if (initObj.hasOwnProperty('tree_optimization')) {
        this.tree_optimization = initObj.tree_optimization
      }
      else {
        this.tree_optimization = false;
      }
      if (initObj.hasOwnProperty('informed_sampling')) {
        this.informed_sampling = initObj.informed_sampling
      }
      else {
        this.informed_sampling = false;
      }
      if (initObj.hasOwnProperty('show_tree')) {
        this.show_tree = initObj.show_tree
      }
      else {
        this.show_tree = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type run_planner_map_goal_poseRequest
    // Serialize message field [goal_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.goal_pose, buffer, bufferOffset);
    // Serialize message field [constraint_vec_goal_pose]
    bufferOffset = _arraySerializer.int32(obj.constraint_vec_goal_pose, buffer, bufferOffset, null);
    // Serialize message field [target_coordinate_dev]
    bufferOffset = array2d_double.serialize(obj.target_coordinate_dev, buffer, bufferOffset);
    // Serialize message field [planner_type]
    bufferOffset = _serializer.string(obj.planner_type, buffer, bufferOffset);
    // Serialize message field [run_id]
    bufferOffset = _serializer.uint8(obj.run_id, buffer, bufferOffset);
    // Serialize message field [flag_iter_or_time]
    bufferOffset = _serializer.uint8(obj.flag_iter_or_time, buffer, bufferOffset);
    // Serialize message field [iter_or_time]
    bufferOffset = _serializer.float64(obj.iter_or_time, buffer, bufferOffset);
    // Serialize message field [tree_optimization]
    bufferOffset = _serializer.bool(obj.tree_optimization, buffer, bufferOffset);
    // Serialize message field [informed_sampling]
    bufferOffset = _serializer.bool(obj.informed_sampling, buffer, bufferOffset);
    // Serialize message field [show_tree]
    bufferOffset = _serializer.bool(obj.show_tree, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type run_planner_map_goal_poseRequest
    let len;
    let data = new run_planner_map_goal_poseRequest(null);
    // Deserialize message field [goal_pose]
    data.goal_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [constraint_vec_goal_pose]
    data.constraint_vec_goal_pose = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [target_coordinate_dev]
    data.target_coordinate_dev = array2d_double.deserialize(buffer, bufferOffset);
    // Deserialize message field [planner_type]
    data.planner_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [run_id]
    data.run_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flag_iter_or_time]
    data.flag_iter_or_time = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [iter_or_time]
    data.iter_or_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tree_optimization]
    data.tree_optimization = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [informed_sampling]
    data.informed_sampling = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [show_tree]
    data.show_tree = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.constraint_vec_goal_pose.length;
    length += array2d_double.getMessageSize(object.target_coordinate_dev);
    length += _getByteLength(object.planner_type);
    return length + 77;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner_msgs/run_planner_map_goal_poseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05048266450bef03befd3545fe82153d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #Goal EE pose
    geometry_msgs/Pose goal_pose
    
    #Constraint EE goal coordinates
    int32[] constraint_vec_goal_pose
    
    #Permitted displacement of EE w.r.t target frame
    array2d_double target_coordinate_dev
    
    #Type of planner (uni or bidirectional)
    string planner_type
    
    #ID of the planner run
    uint8 run_id
    
    #Flag indicating whether maximum number of iterations of runtime is used
    uint8 flag_iter_or_time
    
    #Max. number of iterations / or max. runtime 
    float64 iter_or_time
    
    #Flag indicating whether tree optimization is used
    bool tree_optimization
    
    #Flag indicating whether informed sampling is used
    bool informed_sampling
    
    #Flag to visualize planning process
    bool show_tree
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: planner_msgs/array2d_double
    array1d_double[] array2d_double
    ================================================================================
    MSG: planner_msgs/array1d_double
    float64[] array1d_double
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new run_planner_map_goal_poseRequest(null);
    if (msg.goal_pose !== undefined) {
      resolved.goal_pose = geometry_msgs.msg.Pose.Resolve(msg.goal_pose)
    }
    else {
      resolved.goal_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.constraint_vec_goal_pose !== undefined) {
      resolved.constraint_vec_goal_pose = msg.constraint_vec_goal_pose;
    }
    else {
      resolved.constraint_vec_goal_pose = []
    }

    if (msg.target_coordinate_dev !== undefined) {
      resolved.target_coordinate_dev = array2d_double.Resolve(msg.target_coordinate_dev)
    }
    else {
      resolved.target_coordinate_dev = new array2d_double()
    }

    if (msg.planner_type !== undefined) {
      resolved.planner_type = msg.planner_type;
    }
    else {
      resolved.planner_type = ''
    }

    if (msg.run_id !== undefined) {
      resolved.run_id = msg.run_id;
    }
    else {
      resolved.run_id = 0
    }

    if (msg.flag_iter_or_time !== undefined) {
      resolved.flag_iter_or_time = msg.flag_iter_or_time;
    }
    else {
      resolved.flag_iter_or_time = 0
    }

    if (msg.iter_or_time !== undefined) {
      resolved.iter_or_time = msg.iter_or_time;
    }
    else {
      resolved.iter_or_time = 0.0
    }

    if (msg.tree_optimization !== undefined) {
      resolved.tree_optimization = msg.tree_optimization;
    }
    else {
      resolved.tree_optimization = false
    }

    if (msg.informed_sampling !== undefined) {
      resolved.informed_sampling = msg.informed_sampling;
    }
    else {
      resolved.informed_sampling = false
    }

    if (msg.show_tree !== undefined) {
      resolved.show_tree = msg.show_tree;
    }
    else {
      resolved.show_tree = false
    }

    return resolved;
    }
};

class run_planner_map_goal_poseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_trajectory = null;
      this.ee_trajectory = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_trajectory')) {
        this.joint_trajectory = initObj.joint_trajectory
      }
      else {
        this.joint_trajectory = new array2d_double();
      }
      if (initObj.hasOwnProperty('ee_trajectory')) {
        this.ee_trajectory = initObj.ee_trajectory
      }
      else {
        this.ee_trajectory = new array2d_double();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type run_planner_map_goal_poseResponse
    // Serialize message field [joint_trajectory]
    bufferOffset = array2d_double.serialize(obj.joint_trajectory, buffer, bufferOffset);
    // Serialize message field [ee_trajectory]
    bufferOffset = array2d_double.serialize(obj.ee_trajectory, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type run_planner_map_goal_poseResponse
    let len;
    let data = new run_planner_map_goal_poseResponse(null);
    // Deserialize message field [joint_trajectory]
    data.joint_trajectory = array2d_double.deserialize(buffer, bufferOffset);
    // Deserialize message field [ee_trajectory]
    data.ee_trajectory = array2d_double.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += array2d_double.getMessageSize(object.joint_trajectory);
    length += array2d_double.getMessageSize(object.ee_trajectory);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner_msgs/run_planner_map_goal_poseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb34f92ebddcd3e658fb29e6f20a0171';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #Planned joint trajectory
    array2d_double joint_trajectory
    
    #Planned endeffector trajectory
    array2d_double ee_trajectory
    
    #Planning result
    bool success
    
    ================================================================================
    MSG: planner_msgs/array2d_double
    array1d_double[] array2d_double
    ================================================================================
    MSG: planner_msgs/array1d_double
    float64[] array1d_double
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new run_planner_map_goal_poseResponse(null);
    if (msg.joint_trajectory !== undefined) {
      resolved.joint_trajectory = array2d_double.Resolve(msg.joint_trajectory)
    }
    else {
      resolved.joint_trajectory = new array2d_double()
    }

    if (msg.ee_trajectory !== undefined) {
      resolved.ee_trajectory = array2d_double.Resolve(msg.ee_trajectory)
    }
    else {
      resolved.ee_trajectory = new array2d_double()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: run_planner_map_goal_poseRequest,
  Response: run_planner_map_goal_poseResponse,
  md5sum() { return '806516a836da7fc446686544dee493ea'; },
  datatype() { return 'planner_msgs/run_planner_map_goal_pose'; }
};
