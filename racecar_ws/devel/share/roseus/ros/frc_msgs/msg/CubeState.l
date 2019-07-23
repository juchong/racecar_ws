;; Auto-generated. Do not edit!


(when (boundp 'frc_msgs::CubeState)
  (if (not (find-package "FRC_MSGS"))
    (make-package "FRC_MSGS"))
  (shadow 'CubeState (find-package "FRC_MSGS")))
(unless (find-package "FRC_MSGS::CUBESTATE")
  (make-package "FRC_MSGS::CUBESTATE"))

(in-package "ROS")
;;//! \htmlinclude CubeState.msg.html


(defclass frc_msgs::CubeState
  :super ros::object
  :slots (_clamp _intake_high _intake_low _has_cube ))

(defmethod frc_msgs::CubeState
  (:init
   (&key
    ((:clamp __clamp) nil)
    ((:intake_high __intake_high) nil)
    ((:intake_low __intake_low) nil)
    ((:has_cube __has_cube) nil)
    )
   (send-super :init)
   (setq _clamp __clamp)
   (setq _intake_high __intake_high)
   (setq _intake_low __intake_low)
   (setq _has_cube __has_cube)
   self)
  (:clamp
   (&optional __clamp)
   (if __clamp (setq _clamp __clamp)) _clamp)
  (:intake_high
   (&optional __intake_high)
   (if __intake_high (setq _intake_high __intake_high)) _intake_high)
  (:intake_low
   (&optional __intake_low)
   (if __intake_low (setq _intake_low __intake_low)) _intake_low)
  (:has_cube
   (&optional __has_cube)
   (if __has_cube (setq _has_cube __has_cube)) _has_cube)
  (:serialization-length
   ()
   (+
    ;; bool _clamp
    1
    ;; bool _intake_high
    1
    ;; bool _intake_low
    1
    ;; bool _has_cube
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _clamp
       (if _clamp (write-byte -1 s) (write-byte 0 s))
     ;; bool _intake_high
       (if _intake_high (write-byte -1 s) (write-byte 0 s))
     ;; bool _intake_low
       (if _intake_low (write-byte -1 s) (write-byte 0 s))
     ;; bool _has_cube
       (if _has_cube (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _clamp
     (setq _clamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _intake_high
     (setq _intake_high (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _intake_low
     (setq _intake_low (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _has_cube
     (setq _has_cube (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get frc_msgs::CubeState :md5sum-) "42388bfc6bfe50e21deb636904eb309b")
(setf (get frc_msgs::CubeState :datatype-) "frc_msgs/CubeState")
(setf (get frc_msgs::CubeState :definition-)
      "bool clamp
bool intake_high
bool intake_low
bool has_cube

")



(provide :frc_msgs/CubeState "42388bfc6bfe50e21deb636904eb309b")


