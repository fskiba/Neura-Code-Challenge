; Auto-generated. Do not edit!


(cl:in-package edge_detection-msg)


;//! \htmlinclude requestEdges.msg.html

(cl:defclass <requestEdges> (roslisp-msg-protocol:ros-message)
  ((sourceImage
    :reader sourceImage
    :initarg :sourceImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (cannyThrLow
    :reader cannyThrLow
    :initarg :cannyThrLow
    :type cl:float
    :initform 0.0)
   (cannyThrHigh
    :reader cannyThrHigh
    :initarg :cannyThrHigh
    :type cl:float
    :initform 0.0)
   (apertureSize
    :reader apertureSize
    :initarg :apertureSize
    :type cl:integer
    :initform 0))
)

(cl:defclass requestEdges (<requestEdges>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <requestEdges>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'requestEdges)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name edge_detection-msg:<requestEdges> is deprecated: use edge_detection-msg:requestEdges instead.")))

(cl:ensure-generic-function 'sourceImage-val :lambda-list '(m))
(cl:defmethod sourceImage-val ((m <requestEdges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edge_detection-msg:sourceImage-val is deprecated.  Use edge_detection-msg:sourceImage instead.")
  (sourceImage m))

(cl:ensure-generic-function 'cannyThrLow-val :lambda-list '(m))
(cl:defmethod cannyThrLow-val ((m <requestEdges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edge_detection-msg:cannyThrLow-val is deprecated.  Use edge_detection-msg:cannyThrLow instead.")
  (cannyThrLow m))

(cl:ensure-generic-function 'cannyThrHigh-val :lambda-list '(m))
(cl:defmethod cannyThrHigh-val ((m <requestEdges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edge_detection-msg:cannyThrHigh-val is deprecated.  Use edge_detection-msg:cannyThrHigh instead.")
  (cannyThrHigh m))

(cl:ensure-generic-function 'apertureSize-val :lambda-list '(m))
(cl:defmethod apertureSize-val ((m <requestEdges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edge_detection-msg:apertureSize-val is deprecated.  Use edge_detection-msg:apertureSize instead.")
  (apertureSize m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <requestEdges>) ostream)
  "Serializes a message object of type '<requestEdges>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sourceImage) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cannyThrLow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cannyThrHigh))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'apertureSize)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <requestEdges>) istream)
  "Deserializes a message object of type '<requestEdges>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sourceImage) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cannyThrLow) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cannyThrHigh) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'apertureSize) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<requestEdges>)))
  "Returns string type for a message object of type '<requestEdges>"
  "edge_detection/requestEdges")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'requestEdges)))
  "Returns string type for a message object of type 'requestEdges"
  "edge_detection/requestEdges")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<requestEdges>)))
  "Returns md5sum for a message object of type '<requestEdges>"
  "81d6e10abd9f9fe8fa134f2a86660f75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'requestEdges)))
  "Returns md5sum for a message object of type 'requestEdges"
  "81d6e10abd9f9fe8fa134f2a86660f75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<requestEdges>)))
  "Returns full string definition for message of type '<requestEdges>"
  (cl:format cl:nil "sensor_msgs/Image sourceImage~%float64 cannyThrLow~%float64 cannyThrHigh~%int64 apertureSize~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'requestEdges)))
  "Returns full string definition for message of type 'requestEdges"
  (cl:format cl:nil "sensor_msgs/Image sourceImage~%float64 cannyThrLow~%float64 cannyThrHigh~%int64 apertureSize~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <requestEdges>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sourceImage))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <requestEdges>))
  "Converts a ROS message object to a list"
  (cl:list 'requestEdges
    (cl:cons ':sourceImage (sourceImage msg))
    (cl:cons ':cannyThrLow (cannyThrLow msg))
    (cl:cons ':cannyThrHigh (cannyThrHigh msg))
    (cl:cons ':apertureSize (apertureSize msg))
))
