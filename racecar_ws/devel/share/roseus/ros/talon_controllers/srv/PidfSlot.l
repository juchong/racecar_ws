;; Auto-generated. Do not edit!


(when (boundp 'talon_controllers::PidfSlot)
  (if (not (find-package "TALON_CONTROLLERS"))
    (make-package "TALON_CONTROLLERS"))
  (shadow 'PidfSlot (find-package "TALON_CONTROLLERS")))
(unless (find-package "TALON_CONTROLLERS::PIDFSLOT")
  (make-package "TALON_CONTROLLERS::PIDFSLOT"))
(unless (find-package "TALON_CONTROLLERS::PIDFSLOTREQUEST")
  (make-package "TALON_CONTROLLERS::PIDFSLOTREQUEST"))
(unless (find-package "TALON_CONTROLLERS::PIDFSLOTRESPONSE")
  (make-package "TALON_CONTROLLERS::PIDFSLOTRESPONSE"))

(in-package "ROS")





(defclass talon_controllers::PidfSlotRequest
  :super ros::object
  :slots (_pidf_slot ))

(defmethod talon_controllers::PidfSlotRequest
  (:init
   (&key
    ((:pidf_slot __pidf_slot) 0)
    )
   (send-super :init)
   (setq _pidf_slot (round __pidf_slot))
   self)
  (:pidf_slot
   (&optional __pidf_slot)
   (if __pidf_slot (setq _pidf_slot __pidf_slot)) _pidf_slot)
  (:serialization-length
   ()
   (+
    ;; int32 _pidf_slot
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pidf_slot
       (write-long _pidf_slot s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pidf_slot
     (setq _pidf_slot (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass talon_controllers::PidfSlotResponse
  :super ros::object
  :slots ())

(defmethod talon_controllers::PidfSlotResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass talon_controllers::PidfSlot
  :super ros::object
  :slots ())

(setf (get talon_controllers::PidfSlot :md5sum-) "699888169b1a41d28b65c42d5f593b44")
(setf (get talon_controllers::PidfSlot :datatype-) "talon_controllers/PidfSlot")
(setf (get talon_controllers::PidfSlot :request) talon_controllers::PidfSlotRequest)
(setf (get talon_controllers::PidfSlot :response) talon_controllers::PidfSlotResponse)

(defmethod talon_controllers::PidfSlotRequest
  (:response () (instance talon_controllers::PidfSlotResponse :init)))

(setf (get talon_controllers::PidfSlotRequest :md5sum-) "699888169b1a41d28b65c42d5f593b44")
(setf (get talon_controllers::PidfSlotRequest :datatype-) "talon_controllers/PidfSlotRequest")
(setf (get talon_controllers::PidfSlotRequest :definition-)
      "int32 pidf_slot
---

")

(setf (get talon_controllers::PidfSlotResponse :md5sum-) "699888169b1a41d28b65c42d5f593b44")
(setf (get talon_controllers::PidfSlotResponse :datatype-) "talon_controllers/PidfSlotResponse")
(setf (get talon_controllers::PidfSlotResponse :definition-)
      "int32 pidf_slot
---

")



(provide :talon_controllers/PidfSlot "699888169b1a41d28b65c42d5f593b44")


