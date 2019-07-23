; Auto-generated. Do not edit!


(cl:in-package frc_msgs-msg)


;//! \htmlinclude RobotControllerCANData.msg.html

(cl:defclass <RobotControllerCANData> (roslisp-msg-protocol:ros-message)
  ((percentBusUtilization
    :reader percentBusUtilization
    :initarg :percentBusUtilization
    :type cl:float
    :initform 0.0)
   (busOffCount
    :reader busOffCount
    :initarg :busOffCount
    :type cl:integer
    :initform 0)
   (txFullCount
    :reader txFullCount
    :initarg :txFullCount
    :type cl:integer
    :initform 0)
   (receiveErrorCount
    :reader receiveErrorCount
    :initarg :receiveErrorCount
    :type cl:integer
    :initform 0)
   (transmitErrorCount
    :reader transmitErrorCount
    :initarg :transmitErrorCount
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotControllerCANData (<RobotControllerCANData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotControllerCANData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotControllerCANData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frc_msgs-msg:<RobotControllerCANData> is deprecated: use frc_msgs-msg:RobotControllerCANData instead.")))

(cl:ensure-generic-function 'percentBusUtilization-val :lambda-list '(m))
(cl:defmethod percentBusUtilization-val ((m <RobotControllerCANData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:percentBusUtilization-val is deprecated.  Use frc_msgs-msg:percentBusUtilization instead.")
  (percentBusUtilization m))

(cl:ensure-generic-function 'busOffCount-val :lambda-list '(m))
(cl:defmethod busOffCount-val ((m <RobotControllerCANData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:busOffCount-val is deprecated.  Use frc_msgs-msg:busOffCount instead.")
  (busOffCount m))

(cl:ensure-generic-function 'txFullCount-val :lambda-list '(m))
(cl:defmethod txFullCount-val ((m <RobotControllerCANData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:txFullCount-val is deprecated.  Use frc_msgs-msg:txFullCount instead.")
  (txFullCount m))

(cl:ensure-generic-function 'receiveErrorCount-val :lambda-list '(m))
(cl:defmethod receiveErrorCount-val ((m <RobotControllerCANData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:receiveErrorCount-val is deprecated.  Use frc_msgs-msg:receiveErrorCount instead.")
  (receiveErrorCount m))

(cl:ensure-generic-function 'transmitErrorCount-val :lambda-list '(m))
(cl:defmethod transmitErrorCount-val ((m <RobotControllerCANData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:transmitErrorCount-val is deprecated.  Use frc_msgs-msg:transmitErrorCount instead.")
  (transmitErrorCount m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotControllerCANData>) ostream)
  "Serializes a message object of type '<RobotControllerCANData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percentBusUtilization))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'busOffCount)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'txFullCount)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'receiveErrorCount)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'transmitErrorCount)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotControllerCANData>) istream)
  "Deserializes a message object of type '<RobotControllerCANData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percentBusUtilization) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'busOffCount) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txFullCount) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'receiveErrorCount) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'transmitErrorCount) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotControllerCANData>)))
  "Returns string type for a message object of type '<RobotControllerCANData>"
  "frc_msgs/RobotControllerCANData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotControllerCANData)))
  "Returns string type for a message object of type 'RobotControllerCANData"
  "frc_msgs/RobotControllerCANData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotControllerCANData>)))
  "Returns md5sum for a message object of type '<RobotControllerCANData>"
  "14b84f7dc25f03687604ab1fd7c46f75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotControllerCANData)))
  "Returns md5sum for a message object of type 'RobotControllerCANData"
  "14b84f7dc25f03687604ab1fd7c46f75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotControllerCANData>)))
  "Returns full string definition for message of type '<RobotControllerCANData>"
  (cl:format cl:nil "float32 percentBusUtilization~%int32 busOffCount~%int32 txFullCount~%int32 receiveErrorCount~%int32 transmitErrorCount~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotControllerCANData)))
  "Returns full string definition for message of type 'RobotControllerCANData"
  (cl:format cl:nil "float32 percentBusUtilization~%int32 busOffCount~%int32 txFullCount~%int32 receiveErrorCount~%int32 transmitErrorCount~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotControllerCANData>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotControllerCANData>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotControllerCANData
    (cl:cons ':percentBusUtilization (percentBusUtilization msg))
    (cl:cons ':busOffCount (busOffCount msg))
    (cl:cons ':txFullCount (txFullCount msg))
    (cl:cons ':receiveErrorCount (receiveErrorCount msg))
    (cl:cons ':transmitErrorCount (transmitErrorCount msg))
))
