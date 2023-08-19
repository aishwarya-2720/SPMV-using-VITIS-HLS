-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:spmv_kernel:0.0
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_spmv_kernel_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem_0_AWADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem_0_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem_0_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_0_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_0_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_0_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_0_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_0_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_0_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_0_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_0_AWREADY : IN STD_LOGIC;
    m_axi_gmem_0_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem_0_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_0_WLAST : OUT STD_LOGIC;
    m_axi_gmem_0_WVALID : OUT STD_LOGIC;
    m_axi_gmem_0_WREADY : IN STD_LOGIC;
    m_axi_gmem_0_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_0_BVALID : IN STD_LOGIC;
    m_axi_gmem_0_BREADY : OUT STD_LOGIC;
    m_axi_gmem_0_ARADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem_0_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem_0_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_0_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_0_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_0_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_0_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_0_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_0_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_0_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_0_ARREADY : IN STD_LOGIC;
    m_axi_gmem_0_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem_0_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_0_RLAST : IN STD_LOGIC;
    m_axi_gmem_0_RVALID : IN STD_LOGIC;
    m_axi_gmem_0_RREADY : OUT STD_LOGIC;
    m_axi_gmem_1_AWADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem_1_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem_1_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_1_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_1_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_1_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_1_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_1_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_1_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_1_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_1_AWREADY : IN STD_LOGIC;
    m_axi_gmem_1_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem_1_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_1_WLAST : OUT STD_LOGIC;
    m_axi_gmem_1_WVALID : OUT STD_LOGIC;
    m_axi_gmem_1_WREADY : IN STD_LOGIC;
    m_axi_gmem_1_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_1_BVALID : IN STD_LOGIC;
    m_axi_gmem_1_BREADY : OUT STD_LOGIC;
    m_axi_gmem_1_ARADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_gmem_1_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_gmem_1_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_1_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_1_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_1_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_1_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_1_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_gmem_1_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_gmem_1_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_1_ARREADY : IN STD_LOGIC;
    m_axi_gmem_1_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_gmem_1_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_gmem_1_RLAST : IN STD_LOGIC;
    m_axi_gmem_1_RVALID : IN STD_LOGIC;
    m_axi_gmem_1_RREADY : OUT STD_LOGIC;
    values : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    col_indices : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    row_indices : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    x : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    y : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    n : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    nnz : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END design_1_spmv_kernel_0_0;

