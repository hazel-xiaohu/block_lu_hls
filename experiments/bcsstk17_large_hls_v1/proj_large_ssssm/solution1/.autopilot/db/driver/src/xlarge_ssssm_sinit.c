// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xlarge_ssssm.h"

extern XLarge_ssssm_Config XLarge_ssssm_ConfigTable[];

XLarge_ssssm_Config *XLarge_ssssm_LookupConfig(u16 DeviceId) {
	XLarge_ssssm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLARGE_SSSSM_NUM_INSTANCES; Index++) {
		if (XLarge_ssssm_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLarge_ssssm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLarge_ssssm_Initialize(XLarge_ssssm *InstancePtr, u16 DeviceId) {
	XLarge_ssssm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLarge_ssssm_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLarge_ssssm_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

