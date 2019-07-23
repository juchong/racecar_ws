;; Auto-generated. Do not edit!


(when (boundp 'frc_msgs::RobotControllerData)
  (if (not (find-package "FRC_MSGS"))
    (make-package "FRC_MSGS"))
  (shadow 'RobotControllerData (find-package "FRC_MSGS")))
(unless (find-package "FRC_MSGS::ROBOTCONTROLLERDATA")
  (make-package "FRC_MSGS::ROBOTCONTROLLERDATA"))

(in-package "ROS")
;;//! \htmlinclude RobotControllerData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass frc_msgs::RobotControllerData
  :super ros::object
  :slots (_header _fpgaVersion _fpgaRevision _fpgaTime _userButton _isSysActive _isBrownedOut _inputVoltage _inputCurrent _voltage3V3 _current3V3 _enabled3V3 _faultCount3V3 _voltage5V _current5V _enabled5V _faultCount5V _voltage6V _current6V _enabled6V _faultCount6V _canData ))

(defmethod frc_msgs::RobotControllerData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fpgaVersion __fpgaVersion) 0)
    ((:fpgaRevision __fpgaRevision) 0)
    ((:fpgaTime __fpgaTime) 0)
    ((:userButton __userButton) nil)
    ((:isSysActive __isSysActive) nil)
    ((:isBrownedOut __isBrownedOut) nil)
    ((:inputVoltage __inputVoltage) 0.0)
    ((:inputCurrent __inputCurrent) 0.0)
    ((:voltage3V3 __voltage3V3) 0.0)
    ((:current3V3 __current3V3) 0.0)
    ((:enabled3V3 __enabled3V3) nil)
    ((:faultCount3V3 __faultCount3V3) 0)
    ((:voltage5V __voltage5V) 0.0)
    ((:current5V __current5V) 0.0)
    ((:enabled5V __enabled5V) nil)
    ((:faultCount5V __faultCount5V) 0)
    ((:voltage6V __voltage6V) 0.0)
    ((:current6V __current6V) 0.0)
    ((:enabled6V __enabled6V) nil)
    ((:faultCount6V __faultCount6V) 0)
    ((:canData __canData) (instance frc_msgs::RobotControllerCANData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _fpgaVersion (round __fpgaVersion))
   (setq _fpgaRevision (round __fpgaRevision))
   (setq _fpgaTime (round __fpgaTime))
   (setq _userButton __userButton)
   (setq _isSysActive __isSysActive)
   (setq _isBrownedOut __isBrownedOut)
   (setq _inputVoltage (float __inputVoltage))
   (setq _inputCurrent (float __inputCurrent))
   (setq _voltage3V3 (float __voltage3V3))
   (setq _current3V3 (float __current3V3))
   (setq _enabled3V3 __enabled3V3)
   (setq _faultCount3V3 (round __faultCount3V3))
   (setq _voltage5V (float __voltage5V))
   (setq _current5V (float __current5V))
   (setq _enabled5V __enabled5V)
   (setq _faultCount5V (round __faultCount5V))
   (setq _voltage6V (float __voltage6V))
   (setq _current6V (float __current6V))
   (setq _enabled6V __enabled6V)
   (setq _faultCount6V (round __faultCount6V))
   (setq _canData __canData)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fpgaVersion
   (&optional __fpgaVersion)
   (if __fpgaVersion (setq _fpgaVersion __fpgaVersion)) _fpgaVersion)
  (:fpgaRevision
   (&optional __fpgaRevision)
   (if __fpgaRevision (setq _fpgaRevision __fpgaRevision)) _fpgaRevision)
  (:fpgaTime
   (&optional __fpgaTime)
   (if __fpgaTime (setq _fpgaTime __fpgaTime)) _fpgaTime)
  (:userButton
   (&optional __userButton)
   (if __userButton (setq _userButton __userButton)) _userButton)
  (:isSysActive
   (&optional __isSysActive)
   (if __isSysActive (setq _isSysActive __isSysActive)) _isSysActive)
  (:isBrownedOut
   (&optional __isBrownedOut)
   (if __isBrownedOut (setq _isBrownedOut __isBrownedOut)) _isBrownedOut)
  (:inputVoltage
   (&optional __inputVoltage)
   (if __inputVoltage (setq _inputVoltage __inputVoltage)) _inputVoltage)
  (:inputCurrent
   (&optional __inputCurrent)
   (if __inputCurrent (setq _inputCurrent __inputCurrent)) _inputCurrent)
  (:voltage3V3
   (&optional __voltage3V3)
   (if __voltage3V3 (setq _voltage3V3 __voltage3V3)) _voltage3V3)
  (:current3V3
   (&optional __current3V3)
   (if __current3V3 (setq _current3V3 __current3V3)) _current3V3)
  (:enabled3V3
   (&optional __enabled3V3)
   (if __enabled3V3 (setq _enabled3V3 __enabled3V3)) _enabled3V3)
  (:faultCount3V3
   (&optional __faultCount3V3)
   (if __faultCount3V3 (setq _faultCount3V3 __faultCount3V3)) _faultCount3V3)
  (:voltage5V
   (&optional __voltage5V)
   (if __voltage5V (setq _voltage5V __voltage5V)) _voltage5V)
  (:current5V
   (&optional __current5V)
   (if __current5V (setq _current5V __current5V)) _current5V)
  (:enabled5V
   (&optional __enabled5V)
   (if __enabled5V (setq _enabled5V __enabled5V)) _enabled5V)
  (:faultCount5V
   (&optional __faultCount5V)
   (if __faultCount5V (setq _faultCount5V __faultCount5V)) _faultCount5V)
  (:voltage6V
   (&optional __voltage6V)
   (if __voltage6V (setq _voltage6V __voltage6V)) _voltage6V)
  (:current6V
   (&optional __current6V)
   (if __current6V (setq _current6V __current6V)) _current6V)
  (:enabled6V
   (&optional __enabled6V)
   (if __enabled6V (setq _enabled6V __enabled6V)) _enabled6V)
  (:faultCount6V
   (&optional __faultCount6V)
   (if __faultCount6V (setq _faultCount6V __faultCount6V)) _faultCount6V)
  (:canData
   (&rest __canData)
   (if (keywordp (car __canData))
       (send* _canData __canData)
     (progn
       (if __canData (setq _canData (car __canData)))
       _canData)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _fpgaVersion
    4
    ;; int64 _fpgaRevision
    8
    ;; uint64 _fpgaTime
    8
    ;; bool _userButton
    1
    ;; bool _isSysActive
    1
    ;; bool _isBrownedOut
    1
    ;; float64 _inputVoltage
    8
    ;; float64 _inputCurrent
    8
    ;; float64 _voltage3V3
    8
    ;; float64 _current3V3
    8
    ;; bool _enabled3V3
    1
    ;; int32 _faultCount3V3
    4
    ;; float64 _voltage5V
    8
    ;; float64 _current5V
    8
    ;; bool _enabled5V
    1
    ;; int32 _faultCount5V
    4
    ;; float64 _voltage6V
    8
    ;; float64 _current6V
    8
    ;; bool _enabled6V
    1
    ;; int32 _faultCount6V
    4
    ;; frc_msgs/RobotControllerCANData _canData
    (send _canData :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _fpgaVersion
       (write-long _fpgaVersion s)
     ;; int64 _fpgaRevision
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _fpgaRevision (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _fpgaRevision) (= (length (_fpgaRevision . bv)) 2)) ;; bignum
              (write-long (ash (elt (_fpgaRevision . bv) 0) 0) s)
              (write-long (ash (elt (_fpgaRevision . bv) 1) -1) s))
             ((and (class _fpgaRevision) (= (length (_fpgaRevision . bv)) 1)) ;; big1
              (write-long (elt (_fpgaRevision . bv) 0) s)
              (write-long (if (>= _fpgaRevision 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _fpgaRevision s)(write-long (if (>= _fpgaRevision 0) 0 #xffffffff) s)))
     ;; uint64 _fpgaTime
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _fpgaTime (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _fpgaTime) (= (length (_fpgaTime . bv)) 2)) ;; bignum
              (write-long (ash (elt (_fpgaTime . bv) 0) 0) s)
              (write-long (ash (elt (_fpgaTime . bv) 1) -1) s))
             ((and (class _fpgaTime) (= (length (_fpgaTime . bv)) 1)) ;; big1
              (write-long (elt (_fpgaTime . bv) 0) s)
              (write-long (if (>= _fpgaTime 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _fpgaTime s)(write-long (if (>= _fpgaTime 0) 0 #xffffffff) s)))
     ;; bool _userButton
       (if _userButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _isSysActive
       (if _isSysActive (write-byte -1 s) (write-byte 0 s))
     ;; bool _isBrownedOut
       (if _isBrownedOut (write-byte -1 s) (write-byte 0 s))
     ;; float64 _inputVoltage
       (sys::poke _inputVoltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _inputCurrent
       (sys::poke _inputCurrent (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _voltage3V3
       (sys::poke _voltage3V3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current3V3
       (sys::poke _current3V3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _enabled3V3
       (if _enabled3V3 (write-byte -1 s) (write-byte 0 s))
     ;; int32 _faultCount3V3
       (write-long _faultCount3V3 s)
     ;; float64 _voltage5V
       (sys::poke _voltage5V (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current5V
       (sys::poke _current5V (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _enabled5V
       (if _enabled5V (write-byte -1 s) (write-byte 0 s))
     ;; int32 _faultCount5V
       (write-long _faultCount5V s)
     ;; float64 _voltage6V
       (sys::poke _voltage6V (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current6V
       (sys::poke _current6V (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _enabled6V
       (if _enabled6V (write-byte -1 s) (write-byte 0 s))
     ;; int32 _faultCount6V
       (write-long _faultCount6V s)
     ;; frc_msgs/RobotControllerCANData _canData
       (send _canData :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _fpgaVersion
     (setq _fpgaVersion (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int64 _fpgaRevision
#+(or :alpha :irix6 :x86_64)
      (setf _fpgaRevision (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _fpgaRevision (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _fpgaTime
     
#+(or :alpha :irix6 :x86_64)
      (setf _fpgaTime (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _fpgaTime (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _userButton
     (setq _userButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isSysActive
     (setq _isSysActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isBrownedOut
     (setq _isBrownedOut (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _inputVoltage
     (setq _inputVoltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _inputCurrent
     (setq _inputCurrent (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _voltage3V3
     (setq _voltage3V3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current3V3
     (setq _current3V3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _enabled3V3
     (setq _enabled3V3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _faultCount3V3
     (setq _faultCount3V3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _voltage5V
     (setq _voltage5V (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current5V
     (setq _current5V (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _enabled5V
     (setq _enabled5V (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _faultCount5V
     (setq _faultCount5V (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _voltage6V
     (setq _voltage6V (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current6V
     (setq _current6V (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _enabled6V
     (setq _enabled6V (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _faultCount6V
     (setq _faultCount6V (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; frc_msgs/RobotControllerCANData _canData
     (send _canData :deserialize buf ptr-) (incf ptr- (send _canData :serialization-length))
   ;;
   self)
  )

(setf (get frc_msgs::RobotControllerData :md5sum-) "bd038fd2805831a80b16311cd50a4a1d")
(setf (get frc_msgs::RobotControllerData :datatype-) "frc_msgs/RobotControllerData")
(setf (get frc_msgs::RobotControllerData :definition-)
      "Header header

int32 fpgaVersion
int64 fpgaRevision
uint64 fpgaTime
bool userButton
bool isSysActive
bool isBrownedOut
float64 inputVoltage
float64 inputCurrent
float64 voltage3V3
float64 current3V3
bool enabled3V3
int32 faultCount3V3
float64 voltage5V
float64 current5V
bool enabled5V
int32 faultCount5V
float64 voltage6V
float64 current6V
bool enabled6V
int32 faultCount6V
RobotControllerCANData canData

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

================================================================================
MSG: frc_msgs/RobotControllerCANData
float32 percentBusUtilization
int32 busOffCount
int32 txFullCount
int32 receiveErrorCount
int32 transmitErrorCount

")



(provide :frc_msgs/RobotControllerData "bd038fd2805831a80b16311cd50a4a1d")


