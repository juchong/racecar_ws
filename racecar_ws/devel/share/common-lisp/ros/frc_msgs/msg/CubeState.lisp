; Auto-generated. Do not edit!


(cl:in-package frc_msgs-msg)


;//! \htmlinclude CubeState.msg.html

(cl:defclass <CubeState> (roslisp-msg-protocol:ros-message)
  ((clamp
    :reader clamp
    :initarg :clamp
    :type cl:boolean
    :initform cl:nil)
   (intake_high
    :reader intake_high
    :initarg :intake_high
    :type cl:boolean
    :initform cl:nil)
   (intake_low
    :reader intake_low
    :initarg :intake_low
    :type cl:boolean
    :initform cl:nil)
   (has_cube
    :reader has_cube
    :initarg :has_cube
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CubeState (<CubeState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CubeState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CubeState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frc_msgs-msg:<CubeState> is deprecated: use frc_msgs-msg:CubeState instead.")))

(cl:ensure-generic-function 'clamp-val :lambda-list '(m))
(cl:defmethod clamp-val ((m <CubeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:clamp-val is deprecated.  Use frc_msgs-msg:clamp instead.")
  (clamp m))

(cl:ensure-generic-function 'intake_high-val :lambda-list '(m))
(cl:defmethod intake_high-val ((m <CubeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:intake_high-val is deprecated.  Use frc_msgs-msg:intake_high instead.")
  (intake_high m))

(cl:ensure-generic-function 'intake_low-val :lambda-list '(m))
(cl:defmethod intake_low-val ((m <CubeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:intake_low-val is deprecated.  Use frc_msgs-msg:intake_low instead.")
  (intake_low m))

(cl:ensure-generic-function 'has_cube-val :lambda-list '(m))
(cl:defmethod has_cube-val ((m <CubeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:has_cube-val is deprecated.  Use frc_msgs-msg:has_cube instead.")
  (has_cube m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CubeState>) ostream)
  "Serializes a message object of type '<CubeState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clamp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'intake_high) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'intake_low) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_cube) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CubeState>) istream)
  "Deserializes a message object of type '<CubeState>"
    (cl:setf (cl:slot-value msg 'clamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'intake_high) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'intake_low) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'has_cube) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CubeState>)))
  "Returns string type for a message object of type '<CubeState>"
  "frc_msgs/CubeState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CubeState)))
  "Returns string type for a message object of type 'CubeState"
  "frc_msgs/CubeState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CubeState>)))
  "Returns md5sum for a message object of type '<CubeState>"
  "42388bfc6bfe50e21deb636904eb309b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CubeState)))
  "Returns md5sum for a message object of type 'CubeState"
  "42388bfc6bfe50e21deb636904eb309b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CubeState>)))
  "Returns full string definition for message of type '<CubeState>"
  (cl:format cl:nil "bool clamp~%bool intake_high~%bool intake_low~%bool has_cube~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CubeState)))
  "Returns full string definition for message of type 'CubeState"
  (cl:format cl:nil "bool clamp~%bool intake_high~%bool intake_low~%bool has_cube~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CubeState>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CubeState>))
  "Converts a ROS message object to a list"
  (cl:list 'CubeState
    (cl:cons ':clamp (clamp msg))
    (cl:cons ':intake_high (intake_high msg))
    (cl:cons ':intake_low (intake_low msg))
    (cl:cons ':has_cube (has_cube msg))
))
