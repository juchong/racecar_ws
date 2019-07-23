
(cl:in-package :asdf)

(defsystem "talon_controllers-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PidfSlot" :depends-on ("_package_PidfSlot"))
    (:file "_package_PidfSlot" :depends-on ("_package"))
  ))