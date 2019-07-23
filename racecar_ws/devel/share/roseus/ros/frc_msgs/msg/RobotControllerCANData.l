;; Auto-generated. Do not edit!


(when (boundp 'frc_msgs::RobotControllerCANData)
  (if (not (find-package "FRC_MSGS"))
    (make-package "FRC_MSGS"))
  (shadow 'RobotControllerCANData (find-package "FRC_MSGS")))
(unless (find-package "FRC_MSGS::ROBOTCONTROLLERCANDATA")
  (make-package "FRC_MSGS::ROBOTCONTROLLERCANDATA"))

(in-package "ROS")
;;//! \htmlinclude RobotControllerCANData.msg.html


(defclass frc_msgs::RobotControllerCANData
  :super ros::object
  :slots (_percentBusUtilization _busOffCount _txFullCount _receiveErrorCount _transmitErrorCount ))

(defmethod frc_msgs::RobotControllerCANData
  (:init
   (&key
    ((:percentBusUtilization __percentBusUtilization) 0.0)
    ((:busOffCount __busOffCount) 0)
    ((:txFullCount __txFullCount) 0)
    ((:receiveErrorCount __receiveErrorCount) 0)
    ((:transmitErrorCount __transmitErrorCount) 0)
    )
   (send-super :init)
   (setq _percentBusUtilization (float __percentBusUtilization))
   (setq _busOffCount (round __busOffCount))
   (setq _txFullCount (round __txFullCount))
   (setq _receiveErrorCount (round __receiveErrorCount))
   (setq _transmitErrorCount (round __transmitErrorCount))
   self)
  (:percentBusUtilization
   (&optional __percentBusUtilization)
   (if __percentBusUtilization (setq _percentBusUtilization __percentBusUtilization)) _percentBusUtilization)
  (:busOffCount
   (&optional __busOffCount)
   (if __busOffCount (setq _busOffCount __busOffCount)) _busOffCount)
  (:txFullCount
   (&optional __txFullCount)
   (if __txFullCount (setq _txFullCount __txFullCount)) _txFullCount)
  (:receiveErrorCount
   (&optional __receiveErrorCount)
   (if __receiveErrorCount (setq _receiveErrorCount __receiveErrorCount)) _receiveErrorCount)
  (:transmitErrorCount
   (&optional __transmitErrorCount)
   (if __transmitErrorCount (setq _transmitErrorCount __transmitErrorCount)) _transmitErrorCount)
  (:serialization-length
   ()
   (+
    ;; float32 _percentBusUtilization
    4
    ;; int32 _busOffCount
    4
    ;; int32 _txFullCount
    4
    ;; int32 _receiveErrorCount
    4
    ;; int32 _transmitErrorCount
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _percentBusUtilization
       (sys::poke _percentBusUtilization (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _busOffCount
       (write-long _busOffCount s)
     ;; int32 _txFullCount
       (write-long _txFullCount s)
     ;; int32 _receiveErrorCount
       (write-long _receiveErrorCount s)
     ;; int32 _transmitErrorCount
       (write-long _transmitErrorCount s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _percentBusUtilization
     (setq _percentBusUtilization (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _busOffCount
     (setq _busOffCount (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _txFullCount
     (setq _txFullCount (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _receiveErrorCount
     (setq _receiveErrorCount (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _transmitErrorCount
     (setq _transmitErrorCount (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get frc_msgs::RobotControllerCANData :md5sum-) "14b84f7dc25f03687604ab1fd7c46f75")
(setf (get frc_msgs::RobotControllerCANData :datatype-) "frc_msgs/RobotControllerCANData")
(setf (get frc_msgs::RobotControllerCANData :definition-)
      "float32 percentBusUtilization
int32 busOffCount
int32 txFullCount
int32 receiveErrorCount
int32 transmitErrorCount

")



(provide :frc_msgs/RobotControllerCANData "14b84f7dc25f03687604ab1fd7c46f75")


