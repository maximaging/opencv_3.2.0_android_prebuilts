# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release

# Include any dependencies generated for this target.
include samples/android/CMakeFiles/hello-android.dir/depend.make

# Include the progress variables for this target.
include samples/android/CMakeFiles/hello-android.dir/progress.make

# Include the compile flags for this target's objects.
include samples/android/CMakeFiles/hello-android.dir/flags.make

samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o: samples/android/CMakeFiles/hello-android.dir/flags.make
samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o: /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/samples/android/hello-android/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o"
	cd /home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/samples/android && /home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++  --target=aarch64-none-linux-android24 --gcc-toolchain=/home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello-android.dir/hello-android/main.cpp.o -c /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/samples/android/hello-android/main.cpp

samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello-android.dir/hello-android/main.cpp.i"
	cd /home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/samples/android && /home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++  --target=aarch64-none-linux-android24 --gcc-toolchain=/home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/samples/android/hello-android/main.cpp > CMakeFiles/hello-android.dir/hello-android/main.cpp.i

samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello-android.dir/hello-android/main.cpp.s"
	cd /home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/samples/android && /home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++  --target=aarch64-none-linux-android24 --gcc-toolchain=/home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/samples/android/hello-android/main.cpp -o CMakeFiles/hello-android.dir/hello-android/main.cpp.s

samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o.requires:

.PHONY : samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o.requires

samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o.provides: samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o.requires
	$(MAKE) -f samples/android/CMakeFiles/hello-android.dir/build.make samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o.provides.build
.PHONY : samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o.provides

samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o.provides.build: samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o


# Object files for target hello-android
hello__android_OBJECTS = \
"CMakeFiles/hello-android.dir/hello-android/main.cpp.o"

# External object files for target hello-android
hello__android_EXTERNAL_OBJECTS =

bin/hello-android: samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o
bin/hello-android: samples/android/CMakeFiles/hello-android.dir/build.make
bin/hello-android: lib/arm64-v8a/libopencv_imgcodecs.a
bin/hello-android: lib/arm64-v8a/libopencv_videoio.a
bin/hello-android: lib/arm64-v8a/libopencv_highgui.a
bin/hello-android: lib/arm64-v8a/libopencv_core.a
bin/hello-android: lib/arm64-v8a/libopencv_imgproc.a
bin/hello-android: lib/arm64-v8a/libopencv_videoio.a
bin/hello-android: lib/arm64-v8a/libopencv_imgcodecs.a
bin/hello-android: 3rdparty/lib/arm64-v8a/liblibjpeg.a
bin/hello-android: 3rdparty/lib/arm64-v8a/liblibwebp.a
bin/hello-android: 3rdparty/lib/arm64-v8a/liblibpng.a
bin/hello-android: 3rdparty/lib/arm64-v8a/liblibtiff.a
bin/hello-android: 3rdparty/lib/arm64-v8a/liblibjasper.a
bin/hello-android: 3rdparty/lib/arm64-v8a/libIlmImf.a
bin/hello-android: lib/arm64-v8a/libopencv_imgproc.a
bin/hello-android: lib/arm64-v8a/libopencv_core.a
bin/hello-android: /home/dev/workspace/dev-tools/Android/Sdk/ndk/21.1.6352462/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/libz.a
bin/hello-android: 3rdparty/lib/arm64-v8a/libtegra_hal.a
bin/hello-android: samples/android/CMakeFiles/hello-android.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/hello-android"
	cd /home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/samples/android && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello-android.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/android/CMakeFiles/hello-android.dir/build: bin/hello-android

.PHONY : samples/android/CMakeFiles/hello-android.dir/build

samples/android/CMakeFiles/hello-android.dir/requires: samples/android/CMakeFiles/hello-android.dir/hello-android/main.cpp.o.requires

.PHONY : samples/android/CMakeFiles/hello-android.dir/requires

samples/android/CMakeFiles/hello-android.dir/clean:
	cd /home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/samples/android && $(CMAKE_COMMAND) -P CMakeFiles/hello-android.dir/cmake_clean.cmake
.PHONY : samples/android/CMakeFiles/hello-android.dir/clean

samples/android/CMakeFiles/hello-android.dir/depend:
	cd /home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0 /home/dev/workspace/repositories/opencv-3.2.0/opencv-3.2.0/samples/android /home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release /home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/samples/android /home/dev/workspace/repositories/opencv-3.2.0-android-prebuilts.git/opencv-3.2.0-android-25-arm64-v8a/release/samples/android/CMakeFiles/hello-android.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/android/CMakeFiles/hello-android.dir/depend

