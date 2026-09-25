// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xspmm.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSpmm_CfgInitialize(XSpmm *InstancePtr, XSpmm_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Ctr_BaseAddress = ConfigPtr->Ctr_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSpmm_Start(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_AP_CTRL) & 0x80;
    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSpmm_IsDone(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSpmm_IsIdle(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSpmm_IsReady(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSpmm_EnableAutoRestart(XSpmm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_AP_CTRL, 0x80);
}

void XSpmm_DisableAutoRestart(XSpmm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_AP_CTRL, 0);
}

void XSpmm_Set_A_rcsr(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_RCSR_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_RCSR_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_A_rcsr(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_RCSR_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_RCSR_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_A_cid(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_CID_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_CID_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_A_cid(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_CID_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_CID_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_A_val(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_VAL_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_VAL_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_A_val(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_VAL_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_A_VAL_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_rcsr1(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR1_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR1_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_rcsr1(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR1_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR1_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_rcsr2(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR2_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR2_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_rcsr2(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR2_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR2_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_rcsr3(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR3_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR3_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_rcsr3(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR3_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR3_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_rcsr4(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR4_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR4_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_rcsr4(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR4_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_RCSR4_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_val1(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL1_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL1_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_val1(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL1_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL1_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_cid1(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID1_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID1_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_cid1(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID1_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID1_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_val2(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL2_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL2_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_val2(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL2_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL2_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_cid2(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID2_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID2_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_cid2(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID2_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID2_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_val3(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL3_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL3_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_val3(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL3_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL3_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_cid3(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID3_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID3_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_cid3(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID3_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID3_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_val4(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL4_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL4_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_val4(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL4_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL4_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_cid4(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID4_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID4_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_cid4(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID4_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID4_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_val_port1(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT1_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT1_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_val_port1(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT1_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT1_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_cid_port1(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT1_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT1_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_cid_port1(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT1_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT1_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_val_port2(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT2_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT2_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_val_port2(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT2_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT2_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_cid_port2(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT2_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT2_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_cid_port2(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT2_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT2_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_val_port3(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT3_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT3_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_val_port3(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT3_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT3_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_cid_port3(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT3_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT3_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_cid_port3(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT3_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT3_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_val_port4(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT4_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT4_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_val_port4(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT4_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_VAL_PORT4_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_B_cid_port4(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT4_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT4_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_B_cid_port4(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT4_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_B_CID_PORT4_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_C_rcsr(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_RCSR_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_RCSR_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_C_rcsr(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_RCSR_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_RCSR_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_C_cid(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_CID_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_CID_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_C_cid(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_CID_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_CID_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_C_val(XSpmm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_VAL_DATA, (u32)(Data));
    XSpmm_WriteReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_VAL_DATA + 4, (u32)(Data >> 32));
}

u64 XSpmm_Get_C_val(XSpmm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_VAL_DATA);
    Data += (u64)XSpmm_ReadReg(InstancePtr->Control_BaseAddress, XSPMM_CONTROL_ADDR_C_VAL_DATA + 4) << 32;
    return Data;
}

void XSpmm_Set_arnum(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_ARNUM_DATA, Data);
}

u32 XSpmm_Get_arnum(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_ARNUM_DATA);
    return Data;
}

void XSpmm_Set_atnum(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_ATNUM_DATA, Data);
}

u32 XSpmm_Get_atnum(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_ATNUM_DATA);
    return Data;
}

void XSpmm_Set_brnum(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_BRNUM_DATA, Data);
}

u32 XSpmm_Get_brnum(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_BRNUM_DATA);
    return Data;
}

void XSpmm_Set_btnum(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_BTNUM_DATA, Data);
}

u32 XSpmm_Get_btnum(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_BTNUM_DATA);
    return Data;
}

void XSpmm_Set_B_rcsr_base(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_B_RCSR_BASE_DATA, Data);
}

u32 XSpmm_Get_B_rcsr_base(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_B_RCSR_BASE_DATA);
    return Data;
}

void XSpmm_Set_B_val_base(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_B_VAL_BASE_DATA, Data);
}

u32 XSpmm_Get_B_val_base(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_B_VAL_BASE_DATA);
    return Data;
}

void XSpmm_Set_B_cid_base(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_B_CID_BASE_DATA, Data);
}

u32 XSpmm_Get_B_cid_base(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_B_CID_BASE_DATA);
    return Data;
}

u32 XSpmm_Get_r1acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R1ACC_DATA);
    return Data;
}

u32 XSpmm_Get_r1acc_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R1ACC_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_r1hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R1HIT_DATA);
    return Data;
}

u32 XSpmm_Get_r1hit_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R1HIT_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_r2acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R2ACC_DATA);
    return Data;
}

u32 XSpmm_Get_r2acc_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R2ACC_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_r2hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R2HIT_DATA);
    return Data;
}

u32 XSpmm_Get_r2hit_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R2HIT_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_r3acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R3ACC_DATA);
    return Data;
}

u32 XSpmm_Get_r3acc_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R3ACC_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_r3hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R3HIT_DATA);
    return Data;
}

u32 XSpmm_Get_r3hit_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R3HIT_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_r4acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R4ACC_DATA);
    return Data;
}

u32 XSpmm_Get_r4acc_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R4ACC_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_r4hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R4HIT_DATA);
    return Data;
}

u32 XSpmm_Get_r4hit_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R4HIT_CTRL);
    return Data & 0x1;
}

void XSpmm_Set_r5acc(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R5ACC_DATA, Data);
}

u32 XSpmm_Get_r5acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R5ACC_DATA);
    return Data;
}

void XSpmm_Set_r5hit(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R5HIT_DATA, Data);
}

u32 XSpmm_Get_r5hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R5HIT_DATA);
    return Data;
}

void XSpmm_Set_r6acc(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R6ACC_DATA, Data);
}

u32 XSpmm_Get_r6acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R6ACC_DATA);
    return Data;
}

void XSpmm_Set_r6hit(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R6HIT_DATA, Data);
}

u32 XSpmm_Get_r6hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R6HIT_DATA);
    return Data;
}

void XSpmm_Set_r7acc(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R7ACC_DATA, Data);
}

u32 XSpmm_Get_r7acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R7ACC_DATA);
    return Data;
}

void XSpmm_Set_r7hit(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R7HIT_DATA, Data);
}

