
set PATH=
call D:/xilinx/vitis2020.1/Vivado/2020.1/bin/xelab xil_defaultlib.apatb_spmv_kernel_top glbl -prj spmv_kernel.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims -L unisims_ver -L xpm  --lib "ieee_proposed=./ieee_proposed" -s spmv_kernel -debug wave
call D:/xilinx/vitis2020.1/Vivado/2020.1/bin/xsim --noieeewarnings spmv_kernel -tclbatch spmv_kernel.tcl

