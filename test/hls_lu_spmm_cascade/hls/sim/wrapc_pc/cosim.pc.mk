# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
# Tool Version Limit: 2025.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
__SIM_FPO__ = 1
__SIM_MATHHLS__ = 1
__SIM_FFT__ = 1
__SIM_FIR__ = 1
__SIM_DDS__ = 1
__USE_VCXX_CLANG__ = 1

__USE_CLANG__ = 1

__COSIM_FLOW__ = 1


DIRECTORY := $(shell basename $(CURDIR))
ifeq ($(DIRECTORY), wrapc_pc)
  override TARGET := cosim.pc.exe
  WFLAG += -DPOST_CHECK
else
  override TARGET := cosim.tv.exe
endif
IRWRAPPER  := $(basename $(wildcard *.ll))
CPPWRAPPER := $(IRWRAPPER:_ir=)
APATB_UTIL := $(basename $(wildcard $(IRWRAPPER:_ir=_util).cpp))

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
AUTOPILOT_TOOL = ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH = ${AUTOPILOT_ROOT}/common/technology
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/lnx64/tools/clang-16/bin
TOOLCHAIN += --gcc-toolchain=/home/huz/software/2025.2/Vitis/tps/lnx64/gcc-8.3.0
LFLAG += --gcc-toolchain=/home/huz/software/2025.2/Vitis/tps/lnx64/gcc-8.3.0
CCFLAG += -Werror=uninitialized
CCFLAG += -Wno-error=c++11-narrowing
CCFLAG += -Wno-error=sometimes-uninitialized

IFLAG += -g

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/auto_cc/include"
IFLAG += -D__VITIS_HLS__
IFLAG += -D__HLS_COSIM__
IFLAG += -D__SIM_FPO__
IFLAG += -D__SIM_FFT__
IFLAG += -D__SIM_FIR__
IFLAG += -D__SIM_DDS__
IFLAG += -D__DSP48E2__
WFLAG += -DUSE_BINARY_TV_FILE
LFLAG += -lpthread
LFLAG += -lstdc++fs
IFLAG += -D__RTL_SIMULATION__
IFLAG += -D__xilinx_ip_top=
AP_ENABLE_OPTIMIZED := 1
DFLAG += -DAESL_PIPELINE

include ./Makefile.rules

APATB_OBJECTS := $(addprefix $(ObjDir)/, $(addsuffix .o, $(CPPWRAPPER) $(IRWRAPPER) $(APATB_UTIL)))
OBJECTS := $(filter-out $(APATB_OBJECTS), $(OBJECTS)) $(APATB_OBJECTS)

all : $(TARGET)

$(ObjDir)/$(CPPWRAPPER).o: $(CPPWRAPPER).cpp
	$(Echo) "   Compiling $<" $(AVE_DIR_DLOG)
	$(Verb) $(CXX) -fno-builtin-isinf -fno-builtin-isnan -c $(TOOLCHAIN) $(IFLAG) $(WFLAG) $< -o $@

$(ObjDir)/$(APATB_UTIL).o: $(APATB_UTIL).cpp
	$(Echo) "   Compiling $<" $(AVE_DIR_DLOG)
	$(Verb) $(CXX) -fno-builtin-isinf -fno-builtin-isnan -c $(TOOLCHAIN) $(IFLAG) $(WFLAG) $< -o $@

$(ObjDir)/tb_lu_spmm_cascade.cpp_pre.cpp.tb.o : tb_lu_spmm_cascade.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling tb_lu_spmm_cascade.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN} -std=gnu++17 -fno-builtin-isinf -fno-builtin-isnan -c -Wno-unknown-pragmas -Wno-unknown-pragmas $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/sparse_lu_shared_cached.cpp_pre.cpp.tb.o : sparse_lu_shared_cached.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling sparse_lu_shared_cached.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN} -std=gnu++17 -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/vccache.cpp_pre.cpp.tb.o : vccache.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling vccache.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN} -std=gnu++17 -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/util.cpp_pre.cpp.tb.o : util.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling util.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN} -std=gnu++17 -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/rcache.cpp_pre.cpp.tb.o : rcache.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling rcache.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN} -std=gnu++17 -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/pe.cpp_pre.cpp.tb.o : pe.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling pe.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN} -std=gnu++17 -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/core.cpp_pre.cpp.tb.o : core.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling core.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN} -std=gnu++17 -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \
