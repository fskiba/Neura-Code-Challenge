;; Auto-generated. Do not edit!


(when (boundp 'edge_detection::edgeDetection)
  (if (not (find-package "EDGE_DETECTION"))
    (make-package "EDGE_DETECTION"))
  (shadow 'edgeDetection (find-package "EDGE_DETECTION")))
(unless (find-package "EDGE_DETECTION::EDGEDETECTION")
  (make-package "EDGE_DETECTION::EDGEDETECTION"))
(unless (find-package "EDGE_DETECTION::EDGEDETECTIONREQUEST")
  (make-package "EDGE_DETECTION::EDGEDETECTIONREQUEST"))
(unless (find-package "EDGE_DETECTION::EDGEDETECTIONRESPONSE")
  (make-package "EDGE_DETECTION::EDGEDETECTIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass edge_detection::edgeDetectionRequest
  :super ros::object
  :slots (_req ))

(defmethod edge_detection::edgeDetectionRequest
  (:init
   (&key
    ((:req __req) (instance edge_detection::requestEdges :init))
    )
   (send-super :init)
   (setq _req __req)
   self)
  (:req
   (&rest __req)
   (if (keywordp (car __req))
       (send* _req __req)
     (progn
       (if __req (setq _req (car __req)))
       _req)))
  (:serialization-length
   ()
   (+
    ;; edge_detection/requestEdges _req
    (send _req :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; edge_detection/requestEdges _req
       (send _req :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; edge_detection/requestEdges _req
     (send _req :deserialize buf ptr-) (incf ptr- (send _req :serialization-length))
   ;;
   self)
  )

(defclass edge_detection::edgeDetectionResponse
  :super ros::object
  :slots (_edgeImage ))

(defmethod edge_detection::edgeDetectionResponse
  (:init
   (&key
    ((:edgeImage __edgeImage) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _edgeImage __edgeImage)
   self)
  (:edgeImage
   (&rest __edgeImage)
   (if (keywordp (car __edgeImage))
       (send* _edgeImage __edgeImage)
     (progn
       (if __edgeImage (setq _edgeImage (car __edgeImage)))
       _edgeImage)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _edgeImage
    (send _edgeImage :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _edgeImage
       (send _edgeImage :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _edgeImage
     (send _edgeImage :deserialize buf ptr-) (incf ptr- (send _edgeImage :serialization-length))
   ;;
   self)
  )

(defclass edge_detection::edgeDetection
  :super ros::object
  :slots ())

(setf (get edge_detection::edgeDetection :md5sum-) "8aa5777c521081f19a30bfb75d11f817")
(setf (get edge_detection::edgeDetection :datatype-) "edge_detection/edgeDetection")
(setf (get edge_detection::edgeDetection :request) edge_detection::edgeDetectionRequest)
(setf (get edge_detection::edgeDetection :response) edge_detection::edgeDetectionResponse)

(defmethod edge_detection::edgeDetectionRequest
  (:response () (instance edge_detection::edgeDetectionResponse :init)))

(setf (get edge_detection::edgeDetectionRequest :md5sum-) "8aa5777c521081f19a30bfb75d11f817")
(setf (get edge_detection::edgeDetectionRequest :datatype-) "edge_detection/edgeDetectionRequest")
(setf (get edge_detection::edgeDetectionRequest :definition-)
      "requestEdges req

================================================================================
MSG: edge_detection/requestEdges
sensor_msgs/Image sourceImage
float64 cannyThrLow
float64 cannyThrHigh
int64 apertureSize

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
sensor_msgs/Image edgeImage


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")

(setf (get edge_detection::edgeDetectionResponse :md5sum-) "8aa5777c521081f19a30bfb75d11f817")
(setf (get edge_detection::edgeDetectionResponse :datatype-) "edge_detection/edgeDetectionResponse")
(setf (get edge_detection::edgeDetectionResponse :definition-)
      "requestEdges req

================================================================================
MSG: edge_detection/requestEdges
sensor_msgs/Image sourceImage
float64 cannyThrLow
float64 cannyThrHigh
int64 apertureSize

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
sensor_msgs/Image edgeImage


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")



(provide :edge_detection/edgeDetection "8aa5777c521081f19a30bfb75d11f817")


