
(cl:in-package :asdf)

(defsystem "arm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "KEY" :depends-on ("_package_KEY"))
    (:file "_package_KEY" :depends-on ("_package"))
    (:file "ZUOBIAO" :depends-on ("_package_ZUOBIAO"))
    (:file "_package_ZUOBIAO" :depends-on ("_package"))
    (:file "PS2" :depends-on ("_package_PS2"))
    (:file "_package_PS2" :depends-on ("_package"))
  ))