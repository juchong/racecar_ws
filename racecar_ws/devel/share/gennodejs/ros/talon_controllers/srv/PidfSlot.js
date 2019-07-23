// Auto-generated. Do not edit!

// (in-package talon_controllers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PidfSlotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pidf_slot = null;
    }
    else {
      if (initObj.hasOwnProperty('pidf_slot')) {
        this.pidf_slot = initObj.pidf_slot
      }
      else {
        this.pidf_slot = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PidfSlotRequest
    // Serialize message field [pidf_slot]
    bufferOffset = _serializer.int32(obj.pidf_slot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PidfSlotRequest
    let len;
    let data = new PidfSlotRequest(null);
    // Deserialize message field [pidf_slot]
    data.pidf_slot = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'talon_controllers/PidfSlotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '699888169b1a41d28b65c42d5f593b44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 pidf_slot
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PidfSlotRequest(null);
    if (msg.pidf_slot !== undefined) {
      resolved.pidf_slot = msg.pidf_slot;
    }
    else {
      resolved.pidf_slot = 0
    }

    return resolved;
    }
};

class PidfSlotResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PidfSlotResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PidfSlotResponse
    let len;
    let data = new PidfSlotResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'talon_controllers/PidfSlotResponse';
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
    const resolved = new PidfSlotResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: PidfSlotRequest,
  Response: PidfSlotResponse,
  md5sum() { return '699888169b1a41d28b65c42d5f593b44'; },
  datatype() { return 'talon_controllers/PidfSlot'; }
};
