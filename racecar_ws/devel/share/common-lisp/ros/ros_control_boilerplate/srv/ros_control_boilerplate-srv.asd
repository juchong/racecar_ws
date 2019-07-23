
(cl:in-package :asdf)

(defsystem "ros_control_boilerplate-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LineBreakSensors" :depends-on ("_package_LineBreakSensors"))
    (:file "_package_LineBreakSensors" :depends-on ("_package"))
    (:file "set_limit_switch" :depends-on ("_package_set_limit_switch"))
    (:file "_package_set_limit_switch" :depends-on ("_package"))
  ))