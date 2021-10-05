# OpenCV 3.2.0 Prebuilts for Android with LLVM C++ Runtime 
---
- Built OpenCV 3.2.0 static libraries in release and debug modes
- Sources retrieved from [the official GitHub OpenCV repository]( https://github.com/opencv/opencv/archive/3.2.0.zip)
- Cross-compiled on Ubuntu 16.04.7 LTS with [**Android NDK 21.1.6352462 package**](https://github.com/android/ndk/wiki/Unsupported-Downloads)
- CMake version: [3.6.0-rc4](https://src.fedoraproject.org/lookaside/extras/cmake/cmake-3.6.0-rc4.tar.gz/) (installed manually)
- **Native API levels: android-29, android-25**
- **STL type: c++_static**
- **Android ABI: arm64-v8a**
---
## Release Build Details

### CMake Configuration

- CMake settings:
```bash
ANDROID_TOOLCHAIN_FILE=/home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/build/cmake/android.toolchain.cmake
```
```bash
ANDROID_NDK_PATH=/home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462
```
```bash
OPENCV_CMAKEFILE_PATH=/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0
```
```bash
# Set to android-29 and android-25
ANDROID_API_LEVEL=android-29
```
```bash
OPENCV_INSTALL_PATH=/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0-${ANDROID_API_LEVEL}-arm64-v8a/release
```
- CMake command:
```bash
# From /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0-${ANDROID_API_LEVEL}-arm64-v8a/release
cmake ${OPENCV_CMAKEFILE_PATH} -DCMAKE_TOOLCHAIN_FILE=${ANDROID_TOOLCHAIN_FILE} -DANDROID_NDK=${ANDROID_NDK_PATH} -DANDROID_NATIVE_API_LEVEL=${ANDROID_API_LEVEL} -DBUILD_JAVA=OFF -DBUILD_ANDROID_EXAMPLES=ON -DBUILD_ANDROID_PROJECTS=ON -DANDROID_STL=c++_static -DBUILD_SHARED_LIBS=OFF -DCMAKE_INSTALL_PREFIX:PATH=${OPENCV_INSTALL_PATH} -DANDROID_ABI=arm64-v8a -DOPENCV_FP16_DISABLE=ON -DCMAKE_BUILD_TYPE=Release
```
+ [CMake command log (android-29)](opencv-3.2.0-android-29-arm64-v8a/logs/release_build_configuration.md)

+ [Release compilation log (android-29)](opencv-3.2.0-android-29-arm64-v8a/logs/release_build_compilation.md)

+ [CMake command log (android-25)](opencv-3.2.0-android-25-arm64-v8a/logs/release_build_configuration.md)

+ [Release compilation log (android-25)](opencv-3.2.0-android-25-arm64-v8a/logs/release_build_compilation.md)

---
## Debug Build Details

### CMake Configuration

- CMake settings:
```bash
ANDROID_TOOLCHAIN_FILE=/home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/build/cmake/android.toolchain.cmake
```
```bash
ANDROID_NDK_PATH=/home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462
```
```bash
OPENCV_CMAKEFILE_PATH=/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0
```
```bash
# Set to android-29 and android-25
ANDROID_API_LEVEL=android-29
```
```bash
OPENCV_INSTALL_PATH=/home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0-${ANDROID_API_LEVEL}-arm64-v8a/debug
```

- CMake command:
```bash
# From /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0-android-${ANDROID_API_LEVEL}-arm64-v8a/debug
cmake ${OPENCV_CMAKEFILE_PATH} -DCMAKE_TOOLCHAIN_FILE=${ANDROID_TOOLCHAIN_FILE} -DANDROID_NDK=${ANDROID_NDK_PATH} -DANDROID_NATIVE_API_LEVEL=${ANDROID_API_LEVEL} -DBUILD_JAVA=OFF -DBUILD_ANDROID_EXAMPLES=ON -DBUILD_ANDROID_PROJECTS=ON -DANDROID_STL=c++_static -DBUILD_SHARED_LIBS=OFF -DCMAKE_INSTALL_PREFIX:PATH=${OPENCV_INSTALL_PATH} -DANDROID_ABI=arm64-v8a -DOPENCV_FP16_DISABLE=ON -DCMAKE_BUILD_TYPE=Debug
```
+ [CMake command log (android-29)](opencv-3.2.0-android-29-arm64-v8a/logs/debug_build_configuration.md)

+ [Debug compilation log (android-29)](opencv-3.2.0-android-29-arm64-v8a/logs/debug_build_compilation.md)

+ [CMake command log (android-25)](opencv-3.2.0-android-25-arm64-v8a/logs/debug_build_configuration.md)

+ [Debug compilation log  (android-25)](opencv-3.2.0-android-25-arm64-v8a/logs/debug_build_compilation.md)
---
#### Notes

+ ***The installation prefix has been explicitely configured for supporting CMake commands such as 'find_package', 'find_program', 'find_library', 'find_path', and 'find_file' in any linked Android projects.***
+ *FP16 compiler support has been disabled.* <details><summary>Why? <i>(click to expand)</i></summary>When FP16 support is enabled, CMake logs indicates that the test 'CXX_HAS_MFPU_NEON' is performed and validated, the test 'C_HAS_MFPU_NEON' is performed and validated and the check file 'cmake/checks/fp16.cpp' is ignored. And the libraries and example applications are not successfully built ([CMake configuration logs](https://pastebin.com/bTqZkjTc) and [compilation error logs](https://pastebin.com/ucfYPfEs)). From my investigation, it appears that some progress on FP16 compiler support for OpenCV has been integrated (reviewed and merged) following the release 3.2.0. [This merge](https://github.com/opencv/opencv/pull/20321) from June 21 is the latest work on this matter, a comment from \@alalek introduces some previous pull requests. [More details](https://stackoverflow.com/questions/51319822/compiling-qt-and-opencv-for-arm64-v8a/69281180#69281180) available on a related discussion thread on StackOverflow.</details>
+ *The command argument "-DANDROID_SDK_TARGET" is not required if OpenCV Java API and samples are not generated.*
---
#### How to link OpenCV libraries with the Android Studio project?
+ Add OpenCV include directories and libraries in the CMakeLists.txt file located in the Android project 'app' module folder.

```cmake
SET( BUILD_TYPE release )

SET( OpenCV_LIB_DIR
    /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0-android-29-arm64-v8a/${BUILD_TYPE} )

# Retrieve OpenCV_INCLUDE_DIRS and OpenCV_LIBS variables from OpenCVConfig.cmake
FIND_PACKAGE( OpenCV REQUIRED )

MESSAGE( STATUS "Configured OpenCV include directories: ${OpenCV_INCLUDE_DIRS}" )

INCLUDE_DIRECTORIES( ${OpenCV_INCLUDE_DIRS} )

MESSAGE( STATUS "Configured OpenCV libraries: ${OpenCV_LIBS}" )

TARGET_LINK_LIBRARIES( # ...
    # ...
    ${OpenCV_LIBS} )
```

---

#### Troubleshoots

<details>
<summary>(A) If the OpenCV folder has been moved to another directory and the package configuration file is not found <i>(click to expand)</i></summary>

+ Option 1: Re-edit configured OpenCV_INCLUDE_DIRS variable in OpenCVConfig.cmake.
+ Option 2: Add OpenCV include directories and libraries in the CMakeLists.txt file manually.
```cmake
SET( BUILD_TYPE release )

SET( OpenCV_ROOT_DIR /home/dev/workspace/repositories/opencv-3.2.0/ )

SET( OpenCV_LIB_DIR
    ${OpenCV_ROOT_DIR}/opencv-3.2.0-android-29-arm64-v8a/${BUILD_TYPE}/lib/arm64-v8a )

SET( OpenCV_INCLUDE_DIRS 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0-android-29-arm64-v8a/${BUILD_TYPE} 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/include/opencv 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/core/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/flann/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/imgproc/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/ml/include
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/photo/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/video/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/imgcodecs/include
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/shape/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/videoio/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/highgui/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/objdetect/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/superres/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/ts/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/features2d/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/calib3d/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/stitching/include 
    ${OpenCV_ROOT_DIR}/opencv-3.2.0/modules/videostab/include )

MESSAGE( STATUS "Configured OpenCV include directories: ${OpenCV_INCLUDE_DIRS}" )

INCLUDE_DIRECTORIES( ${OpenCV_INCLUDE_DIRS} )

TARGET_LINK_LIBRARIES( # ...
    # ...
    # Links OpenCV libraries to the 
    # the target library
    ${OpenCV_LIB_DIR}/libopencv_calib3d.a
    ${OpenCV_LIB_DIR}/libopencv_core.a
    ${OpenCV_LIB_DIR}/libopencv_features2d.a
    ${OpenCV_LIB_DIR}/libopencv_flann.a
    ${OpenCV_LIB_DIR}/libopencv_highgui.a
    ${OpenCV_LIB_DIR}/libopencv_imgcodecs.a
    ${OpenCV_LIB_DIR}/libopencv_imgproc.a
    ${OpenCV_LIB_DIR}/libopencv_ml.a
    ${OpenCV_LIB_DIR}/libopencv_objdetect.a
    ${OpenCV_LIB_DIR}/libopencv_photo.a
    ${OpenCV_LIB_DIR}/libopencv_shape.a
    ${OpenCV_LIB_DIR}/libopencv_stitching.a
    ${OpenCV_LIB_DIR}/libopencv_superres.a
    ${OpenCV_LIB_DIR}/libopencv_video.a
    ${OpenCV_LIB_DIR}/libopencv_videoio.a
    ${OpenCV_LIB_DIR}/libopencv_videostab.a
    ${OpenCV_LIB_DIR}/../../3rdparty/lib/arm64-v8a/libIlmImf.a
    ${OpenCV_LIB_DIR}/../../3rdparty/lib/arm64-v8a/liblibjasper.a
    ${OpenCV_LIB_DIR}/../../3rdparty/lib/arm64-v8a/liblibjpeg.a
    ${OpenCV_LIB_DIR}/../../3rdparty/lib/arm64-v8a/liblibpng.a
    ${OpenCV_LIB_DIR}/../../3rdparty/lib/arm64-v8a/liblibtiff.a
    ${OpenCV_LIB_DIR}/../../3rdparty/lib/arm64-v8a/liblibwebp.a
    ${OpenCV_LIB_DIR}/../../3rdparty/lib/arm64-v8a/libtegra_hal.a )
```
</details> 

(B) If OpenCV_FOUND variable is founded but is set to 'FALSE'\
Set the Android project minimum API level to the configured 'ANDROID_API_LEVEL' value.

(C) If 'zlib' functions such as 'gzopen' are undefined\
Add the LDFLAG '-lz' when linking the OpenCV project. 

---

#### Useful Reading List

1. [sisik.eu: Compiling and Using OpenCV on Android from C++ (Without OpenCVManager)](https://www.sisik.eu/blog/android/ndk/opencv-without-java)

2. [discuz-android: Build OpenCV for Android with LLVM C++ Runtime](https://discuz-android.blogspot.com/2017/10/build-opencv-for-android-with-llvm-c.html)

3. [amritamaz.net: Useful Cmake Flags to Turn On and Off in Your OpenCV install](http://amritamaz.net/blog/opencv-config)

---