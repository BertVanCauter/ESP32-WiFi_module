# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /home/bert/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/bert/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bert/esp/esp-idf/components/bootloader/subproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bert/esp/test_project/cmake-build-debug/bootloader

# Utility rule file for uf2.

# Include the progress variables for this target.
include CMakeFiles/uf2.dir/progress.make

CMakeFiles/uf2: bootloader
	/home/bert/.espressif/python_env/idf4.4_py3.6_env/bin/python3.6 /home/bert/esp/esp-idf/tools/mkuf2.py write -o /home/bert/esp/test_project/cmake-build-debug/bootloader/uf2.bin --json /home/bert/esp/test_project/cmake-build-debug/bootloader/flasher_args.json --chip-id 0x1c5f21b0

uf2: CMakeFiles/uf2
uf2: CMakeFiles/uf2.dir/build.make

.PHONY : uf2

# Rule to build all files generated by this target.
CMakeFiles/uf2.dir/build: uf2

.PHONY : CMakeFiles/uf2.dir/build

CMakeFiles/uf2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uf2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uf2.dir/clean

CMakeFiles/uf2.dir/depend:
	cd /home/bert/esp/test_project/cmake-build-debug/bootloader && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bert/esp/esp-idf/components/bootloader/subproject /home/bert/esp/esp-idf/components/bootloader/subproject /home/bert/esp/test_project/cmake-build-debug/bootloader /home/bert/esp/test_project/cmake-build-debug/bootloader /home/bert/esp/test_project/cmake-build-debug/bootloader/CMakeFiles/uf2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uf2.dir/depend