u32 XSpmm_Get_r7hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R7HIT_DATA);
    return Data;
}

void XSpmm_Set_r8acc(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R8ACC_DATA, Data);
}

u32 XSpmm_Get_r8acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R8ACC_DATA);
    return Data;
}

void XSpmm_Set_r8hit(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R8HIT_DATA, Data);
}

u32 XSpmm_Get_r8hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_R8HIT_DATA);
    return Data;
}

u32 XSpmm_Get_vc1acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC1ACC_DATA);
    return Data;
}

u32 XSpmm_Get_vc1acc_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC1ACC_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_vc1hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC1HIT_DATA);
    return Data;
}

u32 XSpmm_Get_vc1hit_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC1HIT_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_vc2acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC2ACC_DATA);
    return Data;
}

u32 XSpmm_Get_vc2acc_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC2ACC_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_vc2hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC2HIT_DATA);
    return Data;
}

u32 XSpmm_Get_vc2hit_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC2HIT_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_vc3acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC3ACC_DATA);
    return Data;
}

u32 XSpmm_Get_vc3acc_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC3ACC_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_vc3hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC3HIT_DATA);
    return Data;
}

u32 XSpmm_Get_vc3hit_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC3HIT_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_vc4acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC4ACC_DATA);
    return Data;
}

u32 XSpmm_Get_vc4acc_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC4ACC_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_vc4hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC4HIT_DATA);
    return Data;
}

u32 XSpmm_Get_vc4hit_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC4HIT_CTRL);
    return Data & 0x1;
}

void XSpmm_Set_vc5acc(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC5ACC_DATA, Data);
}

u32 XSpmm_Get_vc5acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC5ACC_DATA);
    return Data;
}

void XSpmm_Set_vc5hit(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC5HIT_DATA, Data);
}

u32 XSpmm_Get_vc5hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC5HIT_DATA);
    return Data;
}

void XSpmm_Set_vc6acc(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC6ACC_DATA, Data);
}

u32 XSpmm_Get_vc6acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC6ACC_DATA);
    return Data;
}

void XSpmm_Set_vc6hit(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC6HIT_DATA, Data);
}

u32 XSpmm_Get_vc6hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC6HIT_DATA);
    return Data;
}

void XSpmm_Set_vc7acc(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC7ACC_DATA, Data);
}

u32 XSpmm_Get_vc7acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC7ACC_DATA);
    return Data;
}

void XSpmm_Set_vc7hit(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC7HIT_DATA, Data);
}

u32 XSpmm_Get_vc7hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC7HIT_DATA);
    return Data;
}

void XSpmm_Set_vc8acc(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC8ACC_DATA, Data);
}

u32 XSpmm_Get_vc8acc(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC8ACC_DATA);
    return Data;
}

void XSpmm_Set_vc8hit(XSpmm *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC8HIT_DATA, Data);
}

u32 XSpmm_Get_vc8hit(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_VC8HIT_DATA);
    return Data;
}

u32 XSpmm_Get_fnum(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_FNUM_DATA);
    return Data;
}

u32 XSpmm_Get_fnum_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_FNUM_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_workload_counter1(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_WORKLOAD_COUNTER1_DATA);
    return Data;
}

u32 XSpmm_Get_workload_counter1_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_WORKLOAD_COUNTER1_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_workload_counter2(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_WORKLOAD_COUNTER2_DATA);
    return Data;
}

u32 XSpmm_Get_workload_counter2_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_WORKLOAD_COUNTER2_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_workload_counter3(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_WORKLOAD_COUNTER3_DATA);
    return Data;
}

u32 XSpmm_Get_workload_counter3_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_WORKLOAD_COUNTER3_CTRL);
    return Data & 0x1;
}

u32 XSpmm_Get_workload_counter4(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_WORKLOAD_COUNTER4_DATA);
    return Data;
}

u32 XSpmm_Get_workload_counter4_vld(XSpmm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_WORKLOAD_COUNTER4_CTRL);
    return Data & 0x1;
}

void XSpmm_InterruptGlobalEnable(XSpmm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_GIE, 1);
}

void XSpmm_InterruptGlobalDisable(XSpmm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_GIE, 0);
}

void XSpmm_InterruptEnable(XSpmm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_IER);
    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_IER, Register | Mask);
}

void XSpmm_InterruptDisable(XSpmm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_IER);
    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_IER, Register & (~Mask));
}

void XSpmm_InterruptClear(XSpmm *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSpmm_WriteReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_ISR, Mask);
}

u32 XSpmm_InterruptGetEnabled(XSpmm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_IER);
}

u32 XSpmm_InterruptGetStatus(XSpmm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSpmm_ReadReg(InstancePtr->Ctr_BaseAddress, XSPMM_CTR_ADDR_ISR);
}

