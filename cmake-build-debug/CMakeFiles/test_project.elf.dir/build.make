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
include CMakeFiles/test_project.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_project.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_project.elf.dir/flags.make

project_elf_src_esp32.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src_esp32.c"
	/home/bert/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.7148.70/bin/cmake/linux/bin/cmake -E touch /home/bert/esp/test_project/cmake-build-debug/project_elf_src_esp32.c

CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.obj: CMakeFiles/test_project.elf.dir/flags.make
CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.obj: project_elf_src_esp32.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.obj"
	/home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.obj   -c /home/bert/esp/test_project/cmake-build-debug/project_elf_src_esp32.c

CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.i"
	/home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bert/esp/test_project/cmake-build-debug/project_elf_src_esp32.c > CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.i

CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.s"
	/home/bert/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bert/esp/test_project/cmake-build-debug/project_elf_src_esp32.c -o CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.s

# Object files for target test_project.elf
test_project_elf_OBJECTS = \
"CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.obj"

# External object files for target test_project.elf
test_project_elf_EXTERNAL_OBJECTS =

test_project.elf: CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.obj
test_project.elf: CMakeFiles/test_project.elf.dir/build.make
test_project.elf: esp-idf/esp_pm/libesp_pm.a
test_project.elf: esp-idf/mbedtls/libmbedtls.a
test_project.elf: esp-idf/efuse/libefuse.a
test_project.elf: esp-idf/bootloader_support/libbootloader_support.a
test_project.elf: esp-idf/app_update/libapp_update.a
test_project.elf: esp-idf/esp_ipc/libesp_ipc.a
test_project.elf: esp-idf/spi_flash/libspi_flash.a
test_project.elf: esp-idf/nvs_flash/libnvs_flash.a
test_project.elf: esp-idf/pthread/libpthread.a
test_project.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
test_project.elf: esp-idf/esp_system/libesp_system.a
test_project.elf: esp-idf/esp_rom/libesp_rom.a
test_project.elf: esp-idf/hal/libhal.a
test_project.elf: esp-idf/vfs/libvfs.a
test_project.elf: esp-idf/esp_eth/libesp_eth.a
test_project.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
test_project.elf: esp-idf/esp_netif/libesp_netif.a
test_project.elf: esp-idf/esp_event/libesp_event.a
test_project.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
test_project.elf: esp-idf/esp_wifi/libesp_wifi.a
test_project.elf: esp-idf/lwip/liblwip.a
test_project.elf: esp-idf/log/liblog.a
test_project.elf: esp-idf/heap/libheap.a
test_project.elf: esp-idf/soc/libsoc.a
test_project.elf: esp-idf/esp_hw_support/libesp_hw_support.a
test_project.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
test_project.elf: esp-idf/driver/libdriver.a
test_project.elf: esp-idf/xtensa/libxtensa.a
test_project.elf: esp-idf/espcoredump/libespcoredump.a
test_project.elf: esp-idf/perfmon/libperfmon.a
test_project.elf: esp-idf/esp32/libesp32.a
test_project.elf: esp-idf/esp_common/libesp_common.a
test_project.elf: esp-idf/esp_timer/libesp_timer.a
test_project.elf: esp-idf/freertos/libfreertos.a
test_project.elf: esp-idf/newlib/libnewlib.a
test_project.elf: esp-idf/cxx/libcxx.a
test_project.elf: esp-idf/app_trace/libapp_trace.a
test_project.elf: esp-idf/asio/libasio.a
test_project.elf: esp-idf/cbor/libcbor.a
test_project.elf: esp-idf/unity/libunity.a
test_project.elf: esp-idf/cmock/libcmock.a
test_project.elf: esp-idf/coap/libcoap.a
test_project.elf: esp-idf/console/libconsole.a
test_project.elf: esp-idf/nghttp/libnghttp.a
test_project.elf: esp-idf/esp-tls/libesp-tls.a
test_project.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
test_project.elf: esp-idf/esp_hid/libesp_hid.a
test_project.elf: esp-idf/tcp_transport/libtcp_transport.a
test_project.elf: esp-idf/esp_http_client/libesp_http_client.a
test_project.elf: esp-idf/esp_http_server/libesp_http_server.a
test_project.elf: esp-idf/esp_https_ota/libesp_https_ota.a
test_project.elf: esp-idf/protobuf-c/libprotobuf-c.a
test_project.elf: esp-idf/protocomm/libprotocomm.a
test_project.elf: esp-idf/mdns/libmdns.a
test_project.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
test_project.elf: esp-idf/sdmmc/libsdmmc.a
test_project.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
test_project.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
test_project.elf: esp-idf/expat/libexpat.a
test_project.elf: esp-idf/wear_levelling/libwear_levelling.a
test_project.elf: esp-idf/fatfs/libfatfs.a
test_project.elf: esp-idf/freemodbus/libfreemodbus.a
test_project.elf: esp-idf/jsmn/libjsmn.a
test_project.elf: esp-idf/json/libjson.a
test_project.elf: esp-idf/libsodium/liblibsodium.a
test_project.elf: esp-idf/mqtt/libmqtt.a
test_project.elf: esp-idf/openssl/libopenssl.a
test_project.elf: esp-idf/spiffs/libspiffs.a
test_project.elf: esp-idf/ulp/libulp.a
test_project.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
test_project.elf: esp-idf/main/libmain.a
test_project.elf: esp-idf/asio/libasio.a
test_project.elf: esp-idf/cbor/libcbor.a
test_project.elf: esp-idf/cmock/libcmock.a
test_project.elf: esp-idf/unity/libunity.a
test_project.elf: esp-idf/coap/libcoap.a
test_project.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
test_project.elf: esp-idf/esp_hid/libesp_hid.a
test_project.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
test_project.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
test_project.elf: esp-idf/expat/libexpat.a
test_project.elf: esp-idf/fatfs/libfatfs.a
test_project.elf: esp-idf/wear_levelling/libwear_levelling.a
test_project.elf: esp-idf/freemodbus/libfreemodbus.a
test_project.elf: esp-idf/jsmn/libjsmn.a
test_project.elf: esp-idf/libsodium/liblibsodium.a
test_project.elf: esp-idf/mqtt/libmqtt.a
test_project.elf: esp-idf/openssl/libopenssl.a
test_project.elf: esp-idf/spiffs/libspiffs.a
test_project.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
test_project.elf: esp-idf/protocomm/libprotocomm.a
test_project.elf: esp-idf/protobuf-c/libprotobuf-c.a
test_project.elf: esp-idf/mdns/libmdns.a
test_project.elf: esp-idf/console/libconsole.a
test_project.elf: esp-idf/json/libjson.a
test_project.elf: esp-idf/esp_pm/libesp_pm.a
test_project.elf: esp-idf/mbedtls/libmbedtls.a
test_project.elf: esp-idf/efuse/libefuse.a
test_project.elf: esp-idf/bootloader_support/libbootloader_support.a
test_project.elf: esp-idf/app_update/libapp_update.a
test_project.elf: esp-idf/esp_ipc/libesp_ipc.a
test_project.elf: esp-idf/spi_flash/libspi_flash.a
test_project.elf: esp-idf/nvs_flash/libnvs_flash.a
test_project.elf: esp-idf/pthread/libpthread.a
test_project.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
test_project.elf: esp-idf/esp_system/libesp_system.a
test_project.elf: esp-idf/esp_rom/libesp_rom.a
test_project.elf: esp-idf/hal/libhal.a
test_project.elf: esp-idf/vfs/libvfs.a
test_project.elf: esp-idf/esp_eth/libesp_eth.a
test_project.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
test_project.elf: esp-idf/esp_netif/libesp_netif.a
test_project.elf: esp-idf/esp_event/libesp_event.a
test_project.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
test_project.elf: esp-idf/esp_wifi/libesp_wifi.a
test_project.elf: esp-idf/lwip/liblwip.a
test_project.elf: esp-idf/log/liblog.a
test_project.elf: esp-idf/heap/libheap.a
test_project.elf: esp-idf/soc/libsoc.a
test_project.elf: esp-idf/esp_hw_support/libesp_hw_support.a
test_project.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
test_project.elf: esp-idf/driver/libdriver.a
test_project.elf: esp-idf/xtensa/libxtensa.a
test_project.elf: esp-idf/espcoredump/libespcoredump.a
test_project.elf: esp-idf/perfmon/libperfmon.a
test_project.elf: esp-idf/esp32/libesp32.a
test_project.elf: esp-idf/esp_common/libesp_common.a
test_project.elf: esp-idf/esp_timer/libesp_timer.a
test_project.elf: esp-idf/freertos/libfreertos.a
test_project.elf: esp-idf/newlib/libnewlib.a
test_project.elf: esp-idf/cxx/libcxx.a
test_project.elf: esp-idf/app_trace/libapp_trace.a
test_project.elf: esp-idf/nghttp/libnghttp.a
test_project.elf: esp-idf/esp-tls/libesp-tls.a
test_project.elf: esp-idf/tcp_transport/libtcp_transport.a
test_project.elf: esp-idf/esp_http_client/libesp_http_client.a
test_project.elf: esp-idf/esp_http_server/libesp_http_server.a
test_project.elf: esp-idf/esp_https_ota/libesp_https_ota.a
test_project.elf: esp-idf/sdmmc/libsdmmc.a
test_project.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
test_project.elf: esp-idf/ulp/libulp.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
test_project.elf: esp-idf/esp_pm/libesp_pm.a
test_project.elf: esp-idf/mbedtls/libmbedtls.a
test_project.elf: esp-idf/efuse/libefuse.a
test_project.elf: esp-idf/bootloader_support/libbootloader_support.a
test_project.elf: esp-idf/app_update/libapp_update.a
test_project.elf: esp-idf/esp_ipc/libesp_ipc.a
test_project.elf: esp-idf/spi_flash/libspi_flash.a
test_project.elf: esp-idf/nvs_flash/libnvs_flash.a
test_project.elf: esp-idf/pthread/libpthread.a
test_project.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
test_project.elf: esp-idf/esp_system/libesp_system.a
test_project.elf: esp-idf/esp_rom/libesp_rom.a
test_project.elf: esp-idf/hal/libhal.a
test_project.elf: esp-idf/vfs/libvfs.a
test_project.elf: esp-idf/esp_eth/libesp_eth.a
test_project.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
test_project.elf: esp-idf/esp_netif/libesp_netif.a
test_project.elf: esp-idf/esp_event/libesp_event.a
test_project.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
test_project.elf: esp-idf/esp_wifi/libesp_wifi.a
test_project.elf: esp-idf/lwip/liblwip.a
test_project.elf: esp-idf/log/liblog.a
test_project.elf: esp-idf/heap/libheap.a
test_project.elf: esp-idf/soc/libsoc.a
test_project.elf: esp-idf/esp_hw_support/libesp_hw_support.a
test_project.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
test_project.elf: esp-idf/driver/libdriver.a
test_project.elf: esp-idf/xtensa/libxtensa.a
test_project.elf: esp-idf/espcoredump/libespcoredump.a
test_project.elf: esp-idf/perfmon/libperfmon.a
test_project.elf: esp-idf/esp32/libesp32.a
test_project.elf: esp-idf/esp_common/libesp_common.a
test_project.elf: esp-idf/esp_timer/libesp_timer.a
test_project.elf: esp-idf/freertos/libfreertos.a
test_project.elf: esp-idf/newlib/libnewlib.a
test_project.elf: esp-idf/cxx/libcxx.a
test_project.elf: esp-idf/app_trace/libapp_trace.a
test_project.elf: esp-idf/nghttp/libnghttp.a
test_project.elf: esp-idf/esp-tls/libesp-tls.a
test_project.elf: esp-idf/tcp_transport/libtcp_transport.a
test_project.elf: esp-idf/esp_http_client/libesp_http_client.a
test_project.elf: esp-idf/esp_http_server/libesp_http_server.a
test_project.elf: esp-idf/esp_https_ota/libesp_https_ota.a
test_project.elf: esp-idf/sdmmc/libsdmmc.a
test_project.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
test_project.elf: esp-idf/ulp/libulp.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
test_project.elf: esp-idf/esp_pm/libesp_pm.a
test_project.elf: esp-idf/mbedtls/libmbedtls.a
test_project.elf: esp-idf/efuse/libefuse.a
test_project.elf: esp-idf/bootloader_support/libbootloader_support.a
test_project.elf: esp-idf/app_update/libapp_update.a
test_project.elf: esp-idf/esp_ipc/libesp_ipc.a
test_project.elf: esp-idf/spi_flash/libspi_flash.a
test_project.elf: esp-idf/nvs_flash/libnvs_flash.a
test_project.elf: esp-idf/pthread/libpthread.a
test_project.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
test_project.elf: esp-idf/esp_system/libesp_system.a
test_project.elf: esp-idf/esp_rom/libesp_rom.a
test_project.elf: esp-idf/hal/libhal.a
test_project.elf: esp-idf/vfs/libvfs.a
test_project.elf: esp-idf/esp_eth/libesp_eth.a
test_project.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
test_project.elf: esp-idf/esp_netif/libesp_netif.a
test_project.elf: esp-idf/esp_event/libesp_event.a
test_project.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
test_project.elf: esp-idf/esp_wifi/libesp_wifi.a
test_project.elf: esp-idf/lwip/liblwip.a
test_project.elf: esp-idf/log/liblog.a
test_project.elf: esp-idf/heap/libheap.a
test_project.elf: esp-idf/soc/libsoc.a
test_project.elf: esp-idf/esp_hw_support/libesp_hw_support.a
test_project.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
test_project.elf: esp-idf/driver/libdriver.a
test_project.elf: esp-idf/xtensa/libxtensa.a
test_project.elf: esp-idf/espcoredump/libespcoredump.a
test_project.elf: esp-idf/perfmon/libperfmon.a
test_project.elf: esp-idf/esp32/libesp32.a
test_project.elf: esp-idf/esp_common/libesp_common.a
test_project.elf: esp-idf/esp_timer/libesp_timer.a
test_project.elf: esp-idf/freertos/libfreertos.a
test_project.elf: esp-idf/newlib/libnewlib.a
test_project.elf: esp-idf/cxx/libcxx.a
test_project.elf: esp-idf/app_trace/libapp_trace.a
test_project.elf: esp-idf/nghttp/libnghttp.a
test_project.elf: esp-idf/esp-tls/libesp-tls.a
test_project.elf: esp-idf/tcp_transport/libtcp_transport.a
test_project.elf: esp-idf/esp_http_client/libesp_http_client.a
test_project.elf: esp-idf/esp_http_server/libesp_http_server.a
test_project.elf: esp-idf/esp_https_ota/libesp_https_ota.a
test_project.elf: esp-idf/sdmmc/libsdmmc.a
test_project.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
test_project.elf: esp-idf/ulp/libulp.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
test_project.elf: esp-idf/esp_pm/libesp_pm.a
test_project.elf: esp-idf/mbedtls/libmbedtls.a
test_project.elf: esp-idf/efuse/libefuse.a
test_project.elf: esp-idf/bootloader_support/libbootloader_support.a
test_project.elf: esp-idf/app_update/libapp_update.a
test_project.elf: esp-idf/esp_ipc/libesp_ipc.a
test_project.elf: esp-idf/spi_flash/libspi_flash.a
test_project.elf: esp-idf/nvs_flash/libnvs_flash.a
test_project.elf: esp-idf/pthread/libpthread.a
test_project.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
test_project.elf: esp-idf/esp_system/libesp_system.a
test_project.elf: esp-idf/esp_rom/libesp_rom.a
test_project.elf: esp-idf/hal/libhal.a
test_project.elf: esp-idf/vfs/libvfs.a
test_project.elf: esp-idf/esp_eth/libesp_eth.a
test_project.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
test_project.elf: esp-idf/esp_netif/libesp_netif.a
test_project.elf: esp-idf/esp_event/libesp_event.a
test_project.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
test_project.elf: esp-idf/esp_wifi/libesp_wifi.a
test_project.elf: esp-idf/lwip/liblwip.a
test_project.elf: esp-idf/log/liblog.a
test_project.elf: esp-idf/heap/libheap.a
test_project.elf: esp-idf/soc/libsoc.a
test_project.elf: esp-idf/esp_hw_support/libesp_hw_support.a
test_project.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
test_project.elf: esp-idf/driver/libdriver.a
test_project.elf: esp-idf/xtensa/libxtensa.a
test_project.elf: esp-idf/espcoredump/libespcoredump.a
test_project.elf: esp-idf/perfmon/libperfmon.a
test_project.elf: esp-idf/esp32/libesp32.a
test_project.elf: esp-idf/esp_common/libesp_common.a
test_project.elf: esp-idf/esp_timer/libesp_timer.a
test_project.elf: esp-idf/freertos/libfreertos.a
test_project.elf: esp-idf/newlib/libnewlib.a
test_project.elf: esp-idf/cxx/libcxx.a
test_project.elf: esp-idf/app_trace/libapp_trace.a
test_project.elf: esp-idf/nghttp/libnghttp.a
test_project.elf: esp-idf/esp-tls/libesp-tls.a
test_project.elf: esp-idf/tcp_transport/libtcp_transport.a
test_project.elf: esp-idf/esp_http_client/libesp_http_client.a
test_project.elf: esp-idf/esp_http_server/libesp_http_server.a
test_project.elf: esp-idf/esp_https_ota/libesp_https_ota.a
test_project.elf: esp-idf/sdmmc/libsdmmc.a
test_project.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
test_project.elf: esp-idf/ulp/libulp.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
test_project.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
test_project.elf: /home/bert/esp/esp-idf/components/xtensa/esp32/libxt_hal.a
test_project.elf: esp-idf/newlib/libnewlib.a
test_project.elf: esp-idf/pthread/libpthread.a
test_project.elf: esp-idf/app_trace/libapp_trace.a
test_project.elf: esp-idf/app_trace/libapp_trace.a
test_project.elf: /home/bert/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
test_project.elf: /home/bert/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.api.ld
test_project.elf: /home/bert/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
test_project.elf: /home/bert/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
test_project.elf: /home/bert/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
test_project.elf: /home/bert/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
test_project.elf: /home/bert/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-time.ld
test_project.elf: esp-idf/esp32/esp32_out.ld
test_project.elf: esp-idf/esp32/ld/esp32.project.ld
test_project.elf: /home/bert/esp/esp-idf/components/esp32/ld/esp32.peripherals.ld
test_project.elf: CMakeFiles/test_project.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bert/esp/test_project/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test_project.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_project.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_project.elf.dir/build: test_project.elf

.PHONY : CMakeFiles/test_project.elf.dir/build

CMakeFiles/test_project.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_project.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_project.elf.dir/clean

CMakeFiles/test_project.elf.dir/depend: project_elf_src_esp32.c
	cd /home/bert/esp/test_project/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bert/esp/test_project /home/bert/esp/test_project /home/bert/esp/test_project/cmake-build-debug /home/bert/esp/test_project/cmake-build-debug /home/bert/esp/test_project/cmake-build-debug/CMakeFiles/test_project.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_project.elf.dir/depend

