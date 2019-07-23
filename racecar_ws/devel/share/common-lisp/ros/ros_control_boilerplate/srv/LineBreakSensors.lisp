; Auto-generated. Do not edit!


(cl:in-package ros_control_boilerplate-srv)


;//! \htmlinclude LineBreakSensors-request.msg.html

(cl:defclass <LineBreakSensors-request> (roslisp-msg-protocol:ros-message)
  ((j
    :reader j
    :initarg :j
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LineBreakSensors-request (<LineBreakSensors-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineBreakSensors-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineBreakSensors-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_control_boilerplate-srv:<LineBreakSensors-request> is deprecated: use ros_control_boilerplate-srv:LineBreakSensors-request instead.")))

(cl:ensure-generic-function 'j-val :lambda-list '(m))
(cl:defmethod j-val ((m <LineBreakSensors-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-srv:j-val is deprecated.  Use ros_control_boilerplate-srv:j instead.")
  (j m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LineBreakSensors-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-srv:value-val is deprecated.  Use ros_control_boilerplate-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineBreakSensors-request>) ostream)
  "Serializes a message object of type '<LineBreakSensors-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'j)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'j)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'j)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'j)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'j)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'j)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'j)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'j)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineBreakSensors-request>) istream)
  "Deserializes a message object of type '<LineBreakSensors-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'j)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'j)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'j)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'j)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'j)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'j)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'j)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'j)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineBreakSensors-request>)))
  "Returns string type for a service object of type '<LineBreakSensors-request>"
  "ros_control_boilerplate/LineBreakSensorsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineBreakSensors-request)))
  "Returns string type for a service object of type 'LineBreakSensors-request"
  "ros_control_boilerplate/LineBreakSensorsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineBreakSensors-request>)))
  "Returns md5sum for a message object of type '<LineBreakSensors-request>"
  "0162edbbc243aaa4ac88fdc1acd8d433")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineBreakSensors-request)))
  "Returns md5sum for a message object of type 'LineBreakSensors-request"
  "0162edbbc243aaa4ac88fdc1acd8d433")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineBreakSensors-request>)))
  "Returns full string definition for message of type '<LineBreakSensors-request>"
  (cl:format cl:nil "uint64 j~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineBreakSensors-request)))
  "Returns full string definition for message of type 'LineBreakSensors-request"
  (cl:format cl:nil "uint64 j~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineBreakSensors-request>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineBreakSensors-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LineBreakSensors-request
    (cl:cons ':j (j msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude LineBreakSensors-response.msg.html

(cl:defclass <LineBreakSensors-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LineBreakSensors-response (<LineBreakSensors-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineBreakSensors-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineBreakSensors-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_control_boilerplate-srv:<LineBreakSensors-response> is deprecated: use ros_control_boilerplate-srv:LineBreakSensors-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineBreakSensors-response>) ostream)
  "Serializes a message object of type '<LineBreakSensors-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineBreakSensors-response>) istream)
  "Deserializes a message object of type '<LineBreakSensors-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineBreakSensors-response>)))
  "Returns string type for a service object of type '<LineBreakSensors-response>"
  "ros_control_boilerplate/LineBreakSensorsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineBreakSensors-response)))
  "Returns string type for a service object of type 'LineBreakSensors-response"
  "ros_control_boilerplate/LineBreakSensorsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineBreakSensors-response>)))
  "Returns md5sum for a message object of type '<LineBreakSensors-response>"
  "0162edbbc243aaa4ac88fdc1acd8d433")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineBreakSensors-response)))
  "Returns md5sum for a message object of type 'LineBreakSensors-response"
  "0162edbbc243aaa4ac88fdc1acd8d433")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineBreakSensors-response>)))
  "Returns full string definition for message of type '<LineBreakSensors-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineBreakSensors-response)))
  "Returns full string definition for message of type 'LineBreakSensors-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineBreakSensors-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineBreakSensors-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LineBreakSensors-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LineBreakSensors)))
  'LineBreakSensors-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LineBreakSensors)))
  'LineBreakSensors-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineBreakSensors)))
  "Returns string type for a service object of type '<LineBreakSensors>"
  "ros_control_boilerplate/LineBreakSensors")