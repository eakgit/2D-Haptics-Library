-This document serves as an introduction to the HapticScene Library, which is intended to approximate haptic interaction with 2D objects. 

-This library uses the Cmake,Raylib library and Eigen3, which will be included with the project and instructions to build will be included as well.

-The library consists of helper functions for the operations of certain aspects of the library in the MiscFunctions.h, the actual
implementations in HapticScene.h and examples that demonstrate the functionality of the library.

-The helper functions include various geometric tools such as projection of a point onto a line segment,distance calculations, collision algorithms
for various cases (circle-circle, line-line, circle-circle) and a test to determine if a point is inside a point using a basic ray-casting algorithm

-The implementation file defines the RConvex,RCircle and RPolygon structs used as a basis for representing conves shapes in the HapticScene library and creates a basic
means to interpret the data on-screen. In addition, it holds the HapticScene class, which holds the means to create,draw and determine the distance and collision status of any two
RConvex objects (All RCircle and RPolygon objects are RConvex objects) in addition to moving them around the screen using any input item of the user's choice.

-The two examples given demonstrates an example of basic collision between a circle and a circle and a circle and a polygon, using the mouse as an input device. When the mouse (green circle) is
in contact with the blue circle/polygon, then a spring force is generated between the collision point (which moves in accordance with the current position of the mouse) and the system records 
both the magnitude and direction of this force for later analysis. It should be noted that the user can change the input device to whatever he/she wishes.


Compilation:

Raylib Installation Instructions for Linux here:
	
	
	https://github.com/raysan5/raylib/wiki/Working-on-GNU-Linux
	https://github.com/raysan5/raylib/wiki/Working-with-CMake
	
Eigen3:
	For Linux, Eigen3 should be in the package manager of your given distro:
		-For Ubuntu, the command to install it is "sudo apt install libeigen3-dev"

		  
For the project, the following commands are needed:

$cmake ${The directory the CMakesList.txt file for this project is in} 
$make
$2D_circle_haptics or $2D_edge_haptics
