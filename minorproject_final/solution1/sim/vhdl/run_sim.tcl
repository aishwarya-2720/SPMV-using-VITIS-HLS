# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# ==============================================================
set ::env(PATH) "$::env(PATH);D:/xilinx/vitis2020.1/Vitis/2020.1/win64/tools/fpo_v7_0"

set ::env(PATH) "$::env(PATH);D:/xilinx/vitis2020.1/Vitis/2020.1/win64/tools/fft_v9_1"
set ::env(PATH) "$::env(PATH);D:/xilinx/vitis2020.1/Vitis/2020.1/win64/tools/fir_v7_0"
set ::env(PATH) "$::env(PATH);D:/xilinx/vitis2020.1/Vitis/2020.1/win64/tools/dds_v6_0"

source check_sim.tcl

set ap_argv "D:/xilinx/minorproject/data/rotor1.mtx.csr"
# --> test vector generation

::AP::printMsg INFO COSIM 302 COSIM_302_998

cd ../wrapc

file delete -force  "err.log"

if {![file exists cosim.tv.exe]} {
	::AP::printMsg ERR COSIM 321 COSIM_321_999
	return -code error -errorcode $::errorCode
}

set ret [catch {eval exec ./cosim.tv.exe D:/xilinx/minorproject/data/rotor1.mtx.csr | tee temp0.log >&@ stdout} err]

if {$ret == 1} {
	::AP::printMsg ERR COSIM 320 COSIM_320_1000
	return -code error -errorcode $::errorCode
}

if {[file isfile spmv_kernel.autotvin.dat]} {
	file delete -force spmv_kernel.autotvin.dat
}

if {[file isfile spmv_kernel.autotvout.dat]} {
	file delete -force spmv_kernel.autotvout.dat
}

sc_sim_check $ret $err "temp0.log"

cd ../tv/cdatafile
set ret [check_tvin_file]

if {$ret == 1} {
	::AP::printMsg ERR COSIM 344 COSIM_344_1005
	return -code error -errorcode $::errorCode
}

cd ../

# --> vhdl simulation

::AP::printMsg INFO COSIM 322 COSIM_322_1006

::AP::printMsg INFO COSIM 15 COSIM_15_1011

cd ../vhdl

file delete -force ".exit.err"
file delete -force ".aesl_error"
file delete -force "err.log"

if {[file isfile run_xsim.bat]} {
	set ret [catch {eval exec "./run_xsim.bat | tee temp2.log" >&@ stdout} err]
}

cd ../tv/rtldatafile

set ret [check_tvout_file]

if {$ret == 1} {
	::AP::printMsg ERR COSIM 344 COSIM_344_1020
	return -code error -errorcode $::errorCode
}

cd ../../wrapc_pc

::AP::printMsg INFO COSIM 316 COSIM_316_1021

if {![file exists cosim.pc.exe]} {
    ::AP::printMsg ERR COSIM 320 COSIM_320_1022
    return -code error -errorcode $::errorCode
}

set ret [catch {eval exec ./cosim.pc.exe D:/xilinx/minorproject/data/rotor1.mtx.csr | tee temp0.log >&@ stdout} err]

sc_sim_check $ret $err "temp3.log"
