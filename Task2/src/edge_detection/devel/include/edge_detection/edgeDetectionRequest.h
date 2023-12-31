// Generated by gencpp from file edge_detection/edgeDetectionRequest.msg
// DO NOT EDIT!


#ifndef EDGE_DETECTION_MESSAGE_EDGEDETECTIONREQUEST_H
#define EDGE_DETECTION_MESSAGE_EDGEDETECTIONREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <edge_detection/requestEdges.h>

namespace edge_detection
{
template <class ContainerAllocator>
struct edgeDetectionRequest_
{
  typedef edgeDetectionRequest_<ContainerAllocator> Type;

  edgeDetectionRequest_()
    : req()  {
    }
  edgeDetectionRequest_(const ContainerAllocator& _alloc)
    : req(_alloc)  {
  (void)_alloc;
    }



   typedef  ::edge_detection::requestEdges_<ContainerAllocator>  _req_type;
  _req_type req;





  typedef boost::shared_ptr< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct edgeDetectionRequest_

typedef ::edge_detection::edgeDetectionRequest_<std::allocator<void> > edgeDetectionRequest;

typedef boost::shared_ptr< ::edge_detection::edgeDetectionRequest > edgeDetectionRequestPtr;
typedef boost::shared_ptr< ::edge_detection::edgeDetectionRequest const> edgeDetectionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::edge_detection::edgeDetectionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::edge_detection::edgeDetectionRequest_<ContainerAllocator1> & lhs, const ::edge_detection::edgeDetectionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.req == rhs.req;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::edge_detection::edgeDetectionRequest_<ContainerAllocator1> & lhs, const ::edge_detection::edgeDetectionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace edge_detection

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4c12a8127ae27f5b7a1023402be440d3";
  }

  static const char* value(const ::edge_detection::edgeDetectionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4c12a8127ae27f5bULL;
  static const uint64_t static_value2 = 0x7a1023402be440d3ULL;
};

template<class ContainerAllocator>
struct DataType< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "edge_detection/edgeDetectionRequest";
  }

  static const char* value(const ::edge_detection::edgeDetectionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "requestEdges req\n"
"\n"
"================================================================================\n"
"MSG: edge_detection/requestEdges\n"
"sensor_msgs/Image sourceImage\n"
"uint32 cannyThrLow\n"
"uint32 cannyThrHigh\n"
"uint32 apertureSize\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::edge_detection::edgeDetectionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.req);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct edgeDetectionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::edge_detection::edgeDetectionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::edge_detection::edgeDetectionRequest_<ContainerAllocator>& v)
  {
    s << indent << "req: ";
    s << std::endl;
    Printer< ::edge_detection::requestEdges_<ContainerAllocator> >::stream(s, indent + "  ", v.req);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EDGE_DETECTION_MESSAGE_EDGEDETECTIONREQUEST_H
