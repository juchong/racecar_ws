// Auto-generated. Do not edit!

// (in-package frc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CubeState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clamp = null;
      this.intake_high = null;
      this.intake_low = null;
      this.has_cube = null;
    }
    else {
      if (initObj.hasOwnProperty('clamp')) {
        this.clamp = initObj.clamp
      }
      else {
        this.clamp = false;
      }
      if (initObj.hasOwnProperty('intake_high')) {
        this.intake_high = initObj.intake_high
      }
      else {
        this.intake_high = false;
      }
      if (initObj.hasOwnProperty('intake_low')) {
        this.intake_low = initObj.intake_low
      }
      else {
        this.intake_low = false;
      }
      if (initObj.hasOwnProperty('has_cube')) {
        this.has_cube = initObj.has_cube
      }
      else {
        this.has_cube = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CubeState
    // Serialize message field [clamp]
    bufferOffset = _serializer.bool(obj.clamp, buffer, bufferOffset);
    // Serialize message field [intake_high]
    bufferOffset = _serializer.bool(obj.intake_high, buffer, bufferOffset);
    // Serialize message field [intake_low]
    bufferOffset = _serializer.bool(obj.intake_low, buffer, bufferOffset);
    // Serialize message field [has_cube]
    bufferOffset = _serializer.bool(obj.has_cube, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CubeState
    let len;
    let data = new CubeState(null);
    // Deserialize message field [clamp]
    data.clamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [intake_high]
    data.intake_high = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [intake_low]
    data.intake_low = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [has_cube]
    data.has_cube = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frc_msgs/CubeState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42388bfc6bfe50e21deb636904eb309b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool clamp
    bool intake_high
    bool intake_low
    bool has_cube
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CubeState(null);
    if (msg.clamp !== undefined) {
      resolved.clamp = msg.clamp;
    }
    else {
      resolved.clamp = false
    }

    if (msg.intake_high !== undefined) {
      resolved.intake_high = msg.intake_high;
    }
    else {
      resolved.intake_high = false
    }

    if (msg.intake_low !== undefined) {
      resolved.intake_low = msg.intake_low;
    }
    else {
      resolved.intake_low = false
    }

    if (msg.has_cube !== undefined) {
      resolved.has_cube = msg.has_cube;
    }
    else {
      resolved.has_cube = false
    }

    return resolved;
    }
};

module.exports = CubeState;
