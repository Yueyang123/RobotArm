
(cl:in-package :asdf)

(defsystem "arm-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PS_2" :depends-on ("_package_PS_2"))
    (:file "_package_PS_2" :depends-on ("_package"))
  ))