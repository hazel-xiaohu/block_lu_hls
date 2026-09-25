// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xspmm.h"

extern XSpmm_Config XSpmm_ConfigTable[];

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

