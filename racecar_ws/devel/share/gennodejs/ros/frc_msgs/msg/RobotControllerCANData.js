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

class RobotControllerCANData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.percentBusUtilization = null;
      this.busOffCount = null;
      this.txFullCount = null;
      this.receiveErrorCount = null;
      this.transmitErrorCount = null;
    }
    else {
      if (initObj.hasOwnProperty('percentBusUtilization')) {
        this.percentBusUtilization = initObj.percentBusUtilization
      }
      else {
        this.percentBusUtilization = 0.0;
      }
      if (initObj.hasOwnProperty('busOffCount')) {
        this.busOffCount = initObj.busOffCount
      }
      else {
        this.busOffCount = 0;
      }
      if (initObj.hasOwnProperty('txFullCount')) {
        this.txFullCount = initObj.txFullCount
      }
      else {
        this.txFullCount = 0;
      }
      if (initObj.hasOwnProperty('receiveErrorCount')) {
        this.receiveErrorCount = initObj.receiveErrorCount
      }
      else {
        this.receiveErrorCount = 0;
      }
      if (initObj.hasOwnProperty('transmitErrorCount')) {
        this.transmitErrorCount = initObj.transmitErrorCount
      }
      else {
        this.transmitErrorCount = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotControllerCANData
    // Serialize message field [percentBusUtilization]
    bufferOffset = _serializer.float32(obj.percentBusUtilization, buffer, bufferOffset);
    // Serialize message field [busOffCount]
    bufferOffset = _serializer.int32(obj.busOffCount, buffer, bufferOffset);
    // Serialize message field [txFullCount]
    bufferOffset = _serializer.int32(obj.txFullCount, buffer, bufferOffset);
    // Serialize message field [receiveErrorCount]
    bufferOffset = _serializer.int32(obj.receiveErrorCount, buffer, bufferOffset);
    // Serialize message field [transmitErrorCount]
    bufferOffset = _serializer.int32(obj.transmitErrorCount, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotControllerCANData
    let len;
    let data = new RobotControllerCANData(null);
    // Deserialize message field [percentBusUtilization]
    data.percentBusUtilization = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [busOffCount]
    data.busOffCount = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [txFullCount]
    data.txFullCount = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [receiveErrorCount]
    data.receiveErrorCount = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [transmitErrorCount]
    data.transmitErrorCount = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frc_msgs/RobotControllerCANData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14b84f7dc25f03687604ab1fd7c46f75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 percentBusUtilization
    int32 busOffCount
    int32 txFullCount
    int32 receiveErrorCount
    int32 transmitErrorCount
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotControllerCANData(null);
    if (msg.percentBusUtilization !== undefined) {
      resolved.percentBusUtilization = msg.percentBusUtilization;
    }
    else {
      resolved.percentBusUtilization = 0.0
    }

    if (msg.busOffCount !== undefined) {
      resolved.busOffCount = msg.busOffCount;
    }
    else {
      resolved.busOffCount = 0
    }

    if (msg.txFullCount !== undefined) {
      resolved.txFullCount = msg.txFullCount;
    }
    else {
      resolved.txFullCount = 0
    }

    if (msg.receiveErrorCount !== undefined) {
      resolved.receiveErrorCount = msg.receiveErrorCount;
    }
    else {
      resolved.receiveErrorCount = 0
    }

    if (msg.transmitErrorCount !== undefined) {
      resolved.transmitErrorCount = msg.transmitErrorCount;
    }
    else {
      resolved.transmitErrorCount = 0
    }

    return resolved;
    }
};

module.exports = RobotControllerCANData;
