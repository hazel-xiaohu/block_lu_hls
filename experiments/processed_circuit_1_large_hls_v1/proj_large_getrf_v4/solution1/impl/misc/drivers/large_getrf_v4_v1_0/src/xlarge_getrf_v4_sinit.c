// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xlarge_getrf_v4.h"

extern XLarge_getrf_v4_Config XLarge_getrf_v4_ConfigTable[];

XLarge_getrf_v4_Config *XLarge_getrf_v4_LookupConfig(u16 DeviceId) {
	XLarge_getrf_v4_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLARGE_GETRF_V4_NUM_INSTANCES; Index++) {
		if (XLarge_getrf_v4_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLarge_getrf_v4_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLarge_getrf_v4_Initialize(XLarge_getrf_v4 *InstancePtr, u16 DeviceId) {
	XLarge_getrf_v4_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLarge_getrf_v4_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLarge_getrf_v4_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

