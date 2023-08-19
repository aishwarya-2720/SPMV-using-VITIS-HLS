//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Mon Aug 14 15:06:48 2023
//Host        : tinas-desktop running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (ap_clk_0,
    ap_ctrl_0_done,
    ap_ctrl_0_idle,
    ap_ctrl_0_ready,
    ap_ctrl_0_start,
    ap_rst_n_0,
    col_indices_0,
    m_0,
    m_axi_gmem_0_0_araddr,
    m_axi_gmem_0_0_arburst,
    m_axi_gmem_0_0_arcache,
    m_axi_gmem_0_0_arlen,
    m_axi_gmem_0_0_arlock,
    m_axi_gmem_0_0_arprot,
    m_axi_gmem_0_0_arqos,
    m_axi_gmem_0_0_arready,
    m_axi_gmem_0_0_arregion,
    m_axi_gmem_0_0_arsize,
    m_axi_gmem_0_0_arvalid,
    m_axi_gmem_0_0_awaddr,
    m_axi_gmem_0_0_awburst,
    m_axi_gmem_0_0_awcache,
    m_axi_gmem_0_0_awlen,
    m_axi_gmem_0_0_awlock,
    m_axi_gmem_0_0_awprot,
    m_axi_gmem_0_0_awqos,
    m_axi_gmem_0_0_awready,
    m_axi_gmem_0_0_awregion,
    m_axi_gmem_0_0_awsize,
    m_axi_gmem_0_0_awvalid,
    m_axi_gmem_0_0_bready,
    m_axi_gmem_0_0_bresp,
    m_axi_gmem_0_0_bvalid,
    m_axi_gmem_0_0_rdata,
    m_axi_gmem_0_0_rlast,
    m_axi_gmem_0_0_rready,
    m_axi_gmem_0_0_rresp,
    m_axi_gmem_0_0_rvalid,
    m_axi_gmem_0_0_wdata,
    m_axi_gmem_0_0_wlast,
    m_axi_gmem_0_0_wready,
    m_axi_gmem_0_0_wstrb,
    m_axi_gmem_0_0_wvalid,
    m_axi_gmem_1_0_araddr,
    m_axi_gmem_1_0_arburst,
    m_axi_gmem_1_0_arcache,
    m_axi_gmem_1_0_arlen,
    m_axi_gmem_1_0_arlock,
    m_axi_gmem_1_0_arprot,
    m_axi_gmem_1_0_arqos,
    m_axi_gmem_1_0_arready,
    m_axi_gmem_1_0_arregion,
    m_axi_gmem_1_0_arsize,
    m_axi_gmem_1_0_arvalid,
    m_axi_gmem_1_0_awaddr,
    m_axi_gmem_1_0_awburst,
    m_axi_gmem_1_0_awcache,
    m_axi_gmem_1_0_awlen,
    m_axi_gmem_1_0_awlock,
    m_axi_gmem_1_0_awprot,
    m_axi_gmem_1_0_awqos,
    m_axi_gmem_1_0_awready,
    m_axi_gmem_1_0_awregion,
    m_axi_gmem_1_0_awsize,
    m_axi_gmem_1_0_awvalid,
    m_axi_gmem_1_0_bready,
    m_axi_gmem_1_0_bresp,
    m_axi_gmem_1_0_bvalid,
    m_axi_gmem_1_0_rdata,
    m_axi_gmem_1_0_rlast,
    m_axi_gmem_1_0_rready,
    m_axi_gmem_1_0_rresp,
    m_axi_gmem_1_0_rvalid,
    m_axi_gmem_1_0_wdata,
    m_axi_gmem_1_0_wlast,
    m_axi_gmem_1_0_wready,
    m_axi_gmem_1_0_wstrb,
    m_axi_gmem_1_0_wvalid,
    n_0,
    nnz_0,
    row_indices_0,
    values_0,
    x_0,
    y_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK_0, ASSOCIATED_BUSIF m_axi_gmem_0_0:m_axi_gmem_1_0, ASSOCIATED_RESET ap_rst_n_0, CLK_DOMAIN design_1_ap_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 done" *) output ap_ctrl_0_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 idle" *) output ap_ctrl_0_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 ready" *) output ap_ctrl_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 start" *) input ap_ctrl_0_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.COL_INDICES_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.COL_INDICES_0, LAYERED_METADATA undef" *) input [63:0]col_indices_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_0, LAYERED_METADATA undef" *) input [31:0]m_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_0_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_gmem_0_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 ARBURST" *) output [1:0]m_axi_gmem_0_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 ARCACHE" *) output [3:0]m_axi_gmem_0_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 ARLEN" *) output [7:0]m_axi_gmem_0_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 ARLOCK" *) output [1:0]m_axi_gmem_0_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 ARPROT" *) output [2:0]m_axi_gmem_0_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 ARQOS" *) output [3:0]m_axi_gmem_0_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 ARREADY" *) input m_axi_gmem_0_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 ARREGION" *) output [3:0]m_axi_gmem_0_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 ARSIZE" *) output [2:0]m_axi_gmem_0_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 ARVALID" *) output m_axi_gmem_0_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 AWADDR" *) output [63:0]m_axi_gmem_0_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 AWBURST" *) output [1:0]m_axi_gmem_0_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 AWCACHE" *) output [3:0]m_axi_gmem_0_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 AWLEN" *) output [7:0]m_axi_gmem_0_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 AWLOCK" *) output [1:0]m_axi_gmem_0_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 AWPROT" *) output [2:0]m_axi_gmem_0_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 AWQOS" *) output [3:0]m_axi_gmem_0_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 AWREADY" *) input m_axi_gmem_0_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 AWREGION" *) output [3:0]m_axi_gmem_0_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 AWSIZE" *) output [2:0]m_axi_gmem_0_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 AWVALID" *) output m_axi_gmem_0_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 BREADY" *) output m_axi_gmem_0_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 BRESP" *) input [1:0]m_axi_gmem_0_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 BVALID" *) input m_axi_gmem_0_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 RDATA" *) input [31:0]m_axi_gmem_0_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 RLAST" *) input m_axi_gmem_0_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 RREADY" *) output m_axi_gmem_0_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 RRESP" *) input [1:0]m_axi_gmem_0_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 RVALID" *) input m_axi_gmem_0_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 WDATA" *) output [31:0]m_axi_gmem_0_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 WLAST" *) output m_axi_gmem_0_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 WREADY" *) input m_axi_gmem_0_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 WSTRB" *) output [3:0]m_axi_gmem_0_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_0_0 WVALID" *) output m_axi_gmem_0_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_1_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_gmem_1_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 ARBURST" *) output [1:0]m_axi_gmem_1_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 ARCACHE" *) output [3:0]m_axi_gmem_1_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 ARLEN" *) output [7:0]m_axi_gmem_1_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 ARLOCK" *) output [1:0]m_axi_gmem_1_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 ARPROT" *) output [2:0]m_axi_gmem_1_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 ARQOS" *) output [3:0]m_axi_gmem_1_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 ARREADY" *) input m_axi_gmem_1_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 ARREGION" *) output [3:0]m_axi_gmem_1_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 ARSIZE" *) output [2:0]m_axi_gmem_1_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 ARVALID" *) output m_axi_gmem_1_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 AWADDR" *) output [63:0]m_axi_gmem_1_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 AWBURST" *) output [1:0]m_axi_gmem_1_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 AWCACHE" *) output [3:0]m_axi_gmem_1_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 AWLEN" *) output [7:0]m_axi_gmem_1_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 AWLOCK" *) output [1:0]m_axi_gmem_1_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 AWPROT" *) output [2:0]m_axi_gmem_1_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 AWQOS" *) output [3:0]m_axi_gmem_1_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 AWREADY" *) input m_axi_gmem_1_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 AWREGION" *) output [3:0]m_axi_gmem_1_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 AWSIZE" *) output [2:0]m_axi_gmem_1_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 AWVALID" *) output m_axi_gmem_1_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 BREADY" *) output m_axi_gmem_1_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 BRESP" *) input [1:0]m_axi_gmem_1_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 BVALID" *) input m_axi_gmem_1_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 RDATA" *) input [31:0]m_axi_gmem_1_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 RLAST" *) input m_axi_gmem_1_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 RREADY" *) output m_axi_gmem_1_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 RRESP" *) input [1:0]m_axi_gmem_1_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 RVALID" *) input m_axi_gmem_1_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 WDATA" *) output [31:0]m_axi_gmem_1_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 WLAST" *) output m_axi_gmem_1_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 WREADY" *) input m_axi_gmem_1_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 WSTRB" *) output [3:0]m_axi_gmem_1_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_1_0 WVALID" *) output m_axi_gmem_1_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.N_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.N_0, LAYERED_METADATA undef" *) input [31:0]n_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.NNZ_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.NNZ_0, LAYERED_METADATA undef" *) input [31:0]nnz_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ROW_INDICES_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ROW_INDICES_0, LAYERED_METADATA undef" *) input [63:0]row_indices_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.VALUES_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.VALUES_0, LAYERED_METADATA undef" *) input [63:0]values_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.X_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.X_0, LAYERED_METADATA undef" *) input [63:0]x_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.Y_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.Y_0, LAYERED_METADATA undef" *) input [63:0]y_0;

  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_n_0_1;
  wire [63:0]col_indices_0_1;
  wire [31:0]m_0_1;
  wire [31:0]n_0_1;
  wire [31:0]nnz_0_1;
  wire [63:0]row_indices_0_1;
  wire [63:0]spmv_kernel_0_m_axi_gmem_0_ARADDR;
  wire [1:0]spmv_kernel_0_m_axi_gmem_0_ARBURST;
  wire [3:0]spmv_kernel_0_m_axi_gmem_0_ARCACHE;
  wire [7:0]spmv_kernel_0_m_axi_gmem_0_ARLEN;
  wire [1:0]spmv_kernel_0_m_axi_gmem_0_ARLOCK;
  wire [2:0]spmv_kernel_0_m_axi_gmem_0_ARPROT;
  wire [3:0]spmv_kernel_0_m_axi_gmem_0_ARQOS;
  wire spmv_kernel_0_m_axi_gmem_0_ARREADY;
  wire [3:0]spmv_kernel_0_m_axi_gmem_0_ARREGION;
  wire [2:0]spmv_kernel_0_m_axi_gmem_0_ARSIZE;
  wire spmv_kernel_0_m_axi_gmem_0_ARVALID;
  wire [63:0]spmv_kernel_0_m_axi_gmem_0_AWADDR;
  wire [1:0]spmv_kernel_0_m_axi_gmem_0_AWBURST;
  wire [3:0]spmv_kernel_0_m_axi_gmem_0_AWCACHE;
  wire [7:0]spmv_kernel_0_m_axi_gmem_0_AWLEN;
  wire [1:0]spmv_kernel_0_m_axi_gmem_0_AWLOCK;
  wire [2:0]spmv_kernel_0_m_axi_gmem_0_AWPROT;
  wire [3:0]spmv_kernel_0_m_axi_gmem_0_AWQOS;
  wire spmv_kernel_0_m_axi_gmem_0_AWREADY;
  wire [3:0]spmv_kernel_0_m_axi_gmem_0_AWREGION;
  wire [2:0]spmv_kernel_0_m_axi_gmem_0_AWSIZE;
  wire spmv_kernel_0_m_axi_gmem_0_AWVALID;
  wire spmv_kernel_0_m_axi_gmem_0_BREADY;
  wire [1:0]spmv_kernel_0_m_axi_gmem_0_BRESP;
  wire spmv_kernel_0_m_axi_gmem_0_BVALID;
  wire [31:0]spmv_kernel_0_m_axi_gmem_0_RDATA;
  wire spmv_kernel_0_m_axi_gmem_0_RLAST;
  wire spmv_kernel_0_m_axi_gmem_0_RREADY;
  wire [1:0]spmv_kernel_0_m_axi_gmem_0_RRESP;
  wire spmv_kernel_0_m_axi_gmem_0_RVALID;
  wire [31:0]spmv_kernel_0_m_axi_gmem_0_WDATA;
  wire spmv_kernel_0_m_axi_gmem_0_WLAST;
  wire spmv_kernel_0_m_axi_gmem_0_WREADY;
  wire [3:0]spmv_kernel_0_m_axi_gmem_0_WSTRB;
  wire spmv_kernel_0_m_axi_gmem_0_WVALID;
  wire [63:0]spmv_kernel_0_m_axi_gmem_1_ARADDR;
  wire [1:0]spmv_kernel_0_m_axi_gmem_1_ARBURST;
  wire [3:0]spmv_kernel_0_m_axi_gmem_1_ARCACHE;
  wire [7:0]spmv_kernel_0_m_axi_gmem_1_ARLEN;
  wire [1:0]spmv_kernel_0_m_axi_gmem_1_ARLOCK;
  wire [2:0]spmv_kernel_0_m_axi_gmem_1_ARPROT;
  wire [3:0]spmv_kernel_0_m_axi_gmem_1_ARQOS;
  wire spmv_kernel_0_m_axi_gmem_1_ARREADY;
  wire [3:0]spmv_kernel_0_m_axi_gmem_1_ARREGION;
  wire [2:0]spmv_kernel_0_m_axi_gmem_1_ARSIZE;
  wire spmv_kernel_0_m_axi_gmem_1_ARVALID;
  wire [63:0]spmv_kernel_0_m_axi_gmem_1_AWADDR;
  wire [1:0]spmv_kernel_0_m_axi_gmem_1_AWBURST;
  wire [3:0]spmv_kernel_0_m_axi_gmem_1_AWCACHE;
  wire [7:0]spmv_kernel_0_m_axi_gmem_1_AWLEN;
  wire [1:0]spmv_kernel_0_m_axi_gmem_1_AWLOCK;
  wire [2:0]spmv_kernel_0_m_axi_gmem_1_AWPROT;
  wire [3:0]spmv_kernel_0_m_axi_gmem_1_AWQOS;
  wire spmv_kernel_0_m_axi_gmem_1_AWREADY;
  wire [3:0]spmv_kernel_0_m_axi_gmem_1_AWREGION;
  wire [2:0]spmv_kernel_0_m_axi_gmem_1_AWSIZE;
  wire spmv_kernel_0_m_axi_gmem_1_AWVALID;
  wire spmv_kernel_0_m_axi_gmem_1_BREADY;
  wire [1:0]spmv_kernel_0_m_axi_gmem_1_BRESP;
  wire spmv_kernel_0_m_axi_gmem_1_BVALID;
  wire [31:0]spmv_kernel_0_m_axi_gmem_1_RDATA;
  wire spmv_kernel_0_m_axi_gmem_1_RLAST;
  wire spmv_kernel_0_m_axi_gmem_1_RREADY;
  wire [1:0]spmv_kernel_0_m_axi_gmem_1_RRESP;
  wire spmv_kernel_0_m_axi_gmem_1_RVALID;
  wire [31:0]spmv_kernel_0_m_axi_gmem_1_WDATA;
  wire spmv_kernel_0_m_axi_gmem_1_WLAST;
  wire spmv_kernel_0_m_axi_gmem_1_WREADY;
  wire [3:0]spmv_kernel_0_m_axi_gmem_1_WSTRB;
  wire spmv_kernel_0_m_axi_gmem_1_WVALID;
  wire [63:0]values_0_1;
  wire [63:0]x_0_1;
  wire [63:0]y_0_1;

  assign ap_clk_0_1 = ap_clk_0;
  assign ap_ctrl_0_1_start = ap_ctrl_0_start;
  assign ap_ctrl_0_done = ap_ctrl_0_1_done;
  assign ap_ctrl_0_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_0_ready = ap_ctrl_0_1_ready;
  assign ap_rst_n_0_1 = ap_rst_n_0;
  assign col_indices_0_1 = col_indices_0[63:0];
  assign m_0_1 = m_0[31:0];
  assign m_axi_gmem_0_0_araddr[63:0] = spmv_kernel_0_m_axi_gmem_0_ARADDR;
  assign m_axi_gmem_0_0_arburst[1:0] = spmv_kernel_0_m_axi_gmem_0_ARBURST;
  assign m_axi_gmem_0_0_arcache[3:0] = spmv_kernel_0_m_axi_gmem_0_ARCACHE;
  assign m_axi_gmem_0_0_arlen[7:0] = spmv_kernel_0_m_axi_gmem_0_ARLEN;
  assign m_axi_gmem_0_0_arlock[1:0] = spmv_kernel_0_m_axi_gmem_0_ARLOCK;
  assign m_axi_gmem_0_0_arprot[2:0] = spmv_kernel_0_m_axi_gmem_0_ARPROT;
  assign m_axi_gmem_0_0_arqos[3:0] = spmv_kernel_0_m_axi_gmem_0_ARQOS;
  assign m_axi_gmem_0_0_arregion[3:0] = spmv_kernel_0_m_axi_gmem_0_ARREGION;
  assign m_axi_gmem_0_0_arsize[2:0] = spmv_kernel_0_m_axi_gmem_0_ARSIZE;
  assign m_axi_gmem_0_0_arvalid = spmv_kernel_0_m_axi_gmem_0_ARVALID;
  assign m_axi_gmem_0_0_awaddr[63:0] = spmv_kernel_0_m_axi_gmem_0_AWADDR;
  assign m_axi_gmem_0_0_awburst[1:0] = spmv_kernel_0_m_axi_gmem_0_AWBURST;
  assign m_axi_gmem_0_0_awcache[3:0] = spmv_kernel_0_m_axi_gmem_0_AWCACHE;
  assign m_axi_gmem_0_0_awlen[7:0] = spmv_kernel_0_m_axi_gmem_0_AWLEN;
  assign m_axi_gmem_0_0_awlock[1:0] = spmv_kernel_0_m_axi_gmem_0_AWLOCK;
  assign m_axi_gmem_0_0_awprot[2:0] = spmv_kernel_0_m_axi_gmem_0_AWPROT;
  assign m_axi_gmem_0_0_awqos[3:0] = spmv_kernel_0_m_axi_gmem_0_AWQOS;
  assign m_axi_gmem_0_0_awregion[3:0] = spmv_kernel_0_m_axi_gmem_0_AWREGION;
  assign m_axi_gmem_0_0_awsize[2:0] = spmv_kernel_0_m_axi_gmem_0_AWSIZE;
  assign m_axi_gmem_0_0_awvalid = spmv_kernel_0_m_axi_gmem_0_AWVALID;
  assign m_axi_gmem_0_0_bready = spmv_kernel_0_m_axi_gmem_0_BREADY;
  assign m_axi_gmem_0_0_rready = spmv_kernel_0_m_axi_gmem_0_RREADY;
  assign m_axi_gmem_0_0_wdata[31:0] = spmv_kernel_0_m_axi_gmem_0_WDATA;
  assign m_axi_gmem_0_0_wlast = spmv_kernel_0_m_axi_gmem_0_WLAST;
  assign m_axi_gmem_0_0_wstrb[3:0] = spmv_kernel_0_m_axi_gmem_0_WSTRB;
  assign m_axi_gmem_0_0_wvalid = spmv_kernel_0_m_axi_gmem_0_WVALID;
  assign m_axi_gmem_1_0_araddr[63:0] = spmv_kernel_0_m_axi_gmem_1_ARADDR;
  assign m_axi_gmem_1_0_arburst[1:0] = spmv_kernel_0_m_axi_gmem_1_ARBURST;
  assign m_axi_gmem_1_0_arcache[3:0] = spmv_kernel_0_m_axi_gmem_1_ARCACHE;
  assign m_axi_gmem_1_0_arlen[7:0] = spmv_kernel_0_m_axi_gmem_1_ARLEN;
  assign m_axi_gmem_1_0_arlock[1:0] = spmv_kernel_0_m_axi_gmem_1_ARLOCK;
  assign m_axi_gmem_1_0_arprot[2:0] = spmv_kernel_0_m_axi_gmem_1_ARPROT;
  assign m_axi_gmem_1_0_arqos[3:0] = spmv_kernel_0_m_axi_gmem_1_ARQOS;
  assign m_axi_gmem_1_0_arregion[3:0] = spmv_kernel_0_m_axi_gmem_1_ARREGION;
  assign m_axi_gmem_1_0_arsize[2:0] = spmv_kernel_0_m_axi_gmem_1_ARSIZE;
  assign m_axi_gmem_1_0_arvalid = spmv_kernel_0_m_axi_gmem_1_ARVALID;
  assign m_axi_gmem_1_0_awaddr[63:0] = spmv_kernel_0_m_axi_gmem_1_AWADDR;
  assign m_axi_gmem_1_0_awburst[1:0] = spmv_kernel_0_m_axi_gmem_1_AWBURST;
  assign m_axi_gmem_1_0_awcache[3:0] = spmv_kernel_0_m_axi_gmem_1_AWCACHE;
  assign m_axi_gmem_1_0_awlen[7:0] = spmv_kernel_0_m_axi_gmem_1_AWLEN;
  assign m_axi_gmem_1_0_awlock[1:0] = spmv_kernel_0_m_axi_gmem_1_AWLOCK;
  assign m_axi_gmem_1_0_awprot[2:0] = spmv_kernel_0_m_axi_gmem_1_AWPROT;
  assign m_axi_gmem_1_0_awqos[3:0] = spmv_kernel_0_m_axi_gmem_1_AWQOS;
  assign m_axi_gmem_1_0_awregion[3:0] = spmv_kernel_0_m_axi_gmem_1_AWREGION;
  assign m_axi_gmem_1_0_awsize[2:0] = spmv_kernel_0_m_axi_gmem_1_AWSIZE;
  assign m_axi_gmem_1_0_awvalid = spmv_kernel_0_m_axi_gmem_1_AWVALID;
  assign m_axi_gmem_1_0_bready = spmv_kernel_0_m_axi_gmem_1_BREADY;
  assign m_axi_gmem_1_0_rready = spmv_kernel_0_m_axi_gmem_1_RREADY;
  assign m_axi_gmem_1_0_wdata[31:0] = spmv_kernel_0_m_axi_gmem_1_WDATA;
  assign m_axi_gmem_1_0_wlast = spmv_kernel_0_m_axi_gmem_1_WLAST;
  assign m_axi_gmem_1_0_wstrb[3:0] = spmv_kernel_0_m_axi_gmem_1_WSTRB;
  assign m_axi_gmem_1_0_wvalid = spmv_kernel_0_m_axi_gmem_1_WVALID;
  assign n_0_1 = n_0[31:0];
  assign nnz_0_1 = nnz_0[31:0];
  assign row_indices_0_1 = row_indices_0[63:0];
  assign spmv_kernel_0_m_axi_gmem_0_ARREADY = m_axi_gmem_0_0_arready;
  assign spmv_kernel_0_m_axi_gmem_0_AWREADY = m_axi_gmem_0_0_awready;
  assign spmv_kernel_0_m_axi_gmem_0_BRESP = m_axi_gmem_0_0_bresp[1:0];
  assign spmv_kernel_0_m_axi_gmem_0_BVALID = m_axi_gmem_0_0_bvalid;
  assign spmv_kernel_0_m_axi_gmem_0_RDATA = m_axi_gmem_0_0_rdata[31:0];
  assign spmv_kernel_0_m_axi_gmem_0_RLAST = m_axi_gmem_0_0_rlast;
  assign spmv_kernel_0_m_axi_gmem_0_RRESP = m_axi_gmem_0_0_rresp[1:0];
  assign spmv_kernel_0_m_axi_gmem_0_RVALID = m_axi_gmem_0_0_rvalid;
  assign spmv_kernel_0_m_axi_gmem_0_WREADY = m_axi_gmem_0_0_wready;
  assign spmv_kernel_0_m_axi_gmem_1_ARREADY = m_axi_gmem_1_0_arready;
  assign spmv_kernel_0_m_axi_gmem_1_AWREADY = m_axi_gmem_1_0_awready;
  assign spmv_kernel_0_m_axi_gmem_1_BRESP = m_axi_gmem_1_0_bresp[1:0];
  assign spmv_kernel_0_m_axi_gmem_1_BVALID = m_axi_gmem_1_0_bvalid;
  assign spmv_kernel_0_m_axi_gmem_1_RDATA = m_axi_gmem_1_0_rdata[31:0];
  assign spmv_kernel_0_m_axi_gmem_1_RLAST = m_axi_gmem_1_0_rlast;
  assign spmv_kernel_0_m_axi_gmem_1_RRESP = m_axi_gmem_1_0_rresp[1:0];
  assign spmv_kernel_0_m_axi_gmem_1_RVALID = m_axi_gmem_1_0_rvalid;
  assign spmv_kernel_0_m_axi_gmem_1_WREADY = m_axi_gmem_1_0_wready;
  assign values_0_1 = values_0[63:0];
  assign x_0_1 = x_0[63:0];
  assign y_0_1 = y_0[63:0];
  design_1_spmv_kernel_0_0 spmv_kernel_0
       (.ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst_n(ap_rst_n_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .col_indices(col_indices_0_1),
        .m(m_0_1),
        .m_axi_gmem_0_ARADDR(spmv_kernel_0_m_axi_gmem_0_ARADDR),
        .m_axi_gmem_0_ARBURST(spmv_kernel_0_m_axi_gmem_0_ARBURST),
        .m_axi_gmem_0_ARCACHE(spmv_kernel_0_m_axi_gmem_0_ARCACHE),
        .m_axi_gmem_0_ARLEN(spmv_kernel_0_m_axi_gmem_0_ARLEN),
        .m_axi_gmem_0_ARLOCK(spmv_kernel_0_m_axi_gmem_0_ARLOCK),
        .m_axi_gmem_0_ARPROT(spmv_kernel_0_m_axi_gmem_0_ARPROT),
        .m_axi_gmem_0_ARQOS(spmv_kernel_0_m_axi_gmem_0_ARQOS),
        .m_axi_gmem_0_ARREADY(spmv_kernel_0_m_axi_gmem_0_ARREADY),
        .m_axi_gmem_0_ARREGION(spmv_kernel_0_m_axi_gmem_0_ARREGION),
        .m_axi_gmem_0_ARSIZE(spmv_kernel_0_m_axi_gmem_0_ARSIZE),
        .m_axi_gmem_0_ARVALID(spmv_kernel_0_m_axi_gmem_0_ARVALID),
        .m_axi_gmem_0_AWADDR(spmv_kernel_0_m_axi_gmem_0_AWADDR),
        .m_axi_gmem_0_AWBURST(spmv_kernel_0_m_axi_gmem_0_AWBURST),
        .m_axi_gmem_0_AWCACHE(spmv_kernel_0_m_axi_gmem_0_AWCACHE),
        .m_axi_gmem_0_AWLEN(spmv_kernel_0_m_axi_gmem_0_AWLEN),
        .m_axi_gmem_0_AWLOCK(spmv_kernel_0_m_axi_gmem_0_AWLOCK),
        .m_axi_gmem_0_AWPROT(spmv_kernel_0_m_axi_gmem_0_AWPROT),
        .m_axi_gmem_0_AWQOS(spmv_kernel_0_m_axi_gmem_0_AWQOS),
        .m_axi_gmem_0_AWREADY(spmv_kernel_0_m_axi_gmem_0_AWREADY),
        .m_axi_gmem_0_AWREGION(spmv_kernel_0_m_axi_gmem_0_AWREGION),
        .m_axi_gmem_0_AWSIZE(spmv_kernel_0_m_axi_gmem_0_AWSIZE),
        .m_axi_gmem_0_AWVALID(spmv_kernel_0_m_axi_gmem_0_AWVALID),
        .m_axi_gmem_0_BREADY(spmv_kernel_0_m_axi_gmem_0_BREADY),
        .m_axi_gmem_0_BRESP(spmv_kernel_0_m_axi_gmem_0_BRESP),
        .m_axi_gmem_0_BVALID(spmv_kernel_0_m_axi_gmem_0_BVALID),
        .m_axi_gmem_0_RDATA(spmv_kernel_0_m_axi_gmem_0_RDATA),
        .m_axi_gmem_0_RLAST(spmv_kernel_0_m_axi_gmem_0_RLAST),
        .m_axi_gmem_0_RREADY(spmv_kernel_0_m_axi_gmem_0_RREADY),
        .m_axi_gmem_0_RRESP(spmv_kernel_0_m_axi_gmem_0_RRESP),
        .m_axi_gmem_0_RVALID(spmv_kernel_0_m_axi_gmem_0_RVALID),
        .m_axi_gmem_0_WDATA(spmv_kernel_0_m_axi_gmem_0_WDATA),
        .m_axi_gmem_0_WLAST(spmv_kernel_0_m_axi_gmem_0_WLAST),
        .m_axi_gmem_0_WREADY(spmv_kernel_0_m_axi_gmem_0_WREADY),
        .m_axi_gmem_0_WSTRB(spmv_kernel_0_m_axi_gmem_0_WSTRB),
        .m_axi_gmem_0_WVALID(spmv_kernel_0_m_axi_gmem_0_WVALID),
        .m_axi_gmem_1_ARADDR(spmv_kernel_0_m_axi_gmem_1_ARADDR),
        .m_axi_gmem_1_ARBURST(spmv_kernel_0_m_axi_gmem_1_ARBURST),
        .m_axi_gmem_1_ARCACHE(spmv_kernel_0_m_axi_gmem_1_ARCACHE),
        .m_axi_gmem_1_ARLEN(spmv_kernel_0_m_axi_gmem_1_ARLEN),
        .m_axi_gmem_1_ARLOCK(spmv_kernel_0_m_axi_gmem_1_ARLOCK),
        .m_axi_gmem_1_ARPROT(spmv_kernel_0_m_axi_gmem_1_ARPROT),
        .m_axi_gmem_1_ARQOS(spmv_kernel_0_m_axi_gmem_1_ARQOS),
        .m_axi_gmem_1_ARREADY(spmv_kernel_0_m_axi_gmem_1_ARREADY),
        .m_axi_gmem_1_ARREGION(spmv_kernel_0_m_axi_gmem_1_ARREGION),
        .m_axi_gmem_1_ARSIZE(spmv_kernel_0_m_axi_gmem_1_ARSIZE),
        .m_axi_gmem_1_ARVALID(spmv_kernel_0_m_axi_gmem_1_ARVALID),
        .m_axi_gmem_1_AWADDR(spmv_kernel_0_m_axi_gmem_1_AWADDR),
        .m_axi_gmem_1_AWBURST(spmv_kernel_0_m_axi_gmem_1_AWBURST),
        .m_axi_gmem_1_AWCACHE(spmv_kernel_0_m_axi_gmem_1_AWCACHE),
        .m_axi_gmem_1_AWLEN(spmv_kernel_0_m_axi_gmem_1_AWLEN),
        .m_axi_gmem_1_AWLOCK(spmv_kernel_0_m_axi_gmem_1_AWLOCK),
        .m_axi_gmem_1_AWPROT(spmv_kernel_0_m_axi_gmem_1_AWPROT),
        .m_axi_gmem_1_AWQOS(spmv_kernel_0_m_axi_gmem_1_AWQOS),
        .m_axi_gmem_1_AWREADY(spmv_kernel_0_m_axi_gmem_1_AWREADY),
        .m_axi_gmem_1_AWREGION(spmv_kernel_0_m_axi_gmem_1_AWREGION),
        .m_axi_gmem_1_AWSIZE(spmv_kernel_0_m_axi_gmem_1_AWSIZE),
        .m_axi_gmem_1_AWVALID(spmv_kernel_0_m_axi_gmem_1_AWVALID),
        .m_axi_gmem_1_BREADY(spmv_kernel_0_m_axi_gmem_1_BREADY),
        .m_axi_gmem_1_BRESP(spmv_kernel_0_m_axi_gmem_1_BRESP),
        .m_axi_gmem_1_BVALID(spmv_kernel_0_m_axi_gmem_1_BVALID),
        .m_axi_gmem_1_RDATA(spmv_kernel_0_m_axi_gmem_1_RDATA),
        .m_axi_gmem_1_RLAST(spmv_kernel_0_m_axi_gmem_1_RLAST),
        .m_axi_gmem_1_RREADY(spmv_kernel_0_m_axi_gmem_1_RREADY),
        .m_axi_gmem_1_RRESP(spmv_kernel_0_m_axi_gmem_1_RRESP),
        .m_axi_gmem_1_RVALID(spmv_kernel_0_m_axi_gmem_1_RVALID),
        .m_axi_gmem_1_WDATA(spmv_kernel_0_m_axi_gmem_1_WDATA),
        .m_axi_gmem_1_WLAST(spmv_kernel_0_m_axi_gmem_1_WLAST),
        .m_axi_gmem_1_WREADY(spmv_kernel_0_m_axi_gmem_1_WREADY),
        .m_axi_gmem_1_WSTRB(spmv_kernel_0_m_axi_gmem_1_WSTRB),
        .m_axi_gmem_1_WVALID(spmv_kernel_0_m_axi_gmem_1_WVALID),
        .n(n_0_1),
        .nnz(nnz_0_1),
        .row_indices(row_indices_0_1),
        .values(values_0_1),
        .x(x_0_1),
        .y(y_0_1));
endmodule
