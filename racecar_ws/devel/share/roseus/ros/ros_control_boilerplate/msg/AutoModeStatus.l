;; Auto-generated. Do not edit!


(when (boundp 'ros_control_boilerplate::AutoModeStatus)
  (if (not (find-package "ROS_CONTROL_BOILERPLATE"))
    (make-package "ROS_CONTROL_BOILERPLATE"))
  (shadow 'AutoModeStatus (find-package "ROS_CONTROL_BOILERPLATE")))
(unless (find-package "ROS_CONTROL_BOILERPLATE::AUTOMODESTATUS")
  (make-package "ROS_CONTROL_BOILERPLATE::AUTOMODESTATUS"))

(in-package "ROS")
;;//! \htmlinclude AutoModeStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_control_boilerplate::AutoModeStatus
  :super ros::object
  :slots (_header _auto_mode_status ))

(defmethod ros_control_boilerplate::AutoModeStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:auto_mode_status __auto_mode_status) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _auto_mode_status __auto_mode_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:auto_mode_status
   (&optional __auto_mode_status)
   (if __auto_mode_status (setq _auto_mode_status __auto_mode_status)) _auto_mode_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool[] _auto_mode_status
    (* 1    (length _auto_mode_status)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool[] _auto_mode_status
     (write-long (length _auto_mode_status) s)
     (dotimes (i (length _auto_mode_status))
       (if (elt _auto_mode_status i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool[] _auto_mode_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _auto_mode_status (make-list n))
     (dotimes (i n)
     (setf (elt _auto_mode_status i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get ros_control_boilerplate::AutoModeStatus :md5sum-) "a8966a54ec839560d333a091630a8057")
(setf (get ros_control_boilerplate::AutoModeStatus :datatype-) "ros_control_boilerplate/AutoModeStatus")
(setf (get ros_control_boilerplate::AutoModeStatus :definition-)
      "Header header

bool[] auto_mode_status

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

")



(provide :ros_control_boilerplate/AutoModeStatus "a8966a54ec839560d333a091630a8057")


