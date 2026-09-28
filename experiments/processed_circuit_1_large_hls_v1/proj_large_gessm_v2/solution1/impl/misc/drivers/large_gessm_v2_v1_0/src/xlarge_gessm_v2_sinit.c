// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xlarge_gessm_v2.h"

extern XLarge_gessm_v2_Config XLarge_gessm_v2_ConfigTable[];

XLarge_gessm_v2_Config *XLarge_gessm_v2_LookupConfig(u16 DeviceId) {
	XLarge_gessm_v2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLARGE_GESSM_V2_NUM_INSTANCES; Index++) {
		if (XLarge_gessm_v2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLarge_gessm_v2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLarge_gessm_v2_Initialize(XLarge_gessm_v2 *InstancePtr, u16 DeviceId) {
	XLarge_gessm_v2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLarge_gessm_v2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLarge_gessm_v2_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

