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
include esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/depend.make

# Include the progress variables for this target.
include esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/intr_alloc.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/intr_alloc.c.obj: /home/bert/esp/esp-idf/components/esp_system/intr_alloc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/intr_alloc.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_system.dir/intr_alloc.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/intr_alloc.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/intr_alloc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/intr_alloc.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/esp_system/intr_alloc.c > CMakeFiles/__idf_esp_system.dir/intr_alloc.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/intr_alloc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/intr_alloc.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/esp_system/intr_alloc.c -o CMakeFiles/__idf_esp_system.dir/intr_alloc.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.obj: /home/bert/esp/esp-idf/components/esp_system/esp_async_memcpy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/esp_async_memcpy.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/esp_system/esp_async_memcpy.c > CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/esp_system/esp_async_memcpy.c -o CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/panic.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/panic.c.obj: /home/bert/esp/esp-idf/components/esp_system/panic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/panic.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_system.dir/panic.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/panic.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/panic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/panic.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/esp_system/panic.c > CMakeFiles/__idf_esp_system.dir/panic.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/panic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/panic.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/esp_system/panic.c -o CMakeFiles/__idf_esp_system.dir/panic.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_api.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_api.c.obj: /home/bert/esp/esp-idf/components/esp_system/system_api.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_api.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_system.dir/system_api.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/system_api.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/system_api.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/esp_system/system_api.c > CMakeFiles/__idf_esp_system.dir/system_api.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/system_api.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/esp_system/system_api.c -o CMakeFiles/__idf_esp_system.dir/system_api.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/startup.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/startup.c.obj: /home/bert/esp/esp-idf/components/esp_system/startup.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/startup.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-stack-protector -o CMakeFiles/__idf_esp_system.dir/startup.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/startup.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/startup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/startup.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-stack-protector -E /home/bert/esp/esp-idf/components/esp_system/startup.c > CMakeFiles/__idf_esp_system.dir/startup.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/startup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/startup.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-stack-protector -S /home/bert/esp/esp-idf/components/esp_system/startup.c -o CMakeFiles/__idf_esp_system.dir/startup.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_time.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_time.c.obj: /home/bert/esp/esp-idf/components/esp_system/system_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_time.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_system.dir/system_time.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/system_time.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/system_time.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/esp_system/system_time.c > CMakeFiles/__idf_esp_system.dir/system_time.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/system_time.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/esp_system/system_time.c -o CMakeFiles/__idf_esp_system.dir/system_time.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/sleep_modes.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/sleep_modes.c.obj: /home/bert/esp/esp-idf/components/esp_system/sleep_modes.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/sleep_modes.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-jump-tables -fno-tree-switch-conversion -o CMakeFiles/__idf_esp_system.dir/sleep_modes.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/sleep_modes.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/sleep_modes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/sleep_modes.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-jump-tables -fno-tree-switch-conversion -E /home/bert/esp/esp-idf/components/esp_system/sleep_modes.c > CMakeFiles/__idf_esp_system.dir/sleep_modes.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/sleep_modes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/sleep_modes.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-jump-tables -fno-tree-switch-conversion -S /home/bert/esp/esp-idf/components/esp_system/sleep_modes.c -o CMakeFiles/__idf_esp_system.dir/sleep_modes.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.obj: /home/bert/esp/esp-idf/components/esp_system/port/cpu_start.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/port/cpu_start.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/esp_system/port/cpu_start.c > CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/esp_system/port/cpu_start.c -o CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.obj: /home/bert/esp/esp-idf/components/esp_system/port/panic_handler.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/port/panic_handler.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/esp_system/port/panic_handler.c > CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/esp_system/port/panic_handler.c -o CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/dport_panic_highint_hdl.S.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/dport_panic_highint_hdl.S.obj: /home/bert/esp/esp-idf/components/esp_system/port/soc/esp32/dport_panic_highint_hdl.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building ASM object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/dport_panic_highint_hdl.S.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_esp_system.dir/port/soc/esp32/dport_panic_highint_hdl.S.obj -c /home/bert/esp/esp-idf/components/esp_system/port/soc/esp32/dport_panic_highint_hdl.S

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.obj: /home/bert/esp/esp-idf/components/esp_system/port/soc/esp32/clk.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/port/soc/esp32/clk.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/esp_system/port/soc/esp32/clk.c > CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/esp_system/port/soc/esp32/clk.c -o CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.obj: /home/bert/esp/esp-idf/components/esp_system/port/soc/esp32/reset_reason.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/port/soc/esp32/reset_reason.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/esp_system/port/soc/esp32/reset_reason.c > CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/esp_system/port/soc/esp32/reset_reason.c -o CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.obj: /home/bert/esp/esp-idf/components/esp_system/port/arch/xtensa/panic_arch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.obj   -c /home/bert/esp/esp-idf/components/esp_system/port/arch/xtensa/panic_arch.c

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.i"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/esp-idf/components/esp_system/port/arch/xtensa/panic_arch.c > CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.i

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.s"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/esp-idf/components/esp_system/port/arch/xtensa/panic_arch.c -o CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.s

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_handler_asm.S.obj: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/flags.make
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_handler_asm.S.obj: /home/bert/esp/esp-idf/components/esp_system/port/arch/xtensa/panic_handler_asm.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building ASM object esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_handler_asm.S.obj"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && /home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_handler_asm.S.obj -c /home/bert/esp/esp-idf/components/esp_system/port/arch/xtensa/panic_handler_asm.S

# Object files for target __idf_esp_system
__idf_esp_system_OBJECTS = \
"CMakeFiles/__idf_esp_system.dir/intr_alloc.c.obj" \
"CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.obj" \
"CMakeFiles/__idf_esp_system.dir/panic.c.obj" \
"CMakeFiles/__idf_esp_system.dir/system_api.c.obj" \
"CMakeFiles/__idf_esp_system.dir/startup.c.obj" \
"CMakeFiles/__idf_esp_system.dir/system_time.c.obj" \
"CMakeFiles/__idf_esp_system.dir/sleep_modes.c.obj" \
"CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.obj" \
"CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.obj" \
"CMakeFiles/__idf_esp_system.dir/port/soc/esp32/dport_panic_highint_hdl.S.obj" \
"CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.obj" \
"CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.obj" \
"CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.obj" \
"CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_handler_asm.S.obj"

# External object files for target __idf_esp_system
__idf_esp_system_EXTERNAL_OBJECTS =

esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/intr_alloc.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/esp_async_memcpy.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/panic.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_api.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/startup.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/system_time.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/sleep_modes.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/cpu_start.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/panic_handler.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/dport_panic_highint_hdl.S.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/clk.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/soc/esp32/reset_reason.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_arch.c.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/port/arch/xtensa/panic_handler_asm.S.obj
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/build.make
esp-idf/esp_system/libesp_system.a: esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking C static library libesp_system.a"
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_system.dir/cmake_clean_target.cmake
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_esp_system.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/build: esp-idf/esp_system/libesp_system.a

.PHONY : esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/build

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/clean:
	cd /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_system.dir/cmake_clean.cmake
.PHONY : esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/clean

esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/depend:
	cd /home/bert/esp/test_project/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bert/esp/test_project /home/bert/esp/esp-idf/components/esp_system /home/bert/esp/test_project/cmake-build-debug /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system /home/bert/esp/test_project/cmake-build-debug/esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp_system/CMakeFiles/__idf_esp_system.dir/depend

