// Auto-generated. Do not edit!

// (in-package frc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotControllerCANData = require('./RobotControllerCANData.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RobotControllerData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fpgaVersion = null;
      this.fpgaRevision = null;
      this.fpgaTime = null;
      this.userButton = null;
      this.isSysActive = null;
      this.isBrownedOut = null;
      this.inputVoltage = null;
      this.inputCurrent = null;
      this.voltage3V3 = null;
      this.current3V3 = null;
      this.enabled3V3 = null;
      this.faultCount3V3 = null;
      this.voltage5V = null;
      this.current5V = null;
      this.enabled5V = null;
      this.faultCount5V = null;
      this.voltage6V = null;
      this.current6V = null;
      this.enabled6V = null;
      this.faultCount6V = null;
      this.canData = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fpgaVersion')) {
        this.fpgaVersion = initObj.fpgaVersion
      }
      else {
        this.fpgaVersion = 0;
      }
      if (initObj.hasOwnProperty('fpgaRevision')) {
        this.fpgaRevision = initObj.fpgaRevision
      }
      else {
        this.fpgaRevision = 0;
      }
      if (initObj.hasOwnProperty('fpgaTime')) {
        this.fpgaTime = initObj.fpgaTime
      }
      else {
        this.fpgaTime = 0;
      }
      if (initObj.hasOwnProperty('userButton')) {
        this.userButton = initObj.userButton
      }
      else {
        this.userButton = false;
      }
      if (initObj.hasOwnProperty('isSysActive')) {
        this.isSysActive = initObj.isSysActive
      }
      else {
        this.isSysActive = false;
      }
      if (initObj.hasOwnProperty('isBrownedOut')) {
        this.isBrownedOut = initObj.isBrownedOut
      }
      else {
        this.isBrownedOut = false;
      }
      if (initObj.hasOwnProperty('inputVoltage')) {
        this.inputVoltage = initObj.inputVoltage
      }
      else {
        this.inputVoltage = 0.0;
      }
      if (initObj.hasOwnProperty('inputCurrent')) {
        this.inputCurrent = initObj.inputCurrent
      }
      else {
        this.inputCurrent = 0.0;
      }
      if (initObj.hasOwnProperty('voltage3V3')) {
        this.voltage3V3 = initObj.voltage3V3
      }
      else {
        this.voltage3V3 = 0.0;
      }
      if (initObj.hasOwnProperty('current3V3')) {
        this.current3V3 = initObj.current3V3
      }
      else {
        this.current3V3 = 0.0;
      }
      if (initObj.hasOwnProperty('enabled3V3')) {
        this.enabled3V3 = initObj.enabled3V3
      }
      else {
        this.enabled3V3 = false;
      }
      if (initObj.hasOwnProperty('faultCount3V3')) {
        this.faultCount3V3 = initObj.faultCount3V3
      }
      else {
        this.faultCount3V3 = 0;
      }
      if (initObj.hasOwnProperty('voltage5V')) {
        this.voltage5V = initObj.voltage5V
      }
      else {
        this.voltage5V = 0.0;
      }
      if (initObj.hasOwnProperty('current5V')) {
        this.current5V = initObj.current5V
      }
      else {
        this.current5V = 0.0;
      }
      if (initObj.hasOwnProperty('enabled5V')) {
        this.enabled5V = initObj.enabled5V
      }
      else {
        this.enabled5V = false;
      }
      if (initObj.hasOwnProperty('faultCount5V')) {
        this.faultCount5V = initObj.faultCount5V
      }
      else {
        this.faultCount5V = 0;
      }
      if (initObj.hasOwnProperty('voltage6V')) {
        this.voltage6V = initObj.voltage6V
      }
      else {
        this.voltage6V = 0.0;
      }
      if (initObj.hasOwnProperty('current6V')) {
        this.current6V = initObj.current6V
      }
      else {
        this.current6V = 0.0;
      }
      if (initObj.hasOwnProperty('enabled6V')) {
        this.enabled6V = initObj.enabled6V
      }
      else {
        this.enabled6V = false;
      }
      if (initObj.hasOwnProperty('faultCount6V')) {
        this.faultCount6V = initObj.faultCount6V
      }
      else {
        this.faultCount6V = 0;
      }
      if (initObj.hasOwnProperty('canData')) {
        this.canData = initObj.canData
      }
      else {
        this.canData = new RobotControllerCANData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotControllerData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fpgaVersion]
    bufferOffset = _serializer.int32(obj.fpgaVersion, buffer, bufferOffset);
    // Serialize message field [fpgaRevision]
    bufferOffset = _serializer.int64(obj.fpgaRevision, buffer, bufferOffset);
    // Serialize message field [fpgaTime]
    bufferOffset = _serializer.uint64(obj.fpgaTime, buffer, bufferOffset);
    // Serialize message field [userButton]
    bufferOffset = _serializer.bool(obj.userButton, buffer, bufferOffset);
    // Serialize message field [isSysActive]
    bufferOffset = _serializer.bool(obj.isSysActive, buffer, bufferOffset);
    // Serialize message field [isBrownedOut]
    bufferOffset = _serializer.bool(obj.isBrownedOut, buffer, bufferOffset);
    // Serialize message field [inputVoltage]
    bufferOffset = _serializer.float64(obj.inputVoltage, buffer, bufferOffset);
    // Serialize message field [inputCurrent]
    bufferOffset = _serializer.float64(obj.inputCurrent, buffer, bufferOffset);
    // Serialize message field [voltage3V3]
    bufferOffset = _serializer.float64(obj.voltage3V3, buffer, bufferOffset);
    // Serialize message field [current3V3]
    bufferOffset = _serializer.float64(obj.current3V3, buffer, bufferOffset);
    // Serialize message field [enabled3V3]
    bufferOffset = _serializer.bool(obj.enabled3V3, buffer, bufferOffset);
    // Serialize message field [faultCount3V3]
    bufferOffset = _serializer.int32(obj.faultCount3V3, buffer, bufferOffset);
    // Serialize message field [voltage5V]
    bufferOffset = _serializer.float64(obj.voltage5V, buffer, bufferOffset);
    // Serialize message field [current5V]
    bufferOffset = _serializer.float64(obj.current5V, buffer, bufferOffset);
    // Serialize message field [enabled5V]
    bufferOffset = _serializer.bool(obj.enabled5V, buffer, bufferOffset);
    // Serialize message field [faultCount5V]
    bufferOffset = _serializer.int32(obj.faultCount5V, buffer, bufferOffset);
    // Serialize message field [voltage6V]
    bufferOffset = _serializer.float64(obj.voltage6V, buffer, bufferOffset);
    // Serialize message field [current6V]
    bufferOffset = _serializer.float64(obj.current6V, buffer, bufferOffset);
    // Serialize message field [enabled6V]
    bufferOffset = _serializer.bool(obj.enabled6V, buffer, bufferOffset);
    // Serialize message field [faultCount6V]
    bufferOffset = _serializer.int32(obj.faultCount6V, buffer, bufferOffset);
    // Serialize message field [canData]
    bufferOffset = RobotControllerCANData.serialize(obj.canData, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotControllerData
    let len;
    let data = new RobotControllerData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fpgaVersion]
    data.fpgaVersion = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fpgaRevision]
    data.fpgaRevision = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [fpgaTime]
    data.fpgaTime = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [userButton]
    data.userButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isSysActive]
    data.isSysActive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isBrownedOut]
    data.isBrownedOut = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [inputVoltage]
    data.inputVoltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [inputCurrent]
    data.inputCurrent = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [voltage3V3]
    data.voltage3V3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current3V3]
    data.current3V3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [enabled3V3]
    data.enabled3V3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [faultCount3V3]
    data.faultCount3V3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [voltage5V]
    data.voltage5V = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current5V]
    data.current5V = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [enabled5V]
    data.enabled5V = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [faultCount5V]
    data.faultCount5V = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [voltage6V]
    data.voltage6V = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current6V]
    data.current6V = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [enabled6V]
    data.enabled6V = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [faultCount6V]
    data.faultCount6V = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [canData]
    data.canData = RobotControllerCANData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 122;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frc_msgs/RobotControllerData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd038fd2805831a80b16311cd50a4a1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int32 fpgaVersion
    int64 fpgaRevision
    uint64 fpgaTime
    bool userButton
    bool isSysActive
    bool isBrownedOut
    float64 inputVoltage
    float64 inputCurrent
    float64 voltage3V3
    float64 current3V3
    bool enabled3V3
    int32 faultCount3V3
    float64 voltage5V
    float64 current5V
    bool enabled5V
    int32 faultCount5V
    float64 voltage6V
    float64 current6V
    bool enabled6V
    int32 faultCount6V
    RobotControllerCANData canData
    
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
    
    ================================================================================
    MSG: frc_msgs/RobotControllerCANData
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
    const resolved = new RobotControllerData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fpgaVersion !== undefined) {
      resolved.fpgaVersion = msg.fpgaVersion;
    }
    else {
      resolved.fpgaVersion = 0
    }

    if (msg.fpgaRevision !== undefined) {
      resolved.fpgaRevision = msg.fpgaRevision;
    }
    else {
      resolved.fpgaRevision = 0
    }

    if (msg.fpgaTime !== undefined) {
      resolved.fpgaTime = msg.fpgaTime;
    }
    else {
      resolved.fpgaTime = 0
    }

    if (msg.userButton !== undefined) {
      resolved.userButton = msg.userButton;
    }
    else {
      resolved.userButton = false
    }

    if (msg.isSysActive !== undefined) {
      resolved.isSysActive = msg.isSysActive;
    }
    else {
      resolved.isSysActive = false
    }

    if (msg.isBrownedOut !== undefined) {
      resolved.isBrownedOut = msg.isBrownedOut;
    }
    else {
      resolved.isBrownedOut = false
    }

    if (msg.inputVoltage !== undefined) {
      resolved.inputVoltage = msg.inputVoltage;
    }
    else {
      resolved.inputVoltage = 0.0
    }

    if (msg.inputCurrent !== undefined) {
      resolved.inputCurrent = msg.inputCurrent;
    }
    else {
      resolved.inputCurrent = 0.0
    }

    if (msg.voltage3V3 !== undefined) {
      resolved.voltage3V3 = msg.voltage3V3;
    }
    else {
      resolved.voltage3V3 = 0.0
    }

    if (msg.current3V3 !== undefined) {
      resolved.current3V3 = msg.current3V3;
    }
    else {
      resolved.current3V3 = 0.0
    }

    if (msg.enabled3V3 !== undefined) {
      resolved.enabled3V3 = msg.enabled3V3;
    }
    else {
      resolved.enabled3V3 = false
    }

    if (msg.faultCount3V3 !== undefined) {
      resolved.faultCount3V3 = msg.faultCount3V3;
    }
    else {
      resolved.faultCount3V3 = 0
    }

    if (msg.voltage5V !== undefined) {
      resolved.voltage5V = msg.voltage5V;
    }
    else {
      resolved.voltage5V = 0.0
    }

    if (msg.current5V !== undefined) {
      resolved.current5V = msg.current5V;
    }
    else {
      resolved.current5V = 0.0
    }

    if (msg.enabled5V !== undefined) {
      resolved.enabled5V = msg.enabled5V;
    }
    else {
      resolved.enabled5V = false
    }

    if (msg.faultCount5V !== undefined) {
      resolved.faultCount5V = msg.faultCount5V;
    }
    else {
      resolved.faultCount5V = 0
    }

    if (msg.voltage6V !== undefined) {
      resolved.voltage6V = msg.voltage6V;
    }
    else {
      resolved.voltage6V = 0.0
    }

    if (msg.current6V !== undefined) {
      resolved.current6V = msg.current6V;
    }
    else {
      resolved.current6V = 0.0
    }

    if (msg.enabled6V !== undefined) {
      resolved.enabled6V = msg.enabled6V;
    }
    else {
      resolved.enabled6V = false
    }

    if (msg.faultCount6V !== undefined) {
      resolved.faultCount6V = msg.faultCount6V;
    }
    else {
      resolved.faultCount6V = 0
    }

    if (msg.canData !== undefined) {
      resolved.canData = RobotControllerCANData.Resolve(msg.canData)
    }
    else {
      resolved.canData = new RobotControllerCANData()
    }

    return resolved;
    }
};

module.exports = RobotControllerData;
