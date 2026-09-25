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
#include "xsparse_lu_shared.h"

extern XSparse_lu_shared_Config XSparse_lu_shared_ConfigTable[];

#ifdef SDT
XSparse_lu_shared_Config *XSparse_lu_shared_LookupConfig(UINTPTR BaseAddress) {
	XSparse_lu_shared_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSparse_lu_shared_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSparse_lu_shared_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSparse_lu_shared_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSparse_lu_shared_Initialize(XSparse_lu_shared *InstancePtr, UINTPTR BaseAddress) {
	XSparse_lu_shared_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSparse_lu_shared_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSparse_lu_shared_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSparse_lu_shared_Config *XSparse_lu_shared_LookupConfig(u16 DeviceId) {
	XSparse_lu_shared_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSPARSE_LU_SHARED_NUM_INSTANCES; Index++) {
		if (XSparse_lu_shared_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSparse_lu_shared_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSparse_lu_shared_Initialize(XSparse_lu_shared *InstancePtr, u16 DeviceId) {
	XSparse_lu_shared_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSparse_lu_shared_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSparse_lu_shared_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

