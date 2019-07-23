;; Auto-generated. Do not edit!


(when (boundp 'frc_msgs::MatchSpecificData)
  (if (not (find-package "FRC_MSGS"))
    (make-package "FRC_MSGS"))
  (shadow 'MatchSpecificData (find-package "FRC_MSGS")))
(unless (find-package "FRC_MSGS::MATCHSPECIFICDATA")
  (make-package "FRC_MSGS::MATCHSPECIFICDATA"))

(in-package "ROS")
;;//! \htmlinclude MatchSpecificData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass frc_msgs::MatchSpecificData
  :super ros::object
  :slots (_header _eventName _matchType _matchNumber _replayNumber _matchTimeRemaining _allianceColor _driverStationLocation _gameSpecificData _Enabled _Disabled _Autonomous _Test _FMSAttached _DSAttached _OperatorControl _BatteryVoltage ))

(defmethod frc_msgs::MatchSpecificData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:eventName __eventName) "")
    ((:matchType __matchType) 0)
    ((:matchNumber __matchNumber) 0)
    ((:replayNumber __replayNumber) 0)
    ((:matchTimeRemaining __matchTimeRemaining) 0.0)
    ((:allianceColor __allianceColor) 0)
    ((:driverStationLocation __driverStationLocation) 0)
    ((:gameSpecificData __gameSpecificData) "")
    ((:Enabled __Enabled) nil)
    ((:Disabled __Disabled) nil)
    ((:Autonomous __Autonomous) nil)
    ((:Test __Test) nil)
    ((:FMSAttached __FMSAttached) nil)
    ((:DSAttached __DSAttached) nil)
    ((:OperatorControl __OperatorControl) nil)
    ((:BatteryVoltage __BatteryVoltage) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _eventName (string __eventName))
   (setq _matchType (round __matchType))
   (setq _matchNumber (round __matchNumber))
   (setq _replayNumber (round __replayNumber))
   (setq _matchTimeRemaining (float __matchTimeRemaining))
   (setq _allianceColor (round __allianceColor))
   (setq _driverStationLocation (round __driverStationLocation))
   (setq _gameSpecificData (string __gameSpecificData))
   (setq _Enabled __Enabled)
   (setq _Disabled __Disabled)
   (setq _Autonomous __Autonomous)
   (setq _Test __Test)
   (setq _FMSAttached __FMSAttached)
   (setq _DSAttached __DSAttached)
   (setq _OperatorControl __OperatorControl)
   (setq _BatteryVoltage (float __BatteryVoltage))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:eventName
   (&optional __eventName)
   (if __eventName (setq _eventName __eventName)) _eventName)
  (:matchType
   (&optional __matchType)
   (if __matchType (setq _matchType __matchType)) _matchType)
  (:matchNumber
   (&optional __matchNumber)
   (if __matchNumber (setq _matchNumber __matchNumber)) _matchNumber)
  (:replayNumber
   (&optional __replayNumber)
   (if __replayNumber (setq _replayNumber __replayNumber)) _replayNumber)
  (:matchTimeRemaining
   (&optional __matchTimeRemaining)
   (if __matchTimeRemaining (setq _matchTimeRemaining __matchTimeRemaining)) _matchTimeRemaining)
  (:allianceColor
   (&optional __allianceColor)
   (if __allianceColor (setq _allianceColor __allianceColor)) _allianceColor)
  (:driverStationLocation
   (&optional __driverStationLocation)
   (if __driverStationLocation (setq _driverStationLocation __driverStationLocation)) _driverStationLocation)
  (:gameSpecificData
   (&optional __gameSpecificData)
   (if __gameSpecificData (setq _gameSpecificData __gameSpecificData)) _gameSpecificData)
  (:Enabled
   (&optional __Enabled)
   (if __Enabled (setq _Enabled __Enabled)) _Enabled)
  (:Disabled
   (&optional __Disabled)
   (if __Disabled (setq _Disabled __Disabled)) _Disabled)
  (:Autonomous
   (&optional __Autonomous)
   (if __Autonomous (setq _Autonomous __Autonomous)) _Autonomous)
  (:Test
   (&optional __Test)
   (if __Test (setq _Test __Test)) _Test)
  (:FMSAttached
   (&optional __FMSAttached)
   (if __FMSAttached (setq _FMSAttached __FMSAttached)) _FMSAttached)
  (:DSAttached
   (&optional __DSAttached)
   (if __DSAttached (setq _DSAttached __DSAttached)) _DSAttached)
  (:OperatorControl
   (&optional __OperatorControl)
   (if __OperatorControl (setq _OperatorControl __OperatorControl)) _OperatorControl)
  (:BatteryVoltage
   (&optional __BatteryVoltage)
   (if __BatteryVoltage (setq _BatteryVoltage __BatteryVoltage)) _BatteryVoltage)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _eventName
    4 (length _eventName)
    ;; int8 _matchType
    1
    ;; int8 _matchNumber
    1
    ;; int8 _replayNumber
    1
    ;; float64 _matchTimeRemaining
    8
    ;; int8 _allianceColor
    1
    ;; int8 _driverStationLocation
    1
    ;; string _gameSpecificData
    4 (length _gameSpecificData)
    ;; bool _Enabled
    1
    ;; bool _Disabled
    1
    ;; bool _Autonomous
    1
    ;; bool _Test
    1
    ;; bool _FMSAttached
    1
    ;; bool _DSAttached
    1
    ;; bool _OperatorControl
    1
    ;; float64 _BatteryVoltage
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _eventName
       (write-long (length _eventName) s) (princ _eventName s)
     ;; int8 _matchType
       (write-byte _matchType s)
     ;; int8 _matchNumber
       (write-byte _matchNumber s)
     ;; int8 _replayNumber
       (write-byte _replayNumber s)
     ;; float64 _matchTimeRemaining
       (sys::poke _matchTimeRemaining (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _allianceColor
       (write-byte _allianceColor s)
     ;; int8 _driverStationLocation
       (write-byte _driverStationLocation s)
     ;; string _gameSpecificData
       (write-long (length _gameSpecificData) s) (princ _gameSpecificData s)
     ;; bool _Enabled
       (if _Enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _Disabled
       (if _Disabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _Autonomous
       (if _Autonomous (write-byte -1 s) (write-byte 0 s))
     ;; bool _Test
       (if _Test (write-byte -1 s) (write-byte 0 s))
     ;; bool _FMSAttached
       (if _FMSAttached (write-byte -1 s) (write-byte 0 s))
     ;; bool _DSAttached
       (if _DSAttached (write-byte -1 s) (write-byte 0 s))
     ;; bool _OperatorControl
       (if _OperatorControl (write-byte -1 s) (write-byte 0 s))
     ;; float64 _BatteryVoltage
       (sys::poke _BatteryVoltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _eventName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _eventName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _matchType
     (setq _matchType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _matchType 127) (setq _matchType (- _matchType 256)))
   ;; int8 _matchNumber
     (setq _matchNumber (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _matchNumber 127) (setq _matchNumber (- _matchNumber 256)))
   ;; int8 _replayNumber
     (setq _replayNumber (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _replayNumber 127) (setq _replayNumber (- _replayNumber 256)))
   ;; float64 _matchTimeRemaining
     (setq _matchTimeRemaining (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _allianceColor
     (setq _allianceColor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _allianceColor 127) (setq _allianceColor (- _allianceColor 256)))
   ;; int8 _driverStationLocation
     (setq _driverStationLocation (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _driverStationLocation 127) (setq _driverStationLocation (- _driverStationLocation 256)))
   ;; string _gameSpecificData
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gameSpecificData (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _Enabled
     (setq _Enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Disabled
     (setq _Disabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Autonomous
     (setq _Autonomous (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Test
     (setq _Test (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _FMSAttached
     (setq _FMSAttached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _DSAttached
     (setq _DSAttached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _OperatorControl
     (setq _OperatorControl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _BatteryVoltage
     (setq _BatteryVoltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get frc_msgs::MatchSpecificData :md5sum-) "841701141221f3ad34663801c6ab3c63")
(setf (get frc_msgs::MatchSpecificData :datatype-) "frc_msgs/MatchSpecificData")
(setf (get frc_msgs::MatchSpecificData :definition-)
      "Header header

string eventName
int8 matchType
int8 matchNumber
int8 replayNumber

float64 matchTimeRemaining
int8 allianceColor
int8 driverStationLocation
string gameSpecificData

bool Enabled
bool Disabled
bool Autonomous
bool Test
bool FMSAttached
bool DSAttached
bool OperatorControl

float64 BatteryVoltage

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



(provide :frc_msgs/MatchSpecificData "841701141221f3ad34663801c6ab3c63")


