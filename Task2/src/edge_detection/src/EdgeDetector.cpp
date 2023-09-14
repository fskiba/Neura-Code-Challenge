#include <edge_detection/EdgeDetector.hpp>

using namespace edge_detection;
using namespace cv;
using namespace std;

// Your class methods definition goes here
class EdgeDetector
{
public:
	// cv::Mat imread(std::string src, int flags){
	// 	cv::Mat image = cv::imread(src, flags);
	// 	return image;
	// }
	// void Canny(cv::Mat image, cv::Mat edges, double thrLow, double thrHigh, int kernelSize, bool L2grad){
	// 	cv::Canny(image, edges, thrLow, thrHigh, kernelSize, L2grad);
	// }
};

int main(int argc, char* argv[])
{
	edge_detection::EdgeDetector detector;
    // Create the executable for testing the code here
	cv::Mat image = cv::imread(argv[1], cv::IMREAD_COLOR);
	// cv::Mat image = cv::imread("/home/fskiba/catkin_ws/src/edge_detection/src/frame0000.jpg", cv::IMREAD_COLOR);
	cv::Size s= image.size();
	cv::Mat edges = cv::Mat(s.height, s.width, CV_8U);
	cv::Mat zeroChannel = cv::Mat(s.height, s.width, CV_8U,Scalar(0));
	cv::Mat overlay = cv::Mat(s.height, s.width, CV_8UC3);

	cv::Canny(image,edges, std::stod(argv[2]), std::stod(argv[3]), std::stoi(argv[4]), false);
	//cv::Canny(image,edges, 50, 200, 3, false);

	cv::Mat channels[3] = {zeroChannel,edges,zeroChannel};
	cv::merge(channels, 3, overlay);
	overlay = overlay + image;

	// int from_to[] = {0,1};

	// cv::mixChannels(&edges, 1, edgesGreen, 1, from_to, 1);
	// cv::Mat overlay = cv::Mat(s.height, s.width, CV_8UC3);
	// cv::copyTo(image, overlay, image);
	// overlay = image + edgesGreen;

	// cv::Mat greenEdges = cv::Mat(s.height, s.width, CV_8U);
	// edges.copyTo(greenEdges);
	// cvtColor(greenEdges, greenEdges, COLOR_GRAY2BGRA);
	// greenEdges = greenEdges.setTo(greenScalar, edges);
	// overlay = image + greenEdges;
	//cv::Mat contourImage=edges.clone();
	//vector<vector<Point>> contours;
	// cv::findContours(contourImage, contours, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_NONE);
	// cv::drawContours(image, contours, -1, (0, 255, 0), 3);
	std::string window_name = "Window name";
	cv::namedWindow(window_name, cv::WINDOW_AUTOSIZE);
	//cv::imshow(window_name, overlay);
	cv::imshow(window_name, overlay);
	cv::waitKey();
	return 0;
}
