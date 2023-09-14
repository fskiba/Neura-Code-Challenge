
(cl:in-package :asdf)

(defsystem "edge_detection-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "requestEdges" :depends-on ("_package_requestEdges"))
    (:file "_package_requestEdges" :depends-on ("_package"))
  ))