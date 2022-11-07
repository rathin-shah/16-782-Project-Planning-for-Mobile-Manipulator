// Auto-generated. Do not edit!

// (in-package planner_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let array1d_double = require('./array1d_double.js');

//-----------------------------------------------------------

class array2d_double {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.array2d_double = null;
    }
    else {
      if (initObj.hasOwnProperty('array2d_double')) {
        this.array2d_double = initObj.array2d_double
      }
      else {
        this.array2d_double = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type array2d_double
    // Serialize message field [array2d_double]
    // Serialize the length for message field [array2d_double]
    bufferOffset = _serializer.uint32(obj.array2d_double.length, buffer, bufferOffset);
    obj.array2d_double.forEach((val) => {
      bufferOffset = array1d_double.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type array2d_double
    let len;
    let data = new array2d_double(null);
    // Deserialize message field [array2d_double]
    // Deserialize array length for message field [array2d_double]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.array2d_double = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.array2d_double[i] = array1d_double.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.array2d_double.forEach((val) => {
      length += array1d_double.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planner_msgs/array2d_double';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0e71cb94ac024b6a7159492ec303e32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new array2d_double(null);
    if (msg.array2d_double !== undefined) {
      resolved.array2d_double = new Array(msg.array2d_double.length);
      for (let i = 0; i < resolved.array2d_double.length; ++i) {
        resolved.array2d_double[i] = array1d_double.Resolve(msg.array2d_double[i]);
      }
    }
    else {
      resolved.array2d_double = []
    }

    return resolved;
    }
};

module.exports = array2d_double;
