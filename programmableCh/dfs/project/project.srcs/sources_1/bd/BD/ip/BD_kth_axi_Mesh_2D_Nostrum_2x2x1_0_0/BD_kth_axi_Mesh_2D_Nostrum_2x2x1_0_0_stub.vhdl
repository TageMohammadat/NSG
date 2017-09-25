-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
-- Date        : Mon May 22 11:38:28 2017
-- Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0/BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0_stub.vhdl
-- Design      : BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0 is
  Port ( 
    NoC_Irq_0 : out STD_LOGIC;
    S_AXI_0_ACLK : in STD_LOGIC;
    S_AXI_0_ARESETN : in STD_LOGIC;
    S_AXI_0_AWADDR : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_0_AWVALID : in STD_LOGIC;
    S_AXI_0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_0_WVALID : in STD_LOGIC;
    S_AXI_0_BREADY : in STD_LOGIC;
    S_AXI_0_ARADDR : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_ARVALID : in STD_LOGIC;
    S_AXI_0_RREADY : in STD_LOGIC;
    S_AXI_0_ARREADY : out STD_LOGIC;
    S_AXI_0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_0_RVALID : out STD_LOGIC;
    S_AXI_0_WREADY : out STD_LOGIC;
    S_AXI_0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_0_BVALID : out STD_LOGIC;
    S_AXI_0_AWREADY : out STD_LOGIC;
    NoC_Irq_1 : out STD_LOGIC;
    S_AXI_1_ACLK : in STD_LOGIC;
    S_AXI_1_ARESETN : in STD_LOGIC;
    S_AXI_1_AWADDR : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_1_AWVALID : in STD_LOGIC;
    S_AXI_1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_1_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_1_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_1_WVALID : in STD_LOGIC;
    S_AXI_1_BREADY : in STD_LOGIC;
    S_AXI_1_ARADDR : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_1_ARVALID : in STD_LOGIC;
    S_AXI_1_RREADY : in STD_LOGIC;
    S_AXI_1_ARREADY : out STD_LOGIC;
    S_AXI_1_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_1_RVALID : out STD_LOGIC;
    S_AXI_1_WREADY : out STD_LOGIC;
    S_AXI_1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_1_BVALID : out STD_LOGIC;
    S_AXI_1_AWREADY : out STD_LOGIC;
    NoC_Irq_2 : out STD_LOGIC;
    S_AXI_2_ACLK : in STD_LOGIC;
    S_AXI_2_ARESETN : in STD_LOGIC;
    S_AXI_2_AWADDR : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_2_AWVALID : in STD_LOGIC;
    S_AXI_2_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_2_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_2_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_2_WVALID : in STD_LOGIC;
    S_AXI_2_BREADY : in STD_LOGIC;
    S_AXI_2_ARADDR : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_2_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_2_ARVALID : in STD_LOGIC;
    S_AXI_2_RREADY : in STD_LOGIC;
    S_AXI_2_ARREADY : out STD_LOGIC;
    S_AXI_2_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_2_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_2_RVALID : out STD_LOGIC;
    S_AXI_2_WREADY : out STD_LOGIC;
    S_AXI_2_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_2_BVALID : out STD_LOGIC;
    S_AXI_2_AWREADY : out STD_LOGIC;
    NoC_Irq_3 : out STD_LOGIC;
    S_AXI_3_ACLK : in STD_LOGIC;
    S_AXI_3_ARESETN : in STD_LOGIC;
    S_AXI_3_AWADDR : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_3_AWVALID : in STD_LOGIC;
    S_AXI_3_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_3_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_3_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_3_WVALID : in STD_LOGIC;
    S_AXI_3_BREADY : in STD_LOGIC;
    S_AXI_3_ARADDR : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_AXI_3_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_3_ARVALID : in STD_LOGIC;
    S_AXI_3_RREADY : in STD_LOGIC;
    S_AXI_3_ARREADY : out STD_LOGIC;
    S_AXI_3_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_3_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_3_RVALID : out STD_LOGIC;
    S_AXI_3_WREADY : out STD_LOGIC;
    S_AXI_3_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_3_BVALID : out STD_LOGIC;
    S_AXI_3_AWREADY : out STD_LOGIC
  );

end BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0;

architecture stub of BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "NoC_Irq_0,S_AXI_0_ACLK,S_AXI_0_ARESETN,S_AXI_0_AWADDR[16:0],S_AXI_0_AWVALID,S_AXI_0_AWPROT[2:0],S_AXI_0_WDATA[31:0],S_AXI_0_WSTRB[3:0],S_AXI_0_WVALID,S_AXI_0_BREADY,S_AXI_0_ARADDR[16:0],S_AXI_0_ARPROT[2:0],S_AXI_0_ARVALID,S_AXI_0_RREADY,S_AXI_0_ARREADY,S_AXI_0_RDATA[31:0],S_AXI_0_RRESP[1:0],S_AXI_0_RVALID,S_AXI_0_WREADY,S_AXI_0_BRESP[1:0],S_AXI_0_BVALID,S_AXI_0_AWREADY,NoC_Irq_1,S_AXI_1_ACLK,S_AXI_1_ARESETN,S_AXI_1_AWADDR[16:0],S_AXI_1_AWVALID,S_AXI_1_AWPROT[2:0],S_AXI_1_WDATA[31:0],S_AXI_1_WSTRB[3:0],S_AXI_1_WVALID,S_AXI_1_BREADY,S_AXI_1_ARADDR[16:0],S_AXI_1_ARPROT[2:0],S_AXI_1_ARVALID,S_AXI_1_RREADY,S_AXI_1_ARREADY,S_AXI_1_RDATA[31:0],S_AXI_1_RRESP[1:0],S_AXI_1_RVALID,S_AXI_1_WREADY,S_AXI_1_BRESP[1:0],S_AXI_1_BVALID,S_AXI_1_AWREADY,NoC_Irq_2,S_AXI_2_ACLK,S_AXI_2_ARESETN,S_AXI_2_AWADDR[16:0],S_AXI_2_AWVALID,S_AXI_2_AWPROT[2:0],S_AXI_2_WDATA[31:0],S_AXI_2_WSTRB[3:0],S_AXI_2_WVALID,S_AXI_2_BREADY,S_AXI_2_ARADDR[16:0],S_AXI_2_ARPROT[2:0],S_AXI_2_ARVALID,S_AXI_2_RREADY,S_AXI_2_ARREADY,S_AXI_2_RDATA[31:0],S_AXI_2_RRESP[1:0],S_AXI_2_RVALID,S_AXI_2_WREADY,S_AXI_2_BRESP[1:0],S_AXI_2_BVALID,S_AXI_2_AWREADY,NoC_Irq_3,S_AXI_3_ACLK,S_AXI_3_ARESETN,S_AXI_3_AWADDR[16:0],S_AXI_3_AWVALID,S_AXI_3_AWPROT[2:0],S_AXI_3_WDATA[31:0],S_AXI_3_WSTRB[3:0],S_AXI_3_WVALID,S_AXI_3_BREADY,S_AXI_3_ARADDR[16:0],S_AXI_3_ARPROT[2:0],S_AXI_3_ARVALID,S_AXI_3_RREADY,S_AXI_3_ARREADY,S_AXI_3_RDATA[31:0],S_AXI_3_RRESP[1:0],S_AXI_3_RVALID,S_AXI_3_WREADY,S_AXI_3_BRESP[1:0],S_AXI_3_BVALID,S_AXI_3_AWREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "kth_axi_Mesh_2D_Nostrum_2x2x1,Vivado 2016.3";
begin
end;
