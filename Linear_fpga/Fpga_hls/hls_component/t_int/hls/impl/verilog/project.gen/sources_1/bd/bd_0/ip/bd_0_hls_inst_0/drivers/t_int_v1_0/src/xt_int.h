// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XT_INT_H
#define XT_INT_H

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
#include "xt_int_hw.h"

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
    u64 Hls_treeadd_periph_bus_BaseAddress;
} XT_int_Config;
#endif

typedef struct {
    u64 Hls_treeadd_periph_bus_BaseAddress;
    u32 IsReady;
} XT_int;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XT_int_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XT_int_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XT_int_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XT_int_ReadReg(BaseAddress, RegOffset) \
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
int XT_int_Initialize(XT_int *InstancePtr, UINTPTR BaseAddress);
XT_int_Config* XT_int_LookupConfig(UINTPTR BaseAddress);
#else
int XT_int_Initialize(XT_int *InstancePtr, u16 DeviceId);
XT_int_Config* XT_int_LookupConfig(u16 DeviceId);
#endif
int XT_int_CfgInitialize(XT_int *InstancePtr, XT_int_Config *ConfigPtr);
#else
int XT_int_Initialize(XT_int *InstancePtr, const char* InstanceName);
int XT_int_Release(XT_int *InstancePtr);
#endif

void XT_int_Start(XT_int *InstancePtr);
u32 XT_int_IsDone(XT_int *InstancePtr);
u32 XT_int_IsIdle(XT_int *InstancePtr);
u32 XT_int_IsReady(XT_int *InstancePtr);
void XT_int_EnableAutoRestart(XT_int *InstancePtr);
void XT_int_DisableAutoRestart(XT_int *InstancePtr);

void XT_int_Set_a(XT_int *InstancePtr, u32 Data);
u32 XT_int_Get_a(XT_int *InstancePtr);
void XT_int_Set_b(XT_int *InstancePtr, u32 Data);
u32 XT_int_Get_b(XT_int *InstancePtr);
void XT_int_Set_c(XT_int *InstancePtr, u32 Data);
u32 XT_int_Get_c(XT_int *InstancePtr);
void XT_int_Set_d(XT_int *InstancePtr, u32 Data);
u32 XT_int_Get_d(XT_int *InstancePtr);
void XT_int_Set_e(XT_int *InstancePtr, u32 Data);
u32 XT_int_Get_e(XT_int *InstancePtr);
void XT_int_Set_f(XT_int *InstancePtr, u32 Data);
u32 XT_int_Get_f(XT_int *InstancePtr);
void XT_int_Set_g(XT_int *InstancePtr, u32 Data);
u32 XT_int_Get_g(XT_int *InstancePtr);
void XT_int_Set_h(XT_int *InstancePtr, u32 Data);
u32 XT_int_Get_h(XT_int *InstancePtr);
u32 XT_int_Get_r(XT_int *InstancePtr);
u32 XT_int_Get_r_vld(XT_int *InstancePtr);
u32 XT_int_Get_done(XT_int *InstancePtr);
u32 XT_int_Get_done_vld(XT_int *InstancePtr);

void XT_int_InterruptGlobalEnable(XT_int *InstancePtr);
void XT_int_InterruptGlobalDisable(XT_int *InstancePtr);
void XT_int_InterruptEnable(XT_int *InstancePtr, u32 Mask);
void XT_int_InterruptDisable(XT_int *InstancePtr, u32 Mask);
void XT_int_InterruptClear(XT_int *InstancePtr, u32 Mask);
u32 XT_int_InterruptGetEnabled(XT_int *InstancePtr);
u32 XT_int_InterruptGetStatus(XT_int *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
