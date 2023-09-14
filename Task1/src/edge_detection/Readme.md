# ROS Package edge_detection_bin to display edges of an image

# Installation
## Prerequisites
Please install OpenCV .[OpenCV].(https://opencv.org)

## Install the package
Either use the binary edge_detection_bin under edge_detection/devel/lib/edge_detection/ in your ROS environment or build it in a catkin workspace from the source files using the provided CMakeLists.txt and package.xml files.

# Usage
Start roscore. In a new terminal call the package with rosrun edge_detection edge_detection_bin. As arguments, provide the source image location as a string and the low threshold, high threshold and aperture size for Canny edge detection as integers. Cf. .[OpenCVCanny].(https://docs.opencv.org/3.4/d7/de1/tutorial_js_canny.html)

# Implementation and concepts used
To facilitate compatibility and adaptability, OpenCV functions are used as much as possible.
The Canny edge detector was chosen for ease of use and adequate robustness to noise and rotation.

# Further imrovement
Currently the source image is loaded as color image. This could be improved by providing error handling or conversion for other image types.
Another large improvement would be the simultaneous reduction of required arguments and possible improvement of the edge detection by computing the low and high threshold values for the Canny edge detection automatically. One approach to this is to determine the median of the grayscale image and to set the thresholds by a factor, e.g. 0.66 and 1.33 times the median.
