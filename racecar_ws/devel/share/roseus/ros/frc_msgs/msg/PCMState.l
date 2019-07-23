;; Auto-generated. Do not edit!


(when (boundp 'frc_msgs::PCMState)
  (if (not (find-package "FRC_MSGS"))
    (make-package "FRC_MSGS"))
  (shadow 'PCMState (find-package "FRC_MSGS")))
(unless (find-package "FRC_MSGS::PCMSTATE")
  (make-package "FRC_MSGS::PCMSTATE"))

(in-package "ROS")
;;//! \htmlinclude PCMState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass frc_msgs::PCMState
  :super ros::object
  :slots (_header _name _pcm_id _enabled _pressure_switch _compressor_current _closed_loop_control _current_too_high _current_too_high_sticky _shorted _shorted_sticky _not_connected _not_connected_sticky _voltage_fault _voltage_sticky_fault _solenoid_blacklist ))

(defmethod frc_msgs::PCMState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:pcm_id __pcm_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:enabled __enabled) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:pressure_switch __pressure_switch) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:compressor_current __compressor_current) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:closed_loop_control __closed_loop_control) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:current_too_high __current_too_high) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:current_too_high_sticky __current_too_high_sticky) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:shorted __shorted) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:shorted_sticky __shorted_sticky) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:not_connected __not_connected) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:not_connected_sticky __not_connected_sticky) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:voltage_fault __voltage_fault) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:voltage_sticky_fault __voltage_sticky_fault) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:solenoid_blacklist __solenoid_blacklist) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _pcm_id __pcm_id)
   (setq _enabled __enabled)
   (setq _pressure_switch __pressure_switch)
   (setq _compressor_current __compressor_current)
   (setq _closed_loop_control __closed_loop_control)
   (setq _current_too_high __current_too_high)
   (setq _current_too_high_sticky __current_too_high_sticky)
   (setq _shorted __shorted)
   (setq _shorted_sticky __shorted_sticky)
   (setq _not_connected __not_connected)
   (setq _not_connected_sticky __not_connected_sticky)
   (setq _voltage_fault __voltage_fault)
   (setq _voltage_sticky_fault __voltage_sticky_fault)
   (setq _solenoid_blacklist __solenoid_blacklist)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:pcm_id
   (&optional __pcm_id)
   (if __pcm_id (setq _pcm_id __pcm_id)) _pcm_id)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:pressure_switch
   (&optional __pressure_switch)
   (if __pressure_switch (setq _pressure_switch __pressure_switch)) _pressure_switch)
  (:compressor_current
   (&optional __compressor_current)
   (if __compressor_current (setq _compressor_current __compressor_current)) _compressor_current)
  (:closed_loop_control
   (&optional __closed_loop_control)
   (if __closed_loop_control (setq _closed_loop_control __closed_loop_control)) _closed_loop_control)
  (:current_too_high
   (&optional __current_too_high)
   (if __current_too_high (setq _current_too_high __current_too_high)) _current_too_high)
  (:current_too_high_sticky
   (&optional __current_too_high_sticky)
   (if __current_too_high_sticky (setq _current_too_high_sticky __current_too_high_sticky)) _current_too_high_sticky)
  (:shorted
   (&optional __shorted)
   (if __shorted (setq _shorted __shorted)) _shorted)
  (:shorted_sticky
   (&optional __shorted_sticky)
   (if __shorted_sticky (setq _shorted_sticky __shorted_sticky)) _shorted_sticky)
  (:not_connected
   (&optional __not_connected)
   (if __not_connected (setq _not_connected __not_connected)) _not_connected)
  (:not_connected_sticky
   (&optional __not_connected_sticky)
   (if __not_connected_sticky (setq _not_connected_sticky __not_connected_sticky)) _not_connected_sticky)
  (:voltage_fault
   (&optional __voltage_fault)
   (if __voltage_fault (setq _voltage_fault __voltage_fault)) _voltage_fault)
  (:voltage_sticky_fault
   (&optional __voltage_sticky_fault)
   (if __voltage_sticky_fault (setq _voltage_sticky_fault __voltage_sticky_fault)) _voltage_sticky_fault)
  (:solenoid_blacklist
   (&optional __solenoid_blacklist)
   (if __solenoid_blacklist (setq _solenoid_blacklist __solenoid_blacklist)) _solenoid_blacklist)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; int32[] _pcm_id
    (* 4    (length _pcm_id)) 4
    ;; bool[] _enabled
    (* 1    (length _enabled)) 4
    ;; bool[] _pressure_switch
    (* 1    (length _pressure_switch)) 4
    ;; float64[] _compressor_current
    (* 8    (length _compressor_current)) 4
    ;; bool[] _closed_loop_control
    (* 1    (length _closed_loop_control)) 4
    ;; bool[] _current_too_high
    (* 1    (length _current_too_high)) 4
    ;; bool[] _current_too_high_sticky
    (* 1    (length _current_too_high_sticky)) 4
    ;; bool[] _shorted
    (* 1    (length _shorted)) 4
    ;; bool[] _shorted_sticky
    (* 1    (length _shorted_sticky)) 4
    ;; bool[] _not_connected
    (* 1    (length _not_connected)) 4
    ;; bool[] _not_connected_sticky
    (* 1    (length _not_connected_sticky)) 4
    ;; bool[] _voltage_fault
    (* 1    (length _voltage_fault)) 4
    ;; bool[] _voltage_sticky_fault
    (* 1    (length _voltage_sticky_fault)) 4
    ;; uint32[] _solenoid_blacklist
    (* 4    (length _solenoid_blacklist)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _pcm_id
     (write-long (length _pcm_id) s)
     (dotimes (i (length _pcm_id))
       (write-long (elt _pcm_id i) s)
       )
     ;; bool[] _enabled
     (write-long (length _enabled) s)
     (dotimes (i (length _enabled))
       (if (elt _enabled i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _pressure_switch
     (write-long (length _pressure_switch) s)
     (dotimes (i (length _pressure_switch))
       (if (elt _pressure_switch i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float64[] _compressor_current
     (write-long (length _compressor_current) s)
     (dotimes (i (length _compressor_current))
       (sys::poke (elt _compressor_current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool[] _closed_loop_control
     (write-long (length _closed_loop_control) s)
     (dotimes (i (length _closed_loop_control))
       (if (elt _closed_loop_control i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _current_too_high
     (write-long (length _current_too_high) s)
     (dotimes (i (length _current_too_high))
       (if (elt _current_too_high i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _current_too_high_sticky
     (write-long (length _current_too_high_sticky) s)
     (dotimes (i (length _current_too_high_sticky))
       (if (elt _current_too_high_sticky i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _shorted
     (write-long (length _shorted) s)
     (dotimes (i (length _shorted))
       (if (elt _shorted i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _shorted_sticky
     (write-long (length _shorted_sticky) s)
     (dotimes (i (length _shorted_sticky))
       (if (elt _shorted_sticky i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _not_connected
     (write-long (length _not_connected) s)
     (dotimes (i (length _not_connected))
       (if (elt _not_connected i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _not_connected_sticky
     (write-long (length _not_connected_sticky) s)
     (dotimes (i (length _not_connected_sticky))
       (if (elt _not_connected_sticky i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _voltage_fault
     (write-long (length _voltage_fault) s)
     (dotimes (i (length _voltage_fault))
       (if (elt _voltage_fault i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _voltage_sticky_fault
     (write-long (length _voltage_sticky_fault) s)
     (dotimes (i (length _voltage_sticky_fault))
       (if (elt _voltage_sticky_fault i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; uint32[] _solenoid_blacklist
     (write-long (length _solenoid_blacklist) s)
     (dotimes (i (length _solenoid_blacklist))
       (write-long (elt _solenoid_blacklist i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _pcm_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pcm_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pcm_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _enabled
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _enabled (make-list n))
     (dotimes (i n)
     (setf (elt _enabled i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _pressure_switch
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pressure_switch (make-list n))
     (dotimes (i n)
     (setf (elt _pressure_switch i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float64[] _compressor_current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _compressor_current (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _compressor_current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool[] _closed_loop_control
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _closed_loop_control (make-list n))
     (dotimes (i n)
     (setf (elt _closed_loop_control i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _current_too_high
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_too_high (make-list n))
     (dotimes (i n)
     (setf (elt _current_too_high i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _current_too_high_sticky
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_too_high_sticky (make-list n))
     (dotimes (i n)
     (setf (elt _current_too_high_sticky i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _shorted
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shorted (make-list n))
     (dotimes (i n)
     (setf (elt _shorted i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _shorted_sticky
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shorted_sticky (make-list n))
     (dotimes (i n)
     (setf (elt _shorted_sticky i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _not_connected
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _not_connected (make-list n))
     (dotimes (i n)
     (setf (elt _not_connected i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _not_connected_sticky
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _not_connected_sticky (make-list n))
     (dotimes (i n)
     (setf (elt _not_connected_sticky i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _voltage_fault
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage_fault (make-list n))
     (dotimes (i n)
     (setf (elt _voltage_fault i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _voltage_sticky_fault
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage_sticky_fault (make-list n))
     (dotimes (i n)
     (setf (elt _voltage_sticky_fault i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; uint32[] _solenoid_blacklist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _solenoid_blacklist (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _solenoid_blacklist i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get frc_msgs::PCMState :md5sum-) "81c063a265e9b3f14b664414961808c7")
(setf (get frc_msgs::PCMState :datatype-) "frc_msgs/PCMState")
(setf (get frc_msgs::PCMState :definition-)
      "Header   header

string[]  name
int32[]   pcm_id
bool[]    enabled
bool[]    pressure_switch
float64[] compressor_current
bool[]    closed_loop_control
bool[]    current_too_high
bool[]    current_too_high_sticky
bool[]    shorted
bool[]    shorted_sticky
bool[]    not_connected
bool[]    not_connected_sticky
bool[]    voltage_fault
bool[]    voltage_sticky_fault
uint32[]  solenoid_blacklist

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



(provide :frc_msgs/PCMState "81c063a265e9b3f14b664414961808c7")


