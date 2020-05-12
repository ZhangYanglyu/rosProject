
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Mpoint" :depends-on ("_package_Mpoint"))
    (:file "_package_Mpoint" :depends-on ("_package"))
  ))