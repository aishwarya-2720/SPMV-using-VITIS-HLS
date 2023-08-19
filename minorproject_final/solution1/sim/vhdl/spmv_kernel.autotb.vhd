-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;


entity apatb_spmv_kernel_top is
  generic (
       AUTOTB_CLOCK_PERIOD_DIV2 :   TIME := 5.00 ns;
       AUTOTB_TVIN_gmem_0 : STRING := "../tv/cdatafile/c.spmv_kernel.autotvin_gmem_0.dat";
       AUTOTB_TVIN_gmem_1 : STRING := "../tv/cdatafile/c.spmv_kernel.autotvin_gmem_1.dat";
       AUTOTB_TVIN_values : STRING := "../tv/cdatafile/c.spmv_kernel.autotvin_values.dat";
       AUTOTB_TVIN_col_indices : STRING := "../tv/cdatafile/c.spmv_kernel.autotvin_col_indices.dat";
       AUTOTB_TVIN_row_indices : STRING := "../tv/cdatafile/c.spmv_kernel.autotvin_row_indices.dat";
       AUTOTB_TVIN_x : STRING := "../tv/cdatafile/c.spmv_kernel.autotvin_x.dat";
       AUTOTB_TVIN_y : STRING := "../tv/cdatafile/c.spmv_kernel.autotvin_y.dat";
       AUTOTB_TVIN_n : STRING := "../tv/cdatafile/c.spmv_kernel.autotvin_n.dat";
       AUTOTB_TVIN_m : STRING := "../tv/cdatafile/c.spmv_kernel.autotvin_m.dat";
       AUTOTB_TVIN_nnz : STRING := "../tv/cdatafile/c.spmv_kernel.autotvin_nnz.dat";
       AUTOTB_TVIN_gmem_0_out_wrapc : STRING := "../tv/rtldatafile/rtl.spmv_kernel.autotvin_gmem_0.dat";
       AUTOTB_TVIN_gmem_1_out_wrapc : STRING := "../tv/rtldatafile/rtl.spmv_kernel.autotvin_gmem_1.dat";
       AUTOTB_TVIN_values_out_wrapc : STRING := "../tv/rtldatafile/rtl.spmv_kernel.autotvin_values.dat";
       AUTOTB_TVIN_col_indices_out_wrapc : STRING := "../tv/rtldatafile/rtl.spmv_kernel.autotvin_col_indices.dat";
       AUTOTB_TVIN_row_indices_out_wrapc : STRING := "../tv/rtldatafile/rtl.spmv_kernel.autotvin_row_indices.dat";
       AUTOTB_TVIN_x_out_wrapc : STRING := "../tv/rtldatafile/rtl.spmv_kernel.autotvin_x.dat";
       AUTOTB_TVIN_y_out_wrapc : STRING := "../tv/rtldatafile/rtl.spmv_kernel.autotvin_y.dat";
       AUTOTB_TVIN_n_out_wrapc : STRING := "../tv/rtldatafile/rtl.spmv_kernel.autotvin_n.dat";
       AUTOTB_TVIN_m_out_wrapc : STRING := "../tv/rtldatafile/rtl.spmv_kernel.autotvin_m.dat";
       AUTOTB_TVIN_nnz_out_wrapc : STRING := "../tv/rtldatafile/rtl.spmv_kernel.autotvin_nnz.dat";
       AUTOTB_TVOUT_gmem_0 : STRING := "../tv/cdatafile/c.spmv_kernel.autotvout_gmem_0.dat";
       AUTOTB_TVOUT_gmem_0_out_wrapc : STRING := "../tv/rtldatafile/rtl.spmv_kernel.autotvout_gmem_0.dat";
      AUTOTB_LAT_RESULT_FILE    : STRING  := "spmv_kernel.result.lat.rb";
      AUTOTB_PER_RESULT_TRANS_FILE    : STRING  := "spmv_kernel.performance.result.transaction.xml";
      LENGTH_gmem_0     : INTEGER := 240392;
      LENGTH_gmem_1     : INTEGER := 60098;
      LENGTH_values     : INTEGER := 1;
      LENGTH_col_indices     : INTEGER := 1;
      LENGTH_row_indices     : INTEGER := 1;
      LENGTH_x     : INTEGER := 1;
      LENGTH_y     : INTEGER := 1;
      LENGTH_n     : INTEGER := 1;
      LENGTH_m     : INTEGER := 1;
      LENGTH_nnz     : INTEGER := 1;
	    AUTOTB_TRANSACTION_NUM    : INTEGER := 2
);

end apatb_spmv_kernel_top;

architecture behav of apatb_spmv_kernel_top is 
  signal AESL_clock	:   STD_LOGIC := '0';
  signal rst      :   STD_LOGIC;
  signal dut_rst  :   STD_LOGIC;
  signal start    :   STD_LOGIC := '0';
  signal ce       :   STD_LOGIC;
  signal continue :   STD_LOGIC := '0';
  signal AESL_reset :   STD_LOGIC := '0';
  signal AESL_start :   STD_LOGIC := '0';
  signal AESL_ce :   STD_LOGIC := '0';
  signal AESL_continue :   STD_LOGIC := '0';
  signal AESL_ready :   STD_LOGIC := '0';
  signal AESL_idle :   STD_LOGIC := '0';
  signal AESL_done :   STD_LOGIC := '0';
  signal AESL_done_delay :   STD_LOGIC := '0';
  signal AESL_done_delay2 :   STD_LOGIC := '0';
  signal AESL_ready_delay :   STD_LOGIC := '0';
  signal ready :   STD_LOGIC := '0';
  signal ready_wire :   STD_LOGIC := '0';

  signal ap_clk :  STD_LOGIC;
  signal ap_rst_n :  STD_LOGIC;
  signal ap_start :  STD_LOGIC;
  signal ap_done :  STD_LOGIC;
  signal ap_idle :  STD_LOGIC;
  signal ap_ready :  STD_LOGIC;
  signal gmem_0_AWVALID:  STD_LOGIC;
  signal gmem_0_AWREADY:  STD_LOGIC;
  signal gmem_0_AWADDR:  STD_LOGIC_VECTOR (63 DOWNTO 0);
  signal gmem_0_AWID:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_0_AWLEN:  STD_LOGIC_VECTOR (7 DOWNTO 0);
  signal gmem_0_AWSIZE:  STD_LOGIC_VECTOR (2 DOWNTO 0);
  signal gmem_0_AWBURST:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_0_AWLOCK:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_0_AWCACHE:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_0_AWPROT:  STD_LOGIC_VECTOR (2 DOWNTO 0);
  signal gmem_0_AWQOS:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_0_AWREGION:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_0_AWUSER:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_0_WVALID:  STD_LOGIC;
  signal gmem_0_WREADY:  STD_LOGIC;
  signal gmem_0_WDATA:  STD_LOGIC_VECTOR (31 DOWNTO 0);
  signal gmem_0_WSTRB:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_0_WLAST:  STD_LOGIC;
  signal gmem_0_WID:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_0_WUSER:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_0_ARVALID:  STD_LOGIC;
  signal gmem_0_ARREADY:  STD_LOGIC;
  signal gmem_0_ARADDR:  STD_LOGIC_VECTOR (63 DOWNTO 0);
  signal gmem_0_ARID:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_0_ARLEN:  STD_LOGIC_VECTOR (7 DOWNTO 0);
  signal gmem_0_ARSIZE:  STD_LOGIC_VECTOR (2 DOWNTO 0);
  signal gmem_0_ARBURST:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_0_ARLOCK:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_0_ARCACHE:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_0_ARPROT:  STD_LOGIC_VECTOR (2 DOWNTO 0);
  signal gmem_0_ARQOS:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_0_ARREGION:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_0_ARUSER:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_0_RVALID:  STD_LOGIC;
  signal gmem_0_RREADY:  STD_LOGIC;
  signal gmem_0_RDATA:  STD_LOGIC_VECTOR (31 DOWNTO 0);
  signal gmem_0_RLAST:  STD_LOGIC;
  signal gmem_0_RID:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_0_RUSER:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_0_RRESP:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_0_BVALID:  STD_LOGIC;
  signal gmem_0_BREADY:  STD_LOGIC;
  signal gmem_0_BRESP:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_0_BID:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_0_BUSER:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_1_AWVALID:  STD_LOGIC;
  signal gmem_1_AWREADY:  STD_LOGIC;
  signal gmem_1_AWADDR:  STD_LOGIC_VECTOR (63 DOWNTO 0);
  signal gmem_1_AWID:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_1_AWLEN:  STD_LOGIC_VECTOR (7 DOWNTO 0);
  signal gmem_1_AWSIZE:  STD_LOGIC_VECTOR (2 DOWNTO 0);
  signal gmem_1_AWBURST:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_1_AWLOCK:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_1_AWCACHE:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_1_AWPROT:  STD_LOGIC_VECTOR (2 DOWNTO 0);
  signal gmem_1_AWQOS:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_1_AWREGION:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_1_AWUSER:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_1_WVALID:  STD_LOGIC;
  signal gmem_1_WREADY:  STD_LOGIC;
  signal gmem_1_WDATA:  STD_LOGIC_VECTOR (31 DOWNTO 0);
  signal gmem_1_WSTRB:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_1_WLAST:  STD_LOGIC;
  signal gmem_1_WID:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_1_WUSER:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_1_ARVALID:  STD_LOGIC;
  signal gmem_1_ARREADY:  STD_LOGIC;
  signal gmem_1_ARADDR:  STD_LOGIC_VECTOR (63 DOWNTO 0);
  signal gmem_1_ARID:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_1_ARLEN:  STD_LOGIC_VECTOR (7 DOWNTO 0);
  signal gmem_1_ARSIZE:  STD_LOGIC_VECTOR (2 DOWNTO 0);
  signal gmem_1_ARBURST:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_1_ARLOCK:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_1_ARCACHE:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_1_ARPROT:  STD_LOGIC_VECTOR (2 DOWNTO 0);
  signal gmem_1_ARQOS:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_1_ARREGION:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal gmem_1_ARUSER:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_1_RVALID:  STD_LOGIC;
  signal gmem_1_RREADY:  STD_LOGIC;
  signal gmem_1_RDATA:  STD_LOGIC_VECTOR (31 DOWNTO 0);
  signal gmem_1_RLAST:  STD_LOGIC;
  signal gmem_1_RID:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_1_RUSER:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_1_RRESP:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_1_BVALID:  STD_LOGIC;
  signal gmem_1_BREADY:  STD_LOGIC;
  signal gmem_1_BRESP:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal gmem_1_BID:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal gmem_1_BUSER:  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal values :  STD_LOGIC_VECTOR (63 DOWNTO 0);
  signal col_indices :  STD_LOGIC_VECTOR (63 DOWNTO 0);
  signal row_indices :  STD_LOGIC_VECTOR (63 DOWNTO 0);
  signal x :  STD_LOGIC_VECTOR (63 DOWNTO 0);
  signal y :  STD_LOGIC_VECTOR (63 DOWNTO 0);
  signal n :  STD_LOGIC_VECTOR (31 DOWNTO 0);
  signal m :  STD_LOGIC_VECTOR (31 DOWNTO 0);
  signal nnz :  STD_LOGIC_VECTOR (31 DOWNTO 0);

  signal ready_cnt : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal done_cnt	: STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal ready_initial  :	STD_LOGIC;
  signal ready_initial_n	:   STD_LOGIC;
  signal ready_last_n   :	STD_LOGIC;
  signal ready_delay_last_n	:   STD_LOGIC;
  signal done_delay_last_n	:   STD_LOGIC;
  signal interface_done :	STD_LOGIC := '0';
  -- Subtype for random state number, to prevent confusing it with true integers
  -- Top of range should be (2**31)-1 but this literal calculation causes overflow on 32-bit machines
  subtype T_RANDINT is integer range 1 to integer'high;

  type latency_record is array(0 to AUTOTB_TRANSACTION_NUM + 1) of INTEGER;
  shared variable AESL_mLatCnterIn : latency_record;
  shared variable AESL_mLatCnterOut : latency_record;
  shared variable AESL_mLatCnterIn_addr : INTEGER;
  shared variable AESL_mLatCnterOut_addr : INTEGER;
  shared variable AESL_mThrCnterIn : latency_record;
  shared variable AESL_mThrCnterIn_addr : INTEGER;
  signal AESL_clk_counter : INTEGER;
  signal AESL_start_p1 : STD_LOGIC := '0';
  signal AESL_ready_p1 : STD_LOGIC := '0';
  signal lat_total : INTEGER;
  signal reported_stuck : STD_LOGIC   := '0';
  shared variable reported_stuck_cnt : INTEGER := 0;
