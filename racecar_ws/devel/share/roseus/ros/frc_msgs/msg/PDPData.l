;; Auto-generated. Do not edit!


(when (boundp 'frc_msgs::PDPData)
  (if (not (find-package "FRC_MSGS"))
    (make-package "FRC_MSGS"))
  (shadow 'PDPData (find-package "FRC_MSGS")))
(unless (find-package "FRC_MSGS::PDPDATA")
  (make-package "FRC_MSGS::PDPDATA"))

(in-package "ROS")
;;//! \htmlinclude PDPData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass frc_msgs::PDPData
  :super ros::object
  :slots (_header _voltage _temperature _totalCurrent _totalPower _totalEnergy _current ))

(defmethod frc_msgs::PDPData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:voltage __voltage) 0.0)
    ((:temperature __temperature) 0.0)
    ((:totalCurrent __totalCurrent) 0.0)
    ((:totalPower __totalPower) 0.0)
    ((:totalEnergy __totalEnergy) 0.0)
    ((:current __current) (make-array 16 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _voltage (float __voltage))
   (setq _temperature (float __temperature))
   (setq _totalCurrent (float __totalCurrent))
   (setq _totalPower (float __totalPower))
   (setq _totalEnergy (float __totalEnergy))
   (setq _current __current)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:totalCurrent
   (&optional __totalCurrent)
   (if __totalCurrent (setq _totalCurrent __totalCurrent)) _totalCurrent)
  (:totalPower
   (&optional __totalPower)
   (if __totalPower (setq _totalPower __totalPower)) _totalPower)
  (:totalEnergy
   (&optional __totalEnergy)
   (if __totalEnergy (setq _totalEnergy __totalEnergy)) _totalEnergy)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _voltage
    8
    ;; float64 _temperature
    8
    ;; float64 _totalCurrent
    8
    ;; float64 _totalPower
    8
    ;; float64 _totalEnergy
    8
    ;; float64[16] _current
    (* 8    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _totalCurrent
       (sys::poke _totalCurrent (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _totalPower
       (sys::poke _totalPower (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _totalEnergy
       (sys::poke _totalEnergy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[16] _current
     (dotimes (i 16)
       (sys::poke (elt _current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _voltage
     (setq _voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _totalCurrent
     (setq _totalCurrent (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _totalPower
     (setq _totalPower (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _totalEnergy
     (setq _totalEnergy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[16] _current
   (dotimes (i (length _current))
     (setf (elt _current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get frc_msgs::PDPData :md5sum-) "0499c093ceea29bec4557205d989a1c6")
(setf (get frc_msgs::PDPData :datatype-) "frc_msgs/PDPData")
(setf (get frc_msgs::PDPData :definition-)
      "Header header

float64 voltage
float64 temperature
float64 totalCurrent
float64 totalPower
float64 totalEnergy

float64[16] current

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



(provide :frc_msgs/PDPData "0499c093ceea29bec4557205d989a1c6")


