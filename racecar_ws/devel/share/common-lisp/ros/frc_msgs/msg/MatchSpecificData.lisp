; Auto-generated. Do not edit!


(cl:in-package frc_msgs-msg)


;//! \htmlinclude MatchSpecificData.msg.html

(cl:defclass <MatchSpecificData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (eventName
    :reader eventName
    :initarg :eventName
    :type cl:string
    :initform "")
   (matchType
    :reader matchType
    :initarg :matchType
    :type cl:fixnum
    :initform 0)
   (matchNumber
    :reader matchNumber
    :initarg :matchNumber
    :type cl:fixnum
    :initform 0)
   (replayNumber
    :reader replayNumber
    :initarg :replayNumber
    :type cl:fixnum
    :initform 0)
   (matchTimeRemaining
    :reader matchTimeRemaining
    :initarg :matchTimeRemaining
    :type cl:float
    :initform 0.0)
   (allianceColor
    :reader allianceColor
    :initarg :allianceColor
    :type cl:fixnum
    :initform 0)
   (driverStationLocation
    :reader driverStationLocation
    :initarg :driverStationLocation
    :type cl:fixnum
    :initform 0)
   (gameSpecificData
    :reader gameSpecificData
    :initarg :gameSpecificData
    :type cl:string
    :initform "")
   (Enabled
    :reader Enabled
    :initarg :Enabled
    :type cl:boolean
    :initform cl:nil)
   (Disabled
    :reader Disabled
    :initarg :Disabled
    :type cl:boolean
    :initform cl:nil)
   (Autonomous
    :reader Autonomous
    :initarg :Autonomous
    :type cl:boolean
    :initform cl:nil)
   (Test
    :reader Test
    :initarg :Test
    :type cl:boolean
    :initform cl:nil)
   (FMSAttached
    :reader FMSAttached
    :initarg :FMSAttached
    :type cl:boolean
    :initform cl:nil)
   (DSAttached
    :reader DSAttached
    :initarg :DSAttached
    :type cl:boolean
    :initform cl:nil)
   (OperatorControl
    :reader OperatorControl
    :initarg :OperatorControl
    :type cl:boolean
    :initform cl:nil)
   (BatteryVoltage
    :reader BatteryVoltage
    :initarg :BatteryVoltage
    :type cl:float
    :initform 0.0))
)

