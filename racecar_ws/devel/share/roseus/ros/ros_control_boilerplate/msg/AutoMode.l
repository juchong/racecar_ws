;; Auto-generated. Do not edit!


(when (boundp 'ros_control_boilerplate::AutoMode)
  (if (not (find-package "ROS_CONTROL_BOILERPLATE"))
    (make-package "ROS_CONTROL_BOILERPLATE"))
  (shadow 'AutoMode (find-package "ROS_CONTROL_BOILERPLATE")))
(unless (find-package "ROS_CONTROL_BOILERPLATE::AUTOMODE")
  (make-package "ROS_CONTROL_BOILERPLATE::AUTOMODE"))

(in-package "ROS")
;;//! \htmlinclude AutoMode.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_control_boilerplate::AutoMode
  :super ros::object
  :slots (_header _mode _delays _position ))

(defmethod ros_control_boilerplate::AutoMode
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) (make-array 0 :initial-element 0 :element-type :integer))
    ((:delays __delays) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode __mode)
   (setq _delays __delays)
   (setq _position (round __position))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:delays
   (&optional __delays)
   (if __delays (setq _delays __delays)) _delays)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _mode
    (* 4    (length _mode)) 4
    ;; float64[] _delays
    (* 8    (length _delays)) 4
    ;; int32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _mode
     (write-long (length _mode) s)
     (dotimes (i (length _mode))
       (write-long (elt _mode i) s)
       )
     ;; float64[] _delays
     (write-long (length _delays) s)
     (dotimes (i (length _delays))
       (sys::poke (elt _delays i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _position
       (write-long _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _mode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mode (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _mode i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _delays
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _delays (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _delays i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_control_boilerplate::AutoMode :md5sum-) "9d4724fa280e34f6f045b31bdcf1105d")
(setf (get ros_control_boilerplate::AutoMode :datatype-) "ros_control_boilerplate/AutoMode")
(setf (get ros_control_boilerplate::AutoMode :definition-)
      "Header header
int32[] mode
float64[] delays
int32 position

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



(provide :ros_control_boilerplate/AutoMode "9d4724fa280e34f6f045b31bdcf1105d")


