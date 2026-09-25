// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xspmm.h"

extern XSpmm_Config XSpmm_ConfigTable[];

#ifdef SDT
XSpmm_Config *XSpmm_LookupConfig(UINTPTR BaseAddress) {
	XSpmm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSpmm_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSpmm_ConfigTable[Index].Ctr_BaseAddress == BaseAddress) {
			ConfigPtr = &XSpmm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSpmm_Initialize(XSpmm *InstancePtr, UINTPTR BaseAddress) {
	XSpmm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSpmm_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSpmm_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSpmm_Config *XSpmm_LookupConfig(u16 DeviceId) {
	XSpmm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSPMM_NUM_INSTANCES; Index++) {
		if (XSpmm_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSpmm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSpmm_Initialize(XSpmm *InstancePtr, u16 DeviceId) {
	XSpmm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSpmm_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSpmm_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

