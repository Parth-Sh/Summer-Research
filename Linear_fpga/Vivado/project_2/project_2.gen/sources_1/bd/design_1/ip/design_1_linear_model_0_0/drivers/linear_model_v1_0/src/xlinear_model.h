// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XLINEAR_MODEL_H
#define XLINEAR_MODEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xlinear_model_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Hls_linear_periph_bus_BaseAddress;
} XLinear_model_Config;
#endif

typedef struct {
    u64 Hls_linear_periph_bus_BaseAddress;
    u32 IsReady;
} XLinear_model;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLinear_model_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLinear_model_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLinear_model_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLinear_model_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XLinear_model_Initialize(XLinear_model *InstancePtr, UINTPTR BaseAddress);
XLinear_model_Config* XLinear_model_LookupConfig(UINTPTR BaseAddress);
#else
int XLinear_model_Initialize(XLinear_model *InstancePtr, u16 DeviceId);
XLinear_model_Config* XLinear_model_LookupConfig(u16 DeviceId);
#endif
int XLinear_model_CfgInitialize(XLinear_model *InstancePtr, XLinear_model_Config *ConfigPtr);
#else
int XLinear_model_Initialize(XLinear_model *InstancePtr, const char* InstanceName);
int XLinear_model_Release(XLinear_model *InstancePtr);
#endif

void XLinear_model_Start(XLinear_model *InstancePtr);
u32 XLinear_model_IsDone(XLinear_model *InstancePtr);
u32 XLinear_model_IsIdle(XLinear_model *InstancePtr);
u32 XLinear_model_IsReady(XLinear_model *InstancePtr);
void XLinear_model_EnableAutoRestart(XLinear_model *InstancePtr);
void XLinear_model_DisableAutoRestart(XLinear_model *InstancePtr);

void XLinear_model_Set_x(XLinear_model *InstancePtr, u32 Data);
u32 XLinear_model_Get_x(XLinear_model *InstancePtr);
void XLinear_model_Set_m(XLinear_model *InstancePtr, u32 Data);
u32 XLinear_model_Get_m(XLinear_model *InstancePtr);
void XLinear_model_Set_c(XLinear_model *InstancePtr, u32 Data);
u32 XLinear_model_Get_c(XLinear_model *InstancePtr);
u32 XLinear_model_Get_y(XLinear_model *InstancePtr);
u32 XLinear_model_Get_y_vld(XLinear_model *InstancePtr);
u32 XLinear_model_Get_done(XLinear_model *InstancePtr);
u32 XLinear_model_Get_done_vld(XLinear_model *InstancePtr);

void XLinear_model_InterruptGlobalEnable(XLinear_model *InstancePtr);
void XLinear_model_InterruptGlobalDisable(XLinear_model *InstancePtr);
void XLinear_model_InterruptEnable(XLinear_model *InstancePtr, u32 Mask);
void XLinear_model_InterruptDisable(XLinear_model *InstancePtr, u32 Mask);
void XLinear_model_InterruptClear(XLinear_model *InstancePtr, u32 Mask);
u32 XLinear_model_InterruptGetEnabled(XLinear_model *InstancePtr);
u32 XLinear_model_InterruptGetStatus(XLinear_model *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
