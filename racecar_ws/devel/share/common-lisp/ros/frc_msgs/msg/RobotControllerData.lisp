; Auto-generated. Do not edit!


(cl:in-package frc_msgs-msg)


;//! \htmlinclude RobotControllerData.msg.html

(cl:defclass <RobotControllerData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fpgaVersion
    :reader fpgaVersion
    :initarg :fpgaVersion
    :type cl:integer
    :initform 0)
   (fpgaRevision
    :reader fpgaRevision
    :initarg :fpgaRevision
    :type cl:integer
    :initform 0)
   (fpgaTime
    :reader fpgaTime
    :initarg :fpgaTime
    :type cl:integer
    :initform 0)
   (userButton
    :reader userButton
    :initarg :userButton
    :type cl:boolean
    :initform cl:nil)
   (isSysActive
    :reader isSysActive
    :initarg :isSysActive
    :type cl:boolean
    :initform cl:nil)
   (isBrownedOut
    :reader isBrownedOut
    :initarg :isBrownedOut
    :type cl:boolean
    :initform cl:nil)
   (inputVoltage
    :reader inputVoltage
    :initarg :inputVoltage
    :type cl:float
    :initform 0.0)
   (inputCurrent
    :reader inputCurrent
    :initarg :inputCurrent
    :type cl:float
    :initform 0.0)
   (voltage3V3
    :reader voltage3V3
    :initarg :voltage3V3
    :type cl:float
    :initform 0.0)
   (current3V3
    :reader current3V3
    :initarg :current3V3
    :type cl:float
    :initform 0.0)
   (enabled3V3
    :reader enabled3V3
    :initarg :enabled3V3
    :type cl:boolean
    :initform cl:nil)
   (faultCount3V3
    :reader faultCount3V3
    :initarg :faultCount3V3
    :type cl:integer
    :initform 0)
   (voltage5V
    :reader voltage5V
    :initarg :voltage5V
    :type cl:float
    :initform 0.0)
   (current5V
    :reader current5V
    :initarg :current5V
    :type cl:float
    :initform 0.0)
   (enabled5V
    :reader enabled5V
    :initarg :enabled5V
    :type cl:boolean
    :initform cl:nil)
   (faultCount5V
    :reader faultCount5V
    :initarg :faultCount5V
    :type cl:integer
    :initform 0)
   (voltage6V
    :reader voltage6V
    :initarg :voltage6V
    :type cl:float
    :initform 0.0)
   (current6V
    :reader current6V
    :initarg :current6V
    :type cl:float
    :initform 0.0)
   (enabled6V
    :reader enabled6V
    :initarg :enabled6V
    :type cl:boolean
    :initform cl:nil)
   (faultCount6V
    :reader faultCount6V
    :initarg :faultCount6V
    :type cl:integer
    :initform 0)
   (canData
    :reader canData
    :initarg :canData
    :type frc_msgs-msg:RobotControllerCANData
    :initform (cl:make-instance 'frc_msgs-msg:RobotControllerCANData)))
)

(cl:defclass RobotControllerData (<RobotControllerData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotControllerData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotControllerData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frc_msgs-msg:<RobotControllerData> is deprecated: use frc_msgs-msg:RobotControllerData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:header-val is deprecated.  Use frc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fpgaVersion-val :lambda-list '(m))
(cl:defmethod fpgaVersion-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:fpgaVersion-val is deprecated.  Use frc_msgs-msg:fpgaVersion instead.")
  (fpgaVersion m))

(cl:ensure-generic-function 'fpgaRevision-val :lambda-list '(m))
(cl:defmethod fpgaRevision-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:fpgaRevision-val is deprecated.  Use frc_msgs-msg:fpgaRevision instead.")
  (fpgaRevision m))

(cl:ensure-generic-function 'fpgaTime-val :lambda-list '(m))
(cl:defmethod fpgaTime-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:fpgaTime-val is deprecated.  Use frc_msgs-msg:fpgaTime instead.")
  (fpgaTime m))

(cl:ensure-generic-function 'userButton-val :lambda-list '(m))
(cl:defmethod userButton-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:userButton-val is deprecated.  Use frc_msgs-msg:userButton instead.")
  (userButton m))

(cl:ensure-generic-function 'isSysActive-val :lambda-list '(m))
(cl:defmethod isSysActive-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:isSysActive-val is deprecated.  Use frc_msgs-msg:isSysActive instead.")
  (isSysActive m))

(cl:ensure-generic-function 'isBrownedOut-val :lambda-list '(m))
(cl:defmethod isBrownedOut-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:isBrownedOut-val is deprecated.  Use frc_msgs-msg:isBrownedOut instead.")
  (isBrownedOut m))

(cl:ensure-generic-function 'inputVoltage-val :lambda-list '(m))
(cl:defmethod inputVoltage-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:inputVoltage-val is deprecated.  Use frc_msgs-msg:inputVoltage instead.")
  (inputVoltage m))

(cl:ensure-generic-function 'inputCurrent-val :lambda-list '(m))
(cl:defmethod inputCurrent-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:inputCurrent-val is deprecated.  Use frc_msgs-msg:inputCurrent instead.")
  (inputCurrent m))

(cl:ensure-generic-function 'voltage3V3-val :lambda-list '(m))
(cl:defmethod voltage3V3-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:voltage3V3-val is deprecated.  Use frc_msgs-msg:voltage3V3 instead.")
  (voltage3V3 m))

(cl:ensure-generic-function 'current3V3-val :lambda-list '(m))
(cl:defmethod current3V3-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:current3V3-val is deprecated.  Use frc_msgs-msg:current3V3 instead.")
  (current3V3 m))

(cl:ensure-generic-function 'enabled3V3-val :lambda-list '(m))
(cl:defmethod enabled3V3-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:enabled3V3-val is deprecated.  Use frc_msgs-msg:enabled3V3 instead.")
  (enabled3V3 m))

(cl:ensure-generic-function 'faultCount3V3-val :lambda-list '(m))
(cl:defmethod faultCount3V3-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:faultCount3V3-val is deprecated.  Use frc_msgs-msg:faultCount3V3 instead.")
  (faultCount3V3 m))

(cl:ensure-generic-function 'voltage5V-val :lambda-list '(m))
(cl:defmethod voltage5V-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:voltage5V-val is deprecated.  Use frc_msgs-msg:voltage5V instead.")
  (voltage5V m))

(cl:ensure-generic-function 'current5V-val :lambda-list '(m))
(cl:defmethod current5V-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:current5V-val is deprecated.  Use frc_msgs-msg:current5V instead.")
  (current5V m))

(cl:ensure-generic-function 'enabled5V-val :lambda-list '(m))
(cl:defmethod enabled5V-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:enabled5V-val is deprecated.  Use frc_msgs-msg:enabled5V instead.")
  (enabled5V m))

(cl:ensure-generic-function 'faultCount5V-val :lambda-list '(m))
(cl:defmethod faultCount5V-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:faultCount5V-val is deprecated.  Use frc_msgs-msg:faultCount5V instead.")
  (faultCount5V m))

(cl:ensure-generic-function 'voltage6V-val :lambda-list '(m))
(cl:defmethod voltage6V-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:voltage6V-val is deprecated.  Use frc_msgs-msg:voltage6V instead.")
  (voltage6V m))

(cl:ensure-generic-function 'current6V-val :lambda-list '(m))
(cl:defmethod current6V-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:current6V-val is deprecated.  Use frc_msgs-msg:current6V instead.")
  (current6V m))

(cl:ensure-generic-function 'enabled6V-val :lambda-list '(m))
(cl:defmethod enabled6V-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:enabled6V-val is deprecated.  Use frc_msgs-msg:enabled6V instead.")
  (enabled6V m))

(cl:ensure-generic-function 'faultCount6V-val :lambda-list '(m))
(cl:defmethod faultCount6V-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:faultCount6V-val is deprecated.  Use frc_msgs-msg:faultCount6V instead.")
  (faultCount6V m))

(cl:ensure-generic-function 'canData-val :lambda-list '(m))
(cl:defmethod canData-val ((m <RobotControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frc_msgs-msg:canData-val is deprecated.  Use frc_msgs-msg:canData instead.")
  (canData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotControllerData>) ostream)
  "Serializes a message object of type '<RobotControllerData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'fpgaVersion)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fpgaRevision)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fpgaTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fpgaTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fpgaTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fpgaTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'fpgaTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'fpgaTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'fpgaTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'fpgaTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'userButton) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSysActive) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isBrownedOut) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'inputVoltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'inputCurrent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'voltage3V3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current3V3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled3V3) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'faultCount3V3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'voltage5V))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current5V))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled5V) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'faultCount5V)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'voltage6V))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current6V))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled6V) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'faultCount6V)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'canData) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotControllerData>) istream)
  "Deserializes a message object of type '<RobotControllerData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fpgaVersion) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fpgaRevision) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fpgaTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fpgaTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fpgaTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fpgaTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'fpgaTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'fpgaTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'fpgaTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'fpgaTime)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'userButton) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isSysActive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isBrownedOut) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inputVoltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inputCurrent) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage3V3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current3V3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'enabled3V3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'faultCount3V3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage5V) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current5V) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'enabled5V) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'faultCount5V) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage6V) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current6V) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'enabled6V) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'faultCount6V) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'canData) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotControllerData>)))
  "Returns string type for a message object of type '<RobotControllerData>"
  "frc_msgs/RobotControllerData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotControllerData)))
  "Returns string type for a message object of type 'RobotControllerData"
  "frc_msgs/RobotControllerData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotControllerData>)))
  "Returns md5sum for a message object of type '<RobotControllerData>"
  "bd038fd2805831a80b16311cd50a4a1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotControllerData)))
  "Returns md5sum for a message object of type 'RobotControllerData"
  "bd038fd2805831a80b16311cd50a4a1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotControllerData>)))
  "Returns full string definition for message of type '<RobotControllerData>"
  (cl:format cl:nil "Header header~%~%int32 fpgaVersion~%int64 fpgaRevision~%uint64 fpgaTime~%bool userButton~%bool isSysActive~%bool isBrownedOut~%float64 inputVoltage~%float64 inputCurrent~%float64 voltage3V3~%float64 current3V3~%bool enabled3V3~%int32 faultCount3V3~%float64 voltage5V~%float64 current5V~%bool enabled5V~%int32 faultCount5V~%float64 voltage6V~%float64 current6V~%bool enabled6V~%int32 faultCount6V~%RobotControllerCANData canData~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: frc_msgs/RobotControllerCANData~%float32 percentBusUtilization~%int32 busOffCount~%int32 txFullCount~%int32 receiveErrorCount~%int32 transmitErrorCount~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotControllerData)))
  "Returns full string definition for message of type 'RobotControllerData"
  (cl:format cl:nil "Header header~%~%int32 fpgaVersion~%int64 fpgaRevision~%uint64 fpgaTime~%bool userButton~%bool isSysActive~%bool isBrownedOut~%float64 inputVoltage~%float64 inputCurrent~%float64 voltage3V3~%float64 current3V3~%bool enabled3V3~%int32 faultCount3V3~%float64 voltage5V~%float64 current5V~%bool enabled5V~%int32 faultCount5V~%float64 voltage6V~%float64 current6V~%bool enabled6V~%int32 faultCount6V~%RobotControllerCANData canData~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: frc_msgs/RobotControllerCANData~%float32 percentBusUtilization~%int32 busOffCount~%int32 txFullCount~%int32 receiveErrorCount~%int32 transmitErrorCount~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotControllerData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     8
     1
     1
     1
     8
     8
     8
     8
     1
     4
     8
     8
     1
     4
     8
     8
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'canData))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotControllerData>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotControllerData
    (cl:cons ':header (header msg))
    (cl:cons ':fpgaVersion (fpgaVersion msg))
    (cl:cons ':fpgaRevision (fpgaRevision msg))
    (cl:cons ':fpgaTime (fpgaTime msg))
    (cl:cons ':userButton (userButton msg))
    (cl:cons ':isSysActive (isSysActive msg))
    (cl:cons ':isBrownedOut (isBrownedOut msg))
    (cl:cons ':inputVoltage (inputVoltage msg))
    (cl:cons ':inputCurrent (inputCurrent msg))
    (cl:cons ':voltage3V3 (voltage3V3 msg))
    (cl:cons ':current3V3 (current3V3 msg))
    (cl:cons ':enabled3V3 (enabled3V3 msg))
    (cl:cons ':faultCount3V3 (faultCount3V3 msg))
    (cl:cons ':voltage5V (voltage5V msg))
    (cl:cons ':current5V (current5V msg))
    (cl:cons ':enabled5V (enabled5V msg))
    (cl:cons ':faultCount5V (faultCount5V msg))
    (cl:cons ':voltage6V (voltage6V msg))
    (cl:cons ':current6V (current6V msg))
    (cl:cons ':enabled6V (enabled6V msg))
    (cl:cons ':faultCount6V (faultCount6V msg))
    (cl:cons ':canData (canData msg))
))