ARCHITECTURE design_1_spmv_kernel_0_0_arch OF design_1_spmv_kernel_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_spmv_kernel_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT spmv_kernel IS
    GENERIC (
      C_M_AXI_GMEM_0_ID_WIDTH : INTEGER;
      C_M_AXI_GMEM_0_ADDR_WIDTH : INTEGER;
      C_M_AXI_GMEM_0_DATA_WIDTH : INTEGER;
      C_M_AXI_GMEM_0_AWUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM_0_ARUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM_0_WUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM_0_RUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM_0_BUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM_0_USER_VALUE : INTEGER;
      C_M_AXI_GMEM_0_PROT_VALUE : INTEGER;
      C_M_AXI_GMEM_0_CACHE_VALUE : INTEGER;
      C_M_AXI_GMEM_1_ID_WIDTH : INTEGER;
      C_M_AXI_GMEM_1_ADDR_WIDTH : INTEGER;
      C_M_AXI_GMEM_1_DATA_WIDTH : INTEGER;
      C_M_AXI_GMEM_1_AWUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM_1_ARUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM_1_WUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM_1_RUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM_1_BUSER_WIDTH : INTEGER;
      C_M_AXI_GMEM_1_USER_VALUE : INTEGER;
      C_M_AXI_GMEM_1_PROT_VALUE : INTEGER;
      C_M_AXI_GMEM_1_CACHE_VALUE : INTEGER
    );
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      m_axi_gmem_0_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_0_AWADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_gmem_0_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_gmem_0_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem_0_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_0_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_0_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_0_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_0_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem_0_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_0_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_0_AWVALID : OUT STD_LOGIC;
      m_axi_gmem_0_AWREADY : IN STD_LOGIC;
      m_axi_gmem_0_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_0_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_gmem_0_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_0_WLAST : OUT STD_LOGIC;
      m_axi_gmem_0_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_0_WVALID : OUT STD_LOGIC;
      m_axi_gmem_0_WREADY : IN STD_LOGIC;
      m_axi_gmem_0_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_0_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_0_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_0_BVALID : IN STD_LOGIC;
      m_axi_gmem_0_BREADY : OUT STD_LOGIC;
      m_axi_gmem_0_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_0_ARADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_gmem_0_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_gmem_0_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem_0_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_0_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_0_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_0_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_0_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem_0_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_0_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_0_ARVALID : OUT STD_LOGIC;
      m_axi_gmem_0_ARREADY : IN STD_LOGIC;
      m_axi_gmem_0_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_0_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_gmem_0_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_0_RLAST : IN STD_LOGIC;
      m_axi_gmem_0_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_0_RVALID : IN STD_LOGIC;
      m_axi_gmem_0_RREADY : OUT STD_LOGIC;
      m_axi_gmem_1_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_1_AWADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_gmem_1_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_gmem_1_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem_1_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_1_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_1_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_1_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_1_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem_1_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_1_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_1_AWVALID : OUT STD_LOGIC;
      m_axi_gmem_1_AWREADY : IN STD_LOGIC;
      m_axi_gmem_1_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_1_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_gmem_1_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_1_WLAST : OUT STD_LOGIC;
      m_axi_gmem_1_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_1_WVALID : OUT STD_LOGIC;
      m_axi_gmem_1_WREADY : IN STD_LOGIC;
      m_axi_gmem_1_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_1_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_1_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_1_BVALID : IN STD_LOGIC;
      m_axi_gmem_1_BREADY : OUT STD_LOGIC;
      m_axi_gmem_1_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_1_ARADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_gmem_1_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_gmem_1_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem_1_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_1_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_1_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_1_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_1_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_gmem_1_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_gmem_1_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_1_ARVALID : OUT STD_LOGIC;
      m_axi_gmem_1_ARREADY : IN STD_LOGIC;
      m_axi_gmem_1_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_1_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_gmem_1_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_gmem_1_RLAST : IN STD_LOGIC;
      m_axi_gmem_1_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_gmem_1_RVALID : IN STD_LOGIC;
      m_axi_gmem_1_RREADY : OUT STD_LOGIC;
      values : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      col_indices : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      row_indices : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      x : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      y : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      n : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      nnz : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT spmv_kernel;
  ATTRIBUTE SDX_KERNEL : STRING;
  ATTRIBUTE SDX_KERNEL OF spmv_kernel: COMPONENT IS "true";
  ATTRIBUTE SDX_KERNEL_TYPE : STRING;
  ATTRIBUTE SDX_KERNEL_TYPE OF spmv_kernel: COMPONENT IS "hls";
  ATTRIBUTE SDX_KERNEL_SIM_INST : STRING;
  ATTRIBUTE SDX_KERNEL_SIM_INST OF spmv_kernel: COMPONENT IS "U0";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_spmv_kernel_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF nnz: SIGNAL IS "XIL_INTERFACENAME nnz, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF nnz: SIGNAL IS "xilinx.com:signal:data:1.0 nnz DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m: SIGNAL IS "XIL_INTERFACENAME m, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF m: SIGNAL IS "xilinx.com:signal:data:1.0 m DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF n: SIGNAL IS "XIL_INTERFACENAME n, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF n: SIGNAL IS "xilinx.com:signal:data:1.0 n DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF y: SIGNAL IS "XIL_INTERFACENAME y, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF y: SIGNAL IS "xilinx.com:signal:data:1.0 y DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF x: SIGNAL IS "XIL_INTERFACENAME x, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF x: SIGNAL IS "xilinx.com:signal:data:1.0 x DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF row_indices: SIGNAL IS "XIL_INTERFACENAME row_indices, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF row_indices: SIGNAL IS "xilinx.com:signal:data:1.0 row_indices DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF col_indices: SIGNAL IS "XIL_INTERFACENAME col_indices, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF col_indices: SIGNAL IS "xilinx.com:signal:data:1.0 col_indices DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF values: SIGNAL IS "XIL_INTERFACENAME values, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF values: SIGNAL IS "xilinx.com:signal:data:1.0 values DATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_gmem_1_AWADDR: SIGNAL IS "XIL_INTERFACENAME m_axi_gmem_1, ADDR_WIDTH 64, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAI" & 
