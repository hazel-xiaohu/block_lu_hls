// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xlarge_tstrf.h"

extern XLarge_tstrf_Config XLarge_tstrf_ConfigTable[];

XLarge_tstrf_Config *XLarge_tstrf_LookupConfig(u16 DeviceId) {
	XLarge_tstrf_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLARGE_TSTRF_NUM_INSTANCES; Index++) {
		if (XLarge_tstrf_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLarge_tstrf_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLarge_tstrf_Initialize(XLarge_tstrf *InstancePtr, u16 DeviceId) {
	XLarge_tstrf_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLarge_tstrf_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLarge_tstrf_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

