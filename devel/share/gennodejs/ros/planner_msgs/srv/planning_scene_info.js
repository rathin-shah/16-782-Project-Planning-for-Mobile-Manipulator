// Auto-generated. Do not edit!

// (in-package planner_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class planning_scene_infoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.env_size_x = null;
      this.env_size_y = null;
      this.show_environment_borders = null;
    }
    else {
      if (initObj.hasOwnProperty('env_size_x')) {
        this.env_size_x = initObj.env_size_x
      }
      else {
        this.env_size_x = [];
      }
      if (initObj.hasOwnProperty('env_size_y')) {
        this.env_size_y = initObj.env_size_y
      }
      else {
        this.env_size_y = [];
      }
      if (initObj.hasOwnProperty('show_environment_borders')) {
        this.show_environment_borders = initObj.show_environment_borders
      }
      else {
        this.show_environment_borders = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type planning_scene_infoRequest
    // Serialize message field [env_size_x]
    bufferOffset = _arraySerializer.float64(obj.env_size_x, buffer, bufferOffset, null);
    // Serialize message field [env_size_y]
    bufferOffset = _arraySerializer.float64(obj.env_size_y, buffer, bufferOffset, null);
    // Serialize message field [show_environment_borders]
    bufferOffset = _serializer.bool(obj.show_environment_borders, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type planning_scene_infoRequest
    let len;
    let data = new planning_scene_infoRequest(null);
    // Deserialize message field [env_size_x]
    data.env_size_x = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [env_size_y]
    data.env_size_y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [show_environment_borders]
    data.show_environment_borders = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.env_size_x.length;
    length += 8 * object.env_size_y.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner_msgs/planning_scene_infoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc137ffdcb050951f620d0d4a6e80962';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] env_size_x
    float64[] env_size_y
    bool show_environment_borders
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new planning_scene_infoRequest(null);
    if (msg.env_size_x !== undefined) {
      resolved.env_size_x = msg.env_size_x;
    }
    else {
      resolved.env_size_x = []
    }

    if (msg.env_size_y !== undefined) {
      resolved.env_size_y = msg.env_size_y;
    }
    else {
      resolved.env_size_y = []
    }

    if (msg.show_environment_borders !== undefined) {
      resolved.show_environment_borders = msg.show_environment_borders;
    }
    else {
      resolved.show_environment_borders = false
    }

    return resolved;
    }
};

class planning_scene_infoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type planning_scene_infoResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type planning_scene_infoResponse
    let len;
    let data = new planning_scene_infoResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner_msgs/planning_scene_infoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f6da3883749771fac40d6deb24a8c02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool ok
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new planning_scene_infoResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: planning_scene_infoRequest,
  Response: planning_scene_infoResponse,
  md5sum() { return '0f90a5fd7094d6c5f8a02858a00e3072'; },
  datatype() { return 'planner_msgs/planning_scene_info'; }
};
