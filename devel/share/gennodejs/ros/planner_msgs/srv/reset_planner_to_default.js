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

class reset_planner_to_defaultRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type reset_planner_to_defaultRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type reset_planner_to_defaultRequest
    let len;
    let data = new reset_planner_to_defaultRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner_msgs/reset_planner_to_defaultRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new reset_planner_to_defaultRequest(null);
    return resolved;
    }
};

class reset_planner_to_defaultResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reinitialized = null;
    }
    else {
      if (initObj.hasOwnProperty('reinitialized')) {
        this.reinitialized = initObj.reinitialized
      }
      else {
        this.reinitialized = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type reset_planner_to_defaultResponse
    // Serialize message field [reinitialized]
    bufferOffset = _serializer.bool(obj.reinitialized, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type reset_planner_to_defaultResponse
    let len;
    let data = new reset_planner_to_defaultResponse(null);
    // Deserialize message field [reinitialized]
    data.reinitialized = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner_msgs/reset_planner_to_defaultResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0667a9bbb8555a2127e81724eb62d266';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool reinitialized
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new reset_planner_to_defaultResponse(null);
    if (msg.reinitialized !== undefined) {
      resolved.reinitialized = msg.reinitialized;
    }
    else {
      resolved.reinitialized = false
    }

    return resolved;
    }
};

module.exports = {
  Request: reset_planner_to_defaultRequest,
  Response: reset_planner_to_defaultResponse,
  md5sum() { return '0667a9bbb8555a2127e81724eb62d266'; },
  datatype() { return 'planner_msgs/reset_planner_to_default'; }
};
