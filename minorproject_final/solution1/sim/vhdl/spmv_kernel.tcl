
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set values__row_indices__x__y_group [add_wave_group values__row_indices__x__y(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $values__row_indices__x__y_group]
set wdata_group [add_wave_group "Write Channel" -into $values__row_indices__x__y_group]
set ctrl_group [add_wave_group "Handshakes" -into $values__row_indices__x__y_group]
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_BUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_BID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_BRESP -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_RRESP -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_RUSER -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_RID -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_RDATA -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARUSER -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARREGION -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARQOS -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARPROT -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARBURST -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARLEN -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARID -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARADDR -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_WUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_WID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_WSTRB -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_WDATA -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWREGION -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWQOS -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWPROT -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWBURST -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWLEN -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWADDR -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_0_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set nnz_group [add_wave_group nnz(wire) -into $cinputgroup]
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/nnz -into $nnz_group -radix hex
set m_group [add_wave_group m(wire) -into $cinputgroup]
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m -into $m_group -radix hex
set n_group [add_wave_group n(wire) -into $cinputgroup]
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/n -into $n_group -radix hex
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/y -into $return_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/x -into $return_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/row_indices -into $return_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/col_indices -into $return_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/values -into $return_group -radix hex
set col_indices_group [add_wave_group col_indices(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $col_indices_group]
set wdata_group [add_wave_group "Write Channel" -into $col_indices_group]
set ctrl_group [add_wave_group "Handshakes" -into $col_indices_group]
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_BUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_BID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_BRESP -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_RRESP -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_RUSER -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_RID -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_RDATA -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARID -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_WUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_WID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_WDATA -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/m_axi_gmem_1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/ap_start -into $blocksiggroup
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/ap_done -into $blocksiggroup
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/ap_idle -into $blocksiggroup
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_spmv_kernel_top/AESL_inst_spmv_kernel/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_spmv_kernel_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_spmv_kernel_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_spmv_kernel_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_spmv_kernel_top/LENGTH_gmem_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_spmv_kernel_top/LENGTH_gmem_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_spmv_kernel_top/LENGTH_values -into $tb_portdepth_group -radix hex
add_wave /apatb_spmv_kernel_top/LENGTH_col_indices -into $tb_portdepth_group -radix hex
add_wave /apatb_spmv_kernel_top/LENGTH_row_indices -into $tb_portdepth_group -radix hex
add_wave /apatb_spmv_kernel_top/LENGTH_x -into $tb_portdepth_group -radix hex
add_wave /apatb_spmv_kernel_top/LENGTH_y -into $tb_portdepth_group -radix hex
add_wave /apatb_spmv_kernel_top/LENGTH_n -into $tb_portdepth_group -radix hex
add_wave /apatb_spmv_kernel_top/LENGTH_m -into $tb_portdepth_group -radix hex
add_wave /apatb_spmv_kernel_top/LENGTH_nnz -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_values__row_indices__x__y_group [add_wave_group values__row_indices__x__y(axi_master) -into $tbcinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_values__row_indices__x__y_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_values__row_indices__x__y_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_values__row_indices__x__y_group]
add_wave /apatb_spmv_kernel_top/gmem_0_BUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_BID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_BRESP -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_RRESP -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_RUSER -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_RID -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_RDATA -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARUSER -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARREGION -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARQOS -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARPROT -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARBURST -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARLEN -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARID -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARADDR -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_WUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_WID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_WSTRB -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_WDATA -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWREGION -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWQOS -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWPROT -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWBURST -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWLEN -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWADDR -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_0_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_nnz_group [add_wave_group nnz(wire) -into $tbcinputgroup]
add_wave /apatb_spmv_kernel_top/nnz -into $tb_nnz_group -radix hex
set tb_m_group [add_wave_group m(wire) -into $tbcinputgroup]
add_wave /apatb_spmv_kernel_top/m -into $tb_m_group -radix hex
set tb_n_group [add_wave_group n(wire) -into $tbcinputgroup]
add_wave /apatb_spmv_kernel_top/n -into $tb_n_group -radix hex
set tb_return_group [add_wave_group return(wire) -into $tbcinputgroup]
add_wave /apatb_spmv_kernel_top/y -into $tb_return_group -radix hex
add_wave /apatb_spmv_kernel_top/x -into $tb_return_group -radix hex
add_wave /apatb_spmv_kernel_top/row_indices -into $tb_return_group -radix hex
add_wave /apatb_spmv_kernel_top/col_indices -into $tb_return_group -radix hex
add_wave /apatb_spmv_kernel_top/values -into $tb_return_group -radix hex
set tb_col_indices_group [add_wave_group col_indices(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_col_indices_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_col_indices_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_col_indices_group]
add_wave /apatb_spmv_kernel_top/gmem_1_BUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_BID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_BRESP -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_RRESP -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_RUSER -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_RID -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_RDATA -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARID -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_WUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_WID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_WDATA -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWID -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_spmv_kernel_top/gmem_1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
save_wave_config spmv_kernel.wcfg
run all
quit

