// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// HLS_TREEADD_PERIPH_BUS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of a
//        bit 31~0 - a[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of b
//        bit 31~0 - b[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of c
//        bit 31~0 - c[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of d
//        bit 31~0 - d[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of e
//        bit 31~0 - e[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of f
//        bit 31~0 - f[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of g
//        bit 31~0 - g[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of h
//        bit 31~0 - h[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of r
//        bit 31~0 - r[31:0] (Read)
// 0x54 : Control signal of r
//        bit 0  - r_ap_vld (Read/COR)
//        others - reserved
// 0x60 : Data signal of done
//        bit 15~0 - done[15:0] (Read)
//        others   - reserved
// 0x64 : Control signal of done
//        bit 0  - done_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_AP_CTRL   0x00
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_GIE       0x04
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_IER       0x08
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_ISR       0x0c
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_A_DATA    0x10
#define XT_INT_HLS_TREEADD_PERIPH_BUS_BITS_A_DATA    32
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_B_DATA    0x18
#define XT_INT_HLS_TREEADD_PERIPH_BUS_BITS_B_DATA    32
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_C_DATA    0x20
#define XT_INT_HLS_TREEADD_PERIPH_BUS_BITS_C_DATA    32
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_D_DATA    0x28
#define XT_INT_HLS_TREEADD_PERIPH_BUS_BITS_D_DATA    32
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_E_DATA    0x30
#define XT_INT_HLS_TREEADD_PERIPH_BUS_BITS_E_DATA    32
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_F_DATA    0x38
#define XT_INT_HLS_TREEADD_PERIPH_BUS_BITS_F_DATA    32
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_G_DATA    0x40
#define XT_INT_HLS_TREEADD_PERIPH_BUS_BITS_G_DATA    32
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_H_DATA    0x48
#define XT_INT_HLS_TREEADD_PERIPH_BUS_BITS_H_DATA    32
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_R_DATA    0x50
#define XT_INT_HLS_TREEADD_PERIPH_BUS_BITS_R_DATA    32
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_R_CTRL    0x54
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_DONE_DATA 0x60
#define XT_INT_HLS_TREEADD_PERIPH_BUS_BITS_DONE_DATA 16
#define XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_DONE_CTRL 0x64

