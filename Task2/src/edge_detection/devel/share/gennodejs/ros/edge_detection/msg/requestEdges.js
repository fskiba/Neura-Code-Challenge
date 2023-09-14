// Auto-generated. Do not edit!

// (in-package edge_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class requestEdges {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sourceImage = null;
      this.cannyThrLow = null;
      this.cannyThrHigh = null;
      this.apertureSize = null;
    }
    else {
      if (initObj.hasOwnProperty('sourceImage')) {
        this.sourceImage = initObj.sourceImage
      }
      else {
        this.sourceImage = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('cannyThrLow')) {
        this.cannyThrLow = initObj.cannyThrLow
      }
      else {
        this.cannyThrLow = 0.0;
      }
      if (initObj.hasOwnProperty('cannyThrHigh')) {
        this.cannyThrHigh = initObj.cannyThrHigh
      }
      else {
        this.cannyThrHigh = 0.0;
      }
      if (initObj.hasOwnProperty('apertureSize')) {
        this.apertureSize = initObj.apertureSize
      }
      else {
        this.apertureSize = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type requestEdges
    // Serialize message field [sourceImage]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.sourceImage, buffer, bufferOffset);
    // Serialize message field [cannyThrLow]
    bufferOffset = _serializer.float64(obj.cannyThrLow, buffer, bufferOffset);
    // Serialize message field [cannyThrHigh]
    bufferOffset = _serializer.float64(obj.cannyThrHigh, buffer, bufferOffset);
    // Serialize message field [apertureSize]
    bufferOffset = _serializer.int64(obj.apertureSize, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type requestEdges
    let len;
    let data = new requestEdges(null);
    // Deserialize message field [sourceImage]
    data.sourceImage = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [cannyThrLow]
    data.cannyThrLow = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cannyThrHigh]
    data.cannyThrHigh = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [apertureSize]
    data.apertureSize = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.sourceImage);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'edge_detection/requestEdges';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81d6e10abd9f9fe8fa134f2a86660f75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new requestEdges(null);
    if (msg.sourceImage !== undefined) {
      resolved.sourceImage = sensor_msgs.msg.Image.Resolve(msg.sourceImage)
    }
    else {
      resolved.sourceImage = new sensor_msgs.msg.Image()
    }

    if (msg.cannyThrLow !== undefined) {
      resolved.cannyThrLow = msg.cannyThrLow;
    }
    else {
      resolved.cannyThrLow = 0.0
    }

    if (msg.cannyThrHigh !== undefined) {
      resolved.cannyThrHigh = msg.cannyThrHigh;
    }
    else {
      resolved.cannyThrHigh = 0.0
    }

    if (msg.apertureSize !== undefined) {
      resolved.apertureSize = msg.apertureSize;
    }
    else {
      resolved.apertureSize = 0
    }

    return resolved;
    }
};

module.exports = requestEdges;
