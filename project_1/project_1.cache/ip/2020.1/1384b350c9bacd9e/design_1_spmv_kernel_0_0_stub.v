// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Aug 14 15:11:30 2023
// Host        : tinas-desktop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_spmv_kernel_0_0_stub.v
// Design      : design_1_spmv_kernel_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "spmv_kernel,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, m_axi_gmem_0_AWADDR, m_axi_gmem_0_AWLEN, m_axi_gmem_0_AWSIZE, 
  m_axi_gmem_0_AWBURST, m_axi_gmem_0_AWLOCK, m_axi_gmem_0_AWREGION, m_axi_gmem_0_AWCACHE, 
  m_axi_gmem_0_AWPROT, m_axi_gmem_0_AWQOS, m_axi_gmem_0_AWVALID, m_axi_gmem_0_AWREADY, 
  m_axi_gmem_0_WDATA, m_axi_gmem_0_WSTRB, m_axi_gmem_0_WLAST, m_axi_gmem_0_WVALID, 
  m_axi_gmem_0_WREADY, m_axi_gmem_0_BRESP, m_axi_gmem_0_BVALID, m_axi_gmem_0_BREADY, 
  m_axi_gmem_0_ARADDR, m_axi_gmem_0_ARLEN, m_axi_gmem_0_ARSIZE, m_axi_gmem_0_ARBURST, 
  m_axi_gmem_0_ARLOCK, m_axi_gmem_0_ARREGION, m_axi_gmem_0_ARCACHE, m_axi_gmem_0_ARPROT, 
  m_axi_gmem_0_ARQOS, m_axi_gmem_0_ARVALID, m_axi_gmem_0_ARREADY, m_axi_gmem_0_RDATA, 
  m_axi_gmem_0_RRESP, m_axi_gmem_0_RLAST, m_axi_gmem_0_RVALID, m_axi_gmem_0_RREADY, 
  m_axi_gmem_1_AWADDR, m_axi_gmem_1_AWLEN, m_axi_gmem_1_AWSIZE, m_axi_gmem_1_AWBURST, 
  m_axi_gmem_1_AWLOCK, m_axi_gmem_1_AWREGION, m_axi_gmem_1_AWCACHE, m_axi_gmem_1_AWPROT, 
  m_axi_gmem_1_AWQOS, m_axi_gmem_1_AWVALID, m_axi_gmem_1_AWREADY, m_axi_gmem_1_WDATA, 
  m_axi_gmem_1_WSTRB, m_axi_gmem_1_WLAST, m_axi_gmem_1_WVALID, m_axi_gmem_1_WREADY, 
  m_axi_gmem_1_BRESP, m_axi_gmem_1_BVALID, m_axi_gmem_1_BREADY, m_axi_gmem_1_ARADDR, 
  m_axi_gmem_1_ARLEN, m_axi_gmem_1_ARSIZE, m_axi_gmem_1_ARBURST, m_axi_gmem_1_ARLOCK, 
  m_axi_gmem_1_ARREGION, m_axi_gmem_1_ARCACHE, m_axi_gmem_1_ARPROT, m_axi_gmem_1_ARQOS, 
  m_axi_gmem_1_ARVALID, m_axi_gmem_1_ARREADY, m_axi_gmem_1_RDATA, m_axi_gmem_1_RRESP, 
  m_axi_gmem_1_RLAST, m_axi_gmem_1_RVALID, m_axi_gmem_1_RREADY, values, col_indices, 
  row_indices, x, y, n, m, nnz)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,m_axi_gmem_0_AWADDR[63:0],m_axi_gmem_0_AWLEN[7:0],m_axi_gmem_0_AWSIZE[2:0],m_axi_gmem_0_AWBURST[1:0],m_axi_gmem_0_AWLOCK[1:0],m_axi_gmem_0_AWREGION[3:0],m_axi_gmem_0_AWCACHE[3:0],m_axi_gmem_0_AWPROT[2:0],m_axi_gmem_0_AWQOS[3:0],m_axi_gmem_0_AWVALID,m_axi_gmem_0_AWREADY,m_axi_gmem_0_WDATA[31:0],m_axi_gmem_0_WSTRB[3:0],m_axi_gmem_0_WLAST,m_axi_gmem_0_WVALID,m_axi_gmem_0_WREADY,m_axi_gmem_0_BRESP[1:0],m_axi_gmem_0_BVALID,m_axi_gmem_0_BREADY,m_axi_gmem_0_ARADDR[63:0],m_axi_gmem_0_ARLEN[7:0],m_axi_gmem_0_ARSIZE[2:0],m_axi_gmem_0_ARBURST[1:0],m_axi_gmem_0_ARLOCK[1:0],m_axi_gmem_0_ARREGION[3:0],m_axi_gmem_0_ARCACHE[3:0],m_axi_gmem_0_ARPROT[2:0],m_axi_gmem_0_ARQOS[3:0],m_axi_gmem_0_ARVALID,m_axi_gmem_0_ARREADY,m_axi_gmem_0_RDATA[31:0],m_axi_gmem_0_RRESP[1:0],m_axi_gmem_0_RLAST,m_axi_gmem_0_RVALID,m_axi_gmem_0_RREADY,m_axi_gmem_1_AWADDR[63:0],m_axi_gmem_1_AWLEN[7:0],m_axi_gmem_1_AWSIZE[2:0],m_axi_gmem_1_AWBURST[1:0],m_axi_gmem_1_AWLOCK[1:0],m_axi_gmem_1_AWREGION[3:0],m_axi_gmem_1_AWCACHE[3:0],m_axi_gmem_1_AWPROT[2:0],m_axi_gmem_1_AWQOS[3:0],m_axi_gmem_1_AWVALID,m_axi_gmem_1_AWREADY,m_axi_gmem_1_WDATA[31:0],m_axi_gmem_1_WSTRB[3:0],m_axi_gmem_1_WLAST,m_axi_gmem_1_WVALID,m_axi_gmem_1_WREADY,m_axi_gmem_1_BRESP[1:0],m_axi_gmem_1_BVALID,m_axi_gmem_1_BREADY,m_axi_gmem_1_ARADDR[63:0],m_axi_gmem_1_ARLEN[7:0],m_axi_gmem_1_ARSIZE[2:0],m_axi_gmem_1_ARBURST[1:0],m_axi_gmem_1_ARLOCK[1:0],m_axi_gmem_1_ARREGION[3:0],m_axi_gmem_1_ARCACHE[3:0],m_axi_gmem_1_ARPROT[2:0],m_axi_gmem_1_ARQOS[3:0],m_axi_gmem_1_ARVALID,m_axi_gmem_1_ARREADY,m_axi_gmem_1_RDATA[31:0],m_axi_gmem_1_RRESP[1:0],m_axi_gmem_1_RLAST,m_axi_gmem_1_RVALID,m_axi_gmem_1_RREADY,values[63:0],col_indices[63:0],row_indices[63:0],x[63:0],y[63:0],n[31:0],m[31:0],nnz[31:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [63:0]m_axi_gmem_0_AWADDR;
  output [7:0]m_axi_gmem_0_AWLEN;
  output [2:0]m_axi_gmem_0_AWSIZE;
  output [1:0]m_axi_gmem_0_AWBURST;
  output [1:0]m_axi_gmem_0_AWLOCK;
  output [3:0]m_axi_gmem_0_AWREGION;
  output [3:0]m_axi_gmem_0_AWCACHE;
  output [2:0]m_axi_gmem_0_AWPROT;
  output [3:0]m_axi_gmem_0_AWQOS;
  output m_axi_gmem_0_AWVALID;
  input m_axi_gmem_0_AWREADY;
  output [31:0]m_axi_gmem_0_WDATA;
  output [3:0]m_axi_gmem_0_WSTRB;
  output m_axi_gmem_0_WLAST;
  output m_axi_gmem_0_WVALID;
  input m_axi_gmem_0_WREADY;
  input [1:0]m_axi_gmem_0_BRESP;
  input m_axi_gmem_0_BVALID;
  output m_axi_gmem_0_BREADY;
  output [63:0]m_axi_gmem_0_ARADDR;
  output [7:0]m_axi_gmem_0_ARLEN;
  output [2:0]m_axi_gmem_0_ARSIZE;
  output [1:0]m_axi_gmem_0_ARBURST;
  output [1:0]m_axi_gmem_0_ARLOCK;
  output [3:0]m_axi_gmem_0_ARREGION;
  output [3:0]m_axi_gmem_0_ARCACHE;
  output [2:0]m_axi_gmem_0_ARPROT;
  output [3:0]m_axi_gmem_0_ARQOS;
  output m_axi_gmem_0_ARVALID;
  input m_axi_gmem_0_ARREADY;
  input [31:0]m_axi_gmem_0_RDATA;
  input [1:0]m_axi_gmem_0_RRESP;
  input m_axi_gmem_0_RLAST;
  input m_axi_gmem_0_RVALID;
  output m_axi_gmem_0_RREADY;
  output [63:0]m_axi_gmem_1_AWADDR;
  output [7:0]m_axi_gmem_1_AWLEN;
  output [2:0]m_axi_gmem_1_AWSIZE;
  output [1:0]m_axi_gmem_1_AWBURST;
  output [1:0]m_axi_gmem_1_AWLOCK;
  output [3:0]m_axi_gmem_1_AWREGION;
  output [3:0]m_axi_gmem_1_AWCACHE;
  output [2:0]m_axi_gmem_1_AWPROT;
  output [3:0]m_axi_gmem_1_AWQOS;
  output m_axi_gmem_1_AWVALID;
  input m_axi_gmem_1_AWREADY;
  output [31:0]m_axi_gmem_1_WDATA;
  output [3:0]m_axi_gmem_1_WSTRB;
  output m_axi_gmem_1_WLAST;
  output m_axi_gmem_1_WVALID;
  input m_axi_gmem_1_WREADY;
  input [1:0]m_axi_gmem_1_BRESP;
  input m_axi_gmem_1_BVALID;
  output m_axi_gmem_1_BREADY;
  output [63:0]m_axi_gmem_1_ARADDR;
  output [7:0]m_axi_gmem_1_ARLEN;
  output [2:0]m_axi_gmem_1_ARSIZE;
  output [1:0]m_axi_gmem_1_ARBURST;
  output [1:0]m_axi_gmem_1_ARLOCK;
  output [3:0]m_axi_gmem_1_ARREGION;
  output [3:0]m_axi_gmem_1_ARCACHE;
  output [2:0]m_axi_gmem_1_ARPROT;
  output [3:0]m_axi_gmem_1_ARQOS;
  output m_axi_gmem_1_ARVALID;
  input m_axi_gmem_1_ARREADY;
  input [31:0]m_axi_gmem_1_RDATA;
  input [1:0]m_axi_gmem_1_RRESP;
  input m_axi_gmem_1_RLAST;
  input m_axi_gmem_1_RVALID;
  output m_axi_gmem_1_RREADY;
  input [63:0]values;
  input [63:0]col_indices;
  input [63:0]row_indices;
  input [63:0]x;
  input [63:0]y;
  input [31:0]n;
  input [31:0]m;
  input [31:0]nnz;
endmodule
