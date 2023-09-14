
(cl:in-package :asdf)

(defsystem "edge_detection-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :edge_detection-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "edgeDetection" :depends-on ("_package_edgeDetection"))
    (:file "_package_edgeDetection" :depends-on ("_package"))
  ))