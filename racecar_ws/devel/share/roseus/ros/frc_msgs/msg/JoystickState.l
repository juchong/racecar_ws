;; Auto-generated. Do not edit!


(when (boundp 'frc_msgs::JoystickState)
  (if (not (find-package "FRC_MSGS"))
    (make-package "FRC_MSGS"))
  (shadow 'JoystickState (find-package "FRC_MSGS")))
(unless (find-package "FRC_MSGS::JOYSTICKSTATE")
  (make-package "FRC_MSGS::JOYSTICKSTATE"))

(in-package "ROS")
;;//! \htmlinclude JoystickState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass frc_msgs::JoystickState
  :super ros::object
  :slots (_header _leftStickX _leftStickY _rightStickX _rightStickY _leftTrigger _rightTrigger _buttonAButton _buttonAPress _buttonARelease _buttonBButton _buttonBPress _buttonBRelease _buttonXButton _buttonXPress _buttonXRelease _buttonYButton _buttonYPress _buttonYRelease _bumperLeftButton _bumperLeftPress _bumperLeftRelease _bumperRightButton _bumperRightPress _bumperRightRelease _buttonBackButton _buttonBackPress _buttonBackRelease _buttonStartButton _buttonStartPress _buttonStartRelease _stickLeftButton _stickLeftPress _stickLeftRelease _stickRightButton _stickRightPress _stickRightRelease _directionUpButton _directionUpPress _directionUpRelease _directionDownButton _directionDownPress _directionDownRelease _directionLeftButton _directionLeftPress _directionLeftRelease _directionRightButton _directionRightPress _directionRightRelease ))

(defmethod frc_msgs::JoystickState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:leftStickX __leftStickX) 0.0)
    ((:leftStickY __leftStickY) 0.0)
    ((:rightStickX __rightStickX) 0.0)
    ((:rightStickY __rightStickY) 0.0)
    ((:leftTrigger __leftTrigger) 0.0)
    ((:rightTrigger __rightTrigger) 0.0)
    ((:buttonAButton __buttonAButton) nil)
    ((:buttonAPress __buttonAPress) nil)
    ((:buttonARelease __buttonARelease) nil)
    ((:buttonBButton __buttonBButton) nil)
    ((:buttonBPress __buttonBPress) nil)
    ((:buttonBRelease __buttonBRelease) nil)
    ((:buttonXButton __buttonXButton) nil)
    ((:buttonXPress __buttonXPress) nil)
    ((:buttonXRelease __buttonXRelease) nil)
    ((:buttonYButton __buttonYButton) nil)
    ((:buttonYPress __buttonYPress) nil)
    ((:buttonYRelease __buttonYRelease) nil)
    ((:bumperLeftButton __bumperLeftButton) nil)
    ((:bumperLeftPress __bumperLeftPress) nil)
    ((:bumperLeftRelease __bumperLeftRelease) nil)
    ((:bumperRightButton __bumperRightButton) nil)
    ((:bumperRightPress __bumperRightPress) nil)
    ((:bumperRightRelease __bumperRightRelease) nil)
    ((:buttonBackButton __buttonBackButton) nil)
    ((:buttonBackPress __buttonBackPress) nil)
    ((:buttonBackRelease __buttonBackRelease) nil)
    ((:buttonStartButton __buttonStartButton) nil)
    ((:buttonStartPress __buttonStartPress) nil)
    ((:buttonStartRelease __buttonStartRelease) nil)
    ((:stickLeftButton __stickLeftButton) nil)
    ((:stickLeftPress __stickLeftPress) nil)
    ((:stickLeftRelease __stickLeftRelease) nil)
    ((:stickRightButton __stickRightButton) nil)
    ((:stickRightPress __stickRightPress) nil)
    ((:stickRightRelease __stickRightRelease) nil)
    ((:directionUpButton __directionUpButton) nil)
    ((:directionUpPress __directionUpPress) nil)
    ((:directionUpRelease __directionUpRelease) nil)
    ((:directionDownButton __directionDownButton) nil)
    ((:directionDownPress __directionDownPress) nil)
    ((:directionDownRelease __directionDownRelease) nil)
    ((:directionLeftButton __directionLeftButton) nil)
    ((:directionLeftPress __directionLeftPress) nil)
    ((:directionLeftRelease __directionLeftRelease) nil)
    ((:directionRightButton __directionRightButton) nil)
    ((:directionRightPress __directionRightPress) nil)
    ((:directionRightRelease __directionRightRelease) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _leftStickX (float __leftStickX))
   (setq _leftStickY (float __leftStickY))
   (setq _rightStickX (float __rightStickX))
   (setq _rightStickY (float __rightStickY))
   (setq _leftTrigger (float __leftTrigger))
   (setq _rightTrigger (float __rightTrigger))
   (setq _buttonAButton __buttonAButton)
   (setq _buttonAPress __buttonAPress)
   (setq _buttonARelease __buttonARelease)
   (setq _buttonBButton __buttonBButton)
   (setq _buttonBPress __buttonBPress)
   (setq _buttonBRelease __buttonBRelease)
   (setq _buttonXButton __buttonXButton)
   (setq _buttonXPress __buttonXPress)
   (setq _buttonXRelease __buttonXRelease)
   (setq _buttonYButton __buttonYButton)
   (setq _buttonYPress __buttonYPress)
   (setq _buttonYRelease __buttonYRelease)
   (setq _bumperLeftButton __bumperLeftButton)
   (setq _bumperLeftPress __bumperLeftPress)
   (setq _bumperLeftRelease __bumperLeftRelease)
   (setq _bumperRightButton __bumperRightButton)
   (setq _bumperRightPress __bumperRightPress)
   (setq _bumperRightRelease __bumperRightRelease)
   (setq _buttonBackButton __buttonBackButton)
   (setq _buttonBackPress __buttonBackPress)
   (setq _buttonBackRelease __buttonBackRelease)
   (setq _buttonStartButton __buttonStartButton)
   (setq _buttonStartPress __buttonStartPress)
   (setq _buttonStartRelease __buttonStartRelease)
   (setq _stickLeftButton __stickLeftButton)
   (setq _stickLeftPress __stickLeftPress)
   (setq _stickLeftRelease __stickLeftRelease)
   (setq _stickRightButton __stickRightButton)
   (setq _stickRightPress __stickRightPress)
   (setq _stickRightRelease __stickRightRelease)
   (setq _directionUpButton __directionUpButton)
   (setq _directionUpPress __directionUpPress)
   (setq _directionUpRelease __directionUpRelease)
   (setq _directionDownButton __directionDownButton)
   (setq _directionDownPress __directionDownPress)
   (setq _directionDownRelease __directionDownRelease)
   (setq _directionLeftButton __directionLeftButton)
   (setq _directionLeftPress __directionLeftPress)
   (setq _directionLeftRelease __directionLeftRelease)
   (setq _directionRightButton __directionRightButton)
   (setq _directionRightPress __directionRightPress)
   (setq _directionRightRelease __directionRightRelease)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:leftStickX
   (&optional __leftStickX)
   (if __leftStickX (setq _leftStickX __leftStickX)) _leftStickX)
  (:leftStickY
   (&optional __leftStickY)
   (if __leftStickY (setq _leftStickY __leftStickY)) _leftStickY)
  (:rightStickX
   (&optional __rightStickX)
   (if __rightStickX (setq _rightStickX __rightStickX)) _rightStickX)
  (:rightStickY
   (&optional __rightStickY)
   (if __rightStickY (setq _rightStickY __rightStickY)) _rightStickY)
  (:leftTrigger
   (&optional __leftTrigger)
   (if __leftTrigger (setq _leftTrigger __leftTrigger)) _leftTrigger)
  (:rightTrigger
   (&optional __rightTrigger)
   (if __rightTrigger (setq _rightTrigger __rightTrigger)) _rightTrigger)
  (:buttonAButton
   (&optional __buttonAButton)
   (if __buttonAButton (setq _buttonAButton __buttonAButton)) _buttonAButton)
  (:buttonAPress
   (&optional __buttonAPress)
   (if __buttonAPress (setq _buttonAPress __buttonAPress)) _buttonAPress)
  (:buttonARelease
   (&optional __buttonARelease)
   (if __buttonARelease (setq _buttonARelease __buttonARelease)) _buttonARelease)
  (:buttonBButton
   (&optional __buttonBButton)
   (if __buttonBButton (setq _buttonBButton __buttonBButton)) _buttonBButton)
  (:buttonBPress
   (&optional __buttonBPress)
   (if __buttonBPress (setq _buttonBPress __buttonBPress)) _buttonBPress)
  (:buttonBRelease
   (&optional __buttonBRelease)
   (if __buttonBRelease (setq _buttonBRelease __buttonBRelease)) _buttonBRelease)
  (:buttonXButton
   (&optional __buttonXButton)
   (if __buttonXButton (setq _buttonXButton __buttonXButton)) _buttonXButton)
  (:buttonXPress
   (&optional __buttonXPress)
   (if __buttonXPress (setq _buttonXPress __buttonXPress)) _buttonXPress)
  (:buttonXRelease
   (&optional __buttonXRelease)
   (if __buttonXRelease (setq _buttonXRelease __buttonXRelease)) _buttonXRelease)
  (:buttonYButton
   (&optional __buttonYButton)
   (if __buttonYButton (setq _buttonYButton __buttonYButton)) _buttonYButton)
  (:buttonYPress
   (&optional __buttonYPress)
   (if __buttonYPress (setq _buttonYPress __buttonYPress)) _buttonYPress)
  (:buttonYRelease
   (&optional __buttonYRelease)
   (if __buttonYRelease (setq _buttonYRelease __buttonYRelease)) _buttonYRelease)
  (:bumperLeftButton
   (&optional __bumperLeftButton)
   (if __bumperLeftButton (setq _bumperLeftButton __bumperLeftButton)) _bumperLeftButton)
  (:bumperLeftPress
   (&optional __bumperLeftPress)
   (if __bumperLeftPress (setq _bumperLeftPress __bumperLeftPress)) _bumperLeftPress)
  (:bumperLeftRelease
   (&optional __bumperLeftRelease)
   (if __bumperLeftRelease (setq _bumperLeftRelease __bumperLeftRelease)) _bumperLeftRelease)
  (:bumperRightButton
   (&optional __bumperRightButton)
   (if __bumperRightButton (setq _bumperRightButton __bumperRightButton)) _bumperRightButton)
  (:bumperRightPress
   (&optional __bumperRightPress)
   (if __bumperRightPress (setq _bumperRightPress __bumperRightPress)) _bumperRightPress)
  (:bumperRightRelease
   (&optional __bumperRightRelease)
   (if __bumperRightRelease (setq _bumperRightRelease __bumperRightRelease)) _bumperRightRelease)
  (:buttonBackButton
   (&optional __buttonBackButton)
   (if __buttonBackButton (setq _buttonBackButton __buttonBackButton)) _buttonBackButton)
  (:buttonBackPress
   (&optional __buttonBackPress)
   (if __buttonBackPress (setq _buttonBackPress __buttonBackPress)) _buttonBackPress)
  (:buttonBackRelease
   (&optional __buttonBackRelease)
   (if __buttonBackRelease (setq _buttonBackRelease __buttonBackRelease)) _buttonBackRelease)
  (:buttonStartButton
   (&optional __buttonStartButton)
   (if __buttonStartButton (setq _buttonStartButton __buttonStartButton)) _buttonStartButton)
  (:buttonStartPress
   (&optional __buttonStartPress)
   (if __buttonStartPress (setq _buttonStartPress __buttonStartPress)) _buttonStartPress)
  (:buttonStartRelease
   (&optional __buttonStartRelease)
   (if __buttonStartRelease (setq _buttonStartRelease __buttonStartRelease)) _buttonStartRelease)
  (:stickLeftButton
   (&optional __stickLeftButton)
   (if __stickLeftButton (setq _stickLeftButton __stickLeftButton)) _stickLeftButton)
  (:stickLeftPress
   (&optional __stickLeftPress)
   (if __stickLeftPress (setq _stickLeftPress __stickLeftPress)) _stickLeftPress)
  (:stickLeftRelease
   (&optional __stickLeftRelease)
   (if __stickLeftRelease (setq _stickLeftRelease __stickLeftRelease)) _stickLeftRelease)
  (:stickRightButton
   (&optional __stickRightButton)
   (if __stickRightButton (setq _stickRightButton __stickRightButton)) _stickRightButton)
  (:stickRightPress
   (&optional __stickRightPress)
   (if __stickRightPress (setq _stickRightPress __stickRightPress)) _stickRightPress)
  (:stickRightRelease
   (&optional __stickRightRelease)
   (if __stickRightRelease (setq _stickRightRelease __stickRightRelease)) _stickRightRelease)
  (:directionUpButton
   (&optional __directionUpButton)
   (if __directionUpButton (setq _directionUpButton __directionUpButton)) _directionUpButton)
  (:directionUpPress
   (&optional __directionUpPress)
   (if __directionUpPress (setq _directionUpPress __directionUpPress)) _directionUpPress)
  (:directionUpRelease
   (&optional __directionUpRelease)
   (if __directionUpRelease (setq _directionUpRelease __directionUpRelease)) _directionUpRelease)
  (:directionDownButton
   (&optional __directionDownButton)
   (if __directionDownButton (setq _directionDownButton __directionDownButton)) _directionDownButton)
  (:directionDownPress
   (&optional __directionDownPress)
   (if __directionDownPress (setq _directionDownPress __directionDownPress)) _directionDownPress)
  (:directionDownRelease
   (&optional __directionDownRelease)
   (if __directionDownRelease (setq _directionDownRelease __directionDownRelease)) _directionDownRelease)
  (:directionLeftButton
   (&optional __directionLeftButton)
   (if __directionLeftButton (setq _directionLeftButton __directionLeftButton)) _directionLeftButton)
  (:directionLeftPress
   (&optional __directionLeftPress)
   (if __directionLeftPress (setq _directionLeftPress __directionLeftPress)) _directionLeftPress)
  (:directionLeftRelease
   (&optional __directionLeftRelease)
   (if __directionLeftRelease (setq _directionLeftRelease __directionLeftRelease)) _directionLeftRelease)
  (:directionRightButton
   (&optional __directionRightButton)
   (if __directionRightButton (setq _directionRightButton __directionRightButton)) _directionRightButton)
  (:directionRightPress
   (&optional __directionRightPress)
   (if __directionRightPress (setq _directionRightPress __directionRightPress)) _directionRightPress)
  (:directionRightRelease
   (&optional __directionRightRelease)
   (if __directionRightRelease (setq _directionRightRelease __directionRightRelease)) _directionRightRelease)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _leftStickX
    8
    ;; float64 _leftStickY
    8
    ;; float64 _rightStickX
    8
    ;; float64 _rightStickY
    8
    ;; float64 _leftTrigger
    8
    ;; float64 _rightTrigger
    8
    ;; bool _buttonAButton
    1
    ;; bool _buttonAPress
    1
    ;; bool _buttonARelease
    1
    ;; bool _buttonBButton
    1
    ;; bool _buttonBPress
    1
    ;; bool _buttonBRelease
    1
    ;; bool _buttonXButton
    1
    ;; bool _buttonXPress
    1
    ;; bool _buttonXRelease
    1
    ;; bool _buttonYButton
    1
    ;; bool _buttonYPress
    1
    ;; bool _buttonYRelease
    1
    ;; bool _bumperLeftButton
    1
    ;; bool _bumperLeftPress
    1
    ;; bool _bumperLeftRelease
    1
    ;; bool _bumperRightButton
    1
    ;; bool _bumperRightPress
    1
    ;; bool _bumperRightRelease
    1
    ;; bool _buttonBackButton
    1
    ;; bool _buttonBackPress
    1
    ;; bool _buttonBackRelease
    1
    ;; bool _buttonStartButton
    1
    ;; bool _buttonStartPress
    1
    ;; bool _buttonStartRelease
    1
    ;; bool _stickLeftButton
    1
    ;; bool _stickLeftPress
    1
    ;; bool _stickLeftRelease
    1
    ;; bool _stickRightButton
    1
    ;; bool _stickRightPress
    1
    ;; bool _stickRightRelease
    1
    ;; bool _directionUpButton
    1
    ;; bool _directionUpPress
    1
    ;; bool _directionUpRelease
    1
    ;; bool _directionDownButton
    1
    ;; bool _directionDownPress
    1
    ;; bool _directionDownRelease
    1
    ;; bool _directionLeftButton
    1
    ;; bool _directionLeftPress
    1
    ;; bool _directionLeftRelease
    1
    ;; bool _directionRightButton
    1
    ;; bool _directionRightPress
    1
    ;; bool _directionRightRelease
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _leftStickX
       (sys::poke _leftStickX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _leftStickY
       (sys::poke _leftStickY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightStickX
       (sys::poke _rightStickX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightStickY
       (sys::poke _rightStickY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _leftTrigger
       (sys::poke _leftTrigger (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightTrigger
       (sys::poke _rightTrigger (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _buttonAButton
       (if _buttonAButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonAPress
       (if _buttonAPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonARelease
       (if _buttonARelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonBButton
       (if _buttonBButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonBPress
       (if _buttonBPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonBRelease
       (if _buttonBRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonXButton
       (if _buttonXButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonXPress
       (if _buttonXPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonXRelease
       (if _buttonXRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonYButton
       (if _buttonYButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonYPress
       (if _buttonYPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonYRelease
       (if _buttonYRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _bumperLeftButton
       (if _bumperLeftButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _bumperLeftPress
       (if _bumperLeftPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _bumperLeftRelease
       (if _bumperLeftRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _bumperRightButton
       (if _bumperRightButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _bumperRightPress
       (if _bumperRightPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _bumperRightRelease
       (if _bumperRightRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonBackButton
       (if _buttonBackButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonBackPress
       (if _buttonBackPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonBackRelease
       (if _buttonBackRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonStartButton
       (if _buttonStartButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonStartPress
       (if _buttonStartPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _buttonStartRelease
       (if _buttonStartRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _stickLeftButton
       (if _stickLeftButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _stickLeftPress
       (if _stickLeftPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _stickLeftRelease
       (if _stickLeftRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _stickRightButton
       (if _stickRightButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _stickRightPress
       (if _stickRightPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _stickRightRelease
       (if _stickRightRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionUpButton
       (if _directionUpButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionUpPress
       (if _directionUpPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionUpRelease
       (if _directionUpRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionDownButton
       (if _directionDownButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionDownPress
       (if _directionDownPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionDownRelease
       (if _directionDownRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionLeftButton
       (if _directionLeftButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionLeftPress
       (if _directionLeftPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionLeftRelease
       (if _directionLeftRelease (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionRightButton
       (if _directionRightButton (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionRightPress
       (if _directionRightPress (write-byte -1 s) (write-byte 0 s))
     ;; bool _directionRightRelease
       (if _directionRightRelease (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _leftStickX
     (setq _leftStickX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _leftStickY
     (setq _leftStickY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightStickX
     (setq _rightStickX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightStickY
     (setq _rightStickY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _leftTrigger
     (setq _leftTrigger (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightTrigger
     (setq _rightTrigger (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _buttonAButton
     (setq _buttonAButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonAPress
     (setq _buttonAPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonARelease
     (setq _buttonARelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonBButton
     (setq _buttonBButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonBPress
     (setq _buttonBPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonBRelease
     (setq _buttonBRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonXButton
     (setq _buttonXButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonXPress
     (setq _buttonXPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonXRelease
     (setq _buttonXRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonYButton
     (setq _buttonYButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonYPress
     (setq _buttonYPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonYRelease
     (setq _buttonYRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bumperLeftButton
     (setq _bumperLeftButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bumperLeftPress
     (setq _bumperLeftPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bumperLeftRelease
     (setq _bumperLeftRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bumperRightButton
     (setq _bumperRightButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bumperRightPress
     (setq _bumperRightPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bumperRightRelease
     (setq _bumperRightRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonBackButton
     (setq _buttonBackButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonBackPress
     (setq _buttonBackPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonBackRelease
     (setq _buttonBackRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonStartButton
     (setq _buttonStartButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonStartPress
     (setq _buttonStartPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buttonStartRelease
     (setq _buttonStartRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stickLeftButton
     (setq _stickLeftButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stickLeftPress
     (setq _stickLeftPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stickLeftRelease
     (setq _stickLeftRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stickRightButton
     (setq _stickRightButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stickRightPress
     (setq _stickRightPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stickRightRelease
     (setq _stickRightRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionUpButton
     (setq _directionUpButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionUpPress
     (setq _directionUpPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionUpRelease
     (setq _directionUpRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionDownButton
     (setq _directionDownButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionDownPress
     (setq _directionDownPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionDownRelease
     (setq _directionDownRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionLeftButton
     (setq _directionLeftButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionLeftPress
     (setq _directionLeftPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionLeftRelease
     (setq _directionLeftRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionRightButton
     (setq _directionRightButton (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionRightPress
     (setq _directionRightPress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _directionRightRelease
     (setq _directionRightRelease (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get frc_msgs::JoystickState :md5sum-) "94b495e8f7801eaec0cdd481668e94e0")
(setf (get frc_msgs::JoystickState :datatype-) "frc_msgs/JoystickState")
(setf (get frc_msgs::JoystickState :definition-)
      "Header header

float64  leftStickX
float64  leftStickY

float64  rightStickX
float64  rightStickY

float64  leftTrigger
float64  rightTrigger

bool buttonAButton
bool buttonAPress
bool buttonARelease

bool buttonBButton
bool buttonBPress
bool buttonBRelease

bool buttonXButton
bool buttonXPress
bool buttonXRelease

bool buttonYButton
bool buttonYPress
bool buttonYRelease

bool bumperLeftButton
bool bumperLeftPress
bool bumperLeftRelease

bool bumperRightButton
bool bumperRightPress
bool bumperRightRelease

bool buttonBackButton
bool buttonBackPress
bool buttonBackRelease

bool buttonStartButton
bool buttonStartPress
bool buttonStartRelease

bool stickLeftButton
bool stickLeftPress
bool stickLeftRelease

bool stickRightButton
bool stickRightPress
bool stickRightRelease

bool directionUpButton
bool directionUpPress
bool directionUpRelease

bool directionDownButton
bool directionDownPress
bool directionDownRelease

bool directionLeftButton
bool directionLeftPress
bool directionLeftRelease

bool directionRightButton
bool directionRightPress
bool directionRightRelease

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



(provide :frc_msgs/JoystickState "94b495e8f7801eaec0cdd481668e94e0")


