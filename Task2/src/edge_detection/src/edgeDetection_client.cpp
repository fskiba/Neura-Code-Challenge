#include "ros/ros.h"
#include "edge_detection/edgeDetection.h"
#include "edge_detection/requestEdges.h"
#include <edge_detection/EdgeDetector.hpp>

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "edgeDetection");
    if (argc != 2)
    {
        ROS_INFO("Usage: edgeDetection_client /Path/to/Image");
        return 1;
    }

    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<edge_detection::edgeDetection>("edgeDetection");
    edge_detection::edgeDetection srv;
    cv::Mat image = cv::imread(argv[1], cv::IMREAD_COLOR);

    srv.request.req.sourceImage.data = image;
    srv.request.req.cannyThrLow = 50;
    srv.request.req.cannyThrHigh = 200;
    srv.request.req.apertureSize = 3;

    if (client.call(srv))
    {
        std::string window_name = "Window name";
        cv::namedWindow(window_name, cv::WINDOW_AUTOSIZE);
        //cv::imshow(window_name, overlay);
        cv::imshow(window_name, srv.response.edgeImage.data);
        cv::waitKey();
    }
    else
    {
        ROS_ERROR("Failed to call service edgeDetection");
        return 1;
    }
    return 0;
}