(cl:defclass MatchSpecificData (<MatchSpecificData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MatchSpecificData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MatchSpecificData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frc_msgs-msg:<MatchSpecificData> is deprecated: use frc_msgs-msg:MatchSpecificData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:header-val is deprecated.  Use frc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'eventName-val :lambda-list '(m))
(cl:defmethod eventName-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:eventName-val is deprecated.  Use frc_msgs-msg:eventName instead.")
  (eventName m))

(cl:ensure-generic-function 'matchType-val :lambda-list '(m))
(cl:defmethod matchType-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:matchType-val is deprecated.  Use frc_msgs-msg:matchType instead.")
  (matchType m))

(cl:ensure-generic-function 'matchNumber-val :lambda-list '(m))
(cl:defmethod matchNumber-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:matchNumber-val is deprecated.  Use frc_msgs-msg:matchNumber instead.")
  (matchNumber m))

(cl:ensure-generic-function 'replayNumber-val :lambda-list '(m))
(cl:defmethod replayNumber-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:replayNumber-val is deprecated.  Use frc_msgs-msg:replayNumber instead.")
  (replayNumber m))

(cl:ensure-generic-function 'matchTimeRemaining-val :lambda-list '(m))
(cl:defmethod matchTimeRemaining-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:matchTimeRemaining-val is deprecated.  Use frc_msgs-msg:matchTimeRemaining instead.")
  (matchTimeRemaining m))

(cl:ensure-generic-function 'allianceColor-val :lambda-list '(m))
(cl:defmethod allianceColor-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:allianceColor-val is deprecated.  Use frc_msgs-msg:allianceColor instead.")
  (allianceColor m))

(cl:ensure-generic-function 'driverStationLocation-val :lambda-list '(m))
(cl:defmethod driverStationLocation-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:driverStationLocation-val is deprecated.  Use frc_msgs-msg:driverStationLocation instead.")
  (driverStationLocation m))

(cl:ensure-generic-function 'gameSpecificData-val :lambda-list '(m))
(cl:defmethod gameSpecificData-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:gameSpecificData-val is deprecated.  Use frc_msgs-msg:gameSpecificData instead.")
  (gameSpecificData m))

(cl:ensure-generic-function 'Enabled-val :lambda-list '(m))
(cl:defmethod Enabled-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:Enabled-val is deprecated.  Use frc_msgs-msg:Enabled instead.")
  (Enabled m))

(cl:ensure-generic-function 'Disabled-val :lambda-list '(m))
(cl:defmethod Disabled-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:Disabled-val is deprecated.  Use frc_msgs-msg:Disabled instead.")
  (Disabled m))

(cl:ensure-generic-function 'Autonomous-val :lambda-list '(m))
(cl:defmethod Autonomous-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:Autonomous-val is deprecated.  Use frc_msgs-msg:Autonomous instead.")
  (Autonomous m))

(cl:ensure-generic-function 'Test-val :lambda-list '(m))
(cl:defmethod Test-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:Test-val is deprecated.  Use frc_msgs-msg:Test instead.")
  (Test m))

(cl:ensure-generic-function 'FMSAttached-val :lambda-list '(m))
(cl:defmethod FMSAttached-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:FMSAttached-val is deprecated.  Use frc_msgs-msg:FMSAttached instead.")
  (FMSAttached m))

(cl:ensure-generic-function 'DSAttached-val :lambda-list '(m))
(cl:defmethod DSAttached-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:DSAttached-val is deprecated.  Use frc_msgs-msg:DSAttached instead.")
  (DSAttached m))

(cl:ensure-generic-function 'OperatorControl-val :lambda-list '(m))
(cl:defmethod OperatorControl-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:OperatorControl-val is deprecated.  Use frc_msgs-msg:OperatorControl instead.")
  (OperatorControl m))

(cl:ensure-generic-function 'BatteryVoltage-val :lambda-list '(m))
(cl:defmethod BatteryVoltage-val ((m <MatchSpecificData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:BatteryVoltage-val is deprecated.  Use frc_msgs-msg:BatteryVoltage instead.")
  (BatteryVoltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MatchSpecificData>) ostream)
  "Serializes a message object of type '<MatchSpecificData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'eventName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'eventName))
  (cl:let* ((signed (cl:slot-value msg 'matchType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'matchNumber)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'replayNumber)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'matchTimeRemaining))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'allianceColor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'driverStationLocation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gameSpecificData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gameSpecificData))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Disabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Autonomous) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Test) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'FMSAttached) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'DSAttached) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'OperatorControl) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'BatteryVoltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MatchSpecificData>) istream)
  "Deserializes a message object of type '<MatchSpecificData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'eventName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'eventName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'matchType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'matchNumber) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'replayNumber) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'matchTimeRemaining) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'allianceColor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'driverStationLocation) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gameSpecificData) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gameSpecificData) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'Enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Disabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Autonomous) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Test) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'FMSAttached) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'DSAttached) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'OperatorControl) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BatteryVoltage) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MatchSpecificData>)))
  "Returns string type for a message object of type '<MatchSpecificData>"
  "frc_msgs/MatchSpecificData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MatchSpecificData)))
  "Returns string type for a message object of type 'MatchSpecificData"
  "frc_msgs/MatchSpecificData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MatchSpecificData>)))
  "Returns md5sum for a message object of type '<MatchSpecificData>"
  "841701141221f3ad34663801c6ab3c63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MatchSpecificData)))
  "Returns md5sum for a message object of type 'MatchSpecificData"
  "841701141221f3ad34663801c6ab3c63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MatchSpecificData>)))
  "Returns full string definition for message of type '<MatchSpecificData>"
  (cl:format cl:nil "Header header~%~%string eventName~%int8 matchType~%int8 matchNumber~%int8 replayNumber~%~%float64 matchTimeRemaining~%int8 allianceColor~%int8 driverStationLocation~%string gameSpecificData~%~%bool Enabled~%bool Disabled~%bool Autonomous~%bool Test~%bool FMSAttached~%bool DSAttached~%bool OperatorControl~%~%float64 BatteryVoltage~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MatchSpecificData)))
  "Returns full string definition for message of type 'MatchSpecificData"
  (cl:format cl:nil "Header header~%~%string eventName~%int8 matchType~%int8 matchNumber~%int8 replayNumber~%~%float64 matchTimeRemaining~%int8 allianceColor~%int8 driverStationLocation~%string gameSpecificData~%~%bool Enabled~%bool Disabled~%bool Autonomous~%bool Test~%bool FMSAttached~%bool DSAttached~%bool OperatorControl~%~%float64 BatteryVoltage~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MatchSpecificData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'eventName))
     1
     1
     1
     8
     1
     1
     4 (cl:length (cl:slot-value msg 'gameSpecificData))
     1
     1
     1
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MatchSpecificData>))
  "Converts a ROS message object to a list"
  (cl:list 'MatchSpecificData
    (cl:cons ':header (header msg))
    (cl:cons ':eventName (eventName msg))
    (cl:cons ':matchType (matchType msg))
    (cl:cons ':matchNumber (matchNumber msg))
    (cl:cons ':replayNumber (replayNumber msg))
    (cl:cons ':matchTimeRemaining (matchTimeRemaining msg))
    (cl:cons ':allianceColor (allianceColor msg))
    (cl:cons ':driverStationLocation (driverStationLocation msg))
    (cl:cons ':gameSpecificData (gameSpecificData msg))
    (cl:cons ':Enabled (Enabled msg))
    (cl:cons ':Disabled (Disabled msg))
    (cl:cons ':Autonomous (Autonomous msg))
    (cl:cons ':Test (Test msg))
    (cl:cons ':FMSAttached (FMSAttached msg))
    (cl:cons ':DSAttached (DSAttached msg))
    (cl:cons ':OperatorControl (OperatorControl msg))
    (cl:cons ':BatteryVoltage (BatteryVoltage msg))
))
