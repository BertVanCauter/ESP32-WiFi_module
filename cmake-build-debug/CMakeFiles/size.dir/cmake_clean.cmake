file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "project_elf_src_esp32.c"
  "test_project.bin"
  "test_project.map"
  "CMakeFiles/size"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/size.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
