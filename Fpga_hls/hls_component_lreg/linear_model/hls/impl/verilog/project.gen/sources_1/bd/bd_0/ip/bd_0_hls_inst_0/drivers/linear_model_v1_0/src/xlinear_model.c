// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xlinear_model.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLinear_model_CfgInitialize(XLinear_model *InstancePtr, XLinear_model_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Hls_linear_periph_bus_BaseAddress = ConfigPtr->Hls_linear_periph_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLinear_model_Start(XLinear_model *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_AP_CTRL) & 0x80;
    XLinear_model_WriteReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLinear_model_IsDone(XLinear_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLinear_model_IsIdle(XLinear_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLinear_model_IsReady(XLinear_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLinear_model_EnableAutoRestart(XLinear_model *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinear_model_WriteReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_AP_CTRL, 0x80);
}

void XLinear_model_DisableAutoRestart(XLinear_model *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinear_model_WriteReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_AP_CTRL, 0);
}

void XLinear_model_Set_x(XLinear_model *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinear_model_WriteReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_X_DATA, Data);
}

u32 XLinear_model_Get_x(XLinear_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_X_DATA);
    return Data;
}

void XLinear_model_Set_m(XLinear_model *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinear_model_WriteReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_M_DATA, Data);
}

u32 XLinear_model_Get_m(XLinear_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_M_DATA);
    return Data;
}

void XLinear_model_Set_c(XLinear_model *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinear_model_WriteReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_C_DATA, Data);
}

u32 XLinear_model_Get_c(XLinear_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_C_DATA);
    return Data;
}

u32 XLinear_model_Get_y(XLinear_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_Y_DATA);
    return Data;
}

u32 XLinear_model_Get_y_vld(XLinear_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_Y_CTRL);
    return Data & 0x1;
}

u32 XLinear_model_Get_done(XLinear_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_DONE_DATA);
    return Data;
}

u32 XLinear_model_Get_done_vld(XLinear_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_DONE_CTRL);
    return Data & 0x1;
}

void XLinear_model_InterruptGlobalEnable(XLinear_model *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinear_model_WriteReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_GIE, 1);
}

void XLinear_model_InterruptGlobalDisable(XLinear_model *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinear_model_WriteReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_GIE, 0);
}

void XLinear_model_InterruptEnable(XLinear_model *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_IER);
    XLinear_model_WriteReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_IER, Register | Mask);
}

void XLinear_model_InterruptDisable(XLinear_model *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_IER);
    XLinear_model_WriteReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_IER, Register & (~Mask));
}

void XLinear_model_InterruptClear(XLinear_model *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLinear_model_WriteReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_ISR, Mask);
}

u32 XLinear_model_InterruptGetEnabled(XLinear_model *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_IER);
}

u32 XLinear_model_InterruptGetStatus(XLinear_model *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLinear_model_ReadReg(InstancePtr->Hls_linear_periph_bus_BaseAddress, XLINEAR_MODEL_HLS_LINEAR_PERIPH_BUS_ADDR_ISR);
}

