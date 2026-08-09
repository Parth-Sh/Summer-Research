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
#include "xlinear_model.h"

extern XLinear_model_Config XLinear_model_ConfigTable[];

#ifdef SDT
XLinear_model_Config *XLinear_model_LookupConfig(UINTPTR BaseAddress) {
	XLinear_model_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XLinear_model_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XLinear_model_ConfigTable[Index].Hls_linear_periph_bus_BaseAddress == BaseAddress) {
			ConfigPtr = &XLinear_model_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLinear_model_Initialize(XLinear_model *InstancePtr, UINTPTR BaseAddress) {
	XLinear_model_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLinear_model_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLinear_model_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XLinear_model_Config *XLinear_model_LookupConfig(u16 DeviceId) {
	XLinear_model_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLINEAR_MODEL_NUM_INSTANCES; Index++) {
		if (XLinear_model_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLinear_model_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLinear_model_Initialize(XLinear_model *InstancePtr, u16 DeviceId) {
	XLinear_model_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLinear_model_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLinear_model_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

