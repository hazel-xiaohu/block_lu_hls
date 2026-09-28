# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../tb.cpp ../../../../core.cpp ../../../../pe.cpp ../../../../rcache.cpp ../../../../util.cpp ../../../../vccache.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /openbayes/home/tools/Xilinx/Vitis_HLS/2022.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /usr/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9/bin
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
IFLAG += -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB -Wno-unknown-pragmas 
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/tb.o: ../../../../tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../tb.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/tb.d

$(ObjDir)/core.o: ../../../../core.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../core.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/core.d

$(ObjDir)/pe.o: ../../../../pe.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pe.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/pe.d

$(ObjDir)/rcache.o: ../../../../rcache.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../rcache.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/rcache.d

$(ObjDir)/util.o: ../../../../util.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../util.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/util.d

$(ObjDir)/vccache.o: ../../../../vccache.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../vccache.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/vccache.d
