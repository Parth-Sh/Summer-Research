// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xt_int.h"

extern XT_int_Config XT_int_ConfigTable[];

#ifdef SDT
XT_int_Config *XT_int_LookupConfig(UINTPTR BaseAddress) {
	XT_int_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XT_int_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XT_int_ConfigTable[Index].Hls_treeadd_periph_bus_BaseAddress == BaseAddress) {
			ConfigPtr = &XT_int_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XT_int_Initialize(XT_int *InstancePtr, UINTPTR BaseAddress) {
	XT_int_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XT_int_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XT_int_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XT_int_Config *XT_int_LookupConfig(u16 DeviceId) {
	XT_int_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XT_INT_NUM_INSTANCES; Index++) {
		if (XT_int_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XT_int_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XT_int_Initialize(XT_int *InstancePtr, u16 DeviceId) {
	XT_int_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XT_int_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XT_int_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