component spmv_kernel is
port (
    ap_clk :  IN STD_LOGIC;
    ap_rst_n :  IN STD_LOGIC;
    ap_start :  IN STD_LOGIC;
    ap_done :  OUT STD_LOGIC;
    ap_idle :  OUT STD_LOGIC;
    ap_ready :  OUT STD_LOGIC;
    m_axi_gmem_0_AWVALID :  OUT STD_LOGIC;
    m_axi_gmem_0_AWREADY :  IN STD_LOGIC;
    m_axi_gmem_0_AWADDR :  OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
    m_axi_gmem_0_AWID :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_0_AWLEN :  OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    m_axi_gmem_0_AWSIZE :  OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    m_axi_gmem_0_AWBURST :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_0_AWLOCK :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_0_AWCACHE :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_0_AWPROT :  OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    m_axi_gmem_0_AWQOS :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_0_AWREGION :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_0_AWUSER :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_0_WVALID :  OUT STD_LOGIC;
    m_axi_gmem_0_WREADY :  IN STD_LOGIC;
    m_axi_gmem_0_WDATA :  OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    m_axi_gmem_0_WSTRB :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_0_WLAST :  OUT STD_LOGIC;
    m_axi_gmem_0_WID :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_0_WUSER :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_0_ARVALID :  OUT STD_LOGIC;
    m_axi_gmem_0_ARREADY :  IN STD_LOGIC;
    m_axi_gmem_0_ARADDR :  OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
    m_axi_gmem_0_ARID :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_0_ARLEN :  OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    m_axi_gmem_0_ARSIZE :  OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    m_axi_gmem_0_ARBURST :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_0_ARLOCK :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_0_ARCACHE :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_0_ARPROT :  OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    m_axi_gmem_0_ARQOS :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_0_ARREGION :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_0_ARUSER :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_0_RVALID :  IN STD_LOGIC;
    m_axi_gmem_0_RREADY :  OUT STD_LOGIC;
    m_axi_gmem_0_RDATA :  IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    m_axi_gmem_0_RLAST :  IN STD_LOGIC;
    m_axi_gmem_0_RID :  IN STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_0_RUSER :  IN STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_0_RRESP :  IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_0_BVALID :  IN STD_LOGIC;
    m_axi_gmem_0_BREADY :  OUT STD_LOGIC;
    m_axi_gmem_0_BRESP :  IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_0_BID :  IN STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_0_BUSER :  IN STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_1_AWVALID :  OUT STD_LOGIC;
    m_axi_gmem_1_AWREADY :  IN STD_LOGIC;
    m_axi_gmem_1_AWADDR :  OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
    m_axi_gmem_1_AWID :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_1_AWLEN :  OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    m_axi_gmem_1_AWSIZE :  OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    m_axi_gmem_1_AWBURST :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_1_AWLOCK :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_1_AWCACHE :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_1_AWPROT :  OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    m_axi_gmem_1_AWQOS :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_1_AWREGION :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_1_AWUSER :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_1_WVALID :  OUT STD_LOGIC;
    m_axi_gmem_1_WREADY :  IN STD_LOGIC;
    m_axi_gmem_1_WDATA :  OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    m_axi_gmem_1_WSTRB :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_1_WLAST :  OUT STD_LOGIC;
    m_axi_gmem_1_WID :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_1_WUSER :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_1_ARVALID :  OUT STD_LOGIC;
    m_axi_gmem_1_ARREADY :  IN STD_LOGIC;
    m_axi_gmem_1_ARADDR :  OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
    m_axi_gmem_1_ARID :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_1_ARLEN :  OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    m_axi_gmem_1_ARSIZE :  OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    m_axi_gmem_1_ARBURST :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_1_ARLOCK :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_1_ARCACHE :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_1_ARPROT :  OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    m_axi_gmem_1_ARQOS :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_1_ARREGION :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    m_axi_gmem_1_ARUSER :  OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_1_RVALID :  IN STD_LOGIC;
    m_axi_gmem_1_RREADY :  OUT STD_LOGIC;
    m_axi_gmem_1_RDATA :  IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    m_axi_gmem_1_RLAST :  IN STD_LOGIC;
    m_axi_gmem_1_RID :  IN STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_1_RUSER :  IN STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_1_RRESP :  IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_1_BVALID :  IN STD_LOGIC;
    m_axi_gmem_1_BREADY :  OUT STD_LOGIC;
    m_axi_gmem_1_BRESP :  IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    m_axi_gmem_1_BID :  IN STD_LOGIC_VECTOR (0 DOWNTO 0);
    m_axi_gmem_1_BUSER :  IN STD_LOGIC_VECTOR (0 DOWNTO 0);
    values :  IN STD_LOGIC_VECTOR (63 DOWNTO 0);
    col_indices :  IN STD_LOGIC_VECTOR (63 DOWNTO 0);
    row_indices :  IN STD_LOGIC_VECTOR (63 DOWNTO 0);
    x :  IN STD_LOGIC_VECTOR (63 DOWNTO 0);
    y :  IN STD_LOGIC_VECTOR (63 DOWNTO 0);
    n :  IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    m :  IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    nnz :  IN STD_LOGIC_VECTOR (31 DOWNTO 0));
