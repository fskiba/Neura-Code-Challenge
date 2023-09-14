; Auto-generated. Do not edit!


(cl:in-package edge_detection-srv)


;//! \htmlinclude edgeDetection-request.msg.html

(cl:defclass <edgeDetection-request> (roslisp-msg-protocol:ros-message)
  ((req
    :reader req
    :initarg :req
    :type edge_detection-msg:requestEdges
    :initform (cl:make-instance 'edge_detection-msg:requestEdges)))
)

(cl:defclass edgeDetection-request (<edgeDetection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <edgeDetection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'edgeDetection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name edge_detection-srv:<edgeDetection-request> is deprecated: use edge_detection-srv:edgeDetection-request instead.")))

(cl:ensure-generic-function 'req-val :lambda-list '(m))
(cl:defmethod req-val ((m <edgeDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edge_detection-srv:req-val is deprecated.  Use edge_detection-srv:req instead.")
  (req m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <edgeDetection-request>) ostream)
  "Serializes a message object of type '<edgeDetection-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'req) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <edgeDetection-request>) istream)
  "Deserializes a message object of type '<edgeDetection-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'req) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<edgeDetection-request>)))
  "Returns string type for a service object of type '<edgeDetection-request>"
  "edge_detection/edgeDetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'edgeDetection-request)))
  "Returns string type for a service object of type 'edgeDetection-request"
  "edge_detection/edgeDetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<edgeDetection-request>)))
  "Returns md5sum for a message object of type '<edgeDetection-request>"
  "8aa5777c521081f19a30bfb75d11f817")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'edgeDetection-request)))
  "Returns md5sum for a message object of type 'edgeDetection-request"
  "8aa5777c521081f19a30bfb75d11f817")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<edgeDetection-request>)))
  "Returns full string definition for message of type '<edgeDetection-request>"
  (cl:format cl:nil "requestEdges req~%~%================================================================================~%MSG: edge_detection/requestEdges~%sensor_msgs/Image sourceImage~%float64 cannyThrLow~%float64 cannyThrHigh~%int64 apertureSize~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'edgeDetection-request)))
  "Returns full string definition for message of type 'edgeDetection-request"
  (cl:format cl:nil "requestEdges req~%~%================================================================================~%MSG: edge_detection/requestEdges~%sensor_msgs/Image sourceImage~%float64 cannyThrLow~%float64 cannyThrHigh~%int64 apertureSize~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <edgeDetection-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'req))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <edgeDetection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'edgeDetection-request
    (cl:cons ':req (req msg))
))
;//! \htmlinclude edgeDetection-response.msg.html

(cl:defclass <edgeDetection-response> (roslisp-msg-protocol:ros-message)
  ((edgeImage
    :reader edgeImage
    :initarg :edgeImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass edgeDetection-response (<edgeDetection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <edgeDetection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'edgeDetection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name edge_detection-srv:<edgeDetection-response> is deprecated: use edge_detection-srv:edgeDetection-response instead.")))

(cl:ensure-generic-function 'edgeImage-val :lambda-list '(m))
(cl:defmethod edgeImage-val ((m <edgeDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edge_detection-srv:edgeImage-val is deprecated.  Use edge_detection-srv:edgeImage instead.")
  (edgeImage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <edgeDetection-response>) ostream)
  "Serializes a message object of type '<edgeDetection-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'edgeImage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <edgeDetection-response>) istream)
  "Deserializes a message object of type '<edgeDetection-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'edgeImage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<edgeDetection-response>)))
  "Returns string type for a service object of type '<edgeDetection-response>"
  "edge_detection/edgeDetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'edgeDetection-response)))
  "Returns string type for a service object of type 'edgeDetection-response"
  "edge_detection/edgeDetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<edgeDetection-response>)))
  "Returns md5sum for a message object of type '<edgeDetection-response>"
  "8aa5777c521081f19a30bfb75d11f817")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'edgeDetection-response)))
  "Returns md5sum for a message object of type 'edgeDetection-response"
  "8aa5777c521081f19a30bfb75d11f817")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<edgeDetection-response>)))
  "Returns full string definition for message of type '<edgeDetection-response>"
  (cl:format cl:nil "sensor_msgs/Image edgeImage~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'edgeDetection-response)))
  "Returns full string definition for message of type 'edgeDetection-response"
  (cl:format cl:nil "sensor_msgs/Image edgeImage~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <edgeDetection-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'edgeImage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <edgeDetection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'edgeDetection-response
    (cl:cons ':edgeImage (edgeImage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'edgeDetection)))
  'edgeDetection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'edgeDetection)))
  'edgeDetection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'edgeDetection)))
  "Returns string type for a service object of type '<edgeDetection>"
  "edge_detection/edgeDetection")