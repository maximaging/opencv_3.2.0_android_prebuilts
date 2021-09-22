# Install script for directory: /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0-android-25-arm64-v8a/release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni/include/opencv2" TYPE FILE FILES "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/cvconfig.h")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni/include/opencv2" TYPE FILE FILES "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/opencv2/opencv_modules.hpp")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni" TYPE FILE FILES "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/unix-install/OpenCV.mk")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni" TYPE FILE FILES "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/unix-install/OpenCV-arm64-v8a.mk")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/sdk/native/jni/abi-arm64-v8a/OpenCVModules.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/sdk/native/jni/abi-arm64-v8a/OpenCVModules.cmake"
         "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/CMakeFiles/Export/sdk/native/jni/abi-arm64-v8a/OpenCVModules.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/sdk/native/jni/abi-arm64-v8a/OpenCVModules-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/sdk/native/jni/abi-arm64-v8a/OpenCVModules.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni/abi-arm64-v8a" TYPE FILE FILES "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/CMakeFiles/Export/sdk/native/jni/abi-arm64-v8a/OpenCVModules.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni/abi-arm64-v8a" TYPE FILE FILES "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/CMakeFiles/Export/sdk/native/jni/abi-arm64-v8a/OpenCVModules-release.cmake")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni/abi-arm64-v8a" TYPE FILE FILES
    "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/unix-install/OpenCVConfig-version.cmake"
    "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/unix-install/abi-arm64-v8a/OpenCVConfig.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni" TYPE FILE FILES
    "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/unix-install/OpenCVConfig-version.cmake"
    "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/unix-install/OpenCVConfig.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sdk/native/jni" TYPE FILE FILES "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/platforms/android/android.toolchain.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/LICENSE")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES "/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/platforms/android/README.android")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/3rdparty/libtiff/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/3rdparty/libjpeg/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/3rdparty/libwebp/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/3rdparty/libjasper/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/3rdparty/libpng/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/3rdparty/openexr/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/3rdparty/carotene/hal/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/include/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/modules/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/doc/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/data/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/samples/cmake_install.cmake")
  include("/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/platforms/android/service/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
