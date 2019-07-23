;; Auto-generated. Do not edit!


(when (boundp 'ros_control_boilerplate::LineBreakSensors)
  (if (not (find-package "ROS_CONTROL_BOILERPLATE"))
    (make-package "ROS_CONTROL_BOILERPLATE"))
  (shadow 'LineBreakSensors (find-package "ROS_CONTROL_BOILERPLATE")))
(unless (find-package "ROS_CONTROL_BOILERPLATE::LINEBREAKSENSORS")
  (make-package "ROS_CONTROL_BOILERPLATE::LINEBREAKSENSORS"))
(unless (find-package "ROS_CONTROL_BOILERPLATE::LINEBREAKSENSORSREQUEST")
  (make-package "ROS_CONTROL_BOILERPLATE::LINEBREAKSENSORSREQUEST"))
(unless (find-package "ROS_CONTROL_BOILERPLATE::LINEBREAKSENSORSRESPONSE")
  (make-package "ROS_CONTROL_BOILERPLATE::LINEBREAKSENSORSRESPONSE"))

(in-package "ROS")





(defclass ros_control_boilerplate::LineBreakSensorsRequest
  :super ros::object
  :slots (_j _value ))

(defmethod ros_control_boilerplate::LineBreakSensorsRequest
  (:init
   (&key
    ((:j __j) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _j (round __j))
   (setq _value __value)
   self)
  (:j
   (&optional __j)
   (if __j (setq _j __j)) _j)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint64 _j
    8
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _j
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _j (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _j) (= (length (_j . bv)) 2)) ;; bignum
              (write-long (ash (elt (_j . bv) 0) 0) s)
              (write-long (ash (elt (_j . bv) 1) -1) s))
             ((and (class _j) (= (length (_j . bv)) 1)) ;; big1
              (write-long (elt (_j . bv) 0) s)
              (write-long (if (>= _j 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _j s)(write-long (if (>= _j 0) 0 #xffffffff) s)))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _j
     
#+(or :alpha :irix6 :x86_64)
      (setf _j (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _j (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_control_boilerplate::LineBreakSensorsResponse
  :super ros::object
  :slots ())

(defmethod ros_control_boilerplate::LineBreakSensorsResponse
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

(defclass ros_control_boilerplate::LineBreakSensors
  :super ros::object
  :slots ())

(setf (get ros_control_boilerplate::LineBreakSensors :md5sum-) "0162edbbc243aaa4ac88fdc1acd8d433")
(setf (get ros_control_boilerplate::LineBreakSensors :datatype-) "ros_control_boilerplate/LineBreakSensors")
(setf (get ros_control_boilerplate::LineBreakSensors :request) ros_control_boilerplate::LineBreakSensorsRequest)
(setf (get ros_control_boilerplate::LineBreakSensors :response) ros_control_boilerplate::LineBreakSensorsResponse)

(defmethod ros_control_boilerplate::LineBreakSensorsRequest
  (:response () (instance ros_control_boilerplate::LineBreakSensorsResponse :init)))

(setf (get ros_control_boilerplate::LineBreakSensorsRequest :md5sum-) "0162edbbc243aaa4ac88fdc1acd8d433")
(setf (get ros_control_boilerplate::LineBreakSensorsRequest :datatype-) "ros_control_boilerplate/LineBreakSensorsRequest")
(setf (get ros_control_boilerplate::LineBreakSensorsRequest :definition-)
      "uint64 j
bool value
---


")

(setf (get ros_control_boilerplate::LineBreakSensorsResponse :md5sum-) "0162edbbc243aaa4ac88fdc1acd8d433")
(setf (get ros_control_boilerplate::LineBreakSensorsResponse :datatype-) "ros_control_boilerplate/LineBreakSensorsResponse")
(setf (get ros_control_boilerplate::LineBreakSensorsResponse :definition-)
      "uint64 j
bool value
---


")



(provide :ros_control_boilerplate/LineBreakSensors "0162edbbc243aaa4ac88fdc1acd8d433")


