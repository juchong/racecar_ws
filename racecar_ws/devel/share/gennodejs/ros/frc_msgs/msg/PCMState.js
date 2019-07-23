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

class PCMState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.pcm_id = null;
      this.enabled = null;
      this.pressure_switch = null;
      this.compressor_current = null;
      this.closed_loop_control = null;
      this.current_too_high = null;
      this.current_too_high_sticky = null;
      this.shorted = null;
      this.shorted_sticky = null;
      this.not_connected = null;
      this.not_connected_sticky = null;
      this.voltage_fault = null;
      this.voltage_sticky_fault = null;
      this.solenoid_blacklist = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('pcm_id')) {
        this.pcm_id = initObj.pcm_id
      }
      else {
        this.pcm_id = [];
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = [];
      }
      if (initObj.hasOwnProperty('pressure_switch')) {
        this.pressure_switch = initObj.pressure_switch
      }
      else {
        this.pressure_switch = [];
      }
      if (initObj.hasOwnProperty('compressor_current')) {
        this.compressor_current = initObj.compressor_current
      }
      else {
        this.compressor_current = [];
      }
      if (initObj.hasOwnProperty('closed_loop_control')) {
        this.closed_loop_control = initObj.closed_loop_control
      }
      else {
        this.closed_loop_control = [];
      }
      if (initObj.hasOwnProperty('current_too_high')) {
        this.current_too_high = initObj.current_too_high
      }
      else {
        this.current_too_high = [];
      }
      if (initObj.hasOwnProperty('current_too_high_sticky')) {
        this.current_too_high_sticky = initObj.current_too_high_sticky
      }
      else {
        this.current_too_high_sticky = [];
      }
      if (initObj.hasOwnProperty('shorted')) {
        this.shorted = initObj.shorted
      }
      else {
        this.shorted = [];
      }
      if (initObj.hasOwnProperty('shorted_sticky')) {
        this.shorted_sticky = initObj.shorted_sticky
      }
      else {
        this.shorted_sticky = [];
      }
      if (initObj.hasOwnProperty('not_connected')) {
        this.not_connected = initObj.not_connected
      }
      else {
        this.not_connected = [];
      }
      if (initObj.hasOwnProperty('not_connected_sticky')) {
        this.not_connected_sticky = initObj.not_connected_sticky
      }
      else {
        this.not_connected_sticky = [];
      }
      if (initObj.hasOwnProperty('voltage_fault')) {
        this.voltage_fault = initObj.voltage_fault
      }
      else {
        this.voltage_fault = [];
      }
      if (initObj.hasOwnProperty('voltage_sticky_fault')) {
        this.voltage_sticky_fault = initObj.voltage_sticky_fault
      }
      else {
        this.voltage_sticky_fault = [];
      }
      if (initObj.hasOwnProperty('solenoid_blacklist')) {
        this.solenoid_blacklist = initObj.solenoid_blacklist
      }
      else {
        this.solenoid_blacklist = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PCMState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [pcm_id]
    bufferOffset = _arraySerializer.int32(obj.pcm_id, buffer, bufferOffset, null);
    // Serialize message field [enabled]
    bufferOffset = _arraySerializer.bool(obj.enabled, buffer, bufferOffset, null);
    // Serialize message field [pressure_switch]
    bufferOffset = _arraySerializer.bool(obj.pressure_switch, buffer, bufferOffset, null);
    // Serialize message field [compressor_current]
    bufferOffset = _arraySerializer.float64(obj.compressor_current, buffer, bufferOffset, null);
    // Serialize message field [closed_loop_control]
    bufferOffset = _arraySerializer.bool(obj.closed_loop_control, buffer, bufferOffset, null);
    // Serialize message field [current_too_high]
    bufferOffset = _arraySerializer.bool(obj.current_too_high, buffer, bufferOffset, null);
    // Serialize message field [current_too_high_sticky]
    bufferOffset = _arraySerializer.bool(obj.current_too_high_sticky, buffer, bufferOffset, null);
    // Serialize message field [shorted]
    bufferOffset = _arraySerializer.bool(obj.shorted, buffer, bufferOffset, null);
    // Serialize message field [shorted_sticky]
    bufferOffset = _arraySerializer.bool(obj.shorted_sticky, buffer, bufferOffset, null);
    // Serialize message field [not_connected]
    bufferOffset = _arraySerializer.bool(obj.not_connected, buffer, bufferOffset, null);
    // Serialize message field [not_connected_sticky]
    bufferOffset = _arraySerializer.bool(obj.not_connected_sticky, buffer, bufferOffset, null);
    // Serialize message field [voltage_fault]
    bufferOffset = _arraySerializer.bool(obj.voltage_fault, buffer, bufferOffset, null);
    // Serialize message field [voltage_sticky_fault]
    bufferOffset = _arraySerializer.bool(obj.voltage_sticky_fault, buffer, bufferOffset, null);
    // Serialize message field [solenoid_blacklist]
    bufferOffset = _arraySerializer.uint32(obj.solenoid_blacklist, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PCMState
    let len;
    let data = new PCMState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [pcm_id]
    data.pcm_id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [enabled]
    data.enabled = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [pressure_switch]
    data.pressure_switch = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [compressor_current]
    data.compressor_current = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [closed_loop_control]
    data.closed_loop_control = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [current_too_high]
    data.current_too_high = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [current_too_high_sticky]
    data.current_too_high_sticky = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [shorted]
    data.shorted = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [shorted_sticky]
    data.shorted_sticky = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [not_connected]
    data.not_connected = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [not_connected_sticky]
    data.not_connected_sticky = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [voltage_fault]
    data.voltage_fault = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [voltage_sticky_fault]
    data.voltage_sticky_fault = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [solenoid_blacklist]
    data.solenoid_blacklist = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.pcm_id.length;
    length += object.enabled.length;
    length += object.pressure_switch.length;
    length += 8 * object.compressor_current.length;
    length += object.closed_loop_control.length;
    length += object.current_too_high.length;
    length += object.current_too_high_sticky.length;
    length += object.shorted.length;
    length += object.shorted_sticky.length;
    length += object.not_connected.length;
    length += object.not_connected_sticky.length;
    length += object.voltage_fault.length;
    length += object.voltage_sticky_fault.length;
    length += 4 * object.solenoid_blacklist.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frc_msgs/PCMState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81c063a265e9b3f14b664414961808c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header
    
    string[]  name
    int32[]   pcm_id
    bool[]    enabled
    bool[]    pressure_switch
    float64[] compressor_current
    bool[]    closed_loop_control
    bool[]    current_too_high
    bool[]    current_too_high_sticky
    bool[]    shorted
    bool[]    shorted_sticky
    bool[]    not_connected
    bool[]    not_connected_sticky
    bool[]    voltage_fault
    bool[]    voltage_sticky_fault
    uint32[]  solenoid_blacklist
    
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
    const resolved = new PCMState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.pcm_id !== undefined) {
      resolved.pcm_id = msg.pcm_id;
    }
    else {
      resolved.pcm_id = []
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = []
    }

    if (msg.pressure_switch !== undefined) {
      resolved.pressure_switch = msg.pressure_switch;
    }
    else {
      resolved.pressure_switch = []
    }

    if (msg.compressor_current !== undefined) {
      resolved.compressor_current = msg.compressor_current;
    }
    else {
      resolved.compressor_current = []
    }

    if (msg.closed_loop_control !== undefined) {
      resolved.closed_loop_control = msg.closed_loop_control;
    }
    else {
      resolved.closed_loop_control = []
    }

    if (msg.current_too_high !== undefined) {
      resolved.current_too_high = msg.current_too_high;
    }
    else {
      resolved.current_too_high = []
    }

    if (msg.current_too_high_sticky !== undefined) {
      resolved.current_too_high_sticky = msg.current_too_high_sticky;
    }
    else {
      resolved.current_too_high_sticky = []
    }

    if (msg.shorted !== undefined) {
      resolved.shorted = msg.shorted;
    }
    else {
      resolved.shorted = []
    }

    if (msg.shorted_sticky !== undefined) {
      resolved.shorted_sticky = msg.shorted_sticky;
    }
    else {
      resolved.shorted_sticky = []
    }

    if (msg.not_connected !== undefined) {
      resolved.not_connected = msg.not_connected;
    }
    else {
      resolved.not_connected = []
    }

    if (msg.not_connected_sticky !== undefined) {
      resolved.not_connected_sticky = msg.not_connected_sticky;
    }
    else {
      resolved.not_connected_sticky = []
    }

    if (msg.voltage_fault !== undefined) {
      resolved.voltage_fault = msg.voltage_fault;
    }
    else {
      resolved.voltage_fault = []
    }

    if (msg.voltage_sticky_fault !== undefined) {
      resolved.voltage_sticky_fault = msg.voltage_sticky_fault;
    }
    else {
      resolved.voltage_sticky_fault = []
    }

    if (msg.solenoid_blacklist !== undefined) {
      resolved.solenoid_blacklist = msg.solenoid_blacklist;
    }
    else {
      resolved.solenoid_blacklist = []
    }

    return resolved;
    }
};

module.exports = PCMState;
