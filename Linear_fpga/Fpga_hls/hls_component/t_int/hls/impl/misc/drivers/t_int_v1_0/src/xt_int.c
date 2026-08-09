// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xt_int.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XT_int_CfgInitialize(XT_int *InstancePtr, XT_int_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Hls_treeadd_periph_bus_BaseAddress = ConfigPtr->Hls_treeadd_periph_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XT_int_Start(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_AP_CTRL) & 0x80;
    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XT_int_IsDone(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XT_int_IsIdle(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XT_int_IsReady(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XT_int_EnableAutoRestart(XT_int *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_AP_CTRL, 0x80);
}

void XT_int_DisableAutoRestart(XT_int *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_AP_CTRL, 0);
}

void XT_int_Set_a(XT_int *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_A_DATA, Data);
}

u32 XT_int_Get_a(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_A_DATA);
    return Data;
}

void XT_int_Set_b(XT_int *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_B_DATA, Data);
}

u32 XT_int_Get_b(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_B_DATA);
    return Data;
}

void XT_int_Set_c(XT_int *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_C_DATA, Data);
}

u32 XT_int_Get_c(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_C_DATA);
    return Data;
}

void XT_int_Set_d(XT_int *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_D_DATA, Data);
}

u32 XT_int_Get_d(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_D_DATA);
    return Data;
}

void XT_int_Set_e(XT_int *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_E_DATA, Data);
}

u32 XT_int_Get_e(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_E_DATA);
    return Data;
}

void XT_int_Set_f(XT_int *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_F_DATA, Data);
}

u32 XT_int_Get_f(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_F_DATA);
    return Data;
}

void XT_int_Set_g(XT_int *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_G_DATA, Data);
}

u32 XT_int_Get_g(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_G_DATA);
    return Data;
}

void XT_int_Set_h(XT_int *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_H_DATA, Data);
}

u32 XT_int_Get_h(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_H_DATA);
    return Data;
}

u32 XT_int_Get_r(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_R_DATA);
    return Data;
}

u32 XT_int_Get_r_vld(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_R_CTRL);
    return Data & 0x1;
}

u32 XT_int_Get_done(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_DONE_DATA);
    return Data;
}

u32 XT_int_Get_done_vld(XT_int *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_DONE_CTRL);
    return Data & 0x1;
}

void XT_int_InterruptGlobalEnable(XT_int *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_GIE, 1);
}

void XT_int_InterruptGlobalDisable(XT_int *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_GIE, 0);
}

void XT_int_InterruptEnable(XT_int *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_IER);
    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_IER, Register | Mask);
}

void XT_int_InterruptDisable(XT_int *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_IER);
    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_IER, Register & (~Mask));
}

void XT_int_InterruptClear(XT_int *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XT_int_WriteReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_ISR, Mask);
}

u32 XT_int_InterruptGetEnabled(XT_int *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_IER);
}

u32 XT_int_InterruptGetStatus(XT_int *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XT_int_ReadReg(InstancePtr->Hls_treeadd_periph_bus_BaseAddress, XT_INT_HLS_TREEADD_PERIPH_BUS_ADDR_ISR);
}

