// Auto-generated. Do not edit!

// (in-package planner_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class array1d_double {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.array1d_double = null;
    }
    else {
      if (initObj.hasOwnProperty('array1d_double')) {
        this.array1d_double = initObj.array1d_double
      }
      else {
        this.array1d_double = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type array1d_double
    // Serialize message field [array1d_double]
    bufferOffset = _arraySerializer.float64(obj.array1d_double, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type array1d_double
    let len;
    let data = new array1d_double(null);
    // Deserialize message field [array1d_double]
    data.array1d_double = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.array1d_double.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planner_msgs/array1d_double';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '053e2cce4d87337b8c6a7306fb74d968';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] array1d_double
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new array1d_double(null);
    if (msg.array1d_double !== undefined) {
      resolved.array1d_double = msg.array1d_double;
    }
    else {
      resolved.array1d_double = []
    }

    return resolved;
    }
};

module.exports = array1d_double;