end component;

-- The signal of port gmem_0
shared variable AESL_REG_gmem_0 : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
-- The signal of port gmem_1
shared variable AESL_REG_gmem_1 : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
-- The signal of port values
shared variable AESL_REG_values : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
-- The signal of port col_indices
shared variable AESL_REG_col_indices : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
-- The signal of port row_indices
shared variable AESL_REG_row_indices : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
-- The signal of port x
shared variable AESL_REG_x : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
-- The signal of port y
shared variable AESL_REG_y : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
-- The signal of port n
shared variable AESL_REG_n : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
-- The signal of port m
shared variable AESL_REG_m : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
-- The signal of port nnz
shared variable AESL_REG_nnz : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal	AESL_axi_master_gmem_0_ready : STD_LOGIC;
signal	AESL_axi_master_gmem_0_done  : STD_LOGIC;
component AESL_axi_master_gmem_0 is
  port(
    clk   :   IN STD_LOGIC;
    reset :   IN STD_LOGIC;
    TRAN_gmem_0_AWVALID : IN STD_LOGIC;
    TRAN_gmem_0_AWREADY : OUT STD_LOGIC;
    TRAN_gmem_0_AWADDR : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_AWID : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_AWLEN : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_AWSIZE : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_AWBURST : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_AWLOCK : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_AWCACHE : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_AWPROT : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_AWQOS : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_AWREGION : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_AWUSER : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_WVALID : IN STD_LOGIC;
    TRAN_gmem_0_WREADY : OUT STD_LOGIC;
    TRAN_gmem_0_WDATA : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_WSTRB : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_WLAST : IN STD_LOGIC;
    TRAN_gmem_0_WID : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_WUSER : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_ARVALID : IN STD_LOGIC;
    TRAN_gmem_0_ARREADY : OUT STD_LOGIC;
    TRAN_gmem_0_ARADDR : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_ARID : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_ARLEN : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_ARSIZE : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_ARBURST : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_ARLOCK : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_ARCACHE : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_ARPROT : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_ARQOS : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_ARREGION : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_ARUSER : IN STD_LOGIC_VECTOR;
    TRAN_gmem_0_RVALID : OUT STD_LOGIC;
    TRAN_gmem_0_RREADY : IN STD_LOGIC;
    TRAN_gmem_0_RDATA : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_0_RLAST : OUT STD_LOGIC;
    TRAN_gmem_0_RID : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_0_RUSER : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_0_RRESP : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_0_BVALID : OUT STD_LOGIC;
    TRAN_gmem_0_BREADY : IN STD_LOGIC;
    TRAN_gmem_0_BRESP : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_0_BID : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_0_BUSER : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_0_values : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_0_row_indices : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_0_x : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_0_y : OUT STD_LOGIC_VECTOR;
    ready        :    IN  STD_LOGIC;
    done         :    IN  STD_LOGIC
  );
end component;

signal	AESL_axi_master_gmem_1_ready : STD_LOGIC;
signal	AESL_axi_master_gmem_1_done  : STD_LOGIC;
component AESL_axi_master_gmem_1 is
  port(
    clk   :   IN STD_LOGIC;
    reset :   IN STD_LOGIC;
    TRAN_gmem_1_AWVALID : IN STD_LOGIC;
    TRAN_gmem_1_AWREADY : OUT STD_LOGIC;
    TRAN_gmem_1_AWADDR : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_AWID : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_AWLEN : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_AWSIZE : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_AWBURST : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_AWLOCK : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_AWCACHE : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_AWPROT : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_AWQOS : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_AWREGION : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_AWUSER : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_WVALID : IN STD_LOGIC;
    TRAN_gmem_1_WREADY : OUT STD_LOGIC;
    TRAN_gmem_1_WDATA : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_WSTRB : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_WLAST : IN STD_LOGIC;
    TRAN_gmem_1_WID : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_WUSER : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_ARVALID : IN STD_LOGIC;
    TRAN_gmem_1_ARREADY : OUT STD_LOGIC;
    TRAN_gmem_1_ARADDR : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_ARID : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_ARLEN : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_ARSIZE : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_ARBURST : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_ARLOCK : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_ARCACHE : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_ARPROT : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_ARQOS : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_ARREGION : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_ARUSER : IN STD_LOGIC_VECTOR;
    TRAN_gmem_1_RVALID : OUT STD_LOGIC;
    TRAN_gmem_1_RREADY : IN STD_LOGIC;
    TRAN_gmem_1_RDATA : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_1_RLAST : OUT STD_LOGIC;
    TRAN_gmem_1_RID : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_1_RUSER : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_1_RRESP : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_1_BVALID : OUT STD_LOGIC;
    TRAN_gmem_1_BREADY : IN STD_LOGIC;
    TRAN_gmem_1_BRESP : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_1_BID : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_1_BUSER : OUT STD_LOGIC_VECTOR;
    TRAN_gmem_1_col_indices : OUT STD_LOGIC_VECTOR;
    ready        :    IN  STD_LOGIC;
    done         :    IN  STD_LOGIC
  );
