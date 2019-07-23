
(cl:in-package :asdf)

(defsystem "ros_control_boilerplate-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AutoMode" :depends-on ("_package_AutoMode"))
    (:file "_package_AutoMode" :depends-on ("_package"))
    (:file "AutoMode" :depends-on ("_package_AutoMode"))
    (:file "_package_AutoMode" :depends-on ("_package"))
    (:file "AutoModeStatus" :depends-on ("_package_AutoModeStatus"))
    (:file "_package_AutoModeStatus" :depends-on ("_package"))
    (:file "AutoModeStatus" :depends-on ("_package_AutoModeStatus"))
    (:file "_package_AutoModeStatus" :depends-on ("_package"))
  ))