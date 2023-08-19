############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project minorproject_final
set_top spmv_kernel
add_files sourcefiles/spmvkernel.cpp
add_files -tb sourcefiles/readspm.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb sourcefiles/spmv.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb sourcefiles/spmvtop.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output D:/xilinx/minorproject_final/output_ip/spmv_kernel.zip -rtl verilog
source "./minorproject_final/solution1/directives.tcl"
csim_design -argv {D:/xilinx/minorproject/data/rotor1.mtx.csr}
csynth_design
cosim_design -disable_deadlock_detection -trace_level all -argv {D:/xilinx/minorproject/data/rotor1.mtx.csr} -rtl vhdl
export_design -rtl verilog -format ip_catalog -version "0.0.0" -output D:/xilinx/minorproject_final/output_ip/spmv_kernel.zip