end component;

      procedure esl_read_token (file textfile: TEXT; textline: inout LINE; token: out STRING; token_len: out INTEGER) is
          variable whitespace : CHARACTER;
          variable i : INTEGER;
          variable ok: BOOLEAN;
          variable buff: STRING(1 to token'length);
      begin
          ok := false;
          i := 1;
          loop_main: while not endfile(textfile) loop
              if textline = null or textline'length = 0 then
                  readline(textfile, textline);
              end if;
              loop_remove_whitespace: while textline'length > 0 loop
                  if textline(textline'left) = ' ' or
                      textline(textline'left) = HT or
                      textline(textline'left) = CR or
                      textline(textline'left) = LF then
                      read(textline, whitespace);
                  else
                      exit loop_remove_whitespace;
                  end if;
              end loop;
              loop_aesl_read_token: while textline'length > 0 and i <= buff'length loop
                  if textline(textline'left) = ' ' or
                     textline(textline'left) = HT or
                     textline(textline'left) = CR or
                     textline(textline'left) = LF then
                      exit loop_aesl_read_token;
                  else
                      read(textline, buff(i));
                      i := i + 1;
                  end if;
                  ok := true;
              end loop;
              if ok = true then
                  exit loop_main;
              end if;
          end loop;
          buff(i) := ' ';
          token := buff;
          token_len:= i-1;
      end procedure esl_read_token;

      procedure esl_read_token (file textfile: TEXT;
                                textline: inout LINE;
                                token: out STRING) is
          variable i : INTEGER;
      begin
          esl_read_token (textfile, textline, token, i);
      end procedure esl_read_token;

      function esl_str2lv_hex (RHS : STRING; data_width : INTEGER) return STD_LOGIC_VECTOR is
          variable	ret	:   STD_LOGIC_VECTOR(data_width - 1 downto 0);
          variable	idx	:   integer := 3;
      begin
          ret := (others => '0');
          if(RHS(1) /= '0' and (RHS(2) /= 'x' or RHS(2) /= 'X')) then
     	        report "Error! The format of hex number is not initialed by 0x";
          end if;
          while true loop
              if (data_width > 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := ret(data_width - 5 downto 0) & "0000";
     	                when '1'    =>  ret := ret(data_width - 5 downto 0) & "0001";
                      when '2'    =>  ret := ret(data_width - 5 downto 0) & "0010";
                      when '3'    =>  ret := ret(data_width - 5 downto 0) & "0011";
                      when '4'    =>  ret := ret(data_width - 5 downto 0) & "0100";
                      when '5'    =>  ret := ret(data_width - 5 downto 0) & "0101";
                      when '6'    =>  ret := ret(data_width - 5 downto 0) & "0110";
                      when '7'    =>  ret := ret(data_width - 5 downto 0) & "0111";
                      when '8'    =>  ret := ret(data_width - 5 downto 0) & "1000";
                      when '9'    =>  ret := ret(data_width - 5 downto 0) & "1001";
                      when 'a' | 'A'  =>  ret := ret(data_width - 5 downto 0) & "1010";
                      when 'b' | 'B'  =>  ret := ret(data_width - 5 downto 0) & "1011";
                      when 'c' | 'C'  =>  ret := ret(data_width - 5 downto 0) & "1100";
                      when 'd' | 'D'  =>  ret := ret(data_width - 5 downto 0) & "1101";
                      when 'e' | 'E'  =>  ret := ret(data_width - 5 downto 0) & "1110";
                      when 'f' | 'F'  =>  ret := ret(data_width - 5 downto 0) & "1111";
                      when 'x' | 'X'  =>  ret := ret(data_width - 5 downto 0) & "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0000";
     	                when '1'    =>  ret := "0001";
                      when '2'    =>  ret := "0010";
                      when '3'    =>  ret := "0011";
                      when '4'    =>  ret := "0100";
                      when '5'    =>  ret := "0101";
                      when '6'    =>  ret := "0110";
                      when '7'    =>  ret := "0111";
                      when '8'    =>  ret := "1000";
                      when '9'    =>  ret := "1001";
                      when 'a' | 'A'  =>  ret := "1010";
                      when 'b' | 'B'  =>  ret := "1011";
                      when 'c' | 'C'  =>  ret := "1100";
                      when 'd' | 'D'  =>  ret := "1101";
                      when 'e' | 'E'  =>  ret := "1110";
                      when 'f' | 'F'  =>  ret := "1111";
                      when 'x' | 'X'  =>  ret := "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 3) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "000";
     	                when '1'    =>  ret := "001";
                      when '2'    =>  ret := "010";
                      when '3'    =>  ret := "011";
                      when '4'    =>  ret := "100";
                      when '5'    =>  ret := "101";
                      when '6'    =>  ret := "110";
                      when '7'    =>  ret := "111";
                      when 'x' | 'X'  =>  ret := "XXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 2) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "00";
     	                when '1'    =>  ret := "01";
                      when '2'    =>  ret := "10";
                      when '3'    =>  ret := "11";
                      when 'x' | 'X'  =>  ret := "XX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 1) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0";
     	                when '1'    =>  ret := "1";
                      when 'x' | 'X'  =>  ret := "X";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              else
                  report string'("Wrong data_width.");
                  return ret;
              end if;
              idx := idx + 1;
          end loop;
          return ret;
      end function;

    function esl_str_dec2int (RHS : STRING) return INTEGER is
        variable	ret	:   integer;
        variable	idx	:   integer := 1;
    begin
        ret := 0;
        while true loop
            case RHS(idx)  is
                when '0'    =>  ret := ret * 10 + 0;
                when '1'    =>  ret := ret * 10 + 1;
                when '2'    =>  ret := ret * 10 + 2;
                when '3'    =>  ret := ret * 10 + 3;
                when '4'    =>  ret := ret * 10 + 4;
                when '5'    =>  ret := ret * 10 + 5;
                when '6'    =>  ret := ret * 10 + 6;
                when '7'    =>  ret := ret * 10 + 7;
                when '8'    =>  ret := ret * 10 + 8;
                when '9'    =>  ret := ret * 10 + 9;
                when ' '    =>  return ret;
                when others    =>  report "Wrong dec char " & RHS(idx);	return ret;
            end case;
            idx := idx + 1;
        end loop;
        return ret;
    end esl_str_dec2int;
      function esl_conv_string_hex (lv : STD_LOGIC_VECTOR) return STRING is
          constant str_len : integer := (lv'length + 3)/4;
          variable ret : STRING (1 to str_len);
          variable i, tmp: INTEGER;
          variable normal_lv : STD_LOGIC_VECTOR(lv'length - 1 downto 0);
          variable tmp_lv : STD_LOGIC_VECTOR(3 downto 0);
      begin
          normal_lv := lv;
          for i in 1 to str_len loop
              if(i = 1) then
                  if((lv'length mod 4) = 3) then
                      tmp_lv(2 downto 0) := normal_lv(lv'length - 1 downto lv'length - 3);
                      case tmp_lv(2 downto 0) is
                          when "000" => ret(i) := '0';
                          when "001" => ret(i) := '1';
                          when "010" => ret(i) := '2';
                          when "011" => ret(i) := '3';
                          when "100" => ret(i) := '4';
                          when "101" => ret(i) := '5';
                          when "110" => ret(i) := '6';
                          when "111" => ret(i) := '7';
                          when others  => ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 2) then
                      tmp_lv(1 downto 0) := normal_lv(lv'length - 1 downto lv'length - 2);
                      case tmp_lv(1 downto 0) is
                          when "00" => ret(i) := '0';
                          when "01" => ret(i) := '1';
                          when "10" => ret(i) := '2';
                          when "11" => ret(i) := '3';
                          when others => ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 1) then
                      tmp_lv(0 downto 0) := normal_lv(lv'length - 1 downto lv'length - 1);
                      case tmp_lv(0 downto 0) is
                          when "0" => ret(i) := '0';
                          when "1" => ret(i) := '1';
                          when others=> ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 0) then
                      tmp_lv(3 downto 0) := normal_lv(lv'length - 1 downto lv'length - 4);
                      case tmp_lv(3 downto 0) is
                          when "0000" => ret(i) := '0';
                          when "0001" => ret(i) := '1';
                          when "0010" => ret(i) := '2';
                          when "0011" => ret(i) := '3';
                          when "0100" => ret(i) := '4';
                          when "0101" => ret(i) := '5';
                          when "0110" => ret(i) := '6';
                          when "0111" => ret(i) := '7';
                          when "1000" => ret(i) := '8';
                          when "1001" => ret(i) := '9';
                          when "1010" => ret(i) := 'a';
                          when "1011" => ret(i) := 'b';
                          when "1100" => ret(i) := 'c';
                          when "1101" => ret(i) := 'd';
                          when "1110" => ret(i) := 'e';
                          when "1111" => ret(i) := 'f';
                          when others   => ret(i) := 'X';
                      end case;
                  end if;
              else
                  tmp_lv(3 downto 0) := normal_lv((str_len - i) * 4 + 3 downto (str_len - i) * 4);
                  case tmp_lv(3 downto 0) is
                      when "0000" => ret(i) := '0';
                      when "0001" => ret(i) := '1';
                      when "0010" => ret(i) := '2';
                      when "0011" => ret(i) := '3';
                      when "0100" => ret(i) := '4';
                      when "0101" => ret(i) := '5';
                      when "0110" => ret(i) := '6';
                      when "0111" => ret(i) := '7';
                      when "1000" => ret(i) := '8';
                      when "1001" => ret(i) := '9';
                      when "1010" => ret(i) := 'a';
                      when "1011" => ret(i) := 'b';
                      when "1100" => ret(i) := 'c';
                      when "1101" => ret(i) := 'd';
                      when "1110" => ret(i) := 'e';
                      when "1111" => ret(i) := 'f';
                      when others   => ret(i) := 'X';
                  end case;
              end if;
          end loop;
          return ret;
      end function;

  -- purpose: initialise the random state variable based on an integer seed
  function init_rand(seed : integer) return T_RANDINT is
    variable result : T_RANDINT;
  begin
    -- If the seed is smaller than the minimum value of the random state variable, use the minimum value
    if seed < T_RANDINT'low then
      result := T_RANDINT'low;
      -- If the seed is larger than the maximum value of the random state variable, use the maximum value
    elsif seed > T_RANDINT'high then
      result := T_RANDINT'high;
      -- If the seed is within the range of the random state variable, just use the seed
    else
      result := seed;
    end if;
    -- Return the result
    return result;
  end init_rand;


  -- purpose: generate a random integer between min and max limits
  procedure rand_int(variable rand   : inout T_RANDINT;
                     constant minval : in    integer;
                     constant maxval : in    integer;
                     variable result : out   integer
                     ) is

    variable k, q      : integer;
    variable real_rand : real;
    variable res       : integer;

  begin
    -- Create a new random integer in the range 1 to 2**31-1 and put it back into rand VARIABLE
    -- Based on an example from Numerical Recipes in C, 2nd Edition, page 279
    k   := rand/127773;
    q   := 16807*(rand-k*127773)-2836*k;
    if q < 0 then
      q := q + 2147483647;
    end if;
    rand := init_rand(q);

    -- Convert this integer to a real number in the range 0 to 1
    real_rand := (real(rand - T_RANDINT'low)) / real(T_RANDINT'high - T_RANDINT'low);
    -- Convert this real number to an integer in the range minval to maxval
    -- The +1 and -0.5 are to get equal probability of minval and maxval as other values
    res    := integer((real_rand * real(maxval+1-minval)) - 0.5) + minval;
    -- VHDL real to integer conversion doesn't define what happens for x.5 so deal with this
    if res < minval then
      res  := minval;
    elsif res > maxval then
      res  := maxval;
    end if;
    -- assign output
    result := res;

  end rand_int;

begin
AESL_inst_spmv_kernel    :   spmv_kernel port map (
   ap_clk  =>  ap_clk,
   ap_rst_n  =>  ap_rst_n,
   ap_start  =>  ap_start,
   ap_done  =>  ap_done,
   ap_idle  =>  ap_idle,
   ap_ready  =>  ap_ready,
   m_axi_gmem_0_AWVALID  =>  gmem_0_AWVALID,
   m_axi_gmem_0_AWREADY  =>  gmem_0_AWREADY,
   m_axi_gmem_0_AWADDR  =>  gmem_0_AWADDR,
   m_axi_gmem_0_AWID  =>  gmem_0_AWID,
   m_axi_gmem_0_AWLEN  =>  gmem_0_AWLEN,
   m_axi_gmem_0_AWSIZE  =>  gmem_0_AWSIZE,
   m_axi_gmem_0_AWBURST  =>  gmem_0_AWBURST,
   m_axi_gmem_0_AWLOCK  =>  gmem_0_AWLOCK,
   m_axi_gmem_0_AWCACHE  =>  gmem_0_AWCACHE,
   m_axi_gmem_0_AWPROT  =>  gmem_0_AWPROT,
   m_axi_gmem_0_AWQOS  =>  gmem_0_AWQOS,
   m_axi_gmem_0_AWREGION  =>  gmem_0_AWREGION,
   m_axi_gmem_0_AWUSER  =>  gmem_0_AWUSER,
   m_axi_gmem_0_WVALID  =>  gmem_0_WVALID,
   m_axi_gmem_0_WREADY  =>  gmem_0_WREADY,
   m_axi_gmem_0_WDATA  =>  gmem_0_WDATA,
   m_axi_gmem_0_WSTRB  =>  gmem_0_WSTRB,
   m_axi_gmem_0_WLAST  =>  gmem_0_WLAST,
   m_axi_gmem_0_WID  =>  gmem_0_WID,
   m_axi_gmem_0_WUSER  =>  gmem_0_WUSER,
   m_axi_gmem_0_ARVALID  =>  gmem_0_ARVALID,
   m_axi_gmem_0_ARREADY  =>  gmem_0_ARREADY,
   m_axi_gmem_0_ARADDR  =>  gmem_0_ARADDR,
   m_axi_gmem_0_ARID  =>  gmem_0_ARID,
   m_axi_gmem_0_ARLEN  =>  gmem_0_ARLEN,
   m_axi_gmem_0_ARSIZE  =>  gmem_0_ARSIZE,
   m_axi_gmem_0_ARBURST  =>  gmem_0_ARBURST,
   m_axi_gmem_0_ARLOCK  =>  gmem_0_ARLOCK,
   m_axi_gmem_0_ARCACHE  =>  gmem_0_ARCACHE,
   m_axi_gmem_0_ARPROT  =>  gmem_0_ARPROT,
   m_axi_gmem_0_ARQOS  =>  gmem_0_ARQOS,
   m_axi_gmem_0_ARREGION  =>  gmem_0_ARREGION,
   m_axi_gmem_0_ARUSER  =>  gmem_0_ARUSER,
   m_axi_gmem_0_RVALID  =>  gmem_0_RVALID,
   m_axi_gmem_0_RREADY  =>  gmem_0_RREADY,
   m_axi_gmem_0_RDATA  =>  gmem_0_RDATA,
   m_axi_gmem_0_RLAST  =>  gmem_0_RLAST,
   m_axi_gmem_0_RID  =>  gmem_0_RID,
   m_axi_gmem_0_RUSER  =>  gmem_0_RUSER,
   m_axi_gmem_0_RRESP  =>  gmem_0_RRESP,
   m_axi_gmem_0_BVALID  =>  gmem_0_BVALID,
   m_axi_gmem_0_BREADY  =>  gmem_0_BREADY,
   m_axi_gmem_0_BRESP  =>  gmem_0_BRESP,
   m_axi_gmem_0_BID  =>  gmem_0_BID,
   m_axi_gmem_0_BUSER  =>  gmem_0_BUSER,
   m_axi_gmem_1_AWVALID  =>  gmem_1_AWVALID,
   m_axi_gmem_1_AWREADY  =>  gmem_1_AWREADY,
   m_axi_gmem_1_AWADDR  =>  gmem_1_AWADDR,
   m_axi_gmem_1_AWID  =>  gmem_1_AWID,
   m_axi_gmem_1_AWLEN  =>  gmem_1_AWLEN,
   m_axi_gmem_1_AWSIZE  =>  gmem_1_AWSIZE,
   m_axi_gmem_1_AWBURST  =>  gmem_1_AWBURST,
   m_axi_gmem_1_AWLOCK  =>  gmem_1_AWLOCK,
   m_axi_gmem_1_AWCACHE  =>  gmem_1_AWCACHE,
   m_axi_gmem_1_AWPROT  =>  gmem_1_AWPROT,
   m_axi_gmem_1_AWQOS  =>  gmem_1_AWQOS,
   m_axi_gmem_1_AWREGION  =>  gmem_1_AWREGION,
   m_axi_gmem_1_AWUSER  =>  gmem_1_AWUSER,
   m_axi_gmem_1_WVALID  =>  gmem_1_WVALID,
   m_axi_gmem_1_WREADY  =>  gmem_1_WREADY,
   m_axi_gmem_1_WDATA  =>  gmem_1_WDATA,
   m_axi_gmem_1_WSTRB  =>  gmem_1_WSTRB,
   m_axi_gmem_1_WLAST  =>  gmem_1_WLAST,
   m_axi_gmem_1_WID  =>  gmem_1_WID,
   m_axi_gmem_1_WUSER  =>  gmem_1_WUSER,
   m_axi_gmem_1_ARVALID  =>  gmem_1_ARVALID,
   m_axi_gmem_1_ARREADY  =>  gmem_1_ARREADY,
   m_axi_gmem_1_ARADDR  =>  gmem_1_ARADDR,
   m_axi_gmem_1_ARID  =>  gmem_1_ARID,
   m_axi_gmem_1_ARLEN  =>  gmem_1_ARLEN,
   m_axi_gmem_1_ARSIZE  =>  gmem_1_ARSIZE,
   m_axi_gmem_1_ARBURST  =>  gmem_1_ARBURST,
   m_axi_gmem_1_ARLOCK  =>  gmem_1_ARLOCK,
   m_axi_gmem_1_ARCACHE  =>  gmem_1_ARCACHE,
   m_axi_gmem_1_ARPROT  =>  gmem_1_ARPROT,
   m_axi_gmem_1_ARQOS  =>  gmem_1_ARQOS,
   m_axi_gmem_1_ARREGION  =>  gmem_1_ARREGION,
   m_axi_gmem_1_ARUSER  =>  gmem_1_ARUSER,
   m_axi_gmem_1_RVALID  =>  gmem_1_RVALID,
   m_axi_gmem_1_RREADY  =>  gmem_1_RREADY,
   m_axi_gmem_1_RDATA  =>  gmem_1_RDATA,
   m_axi_gmem_1_RLAST  =>  gmem_1_RLAST,
   m_axi_gmem_1_RID  =>  gmem_1_RID,
   m_axi_gmem_1_RUSER  =>  gmem_1_RUSER,
   m_axi_gmem_1_RRESP  =>  gmem_1_RRESP,
   m_axi_gmem_1_BVALID  =>  gmem_1_BVALID,
   m_axi_gmem_1_BREADY  =>  gmem_1_BREADY,
   m_axi_gmem_1_BRESP  =>  gmem_1_BRESP,
   m_axi_gmem_1_BID  =>  gmem_1_BID,
   m_axi_gmem_1_BUSER  =>  gmem_1_BUSER,
   values  =>  values,
   col_indices  =>  col_indices,
   row_indices  =>  row_indices,
   x  =>  x,
   y  =>  y,
   n  =>  n,
   m  =>  m,
   nnz  =>  nnz
);

-- Assignment for control signal
  ap_clk <= AESL_clock;
  ap_rst_n <= dut_rst;
  AESL_reset <= rst;
  ap_start <= AESL_start;
  AESL_start <= start;
  AESL_done <= ap_done;
  AESL_idle <= ap_idle;
  AESL_ready <= ap_ready;
  AESL_ce <= ce;
  AESL_continue <= continue;
gen_check_strlSignal_AESL_done_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
      NULL;
    else
        if ( AESL_done /= '1' and AESL_done /= '0' ) then
            assert false report "Control signal AESL_done is invalid!" severity failure;
        end if;
    end if;
  end if;
end process;
gen_check_strlSignal_AESL_ready_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
      NULL;
    else
        if ( AESL_ready /= '1' and AESL_ready /= '0' ) then
            assert false report "Control signal AESL_ready is invalid!" severity failure;
        end if;
    end if;
  end if;
end process;
gen_assign_n_proc : process
begin
  wait until (AESL_clock'event and AESL_clock = '1');
  wait for 0.45 ns;
  n <= AESL_REG_n;
end process;
read_file_process_n : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 192);
  variable    i           :   INTEGER;
  variable    transaction_finish  :   INTEGER;
  variable    transaction_idx     :   INTEGER:= 0;
  variable    rand        :   T_RANDINT     := init_rand(0);
  variable    rint        :   INTEGER;
begin
    wait until AESL_reset = '1';
    file_open(fstatus, fp, AUTOTB_TVIN_n, READ_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVIN_n & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    if(token(1 to 13) /= "[[[runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
        esl_read_token(fp, token_line, token);
        wait for 0.2 ns;
        while(ready_wire /= '1') loop
            wait until AESL_clock'event and AESL_clock = '1';
            wait for 0.2 ns;
        end loop;
        if(token(1 to 16) /= "[[/transaction]]") then
            AESL_REG_n := esl_str2lv_hex(token, 32 );
            esl_read_token(fp, token_line, token);
        end if;
        wait until AESL_clock'event and AESL_clock = '1';
        esl_read_token(fp, token_line, token);
    end loop;
    file_close(fp);
    wait;
end process;

gen_assign_m_proc : process
begin
  wait until (AESL_clock'event and AESL_clock = '1');
  wait for 0.45 ns;
  m <= AESL_REG_m;
end process;
read_file_process_m : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 192);
  variable    i           :   INTEGER;
  variable    transaction_finish  :   INTEGER;
  variable    transaction_idx     :   INTEGER:= 0;
  variable    rand        :   T_RANDINT     := init_rand(0);
  variable    rint        :   INTEGER;
begin
    wait until AESL_reset = '1';
    file_open(fstatus, fp, AUTOTB_TVIN_m, READ_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVIN_m & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    if(token(1 to 13) /= "[[[runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
        esl_read_token(fp, token_line, token);
        wait for 0.2 ns;
        while(ready_wire /= '1') loop
            wait until AESL_clock'event and AESL_clock = '1';
            wait for 0.2 ns;
        end loop;
        if(token(1 to 16) /= "[[/transaction]]") then
            AESL_REG_m := esl_str2lv_hex(token, 32 );
            esl_read_token(fp, token_line, token);
        end if;
        wait until AESL_clock'event and AESL_clock = '1';
        esl_read_token(fp, token_line, token);
    end loop;
    file_close(fp);
    wait;
end process;

gen_assign_nnz_proc : process
begin
  wait until (AESL_clock'event and AESL_clock = '1');
  wait for 0.45 ns;
  nnz <= AESL_REG_nnz;
end process;
read_file_process_nnz : process
  file        fp          :   TEXT;
  variable    fstatus     :   FILE_OPEN_STATUS;
  variable    token_line  :   LINE;
  variable    token       :   STRING(1 to 192);
  variable    i           :   INTEGER;
  variable    transaction_finish  :   INTEGER;
  variable    transaction_idx     :   INTEGER:= 0;
  variable    rand        :   T_RANDINT     := init_rand(0);
  variable    rint        :   INTEGER;
begin
    wait until AESL_reset = '1';
    file_open(fstatus, fp, AUTOTB_TVIN_nnz, READ_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVIN_nnz & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    if(token(1 to 13) /= "[[[runtime]]]") then
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    esl_read_token(fp, token_line, token);
    while(token(1 to 14) /= "[[[/runtime]]]") loop
        if(token(1 to 15) /= "[[transaction]]") then
            assert false report "ERROR: Simulation using HLS TB failed." severity failure;
        end if;
        esl_read_token(fp, token_line, token);  -- Skip transaction number
        esl_read_token(fp, token_line, token);
        wait for 0.2 ns;
        while(ready_wire /= '1') loop
            wait until AESL_clock'event and AESL_clock = '1';
            wait for 0.2 ns;
        end loop;
        if(token(1 to 16) /= "[[/transaction]]") then
            AESL_REG_nnz := esl_str2lv_hex(token, 32 );
            esl_read_token(fp, token_line, token);
        end if;
        wait until AESL_clock'event and AESL_clock = '1';
        esl_read_token(fp, token_line, token);
    end loop;
    file_close(fp);
    wait;
end process;

AESL_axi_master_inst_gmem_0 : AESL_axi_master_gmem_0 port map (
    clk   =>   AESL_clock,
    reset =>   AESL_reset,
    TRAN_gmem_0_AWVALID => gmem_0_AWVALID,
    TRAN_gmem_0_AWREADY => gmem_0_AWREADY,
    TRAN_gmem_0_AWADDR => gmem_0_AWADDR,
    TRAN_gmem_0_AWID => gmem_0_AWID,
    TRAN_gmem_0_AWLEN => gmem_0_AWLEN,
    TRAN_gmem_0_AWSIZE => gmem_0_AWSIZE,
    TRAN_gmem_0_AWBURST => gmem_0_AWBURST,
    TRAN_gmem_0_AWLOCK => gmem_0_AWLOCK,
    TRAN_gmem_0_AWCACHE => gmem_0_AWCACHE,
    TRAN_gmem_0_AWPROT => gmem_0_AWPROT,
    TRAN_gmem_0_AWQOS => gmem_0_AWQOS,
    TRAN_gmem_0_AWREGION => gmem_0_AWREGION,
    TRAN_gmem_0_AWUSER => gmem_0_AWUSER,
    TRAN_gmem_0_WVALID => gmem_0_WVALID,
    TRAN_gmem_0_WREADY => gmem_0_WREADY,
    TRAN_gmem_0_WDATA => gmem_0_WDATA,
    TRAN_gmem_0_WSTRB => gmem_0_WSTRB,
    TRAN_gmem_0_WLAST => gmem_0_WLAST,
    TRAN_gmem_0_WID => gmem_0_WID,
    TRAN_gmem_0_WUSER => gmem_0_WUSER,
    TRAN_gmem_0_ARVALID => gmem_0_ARVALID,
    TRAN_gmem_0_ARREADY => gmem_0_ARREADY,
    TRAN_gmem_0_ARADDR => gmem_0_ARADDR,
    TRAN_gmem_0_ARID => gmem_0_ARID,
    TRAN_gmem_0_ARLEN => gmem_0_ARLEN,
    TRAN_gmem_0_ARSIZE => gmem_0_ARSIZE,
    TRAN_gmem_0_ARBURST => gmem_0_ARBURST,
    TRAN_gmem_0_ARLOCK => gmem_0_ARLOCK,
    TRAN_gmem_0_ARCACHE => gmem_0_ARCACHE,
    TRAN_gmem_0_ARPROT => gmem_0_ARPROT,
    TRAN_gmem_0_ARQOS => gmem_0_ARQOS,
    TRAN_gmem_0_ARREGION => gmem_0_ARREGION,
    TRAN_gmem_0_ARUSER => gmem_0_ARUSER,
    TRAN_gmem_0_RVALID => gmem_0_RVALID,
    TRAN_gmem_0_RREADY => gmem_0_RREADY,
    TRAN_gmem_0_RDATA => gmem_0_RDATA,
    TRAN_gmem_0_RLAST => gmem_0_RLAST,
    TRAN_gmem_0_RID => gmem_0_RID,
    TRAN_gmem_0_RUSER => gmem_0_RUSER,
    TRAN_gmem_0_RRESP => gmem_0_RRESP,
    TRAN_gmem_0_BVALID => gmem_0_BVALID,
    TRAN_gmem_0_BREADY => gmem_0_BREADY,
    TRAN_gmem_0_BRESP => gmem_0_BRESP,
    TRAN_gmem_0_BID => gmem_0_BID,
    TRAN_gmem_0_BUSER => gmem_0_BUSER,
    TRAN_gmem_0_values => values,
    TRAN_gmem_0_row_indices => row_indices,
    TRAN_gmem_0_x => x,
    TRAN_gmem_0_y => y,
    ready => AESL_axi_master_gmem_0_ready,
    done  => AESL_axi_master_gmem_0_done
);
AESL_axi_master_gmem_0_ready	<=   ready;
AESL_axi_master_gmem_0_done	<=   AESL_done_delay;
AESL_axi_master_inst_gmem_1 : AESL_axi_master_gmem_1 port map (
    clk   =>   AESL_clock,
    reset =>   AESL_reset,
    TRAN_gmem_1_AWVALID => gmem_1_AWVALID,
    TRAN_gmem_1_AWREADY => gmem_1_AWREADY,
    TRAN_gmem_1_AWADDR => gmem_1_AWADDR,
    TRAN_gmem_1_AWID => gmem_1_AWID,
    TRAN_gmem_1_AWLEN => gmem_1_AWLEN,
    TRAN_gmem_1_AWSIZE => gmem_1_AWSIZE,
    TRAN_gmem_1_AWBURST => gmem_1_AWBURST,
    TRAN_gmem_1_AWLOCK => gmem_1_AWLOCK,
    TRAN_gmem_1_AWCACHE => gmem_1_AWCACHE,
    TRAN_gmem_1_AWPROT => gmem_1_AWPROT,
    TRAN_gmem_1_AWQOS => gmem_1_AWQOS,
    TRAN_gmem_1_AWREGION => gmem_1_AWREGION,
    TRAN_gmem_1_AWUSER => gmem_1_AWUSER,
    TRAN_gmem_1_WVALID => gmem_1_WVALID,
    TRAN_gmem_1_WREADY => gmem_1_WREADY,
    TRAN_gmem_1_WDATA => gmem_1_WDATA,
    TRAN_gmem_1_WSTRB => gmem_1_WSTRB,
    TRAN_gmem_1_WLAST => gmem_1_WLAST,
    TRAN_gmem_1_WID => gmem_1_WID,
    TRAN_gmem_1_WUSER => gmem_1_WUSER,
    TRAN_gmem_1_ARVALID => gmem_1_ARVALID,
    TRAN_gmem_1_ARREADY => gmem_1_ARREADY,
    TRAN_gmem_1_ARADDR => gmem_1_ARADDR,
    TRAN_gmem_1_ARID => gmem_1_ARID,
    TRAN_gmem_1_ARLEN => gmem_1_ARLEN,
    TRAN_gmem_1_ARSIZE => gmem_1_ARSIZE,
    TRAN_gmem_1_ARBURST => gmem_1_ARBURST,
    TRAN_gmem_1_ARLOCK => gmem_1_ARLOCK,
    TRAN_gmem_1_ARCACHE => gmem_1_ARCACHE,
    TRAN_gmem_1_ARPROT => gmem_1_ARPROT,
    TRAN_gmem_1_ARQOS => gmem_1_ARQOS,
    TRAN_gmem_1_ARREGION => gmem_1_ARREGION,
    TRAN_gmem_1_ARUSER => gmem_1_ARUSER,
    TRAN_gmem_1_RVALID => gmem_1_RVALID,
    TRAN_gmem_1_RREADY => gmem_1_RREADY,
    TRAN_gmem_1_RDATA => gmem_1_RDATA,
    TRAN_gmem_1_RLAST => gmem_1_RLAST,
    TRAN_gmem_1_RID => gmem_1_RID,
    TRAN_gmem_1_RUSER => gmem_1_RUSER,
    TRAN_gmem_1_RRESP => gmem_1_RRESP,
    TRAN_gmem_1_BVALID => gmem_1_BVALID,
    TRAN_gmem_1_BREADY => gmem_1_BREADY,
    TRAN_gmem_1_BRESP => gmem_1_BRESP,
    TRAN_gmem_1_BID => gmem_1_BID,
    TRAN_gmem_1_BUSER => gmem_1_BUSER,
    TRAN_gmem_1_col_indices => col_indices,
    ready => AESL_axi_master_gmem_1_ready,
    done  => AESL_axi_master_gmem_1_done
);
AESL_axi_master_gmem_1_ready	<=   ready;
AESL_axi_master_gmem_1_done	<=   AESL_done_delay;

generate_ready_cnt_proc : process(ready_initial, AESL_clock)
begin
    if(AESL_clock'event and AESL_clock = '0') then
        if(ready_initial = '1') then
            ready_cnt <= conv_std_logic_vector(1, 32);
        end if;
    elsif(AESL_clock'event and AESL_clock = '1') then
        if(ready_cnt /= AUTOTB_TRANSACTION_NUM) then
            if(AESL_ready = '1') then
                ready_cnt <= ready_cnt + 1;
            end if;
        end if;
    end if;
end process;

generate_done_cnt_proc : process(AESL_reset, AESL_clock)
begin
    if(AESL_reset = '0') then
        done_cnt <= (others => '0');
    elsif(AESL_clock'event and AESL_clock = '1') then
        if(done_cnt /= AUTOTB_TRANSACTION_NUM) then
            if(AESL_done = '1') then
                done_cnt <= done_cnt + 1;
            end if;
        end if;
    end if;
end process;

generate_sim_done_proc    :   process
begin
    while(done_cnt /= AUTOTB_TRANSACTION_NUM) loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
        wait until AESL_clock'event and AESL_clock = '1';
        wait until AESL_clock'event and AESL_clock = '1';
        wait until AESL_clock'event and AESL_clock = '1';
    assert false report "simulation done!" severity note;
    assert false report "NORMAL EXIT (note: failure is to force the simulator to stop)" severity failure;
    wait;
end process;

gen_clock_proc :   process
begin
    AESL_clock <= '0';
    while(true) loop
        wait for AUTOTB_CLOCK_PERIOD_DIV2;
        AESL_clock <= not AESL_clock;
    end loop;
    wait;
end process;

gen_reset_proc : process
    variable  rand            :   T_RANDINT     := init_rand(0);
    variable  rint            :   INTEGER;
begin
    rst <= '0';
    wait for 100 ns;
    for i in 1 to (3+100) loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    rst <= '1';
    wait;
end process;

gen_dut_reset_proc : process
    variable  rand            :   T_RANDINT     := init_rand(0);
    variable  rint            :   INTEGER;
begin
    dut_rst <= '0';
    wait for 100 ns;
    for i in 1 to 3 loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    dut_rst <= '1';
    wait;
end process;

gen_start_proc : process
    variable  rand            :   T_RANDINT     := init_rand(0);
    variable  rint            :   INTEGER;
begin
  start <= '0';
  ce <= '1';
    wait until AESL_reset = '1';
  wait until (AESL_clock'event and AESL_clock = '1');
  start <= '1';
  while(ready_cnt /= AUTOTB_TRANSACTION_NUM) loop
      wait until (AESL_clock'event and AESL_clock = '1');
      if(AESL_ready = '1') then
          start <= '0';
          start <= '1';
      end if;
  end loop;
  while (start = '1') loop
      if(AESL_ready = '1') then
          start <= '0';
      end if;
      wait until (AESL_clock'event and AESL_clock = '1');
  end loop;
  wait;
end process;


gen_continue_proc : process(AESL_done)
begin
    continue <= AESL_done;
end process;

gen_AESL_ready_delay_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          AESL_ready_delay <= '0';
      else
          AESL_ready_delay <= AESL_ready;
      end if;
  end if;
end process;

gen_ready_initial_proc : process
begin
    ready_initial <= '0';
    wait until AESL_start = '1';
    ready_initial <= '1';
    wait until AESL_clock'event and AESL_clock = '1';
    ready_initial <= '0';
    wait;
end process;

ready_last_n_proc : process
begin
  ready_last_n <= '1';
  while(ready_cnt /= AUTOTB_TRANSACTION_NUM) loop
    wait until AESL_clock'event and AESL_clock = '1';
  end loop;
  ready_last_n <= '0';
  wait;
end process;

gen_ready_delay_n_last_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          ready_delay_last_n <= '0';
      else
          ready_delay_last_n <= ready_last_n;
      end if;
  end if;
end process;

ready <= (ready_initial or AESL_ready_delay);
ready_wire <= ready_initial or AESL_ready_delay;
done_delay_last_n <= '0' when done_cnt = AUTOTB_TRANSACTION_NUM else '1';

gen_done_delay_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          AESL_done_delay <= '0';
          AESL_done_delay2 <= '0';
      else
          AESL_done_delay <= AESL_done and done_delay_last_n;
          AESL_done_delay2 <= AESL_done_delay;
      end if;
  end if;
end process;

gen_interface_done : process(done_cnt, AESL_ready_delay, AESL_done_delay)
begin
    if(done_cnt < AUTOTB_TRANSACTION_NUM) then
        interface_done <= AESL_ready_delay;
    else
        interface_done <= AESL_done_delay;
    end if;
end process;
-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor 
write_output_transactor_gmem_0_runtime_proc : process
  file        fp              :   TEXT;
  variable    fstatus         :   FILE_OPEN_STATUS;
  variable    token_line      :   LINE;
  variable    token           :   STRING(1 to 1024);
begin
    file_open(fstatus, fp, AUTOTB_TVOUT_gmem_0_out_wrapc, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_gmem_0_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    while done_cnt /= AUTOTB_TRANSACTION_NUM loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    wait until AESL_clock'event and AESL_clock = '1';
    wait until AESL_clock'event and AESL_clock = '1';
    file_open(fstatus, fp, AUTOTB_TVOUT_gmem_0_out_wrapc, APPEND_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_TVOUT_gmem_0_out_wrapc & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;
    write(token_line, string'("[[[/runtime]]]"));
    writeline(fp, token_line);
    file_close(fp);
    wait;
end process;

gen_clock_counter_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        AESL_clk_counter <= 0;
        AESL_start_p1 <= '0';
        AESL_ready_p1 <= '0';
    else
        AESL_clk_counter <= AESL_clk_counter + 1;
        AESL_start_p1 <= AESL_start;
        AESL_ready_p1 <= AESL_ready;
    end if;
  end if;
end process;

gen_mLatcnterout_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          AESL_mLatCnterOut_addr := 0;
          AESL_mLatCnterOut(AESL_mLatCnterOut_addr) := AESL_clk_counter + 1 ;
          reported_stuck_cnt := 0;
      else
          if (AESL_done = '1' and AESL_mLatCnterOut_addr < AUTOTB_TRANSACTION_NUM + 1) then
              AESL_mLatCnterOut(AESL_mLatCnterOut_addr) := AESL_clk_counter;
              AESL_mLatCnterOut_addr := AESL_mLatCnterOut_addr + 1;
              reported_stuck <= '0';
          elsif (reported_stuck = '0' and reported_stuck_cnt < 4) then
              if ( AESL_mLatCnterIn_addr > AESL_mLatCnterOut_addr ) then
                  -- if ( AESL_clk_counter - AESL_mLatCnterIn(AESL_mLatCnterOut_addr) > 10000 and AESL_clk_counter - AESL_mLatCnterIn(AESL_mLatCnterOut_addr) > 10 * 3502077 ) then
                  if ( AESL_clk_counter - AESL_mLatCnterIn(AESL_mLatCnterOut_addr) > 10000 and AESL_clk_counter - AESL_mLatCnterIn(AESL_mLatCnterOut_addr) > 10000000 ) then
                      report "WARNING: The latency is much larger than expected. Simulation may be stuck.";
                      reported_stuck <= '1';
                      reported_stuck_cnt := reported_stuck_cnt + 1;
                  end if;
              end if;
          end if;
      end if;
  end if;
end process;

gen_mLatcnterin_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        AESL_mLatCnterIn_addr := 0;
      else
        if (AESL_mLatCnterIn_addr < AUTOTB_TRANSACTION_NUM) then
          if (AESL_start = '1' and AESL_start_p1 = '0') then
            AESL_mLatCnterIn(AESL_mLatCnterIn_addr) := AESL_clk_counter;
            AESL_mLatCnterIn_addr := AESL_mLatCnterIn_addr + 1;
          elsif (AESL_start = '1' and AESL_ready_p1 = '1') then
            AESL_mLatCnterIn(AESL_mLatCnterIn_addr) := AESL_clk_counter;
            AESL_mLatCnterIn_addr := AESL_mLatCnterIn_addr + 1;
          end if;
        end if;
      end if;
  end if;
end process;

gen_mThrCnterrIn_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        AESL_mThrCnterIn_addr := 0;
    else
      if (AESL_mThrCnterIn_addr < AUTOTB_TRANSACTION_NUM) then
        if (AESL_start_p1 = '1' and AESL_ready_p1 = '1') then
          AESL_mThrCnterIn(AESL_mThrCnterIn_addr) := AESL_clk_counter;
          AESL_mThrCnterIn_addr := AESL_mThrCnterIn_addr + 1;
        end if;
      end if;
    end if;
  end if;
end process;

gen_performance_check_proc : process
    variable transaction_counter : INTEGER;
    variable i : INTEGER;
    file     fp :   TEXT;
    variable    fstatus         :   FILE_OPEN_STATUS;
    variable    token_line      :   LINE;
    variable    token           :   STRING(1 to 1024);

    variable latthistime : INTEGER;
    variable lattotal : INTEGER;
    variable latmax : INTEGER;
    variable latmin : INTEGER;


    variable thrthistime : INTEGER;
    variable thrtotal : INTEGER;
    variable thrmax : INTEGER;
    variable thrmin : INTEGER;

    variable lataver : INTEGER;
    variable thraver : INTEGER;
    variable total_execute_time : INTEGER;
    type latency_record is array(0 to AUTOTB_TRANSACTION_NUM + 1) of INTEGER;
    variable lat_array : latency_record;
    variable thr_array : latency_record;

begin
    i := 0;
    lattotal  := 0;
    latmax    := 0;
    latmin    := 16#7fffffff#;
    lataver   := 0;

    thrtotal  := 0;
    thrmax    := 0;
    thrmin    := 16#7fffffff#;
    thraver   := 0;

    wait until (AESL_clock'event and AESL_clock = '1');
    wait until (AESL_reset = '1'); 
    while (done_cnt /= AUTOTB_TRANSACTION_NUM) loop
        wait until (AESL_clock'event and AESL_clock = '1');
    end loop;
  wait for 0.001 ns;

    for i in 0 to AUTOTB_TRANSACTION_NUM - 1 loop
        latthistime := AESL_mLatCnterOut(i) - AESL_mLatCnterIn(i);
        lat_array(i) := latthistime;
        if (latthistime > latmax) then
            latmax := latthistime; 
        end if;
        if (latthistime < latmin) then
            latmin := latthistime;
        end if;
		lattotal := lattotal + latthistime;
	end loop;
	lataver := lattotal / AUTOTB_TRANSACTION_NUM;
  if (AUTOTB_TRANSACTION_NUM = 1) then
	  thrthistime := 0;
    thrmin := 0;
    thrmax := 0;
    thrtotal := 0;
    thraver := 0;
	else
    for i in 0 to AUTOTB_TRANSACTION_NUM - 2 loop
      thrthistime := AESL_mLatCnterIn(i + 1) - AESL_mLatCnterIn(i);
      thr_array(i) := thrthistime;
		if (thrthistime > thrmax) then
		    thrmax := thrthistime;
      end if;
		if (thrthistime < thrmin) then
	        thrmin := thrthistime;
      end if;
		thrtotal := thrtotal + thrthistime;
	  end loop;
	  thraver := thrtotal / (AUTOTB_TRANSACTION_NUM - 1);
	end if;
  total_execute_time := lat_total;


    file_open(fstatus, fp, AUTOTB_LAT_RESULT_FILE, WRITE_MODE);
    if (fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_LAT_RESULT_FILE & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    else
        write(token_line, "$MAX_LATENCY = " & '"' & integer'image(latmax) & '"');
        writeline(fp, token_line);
        write(token_line, "$MIN_LATENCY = " & '"' & integer'image(latmin) & '"');
        writeline(fp, token_line);
        write(token_line, "$AVER_LATENCY = " & '"' & integer'image(lataver) & '"');
        writeline(fp, token_line);
        write(token_line, "$MAX_THROUGHPUT = " & '"' & integer'image(thrmax) & '"');
        writeline(fp, token_line);
        write(token_line, "$MIN_THROUGHPUT = " & '"' & integer'image(thrmin) & '"');
        writeline(fp, token_line);
        write(token_line, "$AVER_THROUGHPUT = " & '"' & integer'image(thraver) & '"');
        writeline(fp, token_line);
        write(token_line, "$TOTAL_EXECUTE_TIME = " & '"' & integer'image(total_execute_time) & '"');
        writeline(fp, token_line);
    end if;

    file_close(fp);

    file_open(fstatus, fp, AUTOTB_PER_RESULT_TRANS_FILE, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_PER_RESULT_TRANS_FILE & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;

    write(token_line,string'("                            latency            interval"));
    writeline(fp, token_line);
    if (AUTOTB_TRANSACTION_NUM = 1) then
        i := 0;
        thr_array(i) := 0;
        write(token_line,"transaction        " & integer'image(i) & "            " & integer'image(lat_array(i) ) & "            " & integer'image(thr_array(i) ) );
        writeline(fp, token_line);
    else
        for i in 0 to AESL_mLatCnterOut_addr - 1 loop
            write(token_line,"transaction        " & integer'image(i) & "            " & integer'image(lat_array(i) ) & "            " & integer'image(thr_array(i) ) );
            writeline(fp, token_line);
        end loop;
    end if;
    file_close(fp);
    wait;
end process;

calc_lat_total : process(AESL_clock)
begin
    if (AESL_clock'event and AESL_clock = '1') then
        if (done_cnt = AUTOTB_TRANSACTION_NUM - 1 and AESL_done = '1') then
            lat_total <= AESL_clk_counter - AESL_mLatCnterIn(0);
        end if;
    end if;
end process;
end behav;
