// Auto-generated. Do not edit!

// (in-package frc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PDPData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.voltage = null;
      this.temperature = null;
      this.totalCurrent = null;
      this.totalPower = null;
      this.totalEnergy = null;
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('totalCurrent')) {
        this.totalCurrent = initObj.totalCurrent
      }
      else {
        this.totalCurrent = 0.0;
      }
      if (initObj.hasOwnProperty('totalPower')) {
        this.totalPower = initObj.totalPower
      }
      else {
        this.totalPower = 0.0;
      }
      if (initObj.hasOwnProperty('totalEnergy')) {
        this.totalEnergy = initObj.totalEnergy
      }
      else {
        this.totalEnergy = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = new Array(16).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PDPData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float64(obj.voltage, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float64(obj.temperature, buffer, bufferOffset);
    // Serialize message field [totalCurrent]
    bufferOffset = _serializer.float64(obj.totalCurrent, buffer, bufferOffset);
    // Serialize message field [totalPower]
    bufferOffset = _serializer.float64(obj.totalPower, buffer, bufferOffset);
    // Serialize message field [totalEnergy]
    bufferOffset = _serializer.float64(obj.totalEnergy, buffer, bufferOffset);
    // Check that the constant length array field [current] has the right length
    if (obj.current.length !== 16) {
      throw new Error('Unable to serialize array field current - length must be 16')
    }
    // Serialize message field [current]
    bufferOffset = _arraySerializer.float64(obj.current, buffer, bufferOffset, 16);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PDPData
    let len;
    let data = new PDPData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [totalCurrent]
    data.totalCurrent = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [totalPower]
    data.totalPower = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [totalEnergy]
    data.totalEnergy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _arrayDeserializer.float64(buffer, bufferOffset, 16)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 168;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frc_msgs/PDPData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0499c093ceea29bec4557205d989a1c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 voltage
    float64 temperature
    float64 totalCurrent
    float64 totalPower
    float64 totalEnergy
    
    float64[16] current
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PDPData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.totalCurrent !== undefined) {
      resolved.totalCurrent = msg.totalCurrent;
    }
    else {
      resolved.totalCurrent = 0.0
    }

    if (msg.totalPower !== undefined) {
      resolved.totalPower = msg.totalPower;
    }
    else {
      resolved.totalPower = 0.0
    }

    if (msg.totalEnergy !== undefined) {
      resolved.totalEnergy = msg.totalEnergy;
    }
    else {
      resolved.totalEnergy = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = new Array(16).fill(0)
    }

    return resolved;
    }
};

module.exports = PDPData;
