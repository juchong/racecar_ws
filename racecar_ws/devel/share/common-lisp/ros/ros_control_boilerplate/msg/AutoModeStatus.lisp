; Auto-generated. Do not edit!


(cl:in-package ros_control_boilerplate-msg)


;//! \htmlinclude AutoModeStatus.msg.html

(cl:defclass <AutoModeStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (auto_mode_status
    :reader auto_mode_status
    :initarg :auto_mode_status
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass AutoModeStatus (<AutoModeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoModeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoModeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_control_boilerplate-msg:<AutoModeStatus> is deprecated: use ros_control_boilerplate-msg:AutoModeStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AutoModeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-msg:header-val is deprecated.  Use ros_control_boilerplate-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'auto_mode_status-val :lambda-list '(m))
(cl:defmethod auto_mode_status-val ((m <AutoModeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-msg:auto_mode_status-val is deprecated.  Use ros_control_boilerplate-msg:auto_mode_status instead.")
  (auto_mode_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoModeStatus>) ostream)
  "Serializes a message object of type '<AutoModeStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'auto_mode_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'auto_mode_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoModeStatus>) istream)
  "Deserializes a message object of type '<AutoModeStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'auto_mode_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'auto_mode_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoModeStatus>)))
  "Returns string type for a message object of type '<AutoModeStatus>"
  "ros_control_boilerplate/AutoModeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoModeStatus)))
  "Returns string type for a message object of type 'AutoModeStatus"
  "ros_control_boilerplate/AutoModeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoModeStatus>)))
  "Returns md5sum for a message object of type '<AutoModeStatus>"
  "a8966a54ec839560d333a091630a8057")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoModeStatus)))
  "Returns md5sum for a message object of type 'AutoModeStatus"
  "a8966a54ec839560d333a091630a8057")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoModeStatus>)))
  "Returns full string definition for message of type '<AutoModeStatus>"
  (cl:format cl:nil "Header header~%~%bool[] auto_mode_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoModeStatus)))
  "Returns full string definition for message of type 'AutoModeStatus"
  (cl:format cl:nil "Header header~%~%bool[] auto_mode_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoModeStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'auto_mode_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoModeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoModeStatus
    (cl:cons ':header (header msg))
    (cl:cons ':auto_mode_status (auto_mode_status msg))
))
