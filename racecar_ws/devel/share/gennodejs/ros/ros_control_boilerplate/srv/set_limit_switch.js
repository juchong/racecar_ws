// Auto-generated. Do not edit!

// (in-package ros_control_boilerplate.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class set_limit_switchRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_joint_id = null;
      this.forward = null;
      this.reverse = null;
    }
    else {
      if (initObj.hasOwnProperty('target_joint_id')) {
        this.target_joint_id = initObj.target_joint_id
      }
      else {
        this.target_joint_id = 0;
      }
      if (initObj.hasOwnProperty('forward')) {
        this.forward = initObj.forward
      }
      else {
        this.forward = false;
      }
      if (initObj.hasOwnProperty('reverse')) {
        this.reverse = initObj.reverse
      }
      else {
        this.reverse = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_limit_switchRequest
    // Serialize message field [target_joint_id]
    bufferOffset = _serializer.uint8(obj.target_joint_id, buffer, bufferOffset);
    // Serialize message field [forward]
    bufferOffset = _serializer.bool(obj.forward, buffer, bufferOffset);
    // Serialize message field [reverse]
    bufferOffset = _serializer.bool(obj.reverse, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_limit_switchRequest
    let len;
    let data = new set_limit_switchRequest(null);
    // Deserialize message field [target_joint_id]
    data.target_joint_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [forward]
    data.forward = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reverse]
    data.reverse = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_control_boilerplate/set_limit_switchRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98a89b0b94ee528e0c04d8b0f6aa13dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 target_joint_id
    bool forward
    bool reverse
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_limit_switchRequest(null);
    if (msg.target_joint_id !== undefined) {
      resolved.target_joint_id = msg.target_joint_id;
    }
    else {
      resolved.target_joint_id = 0
    }

    if (msg.forward !== undefined) {
      resolved.forward = msg.forward;
    }
    else {
      resolved.forward = false
    }

    if (msg.reverse !== undefined) {
      resolved.reverse = msg.reverse;
    }
    else {
      resolved.reverse = false
    }

    return resolved;
    }
};

class set_limit_switchResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_limit_switchResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_limit_switchResponse
    let len;
    let data = new set_limit_switchResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_control_boilerplate/set_limit_switchResponse';
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
    const resolved = new set_limit_switchResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: set_limit_switchRequest,
  Response: set_limit_switchResponse,
  md5sum() { return '98a89b0b94ee528e0c04d8b0f6aa13dd'; },
  datatype() { return 'ros_control_boilerplate/set_limit_switch'; }
};
