#include <edge_detection/EdgeDetector.hpp>

using namespace edge_detection;
using namespace cv;
using namespace std;

// Your class methods definition goes here
class EdgeDetector
{

};

int main(int argc, char* argv[])
{
	edge_detection::EdgeDetector detector;
    // Create the executable for testing the code here

	// Read source image independent of size from source location passed to main
	// Currently color image is the only mode
	cv::Mat image = cv::imread(argv[1], cv::IMREAD_COLOR);

	// Get size of source image
	cv::Size s= image.size();
	// Create single channel Mat object of the same size to store edges
	cv::Mat edges = cv::Mat(s.height, s.width, CV_8U);
	// Create empty single channel Mat object of the same size
	cv::Mat zeroChannel = cv::Mat(s.height, s.width, CV_8U,Scalar(0));
	// Create color image of the same size as output image
	cv::Mat overlay = cv::Mat(s.height, s.width, CV_8UC3);

	// Detect edges with Canny method, the arguments low threshold, high threshold and aperture size
	// have been passed to main
	cv::Canny(image,edges, std::stod(argv[2]), std::stod(argv[3]), std::stoi(argv[4]), false);

	// Combine empty single channel for red and blue and edge image for green to an array
	// and merge them to a rgb image to create green edge overlay
	cv::Mat channels[3] = {zeroChannel,edges,zeroChannel};
	cv::merge(channels, 3, overlay);

	// Add original image and overlay to form output image
	overlay = overlay + image;

	// Name and open a window to display the result
	std::string window_name = "Window name";
	cv::namedWindow(window_name, cv::WINDOW_AUTOSIZE);
	// Show the output image
	cv::imshow(window_name, overlay);
	cv::waitKey();

	return 0;
}
