-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon Aug 14 15:11:30 2023
-- Host        : tinas-desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_spmv_kernel_0_0_stub.vhdl
-- Design      : design_1_spmv_kernel_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    m_axi_gmem_0_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_0_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_0_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_0_AWVALID : out STD_LOGIC;
    m_axi_gmem_0_AWREADY : in STD_LOGIC;
    m_axi_gmem_0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_0_WLAST : out STD_LOGIC;
    m_axi_gmem_0_WVALID : out STD_LOGIC;
    m_axi_gmem_0_WREADY : in STD_LOGIC;
    m_axi_gmem_0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_0_BVALID : in STD_LOGIC;
    m_axi_gmem_0_BREADY : out STD_LOGIC;
    m_axi_gmem_0_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_0_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_0_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_0_ARVALID : out STD_LOGIC;
    m_axi_gmem_0_ARREADY : in STD_LOGIC;
    m_axi_gmem_0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_0_RLAST : in STD_LOGIC;
    m_axi_gmem_0_RVALID : in STD_LOGIC;
    m_axi_gmem_0_RREADY : out STD_LOGIC;
    m_axi_gmem_1_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_1_AWVALID : out STD_LOGIC;
    m_axi_gmem_1_AWREADY : in STD_LOGIC;
    m_axi_gmem_1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_1_WLAST : out STD_LOGIC;
    m_axi_gmem_1_WVALID : out STD_LOGIC;
    m_axi_gmem_1_WREADY : in STD_LOGIC;
    m_axi_gmem_1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_1_BVALID : in STD_LOGIC;
    m_axi_gmem_1_BREADY : out STD_LOGIC;
    m_axi_gmem_1_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_1_ARVALID : out STD_LOGIC;
    m_axi_gmem_1_ARREADY : in STD_LOGIC;
    m_axi_gmem_1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_1_RLAST : in STD_LOGIC;
    m_axi_gmem_1_RVALID : in STD_LOGIC;
    m_axi_gmem_1_RREADY : out STD_LOGIC;
    values : in STD_LOGIC_VECTOR ( 63 downto 0 );
    col_indices : in STD_LOGIC_VECTOR ( 63 downto 0 );
    row_indices : in STD_LOGIC_VECTOR ( 63 downto 0 );
    x : in STD_LOGIC_VECTOR ( 63 downto 0 );
    y : in STD_LOGIC_VECTOR ( 63 downto 0 );
    n : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m : in STD_LOGIC_VECTOR ( 31 downto 0 );
    nnz : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,m_axi_gmem_0_AWADDR[63:0],m_axi_gmem_0_AWLEN[7:0],m_axi_gmem_0_AWSIZE[2:0],m_axi_gmem_0_AWBURST[1:0],m_axi_gmem_0_AWLOCK[1:0],m_axi_gmem_0_AWREGION[3:0],m_axi_gmem_0_AWCACHE[3:0],m_axi_gmem_0_AWPROT[2:0],m_axi_gmem_0_AWQOS[3:0],m_axi_gmem_0_AWVALID,m_axi_gmem_0_AWREADY,m_axi_gmem_0_WDATA[31:0],m_axi_gmem_0_WSTRB[3:0],m_axi_gmem_0_WLAST,m_axi_gmem_0_WVALID,m_axi_gmem_0_WREADY,m_axi_gmem_0_BRESP[1:0],m_axi_gmem_0_BVALID,m_axi_gmem_0_BREADY,m_axi_gmem_0_ARADDR[63:0],m_axi_gmem_0_ARLEN[7:0],m_axi_gmem_0_ARSIZE[2:0],m_axi_gmem_0_ARBURST[1:0],m_axi_gmem_0_ARLOCK[1:0],m_axi_gmem_0_ARREGION[3:0],m_axi_gmem_0_ARCACHE[3:0],m_axi_gmem_0_ARPROT[2:0],m_axi_gmem_0_ARQOS[3:0],m_axi_gmem_0_ARVALID,m_axi_gmem_0_ARREADY,m_axi_gmem_0_RDATA[31:0],m_axi_gmem_0_RRESP[1:0],m_axi_gmem_0_RLAST,m_axi_gmem_0_RVALID,m_axi_gmem_0_RREADY,m_axi_gmem_1_AWADDR[63:0],m_axi_gmem_1_AWLEN[7:0],m_axi_gmem_1_AWSIZE[2:0],m_axi_gmem_1_AWBURST[1:0],m_axi_gmem_1_AWLOCK[1:0],m_axi_gmem_1_AWREGION[3:0],m_axi_gmem_1_AWCACHE[3:0],m_axi_gmem_1_AWPROT[2:0],m_axi_gmem_1_AWQOS[3:0],m_axi_gmem_1_AWVALID,m_axi_gmem_1_AWREADY,m_axi_gmem_1_WDATA[31:0],m_axi_gmem_1_WSTRB[3:0],m_axi_gmem_1_WLAST,m_axi_gmem_1_WVALID,m_axi_gmem_1_WREADY,m_axi_gmem_1_BRESP[1:0],m_axi_gmem_1_BVALID,m_axi_gmem_1_BREADY,m_axi_gmem_1_ARADDR[63:0],m_axi_gmem_1_ARLEN[7:0],m_axi_gmem_1_ARSIZE[2:0],m_axi_gmem_1_ARBURST[1:0],m_axi_gmem_1_ARLOCK[1:0],m_axi_gmem_1_ARREGION[3:0],m_axi_gmem_1_ARCACHE[3:0],m_axi_gmem_1_ARPROT[2:0],m_axi_gmem_1_ARQOS[3:0],m_axi_gmem_1_ARVALID,m_axi_gmem_1_ARREADY,m_axi_gmem_1_RDATA[31:0],m_axi_gmem_1_RRESP[1:0],m_axi_gmem_1_RLAST,m_axi_gmem_1_RVALID,m_axi_gmem_1_RREADY,values[63:0],col_indices[63:0],row_indices[63:0],x[63:0],y[63:0],n[31:0],m[31:0],nnz[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "spmv_kernel,Vivado 2020.1";
begin
end;
