// Auto-generated. Do not edit!

// (in-package execution_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class execute_trajectory_rvizRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planner_type = null;
      this.run_id = null;
    }
    else {
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
        this.run_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type execute_trajectory_rvizRequest
    // Serialize message field [planner_type]
    bufferOffset = _serializer.string(obj.planner_type, buffer, bufferOffset);
    // Serialize message field [run_id]
    bufferOffset = _serializer.string(obj.run_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type execute_trajectory_rvizRequest
    let len;
    let data = new execute_trajectory_rvizRequest(null);
    // Deserialize message field [planner_type]
    data.planner_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [run_id]
    data.run_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.planner_type);
    length += _getByteLength(object.run_id);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'execution_msgs/execute_trajectory_rvizRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8dee15a0afb187fdd6875d10e9162450';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Type of planner (uni or bidirectional)
    string planner_type
    
    #ID of the planner run
    string run_id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new execute_trajectory_rvizRequest(null);
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
      resolved.run_id = ''
    }

    return resolved;
    }
};

class execute_trajectory_rvizResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.execution_success = null;
    }
    else {
      if (initObj.hasOwnProperty('execution_success')) {
        this.execution_success = initObj.execution_success
      }
      else {
        this.execution_success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type execute_trajectory_rvizResponse
    // Serialize message field [execution_success]
    bufferOffset = _serializer.bool(obj.execution_success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type execute_trajectory_rvizResponse
    let len;
    let data = new execute_trajectory_rvizResponse(null);
    // Deserialize message field [execution_success]
    data.execution_success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'execution_msgs/execute_trajectory_rvizResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fa97b8c73a5dba72b93645f87382de3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #Flag indicating whether trajectory execution has been successfull
    bool execution_success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new execute_trajectory_rvizResponse(null);
    if (msg.execution_success !== undefined) {
      resolved.execution_success = msg.execution_success;
    }
    else {
      resolved.execution_success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: execute_trajectory_rvizRequest,
  Response: execute_trajectory_rvizResponse,
  md5sum() { return '05acbdefe3087529e04386c5ff659953'; },
  datatype() { return 'execution_msgs/execute_trajectory_rviz'; }
};
