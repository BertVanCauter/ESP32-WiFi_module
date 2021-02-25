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
  "CMakeFiles/test_project.elf.dir/project_elf_src_esp32.c.obj"
  "project_elf_src_esp32.c"
  "test_project.elf"
  "test_project.elf.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/test_project.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
