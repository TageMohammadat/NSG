// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
// Date        : Mon May 22 11:38:26 2017
// Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0_stub.v
// Design      : BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "kth_axi_Mesh_2D_Nostrum_2x2x1,Vivado 2016.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(NoC_Irq_0, S_AXI_0_ACLK, S_AXI_0_ARESETN, 
  S_AXI_0_AWADDR, S_AXI_0_AWVALID, S_AXI_0_AWPROT, S_AXI_0_WDATA, S_AXI_0_WSTRB, 
  S_AXI_0_WVALID, S_AXI_0_BREADY, S_AXI_0_ARADDR, S_AXI_0_ARPROT, S_AXI_0_ARVALID, 
  S_AXI_0_RREADY, S_AXI_0_ARREADY, S_AXI_0_RDATA, S_AXI_0_RRESP, S_AXI_0_RVALID, 
  S_AXI_0_WREADY, S_AXI_0_BRESP, S_AXI_0_BVALID, S_AXI_0_AWREADY, NoC_Irq_1, S_AXI_1_ACLK, 
  S_AXI_1_ARESETN, S_AXI_1_AWADDR, S_AXI_1_AWVALID, S_AXI_1_AWPROT, S_AXI_1_WDATA, 
  S_AXI_1_WSTRB, S_AXI_1_WVALID, S_AXI_1_BREADY, S_AXI_1_ARADDR, S_AXI_1_ARPROT, 
  S_AXI_1_ARVALID, S_AXI_1_RREADY, S_AXI_1_ARREADY, S_AXI_1_RDATA, S_AXI_1_RRESP, 
  S_AXI_1_RVALID, S_AXI_1_WREADY, S_AXI_1_BRESP, S_AXI_1_BVALID, S_AXI_1_AWREADY, NoC_Irq_2, 
  S_AXI_2_ACLK, S_AXI_2_ARESETN, S_AXI_2_AWADDR, S_AXI_2_AWVALID, S_AXI_2_AWPROT, 
  S_AXI_2_WDATA, S_AXI_2_WSTRB, S_AXI_2_WVALID, S_AXI_2_BREADY, S_AXI_2_ARADDR, 
  S_AXI_2_ARPROT, S_AXI_2_ARVALID, S_AXI_2_RREADY, S_AXI_2_ARREADY, S_AXI_2_RDATA, 
  S_AXI_2_RRESP, S_AXI_2_RVALID, S_AXI_2_WREADY, S_AXI_2_BRESP, S_AXI_2_BVALID, 
  S_AXI_2_AWREADY, NoC_Irq_3, S_AXI_3_ACLK, S_AXI_3_ARESETN, S_AXI_3_AWADDR, S_AXI_3_AWVALID, 
  S_AXI_3_AWPROT, S_AXI_3_WDATA, S_AXI_3_WSTRB, S_AXI_3_WVALID, S_AXI_3_BREADY, 
  S_AXI_3_ARADDR, S_AXI_3_ARPROT, S_AXI_3_ARVALID, S_AXI_3_RREADY, S_AXI_3_ARREADY, 
  S_AXI_3_RDATA, S_AXI_3_RRESP, S_AXI_3_RVALID, S_AXI_3_WREADY, S_AXI_3_BRESP, 
  S_AXI_3_BVALID, S_AXI_3_AWREADY)
