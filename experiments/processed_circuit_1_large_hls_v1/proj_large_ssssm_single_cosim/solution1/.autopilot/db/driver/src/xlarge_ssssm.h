// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XLARGE_SSSSM_H
#define XLARGE_SSSSM_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xlarge_ssssm_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XLarge_ssssm_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XLarge_ssssm;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLarge_ssssm_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLarge_ssssm_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLarge_ssssm_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLarge_ssssm_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XLarge_ssssm_Initialize(XLarge_ssssm *InstancePtr, u16 DeviceId);
XLarge_ssssm_Config* XLarge_ssssm_LookupConfig(u16 DeviceId);
int XLarge_ssssm_CfgInitialize(XLarge_ssssm *InstancePtr, XLarge_ssssm_Config *ConfigPtr);
#else
int XLarge_ssssm_Initialize(XLarge_ssssm *InstancePtr, const char* InstanceName);
int XLarge_ssssm_Release(XLarge_ssssm *InstancePtr);
#endif

void XLarge_ssssm_Start(XLarge_ssssm *InstancePtr);
u32 XLarge_ssssm_IsDone(XLarge_ssssm *InstancePtr);
u32 XLarge_ssssm_IsIdle(XLarge_ssssm *InstancePtr);
u32 XLarge_ssssm_IsReady(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_EnableAutoRestart(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_DisableAutoRestart(XLarge_ssssm *InstancePtr);

void XLarge_ssssm_Set_a_ptr(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_a_ptr(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_a_idx(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_a_idx(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_a_val(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_a_val(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_l_ptr(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_l_ptr(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_l_idx(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_l_idx(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_l_val(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_l_val(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_u_ptr(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_u_ptr(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_u_idx(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_u_idx(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_u_val(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_u_val(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_s_ptr(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_s_ptr(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_s_idx(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_s_idx(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_s_val(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_s_val(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_work(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_work(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_Set_mark(XLarge_ssssm *InstancePtr, u64 Data);
u64 XLarge_ssssm_Get_mark(XLarge_ssssm *InstancePtr);

void XLarge_ssssm_InterruptGlobalEnable(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_InterruptGlobalDisable(XLarge_ssssm *InstancePtr);
void XLarge_ssssm_InterruptEnable(XLarge_ssssm *InstancePtr, u32 Mask);
void XLarge_ssssm_InterruptDisable(XLarge_ssssm *InstancePtr, u32 Mask);
void XLarge_ssssm_InterruptClear(XLarge_ssssm *InstancePtr, u32 Mask);
u32 XLarge_ssssm_InterruptGetEnabled(XLarge_ssssm *InstancePtr);
u32 XLarge_ssssm_InterruptGetStatus(XLarge_ssssm *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
