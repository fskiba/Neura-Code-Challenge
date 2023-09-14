#pragma once

#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <stdint.h>

namespace edge_detection

{
class EdgeDetector
{
	// Your class declaration goes here
	public:
		cv::Mat imread(std::string src, int flags);
		void Canny(cv::Mat image, cv::Mat edges, double thrLow, double thrHigh, int kernelSize, bool L2grad);
		void merge (const cv::Mat* mv, size_t count, cv::Mat dst);
};

}
