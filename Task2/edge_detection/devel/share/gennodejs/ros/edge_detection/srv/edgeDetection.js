// Auto-generated. Do not edit!

// (in-package edge_detection.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let requestEdges = require('../msg/requestEdges.js');

//-----------------------------------------------------------

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class edgeDetectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.req = null;
    }
    else {
      if (initObj.hasOwnProperty('req')) {
        this.req = initObj.req
      }
      else {
        this.req = new requestEdges();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type edgeDetectionRequest
    // Serialize message field [req]
    bufferOffset = requestEdges.serialize(obj.req, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type edgeDetectionRequest
    let len;
    let data = new edgeDetectionRequest(null);
    // Deserialize message field [req]
    data.req = requestEdges.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += requestEdges.getMessageSize(object.req);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'edge_detection/edgeDetectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3a5159a8476d5362fa64ae42642c595';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    requestEdges req
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new edgeDetectionRequest(null);
    if (msg.req !== undefined) {
      resolved.req = requestEdges.Resolve(msg.req)
    }
    else {
      resolved.req = new requestEdges()
    }

    return resolved;
    }
};

class edgeDetectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.edgeImage = null;
    }
    else {
      if (initObj.hasOwnProperty('edgeImage')) {
        this.edgeImage = initObj.edgeImage
      }
      else {
        this.edgeImage = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type edgeDetectionResponse
    // Serialize message field [edgeImage]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.edgeImage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type edgeDetectionResponse
    let len;
    let data = new edgeDetectionResponse(null);
    // Deserialize message field [edgeImage]
    data.edgeImage = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.edgeImage);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'edge_detection/edgeDetectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a33b7018bebcb40ed6464450a5833a16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new edgeDetectionResponse(null);
    if (msg.edgeImage !== undefined) {
      resolved.edgeImage = sensor_msgs.msg.Image.Resolve(msg.edgeImage)
    }
    else {
      resolved.edgeImage = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = {
  Request: edgeDetectionRequest,
  Response: edgeDetectionResponse,
  md5sum() { return '8aa5777c521081f19a30bfb75d11f817'; },
  datatype() { return 'edge_detection/edgeDetection'; }
};
