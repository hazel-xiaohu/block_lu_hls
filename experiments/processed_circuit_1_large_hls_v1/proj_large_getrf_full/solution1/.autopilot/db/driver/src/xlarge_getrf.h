// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XLARGE_GETRF_H
#define XLARGE_GETRF_H

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
#include "xlarge_getrf_hw.h"

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
} XLarge_getrf_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XLarge_getrf;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLarge_getrf_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLarge_getrf_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLarge_getrf_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLarge_getrf_ReadReg(BaseAddress, RegOffset) \
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
int XLarge_getrf_Initialize(XLarge_getrf *InstancePtr, u16 DeviceId);
XLarge_getrf_Config* XLarge_getrf_LookupConfig(u16 DeviceId);
int XLarge_getrf_CfgInitialize(XLarge_getrf *InstancePtr, XLarge_getrf_Config *ConfigPtr);
#else
int XLarge_getrf_Initialize(XLarge_getrf *InstancePtr, const char* InstanceName);
int XLarge_getrf_Release(XLarge_getrf *InstancePtr);
#endif

void XLarge_getrf_Start(XLarge_getrf *InstancePtr);
u32 XLarge_getrf_IsDone(XLarge_getrf *InstancePtr);
u32 XLarge_getrf_IsIdle(XLarge_getrf *InstancePtr);
u32 XLarge_getrf_IsReady(XLarge_getrf *InstancePtr);
void XLarge_getrf_EnableAutoRestart(XLarge_getrf *InstancePtr);
void XLarge_getrf_DisableAutoRestart(XLarge_getrf *InstancePtr);

void XLarge_getrf_Set_a_ptr(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_a_ptr(XLarge_getrf *InstancePtr);
void XLarge_getrf_Set_a_idx(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_a_idx(XLarge_getrf *InstancePtr);
void XLarge_getrf_Set_a_val(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_a_val(XLarge_getrf *InstancePtr);
void XLarge_getrf_Set_l_ptr(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_l_ptr(XLarge_getrf *InstancePtr);
void XLarge_getrf_Set_l_idx(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_l_idx(XLarge_getrf *InstancePtr);
void XLarge_getrf_Set_l_val(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_l_val(XLarge_getrf *InstancePtr);
void XLarge_getrf_Set_u_ptr(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_u_ptr(XLarge_getrf *InstancePtr);
void XLarge_getrf_Set_u_idx(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_u_idx(XLarge_getrf *InstancePtr);
void XLarge_getrf_Set_u_val(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_u_val(XLarge_getrf *InstancePtr);
void XLarge_getrf_Set_u_diag_pos(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_u_diag_pos(XLarge_getrf *InstancePtr);
void XLarge_getrf_Set_work(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_work(XLarge_getrf *InstancePtr);
void XLarge_getrf_Set_mark(XLarge_getrf *InstancePtr, u64 Data);
u64 XLarge_getrf_Get_mark(XLarge_getrf *InstancePtr);

void XLarge_getrf_InterruptGlobalEnable(XLarge_getrf *InstancePtr);
void XLarge_getrf_InterruptGlobalDisable(XLarge_getrf *InstancePtr);
void XLarge_getrf_InterruptEnable(XLarge_getrf *InstancePtr, u32 Mask);
void XLarge_getrf_InterruptDisable(XLarge_getrf *InstancePtr, u32 Mask);
void XLarge_getrf_InterruptClear(XLarge_getrf *InstancePtr, u32 Mask);
u32 XLarge_getrf_InterruptGetEnabled(XLarge_getrf *InstancePtr);
u32 XLarge_getrf_InterruptGetStatus(XLarge_getrf *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
