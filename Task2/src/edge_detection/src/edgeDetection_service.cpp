#include "ros/ros.h"
#include "edge_detection/edgeDetection.h"
#include "edge_detection/requestEdges.h"
#include <edge_detection/EdgeDetector.hpp>

bool detectEdges(edge_detection::edgeDetection::Request &req,
                 edge_detection::edgeDetection::Response &res)
{
    cv::Mat image = req.sourceImage.data;
    cv::Size s= image.size();
	cv::Mat edges = cv::Mat(s.height, s.width, CV_8U);
	cv::Mat zeroChannel = cv::Mat(s.height, s.width, CV_8U,Scalar(0));
	cv::Mat overlay = cv::Mat(s.height, s.width, CV_8UC3);

	cv::Canny(image,edges, req.cannyThrLow, req.cannyThrHigh, req.apertureSize, false);

    cv::Mat channels[3] = {zeroChannel,edges,zeroChannel};
	cv::merge(channels, 3, overlay);
	overlay = overlay + image;

    res.edgeImage.data = overlay;

    return true;
}

int main (int argc, char* argv[])
{
    ros::init (argc, argv, "edgeDetection_service");
    ros::NodeHandle n;
    ros::ServiceServer service = n.advertiseService("edgeDetection", detectEdges);
    ROS_INFO("Edge detection ready");
    ros::spin();
    return 0;
}
