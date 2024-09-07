CMAKE_MINIMUM_REQUIRED(VERSION 3.24)

set(name "main")
project(${name})

#SET(OpenCV_DIR /path/to/your/opencv/installation)

# packages
find_package(OpenCV REQUIRED) # http://opencv.org

# executable targets
add_executable(main main.cpp)
target_link_libraries(main opencv_core opencv_imgproc opencv_features2d)

# check (phony) targets
add_custom_target(check
  COMMAND clang-tidy -checks='clang*,google*,hicpp*,llvm*,misc*,modern*,perf*,read*' ../main.cpp -- -isystem /usr/include/opencv -Wall -std=c++11)
