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

class JoystickState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.leftStickX = null;
      this.leftStickY = null;
      this.rightStickX = null;
      this.rightStickY = null;
      this.leftTrigger = null;
      this.rightTrigger = null;
      this.buttonAButton = null;
      this.buttonAPress = null;
      this.buttonARelease = null;
      this.buttonBButton = null;
      this.buttonBPress = null;
      this.buttonBRelease = null;
      this.buttonXButton = null;
      this.buttonXPress = null;
      this.buttonXRelease = null;
      this.buttonYButton = null;
      this.buttonYPress = null;
      this.buttonYRelease = null;
      this.bumperLeftButton = null;
      this.bumperLeftPress = null;
      this.bumperLeftRelease = null;
      this.bumperRightButton = null;
      this.bumperRightPress = null;
      this.bumperRightRelease = null;
      this.buttonBackButton = null;
      this.buttonBackPress = null;
      this.buttonBackRelease = null;
      this.buttonStartButton = null;
      this.buttonStartPress = null;
      this.buttonStartRelease = null;
      this.stickLeftButton = null;
      this.stickLeftPress = null;
      this.stickLeftRelease = null;
      this.stickRightButton = null;
      this.stickRightPress = null;
      this.stickRightRelease = null;
      this.directionUpButton = null;
      this.directionUpPress = null;
      this.directionUpRelease = null;
      this.directionDownButton = null;
      this.directionDownPress = null;
      this.directionDownRelease = null;
      this.directionLeftButton = null;
      this.directionLeftPress = null;
      this.directionLeftRelease = null;
      this.directionRightButton = null;
      this.directionRightPress = null;
      this.directionRightRelease = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('leftStickX')) {
        this.leftStickX = initObj.leftStickX
      }
      else {
        this.leftStickX = 0.0;
      }
      if (initObj.hasOwnProperty('leftStickY')) {
        this.leftStickY = initObj.leftStickY
      }
      else {
        this.leftStickY = 0.0;
      }
      if (initObj.hasOwnProperty('rightStickX')) {
        this.rightStickX = initObj.rightStickX
      }
      else {
        this.rightStickX = 0.0;
      }
      if (initObj.hasOwnProperty('rightStickY')) {
        this.rightStickY = initObj.rightStickY
      }
      else {
        this.rightStickY = 0.0;
      }
      if (initObj.hasOwnProperty('leftTrigger')) {
        this.leftTrigger = initObj.leftTrigger
      }
      else {
        this.leftTrigger = 0.0;
      }
      if (initObj.hasOwnProperty('rightTrigger')) {
        this.rightTrigger = initObj.rightTrigger
      }
      else {
        this.rightTrigger = 0.0;
      }
      if (initObj.hasOwnProperty('buttonAButton')) {
        this.buttonAButton = initObj.buttonAButton
      }
      else {
        this.buttonAButton = false;
      }
      if (initObj.hasOwnProperty('buttonAPress')) {
        this.buttonAPress = initObj.buttonAPress
      }
      else {
        this.buttonAPress = false;
      }
      if (initObj.hasOwnProperty('buttonARelease')) {
        this.buttonARelease = initObj.buttonARelease
      }
      else {
        this.buttonARelease = false;
      }
      if (initObj.hasOwnProperty('buttonBButton')) {
        this.buttonBButton = initObj.buttonBButton
      }
      else {
        this.buttonBButton = false;
      }
      if (initObj.hasOwnProperty('buttonBPress')) {
        this.buttonBPress = initObj.buttonBPress
      }
      else {
        this.buttonBPress = false;
      }
      if (initObj.hasOwnProperty('buttonBRelease')) {
        this.buttonBRelease = initObj.buttonBRelease
      }
      else {
        this.buttonBRelease = false;
      }
      if (initObj.hasOwnProperty('buttonXButton')) {
        this.buttonXButton = initObj.buttonXButton
      }
      else {
        this.buttonXButton = false;
      }
      if (initObj.hasOwnProperty('buttonXPress')) {
        this.buttonXPress = initObj.buttonXPress
      }
      else {
        this.buttonXPress = false;
      }
      if (initObj.hasOwnProperty('buttonXRelease')) {
        this.buttonXRelease = initObj.buttonXRelease
      }
      else {
        this.buttonXRelease = false;
      }
      if (initObj.hasOwnProperty('buttonYButton')) {
        this.buttonYButton = initObj.buttonYButton
      }
      else {
        this.buttonYButton = false;
      }
      if (initObj.hasOwnProperty('buttonYPress')) {
        this.buttonYPress = initObj.buttonYPress
      }
      else {
        this.buttonYPress = false;
      }
      if (initObj.hasOwnProperty('buttonYRelease')) {
        this.buttonYRelease = initObj.buttonYRelease
      }
      else {
        this.buttonYRelease = false;
      }
      if (initObj.hasOwnProperty('bumperLeftButton')) {
        this.bumperLeftButton = initObj.bumperLeftButton
      }
      else {
        this.bumperLeftButton = false;
      }
      if (initObj.hasOwnProperty('bumperLeftPress')) {
        this.bumperLeftPress = initObj.bumperLeftPress
      }
      else {
        this.bumperLeftPress = false;
      }
      if (initObj.hasOwnProperty('bumperLeftRelease')) {
        this.bumperLeftRelease = initObj.bumperLeftRelease
      }
      else {
        this.bumperLeftRelease = false;
      }
      if (initObj.hasOwnProperty('bumperRightButton')) {
        this.bumperRightButton = initObj.bumperRightButton
      }
      else {
        this.bumperRightButton = false;
      }
      if (initObj.hasOwnProperty('bumperRightPress')) {
        this.bumperRightPress = initObj.bumperRightPress
      }
      else {
        this.bumperRightPress = false;
      }
      if (initObj.hasOwnProperty('bumperRightRelease')) {
        this.bumperRightRelease = initObj.bumperRightRelease
      }
      else {
        this.bumperRightRelease = false;
      }
      if (initObj.hasOwnProperty('buttonBackButton')) {
        this.buttonBackButton = initObj.buttonBackButton
      }
      else {
        this.buttonBackButton = false;
      }
      if (initObj.hasOwnProperty('buttonBackPress')) {
        this.buttonBackPress = initObj.buttonBackPress
      }
      else {
        this.buttonBackPress = false;
      }
      if (initObj.hasOwnProperty('buttonBackRelease')) {
        this.buttonBackRelease = initObj.buttonBackRelease
      }
      else {
        this.buttonBackRelease = false;
      }
      if (initObj.hasOwnProperty('buttonStartButton')) {
        this.buttonStartButton = initObj.buttonStartButton
      }
      else {
        this.buttonStartButton = false;
      }
      if (initObj.hasOwnProperty('buttonStartPress')) {
        this.buttonStartPress = initObj.buttonStartPress
      }
      else {
        this.buttonStartPress = false;
      }
      if (initObj.hasOwnProperty('buttonStartRelease')) {
        this.buttonStartRelease = initObj.buttonStartRelease
      }
      else {
        this.buttonStartRelease = false;
      }
      if (initObj.hasOwnProperty('stickLeftButton')) {
        this.stickLeftButton = initObj.stickLeftButton
      }
      else {
        this.stickLeftButton = false;
      }
      if (initObj.hasOwnProperty('stickLeftPress')) {
        this.stickLeftPress = initObj.stickLeftPress
      }
      else {
        this.stickLeftPress = false;
      }
      if (initObj.hasOwnProperty('stickLeftRelease')) {
        this.stickLeftRelease = initObj.stickLeftRelease
      }
      else {
        this.stickLeftRelease = false;
      }
      if (initObj.hasOwnProperty('stickRightButton')) {
        this.stickRightButton = initObj.stickRightButton
      }
      else {
        this.stickRightButton = false;
      }
      if (initObj.hasOwnProperty('stickRightPress')) {
        this.stickRightPress = initObj.stickRightPress
      }
      else {
        this.stickRightPress = false;
      }
      if (initObj.hasOwnProperty('stickRightRelease')) {
        this.stickRightRelease = initObj.stickRightRelease
      }
      else {
        this.stickRightRelease = false;
      }
      if (initObj.hasOwnProperty('directionUpButton')) {
        this.directionUpButton = initObj.directionUpButton
      }
      else {
        this.directionUpButton = false;
      }
      if (initObj.hasOwnProperty('directionUpPress')) {
        this.directionUpPress = initObj.directionUpPress
      }
      else {
        this.directionUpPress = false;
      }
      if (initObj.hasOwnProperty('directionUpRelease')) {
        this.directionUpRelease = initObj.directionUpRelease
      }
      else {
        this.directionUpRelease = false;
      }
      if (initObj.hasOwnProperty('directionDownButton')) {
        this.directionDownButton = initObj.directionDownButton
      }
      else {
        this.directionDownButton = false;
      }
      if (initObj.hasOwnProperty('directionDownPress')) {
        this.directionDownPress = initObj.directionDownPress
      }
      else {
        this.directionDownPress = false;
      }
      if (initObj.hasOwnProperty('directionDownRelease')) {
        this.directionDownRelease = initObj.directionDownRelease
      }
      else {
        this.directionDownRelease = false;
      }
      if (initObj.hasOwnProperty('directionLeftButton')) {
        this.directionLeftButton = initObj.directionLeftButton
      }
      else {
        this.directionLeftButton = false;
      }
      if (initObj.hasOwnProperty('directionLeftPress')) {
        this.directionLeftPress = initObj.directionLeftPress
      }
      else {
        this.directionLeftPress = false;
      }
      if (initObj.hasOwnProperty('directionLeftRelease')) {
        this.directionLeftRelease = initObj.directionLeftRelease
      }
      else {
        this.directionLeftRelease = false;
      }
      if (initObj.hasOwnProperty('directionRightButton')) {
        this.directionRightButton = initObj.directionRightButton
      }
      else {
        this.directionRightButton = false;
      }
      if (initObj.hasOwnProperty('directionRightPress')) {
        this.directionRightPress = initObj.directionRightPress
      }
      else {
        this.directionRightPress = false;
      }
      if (initObj.hasOwnProperty('directionRightRelease')) {
        this.directionRightRelease = initObj.directionRightRelease
      }
      else {
        this.directionRightRelease = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JoystickState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [leftStickX]
    bufferOffset = _serializer.float64(obj.leftStickX, buffer, bufferOffset);
    // Serialize message field [leftStickY]
    bufferOffset = _serializer.float64(obj.leftStickY, buffer, bufferOffset);
    // Serialize message field [rightStickX]
    bufferOffset = _serializer.float64(obj.rightStickX, buffer, bufferOffset);
    // Serialize message field [rightStickY]
    bufferOffset = _serializer.float64(obj.rightStickY, buffer, bufferOffset);
    // Serialize message field [leftTrigger]
    bufferOffset = _serializer.float64(obj.leftTrigger, buffer, bufferOffset);
    // Serialize message field [rightTrigger]
    bufferOffset = _serializer.float64(obj.rightTrigger, buffer, bufferOffset);
    // Serialize message field [buttonAButton]
    bufferOffset = _serializer.bool(obj.buttonAButton, buffer, bufferOffset);
    // Serialize message field [buttonAPress]
    bufferOffset = _serializer.bool(obj.buttonAPress, buffer, bufferOffset);
    // Serialize message field [buttonARelease]
    bufferOffset = _serializer.bool(obj.buttonARelease, buffer, bufferOffset);
    // Serialize message field [buttonBButton]
    bufferOffset = _serializer.bool(obj.buttonBButton, buffer, bufferOffset);
    // Serialize message field [buttonBPress]
    bufferOffset = _serializer.bool(obj.buttonBPress, buffer, bufferOffset);
    // Serialize message field [buttonBRelease]
    bufferOffset = _serializer.bool(obj.buttonBRelease, buffer, bufferOffset);
    // Serialize message field [buttonXButton]
    bufferOffset = _serializer.bool(obj.buttonXButton, buffer, bufferOffset);
    // Serialize message field [buttonXPress]
    bufferOffset = _serializer.bool(obj.buttonXPress, buffer, bufferOffset);
    // Serialize message field [buttonXRelease]
    bufferOffset = _serializer.bool(obj.buttonXRelease, buffer, bufferOffset);
    // Serialize message field [buttonYButton]
    bufferOffset = _serializer.bool(obj.buttonYButton, buffer, bufferOffset);
    // Serialize message field [buttonYPress]
    bufferOffset = _serializer.bool(obj.buttonYPress, buffer, bufferOffset);
    // Serialize message field [buttonYRelease]
    bufferOffset = _serializer.bool(obj.buttonYRelease, buffer, bufferOffset);
    // Serialize message field [bumperLeftButton]
    bufferOffset = _serializer.bool(obj.bumperLeftButton, buffer, bufferOffset);
    // Serialize message field [bumperLeftPress]
    bufferOffset = _serializer.bool(obj.bumperLeftPress, buffer, bufferOffset);
    // Serialize message field [bumperLeftRelease]
    bufferOffset = _serializer.bool(obj.bumperLeftRelease, buffer, bufferOffset);
    // Serialize message field [bumperRightButton]
    bufferOffset = _serializer.bool(obj.bumperRightButton, buffer, bufferOffset);
    // Serialize message field [bumperRightPress]
    bufferOffset = _serializer.bool(obj.bumperRightPress, buffer, bufferOffset);
    // Serialize message field [bumperRightRelease]
    bufferOffset = _serializer.bool(obj.bumperRightRelease, buffer, bufferOffset);
    // Serialize message field [buttonBackButton]
    bufferOffset = _serializer.bool(obj.buttonBackButton, buffer, bufferOffset);
    // Serialize message field [buttonBackPress]
    bufferOffset = _serializer.bool(obj.buttonBackPress, buffer, bufferOffset);
    // Serialize message field [buttonBackRelease]
    bufferOffset = _serializer.bool(obj.buttonBackRelease, buffer, bufferOffset);
    // Serialize message field [buttonStartButton]
    bufferOffset = _serializer.bool(obj.buttonStartButton, buffer, bufferOffset);
    // Serialize message field [buttonStartPress]
    bufferOffset = _serializer.bool(obj.buttonStartPress, buffer, bufferOffset);
    // Serialize message field [buttonStartRelease]
    bufferOffset = _serializer.bool(obj.buttonStartRelease, buffer, bufferOffset);
    // Serialize message field [stickLeftButton]
    bufferOffset = _serializer.bool(obj.stickLeftButton, buffer, bufferOffset);
    // Serialize message field [stickLeftPress]
    bufferOffset = _serializer.bool(obj.stickLeftPress, buffer, bufferOffset);
    // Serialize message field [stickLeftRelease]
    bufferOffset = _serializer.bool(obj.stickLeftRelease, buffer, bufferOffset);
    // Serialize message field [stickRightButton]
    bufferOffset = _serializer.bool(obj.stickRightButton, buffer, bufferOffset);
    // Serialize message field [stickRightPress]
    bufferOffset = _serializer.bool(obj.stickRightPress, buffer, bufferOffset);
    // Serialize message field [stickRightRelease]
    bufferOffset = _serializer.bool(obj.stickRightRelease, buffer, bufferOffset);
    // Serialize message field [directionUpButton]
    bufferOffset = _serializer.bool(obj.directionUpButton, buffer, bufferOffset);
    // Serialize message field [directionUpPress]
    bufferOffset = _serializer.bool(obj.directionUpPress, buffer, bufferOffset);
    // Serialize message field [directionUpRelease]
    bufferOffset = _serializer.bool(obj.directionUpRelease, buffer, bufferOffset);
    // Serialize message field [directionDownButton]
    bufferOffset = _serializer.bool(obj.directionDownButton, buffer, bufferOffset);
    // Serialize message field [directionDownPress]
    bufferOffset = _serializer.bool(obj.directionDownPress, buffer, bufferOffset);
    // Serialize message field [directionDownRelease]
    bufferOffset = _serializer.bool(obj.directionDownRelease, buffer, bufferOffset);
    // Serialize message field [directionLeftButton]
    bufferOffset = _serializer.bool(obj.directionLeftButton, buffer, bufferOffset);
    // Serialize message field [directionLeftPress]
    bufferOffset = _serializer.bool(obj.directionLeftPress, buffer, bufferOffset);
    // Serialize message field [directionLeftRelease]
    bufferOffset = _serializer.bool(obj.directionLeftRelease, buffer, bufferOffset);
    // Serialize message field [directionRightButton]
    bufferOffset = _serializer.bool(obj.directionRightButton, buffer, bufferOffset);
    // Serialize message field [directionRightPress]
    bufferOffset = _serializer.bool(obj.directionRightPress, buffer, bufferOffset);
    // Serialize message field [directionRightRelease]
    bufferOffset = _serializer.bool(obj.directionRightRelease, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JoystickState
    let len;
    let data = new JoystickState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [leftStickX]
    data.leftStickX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [leftStickY]
    data.leftStickY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightStickX]
    data.rightStickX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightStickY]
    data.rightStickY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [leftTrigger]
    data.leftTrigger = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rightTrigger]
    data.rightTrigger = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [buttonAButton]
    data.buttonAButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonAPress]
    data.buttonAPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonARelease]
    data.buttonARelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonBButton]
    data.buttonBButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonBPress]
    data.buttonBPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonBRelease]
    data.buttonBRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonXButton]
    data.buttonXButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonXPress]
    data.buttonXPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonXRelease]
    data.buttonXRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonYButton]
    data.buttonYButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonYPress]
    data.buttonYPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonYRelease]
    data.buttonYRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bumperLeftButton]
    data.bumperLeftButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bumperLeftPress]
    data.bumperLeftPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bumperLeftRelease]
    data.bumperLeftRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bumperRightButton]
    data.bumperRightButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bumperRightPress]
    data.bumperRightPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bumperRightRelease]
    data.bumperRightRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonBackButton]
    data.buttonBackButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonBackPress]
    data.buttonBackPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonBackRelease]
    data.buttonBackRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonStartButton]
    data.buttonStartButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonStartPress]
    data.buttonStartPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buttonStartRelease]
    data.buttonStartRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stickLeftButton]
    data.stickLeftButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stickLeftPress]
    data.stickLeftPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stickLeftRelease]
    data.stickLeftRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stickRightButton]
    data.stickRightButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stickRightPress]
    data.stickRightPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stickRightRelease]
    data.stickRightRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionUpButton]
    data.directionUpButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionUpPress]
    data.directionUpPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionUpRelease]
    data.directionUpRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionDownButton]
    data.directionDownButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionDownPress]
    data.directionDownPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionDownRelease]
    data.directionDownRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionLeftButton]
    data.directionLeftButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionLeftPress]
    data.directionLeftPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionLeftRelease]
    data.directionLeftRelease = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionRightButton]
    data.directionRightButton = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionRightPress]
    data.directionRightPress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directionRightRelease]
    data.directionRightRelease = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 90;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frc_msgs/JoystickState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94b495e8f7801eaec0cdd481668e94e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64  leftStickX
    float64  leftStickY
    
    float64  rightStickX
    float64  rightStickY
    
    float64  leftTrigger
    float64  rightTrigger
    
    bool buttonAButton
    bool buttonAPress
    bool buttonARelease
    
    bool buttonBButton
    bool buttonBPress
    bool buttonBRelease
    
    bool buttonXButton
    bool buttonXPress
    bool buttonXRelease
    
    bool buttonYButton
    bool buttonYPress
    bool buttonYRelease
    
    bool bumperLeftButton
    bool bumperLeftPress
    bool bumperLeftRelease
    
    bool bumperRightButton
    bool bumperRightPress
    bool bumperRightRelease
    
    bool buttonBackButton
    bool buttonBackPress
    bool buttonBackRelease
    
    bool buttonStartButton
    bool buttonStartPress
    bool buttonStartRelease
    
    bool stickLeftButton
    bool stickLeftPress
    bool stickLeftRelease
    
    bool stickRightButton
    bool stickRightPress
    bool stickRightRelease
    
    bool directionUpButton
    bool directionUpPress
    bool directionUpRelease
    
    bool directionDownButton
    bool directionDownPress
    bool directionDownRelease
    
    bool directionLeftButton
    bool directionLeftPress
    bool directionLeftRelease
    
    bool directionRightButton
    bool directionRightPress
    bool directionRightRelease
    
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
    const resolved = new JoystickState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.leftStickX !== undefined) {
      resolved.leftStickX = msg.leftStickX;
    }
    else {
      resolved.leftStickX = 0.0
    }

    if (msg.leftStickY !== undefined) {
      resolved.leftStickY = msg.leftStickY;
    }
    else {
      resolved.leftStickY = 0.0
    }

    if (msg.rightStickX !== undefined) {
      resolved.rightStickX = msg.rightStickX;
    }
    else {
      resolved.rightStickX = 0.0
    }

    if (msg.rightStickY !== undefined) {
      resolved.rightStickY = msg.rightStickY;
    }
    else {
      resolved.rightStickY = 0.0
    }

    if (msg.leftTrigger !== undefined) {
      resolved.leftTrigger = msg.leftTrigger;
    }
    else {
      resolved.leftTrigger = 0.0
    }

    if (msg.rightTrigger !== undefined) {
      resolved.rightTrigger = msg.rightTrigger;
    }
    else {
      resolved.rightTrigger = 0.0
    }

    if (msg.buttonAButton !== undefined) {
      resolved.buttonAButton = msg.buttonAButton;
    }
    else {
      resolved.buttonAButton = false
    }

    if (msg.buttonAPress !== undefined) {
      resolved.buttonAPress = msg.buttonAPress;
    }
    else {
      resolved.buttonAPress = false
    }

    if (msg.buttonARelease !== undefined) {
      resolved.buttonARelease = msg.buttonARelease;
    }
    else {
      resolved.buttonARelease = false
    }

    if (msg.buttonBButton !== undefined) {
      resolved.buttonBButton = msg.buttonBButton;
    }
    else {
      resolved.buttonBButton = false
    }

    if (msg.buttonBPress !== undefined) {
      resolved.buttonBPress = msg.buttonBPress;
    }
    else {
      resolved.buttonBPress = false
    }

    if (msg.buttonBRelease !== undefined) {
      resolved.buttonBRelease = msg.buttonBRelease;
    }
    else {
      resolved.buttonBRelease = false
    }

    if (msg.buttonXButton !== undefined) {
      resolved.buttonXButton = msg.buttonXButton;
    }
    else {
      resolved.buttonXButton = false
    }

    if (msg.buttonXPress !== undefined) {
      resolved.buttonXPress = msg.buttonXPress;
    }
    else {
      resolved.buttonXPress = false
    }

    if (msg.buttonXRelease !== undefined) {
      resolved.buttonXRelease = msg.buttonXRelease;
    }
    else {
      resolved.buttonXRelease = false
    }

    if (msg.buttonYButton !== undefined) {
      resolved.buttonYButton = msg.buttonYButton;
    }
    else {
      resolved.buttonYButton = false
    }

    if (msg.buttonYPress !== undefined) {
      resolved.buttonYPress = msg.buttonYPress;
    }
    else {
      resolved.buttonYPress = false
    }

    if (msg.buttonYRelease !== undefined) {
      resolved.buttonYRelease = msg.buttonYRelease;
    }
    else {
      resolved.buttonYRelease = false
    }

    if (msg.bumperLeftButton !== undefined) {
      resolved.bumperLeftButton = msg.bumperLeftButton;
    }
    else {
      resolved.bumperLeftButton = false
    }

    if (msg.bumperLeftPress !== undefined) {
      resolved.bumperLeftPress = msg.bumperLeftPress;
    }
    else {
      resolved.bumperLeftPress = false
    }

    if (msg.bumperLeftRelease !== undefined) {
      resolved.bumperLeftRelease = msg.bumperLeftRelease;
    }
    else {
      resolved.bumperLeftRelease = false
    }

    if (msg.bumperRightButton !== undefined) {
      resolved.bumperRightButton = msg.bumperRightButton;
    }
    else {
      resolved.bumperRightButton = false
    }

    if (msg.bumperRightPress !== undefined) {
      resolved.bumperRightPress = msg.bumperRightPress;
    }
    else {
      resolved.bumperRightPress = false
    }

    if (msg.bumperRightRelease !== undefined) {
      resolved.bumperRightRelease = msg.bumperRightRelease;
    }
    else {
      resolved.bumperRightRelease = false
    }

    if (msg.buttonBackButton !== undefined) {
      resolved.buttonBackButton = msg.buttonBackButton;
    }
    else {
      resolved.buttonBackButton = false
    }

    if (msg.buttonBackPress !== undefined) {
      resolved.buttonBackPress = msg.buttonBackPress;
    }
    else {
      resolved.buttonBackPress = false
    }

    if (msg.buttonBackRelease !== undefined) {
      resolved.buttonBackRelease = msg.buttonBackRelease;
    }
    else {
      resolved.buttonBackRelease = false
    }

    if (msg.buttonStartButton !== undefined) {
      resolved.buttonStartButton = msg.buttonStartButton;
    }
    else {
      resolved.buttonStartButton = false
    }

    if (msg.buttonStartPress !== undefined) {
      resolved.buttonStartPress = msg.buttonStartPress;
    }
    else {
      resolved.buttonStartPress = false
    }

    if (msg.buttonStartRelease !== undefined) {
      resolved.buttonStartRelease = msg.buttonStartRelease;
    }
    else {
      resolved.buttonStartRelease = false
    }

    if (msg.stickLeftButton !== undefined) {
      resolved.stickLeftButton = msg.stickLeftButton;
    }
    else {
      resolved.stickLeftButton = false
    }

    if (msg.stickLeftPress !== undefined) {
      resolved.stickLeftPress = msg.stickLeftPress;
    }
    else {
      resolved.stickLeftPress = false
    }

    if (msg.stickLeftRelease !== undefined) {
      resolved.stickLeftRelease = msg.stickLeftRelease;
    }
    else {
      resolved.stickLeftRelease = false
    }

    if (msg.stickRightButton !== undefined) {
      resolved.stickRightButton = msg.stickRightButton;
    }
    else {
      resolved.stickRightButton = false
    }

    if (msg.stickRightPress !== undefined) {
      resolved.stickRightPress = msg.stickRightPress;
    }
    else {
      resolved.stickRightPress = false
    }

    if (msg.stickRightRelease !== undefined) {
      resolved.stickRightRelease = msg.stickRightRelease;
    }
    else {
      resolved.stickRightRelease = false
    }

    if (msg.directionUpButton !== undefined) {
      resolved.directionUpButton = msg.directionUpButton;
    }
    else {
      resolved.directionUpButton = false
    }

    if (msg.directionUpPress !== undefined) {
      resolved.directionUpPress = msg.directionUpPress;
    }
    else {
      resolved.directionUpPress = false
    }

    if (msg.directionUpRelease !== undefined) {
      resolved.directionUpRelease = msg.directionUpRelease;
    }
    else {
      resolved.directionUpRelease = false
    }

    if (msg.directionDownButton !== undefined) {
      resolved.directionDownButton = msg.directionDownButton;
    }
    else {
      resolved.directionDownButton = false
    }

    if (msg.directionDownPress !== undefined) {
      resolved.directionDownPress = msg.directionDownPress;
    }
    else {
      resolved.directionDownPress = false
    }

    if (msg.directionDownRelease !== undefined) {
      resolved.directionDownRelease = msg.directionDownRelease;
    }
    else {
      resolved.directionDownRelease = false
    }

    if (msg.directionLeftButton !== undefined) {
      resolved.directionLeftButton = msg.directionLeftButton;
    }
    else {
      resolved.directionLeftButton = false
    }

    if (msg.directionLeftPress !== undefined) {
      resolved.directionLeftPress = msg.directionLeftPress;
    }
    else {
      resolved.directionLeftPress = false
    }

    if (msg.directionLeftRelease !== undefined) {
      resolved.directionLeftRelease = msg.directionLeftRelease;
    }
    else {
      resolved.directionLeftRelease = false
    }

    if (msg.directionRightButton !== undefined) {
      resolved.directionRightButton = msg.directionRightButton;
    }
    else {
      resolved.directionRightButton = false
    }

    if (msg.directionRightPress !== undefined) {
      resolved.directionRightPress = msg.directionRightPress;
    }
    else {
      resolved.directionRightPress = false
    }

    if (msg.directionRightRelease !== undefined) {
      resolved.directionRightRelease = msg.directionRightRelease;
    }
    else {
      resolved.directionRightRelease = false
    }

    return resolved;
    }
};

module.exports = JoystickState;
