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

class set_edge_costsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.edge_costs = null;
    }
    else {
      if (initObj.hasOwnProperty('edge_costs')) {
        this.edge_costs = initObj.edge_costs
      }
      else {
        this.edge_costs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_edge_costsRequest
    // Serialize message field [edge_costs]
    bufferOffset = _arraySerializer.float64(obj.edge_costs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_edge_costsRequest
    let len;
    let data = new set_edge_costsRequest(null);
    // Deserialize message field [edge_costs]
    data.edge_costs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.edge_costs.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner_msgs/set_edge_costsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7917a1c55c4fd645cb5c880309755be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Edge costs for c-space coordinates
    float64[] edge_costs
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_edge_costsRequest(null);
    if (msg.edge_costs !== undefined) {
      resolved.edge_costs = msg.edge_costs;
    }
    else {
      resolved.edge_costs = []
    }

    return resolved;
    }
};

class set_edge_costsResponse {
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
    // Serializes a message object of type set_edge_costsResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_edge_costsResponse
    let len;
    let data = new set_edge_costsResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'planner_msgs/set_edge_costsResponse';
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
    const resolved = new set_edge_costsResponse(null);
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
  Request: set_edge_costsRequest,
  Response: set_edge_costsResponse,
  md5sum() { return '3cebc05ddbc84f67732803850c09e6e4'; },
  datatype() { return 'planner_msgs/set_edge_costs'; }
};
