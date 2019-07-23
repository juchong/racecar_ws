; Auto-generated. Do not edit!


(cl:in-package frc_msgs-msg)


;//! \htmlinclude JoystickState.msg.html

(cl:defclass <JoystickState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (leftStickX
    :reader leftStickX
    :initarg :leftStickX
    :type cl:float
    :initform 0.0)
   (leftStickY
    :reader leftStickY
    :initarg :leftStickY
    :type cl:float
    :initform 0.0)
   (rightStickX
    :reader rightStickX
    :initarg :rightStickX
    :type cl:float
    :initform 0.0)
   (rightStickY
    :reader rightStickY
    :initarg :rightStickY
    :type cl:float
    :initform 0.0)
   (leftTrigger
    :reader leftTrigger
    :initarg :leftTrigger
    :type cl:float
    :initform 0.0)
   (rightTrigger
    :reader rightTrigger
    :initarg :rightTrigger
    :type cl:float
    :initform 0.0)
   (buttonAButton
    :reader buttonAButton
    :initarg :buttonAButton
    :type cl:boolean
    :initform cl:nil)
   (buttonAPress
    :reader buttonAPress
    :initarg :buttonAPress
    :type cl:boolean
    :initform cl:nil)
   (buttonARelease
    :reader buttonARelease
    :initarg :buttonARelease
    :type cl:boolean
    :initform cl:nil)
   (buttonBButton
    :reader buttonBButton
    :initarg :buttonBButton
    :type cl:boolean
    :initform cl:nil)
   (buttonBPress
    :reader buttonBPress
    :initarg :buttonBPress
    :type cl:boolean
    :initform cl:nil)
   (buttonBRelease
    :reader buttonBRelease
    :initarg :buttonBRelease
    :type cl:boolean
    :initform cl:nil)
   (buttonXButton
    :reader buttonXButton
    :initarg :buttonXButton
    :type cl:boolean
    :initform cl:nil)
   (buttonXPress
    :reader buttonXPress
    :initarg :buttonXPress
    :type cl:boolean
    :initform cl:nil)
   (buttonXRelease
    :reader buttonXRelease
    :initarg :buttonXRelease
    :type cl:boolean
    :initform cl:nil)
   (buttonYButton
    :reader buttonYButton
    :initarg :buttonYButton
    :type cl:boolean
    :initform cl:nil)
   (buttonYPress
    :reader buttonYPress
    :initarg :buttonYPress
    :type cl:boolean
    :initform cl:nil)
   (buttonYRelease
    :reader buttonYRelease
    :initarg :buttonYRelease
    :type cl:boolean
    :initform cl:nil)
   (bumperLeftButton
    :reader bumperLeftButton
    :initarg :bumperLeftButton
    :type cl:boolean
    :initform cl:nil)
   (bumperLeftPress
    :reader bumperLeftPress
    :initarg :bumperLeftPress
    :type cl:boolean
    :initform cl:nil)
   (bumperLeftRelease
    :reader bumperLeftRelease
    :initarg :bumperLeftRelease
    :type cl:boolean
    :initform cl:nil)
   (bumperRightButton
    :reader bumperRightButton
    :initarg :bumperRightButton
    :type cl:boolean
    :initform cl:nil)
   (bumperRightPress
    :reader bumperRightPress
    :initarg :bumperRightPress
    :type cl:boolean
    :initform cl:nil)
   (bumperRightRelease
    :reader bumperRightRelease
    :initarg :bumperRightRelease
    :type cl:boolean
    :initform cl:nil)
   (buttonBackButton
    :reader buttonBackButton
    :initarg :buttonBackButton
    :type cl:boolean
    :initform cl:nil)
   (buttonBackPress
    :reader buttonBackPress
    :initarg :buttonBackPress
    :type cl:boolean
    :initform cl:nil)
   (buttonBackRelease
    :reader buttonBackRelease
    :initarg :buttonBackRelease
    :type cl:boolean
    :initform cl:nil)
   (buttonStartButton
    :reader buttonStartButton
    :initarg :buttonStartButton
    :type cl:boolean
    :initform cl:nil)
   (buttonStartPress
    :reader buttonStartPress
    :initarg :buttonStartPress
    :type cl:boolean
    :initform cl:nil)
   (buttonStartRelease
    :reader buttonStartRelease
    :initarg :buttonStartRelease
    :type cl:boolean
    :initform cl:nil)
   (stickLeftButton
    :reader stickLeftButton
    :initarg :stickLeftButton
    :type cl:boolean
    :initform cl:nil)
   (stickLeftPress
    :reader stickLeftPress
    :initarg :stickLeftPress
    :type cl:boolean
    :initform cl:nil)
   (stickLeftRelease
    :reader stickLeftRelease
    :initarg :stickLeftRelease
    :type cl:boolean
    :initform cl:nil)
   (stickRightButton
    :reader stickRightButton
    :initarg :stickRightButton
    :type cl:boolean
    :initform cl:nil)
   (stickRightPress
    :reader stickRightPress
    :initarg :stickRightPress
    :type cl:boolean
    :initform cl:nil)
   (stickRightRelease
    :reader stickRightRelease
    :initarg :stickRightRelease
    :type cl:boolean
    :initform cl:nil)
   (directionUpButton
    :reader directionUpButton
    :initarg :directionUpButton
    :type cl:boolean
    :initform cl:nil)
   (directionUpPress
    :reader directionUpPress
    :initarg :directionUpPress
    :type cl:boolean
    :initform cl:nil)
   (directionUpRelease
    :reader directionUpRelease
    :initarg :directionUpRelease
    :type cl:boolean
    :initform cl:nil)
   (directionDownButton
    :reader directionDownButton
    :initarg :directionDownButton
    :type cl:boolean
    :initform cl:nil)
   (directionDownPress
    :reader directionDownPress
    :initarg :directionDownPress
    :type cl:boolean
    :initform cl:nil)
   (directionDownRelease
    :reader directionDownRelease
    :initarg :directionDownRelease
    :type cl:boolean
    :initform cl:nil)
   (directionLeftButton
    :reader directionLeftButton
    :initarg :directionLeftButton
    :type cl:boolean
    :initform cl:nil)
   (directionLeftPress
    :reader directionLeftPress
    :initarg :directionLeftPress
    :type cl:boolean
    :initform cl:nil)
   (directionLeftRelease
    :reader directionLeftRelease
    :initarg :directionLeftRelease
    :type cl:boolean
    :initform cl:nil)
   (directionRightButton
    :reader directionRightButton
    :initarg :directionRightButton
    :type cl:boolean
    :initform cl:nil)
   (directionRightPress
    :reader directionRightPress
    :initarg :directionRightPress
    :type cl:boolean
    :initform cl:nil)
   (directionRightRelease
    :reader directionRightRelease
    :initarg :directionRightRelease
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass JoystickState (<JoystickState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoystickState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoystickState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frc_msgs-msg:<JoystickState> is deprecated: use frc_msgs-msg:JoystickState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:header-val is deprecated.  Use frc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'leftStickX-val :lambda-list '(m))
(cl:defmethod leftStickX-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:leftStickX-val is deprecated.  Use frc_msgs-msg:leftStickX instead.")
  (leftStickX m))

(cl:ensure-generic-function 'leftStickY-val :lambda-list '(m))
(cl:defmethod leftStickY-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:leftStickY-val is deprecated.  Use frc_msgs-msg:leftStickY instead.")
  (leftStickY m))

(cl:ensure-generic-function 'rightStickX-val :lambda-list '(m))
(cl:defmethod rightStickX-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:rightStickX-val is deprecated.  Use frc_msgs-msg:rightStickX instead.")
  (rightStickX m))

(cl:ensure-generic-function 'rightStickY-val :lambda-list '(m))
(cl:defmethod rightStickY-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:rightStickY-val is deprecated.  Use frc_msgs-msg:rightStickY instead.")
  (rightStickY m))

(cl:ensure-generic-function 'leftTrigger-val :lambda-list '(m))
(cl:defmethod leftTrigger-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:leftTrigger-val is deprecated.  Use frc_msgs-msg:leftTrigger instead.")
  (leftTrigger m))

(cl:ensure-generic-function 'rightTrigger-val :lambda-list '(m))
(cl:defmethod rightTrigger-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:rightTrigger-val is deprecated.  Use frc_msgs-msg:rightTrigger instead.")
  (rightTrigger m))

(cl:ensure-generic-function 'buttonAButton-val :lambda-list '(m))
(cl:defmethod buttonAButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonAButton-val is deprecated.  Use frc_msgs-msg:buttonAButton instead.")
  (buttonAButton m))

(cl:ensure-generic-function 'buttonAPress-val :lambda-list '(m))
(cl:defmethod buttonAPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonAPress-val is deprecated.  Use frc_msgs-msg:buttonAPress instead.")
  (buttonAPress m))

(cl:ensure-generic-function 'buttonARelease-val :lambda-list '(m))
(cl:defmethod buttonARelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonARelease-val is deprecated.  Use frc_msgs-msg:buttonARelease instead.")
  (buttonARelease m))

(cl:ensure-generic-function 'buttonBButton-val :lambda-list '(m))
(cl:defmethod buttonBButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonBButton-val is deprecated.  Use frc_msgs-msg:buttonBButton instead.")
  (buttonBButton m))

(cl:ensure-generic-function 'buttonBPress-val :lambda-list '(m))
(cl:defmethod buttonBPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonBPress-val is deprecated.  Use frc_msgs-msg:buttonBPress instead.")
  (buttonBPress m))

(cl:ensure-generic-function 'buttonBRelease-val :lambda-list '(m))
(cl:defmethod buttonBRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonBRelease-val is deprecated.  Use frc_msgs-msg:buttonBRelease instead.")
  (buttonBRelease m))

(cl:ensure-generic-function 'buttonXButton-val :lambda-list '(m))
(cl:defmethod buttonXButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonXButton-val is deprecated.  Use frc_msgs-msg:buttonXButton instead.")
  (buttonXButton m))

(cl:ensure-generic-function 'buttonXPress-val :lambda-list '(m))
(cl:defmethod buttonXPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonXPress-val is deprecated.  Use frc_msgs-msg:buttonXPress instead.")
  (buttonXPress m))

(cl:ensure-generic-function 'buttonXRelease-val :lambda-list '(m))
(cl:defmethod buttonXRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonXRelease-val is deprecated.  Use frc_msgs-msg:buttonXRelease instead.")
  (buttonXRelease m))

(cl:ensure-generic-function 'buttonYButton-val :lambda-list '(m))
(cl:defmethod buttonYButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonYButton-val is deprecated.  Use frc_msgs-msg:buttonYButton instead.")
  (buttonYButton m))

(cl:ensure-generic-function 'buttonYPress-val :lambda-list '(m))
(cl:defmethod buttonYPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonYPress-val is deprecated.  Use frc_msgs-msg:buttonYPress instead.")
  (buttonYPress m))

(cl:ensure-generic-function 'buttonYRelease-val :lambda-list '(m))
(cl:defmethod buttonYRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonYRelease-val is deprecated.  Use frc_msgs-msg:buttonYRelease instead.")
  (buttonYRelease m))

(cl:ensure-generic-function 'bumperLeftButton-val :lambda-list '(m))
(cl:defmethod bumperLeftButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:bumperLeftButton-val is deprecated.  Use frc_msgs-msg:bumperLeftButton instead.")
  (bumperLeftButton m))

(cl:ensure-generic-function 'bumperLeftPress-val :lambda-list '(m))
(cl:defmethod bumperLeftPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:bumperLeftPress-val is deprecated.  Use frc_msgs-msg:bumperLeftPress instead.")
  (bumperLeftPress m))

(cl:ensure-generic-function 'bumperLeftRelease-val :lambda-list '(m))
(cl:defmethod bumperLeftRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:bumperLeftRelease-val is deprecated.  Use frc_msgs-msg:bumperLeftRelease instead.")
  (bumperLeftRelease m))

(cl:ensure-generic-function 'bumperRightButton-val :lambda-list '(m))
(cl:defmethod bumperRightButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:bumperRightButton-val is deprecated.  Use frc_msgs-msg:bumperRightButton instead.")
  (bumperRightButton m))

(cl:ensure-generic-function 'bumperRightPress-val :lambda-list '(m))
(cl:defmethod bumperRightPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:bumperRightPress-val is deprecated.  Use frc_msgs-msg:bumperRightPress instead.")
  (bumperRightPress m))

(cl:ensure-generic-function 'bumperRightRelease-val :lambda-list '(m))
(cl:defmethod bumperRightRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:bumperRightRelease-val is deprecated.  Use frc_msgs-msg:bumperRightRelease instead.")
  (bumperRightRelease m))

(cl:ensure-generic-function 'buttonBackButton-val :lambda-list '(m))
(cl:defmethod buttonBackButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonBackButton-val is deprecated.  Use frc_msgs-msg:buttonBackButton instead.")
  (buttonBackButton m))

(cl:ensure-generic-function 'buttonBackPress-val :lambda-list '(m))
(cl:defmethod buttonBackPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonBackPress-val is deprecated.  Use frc_msgs-msg:buttonBackPress instead.")
  (buttonBackPress m))

(cl:ensure-generic-function 'buttonBackRelease-val :lambda-list '(m))
(cl:defmethod buttonBackRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonBackRelease-val is deprecated.  Use frc_msgs-msg:buttonBackRelease instead.")
  (buttonBackRelease m))

(cl:ensure-generic-function 'buttonStartButton-val :lambda-list '(m))
(cl:defmethod buttonStartButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonStartButton-val is deprecated.  Use frc_msgs-msg:buttonStartButton instead.")
  (buttonStartButton m))

(cl:ensure-generic-function 'buttonStartPress-val :lambda-list '(m))
(cl:defmethod buttonStartPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonStartPress-val is deprecated.  Use frc_msgs-msg:buttonStartPress instead.")
  (buttonStartPress m))

(cl:ensure-generic-function 'buttonStartRelease-val :lambda-list '(m))
(cl:defmethod buttonStartRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:buttonStartRelease-val is deprecated.  Use frc_msgs-msg:buttonStartRelease instead.")
  (buttonStartRelease m))

(cl:ensure-generic-function 'stickLeftButton-val :lambda-list '(m))
(cl:defmethod stickLeftButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:stickLeftButton-val is deprecated.  Use frc_msgs-msg:stickLeftButton instead.")
  (stickLeftButton m))

(cl:ensure-generic-function 'stickLeftPress-val :lambda-list '(m))
(cl:defmethod stickLeftPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:stickLeftPress-val is deprecated.  Use frc_msgs-msg:stickLeftPress instead.")
  (stickLeftPress m))

(cl:ensure-generic-function 'stickLeftRelease-val :lambda-list '(m))
(cl:defmethod stickLeftRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:stickLeftRelease-val is deprecated.  Use frc_msgs-msg:stickLeftRelease instead.")
  (stickLeftRelease m))

(cl:ensure-generic-function 'stickRightButton-val :lambda-list '(m))
(cl:defmethod stickRightButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:stickRightButton-val is deprecated.  Use frc_msgs-msg:stickRightButton instead.")
  (stickRightButton m))

(cl:ensure-generic-function 'stickRightPress-val :lambda-list '(m))
(cl:defmethod stickRightPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:stickRightPress-val is deprecated.  Use frc_msgs-msg:stickRightPress instead.")
  (stickRightPress m))

(cl:ensure-generic-function 'stickRightRelease-val :lambda-list '(m))
(cl:defmethod stickRightRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:stickRightRelease-val is deprecated.  Use frc_msgs-msg:stickRightRelease instead.")
  (stickRightRelease m))

(cl:ensure-generic-function 'directionUpButton-val :lambda-list '(m))
(cl:defmethod directionUpButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionUpButton-val is deprecated.  Use frc_msgs-msg:directionUpButton instead.")
  (directionUpButton m))

(cl:ensure-generic-function 'directionUpPress-val :lambda-list '(m))
(cl:defmethod directionUpPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionUpPress-val is deprecated.  Use frc_msgs-msg:directionUpPress instead.")
  (directionUpPress m))

(cl:ensure-generic-function 'directionUpRelease-val :lambda-list '(m))
(cl:defmethod directionUpRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionUpRelease-val is deprecated.  Use frc_msgs-msg:directionUpRelease instead.")
  (directionUpRelease m))

(cl:ensure-generic-function 'directionDownButton-val :lambda-list '(m))
(cl:defmethod directionDownButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionDownButton-val is deprecated.  Use frc_msgs-msg:directionDownButton instead.")
  (directionDownButton m))

(cl:ensure-generic-function 'directionDownPress-val :lambda-list '(m))
(cl:defmethod directionDownPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionDownPress-val is deprecated.  Use frc_msgs-msg:directionDownPress instead.")
  (directionDownPress m))

(cl:ensure-generic-function 'directionDownRelease-val :lambda-list '(m))
(cl:defmethod directionDownRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionDownRelease-val is deprecated.  Use frc_msgs-msg:directionDownRelease instead.")
  (directionDownRelease m))

(cl:ensure-generic-function 'directionLeftButton-val :lambda-list '(m))
(cl:defmethod directionLeftButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionLeftButton-val is deprecated.  Use frc_msgs-msg:directionLeftButton instead.")
  (directionLeftButton m))

(cl:ensure-generic-function 'directionLeftPress-val :lambda-list '(m))
(cl:defmethod directionLeftPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionLeftPress-val is deprecated.  Use frc_msgs-msg:directionLeftPress instead.")
  (directionLeftPress m))

(cl:ensure-generic-function 'directionLeftRelease-val :lambda-list '(m))
(cl:defmethod directionLeftRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionLeftRelease-val is deprecated.  Use frc_msgs-msg:directionLeftRelease instead.")
  (directionLeftRelease m))

(cl:ensure-generic-function 'directionRightButton-val :lambda-list '(m))
(cl:defmethod directionRightButton-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionRightButton-val is deprecated.  Use frc_msgs-msg:directionRightButton instead.")
  (directionRightButton m))

(cl:ensure-generic-function 'directionRightPress-val :lambda-list '(m))
(cl:defmethod directionRightPress-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionRightPress-val is deprecated.  Use frc_msgs-msg:directionRightPress instead.")
  (directionRightPress m))

(cl:ensure-generic-function 'directionRightRelease-val :lambda-list '(m))
(cl:defmethod directionRightRelease-val ((m <JoystickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:directionRightRelease-val is deprecated.  Use frc_msgs-msg:directionRightRelease instead.")
  (directionRightRelease m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoystickState>) ostream)
  "Serializes a message object of type '<JoystickState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftStickX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftStickY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightStickX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightStickY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftTrigger))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightTrigger))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonAButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonAPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonARelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonBButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonBPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonBRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonXButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonXPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonXRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonYButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonYPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonYRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bumperLeftButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bumperLeftPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bumperLeftRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bumperRightButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bumperRightPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bumperRightRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonBackButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonBackPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonBackRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonStartButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonStartPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buttonStartRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stickLeftButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stickLeftPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stickLeftRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stickRightButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stickRightPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stickRightRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionUpButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionUpPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionUpRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionDownButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionDownPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionDownRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionLeftButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionLeftPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionLeftRelease) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionRightButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionRightPress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directionRightRelease) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoystickState>) istream)
  "Deserializes a message object of type '<JoystickState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftStickX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftStickY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightStickX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightStickY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftTrigger) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightTrigger) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'buttonAButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonAPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonARelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonBButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonBPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonBRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonXButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonXPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonXRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonYButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonYPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonYRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bumperLeftButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bumperLeftPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bumperLeftRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bumperRightButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bumperRightPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bumperRightRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonBackButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonBackPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonBackRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonStartButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonStartPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buttonStartRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stickLeftButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stickLeftPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stickLeftRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stickRightButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stickRightPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stickRightRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionUpButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionUpPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionUpRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionDownButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionDownPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionDownRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionLeftButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionLeftPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionLeftRelease) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionRightButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionRightPress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'directionRightRelease) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoystickState>)))
  "Returns string type for a message object of type '<JoystickState>"
  "frc_msgs/JoystickState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoystickState)))
  "Returns string type for a message object of type 'JoystickState"
  "frc_msgs/JoystickState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoystickState>)))
  "Returns md5sum for a message object of type '<JoystickState>"
  "94b495e8f7801eaec0cdd481668e94e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoystickState)))
  "Returns md5sum for a message object of type 'JoystickState"
  "94b495e8f7801eaec0cdd481668e94e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoystickState>)))
  "Returns full string definition for message of type '<JoystickState>"
  (cl:format cl:nil "Header header~%~%float64  leftStickX~%float64  leftStickY~%~%float64  rightStickX~%float64  rightStickY~%~%float64  leftTrigger~%float64  rightTrigger~%~%bool buttonAButton~%bool buttonAPress~%bool buttonARelease~%~%bool buttonBButton~%bool buttonBPress~%bool buttonBRelease~%~%bool buttonXButton~%bool buttonXPress~%bool buttonXRelease~%~%bool buttonYButton~%bool buttonYPress~%bool buttonYRelease~%~%bool bumperLeftButton~%bool bumperLeftPress~%bool bumperLeftRelease~%~%bool bumperRightButton~%bool bumperRightPress~%bool bumperRightRelease~%~%bool buttonBackButton~%bool buttonBackPress~%bool buttonBackRelease~%~%bool buttonStartButton~%bool buttonStartPress~%bool buttonStartRelease~%~%bool stickLeftButton~%bool stickLeftPress~%bool stickLeftRelease~%~%bool stickRightButton~%bool stickRightPress~%bool stickRightRelease~%~%bool directionUpButton~%bool directionUpPress~%bool directionUpRelease~%~%bool directionDownButton~%bool directionDownPress~%bool directionDownRelease~%~%bool directionLeftButton~%bool directionLeftPress~%bool directionLeftRelease~%~%bool directionRightButton~%bool directionRightPress~%bool directionRightRelease~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoystickState)))
  "Returns full string definition for message of type 'JoystickState"
  (cl:format cl:nil "Header header~%~%float64  leftStickX~%float64  leftStickY~%~%float64  rightStickX~%float64  rightStickY~%~%float64  leftTrigger~%float64  rightTrigger~%~%bool buttonAButton~%bool buttonAPress~%bool buttonARelease~%~%bool buttonBButton~%bool buttonBPress~%bool buttonBRelease~%~%bool buttonXButton~%bool buttonXPress~%bool buttonXRelease~%~%bool buttonYButton~%bool buttonYPress~%bool buttonYRelease~%~%bool bumperLeftButton~%bool bumperLeftPress~%bool bumperLeftRelease~%~%bool bumperRightButton~%bool bumperRightPress~%bool bumperRightRelease~%~%bool buttonBackButton~%bool buttonBackPress~%bool buttonBackRelease~%~%bool buttonStartButton~%bool buttonStartPress~%bool buttonStartRelease~%~%bool stickLeftButton~%bool stickLeftPress~%bool stickLeftRelease~%~%bool stickRightButton~%bool stickRightPress~%bool stickRightRelease~%~%bool directionUpButton~%bool directionUpPress~%bool directionUpRelease~%~%bool directionDownButton~%bool directionDownPress~%bool directionDownRelease~%~%bool directionLeftButton~%bool directionLeftPress~%bool directionLeftRelease~%~%bool directionRightButton~%bool directionRightPress~%bool directionRightRelease~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoystickState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoystickState>))
  "Converts a ROS message object to a list"
  (cl:list 'JoystickState
    (cl:cons ':header (header msg))
    (cl:cons ':leftStickX (leftStickX msg))
    (cl:cons ':leftStickY (leftStickY msg))
    (cl:cons ':rightStickX (rightStickX msg))
    (cl:cons ':rightStickY (rightStickY msg))
    (cl:cons ':leftTrigger (leftTrigger msg))
    (cl:cons ':rightTrigger (rightTrigger msg))
    (cl:cons ':buttonAButton (buttonAButton msg))
    (cl:cons ':buttonAPress (buttonAPress msg))
    (cl:cons ':buttonARelease (buttonARelease msg))
    (cl:cons ':buttonBButton (buttonBButton msg))
    (cl:cons ':buttonBPress (buttonBPress msg))
    (cl:cons ':buttonBRelease (buttonBRelease msg))
    (cl:cons ':buttonXButton (buttonXButton msg))
    (cl:cons ':buttonXPress (buttonXPress msg))
    (cl:cons ':buttonXRelease (buttonXRelease msg))
    (cl:cons ':buttonYButton (buttonYButton msg))
    (cl:cons ':buttonYPress (buttonYPress msg))
    (cl:cons ':buttonYRelease (buttonYRelease msg))
    (cl:cons ':bumperLeftButton (bumperLeftButton msg))
    (cl:cons ':bumperLeftPress (bumperLeftPress msg))
    (cl:cons ':bumperLeftRelease (bumperLeftRelease msg))
    (cl:cons ':bumperRightButton (bumperRightButton msg))
    (cl:cons ':bumperRightPress (bumperRightPress msg))
    (cl:cons ':bumperRightRelease (bumperRightRelease msg))
    (cl:cons ':buttonBackButton (buttonBackButton msg))
    (cl:cons ':buttonBackPress (buttonBackPress msg))
    (cl:cons ':buttonBackRelease (buttonBackRelease msg))
    (cl:cons ':buttonStartButton (buttonStartButton msg))
    (cl:cons ':buttonStartPress (buttonStartPress msg))
    (cl:cons ':buttonStartRelease (buttonStartRelease msg))
    (cl:cons ':stickLeftButton (stickLeftButton msg))
    (cl:cons ':stickLeftPress (stickLeftPress msg))
    (cl:cons ':stickLeftRelease (stickLeftRelease msg))
    (cl:cons ':stickRightButton (stickRightButton msg))
    (cl:cons ':stickRightPress (stickRightPress msg))
    (cl:cons ':stickRightRelease (stickRightRelease msg))
    (cl:cons ':directionUpButton (directionUpButton msg))
    (cl:cons ':directionUpPress (directionUpPress msg))
    (cl:cons ':directionUpRelease (directionUpRelease msg))
    (cl:cons ':directionDownButton (directionDownButton msg))
    (cl:cons ':directionDownPress (directionDownPress msg))
    (cl:cons ':directionDownRelease (directionDownRelease msg))
    (cl:cons ':directionLeftButton (directionLeftButton msg))
    (cl:cons ':directionLeftPress (directionLeftPress msg))
    (cl:cons ':directionLeftRelease (directionLeftRelease msg))
    (cl:cons ':directionRightButton (directionRightButton msg))
    (cl:cons ':directionRightPress (directionRightPress msg))
    (cl:cons ':directionRightRelease (directionRightRelease msg))
))
