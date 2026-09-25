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
#include "xsparse_getrf.h"

extern XSparse_getrf_Config XSparse_getrf_ConfigTable[];

#ifdef SDT
XSparse_getrf_Config *XSparse_getrf_LookupConfig(UINTPTR BaseAddress) {
	XSparse_getrf_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSparse_getrf_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSparse_getrf_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSparse_getrf_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSparse_getrf_Initialize(XSparse_getrf *InstancePtr, UINTPTR BaseAddress) {
	XSparse_getrf_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSparse_getrf_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSparse_getrf_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSparse_getrf_Config *XSparse_getrf_LookupConfig(u16 DeviceId) {
	XSparse_getrf_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSPARSE_GETRF_NUM_INSTANCES; Index++) {
		if (XSparse_getrf_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSparse_getrf_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSparse_getrf_Initialize(XSparse_getrf *InstancePtr, u16 DeviceId) {
	XSparse_getrf_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSparse_getrf_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSparse_getrf_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

