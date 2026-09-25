# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
# Tool Version Limit: 2025.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

__USE_CLANG__ = 1

__USE_VCXX_CLANG__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../tb_lu_spmm_cascade.cpp ../../../../sparse_lu_shared_cached.cpp ../../../../vccache.cpp ../../../../util.cpp ../../../../rcache.cpp ../../../../pe.cpp ../../../../core.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /home/huz/software/2025.2/Vitis
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /home/huz/software/2025.2/Vitis/tps/lnx64/gcc-8.3.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/lnx64/tools/clang-16/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
AP_ENABLE_OPTIMIZED := 1
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
CCFLAG += -fdebug-default-version=4
CCFLAG += --gcc-toolchain=/home/huz/software/2025.2/Vitis/tps/lnx64/gcc-8.3.0
CCFLAG += -Werror=uninitialized
CCFLAG += -Wno-c++11-narrowing
CCFLAG += -Wno-error=sometimes-uninitialized
LFLAG += --gcc-toolchain=/home/huz/software/2025.2/Vitis/tps/lnx64/gcc-8.3.0
LFLAG += -lstdc++fs



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/tb_lu_spmm_cascade.o: ../../../../tb_lu_spmm_cascade.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../tb_lu_spmm_cascade.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++17 ${CCFLAG} -c -MMD -DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/tb_lu_spmm_cascade.d

$(ObjDir)/sparse_lu_shared_cached.o: ../../../../sparse_lu_shared_cached.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../sparse_lu_shared_cached.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++17 ${CCFLAG} -c -MMD -DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB  -fhls-csim -fhlstoplevel=spmm $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/sparse_lu_shared_cached.d

$(ObjDir)/vccache.o: ../../../../vccache.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../vccache.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++17 ${CCFLAG} -c -MMD -DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB  -fhls-csim -fhlstoplevel=spmm $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/vccache.d

$(ObjDir)/util.o: ../../../../util.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../util.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++17 ${CCFLAG} -c -MMD -DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB  -fhls-csim -fhlstoplevel=spmm $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/util.d

$(ObjDir)/rcache.o: ../../../../rcache.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../rcache.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++17 ${CCFLAG} -c -MMD -DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB  -fhls-csim -fhlstoplevel=spmm $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/rcache.d

$(ObjDir)/pe.o: ../../../../pe.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../pe.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++17 ${CCFLAG} -c -MMD -DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB  -fhls-csim -fhlstoplevel=spmm $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/pe.d

$(ObjDir)/core.o: ../../../../core.cpp $(ObjDir)/.dir csim.mk
	$(Echo) "   Compiling ../../../../core.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) -std=gnu++17 ${CCFLAG} -c -MMD -DSPMM_COSIM_LU_CASCADE -DSPMM_C_SUB_AB  -fhls-csim -fhlstoplevel=spmm $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/core.d
