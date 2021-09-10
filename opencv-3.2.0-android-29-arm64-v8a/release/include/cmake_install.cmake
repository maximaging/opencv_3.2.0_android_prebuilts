# Install script for directory: /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0-android-29-arm64-v8a/release")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni/include/opencv" TYPE FILE FILES
    "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv/cv.h"
    "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv/cv.hpp"
    "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv/cvaux.h"
    "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv/cvaux.hpp"
    "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv/cvwimage.h"
    "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv/cxcore.h"
    "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv/cxcore.hpp"
    "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv/cxeigen.hpp"
    "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv/cxmisc.h"
    "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv/highgui.h"
    "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv/ml.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni/include/opencv2" TYPE FILE FILES "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/include/opencv2/opencv.hpp")
endif()

