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

class MatchSpecificData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.eventName = null;
      this.matchType = null;
      this.matchNumber = null;
      this.replayNumber = null;
      this.matchTimeRemaining = null;
      this.allianceColor = null;
      this.driverStationLocation = null;
      this.gameSpecificData = null;
      this.Enabled = null;
      this.Disabled = null;
      this.Autonomous = null;
      this.Test = null;
      this.FMSAttached = null;
      this.DSAttached = null;
      this.OperatorControl = null;
      this.BatteryVoltage = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('eventName')) {
        this.eventName = initObj.eventName
      }
      else {
        this.eventName = '';
      }
      if (initObj.hasOwnProperty('matchType')) {
        this.matchType = initObj.matchType
      }
      else {
        this.matchType = 0;
      }
      if (initObj.hasOwnProperty('matchNumber')) {
        this.matchNumber = initObj.matchNumber
      }
      else {
        this.matchNumber = 0;
      }
      if (initObj.hasOwnProperty('replayNumber')) {
        this.replayNumber = initObj.replayNumber
      }
      else {
        this.replayNumber = 0;
      }
      if (initObj.hasOwnProperty('matchTimeRemaining')) {
        this.matchTimeRemaining = initObj.matchTimeRemaining
      }
      else {
        this.matchTimeRemaining = 0.0;
      }
      if (initObj.hasOwnProperty('allianceColor')) {
        this.allianceColor = initObj.allianceColor
      }
      else {
        this.allianceColor = 0;
      }
      if (initObj.hasOwnProperty('driverStationLocation')) {
        this.driverStationLocation = initObj.driverStationLocation
      }
      else {
        this.driverStationLocation = 0;
      }
      if (initObj.hasOwnProperty('gameSpecificData')) {
        this.gameSpecificData = initObj.gameSpecificData
      }
      else {
        this.gameSpecificData = '';
      }
      if (initObj.hasOwnProperty('Enabled')) {
        this.Enabled = initObj.Enabled
      }
      else {
        this.Enabled = false;
      }
      if (initObj.hasOwnProperty('Disabled')) {
        this.Disabled = initObj.Disabled
      }
      else {
        this.Disabled = false;
      }
      if (initObj.hasOwnProperty('Autonomous')) {
        this.Autonomous = initObj.Autonomous
      }
      else {
        this.Autonomous = false;
      }
      if (initObj.hasOwnProperty('Test')) {
        this.Test = initObj.Test
      }
      else {
        this.Test = false;
      }
      if (initObj.hasOwnProperty('FMSAttached')) {
        this.FMSAttached = initObj.FMSAttached
      }
      else {
        this.FMSAttached = false;
      }
      if (initObj.hasOwnProperty('DSAttached')) {
        this.DSAttached = initObj.DSAttached
      }
      else {
        this.DSAttached = false;
      }
      if (initObj.hasOwnProperty('OperatorControl')) {
        this.OperatorControl = initObj.OperatorControl
      }
      else {
        this.OperatorControl = false;
      }
      if (initObj.hasOwnProperty('BatteryVoltage')) {
        this.BatteryVoltage = initObj.BatteryVoltage
      }
      else {
        this.BatteryVoltage = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MatchSpecificData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [eventName]
    bufferOffset = _serializer.string(obj.eventName, buffer, bufferOffset);
    // Serialize message field [matchType]
    bufferOffset = _serializer.int8(obj.matchType, buffer, bufferOffset);
    // Serialize message field [matchNumber]
    bufferOffset = _serializer.int8(obj.matchNumber, buffer, bufferOffset);
    // Serialize message field [replayNumber]
    bufferOffset = _serializer.int8(obj.replayNumber, buffer, bufferOffset);
    // Serialize message field [matchTimeRemaining]
    bufferOffset = _serializer.float64(obj.matchTimeRemaining, buffer, bufferOffset);
    // Serialize message field [allianceColor]
    bufferOffset = _serializer.int8(obj.allianceColor, buffer, bufferOffset);
    // Serialize message field [driverStationLocation]
    bufferOffset = _serializer.int8(obj.driverStationLocation, buffer, bufferOffset);
    // Serialize message field [gameSpecificData]
    bufferOffset = _serializer.string(obj.gameSpecificData, buffer, bufferOffset);
    // Serialize message field [Enabled]
    bufferOffset = _serializer.bool(obj.Enabled, buffer, bufferOffset);
    // Serialize message field [Disabled]
    bufferOffset = _serializer.bool(obj.Disabled, buffer, bufferOffset);
    // Serialize message field [Autonomous]
    bufferOffset = _serializer.bool(obj.Autonomous, buffer, bufferOffset);
    // Serialize message field [Test]
    bufferOffset = _serializer.bool(obj.Test, buffer, bufferOffset);
    // Serialize message field [FMSAttached]
    bufferOffset = _serializer.bool(obj.FMSAttached, buffer, bufferOffset);
    // Serialize message field [DSAttached]
    bufferOffset = _serializer.bool(obj.DSAttached, buffer, bufferOffset);
    // Serialize message field [OperatorControl]
    bufferOffset = _serializer.bool(obj.OperatorControl, buffer, bufferOffset);
    // Serialize message field [BatteryVoltage]
    bufferOffset = _serializer.float64(obj.BatteryVoltage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MatchSpecificData
    let len;
    let data = new MatchSpecificData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [eventName]
    data.eventName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [matchType]
    data.matchType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [matchNumber]
    data.matchNumber = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [replayNumber]
    data.replayNumber = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [matchTimeRemaining]
    data.matchTimeRemaining = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [allianceColor]
    data.allianceColor = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [driverStationLocation]
    data.driverStationLocation = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [gameSpecificData]
    data.gameSpecificData = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Enabled]
    data.Enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Disabled]
    data.Disabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Autonomous]
    data.Autonomous = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Test]
    data.Test = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [FMSAttached]
    data.FMSAttached = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [DSAttached]
    data.DSAttached = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [OperatorControl]
    data.OperatorControl = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [BatteryVoltage]
    data.BatteryVoltage = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.eventName.length;
    length += object.gameSpecificData.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frc_msgs/MatchSpecificData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '841701141221f3ad34663801c6ab3c63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string eventName
    int8 matchType
    int8 matchNumber
    int8 replayNumber
    
    float64 matchTimeRemaining
    int8 allianceColor
    int8 driverStationLocation
    string gameSpecificData
    
    bool Enabled
    bool Disabled
    bool Autonomous
    bool Test
    bool FMSAttached
    bool DSAttached
    bool OperatorControl
    
    float64 BatteryVoltage
    
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
    const resolved = new MatchSpecificData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.eventName !== undefined) {
      resolved.eventName = msg.eventName;
    }
    else {
      resolved.eventName = ''
    }

    if (msg.matchType !== undefined) {
      resolved.matchType = msg.matchType;
    }
    else {
      resolved.matchType = 0
    }

    if (msg.matchNumber !== undefined) {
      resolved.matchNumber = msg.matchNumber;
    }
    else {
      resolved.matchNumber = 0
    }

    if (msg.replayNumber !== undefined) {
      resolved.replayNumber = msg.replayNumber;
    }
    else {
      resolved.replayNumber = 0
    }

    if (msg.matchTimeRemaining !== undefined) {
      resolved.matchTimeRemaining = msg.matchTimeRemaining;
    }
    else {
      resolved.matchTimeRemaining = 0.0
    }

    if (msg.allianceColor !== undefined) {
      resolved.allianceColor = msg.allianceColor;
    }
    else {
      resolved.allianceColor = 0
    }

    if (msg.driverStationLocation !== undefined) {
      resolved.driverStationLocation = msg.driverStationLocation;
    }
    else {
      resolved.driverStationLocation = 0
    }

    if (msg.gameSpecificData !== undefined) {
      resolved.gameSpecificData = msg.gameSpecificData;
    }
    else {
      resolved.gameSpecificData = ''
    }

    if (msg.Enabled !== undefined) {
      resolved.Enabled = msg.Enabled;
    }
    else {
      resolved.Enabled = false
    }

    if (msg.Disabled !== undefined) {
      resolved.Disabled = msg.Disabled;
    }
    else {
      resolved.Disabled = false
    }

    if (msg.Autonomous !== undefined) {
      resolved.Autonomous = msg.Autonomous;
    }
    else {
      resolved.Autonomous = false
    }

    if (msg.Test !== undefined) {
      resolved.Test = msg.Test;
    }
    else {
      resolved.Test = false
    }

    if (msg.FMSAttached !== undefined) {
      resolved.FMSAttached = msg.FMSAttached;
    }
    else {
      resolved.FMSAttached = false
    }

    if (msg.DSAttached !== undefined) {
      resolved.DSAttached = msg.DSAttached;
    }
    else {
      resolved.DSAttached = false
    }

    if (msg.OperatorControl !== undefined) {
      resolved.OperatorControl = msg.OperatorControl;
    }
    else {
      resolved.OperatorControl = false
    }

    if (msg.BatteryVoltage !== undefined) {
      resolved.BatteryVoltage = msg.BatteryVoltage;
    }
    else {
      resolved.BatteryVoltage = 0.0
    }

    return resolved;
    }
};

module.exports = MatchSpecificData;
