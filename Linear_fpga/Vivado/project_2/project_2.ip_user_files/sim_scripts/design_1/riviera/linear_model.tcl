# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
# Tool Version Limit: 2025.05
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XLinear_model" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_HLS_LINEAR_PERIPH_BUS_BASEADDR" \
        "C_S_AXI_HLS_LINEAR_PERIPH_BUS_HIGHADDR"

    xdefine_config_file $drv_handle "xlinear_model_g.c" "XLinear_model" \
        "DEVICE_ID" \
        "C_S_AXI_HLS_LINEAR_PERIPH_BUS_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XLinear_model" \
        "DEVICE_ID" \
        "C_S_AXI_HLS_LINEAR_PERIPH_BUS_BASEADDR" \
        "C_S_AXI_HLS_LINEAR_PERIPH_BUS_HIGHADDR"
}

