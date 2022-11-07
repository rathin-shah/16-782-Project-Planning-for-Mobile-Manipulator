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

//-----------------------------------------------------------


//-----------------------------------------------------------

class generate_start_goal_configRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_ee_pose = null;
      this.constraint_vec_start_pose = null;
      this.goal_ee_pose = null;
      this.constraint_vec_goal_pose = null;
      this.target_coordinate_dev = null;
      this.show_motion = null;
    }
    else {
      if (initObj.hasOwnProperty('start_ee_pose')) {
        this.start_ee_pose = initObj.start_ee_pose
      }
      else {
        this.start_ee_pose = [];
      }
      if (initObj.hasOwnProperty('constraint_vec_start_pose')) {
        this.constraint_vec_start_pose = initObj.constraint_vec_start_pose
      }
      else {
        this.constraint_vec_start_pose = [];
      }
      if (initObj.hasOwnProperty('goal_ee_pose')) {
        this.goal_ee_pose = initObj.goal_ee_pose
      }
      else {
        this.goal_ee_pose = [];
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
      if (initObj.hasOwnProperty('show_motion')) {
        this.show_motion = initObj.show_motion
      }
      else {
        this.show_motion = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type generate_start_goal_configRequest
    // Serialize message field [start_ee_pose]
    bufferOffset = _arraySerializer.float64(obj.start_ee_pose, buffer, bufferOffset, null);
    // Serialize message field [constraint_vec_start_pose]
    bufferOffset = _arraySerializer.int32(obj.constraint_vec_start_pose, buffer, bufferOffset, null);
    // Serialize message field [goal_ee_pose]
    bufferOffset = _arraySerializer.float64(obj.goal_ee_pose, buffer, bufferOffset, null);
    // Serialize message field [constraint_vec_goal_pose]
    bufferOffset = _arraySerializer.int32(obj.constraint_vec_goal_pose, buffer, bufferOffset, null);
    // Serialize message field [target_coordinate_dev]
    bufferOffset = array2d_double.serialize(obj.target_coordinate_dev, buffer, bufferOffset);
    // Serialize message field [show_motion]
    bufferOffset = _serializer.bool(obj.show_motion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type generate_start_goal_configRequest
    let len;
    let data = new generate_start_goal_configRequest(null);
    // Deserialize message field [start_ee_pose]
    data.start_ee_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [constraint_vec_start_pose]
    data.constraint_vec_start_pose = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [goal_ee_pose]
    data.goal_ee_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [constraint_vec_goal_pose]
    data.constraint_vec_goal_pose = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [target_coordinate_dev]
    data.target_coordinate_dev = array2d_double.deserialize(buffer, bufferOffset);
    // Deserialize message field [show_motion]
    data.show_motion = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.start_ee_pose.length;
    length += 4 * object.constraint_vec_start_pose.length;
    length += 8 * object.goal_ee_pose.length;
    length += 4 * object.constraint_vec_goal_pose.length;
    length += array2d_double.getMessageSize(object.target_coordinate_dev);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner_msgs/generate_start_goal_configRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79a916826efddd8cc7004329adcb7230';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #Start EE pose
    float64[] start_ee_pose
    int32[] constraint_vec_start_pose
    
    #Goal EE pose
    float64[] goal_ee_pose
    int32[] constraint_vec_goal_pose
    
    #Permitted displacement of EE w.r.t target frame
    array2d_double target_coordinate_dev
    
    #Flag to show config generation in rviz
    bool show_motion
    
    
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
    const resolved = new generate_start_goal_configRequest(null);
    if (msg.start_ee_pose !== undefined) {
      resolved.start_ee_pose = msg.start_ee_pose;
    }
    else {
      resolved.start_ee_pose = []
    }

    if (msg.constraint_vec_start_pose !== undefined) {
      resolved.constraint_vec_start_pose = msg.constraint_vec_start_pose;
    }
    else {
      resolved.constraint_vec_start_pose = []
    }

    if (msg.goal_ee_pose !== undefined) {
      resolved.goal_ee_pose = msg.goal_ee_pose;
    }
    else {
      resolved.goal_ee_pose = []
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

    if (msg.show_motion !== undefined) {
      resolved.show_motion = msg.show_motion;
    }
    else {
      resolved.show_motion = false
    }

    return resolved;
    }
};

class generate_start_goal_configResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_conf = null;
      this.goal_conf = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('start_conf')) {
        this.start_conf = initObj.start_conf
      }
      else {
        this.start_conf = [];
      }
      if (initObj.hasOwnProperty('goal_conf')) {
        this.goal_conf = initObj.goal_conf
      }
      else {
        this.goal_conf = [];
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
    // Serializes a message object of type generate_start_goal_configResponse
    // Serialize message field [start_conf]
    bufferOffset = _arraySerializer.float64(obj.start_conf, buffer, bufferOffset, null);
    // Serialize message field [goal_conf]
    bufferOffset = _arraySerializer.float64(obj.goal_conf, buffer, bufferOffset, null);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type generate_start_goal_configResponse
    let len;
    let data = new generate_start_goal_configResponse(null);
    // Deserialize message field [start_conf]
    data.start_conf = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [goal_conf]
    data.goal_conf = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.start_conf.length;
    length += 8 * object.goal_conf.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner_msgs/generate_start_goal_configResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b054f150db038bf449f81cab30f2cf52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #Start and Goal Config
    float64[] start_conf
    float64[] goal_conf
    
    #Result of Start and Goal Config Generation
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new generate_start_goal_configResponse(null);
    if (msg.start_conf !== undefined) {
      resolved.start_conf = msg.start_conf;
    }
    else {
      resolved.start_conf = []
    }

    if (msg.goal_conf !== undefined) {
      resolved.goal_conf = msg.goal_conf;
    }
    else {
      resolved.goal_conf = []
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
  Request: generate_start_goal_configRequest,
  Response: generate_start_goal_configResponse,
  md5sum() { return '016b486bf23e79f4112223da75806f26'; },
  datatype() { return 'planner_msgs/generate_start_goal_config'; }
};
