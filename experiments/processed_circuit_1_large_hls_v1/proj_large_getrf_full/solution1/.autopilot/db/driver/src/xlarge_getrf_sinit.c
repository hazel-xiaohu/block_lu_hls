// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xlarge_getrf.h"

extern XLarge_getrf_Config XLarge_getrf_ConfigTable[];

XLarge_getrf_Config *XLarge_getrf_LookupConfig(u16 DeviceId) {
	XLarge_getrf_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLARGE_GETRF_NUM_INSTANCES; Index++) {
		if (XLarge_getrf_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLarge_getrf_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLarge_getrf_Initialize(XLarge_getrf *InstancePtr, u16 DeviceId) {
	XLarge_getrf_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLarge_getrf_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLarge_getrf_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

