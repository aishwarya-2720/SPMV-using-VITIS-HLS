//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Mon Aug 14 15:06:48 2023
//Host        : tinas-desktop running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input ap_clk_0;
  output ap_ctrl_0_done;
  output ap_ctrl_0_idle;
  output ap_ctrl_0_ready;
  input ap_ctrl_0_start;
  input ap_rst_n_0;
  input [63:0]col_indices_0;
  input [31:0]m_0;
  output [63:0]m_axi_gmem_0_0_araddr;
  output [1:0]m_axi_gmem_0_0_arburst;
  output [3:0]m_axi_gmem_0_0_arcache;
  output [7:0]m_axi_gmem_0_0_arlen;
  output [1:0]m_axi_gmem_0_0_arlock;
  output [2:0]m_axi_gmem_0_0_arprot;
  output [3:0]m_axi_gmem_0_0_arqos;
  input m_axi_gmem_0_0_arready;
  output [3:0]m_axi_gmem_0_0_arregion;
  output [2:0]m_axi_gmem_0_0_arsize;
  output m_axi_gmem_0_0_arvalid;
  output [63:0]m_axi_gmem_0_0_awaddr;
  output [1:0]m_axi_gmem_0_0_awburst;
  output [3:0]m_axi_gmem_0_0_awcache;
  output [7:0]m_axi_gmem_0_0_awlen;
  output [1:0]m_axi_gmem_0_0_awlock;
  output [2:0]m_axi_gmem_0_0_awprot;
  output [3:0]m_axi_gmem_0_0_awqos;
  input m_axi_gmem_0_0_awready;
  output [3:0]m_axi_gmem_0_0_awregion;
  output [2:0]m_axi_gmem_0_0_awsize;
  output m_axi_gmem_0_0_awvalid;
  output m_axi_gmem_0_0_bready;
  input [1:0]m_axi_gmem_0_0_bresp;
  input m_axi_gmem_0_0_bvalid;
  input [31:0]m_axi_gmem_0_0_rdata;
  input m_axi_gmem_0_0_rlast;
  output m_axi_gmem_0_0_rready;
  input [1:0]m_axi_gmem_0_0_rresp;
  input m_axi_gmem_0_0_rvalid;
  output [31:0]m_axi_gmem_0_0_wdata;
  output m_axi_gmem_0_0_wlast;
  input m_axi_gmem_0_0_wready;
  output [3:0]m_axi_gmem_0_0_wstrb;
  output m_axi_gmem_0_0_wvalid;
  output [63:0]m_axi_gmem_1_0_araddr;
  output [1:0]m_axi_gmem_1_0_arburst;
  output [3:0]m_axi_gmem_1_0_arcache;
  output [7:0]m_axi_gmem_1_0_arlen;
  output [1:0]m_axi_gmem_1_0_arlock;
  output [2:0]m_axi_gmem_1_0_arprot;
  output [3:0]m_axi_gmem_1_0_arqos;
  input m_axi_gmem_1_0_arready;
  output [3:0]m_axi_gmem_1_0_arregion;
  output [2:0]m_axi_gmem_1_0_arsize;
  output m_axi_gmem_1_0_arvalid;
  output [63:0]m_axi_gmem_1_0_awaddr;
  output [1:0]m_axi_gmem_1_0_awburst;
  output [3:0]m_axi_gmem_1_0_awcache;
  output [7:0]m_axi_gmem_1_0_awlen;
  output [1:0]m_axi_gmem_1_0_awlock;
  output [2:0]m_axi_gmem_1_0_awprot;
  output [3:0]m_axi_gmem_1_0_awqos;
  input m_axi_gmem_1_0_awready;
  output [3:0]m_axi_gmem_1_0_awregion;
  output [2:0]m_axi_gmem_1_0_awsize;
  output m_axi_gmem_1_0_awvalid;
  output m_axi_gmem_1_0_bready;
  input [1:0]m_axi_gmem_1_0_bresp;
  input m_axi_gmem_1_0_bvalid;
  input [31:0]m_axi_gmem_1_0_rdata;
  input m_axi_gmem_1_0_rlast;
  output m_axi_gmem_1_0_rready;
  input [1:0]m_axi_gmem_1_0_rresp;
  input m_axi_gmem_1_0_rvalid;
  output [31:0]m_axi_gmem_1_0_wdata;
  output m_axi_gmem_1_0_wlast;
  input m_axi_gmem_1_0_wready;
  output [3:0]m_axi_gmem_1_0_wstrb;
  output m_axi_gmem_1_0_wvalid;
  input [31:0]n_0;
  input [31:0]nnz_0;
  input [63:0]row_indices_0;
  input [63:0]values_0;
  input [63:0]x_0;
  input [63:0]y_0;

  wire ap_clk_0;
  wire ap_ctrl_0_done;
  wire ap_ctrl_0_idle;
  wire ap_ctrl_0_ready;
  wire ap_ctrl_0_start;
  wire ap_rst_n_0;
  wire [63:0]col_indices_0;
  wire [31:0]m_0;
  wire [63:0]m_axi_gmem_0_0_araddr;
  wire [1:0]m_axi_gmem_0_0_arburst;
  wire [3:0]m_axi_gmem_0_0_arcache;
  wire [7:0]m_axi_gmem_0_0_arlen;
  wire [1:0]m_axi_gmem_0_0_arlock;
  wire [2:0]m_axi_gmem_0_0_arprot;
  wire [3:0]m_axi_gmem_0_0_arqos;
  wire m_axi_gmem_0_0_arready;
  wire [3:0]m_axi_gmem_0_0_arregion;
  wire [2:0]m_axi_gmem_0_0_arsize;
  wire m_axi_gmem_0_0_arvalid;
  wire [63:0]m_axi_gmem_0_0_awaddr;
  wire [1:0]m_axi_gmem_0_0_awburst;
  wire [3:0]m_axi_gmem_0_0_awcache;
  wire [7:0]m_axi_gmem_0_0_awlen;
  wire [1:0]m_axi_gmem_0_0_awlock;
  wire [2:0]m_axi_gmem_0_0_awprot;
  wire [3:0]m_axi_gmem_0_0_awqos;
  wire m_axi_gmem_0_0_awready;
  wire [3:0]m_axi_gmem_0_0_awregion;
  wire [2:0]m_axi_gmem_0_0_awsize;
  wire m_axi_gmem_0_0_awvalid;
  wire m_axi_gmem_0_0_bready;
  wire [1:0]m_axi_gmem_0_0_bresp;
  wire m_axi_gmem_0_0_bvalid;
  wire [31:0]m_axi_gmem_0_0_rdata;
  wire m_axi_gmem_0_0_rlast;
  wire m_axi_gmem_0_0_rready;
  wire [1:0]m_axi_gmem_0_0_rresp;
  wire m_axi_gmem_0_0_rvalid;
  wire [31:0]m_axi_gmem_0_0_wdata;
  wire m_axi_gmem_0_0_wlast;
  wire m_axi_gmem_0_0_wready;
  wire [3:0]m_axi_gmem_0_0_wstrb;
  wire m_axi_gmem_0_0_wvalid;
  wire [63:0]m_axi_gmem_1_0_araddr;
  wire [1:0]m_axi_gmem_1_0_arburst;
  wire [3:0]m_axi_gmem_1_0_arcache;
  wire [7:0]m_axi_gmem_1_0_arlen;
  wire [1:0]m_axi_gmem_1_0_arlock;
  wire [2:0]m_axi_gmem_1_0_arprot;
  wire [3:0]m_axi_gmem_1_0_arqos;
  wire m_axi_gmem_1_0_arready;
  wire [3:0]m_axi_gmem_1_0_arregion;
  wire [2:0]m_axi_gmem_1_0_arsize;
  wire m_axi_gmem_1_0_arvalid;
  wire [63:0]m_axi_gmem_1_0_awaddr;
  wire [1:0]m_axi_gmem_1_0_awburst;
  wire [3:0]m_axi_gmem_1_0_awcache;
  wire [7:0]m_axi_gmem_1_0_awlen;
  wire [1:0]m_axi_gmem_1_0_awlock;
  wire [2:0]m_axi_gmem_1_0_awprot;
  wire [3:0]m_axi_gmem_1_0_awqos;
  wire m_axi_gmem_1_0_awready;
  wire [3:0]m_axi_gmem_1_0_awregion;
  wire [2:0]m_axi_gmem_1_0_awsize;
  wire m_axi_gmem_1_0_awvalid;
  wire m_axi_gmem_1_0_bready;
  wire [1:0]m_axi_gmem_1_0_bresp;
  wire m_axi_gmem_1_0_bvalid;
  wire [31:0]m_axi_gmem_1_0_rdata;
  wire m_axi_gmem_1_0_rlast;
  wire m_axi_gmem_1_0_rready;
  wire [1:0]m_axi_gmem_1_0_rresp;
  wire m_axi_gmem_1_0_rvalid;
  wire [31:0]m_axi_gmem_1_0_wdata;
  wire m_axi_gmem_1_0_wlast;
  wire m_axi_gmem_1_0_wready;
  wire [3:0]m_axi_gmem_1_0_wstrb;
  wire m_axi_gmem_1_0_wvalid;
  wire [31:0]n_0;
  wire [31:0]nnz_0;
  wire [63:0]row_indices_0;
  wire [63:0]values_0;
  wire [63:0]x_0;
  wire [63:0]y_0;

  design_1 design_1_i
       (.ap_clk_0(ap_clk_0),
        .ap_ctrl_0_done(ap_ctrl_0_done),
        .ap_ctrl_0_idle(ap_ctrl_0_idle),
        .ap_ctrl_0_ready(ap_ctrl_0_ready),
        .ap_ctrl_0_start(ap_ctrl_0_start),
        .ap_rst_n_0(ap_rst_n_0),
        .col_indices_0(col_indices_0),
        .m_0(m_0),
        .m_axi_gmem_0_0_araddr(m_axi_gmem_0_0_araddr),
        .m_axi_gmem_0_0_arburst(m_axi_gmem_0_0_arburst),
        .m_axi_gmem_0_0_arcache(m_axi_gmem_0_0_arcache),
        .m_axi_gmem_0_0_arlen(m_axi_gmem_0_0_arlen),
        .m_axi_gmem_0_0_arlock(m_axi_gmem_0_0_arlock),
        .m_axi_gmem_0_0_arprot(m_axi_gmem_0_0_arprot),
        .m_axi_gmem_0_0_arqos(m_axi_gmem_0_0_arqos),
        .m_axi_gmem_0_0_arready(m_axi_gmem_0_0_arready),
        .m_axi_gmem_0_0_arregion(m_axi_gmem_0_0_arregion),
        .m_axi_gmem_0_0_arsize(m_axi_gmem_0_0_arsize),
        .m_axi_gmem_0_0_arvalid(m_axi_gmem_0_0_arvalid),
        .m_axi_gmem_0_0_awaddr(m_axi_gmem_0_0_awaddr),
        .m_axi_gmem_0_0_awburst(m_axi_gmem_0_0_awburst),
        .m_axi_gmem_0_0_awcache(m_axi_gmem_0_0_awcache),
        .m_axi_gmem_0_0_awlen(m_axi_gmem_0_0_awlen),
        .m_axi_gmem_0_0_awlock(m_axi_gmem_0_0_awlock),
        .m_axi_gmem_0_0_awprot(m_axi_gmem_0_0_awprot),
        .m_axi_gmem_0_0_awqos(m_axi_gmem_0_0_awqos),
        .m_axi_gmem_0_0_awready(m_axi_gmem_0_0_awready),
        .m_axi_gmem_0_0_awregion(m_axi_gmem_0_0_awregion),
        .m_axi_gmem_0_0_awsize(m_axi_gmem_0_0_awsize),
        .m_axi_gmem_0_0_awvalid(m_axi_gmem_0_0_awvalid),
        .m_axi_gmem_0_0_bready(m_axi_gmem_0_0_bready),
        .m_axi_gmem_0_0_bresp(m_axi_gmem_0_0_bresp),
        .m_axi_gmem_0_0_bvalid(m_axi_gmem_0_0_bvalid),
        .m_axi_gmem_0_0_rdata(m_axi_gmem_0_0_rdata),
        .m_axi_gmem_0_0_rlast(m_axi_gmem_0_0_rlast),
        .m_axi_gmem_0_0_rready(m_axi_gmem_0_0_rready),
        .m_axi_gmem_0_0_rresp(m_axi_gmem_0_0_rresp),
        .m_axi_gmem_0_0_rvalid(m_axi_gmem_0_0_rvalid),
        .m_axi_gmem_0_0_wdata(m_axi_gmem_0_0_wdata),
        .m_axi_gmem_0_0_wlast(m_axi_gmem_0_0_wlast),
        .m_axi_gmem_0_0_wready(m_axi_gmem_0_0_wready),
        .m_axi_gmem_0_0_wstrb(m_axi_gmem_0_0_wstrb),
        .m_axi_gmem_0_0_wvalid(m_axi_gmem_0_0_wvalid),
        .m_axi_gmem_1_0_araddr(m_axi_gmem_1_0_araddr),
        .m_axi_gmem_1_0_arburst(m_axi_gmem_1_0_arburst),
        .m_axi_gmem_1_0_arcache(m_axi_gmem_1_0_arcache),
        .m_axi_gmem_1_0_arlen(m_axi_gmem_1_0_arlen),
        .m_axi_gmem_1_0_arlock(m_axi_gmem_1_0_arlock),
        .m_axi_gmem_1_0_arprot(m_axi_gmem_1_0_arprot),
        .m_axi_gmem_1_0_arqos(m_axi_gmem_1_0_arqos),
        .m_axi_gmem_1_0_arready(m_axi_gmem_1_0_arready),
        .m_axi_gmem_1_0_arregion(m_axi_gmem_1_0_arregion),
        .m_axi_gmem_1_0_arsize(m_axi_gmem_1_0_arsize),
        .m_axi_gmem_1_0_arvalid(m_axi_gmem_1_0_arvalid),
        .m_axi_gmem_1_0_awaddr(m_axi_gmem_1_0_awaddr),
        .m_axi_gmem_1_0_awburst(m_axi_gmem_1_0_awburst),
        .m_axi_gmem_1_0_awcache(m_axi_gmem_1_0_awcache),
        .m_axi_gmem_1_0_awlen(m_axi_gmem_1_0_awlen),
        .m_axi_gmem_1_0_awlock(m_axi_gmem_1_0_awlock),
        .m_axi_gmem_1_0_awprot(m_axi_gmem_1_0_awprot),
        .m_axi_gmem_1_0_awqos(m_axi_gmem_1_0_awqos),
        .m_axi_gmem_1_0_awready(m_axi_gmem_1_0_awready),
        .m_axi_gmem_1_0_awregion(m_axi_gmem_1_0_awregion),
        .m_axi_gmem_1_0_awsize(m_axi_gmem_1_0_awsize),
        .m_axi_gmem_1_0_awvalid(m_axi_gmem_1_0_awvalid),
        .m_axi_gmem_1_0_bready(m_axi_gmem_1_0_bready),
        .m_axi_gmem_1_0_bresp(m_axi_gmem_1_0_bresp),
        .m_axi_gmem_1_0_bvalid(m_axi_gmem_1_0_bvalid),
        .m_axi_gmem_1_0_rdata(m_axi_gmem_1_0_rdata),
        .m_axi_gmem_1_0_rlast(m_axi_gmem_1_0_rlast),
        .m_axi_gmem_1_0_rready(m_axi_gmem_1_0_rready),
        .m_axi_gmem_1_0_rresp(m_axi_gmem_1_0_rresp),
        .m_axi_gmem_1_0_rvalid(m_axi_gmem_1_0_rvalid),
        .m_axi_gmem_1_0_wdata(m_axi_gmem_1_0_wdata),
        .m_axi_gmem_1_0_wlast(m_axi_gmem_1_0_wlast),
        .m_axi_gmem_1_0_wready(m_axi_gmem_1_0_wready),
        .m_axi_gmem_1_0_wstrb(m_axi_gmem_1_0_wstrb),
        .m_axi_gmem_1_0_wvalid(m_axi_gmem_1_0_wvalid),
        .n_0(n_0),
        .nnz_0(nnz_0),
        .row_indices_0(row_indices_0),
        .values_0(values_0),
        .x_0(x_0),
        .y_0(y_0));
endmodule
