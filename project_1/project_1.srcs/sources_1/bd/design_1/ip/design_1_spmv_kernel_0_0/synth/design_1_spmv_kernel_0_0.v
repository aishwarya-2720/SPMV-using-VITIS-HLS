// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:spmv_kernel:0.0
// IP Revision: 0

(* X_CORE_INFO = "spmv_kernel,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "design_1_spmv_kernel_0_0,spmv_kernel,{}" *)
(* CORE_GENERATION_INFO = "design_1_spmv_kernel_0_0,spmv_kernel,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=spmv_kernel,x_ipVersion=0.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_M_AXI_GMEM_0_ID_WIDTH=1,C_M_AXI_GMEM_0_ADDR_WIDTH=64,C_M_AXI_GMEM_0_DATA_WIDTH=32,C_M_AXI_GMEM_0_AWUSER_WIDTH=1,C_M_AXI_GMEM_0_ARUSER_WIDTH=1,C_M_AXI_GMEM_0_WUSER_WIDTH=1,C_M_AXI_GMEM_0_RUSER_WIDTH=1,C_M_AXI_GMEM_0_BUSER_WIDTH=1,C_M_AXI_GMEM_0_USER_VALUE=0x00000000,C_M_AXI_GMEM_0_PROT_VALUE=000,C\
_M_AXI_GMEM_0_CACHE_VALUE=0011,C_M_AXI_GMEM_1_ID_WIDTH=1,C_M_AXI_GMEM_1_ADDR_WIDTH=64,C_M_AXI_GMEM_1_DATA_WIDTH=32,C_M_AXI_GMEM_1_AWUSER_WIDTH=1,C_M_AXI_GMEM_1_ARUSER_WIDTH=1,C_M_AXI_GMEM_1_WUSER_WIDTH=1,C_M_AXI_GMEM_1_RUSER_WIDTH=1,C_M_AXI_GMEM_1_BUSER_WIDTH=1,C_M_AXI_GMEM_1_USER_VALUE=0x00000000,C_M_AXI_GMEM_1_PROT_VALUE=000,C_M_AXI_GMEM_1_CACHE_VALUE=0011}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_spmv_kernel_0_0 (
  ap_clk,
  ap_rst_n,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  m_axi_gmem_0_AWADDR,
  m_axi_gmem_0_AWLEN,
  m_axi_gmem_0_AWSIZE,
  m_axi_gmem_0_AWBURST,
  m_axi_gmem_0_AWLOCK,
  m_axi_gmem_0_AWREGION,
  m_axi_gmem_0_AWCACHE,
  m_axi_gmem_0_AWPROT,
  m_axi_gmem_0_AWQOS,
  m_axi_gmem_0_AWVALID,
  m_axi_gmem_0_AWREADY,
  m_axi_gmem_0_WDATA,
  m_axi_gmem_0_WSTRB,
  m_axi_gmem_0_WLAST,
  m_axi_gmem_0_WVALID,
  m_axi_gmem_0_WREADY,
  m_axi_gmem_0_BRESP,
  m_axi_gmem_0_BVALID,
  m_axi_gmem_0_BREADY,
  m_axi_gmem_0_ARADDR,
  m_axi_gmem_0_ARLEN,
  m_axi_gmem_0_ARSIZE,
  m_axi_gmem_0_ARBURST,
  m_axi_gmem_0_ARLOCK,
  m_axi_gmem_0_ARREGION,
  m_axi_gmem_0_ARCACHE,
  m_axi_gmem_0_ARPROT,
  m_axi_gmem_0_ARQOS,
  m_axi_gmem_0_ARVALID,
  m_axi_gmem_0_ARREADY,
  m_axi_gmem_0_RDATA,
  m_axi_gmem_0_RRESP,
  m_axi_gmem_0_RLAST,
  m_axi_gmem_0_RVALID,
  m_axi_gmem_0_RREADY,
  m_axi_gmem_1_AWADDR,
  m_axi_gmem_1_AWLEN,
  m_axi_gmem_1_AWSIZE,
  m_axi_gmem_1_AWBURST,
  m_axi_gmem_1_AWLOCK,
  m_axi_gmem_1_AWREGION,
  m_axi_gmem_1_AWCACHE,
  m_axi_gmem_1_AWPROT,
  m_axi_gmem_1_AWQOS,
  m_axi_gmem_1_AWVALID,
  m_axi_gmem_1_AWREADY,
  m_axi_gmem_1_WDATA,
  m_axi_gmem_1_WSTRB,
  m_axi_gmem_1_WLAST,
  m_axi_gmem_1_WVALID,
  m_axi_gmem_1_WREADY,
  m_axi_gmem_1_BRESP,
  m_axi_gmem_1_BVALID,
  m_axi_gmem_1_BREADY,
  m_axi_gmem_1_ARADDR,
  m_axi_gmem_1_ARLEN,
  m_axi_gmem_1_ARSIZE,
  m_axi_gmem_1_ARBURST,
  m_axi_gmem_1_ARLOCK,
  m_axi_gmem_1_ARREGION,
  m_axi_gmem_1_ARCACHE,
  m_axi_gmem_1_ARPROT,
  m_axi_gmem_1_ARQOS,
  m_axi_gmem_1_ARVALID,
  m_axi_gmem_1_ARREADY,
  m_axi_gmem_1_RDATA,
  m_axi_gmem_1_RRESP,
  m_axi_gmem_1_RLAST,
  m_axi_gmem_1_RVALID,
  m_axi_gmem_1_RREADY,
  values,
  col_indices,
  row_indices,
  x,
  y,
  n,
  m,
  nnz
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF m_axi_gmem_0:m_axi_gmem_1, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWADDR" *)
output wire [63 : 0] m_axi_gmem_0_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWLEN" *)
output wire [7 : 0] m_axi_gmem_0_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWSIZE" *)
output wire [2 : 0] m_axi_gmem_0_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWBURST" *)
output wire [1 : 0] m_axi_gmem_0_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWLOCK" *)
output wire [1 : 0] m_axi_gmem_0_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWREGION" *)
output wire [3 : 0] m_axi_gmem_0_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWCACHE" *)
output wire [3 : 0] m_axi_gmem_0_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWPROT" *)
output wire [2 : 0] m_axi_gmem_0_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWQOS" *)
output wire [3 : 0] m_axi_gmem_0_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWVALID" *)
output wire m_axi_gmem_0_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWREADY" *)
input wire m_axi_gmem_0_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 WDATA" *)
output wire [31 : 0] m_axi_gmem_0_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 WSTRB" *)
output wire [3 : 0] m_axi_gmem_0_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 WLAST" *)
output wire m_axi_gmem_0_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 WVALID" *)
output wire m_axi_gmem_0_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 WREADY" *)
input wire m_axi_gmem_0_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 BRESP" *)
input wire [1 : 0] m_axi_gmem_0_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 BVALID" *)
input wire m_axi_gmem_0_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 BREADY" *)
output wire m_axi_gmem_0_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARADDR" *)
output wire [63 : 0] m_axi_gmem_0_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARLEN" *)
output wire [7 : 0] m_axi_gmem_0_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARSIZE" *)
output wire [2 : 0] m_axi_gmem_0_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARBURST" *)
output wire [1 : 0] m_axi_gmem_0_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARLOCK" *)
output wire [1 : 0] m_axi_gmem_0_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARREGION" *)
output wire [3 : 0] m_axi_gmem_0_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARCACHE" *)
output wire [3 : 0] m_axi_gmem_0_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARPROT" *)
output wire [2 : 0] m_axi_gmem_0_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARQOS" *)
output wire [3 : 0] m_axi_gmem_0_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARVALID" *)
output wire m_axi_gmem_0_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARREADY" *)
input wire m_axi_gmem_0_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 RDATA" *)
input wire [31 : 0] m_axi_gmem_0_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 RRESP" *)
input wire [1 : 0] m_axi_gmem_0_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 RLAST" *)
input wire m_axi_gmem_0_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 RVALID" *)
input wire m_axi_gmem_0_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_0, ADDR_WIDTH 64, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAI\
N design_1_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 RREADY" *)
output wire m_axi_gmem_0_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWADDR" *)
output wire [63 : 0] m_axi_gmem_1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWLEN" *)
output wire [7 : 0] m_axi_gmem_1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWSIZE" *)
output wire [2 : 0] m_axi_gmem_1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWBURST" *)
output wire [1 : 0] m_axi_gmem_1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWLOCK" *)
output wire [1 : 0] m_axi_gmem_1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWREGION" *)
output wire [3 : 0] m_axi_gmem_1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWCACHE" *)
output wire [3 : 0] m_axi_gmem_1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWPROT" *)
output wire [2 : 0] m_axi_gmem_1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWQOS" *)
output wire [3 : 0] m_axi_gmem_1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWVALID" *)
output wire m_axi_gmem_1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWREADY" *)
input wire m_axi_gmem_1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 WDATA" *)
output wire [31 : 0] m_axi_gmem_1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 WSTRB" *)
output wire [3 : 0] m_axi_gmem_1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 WLAST" *)
output wire m_axi_gmem_1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 WVALID" *)
output wire m_axi_gmem_1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 WREADY" *)
input wire m_axi_gmem_1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 BRESP" *)
input wire [1 : 0] m_axi_gmem_1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 BVALID" *)
input wire m_axi_gmem_1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 BREADY" *)
output wire m_axi_gmem_1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARADDR" *)
output wire [63 : 0] m_axi_gmem_1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARLEN" *)
output wire [7 : 0] m_axi_gmem_1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARSIZE" *)
output wire [2 : 0] m_axi_gmem_1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARBURST" *)
output wire [1 : 0] m_axi_gmem_1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARLOCK" *)
output wire [1 : 0] m_axi_gmem_1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARREGION" *)
output wire [3 : 0] m_axi_gmem_1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARCACHE" *)
output wire [3 : 0] m_axi_gmem_1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARPROT" *)
output wire [2 : 0] m_axi_gmem_1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARQOS" *)
output wire [3 : 0] m_axi_gmem_1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARVALID" *)
output wire m_axi_gmem_1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARREADY" *)
input wire m_axi_gmem_1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 RDATA" *)
input wire [31 : 0] m_axi_gmem_1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 RRESP" *)
input wire [1 : 0] m_axi_gmem_1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 RLAST" *)
input wire m_axi_gmem_1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 RVALID" *)
input wire m_axi_gmem_1_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_1, ADDR_WIDTH 64, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAI\
N design_1_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 RREADY" *)
output wire m_axi_gmem_1_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME values, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 values DATA" *)
input wire [63 : 0] values;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME col_indices, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 col_indices DATA" *)
input wire [63 : 0] col_indices;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME row_indices, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 row_indices DATA" *)
input wire [63 : 0] row_indices;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME x, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 x DATA" *)
input wire [63 : 0] x;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME y, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 y DATA" *)
input wire [63 : 0] y;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME n, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 n DATA" *)
input wire [31 : 0] n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 m DATA" *)
input wire [31 : 0] m;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME nnz, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 nnz DATA" *)
input wire [31 : 0] nnz;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  spmv_kernel #(
    .C_M_AXI_GMEM_0_ID_WIDTH(1),
    .C_M_AXI_GMEM_0_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_0_DATA_WIDTH(32),
    .C_M_AXI_GMEM_0_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_0_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_0_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_0_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_0_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_0_USER_VALUE('H00000000),
    .C_M_AXI_GMEM_0_PROT_VALUE('B000),
    .C_M_AXI_GMEM_0_CACHE_VALUE('B0011),
    .C_M_AXI_GMEM_1_ID_WIDTH(1),
    .C_M_AXI_GMEM_1_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_1_DATA_WIDTH(32),
    .C_M_AXI_GMEM_1_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_1_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_1_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_1_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_1_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_1_USER_VALUE('H00000000),
    .C_M_AXI_GMEM_1_PROT_VALUE('B000),
    .C_M_AXI_GMEM_1_CACHE_VALUE('B0011)
  ) inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .m_axi_gmem_0_AWID(),
    .m_axi_gmem_0_AWADDR(m_axi_gmem_0_AWADDR),
    .m_axi_gmem_0_AWLEN(m_axi_gmem_0_AWLEN),
    .m_axi_gmem_0_AWSIZE(m_axi_gmem_0_AWSIZE),
    .m_axi_gmem_0_AWBURST(m_axi_gmem_0_AWBURST),
    .m_axi_gmem_0_AWLOCK(m_axi_gmem_0_AWLOCK),
    .m_axi_gmem_0_AWREGION(m_axi_gmem_0_AWREGION),
    .m_axi_gmem_0_AWCACHE(m_axi_gmem_0_AWCACHE),
    .m_axi_gmem_0_AWPROT(m_axi_gmem_0_AWPROT),
    .m_axi_gmem_0_AWQOS(m_axi_gmem_0_AWQOS),
    .m_axi_gmem_0_AWUSER(),
    .m_axi_gmem_0_AWVALID(m_axi_gmem_0_AWVALID),
    .m_axi_gmem_0_AWREADY(m_axi_gmem_0_AWREADY),
    .m_axi_gmem_0_WID(),
    .m_axi_gmem_0_WDATA(m_axi_gmem_0_WDATA),
    .m_axi_gmem_0_WSTRB(m_axi_gmem_0_WSTRB),
    .m_axi_gmem_0_WLAST(m_axi_gmem_0_WLAST),
    .m_axi_gmem_0_WUSER(),
    .m_axi_gmem_0_WVALID(m_axi_gmem_0_WVALID),
    .m_axi_gmem_0_WREADY(m_axi_gmem_0_WREADY),
    .m_axi_gmem_0_BID(1'B0),
    .m_axi_gmem_0_BRESP(m_axi_gmem_0_BRESP),
    .m_axi_gmem_0_BUSER(1'B0),
    .m_axi_gmem_0_BVALID(m_axi_gmem_0_BVALID),
    .m_axi_gmem_0_BREADY(m_axi_gmem_0_BREADY),
    .m_axi_gmem_0_ARID(),
    .m_axi_gmem_0_ARADDR(m_axi_gmem_0_ARADDR),
    .m_axi_gmem_0_ARLEN(m_axi_gmem_0_ARLEN),
    .m_axi_gmem_0_ARSIZE(m_axi_gmem_0_ARSIZE),
    .m_axi_gmem_0_ARBURST(m_axi_gmem_0_ARBURST),
    .m_axi_gmem_0_ARLOCK(m_axi_gmem_0_ARLOCK),
    .m_axi_gmem_0_ARREGION(m_axi_gmem_0_ARREGION),
    .m_axi_gmem_0_ARCACHE(m_axi_gmem_0_ARCACHE),
    .m_axi_gmem_0_ARPROT(m_axi_gmem_0_ARPROT),
    .m_axi_gmem_0_ARQOS(m_axi_gmem_0_ARQOS),
    .m_axi_gmem_0_ARUSER(),
    .m_axi_gmem_0_ARVALID(m_axi_gmem_0_ARVALID),
    .m_axi_gmem_0_ARREADY(m_axi_gmem_0_ARREADY),
    .m_axi_gmem_0_RID(1'B0),
    .m_axi_gmem_0_RDATA(m_axi_gmem_0_RDATA),
    .m_axi_gmem_0_RRESP(m_axi_gmem_0_RRESP),
    .m_axi_gmem_0_RLAST(m_axi_gmem_0_RLAST),
    .m_axi_gmem_0_RUSER(1'B0),
    .m_axi_gmem_0_RVALID(m_axi_gmem_0_RVALID),
    .m_axi_gmem_0_RREADY(m_axi_gmem_0_RREADY),
    .m_axi_gmem_1_AWID(),
    .m_axi_gmem_1_AWADDR(m_axi_gmem_1_AWADDR),
    .m_axi_gmem_1_AWLEN(m_axi_gmem_1_AWLEN),
    .m_axi_gmem_1_AWSIZE(m_axi_gmem_1_AWSIZE),
    .m_axi_gmem_1_AWBURST(m_axi_gmem_1_AWBURST),
    .m_axi_gmem_1_AWLOCK(m_axi_gmem_1_AWLOCK),
    .m_axi_gmem_1_AWREGION(m_axi_gmem_1_AWREGION),
    .m_axi_gmem_1_AWCACHE(m_axi_gmem_1_AWCACHE),
    .m_axi_gmem_1_AWPROT(m_axi_gmem_1_AWPROT),
    .m_axi_gmem_1_AWQOS(m_axi_gmem_1_AWQOS),
    .m_axi_gmem_1_AWUSER(),
    .m_axi_gmem_1_AWVALID(m_axi_gmem_1_AWVALID),
    .m_axi_gmem_1_AWREADY(m_axi_gmem_1_AWREADY),
    .m_axi_gmem_1_WID(),
    .m_axi_gmem_1_WDATA(m_axi_gmem_1_WDATA),
    .m_axi_gmem_1_WSTRB(m_axi_gmem_1_WSTRB),
    .m_axi_gmem_1_WLAST(m_axi_gmem_1_WLAST),
    .m_axi_gmem_1_WUSER(),
    .m_axi_gmem_1_WVALID(m_axi_gmem_1_WVALID),
    .m_axi_gmem_1_WREADY(m_axi_gmem_1_WREADY),
    .m_axi_gmem_1_BID(1'B0),
    .m_axi_gmem_1_BRESP(m_axi_gmem_1_BRESP),
    .m_axi_gmem_1_BUSER(1'B0),
    .m_axi_gmem_1_BVALID(m_axi_gmem_1_BVALID),
    .m_axi_gmem_1_BREADY(m_axi_gmem_1_BREADY),
    .m_axi_gmem_1_ARID(),
    .m_axi_gmem_1_ARADDR(m_axi_gmem_1_ARADDR),
    .m_axi_gmem_1_ARLEN(m_axi_gmem_1_ARLEN),
    .m_axi_gmem_1_ARSIZE(m_axi_gmem_1_ARSIZE),
    .m_axi_gmem_1_ARBURST(m_axi_gmem_1_ARBURST),
    .m_axi_gmem_1_ARLOCK(m_axi_gmem_1_ARLOCK),
    .m_axi_gmem_1_ARREGION(m_axi_gmem_1_ARREGION),
    .m_axi_gmem_1_ARCACHE(m_axi_gmem_1_ARCACHE),
    .m_axi_gmem_1_ARPROT(m_axi_gmem_1_ARPROT),
    .m_axi_gmem_1_ARQOS(m_axi_gmem_1_ARQOS),
    .m_axi_gmem_1_ARUSER(),
    .m_axi_gmem_1_ARVALID(m_axi_gmem_1_ARVALID),
    .m_axi_gmem_1_ARREADY(m_axi_gmem_1_ARREADY),
    .m_axi_gmem_1_RID(1'B0),
    .m_axi_gmem_1_RDATA(m_axi_gmem_1_RDATA),
    .m_axi_gmem_1_RRESP(m_axi_gmem_1_RRESP),
    .m_axi_gmem_1_RLAST(m_axi_gmem_1_RLAST),
    .m_axi_gmem_1_RUSER(1'B0),
    .m_axi_gmem_1_RVALID(m_axi_gmem_1_RVALID),
    .m_axi_gmem_1_RREADY(m_axi_gmem_1_RREADY),
    .values(values),
    .col_indices(col_indices),
    .row_indices(row_indices),
    .x(x),
    .y(y),
    .n(n),
    .m(m),
    .nnz(nnz)
  );
endmodule
