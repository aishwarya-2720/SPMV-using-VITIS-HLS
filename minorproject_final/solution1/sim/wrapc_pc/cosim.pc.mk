# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# ==============================================================
__SIM_FPO__ = 1
__SIM_MATHHLS__ = 1
__SIM_FFT__ = 1
__SIM_FIR__ = 1
__SIM_DDS__ = 1

override TARGET := cosim.pc.exe

AUTOPILOT_ROOT := D:/xilinx/vitis2020.1/Vitis/2020.1
AUTOPILOT_MACH := win64

ifdef COSIM_M32
  AUTOPILOT_MACH := lnx32
  IFLAG += -m32
endif
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := D:/xilinx/vitis2020.1/Vitis/2020.1/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL = ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH = ${AUTOPILOT_ROOT}/common/technology
CCFLAG += -Werror=return-type
TOOLCHAIN += 

IFLAG += -g

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/auto_cc/include"
IFLAG += -D__SIM_FPO__
IFLAG += -D__SIM_FFT__
IFLAG += -D__SIM_FIR__
IFLAG += -D__SIM_DDS__
IFLAG += -D__DSP48E1__
IFLAG += -DNT
IFLAG += -Wno-unknown-pragmas
LFLAG += -L "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/systemc/lib" -lsystemc -lpthread
IFLAG += -D__RTL_SIMULATION__
IFLAG += -D__xilinx_ip_top=
LFLAG += -Wl,--enable-auto-import

include ./Makefile.rules

all : $(TARGET)

$(ObjDir)/readspm.cpp_pre.cpp.tb.o : readspm.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling readspm.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/spmvtop.cpp_pre.cpp.tb.o : spmvtop.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling spmvtop.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/spmvkernel.cpp_pre.cpp.tb.o : spmvkernel.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling spmvkernel.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN}  -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \
