;; Auto-generated. Do not edit!


(when (boundp 'edge_detection::requestEdges)
  (if (not (find-package "EDGE_DETECTION"))
    (make-package "EDGE_DETECTION"))
  (shadow 'requestEdges (find-package "EDGE_DETECTION")))
(unless (find-package "EDGE_DETECTION::REQUESTEDGES")
  (make-package "EDGE_DETECTION::REQUESTEDGES"))

(in-package "ROS")
;;//! \htmlinclude requestEdges.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass edge_detection::requestEdges
  :super ros::object
  :slots (_sourceImage _cannyThrLow _cannyThrHigh _apertureSize ))

(defmethod edge_detection::requestEdges
  (:init
   (&key
    ((:sourceImage __sourceImage) (instance sensor_msgs::Image :init))
    ((:cannyThrLow __cannyThrLow) 0.0)
    ((:cannyThrHigh __cannyThrHigh) 0.0)
    ((:apertureSize __apertureSize) 0)
    )
   (send-super :init)
   (setq _sourceImage __sourceImage)
   (setq _cannyThrLow (float __cannyThrLow))
   (setq _cannyThrHigh (float __cannyThrHigh))
   (setq _apertureSize (round __apertureSize))
   self)
  (:sourceImage
   (&rest __sourceImage)
   (if (keywordp (car __sourceImage))
       (send* _sourceImage __sourceImage)
     (progn
       (if __sourceImage (setq _sourceImage (car __sourceImage)))
       _sourceImage)))
  (:cannyThrLow
   (&optional __cannyThrLow)
   (if __cannyThrLow (setq _cannyThrLow __cannyThrLow)) _cannyThrLow)
  (:cannyThrHigh
   (&optional __cannyThrHigh)
   (if __cannyThrHigh (setq _cannyThrHigh __cannyThrHigh)) _cannyThrHigh)
  (:apertureSize
   (&optional __apertureSize)
   (if __apertureSize (setq _apertureSize __apertureSize)) _apertureSize)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _sourceImage
    (send _sourceImage :serialization-length)
    ;; float64 _cannyThrLow
    8
    ;; float64 _cannyThrHigh
    8
    ;; int64 _apertureSize
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _sourceImage
       (send _sourceImage :serialize s)
     ;; float64 _cannyThrLow
       (sys::poke _cannyThrLow (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cannyThrHigh
       (sys::poke _cannyThrHigh (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _apertureSize
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _apertureSize (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _apertureSize) (= (length (_apertureSize . bv)) 2)) ;; bignum
              (write-long (ash (elt (_apertureSize . bv) 0) 0) s)
              (write-long (ash (elt (_apertureSize . bv) 1) -1) s))
             ((and (class _apertureSize) (= (length (_apertureSize . bv)) 1)) ;; big1
              (write-long (elt (_apertureSize . bv) 0) s)
              (write-long (if (>= _apertureSize 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _apertureSize s)(write-long (if (>= _apertureSize 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _sourceImage
     (send _sourceImage :deserialize buf ptr-) (incf ptr- (send _sourceImage :serialization-length))
   ;; float64 _cannyThrLow
     (setq _cannyThrLow (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cannyThrHigh
     (setq _cannyThrHigh (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _apertureSize
#+(or :alpha :irix6 :x86_64)
      (setf _apertureSize (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _apertureSize (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get edge_detection::requestEdges :md5sum-) "81d6e10abd9f9fe8fa134f2a86660f75")
(setf (get edge_detection::requestEdges :datatype-) "edge_detection/requestEdges")
(setf (get edge_detection::requestEdges :definition-)
      "sensor_msgs/Image sourceImage
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

")



(provide :edge_detection/requestEdges "81d6e10abd9f9fe8fa134f2a86660f75")


