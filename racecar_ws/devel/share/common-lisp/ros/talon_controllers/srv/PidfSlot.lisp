; Auto-generated. Do not edit!


(cl:in-package talon_controllers-srv)


;//! \htmlinclude PidfSlot-request.msg.html

(cl:defclass <PidfSlot-request> (roslisp-msg-protocol:ros-message)
  ((pidf_slot
    :reader pidf_slot
    :initarg :pidf_slot
    :type cl:integer
    :initform 0))
)

(cl:defclass PidfSlot-request (<PidfSlot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PidfSlot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PidfSlot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talon_controllers-srv:<PidfSlot-request> is deprecated: use talon_controllers-srv:PidfSlot-request instead.")))

(cl:ensure-generic-function 'pidf_slot-val :lambda-list '(m))
(cl:defmethod pidf_slot-val ((m <PidfSlot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_controllers-srv:pidf_slot-val is deprecated.  Use talon_controllers-srv:pidf_slot instead.")
  (pidf_slot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PidfSlot-request>) ostream)
  "Serializes a message object of type '<PidfSlot-request>"
  (cl:let* ((signed (cl:slot-value msg 'pidf_slot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PidfSlot-request>) istream)
  "Deserializes a message object of type '<PidfSlot-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pidf_slot) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PidfSlot-request>)))
  "Returns string type for a service object of type '<PidfSlot-request>"
  "talon_controllers/PidfSlotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PidfSlot-request)))
  "Returns string type for a service object of type 'PidfSlot-request"
  "talon_controllers/PidfSlotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PidfSlot-request>)))
  "Returns md5sum for a message object of type '<PidfSlot-request>"
  "699888169b1a41d28b65c42d5f593b44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PidfSlot-request)))
  "Returns md5sum for a message object of type 'PidfSlot-request"
  "699888169b1a41d28b65c42d5f593b44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PidfSlot-request>)))
  "Returns full string definition for message of type '<PidfSlot-request>"
  (cl:format cl:nil "int32 pidf_slot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PidfSlot-request)))
  "Returns full string definition for message of type 'PidfSlot-request"
  (cl:format cl:nil "int32 pidf_slot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PidfSlot-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PidfSlot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PidfSlot-request
    (cl:cons ':pidf_slot (pidf_slot msg))
))
;//! \htmlinclude PidfSlot-response.msg.html

(cl:defclass <PidfSlot-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PidfSlot-response (<PidfSlot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PidfSlot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PidfSlot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talon_controllers-srv:<PidfSlot-response> is deprecated: use talon_controllers-srv:PidfSlot-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PidfSlot-response>) ostream)
  "Serializes a message object of type '<PidfSlot-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PidfSlot-response>) istream)
  "Deserializes a message object of type '<PidfSlot-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PidfSlot-response>)))
  "Returns string type for a service object of type '<PidfSlot-response>"
  "talon_controllers/PidfSlotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PidfSlot-response)))
  "Returns string type for a service object of type 'PidfSlot-response"
  "talon_controllers/PidfSlotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PidfSlot-response>)))
  "Returns md5sum for a message object of type '<PidfSlot-response>"
  "699888169b1a41d28b65c42d5f593b44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PidfSlot-response)))
  "Returns md5sum for a message object of type 'PidfSlot-response"
  "699888169b1a41d28b65c42d5f593b44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PidfSlot-response>)))
  "Returns full string definition for message of type '<PidfSlot-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PidfSlot-response)))
  "Returns full string definition for message of type 'PidfSlot-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PidfSlot-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PidfSlot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PidfSlot-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PidfSlot)))
  'PidfSlot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PidfSlot)))
  'PidfSlot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PidfSlot)))
  "Returns string type for a service object of type '<PidfSlot>"
  "talon_controllers/PidfSlot")