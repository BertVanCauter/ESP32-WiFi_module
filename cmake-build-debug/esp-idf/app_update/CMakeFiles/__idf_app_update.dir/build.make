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
CMAKE_SOURCE_DIR = /home/bert/esp/test_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bert/esp/test_project/cmake-build-debug

# Include any dependencies generated for this target.
include esp-idf/app_update/CMakeFiles/__idf_app_update.dir/depend.make

# Include the progress variables for this target.
include esp-idf/app_update/CMakeFiles/__idf_app_update.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/app_update/CMakeFiles/__idf_app_update.dir/flags.make

esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.obj: esp-idf/app_update/CMakeFiles/__idf_app_update.dir/flags.make
esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.obj: /home/bert/esp/esp-idf/components/app_update/esp_ota_ops.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/app_update && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.obj   -c /home/bert/esp/esp-idf/components/app_update/esp_ota_ops.c

esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/app_update && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/app_update/esp_ota_ops.c > CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.i

esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/app_update && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/app_update/esp_ota_ops.c -o CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.s

esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_app_desc.c.obj: esp-idf/app_update/CMakeFiles/__idf_app_update.dir/flags.make
esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_app_desc.c.obj: /home/bert/esp/esp-idf/components/app_update/esp_app_desc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_app_desc.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/app_update && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D PROJECT_NAME=\"test_project\" -DPROJECT_VER=\"3f69853-dirty\" $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_app_update.dir/esp_app_desc.c.obj   -c /home/bert/esp/esp-idf/components/app_update/esp_app_desc.c

esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_app_desc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_app_update.dir/esp_app_desc.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/app_update && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D PROJECT_NAME=\"test_project\" -DPROJECT_VER=\"3f69853-dirty\" $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/app_update/esp_app_desc.c > CMakeFiles/__idf_app_update.dir/esp_app_desc.c.i

esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_app_desc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_app_update.dir/esp_app_desc.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/app_update && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) -D PROJECT_NAME=\"test_project\" -DPROJECT_VER=\"3f69853-dirty\" $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/app_update/esp_app_desc.c -o CMakeFiles/__idf_app_update.dir/esp_app_desc.c.s

# Object files for target __idf_app_update
__idf_app_update_OBJECTS = \
"CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.obj" \
"CMakeFiles/__idf_app_update.dir/esp_app_desc.c.obj"

# External object files for target __idf_app_update
__idf_app_update_EXTERNAL_OBJECTS =

esp-idf/app_update/libapp_update.a: esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_ota_ops.c.obj
esp-idf/app_update/libapp_update.a: esp-idf/app_update/CMakeFiles/__idf_app_update.dir/esp_app_desc.c.obj
esp-idf/app_update/libapp_update.a: esp-idf/app_update/CMakeFiles/__idf_app_update.dir/build.make
esp-idf/app_update/libapp_update.a: esp-idf/app_update/CMakeFiles/__idf_app_update.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libapp_update.a"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/app_update && $(CMAKE_COMMAND) -P CMakeFiles/__idf_app_update.dir/cmake_clean_target.cmake
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/app_update && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_app_update.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/app_update/CMakeFiles/__idf_app_update.dir/build: esp-idf/app_update/libapp_update.a

.PHONY : esp-idf/app_update/CMakeFiles/__idf_app_update.dir/build

esp-idf/app_update/CMakeFiles/__idf_app_update.dir/clean:
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/app_update && $(CMAKE_COMMAND) -P CMakeFiles/__idf_app_update.dir/cmake_clean.cmake
.PHONY : esp-idf/app_update/CMakeFiles/__idf_app_update.dir/clean

esp-idf/app_update/CMakeFiles/__idf_app_update.dir/depend:
	cd /home/bert/esp/test_project/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bert/esp/test_project /home/bert/esp/esp-idf/components/app_update /home/bert/esp/test_project/cmake-build-debug /home/bert/esp/test_project/cmake-build-debug/esp-idf/app_update /home/bert/esp/test_project/cmake-build-debug/esp-idf/app_update/CMakeFiles/__idf_app_update.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/app_update/CMakeFiles/__idf_app_update.dir/depend