"N design_1_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_1_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_1 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_gmem_0_AWADDR: SIGNAL IS "XIL_INTERFACENAME m_axi_gmem_0, ADDR_WIDTH 64, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAI" & 
"N design_1_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_gmem_0_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_gmem_0 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF m_axi_gmem_0:m_axi_gmem_1, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ap_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : spmv_kernel
    GENERIC MAP (
      C_M_AXI_GMEM_0_ID_WIDTH => 1,
      C_M_AXI_GMEM_0_ADDR_WIDTH => 64,
      C_M_AXI_GMEM_0_DATA_WIDTH => 32,
      C_M_AXI_GMEM_0_AWUSER_WIDTH => 1,
      C_M_AXI_GMEM_0_ARUSER_WIDTH => 1,
      C_M_AXI_GMEM_0_WUSER_WIDTH => 1,
      C_M_AXI_GMEM_0_RUSER_WIDTH => 1,
      C_M_AXI_GMEM_0_BUSER_WIDTH => 1,
      C_M_AXI_GMEM_0_USER_VALUE => 0,
      C_M_AXI_GMEM_0_PROT_VALUE => 0,
      C_M_AXI_GMEM_0_CACHE_VALUE => 3,
      C_M_AXI_GMEM_1_ID_WIDTH => 1,
      C_M_AXI_GMEM_1_ADDR_WIDTH => 64,
      C_M_AXI_GMEM_1_DATA_WIDTH => 32,
      C_M_AXI_GMEM_1_AWUSER_WIDTH => 1,
      C_M_AXI_GMEM_1_ARUSER_WIDTH => 1,
      C_M_AXI_GMEM_1_WUSER_WIDTH => 1,
      C_M_AXI_GMEM_1_RUSER_WIDTH => 1,
      C_M_AXI_GMEM_1_BUSER_WIDTH => 1,
      C_M_AXI_GMEM_1_USER_VALUE => 0,
      C_M_AXI_GMEM_1_PROT_VALUE => 0,
      C_M_AXI_GMEM_1_CACHE_VALUE => 3
    )
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      m_axi_gmem_0_AWADDR => m_axi_gmem_0_AWADDR,
      m_axi_gmem_0_AWLEN => m_axi_gmem_0_AWLEN,
      m_axi_gmem_0_AWSIZE => m_axi_gmem_0_AWSIZE,
      m_axi_gmem_0_AWBURST => m_axi_gmem_0_AWBURST,
      m_axi_gmem_0_AWLOCK => m_axi_gmem_0_AWLOCK,
      m_axi_gmem_0_AWREGION => m_axi_gmem_0_AWREGION,
      m_axi_gmem_0_AWCACHE => m_axi_gmem_0_AWCACHE,
      m_axi_gmem_0_AWPROT => m_axi_gmem_0_AWPROT,
      m_axi_gmem_0_AWQOS => m_axi_gmem_0_AWQOS,
      m_axi_gmem_0_AWVALID => m_axi_gmem_0_AWVALID,
      m_axi_gmem_0_AWREADY => m_axi_gmem_0_AWREADY,
      m_axi_gmem_0_WDATA => m_axi_gmem_0_WDATA,
      m_axi_gmem_0_WSTRB => m_axi_gmem_0_WSTRB,
      m_axi_gmem_0_WLAST => m_axi_gmem_0_WLAST,
      m_axi_gmem_0_WVALID => m_axi_gmem_0_WVALID,
      m_axi_gmem_0_WREADY => m_axi_gmem_0_WREADY,
      m_axi_gmem_0_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_gmem_0_BRESP => m_axi_gmem_0_BRESP,
      m_axi_gmem_0_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_gmem_0_BVALID => m_axi_gmem_0_BVALID,
      m_axi_gmem_0_BREADY => m_axi_gmem_0_BREADY,
      m_axi_gmem_0_ARADDR => m_axi_gmem_0_ARADDR,
      m_axi_gmem_0_ARLEN => m_axi_gmem_0_ARLEN,
      m_axi_gmem_0_ARSIZE => m_axi_gmem_0_ARSIZE,
      m_axi_gmem_0_ARBURST => m_axi_gmem_0_ARBURST,
      m_axi_gmem_0_ARLOCK => m_axi_gmem_0_ARLOCK,
      m_axi_gmem_0_ARREGION => m_axi_gmem_0_ARREGION,
      m_axi_gmem_0_ARCACHE => m_axi_gmem_0_ARCACHE,
      m_axi_gmem_0_ARPROT => m_axi_gmem_0_ARPROT,
      m_axi_gmem_0_ARQOS => m_axi_gmem_0_ARQOS,
      m_axi_gmem_0_ARVALID => m_axi_gmem_0_ARVALID,
      m_axi_gmem_0_ARREADY => m_axi_gmem_0_ARREADY,
      m_axi_gmem_0_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_gmem_0_RDATA => m_axi_gmem_0_RDATA,
      m_axi_gmem_0_RRESP => m_axi_gmem_0_RRESP,
      m_axi_gmem_0_RLAST => m_axi_gmem_0_RLAST,
      m_axi_gmem_0_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_gmem_0_RVALID => m_axi_gmem_0_RVALID,
      m_axi_gmem_0_RREADY => m_axi_gmem_0_RREADY,
      m_axi_gmem_1_AWADDR => m_axi_gmem_1_AWADDR,
      m_axi_gmem_1_AWLEN => m_axi_gmem_1_AWLEN,
      m_axi_gmem_1_AWSIZE => m_axi_gmem_1_AWSIZE,
      m_axi_gmem_1_AWBURST => m_axi_gmem_1_AWBURST,
      m_axi_gmem_1_AWLOCK => m_axi_gmem_1_AWLOCK,
      m_axi_gmem_1_AWREGION => m_axi_gmem_1_AWREGION,
      m_axi_gmem_1_AWCACHE => m_axi_gmem_1_AWCACHE,
      m_axi_gmem_1_AWPROT => m_axi_gmem_1_AWPROT,
      m_axi_gmem_1_AWQOS => m_axi_gmem_1_AWQOS,
      m_axi_gmem_1_AWVALID => m_axi_gmem_1_AWVALID,
      m_axi_gmem_1_AWREADY => m_axi_gmem_1_AWREADY,
      m_axi_gmem_1_WDATA => m_axi_gmem_1_WDATA,
      m_axi_gmem_1_WSTRB => m_axi_gmem_1_WSTRB,
      m_axi_gmem_1_WLAST => m_axi_gmem_1_WLAST,
      m_axi_gmem_1_WVALID => m_axi_gmem_1_WVALID,
      m_axi_gmem_1_WREADY => m_axi_gmem_1_WREADY,
      m_axi_gmem_1_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_gmem_1_BRESP => m_axi_gmem_1_BRESP,
      m_axi_gmem_1_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_gmem_1_BVALID => m_axi_gmem_1_BVALID,
      m_axi_gmem_1_BREADY => m_axi_gmem_1_BREADY,
      m_axi_gmem_1_ARADDR => m_axi_gmem_1_ARADDR,
      m_axi_gmem_1_ARLEN => m_axi_gmem_1_ARLEN,
      m_axi_gmem_1_ARSIZE => m_axi_gmem_1_ARSIZE,
      m_axi_gmem_1_ARBURST => m_axi_gmem_1_ARBURST,
      m_axi_gmem_1_ARLOCK => m_axi_gmem_1_ARLOCK,
      m_axi_gmem_1_ARREGION => m_axi_gmem_1_ARREGION,
      m_axi_gmem_1_ARCACHE => m_axi_gmem_1_ARCACHE,
      m_axi_gmem_1_ARPROT => m_axi_gmem_1_ARPROT,
      m_axi_gmem_1_ARQOS => m_axi_gmem_1_ARQOS,
      m_axi_gmem_1_ARVALID => m_axi_gmem_1_ARVALID,
      m_axi_gmem_1_ARREADY => m_axi_gmem_1_ARREADY,
      m_axi_gmem_1_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_gmem_1_RDATA => m_axi_gmem_1_RDATA,
      m_axi_gmem_1_RRESP => m_axi_gmem_1_RRESP,
      m_axi_gmem_1_RLAST => m_axi_gmem_1_RLAST,
      m_axi_gmem_1_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_gmem_1_RVALID => m_axi_gmem_1_RVALID,
      m_axi_gmem_1_RREADY => m_axi_gmem_1_RREADY,
      values => values,
      col_indices => col_indices,
      row_indices => row_indices,
      x => x,
      y => y,
      n => n,
      m => m,
      nnz => nnz
    );
END design_1_spmv_kernel_0_0_arch;
