// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSPMM_H
#define XSPMM_H

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
#include "xspmm_hw.h"

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
    u64 Ctr_BaseAddress;
} XSpmm_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Ctr_BaseAddress;
    u32 IsReady;
} XSpmm;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSpmm_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSpmm_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSpmm_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSpmm_ReadReg(BaseAddress, RegOffset) \
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
int XSpmm_Initialize(XSpmm *InstancePtr, u16 DeviceId);
XSpmm_Config* XSpmm_LookupConfig(u16 DeviceId);
int XSpmm_CfgInitialize(XSpmm *InstancePtr, XSpmm_Config *ConfigPtr);
#else
int XSpmm_Initialize(XSpmm *InstancePtr, const char* InstanceName);
int XSpmm_Release(XSpmm *InstancePtr);
#endif

void XSpmm_Start(XSpmm *InstancePtr);
u32 XSpmm_IsDone(XSpmm *InstancePtr);
u32 XSpmm_IsIdle(XSpmm *InstancePtr);
u32 XSpmm_IsReady(XSpmm *InstancePtr);
void XSpmm_EnableAutoRestart(XSpmm *InstancePtr);
void XSpmm_DisableAutoRestart(XSpmm *InstancePtr);

void XSpmm_Set_A_rcsr(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_A_rcsr(XSpmm *InstancePtr);
void XSpmm_Set_A_cid(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_A_cid(XSpmm *InstancePtr);
void XSpmm_Set_A_val(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_A_val(XSpmm *InstancePtr);
void XSpmm_Set_B_rcsr1(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_rcsr1(XSpmm *InstancePtr);
void XSpmm_Set_B_rcsr2(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_rcsr2(XSpmm *InstancePtr);
void XSpmm_Set_B_rcsr3(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_rcsr3(XSpmm *InstancePtr);
void XSpmm_Set_B_rcsr4(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_rcsr4(XSpmm *InstancePtr);
void XSpmm_Set_B_val1(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_val1(XSpmm *InstancePtr);
void XSpmm_Set_B_cid1(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_cid1(XSpmm *InstancePtr);
void XSpmm_Set_B_val2(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_val2(XSpmm *InstancePtr);
void XSpmm_Set_B_cid2(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_cid2(XSpmm *InstancePtr);
void XSpmm_Set_B_val3(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_val3(XSpmm *InstancePtr);
void XSpmm_Set_B_cid3(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_cid3(XSpmm *InstancePtr);
void XSpmm_Set_B_val4(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_val4(XSpmm *InstancePtr);
void XSpmm_Set_B_cid4(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_cid4(XSpmm *InstancePtr);
void XSpmm_Set_B_val_port1(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_val_port1(XSpmm *InstancePtr);
void XSpmm_Set_B_cid_port1(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_cid_port1(XSpmm *InstancePtr);
void XSpmm_Set_B_val_port2(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_val_port2(XSpmm *InstancePtr);
void XSpmm_Set_B_cid_port2(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_cid_port2(XSpmm *InstancePtr);
void XSpmm_Set_B_val_port3(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_val_port3(XSpmm *InstancePtr);
void XSpmm_Set_B_cid_port3(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_cid_port3(XSpmm *InstancePtr);
void XSpmm_Set_B_val_port4(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_val_port4(XSpmm *InstancePtr);
void XSpmm_Set_B_cid_port4(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_B_cid_port4(XSpmm *InstancePtr);
void XSpmm_Set_C_rcsr(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_C_rcsr(XSpmm *InstancePtr);
void XSpmm_Set_C_cid(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_C_cid(XSpmm *InstancePtr);
void XSpmm_Set_C_val(XSpmm *InstancePtr, u64 Data);
u64 XSpmm_Get_C_val(XSpmm *InstancePtr);
void XSpmm_Set_arnum(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_arnum(XSpmm *InstancePtr);
void XSpmm_Set_atnum(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_atnum(XSpmm *InstancePtr);
void XSpmm_Set_brnum(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_brnum(XSpmm *InstancePtr);
void XSpmm_Set_btnum(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_btnum(XSpmm *InstancePtr);
void XSpmm_Set_B_rcsr_base(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_B_rcsr_base(XSpmm *InstancePtr);
void XSpmm_Set_B_val_base(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_B_val_base(XSpmm *InstancePtr);
void XSpmm_Set_B_cid_base(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_B_cid_base(XSpmm *InstancePtr);
u32 XSpmm_Get_r1acc(XSpmm *InstancePtr);
u32 XSpmm_Get_r1acc_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_r1hit(XSpmm *InstancePtr);
u32 XSpmm_Get_r1hit_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_r2acc(XSpmm *InstancePtr);
u32 XSpmm_Get_r2acc_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_r2hit(XSpmm *InstancePtr);
u32 XSpmm_Get_r2hit_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_r3acc(XSpmm *InstancePtr);
u32 XSpmm_Get_r3acc_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_r3hit(XSpmm *InstancePtr);
u32 XSpmm_Get_r3hit_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_r4acc(XSpmm *InstancePtr);
u32 XSpmm_Get_r4acc_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_r4hit(XSpmm *InstancePtr);
u32 XSpmm_Get_r4hit_vld(XSpmm *InstancePtr);
void XSpmm_Set_r5acc(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_r5acc(XSpmm *InstancePtr);
void XSpmm_Set_r5hit(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_r5hit(XSpmm *InstancePtr);
void XSpmm_Set_r6acc(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_r6acc(XSpmm *InstancePtr);
void XSpmm_Set_r6hit(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_r6hit(XSpmm *InstancePtr);
void XSpmm_Set_r7acc(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_r7acc(XSpmm *InstancePtr);
void XSpmm_Set_r7hit(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_r7hit(XSpmm *InstancePtr);
void XSpmm_Set_r8acc(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_r8acc(XSpmm *InstancePtr);
void XSpmm_Set_r8hit(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_r8hit(XSpmm *InstancePtr);
u32 XSpmm_Get_vc1acc(XSpmm *InstancePtr);
u32 XSpmm_Get_vc1acc_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_vc1hit(XSpmm *InstancePtr);
u32 XSpmm_Get_vc1hit_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_vc2acc(XSpmm *InstancePtr);
u32 XSpmm_Get_vc2acc_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_vc2hit(XSpmm *InstancePtr);
u32 XSpmm_Get_vc2hit_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_vc3acc(XSpmm *InstancePtr);
u32 XSpmm_Get_vc3acc_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_vc3hit(XSpmm *InstancePtr);
u32 XSpmm_Get_vc3hit_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_vc4acc(XSpmm *InstancePtr);
u32 XSpmm_Get_vc4acc_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_vc4hit(XSpmm *InstancePtr);
u32 XSpmm_Get_vc4hit_vld(XSpmm *InstancePtr);
void XSpmm_Set_vc5acc(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_vc5acc(XSpmm *InstancePtr);
void XSpmm_Set_vc5hit(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_vc5hit(XSpmm *InstancePtr);
void XSpmm_Set_vc6acc(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_vc6acc(XSpmm *InstancePtr);
void XSpmm_Set_vc6hit(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_vc6hit(XSpmm *InstancePtr);
void XSpmm_Set_vc7acc(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_vc7acc(XSpmm *InstancePtr);
void XSpmm_Set_vc7hit(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_vc7hit(XSpmm *InstancePtr);
void XSpmm_Set_vc8acc(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_vc8acc(XSpmm *InstancePtr);
void XSpmm_Set_vc8hit(XSpmm *InstancePtr, u32 Data);
u32 XSpmm_Get_vc8hit(XSpmm *InstancePtr);
u32 XSpmm_Get_fnum(XSpmm *InstancePtr);
u32 XSpmm_Get_fnum_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_workload_counter1(XSpmm *InstancePtr);
u32 XSpmm_Get_workload_counter1_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_workload_counter2(XSpmm *InstancePtr);
u32 XSpmm_Get_workload_counter2_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_workload_counter3(XSpmm *InstancePtr);
u32 XSpmm_Get_workload_counter3_vld(XSpmm *InstancePtr);
u32 XSpmm_Get_workload_counter4(XSpmm *InstancePtr);
u32 XSpmm_Get_workload_counter4_vld(XSpmm *InstancePtr);

void XSpmm_InterruptGlobalEnable(XSpmm *InstancePtr);
void XSpmm_InterruptGlobalDisable(XSpmm *InstancePtr);
void XSpmm_InterruptEnable(XSpmm *InstancePtr, u32 Mask);
void XSpmm_InterruptDisable(XSpmm *InstancePtr, u32 Mask);
void XSpmm_InterruptClear(XSpmm *InstancePtr, u32 Mask);
u32 XSpmm_InterruptGetEnabled(XSpmm *InstancePtr);
u32 XSpmm_InterruptGetStatus(XSpmm *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
