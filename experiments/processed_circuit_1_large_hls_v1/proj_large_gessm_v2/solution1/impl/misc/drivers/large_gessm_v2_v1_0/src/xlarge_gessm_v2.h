// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XLARGE_GESSM_V2_H
#define XLARGE_GESSM_V2_H

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
#include "xlarge_gessm_v2_hw.h"

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
} XLarge_gessm_v2_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XLarge_gessm_v2;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLarge_gessm_v2_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLarge_gessm_v2_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLarge_gessm_v2_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLarge_gessm_v2_ReadReg(BaseAddress, RegOffset) \
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
int XLarge_gessm_v2_Initialize(XLarge_gessm_v2 *InstancePtr, u16 DeviceId);
XLarge_gessm_v2_Config* XLarge_gessm_v2_LookupConfig(u16 DeviceId);
int XLarge_gessm_v2_CfgInitialize(XLarge_gessm_v2 *InstancePtr, XLarge_gessm_v2_Config *ConfigPtr);
#else
int XLarge_gessm_v2_Initialize(XLarge_gessm_v2 *InstancePtr, const char* InstanceName);
int XLarge_gessm_v2_Release(XLarge_gessm_v2 *InstancePtr);
#endif

void XLarge_gessm_v2_Start(XLarge_gessm_v2 *InstancePtr);
u32 XLarge_gessm_v2_IsDone(XLarge_gessm_v2 *InstancePtr);
u32 XLarge_gessm_v2_IsIdle(XLarge_gessm_v2 *InstancePtr);
u32 XLarge_gessm_v2_IsReady(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_EnableAutoRestart(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_DisableAutoRestart(XLarge_gessm_v2 *InstancePtr);

void XLarge_gessm_v2_Set_l_ptr(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_l_ptr(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_l_idx(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_l_idx(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_l_val(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_l_val(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_b_ptr(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_b_ptr(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_b_idx(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_b_idx(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_b_val(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_b_val(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_x_ptr(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_x_ptr(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_x_idx(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_x_idx(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_x_val_csc(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_x_val_csc(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_x_csc_to_csr(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_x_csc_to_csr(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_x_val_csr(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_x_val_csr(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_active_cols(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_active_cols(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_Set_work(XLarge_gessm_v2 *InstancePtr, u64 Data);
u64 XLarge_gessm_v2_Get_work(XLarge_gessm_v2 *InstancePtr);

void XLarge_gessm_v2_InterruptGlobalEnable(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_InterruptGlobalDisable(XLarge_gessm_v2 *InstancePtr);
void XLarge_gessm_v2_InterruptEnable(XLarge_gessm_v2 *InstancePtr, u32 Mask);
void XLarge_gessm_v2_InterruptDisable(XLarge_gessm_v2 *InstancePtr, u32 Mask);
void XLarge_gessm_v2_InterruptClear(XLarge_gessm_v2 *InstancePtr, u32 Mask);
u32 XLarge_gessm_v2_InterruptGetEnabled(XLarge_gessm_v2 *InstancePtr);
u32 XLarge_gessm_v2_InterruptGetStatus(XLarge_gessm_v2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
