// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xlarge_ssssm.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLarge_ssssm_CfgInitialize(XLarge_ssssm *InstancePtr, XLarge_ssssm_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLarge_ssssm_Start(XLarge_ssssm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLarge_ssssm_IsDone(XLarge_ssssm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLarge_ssssm_IsIdle(XLarge_ssssm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLarge_ssssm_IsReady(XLarge_ssssm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLarge_ssssm_EnableAutoRestart(XLarge_ssssm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XLarge_ssssm_DisableAutoRestart(XLarge_ssssm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_AP_CTRL, 0);
}

void XLarge_ssssm_Set_a_ptr(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_PTR_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_a_ptr(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_PTR_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_PTR_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_a_idx(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_IDX_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_IDX_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_a_idx(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_IDX_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_IDX_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_a_val(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_VAL_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_VAL_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_a_val(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_VAL_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_A_VAL_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_l_ptr(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_PTR_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_l_ptr(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_PTR_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_PTR_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_l_idx(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_IDX_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_IDX_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_l_idx(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_IDX_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_IDX_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_l_val(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_VAL_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_VAL_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_l_val(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_VAL_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_L_VAL_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_u_ptr(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_PTR_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_u_ptr(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_PTR_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_PTR_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_u_idx(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_IDX_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_IDX_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_u_idx(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_IDX_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_IDX_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_u_val(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_VAL_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_VAL_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_u_val(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_VAL_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_U_VAL_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_s_ptr(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_PTR_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_s_ptr(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_PTR_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_PTR_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_s_idx(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_IDX_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_IDX_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_s_idx(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_IDX_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_IDX_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_s_val(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_VAL_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_VAL_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_s_val(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_VAL_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_S_VAL_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_work(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_WORK_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_WORK_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_work(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_WORK_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_WORK_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_Set_mark(XLarge_ssssm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_MARK_DATA, (u32)(Data));
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_MARK_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_ssssm_Get_mark(XLarge_ssssm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_MARK_DATA);
    Data += (u64)XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_MARK_DATA + 4) << 32;
    return Data;
}

void XLarge_ssssm_InterruptGlobalEnable(XLarge_ssssm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_GIE, 1);
}

void XLarge_ssssm_InterruptGlobalDisable(XLarge_ssssm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_GIE, 0);
}

void XLarge_ssssm_InterruptEnable(XLarge_ssssm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_IER);
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_IER, Register | Mask);
}

void XLarge_ssssm_InterruptDisable(XLarge_ssssm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_IER);
    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_IER, Register & (~Mask));
}

void XLarge_ssssm_InterruptClear(XLarge_ssssm *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_ssssm_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_ISR, Mask);
}

u32 XLarge_ssssm_InterruptGetEnabled(XLarge_ssssm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_IER);
}

u32 XLarge_ssssm_InterruptGetStatus(XLarge_ssssm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLarge_ssssm_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_SSSSM_CONTROL_ADDR_ISR);
}

