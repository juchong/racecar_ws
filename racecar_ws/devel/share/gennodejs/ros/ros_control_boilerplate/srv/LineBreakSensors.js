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

class LineBreakSensorsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.j = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('j')) {
        this.j = initObj.j
      }
      else {
        this.j = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineBreakSensorsRequest
    // Serialize message field [j]
    bufferOffset = _serializer.uint64(obj.j, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.bool(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineBreakSensorsRequest
    let len;
    let data = new LineBreakSensorsRequest(null);
    // Deserialize message field [j]
    data.j = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_control_boilerplate/LineBreakSensorsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0162edbbc243aaa4ac88fdc1acd8d433';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 j
    bool value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LineBreakSensorsRequest(null);
    if (msg.j !== undefined) {
      resolved.j = msg.j;
    }
    else {
      resolved.j = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = false
    }

    return resolved;
    }
};

class LineBreakSensorsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineBreakSensorsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineBreakSensorsResponse
    let len;
    let data = new LineBreakSensorsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_control_boilerplate/LineBreakSensorsResponse';
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
    const resolved = new LineBreakSensorsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: LineBreakSensorsRequest,
  Response: LineBreakSensorsResponse,
  md5sum() { return '0162edbbc243aaa4ac88fdc1acd8d433'; },
  datatype() { return 'ros_control_boilerplate/LineBreakSensors'; }
};
