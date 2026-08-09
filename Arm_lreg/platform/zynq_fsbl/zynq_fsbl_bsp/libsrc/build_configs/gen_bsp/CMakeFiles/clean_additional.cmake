# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\diskio.h"
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ff.h"
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ffconf.h"
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\sleep.h"
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs.h"
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs_config.h"
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilrsa.h"
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xiltimer.h"
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xtimer_config.h"
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilffs.a"
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilrsa.a"
  "D:\\ELEC_522\\FpgaEx\\Arm_lreg\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxiltimer.a"
  )
endif()