/* synthesis syn_black_box black_box_pad_pin="NoC_Irq_0,S_AXI_0_ACLK,S_AXI_0_ARESETN,S_AXI_0_AWADDR[16:0],S_AXI_0_AWVALID,S_AXI_0_AWPROT[2:0],S_AXI_0_WDATA[31:0],S_AXI_0_WSTRB[3:0],S_AXI_0_WVALID,S_AXI_0_BREADY,S_AXI_0_ARADDR[16:0],S_AXI_0_ARPROT[2:0],S_AXI_0_ARVALID,S_AXI_0_RREADY,S_AXI_0_ARREADY,S_AXI_0_RDATA[31:0],S_AXI_0_RRESP[1:0],S_AXI_0_RVALID,S_AXI_0_WREADY,S_AXI_0_BRESP[1:0],S_AXI_0_BVALID,S_AXI_0_AWREADY,NoC_Irq_1,S_AXI_1_ACLK,S_AXI_1_ARESETN,S_AXI_1_AWADDR[16:0],S_AXI_1_AWVALID,S_AXI_1_AWPROT[2:0],S_AXI_1_WDATA[31:0],S_AXI_1_WSTRB[3:0],S_AXI_1_WVALID,S_AXI_1_BREADY,S_AXI_1_ARADDR[16:0],S_AXI_1_ARPROT[2:0],S_AXI_1_ARVALID,S_AXI_1_RREADY,S_AXI_1_ARREADY,S_AXI_1_RDATA[31:0],S_AXI_1_RRESP[1:0],S_AXI_1_RVALID,S_AXI_1_WREADY,S_AXI_1_BRESP[1:0],S_AXI_1_BVALID,S_AXI_1_AWREADY,NoC_Irq_2,S_AXI_2_ACLK,S_AXI_2_ARESETN,S_AXI_2_AWADDR[16:0],S_AXI_2_AWVALID,S_AXI_2_AWPROT[2:0],S_AXI_2_WDATA[31:0],S_AXI_2_WSTRB[3:0],S_AXI_2_WVALID,S_AXI_2_BREADY,S_AXI_2_ARADDR[16:0],S_AXI_2_ARPROT[2:0],S_AXI_2_ARVALID,S_AXI_2_RREADY,S_AXI_2_ARREADY,S_AXI_2_RDATA[31:0],S_AXI_2_RRESP[1:0],S_AXI_2_RVALID,S_AXI_2_WREADY,S_AXI_2_BRESP[1:0],S_AXI_2_BVALID,S_AXI_2_AWREADY,NoC_Irq_3,S_AXI_3_ACLK,S_AXI_3_ARESETN,S_AXI_3_AWADDR[16:0],S_AXI_3_AWVALID,S_AXI_3_AWPROT[2:0],S_AXI_3_WDATA[31:0],S_AXI_3_WSTRB[3:0],S_AXI_3_WVALID,S_AXI_3_BREADY,S_AXI_3_ARADDR[16:0],S_AXI_3_ARPROT[2:0],S_AXI_3_ARVALID,S_AXI_3_RREADY,S_AXI_3_ARREADY,S_AXI_3_RDATA[31:0],S_AXI_3_RRESP[1:0],S_AXI_3_RVALID,S_AXI_3_WREADY,S_AXI_3_BRESP[1:0],S_AXI_3_BVALID,S_AXI_3_AWREADY" */;
  output NoC_Irq_0;
  input S_AXI_0_ACLK;
  input S_AXI_0_ARESETN;
  input [16:0]S_AXI_0_AWADDR;
  input S_AXI_0_AWVALID;
  input [2:0]S_AXI_0_AWPROT;
  input [31:0]S_AXI_0_WDATA;
  input [3:0]S_AXI_0_WSTRB;
  input S_AXI_0_WVALID;
  input S_AXI_0_BREADY;
  input [16:0]S_AXI_0_ARADDR;
  input [2:0]S_AXI_0_ARPROT;
  input S_AXI_0_ARVALID;
  input S_AXI_0_RREADY;
  output S_AXI_0_ARREADY;
  output [31:0]S_AXI_0_RDATA;
  output [1:0]S_AXI_0_RRESP;
  output S_AXI_0_RVALID;
  output S_AXI_0_WREADY;
  output [1:0]S_AXI_0_BRESP;
  output S_AXI_0_BVALID;
  output S_AXI_0_AWREADY;
  output NoC_Irq_1;
  input S_AXI_1_ACLK;
  input S_AXI_1_ARESETN;
  input [16:0]S_AXI_1_AWADDR;
  input S_AXI_1_AWVALID;
  input [2:0]S_AXI_1_AWPROT;
  input [31:0]S_AXI_1_WDATA;
  input [3:0]S_AXI_1_WSTRB;
  input S_AXI_1_WVALID;
  input S_AXI_1_BREADY;
  input [16:0]S_AXI_1_ARADDR;
  input [2:0]S_AXI_1_ARPROT;
  input S_AXI_1_ARVALID;
  input S_AXI_1_RREADY;
  output S_AXI_1_ARREADY;
  output [31:0]S_AXI_1_RDATA;
  output [1:0]S_AXI_1_RRESP;
  output S_AXI_1_RVALID;
  output S_AXI_1_WREADY;
  output [1:0]S_AXI_1_BRESP;
  output S_AXI_1_BVALID;
  output S_AXI_1_AWREADY;
  output NoC_Irq_2;
  input S_AXI_2_ACLK;
  input S_AXI_2_ARESETN;
  input [16:0]S_AXI_2_AWADDR;
  input S_AXI_2_AWVALID;
  input [2:0]S_AXI_2_AWPROT;
  input [31:0]S_AXI_2_WDATA;
  input [3:0]S_AXI_2_WSTRB;
  input S_AXI_2_WVALID;
  input S_AXI_2_BREADY;
  input [16:0]S_AXI_2_ARADDR;
  input [2:0]S_AXI_2_ARPROT;
  input S_AXI_2_ARVALID;
  input S_AXI_2_RREADY;
  output S_AXI_2_ARREADY;
  output [31:0]S_AXI_2_RDATA;
  output [1:0]S_AXI_2_RRESP;
  output S_AXI_2_RVALID;
  output S_AXI_2_WREADY;
  output [1:0]S_AXI_2_BRESP;
  output S_AXI_2_BVALID;
  output S_AXI_2_AWREADY;
  output NoC_Irq_3;
  input S_AXI_3_ACLK;
  input S_AXI_3_ARESETN;
  input [16:0]S_AXI_3_AWADDR;
  input S_AXI_3_AWVALID;
  input [2:0]S_AXI_3_AWPROT;
  input [31:0]S_AXI_3_WDATA;
  input [3:0]S_AXI_3_WSTRB;
  input S_AXI_3_WVALID;
  input S_AXI_3_BREADY;
  input [16:0]S_AXI_3_ARADDR;
  input [2:0]S_AXI_3_ARPROT;
  input S_AXI_3_ARVALID;
  input S_AXI_3_RREADY;
  output S_AXI_3_ARREADY;
  output [31:0]S_AXI_3_RDATA;
  output [1:0]S_AXI_3_RRESP;
  output S_AXI_3_RVALID;
  output S_AXI_3_WREADY;
  output [1:0]S_AXI_3_BRESP;
  output S_AXI_3_BVALID;
  output S_AXI_3_AWREADY;
endmodule
