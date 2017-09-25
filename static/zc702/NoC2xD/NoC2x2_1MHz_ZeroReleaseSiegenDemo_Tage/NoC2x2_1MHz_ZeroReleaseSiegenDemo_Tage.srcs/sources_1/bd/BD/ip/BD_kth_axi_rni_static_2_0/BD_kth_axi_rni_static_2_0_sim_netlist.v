// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
// Date        : Mon Oct 31 17:13:41 2016
// Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tage/DegreeProject/zc702/NoC2xD/NoC2x2_1MHz_ZeroReleaseSiegenDemo_Tage/NoC2x2_1MHz_ZeroReleaseSiegenDemo_Tage.srcs/sources_1/bd/BD/ip/BD_kth_axi_rni_static_2_0/BD_kth_axi_rni_static_2_0_sim_netlist.v
// Design      : BD_kth_axi_rni_static_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BD_kth_axi_rni_static_2_0,kth_axi_rni_static_c1_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "kth_axi_rni_static_c1_v1_0,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module BD_kth_axi_rni_static_2_0
   (TO_NOC,
    FROM_NOC,
    Sync,
    HeartBeat,
    NoC_IRQ,
    dap_address,
    dap_readdata,
    dap_writedata,
    dap_read,
    dap_write,
    dap_byteenable,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    S_AXI_ACLK,
    S_AXI_ARESETN);
  output [55:0]TO_NOC;
  input [55:0]FROM_NOC;
  input [1:0]Sync;
  input HeartBeat;
  output NoC_IRQ;
  input [14:0]dap_address;
  output [63:0]dap_readdata;
  input [63:0]dap_writedata;
  input dap_read;
  input dap_write;
  input [7:0]dap_byteenable;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  (* max_fanout = "10000" *) (* sigis = "Clk" *) (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *) input S_AXI_ACLK;
  (* max_fanout = "10000" *) (* sigis = "Rst" *) (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) input S_AXI_ARESETN;

  wire \<const0> ;
  wire [55:0]FROM_NOC;
  wire HeartBeat;
  wire NoC_IRQ;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Clk" *) wire S_AXI_ACLK;
  wire [31:0]S_AXI_ARADDR;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) (* sigis = "Rst" *) wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [31:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [1:0]Sync;
  wire [55:0]\^TO_NOC ;
  wire [14:0]dap_address;
  wire dap_read;
  wire [31:0]\^dap_readdata ;
  wire dap_write;
  wire [63:0]dap_writedata;

  assign S_AXI_AWREADY = S_AXI_WREADY;
  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign TO_NOC[55:42] = \^TO_NOC [55:42];
  assign TO_NOC[41] = \<const0> ;
  assign TO_NOC[40] = \<const0> ;
  assign TO_NOC[39] = \<const0> ;
  assign TO_NOC[38] = \<const0> ;
  assign TO_NOC[37] = \<const0> ;
  assign TO_NOC[36] = \^TO_NOC [36];
  assign TO_NOC[35] = \<const0> ;
  assign TO_NOC[34] = \^TO_NOC [34];
  assign TO_NOC[33] = \<const0> ;
  assign TO_NOC[32] = \<const0> ;
  assign TO_NOC[31:0] = \^TO_NOC [31:0];
  assign dap_readdata[63] = \<const0> ;
  assign dap_readdata[62] = \<const0> ;
  assign dap_readdata[61] = \<const0> ;
  assign dap_readdata[60] = \<const0> ;
  assign dap_readdata[59] = \<const0> ;
  assign dap_readdata[58] = \<const0> ;
  assign dap_readdata[57] = \<const0> ;
  assign dap_readdata[56] = \<const0> ;
  assign dap_readdata[55] = \<const0> ;
  assign dap_readdata[54] = \<const0> ;
  assign dap_readdata[53] = \<const0> ;
  assign dap_readdata[52] = \<const0> ;
  assign dap_readdata[51] = \<const0> ;
  assign dap_readdata[50] = \<const0> ;
  assign dap_readdata[49] = \<const0> ;
  assign dap_readdata[48] = \<const0> ;
  assign dap_readdata[47] = \<const0> ;
  assign dap_readdata[46] = \<const0> ;
  assign dap_readdata[45] = \<const0> ;
  assign dap_readdata[44] = \<const0> ;
  assign dap_readdata[43] = \<const0> ;
  assign dap_readdata[42] = \<const0> ;
  assign dap_readdata[41] = \<const0> ;
  assign dap_readdata[40] = \<const0> ;
  assign dap_readdata[39] = \<const0> ;
  assign dap_readdata[38] = \<const0> ;
  assign dap_readdata[37] = \<const0> ;
  assign dap_readdata[36] = \<const0> ;
  assign dap_readdata[35] = \<const0> ;
  assign dap_readdata[34] = \<const0> ;
  assign dap_readdata[33] = \<const0> ;
  assign dap_readdata[32] = \<const0> ;
  assign dap_readdata[31:0] = \^dap_readdata [31:0];
  GND GND
       (.G(\<const0> ));
  BD_kth_axi_rni_static_2_0_kth_axi_rni_static_c1_v1_0 U0
       (.FROM_NOC({FROM_NOC[55:44],FROM_NOC[31:0]}),
        .HeartBeat(HeartBeat),
        .NoC_IRQ(NoC_IRQ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[16:15],S_AXI_ARADDR[8:2]}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[16:15],S_AXI_AWADDR[8:2]}),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .Sync(Sync),
        .TO_NOC({\^TO_NOC [55:42],\^TO_NOC [36],\^TO_NOC [34],\^TO_NOC [31:0]}),
        .dap_address({dap_address[14:13],dap_address[6:0]}),
        .dap_read(dap_read),
        .dap_readdata(\^dap_readdata ),
        .dap_write(dap_write),
        .dap_writedata(dap_writedata[31:0]));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module BD_kth_axi_rni_static_2_0_address_decoder
   (D,
    \rni_readdata_delayed_reg[10] ,
    \state_reg[1] ,
    S_AXI_ARREADY,
    dap_rni_select_reg,
    ipif_Bus2IP_RdCE,
    S_AXI_WREADY,
    WEA,
    RAM_reg,
    RAM_reg_0,
    p_8_in,
    E,
    \command_reg_reg[0] ,
    synchronize_flag_reg,
    \interrupt_reg_reg[0] ,
    RAM_reg_1,
    \s_axi_rdata_i_reg[31] ,
    p_7_in,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    S_AXI_ACLK,
    old_slave_read,
    S_AXI_ARESETN,
    Q,
    \state_reg[1]_0 ,
    S_AXI_ARVALID,
    S_AXI_AWVALID_0,
    s_axi_rvalid_i_reg_0,
    \S_AXI_AWADDR[6] ,
    dap_read,
    dap_write,
    \S_AXI_AWADDR[8] ,
    \S_AXI_AWADDR[3] ,
    \S_AXI_AWADDR[2] ,
    dap_address,
    dap_read_0,
    S_AXI_AWADDR,
    S_AXI_ARADDR,
    p_1_out,
    p_3_out,
    \dap_address[13] ,
    \S_AXI_AWADDR[16] ,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_RVALID,
    S_AXI_BREADY,
    S_AXI_BVALID);
  output [21:0]D;
  output \rni_readdata_delayed_reg[10] ;
  output [1:0]\state_reg[1] ;
  output S_AXI_ARREADY;
  output dap_rni_select_reg;
  output ipif_Bus2IP_RdCE;
  output S_AXI_WREADY;
  output [0:0]WEA;
  output RAM_reg;
  output [0:0]RAM_reg_0;
  output p_8_in;
  output [0:0]E;
  output \command_reg_reg[0] ;
  output synchronize_flag_reg;
  output \interrupt_reg_reg[0] ;
  output RAM_reg_1;
  output [21:0]\s_axi_rdata_i_reg[31] ;
  output p_7_in;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  input S_AXI_ACLK;
  input old_slave_read;
  input S_AXI_ARESETN;
  input [0:0]Q;
  input [1:0]\state_reg[1]_0 ;
  input S_AXI_ARVALID;
  input S_AXI_AWVALID_0;
  input s_axi_rvalid_i_reg_0;
  input \S_AXI_AWADDR[6] ;
  input dap_read;
  input dap_write;
  input \S_AXI_AWADDR[8] ;
  input \S_AXI_AWADDR[3] ;
  input \S_AXI_AWADDR[2] ;
  input [1:0]dap_address;
  input dap_read_0;
  input [1:0]S_AXI_AWADDR;
  input [1:0]S_AXI_ARADDR;
  input [21:0]p_1_out;
  input [21:0]p_3_out;
  input \dap_address[13] ;
  input \S_AXI_AWADDR[16] ;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_RVALID;
  input S_AXI_BREADY;
  input S_AXI_BVALID;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire [21:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire [0:0]Q;
  wire RAM_reg;
  wire [0:0]RAM_reg_0;
  wire RAM_reg_1;
  wire S_AXI_ACLK;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire \S_AXI_AWADDR[16] ;
  wire \S_AXI_AWADDR[2] ;
  wire \S_AXI_AWADDR[3] ;
  wire \S_AXI_AWADDR[6] ;
  wire \S_AXI_AWADDR[8] ;
  wire S_AXI_AWVALID;
  wire S_AXI_AWVALID_0;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [0:0]WEA;
  wire ce_out_i;
  wire \command_reg_reg[0] ;
  wire cs_ce_clr;
  wire [1:0]dap_address;
  wire \dap_address[13] ;
  wire dap_read;
  wire dap_read_0;
  wire dap_rni_select_reg;
  wire dap_write;
  wire \interrupt_reg_reg[0] ;
  wire ipif_Bus2IP_CS;
  wire ipif_Bus2IP_RdCE;
  wire old_slave_read;
  wire [21:0]p_1_out;
  wire [21:0]p_3_out;
  wire p_7_in;
  wire p_8_in;
  wire \rni_readdata_delayed_reg[10] ;
  wire s_axi_bvalid_i_reg;
  wire [21:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rvalid_i0;
  wire s_axi_rvalid_i_reg;
  wire s_axi_rvalid_i_reg_0;
  wire start;
  wire [1:0]\state_reg[1] ;
  wire [1:0]\state_reg[1]_0 ;
  wire synchronize_flag_reg;

  LUT6 #(
    .INIT(64'hFFFFEFFF11110000)) 
    Bus_RNW_reg_i_1
       (.I0(\state_reg[1]_0 [1]),
        .I1(\state_reg[1]_0 [0]),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_ARVALID),
        .I5(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000A000000CA0000)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(start),
        .I1(Bus_RNW_reg),
        .I2(ce_out_i),
        .I3(Q),
        .I4(S_AXI_ARESETN),
        .I5(old_slave_read),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(ce_out_i),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(ipif_Bus2IP_CS),
        .I1(start),
        .I2(cs_ce_clr),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11111000)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_2 
       (.I0(\state_reg[1]_0 [1]),
        .I1(\state_reg[1]_0 [0]),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_ARVALID),
        .O(start));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFBF3FFF3)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_3 
       (.I0(old_slave_read),
        .I1(S_AXI_ARESETN),
        .I2(Q),
        .I3(ce_out_i),
        .I4(Bus_RNW_reg),
        .O(cs_ce_clr));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(ipif_Bus2IP_CS),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    RAM_reg_i_1__0
       (.I0(dap_address[0]),
        .I1(dap_read_0),
        .I2(S_AXI_AWADDR[0]),
        .I3(S_AXI_ARVALID),
        .I4(S_AXI_ARADDR[0]),
        .I5(RAM_reg_1),
        .O(p_8_in));
  LUT6 #(
    .INIT(64'hB8BBB88888888888)) 
    RAM_reg_i_1__1
       (.I0(dap_address[1]),
        .I1(dap_read_0),
        .I2(S_AXI_ARADDR[1]),
        .I3(S_AXI_ARVALID),
        .I4(S_AXI_AWADDR[1]),
        .I5(ipif_Bus2IP_CS),
        .O(p_7_in));
  LUT5 #(
    .INIT(32'h88888A88)) 
    RAM_reg_i_22
       (.I0(p_8_in),
        .I1(dap_write),
        .I2(dap_read),
        .I3(ce_out_i),
        .I4(Bus_RNW_reg),
        .O(RAM_reg_0));
  LUT5 #(
    .INIT(32'h0000AABA)) 
    RAM_reg_i_3
       (.I0(dap_write),
        .I1(dap_read),
        .I2(ce_out_i),
        .I3(Bus_RNW_reg),
        .I4(RAM_reg),
        .O(WEA));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    S_AXI_ARREADY_INST_0
       (.I0(Q),
        .I1(Bus_RNW_reg),
        .I2(ce_out_i),
        .I3(old_slave_read),
        .O(S_AXI_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    S_AXI_WREADY_INST_0
       (.I0(Q),
        .I1(ce_out_i),
        .I2(Bus_RNW_reg),
        .O(S_AXI_WREADY));
  LUT5 #(
    .INIT(32'h00000004)) 
    \command_reg[13]_i_1 
       (.I0(\S_AXI_AWADDR[8] ),
        .I1(dap_rni_select_reg),
        .I2(\command_reg_reg[0] ),
        .I3(\S_AXI_AWADDR[3] ),
        .I4(\S_AXI_AWADDR[2] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00FB)) 
    \command_reg[13]_i_4 
       (.I0(Bus_RNW_reg),
        .I1(ce_out_i),
        .I2(dap_read),
        .I3(dap_write),
        .O(\command_reg_reg[0] ));
  LUT5 #(
    .INIT(32'h11111110)) 
    dap_rni_select_i_1
       (.I0(\dap_address[13] ),
        .I1(\S_AXI_AWADDR[16] ),
        .I2(ipif_Bus2IP_CS),
        .I3(dap_read),
        .I4(dap_write),
        .O(dap_rni_select_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h88888A88)) 
    \interrupt_reg[3]_i_5 
       (.I0(dap_rni_select_reg),
        .I1(dap_write),
        .I2(dap_read),
        .I3(ce_out_i),
        .I4(Bus_RNW_reg),
        .O(\interrupt_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    old_slave_read_i_1
       (.I0(Bus_RNW_reg),
        .I1(ce_out_i),
        .O(ipif_Bus2IP_RdCE));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[10]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[11]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[12]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[13]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[14]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[15]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[16]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[17]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[18]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[19]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[20]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[21]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[22]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[23]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[24]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[25]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[26]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[27]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[28]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[29]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[30]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rni_readdata_delayed[31]_i_1 
       (.I0(1'b0),
        .I1(\rni_readdata_delayed_reg[10] ),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h8A88888800000000)) 
    \rni_readdata_delayed[31]_i_2 
       (.I0(\S_AXI_AWADDR[6] ),
        .I1(dap_read),
        .I2(dap_write),
        .I3(Bus_RNW_reg),
        .I4(ce_out_i),
        .I5(dap_rni_select_reg),
        .O(\rni_readdata_delayed_reg[10] ));
  LUT5 #(
    .INIT(32'h5D550C00)) 
    s_axi_bvalid_i_i_1
       (.I0(S_AXI_BREADY),
        .I1(\state_reg[1]_0 [1]),
        .I2(\state_reg[1]_0 [0]),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_BVALID),
        .O(s_axi_bvalid_i_reg));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[10]_i_1 
       (.I0(D[0]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[0]),
        .I4(RAM_reg_1),
        .I5(p_3_out[0]),
        .O(\s_axi_rdata_i_reg[31] [0]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[11]_i_1 
       (.I0(D[1]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[1]),
        .I4(RAM_reg_1),
        .I5(p_3_out[1]),
        .O(\s_axi_rdata_i_reg[31] [1]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[12]_i_1 
       (.I0(D[2]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[2]),
        .I4(RAM_reg_1),
        .I5(p_3_out[2]),
        .O(\s_axi_rdata_i_reg[31] [2]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[13]_i_1 
       (.I0(D[3]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[3]),
        .I4(RAM_reg_1),
        .I5(p_3_out[3]),
        .O(\s_axi_rdata_i_reg[31] [3]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[14]_i_1 
       (.I0(D[4]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[4]),
        .I4(RAM_reg_1),
        .I5(p_3_out[4]),
        .O(\s_axi_rdata_i_reg[31] [4]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[15]_i_1 
       (.I0(D[5]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[5]),
        .I4(RAM_reg_1),
        .I5(p_3_out[5]),
        .O(\s_axi_rdata_i_reg[31] [5]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[16]_i_1 
       (.I0(D[6]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[6]),
        .I4(RAM_reg_1),
        .I5(p_3_out[6]),
        .O(\s_axi_rdata_i_reg[31] [6]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[17]_i_1 
       (.I0(D[7]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[7]),
        .I4(RAM_reg_1),
        .I5(p_3_out[7]),
        .O(\s_axi_rdata_i_reg[31] [7]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[18]_i_1 
       (.I0(D[8]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[8]),
        .I4(RAM_reg_1),
        .I5(p_3_out[8]),
        .O(\s_axi_rdata_i_reg[31] [8]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[19]_i_1 
       (.I0(D[9]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[9]),
        .I4(RAM_reg_1),
        .I5(p_3_out[9]),
        .O(\s_axi_rdata_i_reg[31] [9]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[20]_i_1 
       (.I0(D[10]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[10]),
        .I4(RAM_reg_1),
        .I5(p_3_out[10]),
        .O(\s_axi_rdata_i_reg[31] [10]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[21]_i_1 
       (.I0(D[11]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[11]),
        .I4(RAM_reg_1),
        .I5(p_3_out[11]),
        .O(\s_axi_rdata_i_reg[31] [11]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[22]_i_1 
       (.I0(D[12]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[12]),
        .I4(RAM_reg_1),
        .I5(p_3_out[12]),
        .O(\s_axi_rdata_i_reg[31] [12]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[23]_i_1 
       (.I0(D[13]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[13]),
        .I4(RAM_reg_1),
        .I5(p_3_out[13]),
        .O(\s_axi_rdata_i_reg[31] [13]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[24]_i_1 
       (.I0(D[14]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[14]),
        .I4(RAM_reg_1),
        .I5(p_3_out[14]),
        .O(\s_axi_rdata_i_reg[31] [14]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[25]_i_1 
       (.I0(D[15]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[15]),
        .I4(RAM_reg_1),
        .I5(p_3_out[15]),
        .O(\s_axi_rdata_i_reg[31] [15]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[26]_i_1 
       (.I0(D[16]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[16]),
        .I4(RAM_reg_1),
        .I5(p_3_out[16]),
        .O(\s_axi_rdata_i_reg[31] [16]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[27]_i_1 
       (.I0(D[17]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[17]),
        .I4(RAM_reg_1),
        .I5(p_3_out[17]),
        .O(\s_axi_rdata_i_reg[31] [17]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[28]_i_1 
       (.I0(D[18]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[18]),
        .I4(RAM_reg_1),
        .I5(p_3_out[18]),
        .O(\s_axi_rdata_i_reg[31] [18]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[29]_i_1 
       (.I0(D[19]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[19]),
        .I4(RAM_reg_1),
        .I5(p_3_out[19]),
        .O(\s_axi_rdata_i_reg[31] [19]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[30]_i_1 
       (.I0(D[20]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[20]),
        .I4(RAM_reg_1),
        .I5(p_3_out[20]),
        .O(\s_axi_rdata_i_reg[31] [20]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[31]_i_2 
       (.I0(D[21]),
        .I1(dap_rni_select_reg),
        .I2(RAM_reg),
        .I3(p_1_out[21]),
        .I4(RAM_reg_1),
        .I5(p_3_out[21]),
        .O(\s_axi_rdata_i_reg[31] [21]));
  LUT6 #(
    .INIT(64'h000057F7FFFF57F7)) 
    \s_axi_rdata_i[31]_i_3 
       (.I0(ipif_Bus2IP_CS),
        .I1(S_AXI_AWADDR[1]),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[1]),
        .I4(dap_read_0),
        .I5(dap_address[1]),
        .O(RAM_reg));
  LUT6 #(
    .INIT(64'hFFFFFD5D0000FD5D)) 
    \s_axi_rdata_i[31]_i_4 
       (.I0(ipif_Bus2IP_CS),
        .I1(S_AXI_AWADDR[1]),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[1]),
        .I4(dap_read_0),
        .I5(dap_address[1]),
        .O(RAM_reg_1));
  LUT3 #(
    .INIT(8'hDC)) 
    s_axi_rvalid_i_i_1
       (.I0(S_AXI_RREADY),
        .I1(s_axi_rvalid_i0),
        .I2(S_AXI_RVALID),
        .O(s_axi_rvalid_i_reg));
  LUT6 #(
    .INIT(64'h0000FF8000000000)) 
    s_axi_rvalid_i_i_2
       (.I0(old_slave_read),
        .I1(ce_out_i),
        .I2(Bus_RNW_reg),
        .I3(Q),
        .I4(\state_reg[1]_0 [1]),
        .I5(\state_reg[1]_0 [0]),
        .O(s_axi_rvalid_i0));
  LUT5 #(
    .INIT(32'hFBF83B38)) 
    \state[0]_i_1 
       (.I0(S_AXI_WREADY),
        .I1(\state_reg[1]_0 [1]),
        .I2(\state_reg[1]_0 [0]),
        .I3(S_AXI_ARVALID),
        .I4(s_axi_rvalid_i_reg_0),
        .O(\state_reg[1] [0]));
  LUT6 #(
    .INIT(64'hEEEFEEEEAAEFAAEE)) 
    \state[1]_i_1 
       (.I0(s_axi_rvalid_i0),
        .I1(\state_reg[1]_0 [1]),
        .I2(S_AXI_ARVALID),
        .I3(\state_reg[1]_0 [0]),
        .I4(S_AXI_AWVALID_0),
        .I5(s_axi_rvalid_i_reg_0),
        .O(\state_reg[1] [1]));
  LUT6 #(
    .INIT(64'h00000000FF040000)) 
    synchronize_flag_i_2
       (.I0(Bus_RNW_reg),
        .I1(ce_out_i),
        .I2(dap_read),
        .I3(dap_write),
        .I4(dap_rni_select_reg),
        .I5(\S_AXI_AWADDR[8] ),
        .O(synchronize_flag_reg));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module BD_kth_axi_rni_static_2_0_axi_lite_ipif
   (S_AXI_RVALID,
    S_AXI_BVALID,
    D,
    \rni_readdata_delayed_reg[10] ,
    S_AXI_ARREADY,
    rni_chipselect,
    ipif_Bus2IP_RdCE,
    S_AXI_WREADY,
    WEA,
    RAM_reg,
    RAM_reg_0,
    p_8_in,
    E,
    \command_reg_reg[0] ,
    send_buffer_address1,
    synchronize_flag_reg,
    \interrupt_reg_reg[0] ,
    RAM_reg_1,
    p_7_in,
    \rni_readdata_delayed_reg[0] ,
    \rni_readdata_delayed_reg[1] ,
    \command_reg_reg[0]_0 ,
    \rni_readdata_delayed_reg[2] ,
    \rni_readdata_delayed_reg[0]_0 ,
    \rni_readdata_delayed_reg[2]_0 ,
    \rni_readdata_delayed_reg[2]_1 ,
    S_AXI_RDATA,
    Reset,
    S_AXI_ACLK,
    old_slave_read,
    S_AXI_ARESETN,
    S_AXI_ARVALID,
    dap_read,
    dap_write,
    \S_AXI_AWADDR[8] ,
    dap_address,
    dap_read_0,
    S_AXI_AWADDR,
    S_AXI_ARADDR,
    RAM_reg_2,
    p_1_out,
    p_3_out,
    \S_AXI_AWADDR[5] ,
    S_AXI_AWADDR_6__s_port_,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_BREADY);
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  output [21:0]D;
  output \rni_readdata_delayed_reg[10] ;
  output S_AXI_ARREADY;
  output rni_chipselect;
  output ipif_Bus2IP_RdCE;
  output S_AXI_WREADY;
  output [0:0]WEA;
  output RAM_reg;
  output [0:0]RAM_reg_0;
  output p_8_in;
  output [0:0]E;
  output \command_reg_reg[0] ;
  output [1:0]send_buffer_address1;
  output synchronize_flag_reg;
  output \interrupt_reg_reg[0] ;
  output RAM_reg_1;
  output p_7_in;
  output \rni_readdata_delayed_reg[0] ;
  output \rni_readdata_delayed_reg[1] ;
  output \command_reg_reg[0]_0 ;
  output \rni_readdata_delayed_reg[2] ;
  output \rni_readdata_delayed_reg[0]_0 ;
  output \rni_readdata_delayed_reg[2]_0 ;
  output \rni_readdata_delayed_reg[2]_1 ;
  output [31:0]S_AXI_RDATA;
  input Reset;
  input S_AXI_ACLK;
  input old_slave_read;
  input S_AXI_ARESETN;
  input S_AXI_ARVALID;
  input dap_read;
  input dap_write;
  input \S_AXI_AWADDR[8] ;
  input [6:0]dap_address;
  input dap_read_0;
  input [6:0]S_AXI_AWADDR;
  input [6:0]S_AXI_ARADDR;
  input [9:0]RAM_reg_2;
  input [21:0]p_1_out;
  input [21:0]p_3_out;
  input [1:0]\S_AXI_AWADDR[5] ;
  input S_AXI_AWADDR_6__s_port_;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_BREADY;

  wire [21:0]D;
  wire [0:0]E;
  wire RAM_reg;
  wire [0:0]RAM_reg_0;
  wire RAM_reg_1;
  wire [9:0]RAM_reg_2;
  wire Reset;
  wire S_AXI_ACLK;
  wire [6:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [6:0]S_AXI_AWADDR;
  wire [1:0]\S_AXI_AWADDR[5] ;
  wire \S_AXI_AWADDR[8] ;
  wire S_AXI_AWADDR_6__s_net_1;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [0:0]WEA;
  wire \command_reg_reg[0] ;
  wire \command_reg_reg[0]_0 ;
  wire [6:0]dap_address;
  wire dap_read;
  wire dap_read_0;
  wire dap_write;
  wire \interrupt_reg_reg[0] ;
  wire ipif_Bus2IP_RdCE;
  wire old_slave_read;
  wire [21:0]p_1_out;
  wire [21:0]p_3_out;
  wire p_7_in;
  wire p_8_in;
  wire rni_chipselect;
  wire \rni_readdata_delayed_reg[0] ;
  wire \rni_readdata_delayed_reg[0]_0 ;
  wire \rni_readdata_delayed_reg[10] ;
  wire \rni_readdata_delayed_reg[1] ;
  wire \rni_readdata_delayed_reg[2] ;
  wire \rni_readdata_delayed_reg[2]_0 ;
  wire \rni_readdata_delayed_reg[2]_1 ;
  wire [1:0]send_buffer_address1;
  wire synchronize_flag_reg;

  assign S_AXI_AWADDR_6__s_net_1 = S_AXI_AWADDR_6__s_port_;
  BD_kth_axi_rni_static_2_0_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .RAM_reg(RAM_reg),
        .RAM_reg_0(RAM_reg_0),
        .RAM_reg_1(send_buffer_address1[1]),
        .RAM_reg_2(send_buffer_address1[0]),
        .RAM_reg_3(RAM_reg_1),
        .RAM_reg_4(RAM_reg_2),
        .Reset(Reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .\S_AXI_AWADDR[5] (\S_AXI_AWADDR[5] ),
        .\S_AXI_AWADDR[8] (\S_AXI_AWADDR[8] ),
        .S_AXI_AWADDR_6__s_port_(S_AXI_AWADDR_6__s_net_1),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .WEA(WEA),
        .\command_reg_reg[0] (\command_reg_reg[0] ),
        .\command_reg_reg[0]_0 (\command_reg_reg[0]_0 ),
        .dap_address(dap_address),
        .dap_read(dap_read),
        .dap_read_0(dap_read_0),
        .dap_rni_select_reg(rni_chipselect),
        .dap_write(dap_write),
        .\interrupt_reg_reg[0] (\interrupt_reg_reg[0] ),
        .ipif_Bus2IP_RdCE(ipif_Bus2IP_RdCE),
        .old_slave_read(old_slave_read),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_7_in(p_7_in),
        .p_8_in(p_8_in),
        .\rni_readdata_delayed_reg[0] (\rni_readdata_delayed_reg[0] ),
        .\rni_readdata_delayed_reg[0]_0 (\rni_readdata_delayed_reg[0]_0 ),
        .\rni_readdata_delayed_reg[10] (\rni_readdata_delayed_reg[10] ),
        .\rni_readdata_delayed_reg[1] (\rni_readdata_delayed_reg[1] ),
        .\rni_readdata_delayed_reg[2] (\rni_readdata_delayed_reg[2] ),
        .\rni_readdata_delayed_reg[2]_0 (\rni_readdata_delayed_reg[2]_0 ),
        .\rni_readdata_delayed_reg[2]_1 (\rni_readdata_delayed_reg[2]_1 ),
        .synchronize_flag_reg(synchronize_flag_reg));
endmodule

(* ORIG_REF_NAME = "generic_nios_to_3D_noc" *) 
module BD_kth_axi_rni_static_2_0_generic_nios_to_3D_noc
   (AR,
    \channel_nr_reg[2]_0 ,
    WEBWE,
    NoC_IRQ,
    ADDRARDADDR,
    D,
    \s_axi_rdata_i_reg[9] ,
    \command_reg_reg[0]_0 ,
    \command_reg_reg[0]_1 ,
    ADDRBWRADDR,
    Q,
    RAM_reg,
    TO_NOC,
    HeartBeat,
    S_AXI_ACLK,
    send_buffer_address1,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    dap_read_0,
    dap_address,
    Bus_RNW_reg_reg,
    S_AXI_ARESETN,
    \S_AXI_AWADDR[8] ,
    dap_read_1,
    S_AXI_AWADDR_2__s_port_,
    Sync,
    S_AXI_WDATA,
    dap_write,
    dap_read,
    dap_writedata,
    rni_chipselect,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    DOADO,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    RAM_reg_0,
    \S_AXI_AWADDR[7] ,
    \S_AXI_AWADDR[8]_0 ,
    dap_read_2,
    S_AXI_AWADDR_3__s_port_,
    FROM_NOC,
    Bus_RNW_reg_reg_0,
    E,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    Bus_RNW_reg_reg_1,
    p_2_out);
  output [0:0]AR;
  output \channel_nr_reg[2]_0 ;
  output [0:0]WEBWE;
  output NoC_IRQ;
  output [2:0]ADDRARDADDR;
  output [9:0]D;
  output [9:0]\s_axi_rdata_i_reg[9] ;
  output \command_reg_reg[0]_0 ;
  output \command_reg_reg[0]_1 ;
  output [3:0]ADDRBWRADDR;
  output [3:0]Q;
  output [31:0]RAM_reg;
  output [47:0]TO_NOC;
  input HeartBeat;
  input S_AXI_ACLK;
  input [1:0]send_buffer_address1;
  input [3:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [3:0]S_AXI_ARADDR;
  input dap_read_0;
  input [3:0]dap_address;
  input Bus_RNW_reg_reg;
  input S_AXI_ARESETN;
  input \S_AXI_AWADDR[8] ;
  input dap_read_1;
  input S_AXI_AWADDR_2__s_port_;
  input [1:0]Sync;
  input [13:0]S_AXI_WDATA;
  input dap_write;
  input dap_read;
  input [13:0]dap_writedata;
  input rni_chipselect;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  input [9:0]DOADO;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  input [9:0]RAM_reg_0;
  input \S_AXI_AWADDR[7] ;
  input \S_AXI_AWADDR[8]_0 ;
  input dap_read_2;
  input S_AXI_AWADDR_3__s_port_;
  input [43:0]FROM_NOC;
  input Bus_RNW_reg_reg_0;
  input [0:0]E;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input Bus_RNW_reg_reg_1;
  input [31:0]p_2_out;

  wire [2:0]ADDRARDADDR;
  wire [3:0]ADDRBWRADDR;
  wire [0:0]AR;
  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [3:0]CONV_INTEGER;
  wire [9:0]D;
  wire [9:0]DOADO;
  wire [0:0]E;
  wire [43:0]FROM_NOC;
  wire \FSM_sequential_xmit_state[0]_i_1_n_0 ;
  wire \FSM_sequential_xmit_state[1]_i_1_n_0 ;
  wire \FSM_sequential_xmit_state[2]_i_1_n_0 ;
  wire \FSM_sequential_xmit_state[2]_i_2_n_0 ;
  wire \FSM_sequential_xmit_state[2]_i_3_n_0 ;
  wire \FSM_sequential_xmit_state[2]_i_4_n_0 ;
  wire \FSM_sequential_xmit_state[2]_i_5_n_0 ;
  wire \Flit_id[0]_i_1_n_0 ;
  wire \Flit_id[1]_i_1_n_0 ;
  wire \Flit_id[1]_i_2_n_0 ;
  wire \Flit_id_reg_n_0_[0] ;
  wire \Flit_id_reg_n_0_[1] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire HeartBeat;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire NoC_IRQ;
  wire [3:0]Q;
  wire [31:0]RAM_reg;
  wire [9:0]RAM_reg_0;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire \S_AXI_AWADDR[7] ;
  wire \S_AXI_AWADDR[8] ;
  wire \S_AXI_AWADDR[8]_0 ;
  wire S_AXI_AWADDR_2__s_net_1;
  wire S_AXI_AWADDR_3__s_net_1;
  wire [13:0]S_AXI_WDATA;
  wire [1:0]Sync;
  wire [47:0]TO_NOC;
  wire [0:0]WEBWE;
  wire \__6/i__n_0 ;
  wire [2:2]channel_nr;
  wire \channel_nr_reg[2]_0 ;
  wire channel_selected0;
  wire \channel_status[0][0]_i_1_n_0 ;
  wire \channel_status[0][0]_i_2_n_0 ;
  wire \channel_status[0][1]_i_1_n_0 ;
  wire \channel_status[0][1]_i_2_n_0 ;
  wire \channel_status[0][1]_i_3_n_0 ;
  wire \channel_status[1][0]_i_1_n_0 ;
  wire \channel_status[1][1]_i_1_n_0 ;
  wire \channel_status[1][1]_i_2_n_0 ;
  wire \channel_status[1][1]_i_3_n_0 ;
  wire \channel_status[2][0]_i_1_n_0 ;
  wire \channel_status[2][1]_i_1_n_0 ;
  wire \channel_status[2][1]_i_2_n_0 ;
  wire \channel_status[2][1]_i_3_n_0 ;
  wire \channel_status[3][0]_i_1_n_0 ;
  wire \channel_status[3][1]_i_1_n_0 ;
  wire \channel_status[3][1]_i_2_n_0 ;
  wire \channel_status[3][1]_i_3_n_0 ;
  wire \channel_status[4][0]_i_1_n_0 ;
  wire \channel_status[4][1]_i_1_n_0 ;
  wire \channel_status[4][1]_i_2_n_0 ;
  wire \channel_status[5][0]_i_1_n_0 ;
  wire \channel_status[5][1]_i_1_n_0 ;
  wire \channel_status[6][0]_i_1_n_0 ;
  wire \channel_status[6][1]_i_1_n_0 ;
  wire \channel_status[7][0]_i_1_n_0 ;
  wire \channel_status[7][1]_i_1_n_0 ;
  wire [1:0]\channel_status_reg[0] ;
  wire [1:0]\channel_status_reg[1] ;
  wire [1:0]\channel_status_reg[2] ;
  wire [1:0]\channel_status_reg[3] ;
  wire [1:0]\channel_status_reg[4] ;
  wire [1:0]\channel_status_reg[5] ;
  wire [1:0]\channel_status_reg[6] ;
  wire [1:0]\channel_status_reg[7] ;
  wire \command_reg_reg[0]_0 ;
  wire \command_reg_reg[0]_1 ;
  wire \command_reg_reg_n_0_[0] ;
  wire \command_reg_reg_n_0_[1] ;
  wire [3:0]\d_pid_reg[0] ;
  wire [3:0]\d_pid_reg[1] ;
  wire [3:0]\d_pid_reg[2] ;
  wire [3:0]\d_pid_reg[4] ;
  wire [3:0]\d_pid_reg[5] ;
  wire [3:0]\d_pid_reg[6] ;
  wire [3:0]dap_address;
  wire dap_read;
  wire dap_read_0;
  wire dap_read_1;
  wire dap_read_2;
  wire dap_write;
  wire [13:0]dap_writedata;
  wire data_reg;
  wire \data_reg[10]_i_1_n_0 ;
  wire \data_reg[11]_i_1_n_0 ;
  wire \data_reg[12]_i_1_n_0 ;
  wire \data_reg[13]_i_1_n_0 ;
  wire \data_reg[14]_i_1_n_0 ;
  wire \data_reg[15]_i_1_n_0 ;
  wire \data_reg[16]_i_1_n_0 ;
  wire \data_reg[17]_i_1_n_0 ;
  wire \data_reg[18]_i_1_n_0 ;
  wire \data_reg[19]_i_1_n_0 ;
  wire \data_reg[20]_i_1_n_0 ;
  wire \data_reg[21]_i_1_n_0 ;
  wire \data_reg[22]_i_1_n_0 ;
  wire \data_reg[23]_i_1_n_0 ;
  wire \data_reg[24]_i_1_n_0 ;
  wire \data_reg[25]_i_1_n_0 ;
  wire \data_reg[26]_i_1_n_0 ;
  wire \data_reg[27]_i_1_n_0 ;
  wire \data_reg[28]_i_1_n_0 ;
  wire \data_reg[29]_i_1_n_0 ;
  wire \data_reg[30]_i_1_n_0 ;
  wire \data_reg[31]_i_1_n_0 ;
  wire \data_reg[8]_i_1_n_0 ;
  wire \data_reg[9]_i_1_n_0 ;
  wire \delay[0]_i_1_n_0 ;
  wire \delay[1]_i_1_n_0 ;
  wire \delay[2]_i_1_n_0 ;
  wire \delay[3]_i_1_n_0 ;
  wire \delay[4]_i_1_n_0 ;
  wire \delay[4]_i_2_n_0 ;
  wire \delay[4]_i_3_n_0 ;
  wire \delay_reg_n_0_[0] ;
  wire \delay_reg_n_0_[1] ;
  wire \delay_reg_n_0_[2] ;
  wire \delay_reg_n_0_[3] ;
  wire \delay_reg_n_0_[4] ;
  wire dest_col;
  wire \dest_col_reg_n_0_[0] ;
  wire \dest_pid_reg_n_0_[0] ;
  wire \dest_pid_reg_n_0_[1] ;
  wire \dest_pid_reg_n_0_[2] ;
  wire \dest_pid_reg_n_0_[3] ;
  wire \dest_row_reg_n_0_[0] ;
  wire \global_clock[0]_i_2_n_0 ;
  wire \global_clock[0]_i_3_n_0 ;
  wire \global_clock[0]_i_4_n_0 ;
  wire \global_clock[0]_i_5_n_0 ;
  wire \global_clock[12]_i_2_n_0 ;
  wire \global_clock[12]_i_3_n_0 ;
  wire \global_clock[12]_i_4_n_0 ;
  wire \global_clock[12]_i_5_n_0 ;
  wire \global_clock[16]_i_2_n_0 ;
  wire \global_clock[16]_i_3_n_0 ;
  wire \global_clock[16]_i_4_n_0 ;
  wire \global_clock[16]_i_5_n_0 ;
  wire \global_clock[20]_i_2_n_0 ;
  wire \global_clock[20]_i_3_n_0 ;
  wire \global_clock[20]_i_4_n_0 ;
  wire \global_clock[20]_i_5_n_0 ;
  wire \global_clock[24]_i_2_n_0 ;
  wire \global_clock[24]_i_3_n_0 ;
  wire \global_clock[24]_i_4_n_0 ;
  wire \global_clock[24]_i_5_n_0 ;
  wire \global_clock[28]_i_2_n_0 ;
  wire \global_clock[28]_i_3_n_0 ;
  wire \global_clock[28]_i_4_n_0 ;
  wire \global_clock[28]_i_5_n_0 ;
  wire \global_clock[32]_i_2_n_0 ;
  wire \global_clock[32]_i_3_n_0 ;
  wire \global_clock[32]_i_4_n_0 ;
  wire \global_clock[32]_i_5_n_0 ;
  wire \global_clock[36]_i_2_n_0 ;
  wire \global_clock[36]_i_3_n_0 ;
  wire \global_clock[36]_i_4_n_0 ;
  wire \global_clock[36]_i_5_n_0 ;
  wire \global_clock[4]_i_2_n_0 ;
  wire \global_clock[4]_i_3_n_0 ;
  wire \global_clock[4]_i_4_n_0 ;
  wire \global_clock[4]_i_5_n_0 ;
  wire \global_clock[8]_i_2_n_0 ;
  wire \global_clock[8]_i_3_n_0 ;
  wire \global_clock[8]_i_4_n_0 ;
  wire \global_clock[8]_i_5_n_0 ;
  wire [39:32]global_clock_reg;
  wire \global_clock_reg[0]_i_1_n_0 ;
  wire \global_clock_reg[0]_i_1_n_1 ;
  wire \global_clock_reg[0]_i_1_n_2 ;
  wire \global_clock_reg[0]_i_1_n_3 ;
  wire \global_clock_reg[0]_i_1_n_4 ;
  wire \global_clock_reg[0]_i_1_n_5 ;
  wire \global_clock_reg[0]_i_1_n_6 ;
  wire \global_clock_reg[0]_i_1_n_7 ;
  wire \global_clock_reg[12]_i_1_n_0 ;
  wire \global_clock_reg[12]_i_1_n_1 ;
  wire \global_clock_reg[12]_i_1_n_2 ;
  wire \global_clock_reg[12]_i_1_n_3 ;
  wire \global_clock_reg[12]_i_1_n_4 ;
  wire \global_clock_reg[12]_i_1_n_5 ;
  wire \global_clock_reg[12]_i_1_n_6 ;
  wire \global_clock_reg[12]_i_1_n_7 ;
  wire \global_clock_reg[16]_i_1_n_0 ;
  wire \global_clock_reg[16]_i_1_n_1 ;
  wire \global_clock_reg[16]_i_1_n_2 ;
  wire \global_clock_reg[16]_i_1_n_3 ;
  wire \global_clock_reg[16]_i_1_n_4 ;
  wire \global_clock_reg[16]_i_1_n_5 ;
  wire \global_clock_reg[16]_i_1_n_6 ;
  wire \global_clock_reg[16]_i_1_n_7 ;
  wire \global_clock_reg[20]_i_1_n_0 ;
  wire \global_clock_reg[20]_i_1_n_1 ;
  wire \global_clock_reg[20]_i_1_n_2 ;
  wire \global_clock_reg[20]_i_1_n_3 ;
  wire \global_clock_reg[20]_i_1_n_4 ;
  wire \global_clock_reg[20]_i_1_n_5 ;
  wire \global_clock_reg[20]_i_1_n_6 ;
  wire \global_clock_reg[20]_i_1_n_7 ;
  wire \global_clock_reg[24]_i_1_n_0 ;
  wire \global_clock_reg[24]_i_1_n_1 ;
  wire \global_clock_reg[24]_i_1_n_2 ;
  wire \global_clock_reg[24]_i_1_n_3 ;
  wire \global_clock_reg[24]_i_1_n_4 ;
  wire \global_clock_reg[24]_i_1_n_5 ;
  wire \global_clock_reg[24]_i_1_n_6 ;
  wire \global_clock_reg[24]_i_1_n_7 ;
  wire \global_clock_reg[28]_i_1_n_0 ;
  wire \global_clock_reg[28]_i_1_n_1 ;
  wire \global_clock_reg[28]_i_1_n_2 ;
  wire \global_clock_reg[28]_i_1_n_3 ;
  wire \global_clock_reg[28]_i_1_n_4 ;
  wire \global_clock_reg[28]_i_1_n_5 ;
  wire \global_clock_reg[28]_i_1_n_6 ;
  wire \global_clock_reg[28]_i_1_n_7 ;
  wire \global_clock_reg[32]_i_1_n_0 ;
  wire \global_clock_reg[32]_i_1_n_1 ;
  wire \global_clock_reg[32]_i_1_n_2 ;
  wire \global_clock_reg[32]_i_1_n_3 ;
  wire \global_clock_reg[32]_i_1_n_4 ;
  wire \global_clock_reg[32]_i_1_n_5 ;
  wire \global_clock_reg[32]_i_1_n_6 ;
  wire \global_clock_reg[32]_i_1_n_7 ;
  wire \global_clock_reg[36]_i_1_n_1 ;
  wire \global_clock_reg[36]_i_1_n_2 ;
  wire \global_clock_reg[36]_i_1_n_3 ;
  wire \global_clock_reg[36]_i_1_n_4 ;
  wire \global_clock_reg[36]_i_1_n_5 ;
  wire \global_clock_reg[36]_i_1_n_6 ;
  wire \global_clock_reg[36]_i_1_n_7 ;
  wire \global_clock_reg[4]_i_1_n_0 ;
  wire \global_clock_reg[4]_i_1_n_1 ;
  wire \global_clock_reg[4]_i_1_n_2 ;
  wire \global_clock_reg[4]_i_1_n_3 ;
  wire \global_clock_reg[4]_i_1_n_4 ;
  wire \global_clock_reg[4]_i_1_n_5 ;
  wire \global_clock_reg[4]_i_1_n_6 ;
  wire \global_clock_reg[4]_i_1_n_7 ;
  wire \global_clock_reg[8]_i_1_n_0 ;
  wire \global_clock_reg[8]_i_1_n_1 ;
  wire \global_clock_reg[8]_i_1_n_2 ;
  wire \global_clock_reg[8]_i_1_n_3 ;
  wire \global_clock_reg[8]_i_1_n_4 ;
  wire \global_clock_reg[8]_i_1_n_5 ;
  wire \global_clock_reg[8]_i_1_n_6 ;
  wire \global_clock_reg[8]_i_1_n_7 ;
  wire [31:0]global_clock_reg__0;
  wire \interrupt[0]_i_1_n_0 ;
  wire \interrupt[1]_i_1_n_0 ;
  wire \interrupt_reg[0]_i_1_n_0 ;
  wire \interrupt_reg[0]_i_2_n_0 ;
  wire \interrupt_reg[1]_i_1_n_0 ;
  wire \interrupt_reg[1]_i_2_n_0 ;
  wire \interrupt_reg[2]_i_1_n_0 ;
  wire \interrupt_reg[2]_i_2_n_0 ;
  wire \interrupt_reg[3]_i_1_n_0 ;
  wire \interrupt_reg[3]_i_2_n_0 ;
  wire \interrupt_reg[3]_i_3_n_0 ;
  wire \interrupt_reg[3]_i_4_n_0 ;
  wire \interrupt_reg[3]_i_6_n_0 ;
  wire \interrupt_reg_fifo_reg_n_0_[0] ;
  wire \interrupt_reg_n_0_[0] ;
  wire \interrupt_reg_n_0_[1] ;
  wire \interrupt_reg_reg_n_0_[0] ;
  wire \interrupt_reg_reg_n_0_[1] ;
  wire \interrupt_reg_reg_n_0_[2] ;
  wire interrupt_request;
  wire interrupt_request_i_1_n_0;
  wire \mem_address[0]_i_1_n_0 ;
  wire \mem_address[1]_i_2_n_0 ;
  wire \mem_address_reg_n_0_[0] ;
  wire \mem_address_reg_n_0_[1] ;
  wire \mem_address_reg_n_0_[2] ;
  wire \mem_address_reg_n_0_[3] ;
  wire \msg_length_reg[0][1]_i_1_n_0 ;
  wire \msg_length_reg[1]_0 ;
  wire \msg_length_reg[2]_2 ;
  wire \msg_length_reg[4]_1 ;
  wire \msg_length_reg[5][1]_i_1_n_0 ;
  wire \msg_length_reg[6][1]_i_1_n_0 ;
  wire [1:0]\msg_length_reg_reg[0] ;
  wire [1:0]\msg_length_reg_reg[1] ;
  wire [1:0]\msg_length_reg_reg[2] ;
  wire [1:0]\msg_length_reg_reg[4] ;
  wire [1:0]\msg_length_reg_reg[5] ;
  wire [1:0]\msg_length_reg_reg[6] ;
  wire old_heartbeat;
  wire old_toggle_bit;
  wire \outport[0]_i_1_n_0 ;
  wire \outport[0]_i_2_n_0 ;
  wire \outport[10]_i_1_n_0 ;
  wire \outport[10]_i_2_n_0 ;
  wire \outport[11]_i_1_n_0 ;
  wire \outport[11]_i_2_n_0 ;
  wire \outport[12]_i_1_n_0 ;
  wire \outport[12]_i_2_n_0 ;
  wire \outport[13]_i_1_n_0 ;
  wire \outport[13]_i_2_n_0 ;
  wire \outport[14]_i_1_n_0 ;
  wire \outport[15]_i_1_n_0 ;
  wire \outport[16]_i_1_n_0 ;
  wire \outport[17]_i_1_n_0 ;
  wire \outport[18]_i_1_n_0 ;
  wire \outport[19]_i_1_n_0 ;
  wire \outport[1]_i_1_n_0 ;
  wire \outport[1]_i_2_n_0 ;
  wire \outport[20]_i_1_n_0 ;
  wire \outport[21]_i_1_n_0 ;
  wire \outport[22]_i_1_n_0 ;
  wire \outport[23]_i_1_n_0 ;
  wire \outport[24]_i_1_n_0 ;
  wire \outport[25]_i_1_n_0 ;
  wire \outport[26]_i_1_n_0 ;
  wire \outport[27]_i_1_n_0 ;
  wire \outport[28]_i_1_n_0 ;
  wire \outport[29]_i_1_n_0 ;
  wire \outport[2]_i_1_n_0 ;
  wire \outport[2]_i_2_n_0 ;
  wire \outport[30]_i_1_n_0 ;
  wire \outport[31]_i_1_n_0 ;
  wire \outport[34]_i_1_n_0 ;
  wire \outport[36]_i_1_n_0 ;
  wire \outport[3]_i_1_n_0 ;
  wire \outport[3]_i_2_n_0 ;
  wire \outport[42]_i_1_n_0 ;
  wire \outport[43]_i_1_n_0 ;
  wire \outport[44]_i_1_n_0 ;
  wire \outport[45]_i_1_n_0 ;
  wire \outport[46]_i_1_n_0 ;
  wire \outport[47]_i_1_n_0 ;
  wire \outport[48]_i_1_n_0 ;
  wire \outport[49]_i_1_n_0 ;
  wire \outport[4]_i_1_n_0 ;
  wire \outport[4]_i_2_n_0 ;
  wire \outport[50]_i_1_n_0 ;
  wire \outport[51]_i_1_n_0 ;
  wire \outport[52]_i_1_n_0 ;
  wire \outport[53]_i_1_n_0 ;
  wire \outport[54]_i_1_n_0 ;
  wire \outport[55]_i_2_n_0 ;
  wire \outport[55]_i_3_n_0 ;
  wire \outport[5]_i_1_n_0 ;
  wire \outport[5]_i_2_n_0 ;
  wire \outport[6]_i_1_n_0 ;
  wire \outport[6]_i_2_n_0 ;
  wire \outport[7]_i_1_n_0 ;
  wire \outport[7]_i_2_n_0 ;
  wire \outport[8]_i_1_n_0 ;
  wire \outport[8]_i_2_n_0 ;
  wire \outport[9]_i_1_n_0 ;
  wire \outport[9]_i_2_n_0 ;
  wire [1:0]p_0_in;
  wire p_0_in_0;
  wire [1:0]p_1_in;
  wire p_1_in2_in;
  wire p_1_in3_in;
  wire p_1_in4_in;
  wire [3:0]p_2_in;
  wire [31:0]p_2_out;
  wire [1:1]plusOp__0;
  wire \priority_reg_n_0_[4] ;
  wire \priority_reg_n_0_[5] ;
  wire \process_map[0][EW]__0 ;
  wire \process_map[0][NS]__0 ;
  wire \recv_address[0]_i_1_n_0 ;
  wire \recv_address[1]_i_1_n_0 ;
  wire \recv_address[2]_i_1_n_0 ;
  wire \recv_address[3]_i_2_n_0 ;
  wire \recv_address[3]_i_3_n_0 ;
  wire recv_buffer_write_i_1_n_0;
  wire \recv_counter[0][0]_i_1_n_0 ;
  wire \recv_counter[0][0]_i_2_n_0 ;
  wire \recv_counter[0][1]_i_1_n_0 ;
  wire \recv_counter[0][1]_i_2_n_0 ;
  wire \recv_counter[0][1]_i_3_n_0 ;
  wire \recv_counter[0][1]_i_4_n_0 ;
  wire \recv_counter[1][0]_i_1_n_0 ;
  wire \recv_counter[1][0]_i_2_n_0 ;
  wire \recv_counter[1][1]_i_1_n_0 ;
  wire \recv_counter[1][1]_i_2_n_0 ;
  wire \recv_counter[1][1]_i_3_n_0 ;
  wire \recv_counter[1][1]_i_4_n_0 ;
  wire \recv_counter[2][0]_i_1_n_0 ;
  wire \recv_counter[2][0]_i_2_n_0 ;
  wire \recv_counter[2][1]_i_1_n_0 ;
  wire \recv_counter[2][1]_i_2_n_0 ;
  wire \recv_counter[2][1]_i_3_n_0 ;
  wire \recv_counter[2][1]_i_4_n_0 ;
  wire \recv_counter[2][1]_i_5_n_0 ;
  wire \recv_counter[3][0]_i_1_n_0 ;
  wire \recv_counter[3][0]_i_2_n_0 ;
  wire \recv_counter[3][0]_i_3_n_0 ;
  wire \recv_counter[3][1]_i_1_n_0 ;
  wire [1:0]\recv_counter_reg[0] ;
  wire [1:0]\recv_counter_reg[1] ;
  wire [1:0]\recv_counter_reg[2] ;
  wire [1:0]\recv_counter_reg[3] ;
  wire \recv_counter_reg[3]0 ;
  wire [1:0]recv_state;
  wire \recv_state[0]_i_1_n_0 ;
  wire \recv_state[1]_i_1_n_0 ;
  wire rni_chipselect;
  wire \rni_readdata_delayed[0]_i_10_n_0 ;
  wire \rni_readdata_delayed[0]_i_11_n_0 ;
  wire \rni_readdata_delayed[0]_i_12_n_0 ;
  wire \rni_readdata_delayed[0]_i_13_n_0 ;
  wire \rni_readdata_delayed[0]_i_14_n_0 ;
  wire \rni_readdata_delayed[0]_i_3_n_0 ;
  wire \rni_readdata_delayed[0]_i_4_n_0 ;
  wire \rni_readdata_delayed[0]_i_9_n_0 ;
  wire \rni_readdata_delayed[1]_i_2_n_0 ;
  wire \rni_readdata_delayed[1]_i_3_n_0 ;
  wire \rni_readdata_delayed[1]_i_4_n_0 ;
  wire \rni_readdata_delayed[1]_i_5_n_0 ;
  wire \rni_readdata_delayed[2]_i_2_n_0 ;
  wire \rni_readdata_delayed[2]_i_4_n_0 ;
  wire \rni_readdata_delayed[2]_i_5_n_0 ;
  wire \rni_readdata_delayed[3]_i_2_n_0 ;
  wire \rni_readdata_delayed[3]_i_3_n_0 ;
  wire \rni_readdata_delayed[3]_i_4_n_0 ;
  wire \rni_readdata_delayed[3]_i_5_n_0 ;
  wire \rni_readdata_delayed[4]_i_2_n_0 ;
  wire \rni_readdata_delayed[4]_i_3_n_0 ;
  wire \rni_readdata_delayed[4]_i_4_n_0 ;
  wire \rni_readdata_delayed[5]_i_2_n_0 ;
  wire \rni_readdata_delayed[5]_i_3_n_0 ;
  wire \rni_readdata_delayed[5]_i_4_n_0 ;
  wire \rni_readdata_delayed[6]_i_2_n_0 ;
  wire \rni_readdata_delayed[6]_i_3_n_0 ;
  wire \rni_readdata_delayed[6]_i_4_n_0 ;
  wire \rni_readdata_delayed[7]_i_2_n_0 ;
  wire \rni_readdata_delayed[7]_i_3_n_0 ;
  wire \rni_readdata_delayed[7]_i_4_n_0 ;
  wire \rni_readdata_delayed[8]_i_2_n_0 ;
  wire \rni_readdata_delayed[8]_i_3_n_0 ;
  wire \rni_readdata_delayed[8]_i_4_n_0 ;
  wire \rni_readdata_delayed[8]_i_5_n_0 ;
  wire \rni_readdata_delayed[9]_i_2_n_0 ;
  wire \rni_readdata_delayed[9]_i_3_n_0 ;
  wire \rni_readdata_delayed[9]_i_5_n_0 ;
  wire \rni_readdata_delayed_reg[0]_i_2_n_0 ;
  wire \rni_readdata_delayed_reg[0]_i_7_n_0 ;
  wire \rni_readdata_delayed_reg[0]_i_8_n_0 ;
  wire [13:0]rni_writedata;
  wire [9:0]\s_axi_rdata_i_reg[9] ;
  wire [3:0]\s_pid_reg[0] ;
  wire [3:0]\s_pid_reg[1] ;
  wire [3:0]\s_pid_reg[2] ;
  wire [3:0]\s_pid_reg[4] ;
  wire [3:0]\s_pid_reg[5] ;
  wire [3:0]\s_pid_reg[6] ;
  wire [1:0]send_buffer_address1;
  wire send_clock_i_1_n_0;
  wire send_clock_reg_n_0;
  wire [1:0]send_counter;
  wire \send_counter[1]_i_1_n_0 ;
  wire slave_irq0;
  wire slave_irq_i_1_n_0;
  wire src_buffer;
  wire \src_pid_reg_n_0_[0] ;
  wire \src_pid_reg_n_0_[1] ;
  wire \src_pid_reg_n_0_[2] ;
  wire \src_pid_reg_n_0_[3] ;
  wire synchronize_flag;
  wire synchronize_flag_i_1_n_0;
  wire toggle_address;
  wire write_status_reg_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]xmit_state;
  wire [3:3]\NLW_global_clock_reg[36]_i_1_CO_UNCONNECTED ;

  assign S_AXI_AWADDR_2__s_net_1 = S_AXI_AWADDR_2__s_port_;
  assign S_AXI_AWADDR_3__s_net_1 = S_AXI_AWADDR_3__s_port_;
  LUT5 #(
    .INIT(32'h222E0000)) 
    \FSM_sequential_xmit_state[0]_i_1 
       (.I0(xmit_state[0]),
        .I1(\FSM_sequential_xmit_state[2]_i_2_n_0 ),
        .I2(xmit_state[2]),
        .I3(xmit_state[0]),
        .I4(S_AXI_ARESETN),
        .O(\FSM_sequential_xmit_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h222E2EE200000000)) 
    \FSM_sequential_xmit_state[1]_i_1 
       (.I0(xmit_state[1]),
        .I1(\FSM_sequential_xmit_state[2]_i_2_n_0 ),
        .I2(xmit_state[2]),
        .I3(xmit_state[1]),
        .I4(xmit_state[0]),
        .I5(S_AXI_ARESETN),
        .O(\FSM_sequential_xmit_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \FSM_sequential_xmit_state[2]_i_1 
       (.I0(xmit_state[2]),
        .I1(\FSM_sequential_xmit_state[2]_i_2_n_0 ),
        .I2(\__6/i__n_0 ),
        .I3(S_AXI_ARESETN),
        .O(\FSM_sequential_xmit_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \FSM_sequential_xmit_state[2]_i_2 
       (.I0(\FSM_sequential_xmit_state[2]_i_3_n_0 ),
        .I1(\command_reg_reg[0]_1 ),
        .I2(rni_chipselect),
        .I3(Bus_RNW_reg_reg_1),
        .I4(\FSM_sequential_xmit_state[2]_i_4_n_0 ),
        .I5(\FSM_sequential_xmit_state[2]_i_5_n_0 ),
        .O(\FSM_sequential_xmit_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_xmit_state[2]_i_3 
       (.I0(xmit_state[1]),
        .I1(xmit_state[0]),
        .O(\FSM_sequential_xmit_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    \FSM_sequential_xmit_state[2]_i_4 
       (.I0(send_buffer_address1[0]),
        .I1(S_AXI_AWADDR[0]),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[0]),
        .I4(dap_read_0),
        .I5(dap_address[0]),
        .O(\FSM_sequential_xmit_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0033B8CC)) 
    \FSM_sequential_xmit_state[2]_i_5 
       (.I0(\delay[4]_i_3_n_0 ),
        .I1(xmit_state[0]),
        .I2(Sync[0]),
        .I3(xmit_state[1]),
        .I4(xmit_state[2]),
        .O(\FSM_sequential_xmit_state[2]_i_5_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_xmit_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_xmit_state[0]_i_1_n_0 ),
        .Q(xmit_state[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_xmit_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_xmit_state[1]_i_1_n_0 ),
        .Q(xmit_state[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_xmit_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_xmit_state[2]_i_1_n_0 ),
        .Q(xmit_state[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01FF0D00)) 
    \Flit_id[0]_i_1 
       (.I0(\command_reg_reg_n_0_[0] ),
        .I1(xmit_state[1]),
        .I2(xmit_state[2]),
        .I3(\Flit_id[1]_i_2_n_0 ),
        .I4(\Flit_id_reg_n_0_[0] ),
        .O(\Flit_id[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF002E0000)) 
    \Flit_id[1]_i_1 
       (.I0(plusOp__0),
        .I1(xmit_state[1]),
        .I2(\Flit_id_reg_n_0_[0] ),
        .I3(xmit_state[2]),
        .I4(\Flit_id[1]_i_2_n_0 ),
        .I5(\Flit_id_reg_n_0_[1] ),
        .O(\Flit_id[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002808)) 
    \Flit_id[1]_i_2 
       (.I0(S_AXI_ARESETN),
        .I1(xmit_state[0]),
        .I2(xmit_state[1]),
        .I3(Sync[0]),
        .I4(xmit_state[2]),
        .O(\Flit_id[1]_i_2_n_0 ));
  FDRE \Flit_id_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\Flit_id[0]_i_1_n_0 ),
        .Q(\Flit_id_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \Flit_id_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\Flit_id[1]_i_1_n_0 ),
        .Q(\Flit_id_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    RAM_reg_i_2__0
       (.I0(dap_address[2]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(S_AXI_ARADDR[2]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_AWADDR[2]),
        .O(ADDRARDADDR[1]));
  LUT6 #(
    .INIT(64'hAAAAA9595555A959)) 
    RAM_reg_i_2__1
       (.I0(\channel_nr_reg[2]_0 ),
        .I1(S_AXI_AWADDR[3]),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[3]),
        .I4(dap_read_0),
        .I5(dap_address[3]),
        .O(ADDRARDADDR[2]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    RAM_reg_i_3__1
       (.I0(dap_address[1]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(S_AXI_ARADDR[1]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_AWADDR[1]),
        .O(ADDRARDADDR[0]));
  LUT5 #(
    .INIT(32'h15000000)) 
    \__6/i_ 
       (.I0(xmit_state[2]),
        .I1(ADDRBWRADDR[0]),
        .I2(ADDRBWRADDR[1]),
        .I3(xmit_state[0]),
        .I4(xmit_state[1]),
        .O(\__6/i__n_0 ));
  FDRE \channel_nr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(channel_selected0),
        .D(\channel_nr_reg[2]_0 ),
        .Q(channel_nr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \channel_status[0][0]_i_1 
       (.I0(\channel_status[0][0]_i_2_n_0 ),
        .I1(channel_nr),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(\mem_address_reg_n_0_[3] ),
        .I4(\channel_status[0][1]_i_2_n_0 ),
        .I5(\channel_status_reg[0] [0]),
        .O(\channel_status[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \channel_status[0][0]_i_2 
       (.I0(recv_state[1]),
        .I1(recv_state[0]),
        .O(\channel_status[0][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \channel_status[0][1]_i_1 
       (.I0(interrupt_request_i_1_n_0),
        .I1(channel_nr),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(\mem_address_reg_n_0_[3] ),
        .I4(\channel_status[0][1]_i_2_n_0 ),
        .I5(\channel_status_reg[0] [1]),
        .O(\channel_status[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \channel_status[0][1]_i_2 
       (.I0(old_toggle_bit),
        .I1(\channel_nr_reg[2]_0 ),
        .I2(\interrupt_reg_fifo_reg_n_0_[0] ),
        .I3(\interrupt_reg_reg_n_0_[0] ),
        .I4(\channel_status[4][1]_i_2_n_0 ),
        .I5(\channel_status[0][1]_i_3_n_0 ),
        .O(\channel_status[0][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \channel_status[0][1]_i_3 
       (.I0(\mem_address_reg_n_0_[3] ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(channel_nr),
        .O(\channel_status[0][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \channel_status[1][0]_i_1 
       (.I0(\channel_status[0][0]_i_2_n_0 ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(channel_nr),
        .I4(\channel_status[1][1]_i_2_n_0 ),
        .I5(\channel_status_reg[1] [0]),
        .O(\channel_status[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \channel_status[1][1]_i_1 
       (.I0(interrupt_request_i_1_n_0),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(channel_nr),
        .I4(\channel_status[1][1]_i_2_n_0 ),
        .I5(\channel_status_reg[1] [1]),
        .O(\channel_status[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F222F222F2FFFF)) 
    \channel_status[1][1]_i_2 
       (.I0(p_1_in2_in),
        .I1(\interrupt_reg_reg_n_0_[1] ),
        .I2(old_toggle_bit),
        .I3(\channel_nr_reg[2]_0 ),
        .I4(\channel_status[1][1]_i_3_n_0 ),
        .I5(\channel_status[4][1]_i_2_n_0 ),
        .O(\channel_status[1][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \channel_status[1][1]_i_3 
       (.I0(channel_nr),
        .I1(\mem_address_reg_n_0_[3] ),
        .I2(\mem_address_reg_n_0_[2] ),
        .O(\channel_status[1][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \channel_status[2][0]_i_1 
       (.I0(\channel_status[0][0]_i_2_n_0 ),
        .I1(\mem_address_reg_n_0_[3] ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(channel_nr),
        .I4(\channel_status[2][1]_i_2_n_0 ),
        .I5(\channel_status_reg[2] [0]),
        .O(\channel_status[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \channel_status[2][1]_i_1 
       (.I0(interrupt_request_i_1_n_0),
        .I1(\mem_address_reg_n_0_[3] ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(channel_nr),
        .I4(\channel_status[2][1]_i_2_n_0 ),
        .I5(\channel_status_reg[2] [1]),
        .O(\channel_status[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \channel_status[2][1]_i_2 
       (.I0(\channel_status[2][1]_i_3_n_0 ),
        .I1(\channel_status[4][1]_i_2_n_0 ),
        .I2(p_1_in3_in),
        .I3(\interrupt_reg_reg_n_0_[2] ),
        .I4(old_toggle_bit),
        .I5(\channel_nr_reg[2]_0 ),
        .O(\channel_status[2][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \channel_status[2][1]_i_3 
       (.I0(channel_nr),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[3] ),
        .O(\channel_status[2][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \channel_status[3][0]_i_1 
       (.I0(\channel_status[0][0]_i_2_n_0 ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(channel_nr),
        .I4(\channel_status[3][1]_i_2_n_0 ),
        .I5(\channel_status_reg[3] [0]),
        .O(\channel_status[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \channel_status[3][1]_i_1 
       (.I0(interrupt_request_i_1_n_0),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(channel_nr),
        .I4(\channel_status[3][1]_i_2_n_0 ),
        .I5(\channel_status_reg[3] [1]),
        .O(\channel_status[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F222F222F2FFFF)) 
    \channel_status[3][1]_i_2 
       (.I0(p_1_in4_in),
        .I1(p_0_in_0),
        .I2(old_toggle_bit),
        .I3(\channel_nr_reg[2]_0 ),
        .I4(\channel_status[3][1]_i_3_n_0 ),
        .I5(\channel_status[4][1]_i_2_n_0 ),
        .O(\channel_status[3][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \channel_status[3][1]_i_3 
       (.I0(channel_nr),
        .I1(\mem_address_reg_n_0_[3] ),
        .I2(\mem_address_reg_n_0_[2] ),
        .O(\channel_status[3][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \channel_status[4][0]_i_1 
       (.I0(recv_state[1]),
        .I1(\mem_address_reg_n_0_[3] ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(channel_nr),
        .I4(\channel_status[4][1]_i_2_n_0 ),
        .I5(\channel_status_reg[4] [0]),
        .O(\channel_status[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000100)) 
    \channel_status[4][1]_i_1 
       (.I0(recv_state[1]),
        .I1(\mem_address_reg_n_0_[3] ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(channel_nr),
        .I4(\channel_status[4][1]_i_2_n_0 ),
        .I5(\channel_status_reg[4] [1]),
        .O(\channel_status[4][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hCFCB)) 
    \channel_status[4][1]_i_2 
       (.I0(\mem_address_reg_n_0_[0] ),
        .I1(recv_state[0]),
        .I2(recv_state[1]),
        .I3(\mem_address_reg_n_0_[1] ),
        .O(\channel_status[4][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \channel_status[5][0]_i_1 
       (.I0(recv_state[1]),
        .I1(\mem_address_reg_n_0_[3] ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(channel_nr),
        .I4(\channel_status[4][1]_i_2_n_0 ),
        .I5(\channel_status_reg[5] [0]),
        .O(\channel_status[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFF00001000)) 
    \channel_status[5][1]_i_1 
       (.I0(recv_state[1]),
        .I1(\mem_address_reg_n_0_[3] ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(channel_nr),
        .I4(\channel_status[4][1]_i_2_n_0 ),
        .I5(\channel_status_reg[5] [1]),
        .O(\channel_status[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \channel_status[6][0]_i_1 
       (.I0(recv_state[1]),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(channel_nr),
        .I4(\channel_status[4][1]_i_2_n_0 ),
        .I5(\channel_status_reg[6] [0]),
        .O(\channel_status[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFF00001000)) 
    \channel_status[6][1]_i_1 
       (.I0(recv_state[1]),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(channel_nr),
        .I4(\channel_status[4][1]_i_2_n_0 ),
        .I5(\channel_status_reg[6] [1]),
        .O(\channel_status[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \channel_status[7][0]_i_1 
       (.I0(recv_state[1]),
        .I1(\mem_address_reg_n_0_[3] ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(channel_nr),
        .I4(\channel_status[4][1]_i_2_n_0 ),
        .I5(\channel_status_reg[7] [0]),
        .O(\channel_status[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00004000)) 
    \channel_status[7][1]_i_1 
       (.I0(recv_state[1]),
        .I1(\mem_address_reg_n_0_[3] ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(channel_nr),
        .I4(\channel_status[4][1]_i_2_n_0 ),
        .I5(\channel_status_reg[7] [1]),
        .O(\channel_status[7][1]_i_1_n_0 ));
  FDCE \channel_status_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[0][0]_i_1_n_0 ),
        .Q(\channel_status_reg[0] [0]));
  FDCE \channel_status_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[0][1]_i_1_n_0 ),
        .Q(\channel_status_reg[0] [1]));
  FDCE \channel_status_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[1][0]_i_1_n_0 ),
        .Q(\channel_status_reg[1] [0]));
  FDCE \channel_status_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[1][1]_i_1_n_0 ),
        .Q(\channel_status_reg[1] [1]));
  FDCE \channel_status_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[2][0]_i_1_n_0 ),
        .Q(\channel_status_reg[2] [0]));
  FDCE \channel_status_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[2][1]_i_1_n_0 ),
        .Q(\channel_status_reg[2] [1]));
  FDCE \channel_status_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[3][0]_i_1_n_0 ),
        .Q(\channel_status_reg[3] [0]));
  FDCE \channel_status_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[3][1]_i_1_n_0 ),
        .Q(\channel_status_reg[3] [1]));
  FDCE \channel_status_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[4][0]_i_1_n_0 ),
        .Q(\channel_status_reg[4] [0]));
  FDCE \channel_status_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[4][1]_i_1_n_0 ),
        .Q(\channel_status_reg[4] [1]));
  FDCE \channel_status_reg[5][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[5][0]_i_1_n_0 ),
        .Q(\channel_status_reg[5] [0]));
  FDCE \channel_status_reg[5][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[5][1]_i_1_n_0 ),
        .Q(\channel_status_reg[5] [1]));
  FDCE \channel_status_reg[6][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[6][0]_i_1_n_0 ),
        .Q(\channel_status_reg[6] [0]));
  FDCE \channel_status_reg[6][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[6][1]_i_1_n_0 ),
        .Q(\channel_status_reg[6] [1]));
  FDCE \channel_status_reg[7][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[7][0]_i_1_n_0 ),
        .Q(\channel_status_reg[7] [0]));
  FDCE \channel_status_reg[7][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[7][1]_i_1_n_0 ),
        .Q(\channel_status_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \command_reg[0]_i_1 
       (.I0(dap_writedata[0]),
        .I1(dap_read),
        .I2(dap_write),
        .I3(S_AXI_WDATA[0]),
        .O(rni_writedata[0]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[10]_i_1 
       (.I0(S_AXI_WDATA[10]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[10]),
        .O(rni_writedata[10]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[11]_i_1 
       (.I0(S_AXI_WDATA[11]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[11]),
        .O(rni_writedata[11]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[12]_i_1 
       (.I0(S_AXI_WDATA[12]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[12]),
        .O(rni_writedata[12]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[13]_i_2 
       (.I0(S_AXI_WDATA[13]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[13]),
        .O(rni_writedata[13]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \command_reg[13]_i_3 
       (.I0(ADDRARDADDR[0]),
        .I1(\command_reg_reg[0]_0 ),
        .I2(ADDRARDADDR[1]),
        .I3(\S_AXI_AWADDR[7] ),
        .I4(\S_AXI_AWADDR[8]_0 ),
        .O(\command_reg_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \command_reg[13]_i_5 
       (.I0(dap_address[3]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_AWADDR[3]),
        .O(\command_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \command_reg[1]_i_1 
       (.I0(dap_writedata[1]),
        .I1(dap_read),
        .I2(dap_write),
        .I3(S_AXI_WDATA[1]),
        .O(rni_writedata[1]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[2]_i_1 
       (.I0(S_AXI_WDATA[2]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[2]),
        .O(rni_writedata[2]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[3]_i_1 
       (.I0(S_AXI_WDATA[3]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[3]),
        .O(rni_writedata[3]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[4]_i_1 
       (.I0(S_AXI_WDATA[4]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[4]),
        .O(rni_writedata[4]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[5]_i_1 
       (.I0(S_AXI_WDATA[5]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[5]),
        .O(rni_writedata[5]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[6]_i_1 
       (.I0(S_AXI_WDATA[6]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[6]),
        .O(rni_writedata[6]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[7]_i_1 
       (.I0(S_AXI_WDATA[7]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[7]),
        .O(rni_writedata[7]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[8]_i_1 
       (.I0(S_AXI_WDATA[8]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[8]),
        .O(rni_writedata[8]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[9]_i_1 
       (.I0(S_AXI_WDATA[9]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[9]),
        .O(rni_writedata[9]));
  FDCE \command_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[0]),
        .Q(\command_reg_reg_n_0_[0] ));
  FDCE \command_reg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[10]),
        .Q(p_2_in[2]));
  FDCE \command_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[11]),
        .Q(p_2_in[3]));
  FDCE \command_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[12]),
        .Q(p_1_in[0]));
  FDCE \command_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[13]),
        .Q(p_1_in[1]));
  FDCE \command_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[1]),
        .Q(\command_reg_reg_n_0_[1] ));
  FDCE \command_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[2]),
        .Q(p_0_in[0]));
  FDCE \command_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[3]),
        .Q(p_0_in[1]));
  FDCE \command_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[4]),
        .Q(CONV_INTEGER[0]));
  FDCE \command_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[5]),
        .Q(CONV_INTEGER[1]));
  FDCE \command_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[6]),
        .Q(CONV_INTEGER[2]));
  FDCE \command_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[7]),
        .Q(CONV_INTEGER[3]));
  FDCE \command_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[8]),
        .Q(p_2_in[0]));
  FDCE \command_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[9]),
        .Q(p_2_in[1]));
  FDCE \d_pid_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[0][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[0] [0]));
  FDCE \d_pid_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[0][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[0] [1]));
  FDCE \d_pid_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[0][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[0] [2]));
  FDCE \d_pid_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[0][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[0] [3]));
  FDCE \d_pid_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1]_0 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[1] [0]));
  FDCE \d_pid_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1]_0 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[1] [1]));
  FDCE \d_pid_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1]_0 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[1] [2]));
  FDCE \d_pid_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1]_0 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[1] [3]));
  FDCE \d_pid_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_2 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[2] [0]));
  FDCE \d_pid_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_2 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[2] [1]));
  FDCE \d_pid_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_2 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[2] [2]));
  FDCE \d_pid_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_2 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[2] [3]));
  FDCE \d_pid_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4]_1 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[4] [0]));
  FDCE \d_pid_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4]_1 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[4] [1]));
  FDCE \d_pid_reg[4][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4]_1 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[4] [2]));
  FDCE \d_pid_reg[4][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4]_1 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[4] [3]));
  FDCE \d_pid_reg[5][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[5][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[5] [0]));
  FDCE \d_pid_reg[5][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[5][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[5] [1]));
  FDCE \d_pid_reg[5][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[5][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[5] [2]));
  FDCE \d_pid_reg[5][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[5][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[5] [3]));
  FDCE \d_pid_reg[6][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[6][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[6] [0]));
  FDCE \d_pid_reg[6][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[6][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[6] [1]));
  FDCE \d_pid_reg[6][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[6][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[6] [2]));
  FDCE \d_pid_reg[6][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[6][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[6] [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[10]_i_1 
       (.I0(FROM_NOC[10]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[11]_i_1 
       (.I0(FROM_NOC[11]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[12]_i_1 
       (.I0(FROM_NOC[12]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[13]_i_1 
       (.I0(FROM_NOC[13]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[14]_i_1 
       (.I0(FROM_NOC[14]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[15]_i_1 
       (.I0(FROM_NOC[15]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[16]_i_1 
       (.I0(FROM_NOC[16]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[17]_i_1 
       (.I0(FROM_NOC[17]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[18]_i_1 
       (.I0(FROM_NOC[18]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[19]_i_1 
       (.I0(FROM_NOC[19]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[20]_i_1 
       (.I0(FROM_NOC[20]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[21]_i_1 
       (.I0(FROM_NOC[21]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[22]_i_1 
       (.I0(FROM_NOC[22]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[23]_i_1 
       (.I0(FROM_NOC[23]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[24]_i_1 
       (.I0(FROM_NOC[24]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[25]_i_1 
       (.I0(FROM_NOC[25]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[26]_i_1 
       (.I0(FROM_NOC[26]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[27]_i_1 
       (.I0(FROM_NOC[27]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[28]_i_1 
       (.I0(FROM_NOC[28]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[29]_i_1 
       (.I0(FROM_NOC[29]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[30]_i_1 
       (.I0(FROM_NOC[30]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[31]_i_1 
       (.I0(FROM_NOC[31]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[8]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[9]_i_1 
       (.I0(FROM_NOC[9]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[9]_i_1_n_0 ));
  FDCE \data_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(FROM_NOC[0]),
        .Q(RAM_reg[0]));
  FDCE \data_reg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[10]_i_1_n_0 ),
        .Q(RAM_reg[10]));
  FDCE \data_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[11]_i_1_n_0 ),
        .Q(RAM_reg[11]));
  FDCE \data_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[12]_i_1_n_0 ),
        .Q(RAM_reg[12]));
  FDCE \data_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[13]_i_1_n_0 ),
        .Q(RAM_reg[13]));
  FDCE \data_reg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[14]_i_1_n_0 ),
        .Q(RAM_reg[14]));
  FDCE \data_reg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[15]_i_1_n_0 ),
        .Q(RAM_reg[15]));
  FDCE \data_reg_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[16]_i_1_n_0 ),
        .Q(RAM_reg[16]));
  FDCE \data_reg_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[17]_i_1_n_0 ),
        .Q(RAM_reg[17]));
  FDCE \data_reg_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[18]_i_1_n_0 ),
        .Q(RAM_reg[18]));
  FDCE \data_reg_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[19]_i_1_n_0 ),
        .Q(RAM_reg[19]));
  FDCE \data_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(FROM_NOC[1]),
        .Q(RAM_reg[1]));
  FDCE \data_reg_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[20]_i_1_n_0 ),
        .Q(RAM_reg[20]));
  FDCE \data_reg_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[21]_i_1_n_0 ),
        .Q(RAM_reg[21]));
  FDCE \data_reg_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[22]_i_1_n_0 ),
        .Q(RAM_reg[22]));
  FDCE \data_reg_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[23]_i_1_n_0 ),
        .Q(RAM_reg[23]));
  FDCE \data_reg_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[24]_i_1_n_0 ),
        .Q(RAM_reg[24]));
  FDCE \data_reg_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[25]_i_1_n_0 ),
        .Q(RAM_reg[25]));
  FDCE \data_reg_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[26]_i_1_n_0 ),
        .Q(RAM_reg[26]));
  FDCE \data_reg_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[27]_i_1_n_0 ),
        .Q(RAM_reg[27]));
  FDCE \data_reg_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[28]_i_1_n_0 ),
        .Q(RAM_reg[28]));
  FDCE \data_reg_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[29]_i_1_n_0 ),
        .Q(RAM_reg[29]));
  FDCE \data_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(FROM_NOC[2]),
        .Q(RAM_reg[2]));
  FDCE \data_reg_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[30]_i_1_n_0 ),
        .Q(RAM_reg[30]));
  FDCE \data_reg_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[31]_i_1_n_0 ),
        .Q(RAM_reg[31]));
  FDCE \data_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(FROM_NOC[3]),
        .Q(RAM_reg[3]));
  FDCE \data_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(FROM_NOC[4]),
        .Q(RAM_reg[4]));
  FDCE \data_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(FROM_NOC[5]),
        .Q(RAM_reg[5]));
  FDCE \data_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(FROM_NOC[6]),
        .Q(RAM_reg[6]));
  FDCE \data_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(FROM_NOC[7]),
        .Q(RAM_reg[7]));
  FDCE \data_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[8]_i_1_n_0 ),
        .Q(RAM_reg[8]));
  FDCE \data_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\data_reg[9]_i_1_n_0 ),
        .Q(RAM_reg[9]));
  LUT2 #(
    .INIT(4'h7)) 
    \delay[0]_i_1 
       (.I0(xmit_state[0]),
        .I1(\delay_reg_n_0_[0] ),
        .O(\delay[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD7)) 
    \delay[1]_i_1 
       (.I0(xmit_state[0]),
        .I1(\delay_reg_n_0_[1] ),
        .I2(\delay_reg_n_0_[0] ),
        .O(\delay[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8882)) 
    \delay[2]_i_1 
       (.I0(xmit_state[0]),
        .I1(\delay_reg_n_0_[2] ),
        .I2(\delay_reg_n_0_[0] ),
        .I3(\delay_reg_n_0_[1] ),
        .O(\delay[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD7)) 
    \delay[3]_i_1 
       (.I0(xmit_state[0]),
        .I1(\delay_reg_n_0_[3] ),
        .I2(\delay_reg_n_0_[1] ),
        .I3(\delay_reg_n_0_[0] ),
        .I4(\delay_reg_n_0_[2] ),
        .O(\delay[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000740000000000)) 
    \delay[4]_i_1 
       (.I0(\delay[4]_i_3_n_0 ),
        .I1(xmit_state[0]),
        .I2(Sync[0]),
        .I3(xmit_state[1]),
        .I4(xmit_state[2]),
        .I5(S_AXI_ARESETN),
        .O(\delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888882)) 
    \delay[4]_i_2 
       (.I0(xmit_state[0]),
        .I1(\delay_reg_n_0_[4] ),
        .I2(\delay_reg_n_0_[2] ),
        .I3(\delay_reg_n_0_[0] ),
        .I4(\delay_reg_n_0_[1] ),
        .I5(\delay_reg_n_0_[3] ),
        .O(\delay[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \delay[4]_i_3 
       (.I0(\delay_reg_n_0_[3] ),
        .I1(\delay_reg_n_0_[1] ),
        .I2(\delay_reg_n_0_[0] ),
        .I3(\delay_reg_n_0_[4] ),
        .I4(\delay_reg_n_0_[2] ),
        .O(\delay[4]_i_3_n_0 ));
  FDRE \delay_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\delay[4]_i_1_n_0 ),
        .D(\delay[0]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \delay_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\delay[4]_i_1_n_0 ),
        .D(\delay[1]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \delay_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\delay[4]_i_1_n_0 ),
        .D(\delay[2]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \delay_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\delay[4]_i_1_n_0 ),
        .D(\delay[3]_i_1_n_0 ),
        .Q(\delay_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \delay_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\delay[4]_i_1_n_0 ),
        .D(\delay[4]_i_2_n_0 ),
        .Q(\delay_reg_n_0_[4] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0200)) 
    \dest_col[0]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(xmit_state[1]),
        .I2(xmit_state[2]),
        .I3(xmit_state[0]),
        .O(dest_col));
  FDRE \dest_col_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(\process_map[0][NS]__0 ),
        .Q(\dest_col_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dest_pid_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(CONV_INTEGER[0]),
        .Q(\dest_pid_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dest_pid_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(CONV_INTEGER[1]),
        .Q(\dest_pid_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dest_pid_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(CONV_INTEGER[2]),
        .Q(\dest_pid_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dest_pid_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(CONV_INTEGER[3]),
        .Q(\dest_pid_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dest_row_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(\process_map[0][EW]__0 ),
        .Q(\dest_row_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[0]_i_2 
       (.I0(global_clock_reg__0[3]),
        .O(\global_clock[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[0]_i_3 
       (.I0(global_clock_reg__0[2]),
        .O(\global_clock[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[0]_i_4 
       (.I0(global_clock_reg__0[1]),
        .O(\global_clock[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \global_clock[0]_i_5 
       (.I0(global_clock_reg__0[0]),
        .O(\global_clock[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[12]_i_2 
       (.I0(global_clock_reg__0[15]),
        .O(\global_clock[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[12]_i_3 
       (.I0(global_clock_reg__0[14]),
        .O(\global_clock[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[12]_i_4 
       (.I0(global_clock_reg__0[13]),
        .O(\global_clock[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[12]_i_5 
       (.I0(global_clock_reg__0[12]),
        .O(\global_clock[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[16]_i_2 
       (.I0(global_clock_reg__0[19]),
        .O(\global_clock[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[16]_i_3 
       (.I0(global_clock_reg__0[18]),
        .O(\global_clock[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[16]_i_4 
       (.I0(global_clock_reg__0[17]),
        .O(\global_clock[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[16]_i_5 
       (.I0(global_clock_reg__0[16]),
        .O(\global_clock[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[20]_i_2 
       (.I0(global_clock_reg__0[23]),
        .O(\global_clock[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[20]_i_3 
       (.I0(global_clock_reg__0[22]),
        .O(\global_clock[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[20]_i_4 
       (.I0(global_clock_reg__0[21]),
        .O(\global_clock[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[20]_i_5 
       (.I0(global_clock_reg__0[20]),
        .O(\global_clock[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[24]_i_2 
       (.I0(global_clock_reg__0[27]),
        .O(\global_clock[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[24]_i_3 
       (.I0(global_clock_reg__0[26]),
        .O(\global_clock[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[24]_i_4 
       (.I0(global_clock_reg__0[25]),
        .O(\global_clock[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[24]_i_5 
       (.I0(global_clock_reg__0[24]),
        .O(\global_clock[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[28]_i_2 
       (.I0(global_clock_reg__0[31]),
        .O(\global_clock[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[28]_i_3 
       (.I0(global_clock_reg__0[30]),
        .O(\global_clock[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[28]_i_4 
       (.I0(global_clock_reg__0[29]),
        .O(\global_clock[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[28]_i_5 
       (.I0(global_clock_reg__0[28]),
        .O(\global_clock[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[32]_i_2 
       (.I0(global_clock_reg[35]),
        .O(\global_clock[32]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[32]_i_3 
       (.I0(global_clock_reg[34]),
        .O(\global_clock[32]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[32]_i_4 
       (.I0(global_clock_reg[33]),
        .O(\global_clock[32]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[32]_i_5 
       (.I0(global_clock_reg[32]),
        .O(\global_clock[32]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[36]_i_2 
       (.I0(global_clock_reg[39]),
        .O(\global_clock[36]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[36]_i_3 
       (.I0(global_clock_reg[38]),
        .O(\global_clock[36]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[36]_i_4 
       (.I0(global_clock_reg[37]),
        .O(\global_clock[36]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[36]_i_5 
       (.I0(global_clock_reg[36]),
        .O(\global_clock[36]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[4]_i_2 
       (.I0(global_clock_reg__0[7]),
        .O(\global_clock[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[4]_i_3 
       (.I0(global_clock_reg__0[6]),
        .O(\global_clock[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[4]_i_4 
       (.I0(global_clock_reg__0[5]),
        .O(\global_clock[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[4]_i_5 
       (.I0(global_clock_reg__0[4]),
        .O(\global_clock[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[8]_i_2 
       (.I0(global_clock_reg__0[11]),
        .O(\global_clock[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[8]_i_3 
       (.I0(global_clock_reg__0[10]),
        .O(\global_clock[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[8]_i_4 
       (.I0(global_clock_reg__0[9]),
        .O(\global_clock[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \global_clock[8]_i_5 
       (.I0(global_clock_reg__0[8]),
        .O(\global_clock[8]_i_5_n_0 ));
  FDCE \global_clock_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[0]_i_1_n_7 ),
        .Q(global_clock_reg__0[0]));
  CARRY4 \global_clock_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\global_clock_reg[0]_i_1_n_0 ,\global_clock_reg[0]_i_1_n_1 ,\global_clock_reg[0]_i_1_n_2 ,\global_clock_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\global_clock_reg[0]_i_1_n_4 ,\global_clock_reg[0]_i_1_n_5 ,\global_clock_reg[0]_i_1_n_6 ,\global_clock_reg[0]_i_1_n_7 }),
        .S({\global_clock[0]_i_2_n_0 ,\global_clock[0]_i_3_n_0 ,\global_clock[0]_i_4_n_0 ,\global_clock[0]_i_5_n_0 }));
  FDCE \global_clock_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[8]_i_1_n_5 ),
        .Q(global_clock_reg__0[10]));
  FDCE \global_clock_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[8]_i_1_n_4 ),
        .Q(global_clock_reg__0[11]));
  FDCE \global_clock_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[12]_i_1_n_7 ),
        .Q(global_clock_reg__0[12]));
  CARRY4 \global_clock_reg[12]_i_1 
       (.CI(\global_clock_reg[8]_i_1_n_0 ),
        .CO({\global_clock_reg[12]_i_1_n_0 ,\global_clock_reg[12]_i_1_n_1 ,\global_clock_reg[12]_i_1_n_2 ,\global_clock_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_clock_reg[12]_i_1_n_4 ,\global_clock_reg[12]_i_1_n_5 ,\global_clock_reg[12]_i_1_n_6 ,\global_clock_reg[12]_i_1_n_7 }),
        .S({\global_clock[12]_i_2_n_0 ,\global_clock[12]_i_3_n_0 ,\global_clock[12]_i_4_n_0 ,\global_clock[12]_i_5_n_0 }));
  FDCE \global_clock_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[12]_i_1_n_6 ),
        .Q(global_clock_reg__0[13]));
  FDCE \global_clock_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[12]_i_1_n_5 ),
        .Q(global_clock_reg__0[14]));
  FDCE \global_clock_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[12]_i_1_n_4 ),
        .Q(global_clock_reg__0[15]));
  FDCE \global_clock_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[16]_i_1_n_7 ),
        .Q(global_clock_reg__0[16]));
  CARRY4 \global_clock_reg[16]_i_1 
       (.CI(\global_clock_reg[12]_i_1_n_0 ),
        .CO({\global_clock_reg[16]_i_1_n_0 ,\global_clock_reg[16]_i_1_n_1 ,\global_clock_reg[16]_i_1_n_2 ,\global_clock_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_clock_reg[16]_i_1_n_4 ,\global_clock_reg[16]_i_1_n_5 ,\global_clock_reg[16]_i_1_n_6 ,\global_clock_reg[16]_i_1_n_7 }),
        .S({\global_clock[16]_i_2_n_0 ,\global_clock[16]_i_3_n_0 ,\global_clock[16]_i_4_n_0 ,\global_clock[16]_i_5_n_0 }));
  FDCE \global_clock_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[16]_i_1_n_6 ),
        .Q(global_clock_reg__0[17]));
  FDCE \global_clock_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[16]_i_1_n_5 ),
        .Q(global_clock_reg__0[18]));
  FDCE \global_clock_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[16]_i_1_n_4 ),
        .Q(global_clock_reg__0[19]));
  FDCE \global_clock_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[0]_i_1_n_6 ),
        .Q(global_clock_reg__0[1]));
  FDCE \global_clock_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[20]_i_1_n_7 ),
        .Q(global_clock_reg__0[20]));
  CARRY4 \global_clock_reg[20]_i_1 
       (.CI(\global_clock_reg[16]_i_1_n_0 ),
        .CO({\global_clock_reg[20]_i_1_n_0 ,\global_clock_reg[20]_i_1_n_1 ,\global_clock_reg[20]_i_1_n_2 ,\global_clock_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_clock_reg[20]_i_1_n_4 ,\global_clock_reg[20]_i_1_n_5 ,\global_clock_reg[20]_i_1_n_6 ,\global_clock_reg[20]_i_1_n_7 }),
        .S({\global_clock[20]_i_2_n_0 ,\global_clock[20]_i_3_n_0 ,\global_clock[20]_i_4_n_0 ,\global_clock[20]_i_5_n_0 }));
  FDCE \global_clock_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[20]_i_1_n_6 ),
        .Q(global_clock_reg__0[21]));
  FDCE \global_clock_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[20]_i_1_n_5 ),
        .Q(global_clock_reg__0[22]));
  FDCE \global_clock_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[20]_i_1_n_4 ),
        .Q(global_clock_reg__0[23]));
  FDCE \global_clock_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[24]_i_1_n_7 ),
        .Q(global_clock_reg__0[24]));
  CARRY4 \global_clock_reg[24]_i_1 
       (.CI(\global_clock_reg[20]_i_1_n_0 ),
        .CO({\global_clock_reg[24]_i_1_n_0 ,\global_clock_reg[24]_i_1_n_1 ,\global_clock_reg[24]_i_1_n_2 ,\global_clock_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_clock_reg[24]_i_1_n_4 ,\global_clock_reg[24]_i_1_n_5 ,\global_clock_reg[24]_i_1_n_6 ,\global_clock_reg[24]_i_1_n_7 }),
        .S({\global_clock[24]_i_2_n_0 ,\global_clock[24]_i_3_n_0 ,\global_clock[24]_i_4_n_0 ,\global_clock[24]_i_5_n_0 }));
  FDCE \global_clock_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[24]_i_1_n_6 ),
        .Q(global_clock_reg__0[25]));
  FDCE \global_clock_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[24]_i_1_n_5 ),
        .Q(global_clock_reg__0[26]));
  FDCE \global_clock_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[24]_i_1_n_4 ),
        .Q(global_clock_reg__0[27]));
  FDCE \global_clock_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[28]_i_1_n_7 ),
        .Q(global_clock_reg__0[28]));
  CARRY4 \global_clock_reg[28]_i_1 
       (.CI(\global_clock_reg[24]_i_1_n_0 ),
        .CO({\global_clock_reg[28]_i_1_n_0 ,\global_clock_reg[28]_i_1_n_1 ,\global_clock_reg[28]_i_1_n_2 ,\global_clock_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_clock_reg[28]_i_1_n_4 ,\global_clock_reg[28]_i_1_n_5 ,\global_clock_reg[28]_i_1_n_6 ,\global_clock_reg[28]_i_1_n_7 }),
        .S({\global_clock[28]_i_2_n_0 ,\global_clock[28]_i_3_n_0 ,\global_clock[28]_i_4_n_0 ,\global_clock[28]_i_5_n_0 }));
  FDCE \global_clock_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[28]_i_1_n_6 ),
        .Q(global_clock_reg__0[29]));
  FDCE \global_clock_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[0]_i_1_n_5 ),
        .Q(global_clock_reg__0[2]));
  FDCE \global_clock_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[28]_i_1_n_5 ),
        .Q(global_clock_reg__0[30]));
  FDCE \global_clock_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[28]_i_1_n_4 ),
        .Q(global_clock_reg__0[31]));
  FDCE \global_clock_reg[32] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[32]_i_1_n_7 ),
        .Q(global_clock_reg[32]));
  CARRY4 \global_clock_reg[32]_i_1 
       (.CI(\global_clock_reg[28]_i_1_n_0 ),
        .CO({\global_clock_reg[32]_i_1_n_0 ,\global_clock_reg[32]_i_1_n_1 ,\global_clock_reg[32]_i_1_n_2 ,\global_clock_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_clock_reg[32]_i_1_n_4 ,\global_clock_reg[32]_i_1_n_5 ,\global_clock_reg[32]_i_1_n_6 ,\global_clock_reg[32]_i_1_n_7 }),
        .S({\global_clock[32]_i_2_n_0 ,\global_clock[32]_i_3_n_0 ,\global_clock[32]_i_4_n_0 ,\global_clock[32]_i_5_n_0 }));
  FDCE \global_clock_reg[33] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[32]_i_1_n_6 ),
        .Q(global_clock_reg[33]));
  FDCE \global_clock_reg[34] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[32]_i_1_n_5 ),
        .Q(global_clock_reg[34]));
  FDCE \global_clock_reg[35] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[32]_i_1_n_4 ),
        .Q(global_clock_reg[35]));
  FDCE \global_clock_reg[36] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[36]_i_1_n_7 ),
        .Q(global_clock_reg[36]));
  CARRY4 \global_clock_reg[36]_i_1 
       (.CI(\global_clock_reg[32]_i_1_n_0 ),
        .CO({\NLW_global_clock_reg[36]_i_1_CO_UNCONNECTED [3],\global_clock_reg[36]_i_1_n_1 ,\global_clock_reg[36]_i_1_n_2 ,\global_clock_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_clock_reg[36]_i_1_n_4 ,\global_clock_reg[36]_i_1_n_5 ,\global_clock_reg[36]_i_1_n_6 ,\global_clock_reg[36]_i_1_n_7 }),
        .S({\global_clock[36]_i_2_n_0 ,\global_clock[36]_i_3_n_0 ,\global_clock[36]_i_4_n_0 ,\global_clock[36]_i_5_n_0 }));
  FDCE \global_clock_reg[37] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[36]_i_1_n_6 ),
        .Q(global_clock_reg[37]));
  FDCE \global_clock_reg[38] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[36]_i_1_n_5 ),
        .Q(global_clock_reg[38]));
  FDCE \global_clock_reg[39] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[36]_i_1_n_4 ),
        .Q(global_clock_reg[39]));
  FDCE \global_clock_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[0]_i_1_n_4 ),
        .Q(global_clock_reg__0[3]));
  FDCE \global_clock_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[4]_i_1_n_7 ),
        .Q(global_clock_reg__0[4]));
  CARRY4 \global_clock_reg[4]_i_1 
       (.CI(\global_clock_reg[0]_i_1_n_0 ),
        .CO({\global_clock_reg[4]_i_1_n_0 ,\global_clock_reg[4]_i_1_n_1 ,\global_clock_reg[4]_i_1_n_2 ,\global_clock_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_clock_reg[4]_i_1_n_4 ,\global_clock_reg[4]_i_1_n_5 ,\global_clock_reg[4]_i_1_n_6 ,\global_clock_reg[4]_i_1_n_7 }),
        .S({\global_clock[4]_i_2_n_0 ,\global_clock[4]_i_3_n_0 ,\global_clock[4]_i_4_n_0 ,\global_clock[4]_i_5_n_0 }));
  FDCE \global_clock_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[4]_i_1_n_6 ),
        .Q(global_clock_reg__0[5]));
  FDCE \global_clock_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[4]_i_1_n_5 ),
        .Q(global_clock_reg__0[6]));
  FDCE \global_clock_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[4]_i_1_n_4 ),
        .Q(global_clock_reg__0[7]));
  FDCE \global_clock_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[8]_i_1_n_7 ),
        .Q(global_clock_reg__0[8]));
  CARRY4 \global_clock_reg[8]_i_1 
       (.CI(\global_clock_reg[4]_i_1_n_0 ),
        .CO({\global_clock_reg[8]_i_1_n_0 ,\global_clock_reg[8]_i_1_n_1 ,\global_clock_reg[8]_i_1_n_2 ,\global_clock_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_clock_reg[8]_i_1_n_4 ,\global_clock_reg[8]_i_1_n_5 ,\global_clock_reg[8]_i_1_n_6 ,\global_clock_reg[8]_i_1_n_7 }),
        .S({\global_clock[8]_i_2_n_0 ,\global_clock[8]_i_3_n_0 ,\global_clock[8]_i_4_n_0 ,\global_clock[8]_i_5_n_0 }));
  FDCE \global_clock_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(\global_clock_reg[8]_i_1_n_6 ),
        .Q(global_clock_reg__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \interrupt[0]_i_1 
       (.I0(\mem_address_reg_n_0_[2] ),
        .I1(\mem_address_reg_n_0_[0] ),
        .I2(recv_state[0]),
        .I3(recv_state[1]),
        .I4(\mem_address_reg_n_0_[1] ),
        .O(\interrupt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \interrupt[1]_i_1 
       (.I0(\mem_address_reg_n_0_[3] ),
        .I1(\mem_address_reg_n_0_[0] ),
        .I2(recv_state[0]),
        .I3(recv_state[1]),
        .I4(\mem_address_reg_n_0_[1] ),
        .O(\interrupt[1]_i_1_n_0 ));
  FDCE \interrupt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt[0]_i_1_n_0 ),
        .Q(\interrupt_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hEFFFFFFFAAAAAAAA)) 
    \interrupt_reg[0]_i_1 
       (.I0(\interrupt_reg[0]_i_2_n_0 ),
        .I1(\interrupt_reg[3]_i_4_n_0 ),
        .I2(\interrupt_reg[3]_i_3_n_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .I4(\interrupt_reg[3]_i_6_n_0 ),
        .I5(\interrupt_reg_reg_n_0_[0] ),
        .O(\interrupt_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \interrupt_reg[0]_i_2 
       (.I0(\interrupt_reg_n_0_[0] ),
        .I1(interrupt_request),
        .I2(\interrupt_reg_n_0_[1] ),
        .O(\interrupt_reg[0]_i_2_n_0 ));
  FDCE \interrupt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt[1]_i_1_n_0 ),
        .Q(\interrupt_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hFFFFEFFFAAAAAAAA)) 
    \interrupt_reg[1]_i_1 
       (.I0(\interrupt_reg[1]_i_2_n_0 ),
        .I1(\interrupt_reg[3]_i_4_n_0 ),
        .I2(\interrupt_reg[3]_i_3_n_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .I4(\interrupt_reg[3]_i_6_n_0 ),
        .I5(\interrupt_reg_reg_n_0_[1] ),
        .O(\interrupt_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \interrupt_reg[1]_i_2 
       (.I0(\interrupt_reg_n_0_[0] ),
        .I1(interrupt_request),
        .I2(\interrupt_reg_n_0_[1] ),
        .O(\interrupt_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBFAAAAAAAA)) 
    \interrupt_reg[2]_i_1 
       (.I0(\interrupt_reg[2]_i_2_n_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .I2(\interrupt_reg[3]_i_6_n_0 ),
        .I3(\interrupt_reg[3]_i_3_n_0 ),
        .I4(\interrupt_reg[3]_i_4_n_0 ),
        .I5(\interrupt_reg_reg_n_0_[2] ),
        .O(\interrupt_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \interrupt_reg[2]_i_2 
       (.I0(\interrupt_reg_n_0_[0] ),
        .I1(\interrupt_reg_n_0_[1] ),
        .I2(interrupt_request),
        .O(\interrupt_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFAAAAAAAA)) 
    \interrupt_reg[3]_i_1 
       (.I0(\interrupt_reg[3]_i_2_n_0 ),
        .I1(\interrupt_reg[3]_i_3_n_0 ),
        .I2(\interrupt_reg[3]_i_4_n_0 ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .I4(\interrupt_reg[3]_i_6_n_0 ),
        .I5(p_0_in_0),
        .O(\interrupt_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \interrupt_reg[3]_i_2 
       (.I0(\interrupt_reg_n_0_[0] ),
        .I1(\interrupt_reg_n_0_[1] ),
        .I2(interrupt_request),
        .O(\interrupt_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h01FD)) 
    \interrupt_reg[3]_i_3 
       (.I0(S_AXI_WDATA[1]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[1]),
        .O(\interrupt_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \interrupt_reg[3]_i_4 
       (.I0(\S_AXI_AWADDR[8] ),
        .I1(ADDRARDADDR[1]),
        .I2(\command_reg_reg[0]_0 ),
        .I3(ADDRARDADDR[0]),
        .I4(send_buffer_address1[0]),
        .I5(send_buffer_address1[1]),
        .O(\interrupt_reg[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h01FD)) 
    \interrupt_reg[3]_i_6 
       (.I0(S_AXI_WDATA[0]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[0]),
        .O(\interrupt_reg[3]_i_6_n_0 ));
  FDCE \interrupt_reg_fifo_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg_reg_n_0_[0] ),
        .Q(\interrupt_reg_fifo_reg_n_0_[0] ));
  FDCE \interrupt_reg_fifo_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg_reg_n_0_[1] ),
        .Q(p_1_in2_in));
  FDCE \interrupt_reg_fifo_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg_reg_n_0_[2] ),
        .Q(p_1_in3_in));
  FDCE \interrupt_reg_fifo_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in_0),
        .Q(p_1_in4_in));
  FDCE \interrupt_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg[0]_i_1_n_0 ),
        .Q(\interrupt_reg_reg_n_0_[0] ));
  FDCE \interrupt_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg[1]_i_1_n_0 ),
        .Q(\interrupt_reg_reg_n_0_[1] ));
  FDCE \interrupt_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg[2]_i_1_n_0 ),
        .Q(\interrupt_reg_reg_n_0_[2] ));
  FDCE \interrupt_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg[3]_i_1_n_0 ),
        .Q(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    interrupt_request_i_1
       (.I0(\mem_address_reg_n_0_[1] ),
        .I1(recv_state[1]),
        .I2(recv_state[0]),
        .I3(\mem_address_reg_n_0_[0] ),
        .O(interrupt_request_i_1_n_0));
  FDCE interrupt_request_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(interrupt_request_i_1_n_0),
        .Q(interrupt_request));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_address[0]_i_1 
       (.I0(\recv_counter_reg[3] [0]),
        .I1(\recv_counter_reg[2] [0]),
        .I2(\recv_address[3]_i_2_n_0 ),
        .I3(\recv_counter_reg[1] [0]),
        .I4(\recv_address[2]_i_1_n_0 ),
        .I5(\recv_counter_reg[0] [0]),
        .O(\mem_address[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \mem_address[1]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(recv_state[1]),
        .I2(Sync[1]),
        .I3(recv_state[0]),
        .O(channel_selected0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_address[1]_i_2 
       (.I0(\recv_counter_reg[3] [1]),
        .I1(\recv_counter_reg[2] [1]),
        .I2(\recv_address[3]_i_2_n_0 ),
        .I3(\recv_counter_reg[1] [1]),
        .I4(\recv_address[2]_i_1_n_0 ),
        .I5(\recv_counter_reg[0] [1]),
        .O(\mem_address[1]_i_2_n_0 ));
  FDRE \mem_address_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(channel_selected0),
        .D(\mem_address[0]_i_1_n_0 ),
        .Q(\mem_address_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mem_address_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(channel_selected0),
        .D(\mem_address[1]_i_2_n_0 ),
        .Q(\mem_address_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mem_address_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(channel_selected0),
        .D(\recv_address[2]_i_1_n_0 ),
        .Q(\mem_address_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mem_address_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(channel_selected0),
        .D(\recv_address[3]_i_2_n_0 ),
        .Q(\mem_address_reg_n_0_[3] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \msg_length_reg[0][1]_i_1 
       (.I0(\channel_nr_reg[2]_0 ),
        .I1(\recv_counter[0][1]_i_4_n_0 ),
        .O(\msg_length_reg[0][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \msg_length_reg[1][1]_i_1 
       (.I0(\recv_counter[1][1]_i_3_n_0 ),
        .I1(\channel_nr_reg[2]_0 ),
        .O(\msg_length_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \msg_length_reg[2][1]_i_1 
       (.I0(\recv_counter[2][1]_i_3_n_0 ),
        .I1(\channel_nr_reg[2]_0 ),
        .O(\msg_length_reg[2]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \msg_length_reg[4][1]_i_1 
       (.I0(\channel_nr_reg[2]_0 ),
        .I1(\recv_counter[0][1]_i_4_n_0 ),
        .O(\msg_length_reg[4]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \msg_length_reg[5][1]_i_1 
       (.I0(\recv_counter[1][1]_i_3_n_0 ),
        .I1(\channel_nr_reg[2]_0 ),
        .O(\msg_length_reg[5][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \msg_length_reg[6][1]_i_1 
       (.I0(\recv_counter[2][1]_i_3_n_0 ),
        .I1(\channel_nr_reg[2]_0 ),
        .O(\msg_length_reg[6][1]_i_1_n_0 ));
  FDCE \msg_length_reg_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[0][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[0] [0]));
  FDCE \msg_length_reg_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[0][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[0] [1]));
  FDCE \msg_length_reg_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1]_0 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[1] [0]));
  FDCE \msg_length_reg_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1]_0 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[1] [1]));
  FDCE \msg_length_reg_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_2 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[2] [0]));
  FDCE \msg_length_reg_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_2 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[2] [1]));
  FDCE \msg_length_reg_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4]_1 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[4] [0]));
  FDCE \msg_length_reg_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4]_1 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[4] [1]));
  FDCE \msg_length_reg_reg[5][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[5][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[5] [0]));
  FDCE \msg_length_reg_reg[5][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[5][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[5] [1]));
  FDCE \msg_length_reg_reg[6][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[6][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[6] [0]));
  FDCE \msg_length_reg_reg[6][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[6][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[6] [1]));
  FDCE old_GlobalSync_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(HeartBeat),
        .Q(old_heartbeat));
  FDCE \old_toggle_bit_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_nr_reg[2]_0 ),
        .Q(old_toggle_bit));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[0]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[0]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[0]),
        .I4(\outport[0]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[0]_i_2 
       (.I0(xmit_state[2]),
        .I1(global_clock_reg[32]),
        .O(\outport[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[10]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[10]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[10]),
        .I4(\outport[10]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[10]_i_2 
       (.I0(xmit_state[2]),
        .I1(CONV_INTEGER[0]),
        .O(\outport[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[11]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[11]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[11]),
        .I4(\outport[11]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[11]_i_2 
       (.I0(xmit_state[2]),
        .I1(CONV_INTEGER[1]),
        .O(\outport[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[12]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[12]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[12]),
        .I4(\outport[12]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[12]_i_2 
       (.I0(xmit_state[2]),
        .I1(CONV_INTEGER[2]),
        .O(\outport[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[13]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[13]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[13]),
        .I4(\outport[13]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[13]_i_2 
       (.I0(xmit_state[2]),
        .I1(CONV_INTEGER[3]),
        .O(\outport[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[14]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[14]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[14]),
        .I4(xmit_state[1]),
        .O(\outport[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[15]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[15]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[15]),
        .I4(xmit_state[1]),
        .O(\outport[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[16]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[16]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[16]),
        .I4(xmit_state[1]),
        .O(\outport[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[17]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[17]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[17]),
        .I4(xmit_state[1]),
        .O(\outport[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[18]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[18]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[18]),
        .I4(xmit_state[1]),
        .O(\outport[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[19]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[19]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[19]),
        .I4(xmit_state[1]),
        .O(\outport[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[1]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[1]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[1]),
        .I4(\outport[1]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[1]_i_2 
       (.I0(xmit_state[2]),
        .I1(global_clock_reg[33]),
        .O(\outport[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[20]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[20]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[20]),
        .I4(xmit_state[1]),
        .O(\outport[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[21]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[21]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[21]),
        .I4(xmit_state[1]),
        .O(\outport[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[22]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[22]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[22]),
        .I4(xmit_state[1]),
        .O(\outport[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[23]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[23]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[23]),
        .I4(xmit_state[1]),
        .O(\outport[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[24]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[24]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[24]),
        .I4(xmit_state[1]),
        .O(\outport[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[25]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[25]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[25]),
        .I4(xmit_state[1]),
        .O(\outport[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[26]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[26]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[26]),
        .I4(xmit_state[1]),
        .O(\outport[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[27]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[27]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[27]),
        .I4(xmit_state[1]),
        .O(\outport[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[28]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[28]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[28]),
        .I4(xmit_state[1]),
        .O(\outport[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[29]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[29]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[29]),
        .I4(xmit_state[1]),
        .O(\outport[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[2]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[2]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[2]),
        .I4(\outport[2]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[2]_i_2 
       (.I0(xmit_state[2]),
        .I1(global_clock_reg[34]),
        .O(\outport[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[30]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[30]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[30]),
        .I4(xmit_state[1]),
        .O(\outport[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \outport[31]_i_1 
       (.I0(xmit_state[0]),
        .I1(global_clock_reg__0[31]),
        .I2(send_clock_reg_n_0),
        .I3(p_2_out[31]),
        .I4(xmit_state[1]),
        .O(\outport[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[34]_i_1 
       (.I0(xmit_state[0]),
        .I1(\dest_col_reg_n_0_[0] ),
        .I2(xmit_state[2]),
        .I3(\process_map[0][NS]__0 ),
        .I4(xmit_state[1]),
        .O(\outport[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[36]_i_1 
       (.I0(xmit_state[0]),
        .I1(\dest_row_reg_n_0_[0] ),
        .I2(xmit_state[2]),
        .I3(\process_map[0][EW]__0 ),
        .I4(xmit_state[1]),
        .O(\outport[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[3]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[3]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[3]),
        .I4(\outport[3]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[3]_i_2 
       (.I0(xmit_state[2]),
        .I1(global_clock_reg[35]),
        .O(\outport[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[42]_i_1 
       (.I0(xmit_state[0]),
        .I1(\priority_reg_n_0_[4] ),
        .I2(xmit_state[2]),
        .I3(p_1_in[0]),
        .I4(xmit_state[1]),
        .O(\outport[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[43]_i_1 
       (.I0(xmit_state[0]),
        .I1(\priority_reg_n_0_[5] ),
        .I2(xmit_state[2]),
        .I3(p_1_in[1]),
        .I4(xmit_state[1]),
        .O(\outport[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[44]_i_1 
       (.I0(xmit_state[0]),
        .I1(\dest_pid_reg_n_0_[0] ),
        .I2(xmit_state[2]),
        .I3(CONV_INTEGER[0]),
        .I4(xmit_state[1]),
        .O(\outport[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[45]_i_1 
       (.I0(xmit_state[0]),
        .I1(\dest_pid_reg_n_0_[1] ),
        .I2(xmit_state[2]),
        .I3(CONV_INTEGER[1]),
        .I4(xmit_state[1]),
        .O(\outport[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[46]_i_1 
       (.I0(xmit_state[0]),
        .I1(\dest_pid_reg_n_0_[2] ),
        .I2(xmit_state[2]),
        .I3(CONV_INTEGER[2]),
        .I4(xmit_state[1]),
        .O(\outport[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[47]_i_1 
       (.I0(xmit_state[0]),
        .I1(\dest_pid_reg_n_0_[3] ),
        .I2(xmit_state[2]),
        .I3(CONV_INTEGER[3]),
        .I4(xmit_state[1]),
        .O(\outport[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[48]_i_1 
       (.I0(xmit_state[0]),
        .I1(\src_pid_reg_n_0_[0] ),
        .I2(xmit_state[2]),
        .I3(p_2_in[0]),
        .I4(xmit_state[1]),
        .O(\outport[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[49]_i_1 
       (.I0(xmit_state[0]),
        .I1(\src_pid_reg_n_0_[1] ),
        .I2(xmit_state[2]),
        .I3(p_2_in[1]),
        .I4(xmit_state[1]),
        .O(\outport[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[4]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[4]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[4]),
        .I4(\outport[4]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[4]_i_2 
       (.I0(xmit_state[2]),
        .I1(global_clock_reg[36]),
        .O(\outport[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[50]_i_1 
       (.I0(xmit_state[0]),
        .I1(\src_pid_reg_n_0_[2] ),
        .I2(xmit_state[2]),
        .I3(p_2_in[2]),
        .I4(xmit_state[1]),
        .O(\outport[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004F44)) 
    \outport[51]_i_1 
       (.I0(xmit_state[0]),
        .I1(\src_pid_reg_n_0_[3] ),
        .I2(xmit_state[2]),
        .I3(p_2_in[3]),
        .I4(xmit_state[1]),
        .O(\outport[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000444F)) 
    \outport[52]_i_1 
       (.I0(xmit_state[0]),
        .I1(\Flit_id_reg_n_0_[0] ),
        .I2(xmit_state[2]),
        .I3(\command_reg_reg_n_0_[0] ),
        .I4(xmit_state[1]),
        .O(\outport[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000444F4F44)) 
    \outport[53]_i_1 
       (.I0(xmit_state[0]),
        .I1(\Flit_id_reg_n_0_[1] ),
        .I2(xmit_state[2]),
        .I3(\command_reg_reg_n_0_[1] ),
        .I4(\command_reg_reg_n_0_[0] ),
        .I5(xmit_state[1]),
        .O(\outport[53]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \outport[54]_i_1 
       (.I0(xmit_state[2]),
        .I1(xmit_state[1]),
        .O(\outport[54]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outport[55]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(AR));
  LUT4 #(
    .INIT(16'h054A)) 
    \outport[55]_i_2 
       (.I0(xmit_state[0]),
        .I1(Sync[0]),
        .I2(xmit_state[1]),
        .I3(xmit_state[2]),
        .O(\outport[55]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \outport[55]_i_3 
       (.I0(xmit_state[0]),
        .I1(xmit_state[2]),
        .I2(xmit_state[1]),
        .O(\outport[55]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[5]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[5]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[5]),
        .I4(\outport[5]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[5]_i_2 
       (.I0(xmit_state[2]),
        .I1(global_clock_reg[37]),
        .O(\outport[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[6]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[6]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[6]),
        .I4(\outport[6]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[6]_i_2 
       (.I0(xmit_state[2]),
        .I1(global_clock_reg[38]),
        .O(\outport[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[7]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[7]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[7]),
        .I4(\outport[7]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \outport[7]_i_2 
       (.I0(xmit_state[2]),
        .I1(global_clock_reg[39]),
        .O(\outport[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[8]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[8]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[8]),
        .I4(\outport[8]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \outport[8]_i_2 
       (.I0(xmit_state[2]),
        .I1(\command_reg_reg_n_0_[0] ),
        .O(\outport[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005404FFFF)) 
    \outport[9]_i_1 
       (.I0(xmit_state[0]),
        .I1(p_2_out[9]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[9]),
        .I4(\outport[9]_i_2_n_0 ),
        .I5(xmit_state[1]),
        .O(\outport[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEB)) 
    \outport[9]_i_2 
       (.I0(xmit_state[2]),
        .I1(\command_reg_reg_n_0_[1] ),
        .I2(\command_reg_reg_n_0_[0] ),
        .O(\outport[9]_i_2_n_0 ));
  FDRE \outport_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[0]_i_1_n_0 ),
        .Q(TO_NOC[0]),
        .R(AR));
  FDRE \outport_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[10]_i_1_n_0 ),
        .Q(TO_NOC[10]),
        .R(AR));
  FDRE \outport_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[11]_i_1_n_0 ),
        .Q(TO_NOC[11]),
        .R(AR));
  FDRE \outport_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[12]_i_1_n_0 ),
        .Q(TO_NOC[12]),
        .R(AR));
  FDRE \outport_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[13]_i_1_n_0 ),
        .Q(TO_NOC[13]),
        .R(AR));
  FDRE \outport_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[14]_i_1_n_0 ),
        .Q(TO_NOC[14]),
        .R(AR));
  FDRE \outport_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[15]_i_1_n_0 ),
        .Q(TO_NOC[15]),
        .R(AR));
  FDRE \outport_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[16]_i_1_n_0 ),
        .Q(TO_NOC[16]),
        .R(AR));
  FDRE \outport_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[17]_i_1_n_0 ),
        .Q(TO_NOC[17]),
        .R(AR));
  FDRE \outport_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[18]_i_1_n_0 ),
        .Q(TO_NOC[18]),
        .R(AR));
  FDRE \outport_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[19]_i_1_n_0 ),
        .Q(TO_NOC[19]),
        .R(AR));
  FDRE \outport_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[1]_i_1_n_0 ),
        .Q(TO_NOC[1]),
        .R(AR));
  FDRE \outport_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[20]_i_1_n_0 ),
        .Q(TO_NOC[20]),
        .R(AR));
  FDRE \outport_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[21]_i_1_n_0 ),
        .Q(TO_NOC[21]),
        .R(AR));
  FDRE \outport_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[22]_i_1_n_0 ),
        .Q(TO_NOC[22]),
        .R(AR));
  FDRE \outport_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[23]_i_1_n_0 ),
        .Q(TO_NOC[23]),
        .R(AR));
  FDRE \outport_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[24]_i_1_n_0 ),
        .Q(TO_NOC[24]),
        .R(AR));
  FDRE \outport_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[25]_i_1_n_0 ),
        .Q(TO_NOC[25]),
        .R(AR));
  FDRE \outport_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[26]_i_1_n_0 ),
        .Q(TO_NOC[26]),
        .R(AR));
  FDRE \outport_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[27]_i_1_n_0 ),
        .Q(TO_NOC[27]),
        .R(AR));
  FDRE \outport_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[28]_i_1_n_0 ),
        .Q(TO_NOC[28]),
        .R(AR));
  FDRE \outport_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[29]_i_1_n_0 ),
        .Q(TO_NOC[29]),
        .R(AR));
  FDRE \outport_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[2]_i_1_n_0 ),
        .Q(TO_NOC[2]),
        .R(AR));
  FDRE \outport_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[30]_i_1_n_0 ),
        .Q(TO_NOC[30]),
        .R(AR));
  FDRE \outport_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[31]_i_1_n_0 ),
        .Q(TO_NOC[31]),
        .R(AR));
  FDRE \outport_reg[34] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[34]_i_1_n_0 ),
        .Q(TO_NOC[32]),
        .R(AR));
  FDRE \outport_reg[36] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[36]_i_1_n_0 ),
        .Q(TO_NOC[33]),
        .R(AR));
  FDRE \outport_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[3]_i_1_n_0 ),
        .Q(TO_NOC[3]),
        .R(AR));
  FDRE \outport_reg[42] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[42]_i_1_n_0 ),
        .Q(TO_NOC[34]),
        .R(AR));
  FDRE \outport_reg[43] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[43]_i_1_n_0 ),
        .Q(TO_NOC[35]),
        .R(AR));
  FDRE \outport_reg[44] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[44]_i_1_n_0 ),
        .Q(TO_NOC[36]),
        .R(AR));
  FDRE \outport_reg[45] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[45]_i_1_n_0 ),
        .Q(TO_NOC[37]),
        .R(AR));
  FDRE \outport_reg[46] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[46]_i_1_n_0 ),
        .Q(TO_NOC[38]),
        .R(AR));
  FDRE \outport_reg[47] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[47]_i_1_n_0 ),
        .Q(TO_NOC[39]),
        .R(AR));
  FDRE \outport_reg[48] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[48]_i_1_n_0 ),
        .Q(TO_NOC[40]),
        .R(AR));
  FDRE \outport_reg[49] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[49]_i_1_n_0 ),
        .Q(TO_NOC[41]),
        .R(AR));
  FDRE \outport_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[4]_i_1_n_0 ),
        .Q(TO_NOC[4]),
        .R(AR));
  FDRE \outport_reg[50] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[50]_i_1_n_0 ),
        .Q(TO_NOC[42]),
        .R(AR));
  FDRE \outport_reg[51] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[51]_i_1_n_0 ),
        .Q(TO_NOC[43]),
        .R(AR));
  FDRE \outport_reg[52] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[52]_i_1_n_0 ),
        .Q(TO_NOC[44]),
        .R(AR));
  FDRE \outport_reg[53] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[53]_i_1_n_0 ),
        .Q(TO_NOC[45]),
        .R(AR));
  FDRE \outport_reg[54] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[54]_i_1_n_0 ),
        .Q(TO_NOC[46]),
        .R(AR));
  FDRE \outport_reg[55] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[55]_i_3_n_0 ),
        .Q(TO_NOC[47]),
        .R(AR));
  FDRE \outport_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[5]_i_1_n_0 ),
        .Q(TO_NOC[5]),
        .R(AR));
  FDRE \outport_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[6]_i_1_n_0 ),
        .Q(TO_NOC[6]),
        .R(AR));
  FDRE \outport_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[7]_i_1_n_0 ),
        .Q(TO_NOC[7]),
        .R(AR));
  FDRE \outport_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[8]_i_1_n_0 ),
        .Q(TO_NOC[8]),
        .R(AR));
  FDRE \outport_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_2_n_0 ),
        .D(\outport[9]_i_1_n_0 ),
        .Q(TO_NOC[9]),
        .R(AR));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp
       (.I0(\command_reg_reg_n_0_[0] ),
        .I1(\command_reg_reg_n_0_[1] ),
        .O(plusOp__0));
  FDRE \priority_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(p_1_in[0]),
        .Q(\priority_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \priority_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(p_1_in[1]),
        .Q(\priority_reg_n_0_[5] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \process_map[0][EW] 
       (.I0(CONV_INTEGER[2]),
        .I1(CONV_INTEGER[1]),
        .I2(CONV_INTEGER[3]),
        .O(\process_map[0][EW]__0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7762)) 
    \process_map[0][NS] 
       (.I0(CONV_INTEGER[2]),
        .I1(CONV_INTEGER[3]),
        .I2(CONV_INTEGER[1]),
        .I3(CONV_INTEGER[0]),
        .O(\process_map[0][NS]__0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \recv_address[0]_i_1 
       (.I0(FROM_NOC[40]),
        .I1(FROM_NOC[43]),
        .I2(FROM_NOC[42]),
        .I3(\mem_address[0]_i_1_n_0 ),
        .O(\recv_address[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \recv_address[1]_i_1 
       (.I0(FROM_NOC[41]),
        .I1(FROM_NOC[43]),
        .I2(FROM_NOC[42]),
        .I3(\mem_address[1]_i_2_n_0 ),
        .O(\recv_address[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \recv_address[2]_i_1 
       (.I0(\recv_address[3]_i_3_n_0 ),
        .I1(FROM_NOC[32]),
        .I2(FROM_NOC[33]),
        .I3(FROM_NOC[34]),
        .I4(FROM_NOC[35]),
        .O(\recv_address[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \recv_address[3]_i_1 
       (.I0(recv_state[1]),
        .I1(Sync[1]),
        .I2(recv_state[0]),
        .O(data_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \recv_address[3]_i_2 
       (.I0(\recv_address[3]_i_3_n_0 ),
        .I1(FROM_NOC[32]),
        .I2(FROM_NOC[33]),
        .I3(FROM_NOC[34]),
        .I4(FROM_NOC[35]),
        .O(\recv_address[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \recv_address[3]_i_3 
       (.I0(FROM_NOC[39]),
        .I1(FROM_NOC[37]),
        .I2(FROM_NOC[38]),
        .I3(FROM_NOC[36]),
        .O(\recv_address[3]_i_3_n_0 ));
  FDCE \recv_address_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\recv_address[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \recv_address_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\recv_address[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \recv_address_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\recv_address[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \recv_address_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\recv_address[3]_i_2_n_0 ),
        .Q(Q[3]));
  LUT4 #(
    .INIT(16'h6F60)) 
    recv_buffer_write_i_1
       (.I0(recv_state[1]),
        .I1(recv_state[0]),
        .I2(S_AXI_ARESETN),
        .I3(WEBWE),
        .O(recv_buffer_write_i_1_n_0));
  FDRE recv_buffer_write_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(recv_buffer_write_i_1_n_0),
        .Q(WEBWE),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2FFF2F2FE000E0E0)) 
    \recv_counter[0][0]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(recv_state[1]),
        .I2(S_AXI_ARESETN),
        .I3(\recv_counter[0][0]_i_2_n_0 ),
        .I4(\recv_counter[0][1]_i_4_n_0 ),
        .I5(\recv_counter_reg[0] [0]),
        .O(\recv_counter[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \recv_counter[0][0]_i_2 
       (.I0(Sync[1]),
        .I1(recv_state[1]),
        .I2(recv_state[0]),
        .I3(\mem_address_reg_n_0_[3] ),
        .I4(\mem_address_reg_n_0_[2] ),
        .O(\recv_counter[0][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \recv_counter[0][1]_i_1 
       (.I0(\recv_counter[0][1]_i_2_n_0 ),
        .I1(S_AXI_ARESETN),
        .I2(\recv_counter[3][0]_i_2_n_0 ),
        .I3(\recv_counter[0][1]_i_3_n_0 ),
        .I4(\recv_counter[0][1]_i_4_n_0 ),
        .I5(\recv_counter_reg[0] [1]),
        .O(\recv_counter[0][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \recv_counter[0][1]_i_2 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[0] [0]),
        .I2(\recv_counter_reg[0] [1]),
        .I3(recv_state[1]),
        .O(\recv_counter[0][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \recv_counter[0][1]_i_3 
       (.I0(\mem_address_reg_n_0_[2] ),
        .I1(\mem_address_reg_n_0_[3] ),
        .O(\recv_counter[0][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \recv_counter[0][1]_i_4 
       (.I0(\recv_address[3]_i_2_n_0 ),
        .I1(Sync[1]),
        .I2(\recv_counter[2][1]_i_5_n_0 ),
        .I3(recv_state[1]),
        .I4(recv_state[0]),
        .I5(\recv_address[2]_i_1_n_0 ),
        .O(\recv_counter[0][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2FFF2F2FE000E0E0)) 
    \recv_counter[1][0]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(recv_state[1]),
        .I2(S_AXI_ARESETN),
        .I3(\recv_counter[1][1]_i_3_n_0 ),
        .I4(\recv_counter[1][0]_i_2_n_0 ),
        .I5(\recv_counter_reg[1] [0]),
        .O(\recv_counter[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \recv_counter[1][0]_i_2 
       (.I0(Sync[1]),
        .I1(recv_state[1]),
        .I2(recv_state[0]),
        .I3(\mem_address_reg_n_0_[3] ),
        .I4(\mem_address_reg_n_0_[2] ),
        .O(\recv_counter[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFBFBF88808080)) 
    \recv_counter[1][1]_i_1 
       (.I0(\recv_counter[1][1]_i_2_n_0 ),
        .I1(S_AXI_ARESETN),
        .I2(\recv_counter[1][1]_i_3_n_0 ),
        .I3(\recv_counter[3][0]_i_2_n_0 ),
        .I4(\recv_counter[1][1]_i_4_n_0 ),
        .I5(\recv_counter_reg[1] [1]),
        .O(\recv_counter[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hC3AA)) 
    \recv_counter[1][1]_i_2 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[1] [0]),
        .I2(\recv_counter_reg[1] [1]),
        .I3(recv_state[1]),
        .O(\recv_counter[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \recv_counter[1][1]_i_3 
       (.I0(\recv_address[2]_i_1_n_0 ),
        .I1(Sync[1]),
        .I2(\recv_counter[2][1]_i_5_n_0 ),
        .I3(recv_state[1]),
        .I4(recv_state[0]),
        .I5(\recv_address[3]_i_2_n_0 ),
        .O(\recv_counter[1][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \recv_counter[1][1]_i_4 
       (.I0(\mem_address_reg_n_0_[2] ),
        .I1(\mem_address_reg_n_0_[3] ),
        .O(\recv_counter[1][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2FFF2F2FE000E0E0)) 
    \recv_counter[2][0]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(recv_state[1]),
        .I2(S_AXI_ARESETN),
        .I3(\recv_counter[2][1]_i_3_n_0 ),
        .I4(\recv_counter[2][0]_i_2_n_0 ),
        .I5(\recv_counter_reg[2] [0]),
        .O(\recv_counter[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \recv_counter[2][0]_i_2 
       (.I0(Sync[1]),
        .I1(recv_state[1]),
        .I2(recv_state[0]),
        .I3(\mem_address_reg_n_0_[2] ),
        .I4(\mem_address_reg_n_0_[3] ),
        .O(\recv_counter[2][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFBFBF88808080)) 
    \recv_counter[2][1]_i_1 
       (.I0(\recv_counter[2][1]_i_2_n_0 ),
        .I1(S_AXI_ARESETN),
        .I2(\recv_counter[2][1]_i_3_n_0 ),
        .I3(\recv_counter[3][0]_i_2_n_0 ),
        .I4(\recv_counter[2][1]_i_4_n_0 ),
        .I5(\recv_counter_reg[2] [1]),
        .O(\recv_counter[2][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \recv_counter[2][1]_i_2 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[2] [0]),
        .I2(\recv_counter_reg[2] [1]),
        .I3(recv_state[1]),
        .O(\recv_counter[2][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \recv_counter[2][1]_i_3 
       (.I0(\recv_address[3]_i_2_n_0 ),
        .I1(Sync[1]),
        .I2(\recv_counter[2][1]_i_5_n_0 ),
        .I3(recv_state[1]),
        .I4(recv_state[0]),
        .I5(\recv_address[2]_i_1_n_0 ),
        .O(\recv_counter[2][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \recv_counter[2][1]_i_4 
       (.I0(\mem_address_reg_n_0_[3] ),
        .I1(\mem_address_reg_n_0_[2] ),
        .O(\recv_counter[2][1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \recv_counter[2][1]_i_5 
       (.I0(FROM_NOC[43]),
        .I1(FROM_NOC[42]),
        .O(\recv_counter[2][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2FFFFFFFE0000000)) 
    \recv_counter[3][0]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(recv_state[1]),
        .I2(\recv_counter[3][0]_i_2_n_0 ),
        .I3(\recv_counter[3][0]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(\recv_counter_reg[3] [0]),
        .O(\recv_counter[3][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \recv_counter[3][0]_i_2 
       (.I0(recv_state[0]),
        .I1(recv_state[1]),
        .I2(Sync[1]),
        .O(\recv_counter[3][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \recv_counter[3][0]_i_3 
       (.I0(\mem_address_reg_n_0_[2] ),
        .I1(\mem_address_reg_n_0_[3] ),
        .O(\recv_counter[3][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCAFF3A00)) 
    \recv_counter[3][1]_i_1 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[3] [0]),
        .I2(recv_state[1]),
        .I3(\recv_counter_reg[3]0 ),
        .I4(\recv_counter_reg[3] [1]),
        .O(\recv_counter[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \recv_counter[3][1]_i_2 
       (.I0(Sync[1]),
        .I1(recv_state[1]),
        .I2(recv_state[0]),
        .I3(\mem_address_reg_n_0_[2] ),
        .I4(\mem_address_reg_n_0_[3] ),
        .I5(S_AXI_ARESETN),
        .O(\recv_counter_reg[3]0 ));
  FDRE \recv_counter_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[0][0]_i_1_n_0 ),
        .Q(\recv_counter_reg[0] [0]),
        .R(1'b0));
  FDRE \recv_counter_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[0][1]_i_1_n_0 ),
        .Q(\recv_counter_reg[0] [1]),
        .R(1'b0));
  FDRE \recv_counter_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[1][0]_i_1_n_0 ),
        .Q(\recv_counter_reg[1] [0]),
        .R(1'b0));
  FDRE \recv_counter_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[1][1]_i_1_n_0 ),
        .Q(\recv_counter_reg[1] [1]),
        .R(1'b0));
  FDRE \recv_counter_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[2][0]_i_1_n_0 ),
        .Q(\recv_counter_reg[2] [0]),
        .R(1'b0));
  FDRE \recv_counter_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[2][1]_i_1_n_0 ),
        .Q(\recv_counter_reg[2] [1]),
        .R(1'b0));
  FDRE \recv_counter_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[3][0]_i_1_n_0 ),
        .Q(\recv_counter_reg[3] [0]),
        .R(1'b0));
  FDRE \recv_counter_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[3][1]_i_1_n_0 ),
        .Q(\recv_counter_reg[3] [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF0FF7F0)) 
    \recv_state[0]_i_1 
       (.I0(FROM_NOC[43]),
        .I1(FROM_NOC[42]),
        .I2(recv_state[0]),
        .I3(Sync[1]),
        .I4(recv_state[1]),
        .O(\recv_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF0FF8F0)) 
    \recv_state[1]_i_1 
       (.I0(FROM_NOC[43]),
        .I1(FROM_NOC[42]),
        .I2(recv_state[0]),
        .I3(Sync[1]),
        .I4(recv_state[1]),
        .O(\recv_state[1]_i_1_n_0 ));
  FDCE \recv_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\recv_state[0]_i_1_n_0 ),
        .Q(recv_state[0]));
  FDCE \recv_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\recv_state[1]_i_1_n_0 ),
        .Q(recv_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[0]_i_1 
       (.I0(\rni_readdata_delayed_reg[0]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rni_readdata_delayed[0]_i_10 
       (.I0(\msg_length_reg_reg[6] [0]),
        .I1(send_buffer_address1[1]),
        .I2(\msg_length_reg_reg[5] [0]),
        .I3(send_buffer_address1[0]),
        .I4(\msg_length_reg_reg[4] [0]),
        .O(\rni_readdata_delayed[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \rni_readdata_delayed[0]_i_11 
       (.I0(\channel_status_reg[1] [1]),
        .I1(\channel_status_reg[1] [0]),
        .I2(send_buffer_address1[0]),
        .I3(\channel_status_reg[0] [1]),
        .I4(\channel_status_reg[0] [0]),
        .O(\rni_readdata_delayed[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \rni_readdata_delayed[0]_i_12 
       (.I0(\channel_status_reg[3] [1]),
        .I1(\channel_status_reg[3] [0]),
        .I2(send_buffer_address1[0]),
        .I3(\channel_status_reg[2] [1]),
        .I4(\channel_status_reg[2] [0]),
        .O(\rni_readdata_delayed[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \rni_readdata_delayed[0]_i_13 
       (.I0(\channel_status_reg[5] [1]),
        .I1(\channel_status_reg[5] [0]),
        .I2(send_buffer_address1[0]),
        .I3(\channel_status_reg[4] [1]),
        .I4(\channel_status_reg[4] [0]),
        .O(\rni_readdata_delayed[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \rni_readdata_delayed[0]_i_14 
       (.I0(\channel_status_reg[7] [1]),
        .I1(\channel_status_reg[7] [0]),
        .I2(send_buffer_address1[0]),
        .I3(\channel_status_reg[6] [1]),
        .I4(\channel_status_reg[6] [0]),
        .O(\rni_readdata_delayed[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFA0CFCFCFCF)) 
    \rni_readdata_delayed[0]_i_3 
       (.I0(\interrupt_reg_reg_n_0_[0] ),
        .I1(synchronize_flag),
        .I2(dap_read_1),
        .I3(write_status_reg_n_0),
        .I4(xmit_state[1]),
        .I5(S_AXI_AWADDR_2__s_net_1),
        .O(\rni_readdata_delayed[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[0]_i_4 
       (.I0(\rni_readdata_delayed_reg[0]_i_7_n_0 ),
        .I1(\rni_readdata_delayed_reg[0]_i_8_n_0 ),
        .I2(\S_AXI_AWADDR[8]_0 ),
        .I3(\rni_readdata_delayed[0]_i_9_n_0 ),
        .I4(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I5(\rni_readdata_delayed[0]_i_10_n_0 ),
        .O(\rni_readdata_delayed[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rni_readdata_delayed[0]_i_9 
       (.I0(\msg_length_reg_reg[2] [0]),
        .I1(send_buffer_address1[1]),
        .I2(\msg_length_reg_reg[1] [0]),
        .I3(send_buffer_address1[0]),
        .I4(\msg_length_reg_reg[0] [0]),
        .O(\rni_readdata_delayed[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[1]_i_1 
       (.I0(\rni_readdata_delayed[1]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \rni_readdata_delayed[1]_i_2 
       (.I0(\S_AXI_AWADDR[8]_0 ),
        .I1(\rni_readdata_delayed[1]_i_3_n_0 ),
        .I2(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I3(\rni_readdata_delayed[1]_i_4_n_0 ),
        .I4(\S_AXI_AWADDR[8] ),
        .I5(\rni_readdata_delayed[1]_i_5_n_0 ),
        .O(\rni_readdata_delayed[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \rni_readdata_delayed[1]_i_3 
       (.I0(\msg_length_reg_reg[6] [1]),
        .I1(send_buffer_address1[1]),
        .I2(\msg_length_reg_reg[5] [1]),
        .I3(send_buffer_address1[0]),
        .I4(\msg_length_reg_reg[4] [1]),
        .O(\rni_readdata_delayed[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \rni_readdata_delayed[1]_i_4 
       (.I0(\msg_length_reg_reg[2] [1]),
        .I1(send_buffer_address1[1]),
        .I2(\msg_length_reg_reg[1] [1]),
        .I3(send_buffer_address1[0]),
        .I4(\msg_length_reg_reg[0] [1]),
        .O(\rni_readdata_delayed[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hDCCC)) 
    \rni_readdata_delayed[1]_i_5 
       (.I0(send_buffer_address1[0]),
        .I1(ADDRARDADDR[0]),
        .I2(send_buffer_address1[1]),
        .I3(\interrupt_reg_reg_n_0_[1] ),
        .O(\rni_readdata_delayed[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[2]_i_1 
       (.I0(\rni_readdata_delayed[2]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \rni_readdata_delayed[2]_i_2 
       (.I0(\S_AXI_AWADDR[8] ),
        .I1(S_AXI_AWADDR_3__s_net_1),
        .I2(\interrupt_reg_reg_n_0_[2] ),
        .I3(dap_read_2),
        .I4(\rni_readdata_delayed[2]_i_4_n_0 ),
        .I5(\rni_readdata_delayed[2]_i_5_n_0 ),
        .O(\rni_readdata_delayed[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \rni_readdata_delayed[2]_i_4 
       (.I0(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I1(\d_pid_reg[0] [0]),
        .I2(send_buffer_address1[0]),
        .I3(\d_pid_reg[1] [0]),
        .I4(send_buffer_address1[1]),
        .I5(\d_pid_reg[2] [0]),
        .O(\rni_readdata_delayed[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFFEAEAAAAFEAE)) 
    \rni_readdata_delayed[2]_i_5 
       (.I0(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I1(\d_pid_reg[4] [0]),
        .I2(send_buffer_address1[0]),
        .I3(\d_pid_reg[5] [0]),
        .I4(send_buffer_address1[1]),
        .I5(\d_pid_reg[6] [0]),
        .O(\rni_readdata_delayed[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[3]_i_1 
       (.I0(\rni_readdata_delayed[3]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \rni_readdata_delayed[3]_i_2 
       (.I0(\S_AXI_AWADDR[8]_0 ),
        .I1(\rni_readdata_delayed[3]_i_3_n_0 ),
        .I2(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I3(\rni_readdata_delayed[3]_i_4_n_0 ),
        .I4(\S_AXI_AWADDR[8] ),
        .I5(\rni_readdata_delayed[3]_i_5_n_0 ),
        .O(\rni_readdata_delayed[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \rni_readdata_delayed[3]_i_3 
       (.I0(\d_pid_reg[6] [1]),
        .I1(send_buffer_address1[1]),
        .I2(\d_pid_reg[5] [1]),
        .I3(send_buffer_address1[0]),
        .I4(\d_pid_reg[4] [1]),
        .O(\rni_readdata_delayed[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \rni_readdata_delayed[3]_i_4 
       (.I0(\d_pid_reg[2] [1]),
        .I1(send_buffer_address1[1]),
        .I2(\d_pid_reg[1] [1]),
        .I3(send_buffer_address1[0]),
        .I4(\d_pid_reg[0] [1]),
        .O(\rni_readdata_delayed[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \rni_readdata_delayed[3]_i_5 
       (.I0(ADDRARDADDR[0]),
        .I1(send_buffer_address1[1]),
        .I2(send_buffer_address1[0]),
        .I3(p_0_in_0),
        .O(\rni_readdata_delayed[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[4]_i_1 
       (.I0(\rni_readdata_delayed[4]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \rni_readdata_delayed[4]_i_2 
       (.I0(\rni_readdata_delayed[4]_i_3_n_0 ),
        .I1(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I2(\rni_readdata_delayed[4]_i_4_n_0 ),
        .I3(dap_read_2),
        .O(\rni_readdata_delayed[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rni_readdata_delayed[4]_i_3 
       (.I0(\d_pid_reg[2] [2]),
        .I1(send_buffer_address1[1]),
        .I2(\d_pid_reg[1] [2]),
        .I3(send_buffer_address1[0]),
        .I4(\d_pid_reg[0] [2]),
        .O(\rni_readdata_delayed[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rni_readdata_delayed[4]_i_4 
       (.I0(\d_pid_reg[6] [2]),
        .I1(send_buffer_address1[1]),
        .I2(\d_pid_reg[5] [2]),
        .I3(send_buffer_address1[0]),
        .I4(\d_pid_reg[4] [2]),
        .O(\rni_readdata_delayed[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[5]_i_1 
       (.I0(\rni_readdata_delayed[5]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rni_readdata_delayed[5]_i_2 
       (.I0(\rni_readdata_delayed[5]_i_3_n_0 ),
        .I1(\rni_readdata_delayed[5]_i_4_n_0 ),
        .I2(dap_read_2),
        .O(\rni_readdata_delayed[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FCFCFFF0FAFAF)) 
    \rni_readdata_delayed[5]_i_3 
       (.I0(\d_pid_reg[0] [3]),
        .I1(\d_pid_reg[2] [3]),
        .I2(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I3(\d_pid_reg[1] [3]),
        .I4(send_buffer_address1[0]),
        .I5(send_buffer_address1[1]),
        .O(\rni_readdata_delayed[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5050015155550151)) 
    \rni_readdata_delayed[5]_i_4 
       (.I0(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I1(\d_pid_reg[4] [3]),
        .I2(send_buffer_address1[0]),
        .I3(\d_pid_reg[5] [3]),
        .I4(send_buffer_address1[1]),
        .I5(\d_pid_reg[6] [3]),
        .O(\rni_readdata_delayed[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[6]_i_1 
       (.I0(\rni_readdata_delayed[6]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \rni_readdata_delayed[6]_i_2 
       (.I0(\rni_readdata_delayed[6]_i_3_n_0 ),
        .I1(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I2(\rni_readdata_delayed[6]_i_4_n_0 ),
        .I3(dap_read_2),
        .O(\rni_readdata_delayed[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rni_readdata_delayed[6]_i_3 
       (.I0(\s_pid_reg[2] [0]),
        .I1(send_buffer_address1[1]),
        .I2(\s_pid_reg[1] [0]),
        .I3(send_buffer_address1[0]),
        .I4(\s_pid_reg[0] [0]),
        .O(\rni_readdata_delayed[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rni_readdata_delayed[6]_i_4 
       (.I0(\s_pid_reg[6] [0]),
        .I1(send_buffer_address1[1]),
        .I2(\s_pid_reg[5] [0]),
        .I3(send_buffer_address1[0]),
        .I4(\s_pid_reg[4] [0]),
        .O(\rni_readdata_delayed[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[7]_i_1 
       (.I0(\rni_readdata_delayed[7]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \rni_readdata_delayed[7]_i_2 
       (.I0(\rni_readdata_delayed[7]_i_3_n_0 ),
        .I1(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I2(\rni_readdata_delayed[7]_i_4_n_0 ),
        .I3(dap_read_2),
        .O(\rni_readdata_delayed[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rni_readdata_delayed[7]_i_3 
       (.I0(\s_pid_reg[2] [1]),
        .I1(send_buffer_address1[1]),
        .I2(\s_pid_reg[1] [1]),
        .I3(send_buffer_address1[0]),
        .I4(\s_pid_reg[0] [1]),
        .O(\rni_readdata_delayed[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rni_readdata_delayed[7]_i_4 
       (.I0(\s_pid_reg[6] [1]),
        .I1(send_buffer_address1[1]),
        .I2(\s_pid_reg[5] [1]),
        .I3(send_buffer_address1[0]),
        .I4(\s_pid_reg[4] [1]),
        .O(\rni_readdata_delayed[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[8]_i_1 
       (.I0(\rni_readdata_delayed[8]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \rni_readdata_delayed[8]_i_2 
       (.I0(\rni_readdata_delayed[8]_i_3_n_0 ),
        .I1(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I2(\rni_readdata_delayed[8]_i_5_n_0 ),
        .I3(dap_read_2),
        .O(\rni_readdata_delayed[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rni_readdata_delayed[8]_i_3 
       (.I0(\s_pid_reg[2] [2]),
        .I1(send_buffer_address1[1]),
        .I2(\s_pid_reg[1] [2]),
        .I3(send_buffer_address1[0]),
        .I4(\s_pid_reg[0] [2]),
        .O(\rni_readdata_delayed[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \rni_readdata_delayed[8]_i_4 
       (.I0(\channel_nr_reg[2]_0 ),
        .I1(S_AXI_AWADDR[1]),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[1]),
        .I4(dap_read_0),
        .I5(dap_address[1]),
        .O(\rni_readdata_delayed[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rni_readdata_delayed[8]_i_5 
       (.I0(\s_pid_reg[6] [2]),
        .I1(send_buffer_address1[1]),
        .I2(\s_pid_reg[5] [2]),
        .I3(send_buffer_address1[0]),
        .I4(\s_pid_reg[4] [2]),
        .O(\rni_readdata_delayed[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[9]_i_1 
       (.I0(\rni_readdata_delayed[9]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rni_readdata_delayed[9]_i_2 
       (.I0(\rni_readdata_delayed[9]_i_3_n_0 ),
        .I1(dap_read_2),
        .I2(\rni_readdata_delayed[9]_i_5_n_0 ),
        .O(\rni_readdata_delayed[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33BB33BBFFF333F3)) 
    \rni_readdata_delayed[9]_i_3 
       (.I0(\s_pid_reg[2] [3]),
        .I1(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I2(\s_pid_reg[0] [3]),
        .I3(send_buffer_address1[0]),
        .I4(\s_pid_reg[1] [3]),
        .I5(send_buffer_address1[1]),
        .O(\rni_readdata_delayed[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5050015155550151)) 
    \rni_readdata_delayed[9]_i_5 
       (.I0(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I1(\s_pid_reg[4] [3]),
        .I2(send_buffer_address1[0]),
        .I3(\s_pid_reg[5] [3]),
        .I4(send_buffer_address1[1]),
        .I5(\s_pid_reg[6] [3]),
        .O(\rni_readdata_delayed[9]_i_5_n_0 ));
  MUXF7 \rni_readdata_delayed_reg[0]_i_2 
       (.I0(\rni_readdata_delayed[0]_i_3_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_4_n_0 ),
        .O(\rni_readdata_delayed_reg[0]_i_2_n_0 ),
        .S(\S_AXI_AWADDR[8] ));
  MUXF7 \rni_readdata_delayed_reg[0]_i_7 
       (.I0(\rni_readdata_delayed[0]_i_11_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_12_n_0 ),
        .O(\rni_readdata_delayed_reg[0]_i_7_n_0 ),
        .S(send_buffer_address1[1]));
  MUXF7 \rni_readdata_delayed_reg[0]_i_8 
       (.I0(\rni_readdata_delayed[0]_i_13_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_14_n_0 ),
        .O(\rni_readdata_delayed_reg[0]_i_8_n_0 ),
        .S(send_buffer_address1[1]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(D[0]),
        .I1(rni_chipselect),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(DOADO[0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(RAM_reg_0[0]),
        .O(\s_axi_rdata_i_reg[9] [0]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(D[1]),
        .I1(rni_chipselect),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(DOADO[1]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(RAM_reg_0[1]),
        .O(\s_axi_rdata_i_reg[9] [1]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(D[2]),
        .I1(rni_chipselect),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(DOADO[2]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(RAM_reg_0[2]),
        .O(\s_axi_rdata_i_reg[9] [2]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(D[3]),
        .I1(rni_chipselect),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(DOADO[3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(RAM_reg_0[3]),
        .O(\s_axi_rdata_i_reg[9] [3]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(D[4]),
        .I1(rni_chipselect),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(DOADO[4]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(RAM_reg_0[4]),
        .O(\s_axi_rdata_i_reg[9] [4]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(D[5]),
        .I1(rni_chipselect),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(DOADO[5]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(RAM_reg_0[5]),
        .O(\s_axi_rdata_i_reg[9] [5]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(D[6]),
        .I1(rni_chipselect),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(DOADO[6]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(RAM_reg_0[6]),
        .O(\s_axi_rdata_i_reg[9] [6]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(D[7]),
        .I1(rni_chipselect),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(DOADO[7]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(RAM_reg_0[7]),
        .O(\s_axi_rdata_i_reg[9] [7]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(D[8]),
        .I1(rni_chipselect),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(DOADO[8]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(RAM_reg_0[8]),
        .O(\s_axi_rdata_i_reg[9] [8]));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \s_axi_rdata_i[9]_i_1 
       (.I0(D[9]),
        .I1(rni_chipselect),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(DOADO[9]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(RAM_reg_0[9]),
        .O(\s_axi_rdata_i_reg[9] [9]));
  FDCE \s_pid_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[0][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[0] [0]));
  FDCE \s_pid_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[0][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[0] [1]));
  FDCE \s_pid_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[0][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[0] [2]));
  FDCE \s_pid_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[0][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[0] [3]));
  FDCE \s_pid_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1]_0 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[1] [0]));
  FDCE \s_pid_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1]_0 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[1] [1]));
  FDCE \s_pid_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1]_0 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[1] [2]));
  FDCE \s_pid_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1]_0 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[1] [3]));
  FDCE \s_pid_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_2 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[2] [0]));
  FDCE \s_pid_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_2 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[2] [1]));
  FDCE \s_pid_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_2 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[2] [2]));
  FDCE \s_pid_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_2 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[2] [3]));
  FDCE \s_pid_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4]_1 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[4] [0]));
  FDCE \s_pid_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4]_1 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[4] [1]));
  FDCE \s_pid_reg[4][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4]_1 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[4] [2]));
  FDCE \s_pid_reg[4][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4]_1 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[4] [3]));
  FDCE \s_pid_reg[5][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[5][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[5] [0]));
  FDCE \s_pid_reg[5][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[5][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[5] [1]));
  FDCE \s_pid_reg[5][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[5][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[5] [2]));
  FDCE \s_pid_reg[5][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[5][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[5] [3]));
  FDCE \s_pid_reg[6][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[6][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[6] [0]));
  FDCE \s_pid_reg[6][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[6][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[6] [1]));
  FDCE \s_pid_reg[6][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[6][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[6] [2]));
  FDCE \s_pid_reg[6][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[6][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[6] [3]));
  LUT5 #(
    .INIT(32'hF0B20000)) 
    send_clock_i_1
       (.I0(xmit_state[0]),
        .I1(xmit_state[2]),
        .I2(send_clock_reg_n_0),
        .I3(xmit_state[1]),
        .I4(S_AXI_ARESETN),
        .O(send_clock_i_1_n_0));
  FDRE send_clock_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(send_clock_i_1_n_0),
        .Q(send_clock_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4444444F)) 
    \send_counter[0]_i_1 
       (.I0(xmit_state[2]),
        .I1(\command_reg_reg_n_0_[0] ),
        .I2(ADDRBWRADDR[0]),
        .I3(xmit_state[1]),
        .I4(xmit_state[0]),
        .O(send_counter[0]));
  LUT3 #(
    .INIT(8'h06)) 
    \send_counter[1]_i_1 
       (.I0(xmit_state[2]),
        .I1(xmit_state[0]),
        .I2(xmit_state[1]),
        .O(\send_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444444444444F44F)) 
    \send_counter[1]_i_2 
       (.I0(xmit_state[2]),
        .I1(\command_reg_reg_n_0_[1] ),
        .I2(ADDRBWRADDR[0]),
        .I3(ADDRBWRADDR[1]),
        .I4(xmit_state[1]),
        .I5(xmit_state[0]),
        .O(send_counter[1]));
  FDRE \send_counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\send_counter[1]_i_1_n_0 ),
        .D(send_counter[0]),
        .Q(ADDRBWRADDR[0]),
        .R(AR));
  FDRE \send_counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\send_counter[1]_i_1_n_0 ),
        .D(send_counter[1]),
        .Q(ADDRBWRADDR[1]),
        .R(AR));
  LUT4 #(
    .INIT(16'h2F20)) 
    slave_irq_i_1
       (.I0(HeartBeat),
        .I1(old_heartbeat),
        .I2(S_AXI_ARESETN),
        .I3(NoC_IRQ),
        .O(slave_irq_i_1_n_0));
  FDRE slave_irq_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(slave_irq_i_1_n_0),
        .Q(NoC_IRQ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \src_buffer[1]_i_1 
       (.I0(xmit_state[0]),
        .I1(xmit_state[2]),
        .I2(xmit_state[1]),
        .O(src_buffer));
  FDRE \src_buffer_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(src_buffer),
        .D(p_0_in[0]),
        .Q(ADDRBWRADDR[2]),
        .R(AR));
  FDRE \src_buffer_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(src_buffer),
        .D(p_0_in[1]),
        .Q(ADDRBWRADDR[3]),
        .R(AR));
  FDRE \src_pid_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(p_2_in[0]),
        .Q(\src_pid_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \src_pid_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(p_2_in[1]),
        .Q(\src_pid_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \src_pid_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(p_2_in[2]),
        .Q(\src_pid_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \src_pid_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(dest_col),
        .D(p_2_in[3]),
        .Q(\src_pid_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0FFFFFFF04444444)) 
    synchronize_flag_i_1
       (.I0(old_heartbeat),
        .I1(HeartBeat),
        .I2(send_buffer_address1[0]),
        .I3(send_buffer_address1[1]),
        .I4(Bus_RNW_reg_reg_0),
        .I5(synchronize_flag),
        .O(synchronize_flag_i_1_n_0));
  FDCE synchronize_flag_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(synchronize_flag_i_1_n_0),
        .Q(synchronize_flag));
  LUT2 #(
    .INIT(4'h2)) 
    \toggle_bit[0]_i_1 
       (.I0(HeartBeat),
        .I1(old_heartbeat),
        .O(slave_irq0));
  LUT1 #(
    .INIT(2'h1)) 
    \toggle_bit[0]_i_2 
       (.I0(\channel_nr_reg[2]_0 ),
        .O(toggle_address));
  FDCE \toggle_bit_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(toggle_address),
        .Q(\channel_nr_reg[2]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    write_status_reg
       (.I0(xmit_state[2]),
        .I1(xmit_state[0]),
        .O(write_status_reg_n_0));
endmodule

(* ORIG_REF_NAME = "kth_axi_rni_static" *) 
module BD_kth_axi_rni_static_2_0_kth_axi_rni_static
   (S_AXI_RDATA,
    TO_NOC,
    S_AXI_ARREADY,
    S_AXI_WREADY,
    S_AXI_RVALID,
    S_AXI_BVALID,
    dap_readdata,
    NoC_IRQ,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    dap_address,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    Sync,
    HeartBeat,
    FROM_NOC,
    dap_read,
    dap_write,
    S_AXI_WDATA,
    dap_writedata,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_BREADY);
  output [31:0]S_AXI_RDATA;
  output [47:0]TO_NOC;
  output S_AXI_ARREADY;
  output S_AXI_WREADY;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  output [31:0]dap_readdata;
  output NoC_IRQ;
  input [8:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [8:0]S_AXI_ARADDR;
  input [8:0]dap_address;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input [1:0]Sync;
  input HeartBeat;
  input [43:0]FROM_NOC;
  input dap_read;
  input dap_write;
  input [31:0]S_AXI_WDATA;
  input [31:0]dap_writedata;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_BREADY;

  wire AXI_LITE_IPIF_I_n_24;
  wire AXI_LITE_IPIF_I_n_30;
  wire AXI_LITE_IPIF_I_n_34;
  wire AXI_LITE_IPIF_I_n_37;
  wire AXI_LITE_IPIF_I_n_38;
  wire AXI_LITE_IPIF_I_n_39;
  wire AXI_LITE_IPIF_I_n_41;
  wire AXI_LITE_IPIF_I_n_42;
  wire AXI_LITE_IPIF_I_n_43;
  wire AXI_LITE_IPIF_I_n_44;
  wire AXI_LITE_IPIF_I_n_45;
  wire AXI_LITE_IPIF_I_n_46;
  wire AXI_LITE_IPIF_I_n_47;
  wire [43:0]FROM_NOC;
  wire \G0.recv_buffer/wea ;
  wire \G0.send_buffer/wea ;
  wire HeartBeat;
  wire [9:0]IP2Bus_Data;
  wire NoC_IRQ;
  wire Reset;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [1:0]Sync;
  wire [47:0]TO_NOC;
  wire USER_LOGIC_I_n_49;
  wire USER_LOGIC_I_n_60;
  wire USER_LOGIC_I_n_61;
  wire [8:0]dap_address;
  wire dap_read;
  wire [31:0]dap_readdata;
  wire dap_write;
  wire [31:0]dap_writedata;
  wire \interface/command_reg ;
  wire ipif_Bus2IP_RdCE;
  wire old_slave_read;
  wire [31:10]p_1_out;
  wire [31:10]p_3_out;
  wire p_7_in;
  wire p_8_in;
  wire rni_chipselect;
  wire [3:0]send_buffer_address1;
  wire [31:10]slave_readdata;

  BD_kth_axi_rni_static_2_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.D(slave_readdata),
        .E(\interface/command_reg ),
        .RAM_reg(AXI_LITE_IPIF_I_n_30),
        .RAM_reg_0(\G0.send_buffer/wea ),
        .RAM_reg_1(AXI_LITE_IPIF_I_n_39),
        .RAM_reg_2(IP2Bus_Data),
        .Reset(Reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[8:5],S_AXI_ARADDR[2:0]}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[8:5],S_AXI_AWADDR[2:0]}),
        .\S_AXI_AWADDR[5] (send_buffer_address1[3:2]),
        .\S_AXI_AWADDR[8] (USER_LOGIC_I_n_61),
        .S_AXI_AWADDR_6__s_port_(USER_LOGIC_I_n_60),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .WEA(\G0.recv_buffer/wea ),
        .\command_reg_reg[0] (AXI_LITE_IPIF_I_n_34),
        .\command_reg_reg[0]_0 (AXI_LITE_IPIF_I_n_43),
        .dap_address({dap_address[8:5],dap_address[2:0]}),
        .dap_read(dap_read),
        .dap_read_0(USER_LOGIC_I_n_49),
        .dap_write(dap_write),
        .\interrupt_reg_reg[0] (AXI_LITE_IPIF_I_n_38),
        .ipif_Bus2IP_RdCE(ipif_Bus2IP_RdCE),
        .old_slave_read(old_slave_read),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_7_in(p_7_in),
        .p_8_in(p_8_in),
        .rni_chipselect(rni_chipselect),
        .\rni_readdata_delayed_reg[0] (AXI_LITE_IPIF_I_n_41),
        .\rni_readdata_delayed_reg[0]_0 (AXI_LITE_IPIF_I_n_45),
        .\rni_readdata_delayed_reg[10] (AXI_LITE_IPIF_I_n_24),
        .\rni_readdata_delayed_reg[1] (AXI_LITE_IPIF_I_n_42),
        .\rni_readdata_delayed_reg[2] (AXI_LITE_IPIF_I_n_44),
        .\rni_readdata_delayed_reg[2]_0 (AXI_LITE_IPIF_I_n_46),
        .\rni_readdata_delayed_reg[2]_1 (AXI_LITE_IPIF_I_n_47),
        .send_buffer_address1(send_buffer_address1[1:0]),
        .synchronize_flag_reg(AXI_LITE_IPIF_I_n_37));
  BD_kth_axi_rni_static_2_0_kth_generic_rni_static USER_LOGIC_I
       (.Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_24),
        .Bus_RNW_reg_reg_0(AXI_LITE_IPIF_I_n_37),
        .Bus_RNW_reg_reg_1(AXI_LITE_IPIF_I_n_34),
        .D(slave_readdata),
        .E(\interface/command_reg ),
        .FROM_NOC(FROM_NOC),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\G0.send_buffer/wea ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (AXI_LITE_IPIF_I_n_38),
        .HeartBeat(HeartBeat),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (AXI_LITE_IPIF_I_n_30),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (AXI_LITE_IPIF_I_n_39),
        .NoC_IRQ(NoC_IRQ),
        .RAM_reg(send_buffer_address1[3:2]),
        .RAM_reg_0(USER_LOGIC_I_n_49),
        .Reset(Reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[4:0]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[4:0]),
        .\S_AXI_AWADDR[7] (AXI_LITE_IPIF_I_n_43),
        .\S_AXI_AWADDR[8] (AXI_LITE_IPIF_I_n_47),
        .\S_AXI_AWADDR[8]_0 (AXI_LITE_IPIF_I_n_42),
        .S_AXI_AWADDR_2__s_port_(AXI_LITE_IPIF_I_n_41),
        .S_AXI_AWADDR_3__s_port_(AXI_LITE_IPIF_I_n_44),
        .S_AXI_WDATA(S_AXI_WDATA),
        .Sync(Sync),
        .TO_NOC(TO_NOC),
        .WEA(\G0.recv_buffer/wea ),
        .\command_reg_reg[0] (USER_LOGIC_I_n_60),
        .\command_reg_reg[0]_0 (USER_LOGIC_I_n_61),
        .dap_address(dap_address[4:1]),
        .dap_read(dap_read),
        .dap_read_0(AXI_LITE_IPIF_I_n_45),
        .dap_read_1(AXI_LITE_IPIF_I_n_46),
        .dap_readdata(dap_readdata),
        .dap_write(dap_write),
        .dap_writedata(dap_writedata),
        .ipif_Bus2IP_RdCE(ipif_Bus2IP_RdCE),
        .old_slave_read(old_slave_read),
        .p_7_in(p_7_in),
        .p_8_in(p_8_in),
        .rni_chipselect(rni_chipselect),
        .\s_axi_rdata_i_reg[31] (p_3_out),
        .\s_axi_rdata_i_reg[31]_0 (p_1_out),
        .\s_axi_rdata_i_reg[9] (IP2Bus_Data),
        .send_buffer_address1(send_buffer_address1[1:0]));
endmodule

(* ORIG_REF_NAME = "kth_axi_rni_static_c1_v1_0" *) 
module BD_kth_axi_rni_static_2_0_kth_axi_rni_static_c1_v1_0
   (S_AXI_RDATA,
    TO_NOC,
    S_AXI_ARREADY,
    S_AXI_WREADY,
    S_AXI_RVALID,
    S_AXI_BVALID,
    dap_readdata,
    NoC_IRQ,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    dap_address,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    Sync,
    HeartBeat,
    FROM_NOC,
    dap_read,
    dap_write,
    S_AXI_WDATA,
    dap_writedata,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_BREADY);
  output [31:0]S_AXI_RDATA;
  output [47:0]TO_NOC;
  output S_AXI_ARREADY;
  output S_AXI_WREADY;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  output [31:0]dap_readdata;
  output NoC_IRQ;
  input [8:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [8:0]S_AXI_ARADDR;
  input [8:0]dap_address;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input [1:0]Sync;
  input HeartBeat;
  input [43:0]FROM_NOC;
  input dap_read;
  input dap_write;
  input [31:0]S_AXI_WDATA;
  input [31:0]dap_writedata;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_BREADY;

  wire [43:0]FROM_NOC;
  wire HeartBeat;
  wire NoC_IRQ;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [1:0]Sync;
  wire [47:0]TO_NOC;
  wire [8:0]dap_address;
  wire dap_read;
  wire [31:0]dap_readdata;
  wire dap_write;
  wire [31:0]dap_writedata;

  BD_kth_axi_rni_static_2_0_kth_axi_rni_static kth_axi_rni_static_0
       (.FROM_NOC(FROM_NOC),
        .HeartBeat(HeartBeat),
        .NoC_IRQ(NoC_IRQ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .Sync(Sync),
        .TO_NOC(TO_NOC),
        .dap_address(dap_address),
        .dap_read(dap_read),
        .dap_readdata(dap_readdata),
        .dap_write(dap_write),
        .dap_writedata(dap_writedata));
endmodule

(* ORIG_REF_NAME = "kth_generic_rni_static" *) 
module BD_kth_axi_rni_static_2_0_kth_generic_rni_static
   (\s_axi_rdata_i_reg[31] ,
    RAM_reg,
    \s_axi_rdata_i_reg[31]_0 ,
    Reset,
    old_slave_read,
    NoC_IRQ,
    RAM_reg_0,
    \s_axi_rdata_i_reg[9] ,
    \command_reg_reg[0] ,
    \command_reg_reg[0]_0 ,
    dap_readdata,
    TO_NOC,
    S_AXI_ACLK,
    p_8_in,
    send_buffer_address1,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    p_7_in,
    WEA,
    HeartBeat,
    rni_chipselect,
    ipif_Bus2IP_RdCE,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    dap_address,
    D,
    Bus_RNW_reg_reg,
    S_AXI_ARESETN,
    \S_AXI_AWADDR[8] ,
    dap_read_0,
    S_AXI_AWADDR_2__s_port_,
    Sync,
    S_AXI_WDATA,
    dap_writedata,
    dap_write,
    dap_read,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \S_AXI_AWADDR[7] ,
    \S_AXI_AWADDR[8]_0 ,
    dap_read_1,
    S_AXI_AWADDR_3__s_port_,
    FROM_NOC,
    Bus_RNW_reg_reg_0,
    E,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    Bus_RNW_reg_reg_1);
  output [21:0]\s_axi_rdata_i_reg[31] ;
  output [1:0]RAM_reg;
  output [21:0]\s_axi_rdata_i_reg[31]_0 ;
  output Reset;
  output old_slave_read;
  output NoC_IRQ;
  output RAM_reg_0;
  output [9:0]\s_axi_rdata_i_reg[9] ;
  output \command_reg_reg[0] ;
  output \command_reg_reg[0]_0 ;
  output [31:0]dap_readdata;
  output [47:0]TO_NOC;
  input S_AXI_ACLK;
  input p_8_in;
  input [1:0]send_buffer_address1;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input p_7_in;
  input [0:0]WEA;
  input HeartBeat;
  input rni_chipselect;
  input ipif_Bus2IP_RdCE;
  input [4:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [4:0]S_AXI_ARADDR;
  input [3:0]dap_address;
  input [21:0]D;
  input Bus_RNW_reg_reg;
  input S_AXI_ARESETN;
  input \S_AXI_AWADDR[8] ;
  input dap_read_0;
  input S_AXI_AWADDR_2__s_port_;
  input [1:0]Sync;
  input [31:0]S_AXI_WDATA;
  input [31:0]dap_writedata;
  input dap_write;
  input dap_read;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  input \S_AXI_AWADDR[7] ;
  input \S_AXI_AWADDR[8]_0 ;
  input dap_read_1;
  input S_AXI_AWADDR_3__s_port_;
  input [43:0]FROM_NOC;
  input Bus_RNW_reg_reg_0;
  input [0:0]E;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input Bus_RNW_reg_reg_1;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [21:0]D;
  wire [0:0]E;
  wire [43:0]FROM_NOC;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire HeartBeat;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire NoC_IRQ;
  wire [1:0]RAM_reg;
  wire RAM_reg_0;
  wire Reset;
  wire S_AXI_ACLK;
  wire [4:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire [4:0]S_AXI_AWADDR;
  wire \S_AXI_AWADDR[7] ;
  wire \S_AXI_AWADDR[8] ;
  wire \S_AXI_AWADDR[8]_0 ;
  wire S_AXI_AWADDR_2__s_net_1;
  wire S_AXI_AWADDR_3__s_net_1;
  wire [31:0]S_AXI_WDATA;
  wire [1:0]Sync;
  wire [47:0]TO_NOC;
  wire [0:0]WEA;
  wire \command_reg_reg[0] ;
  wire \command_reg_reg[0]_0 ;
  wire [3:0]dap_address;
  wire dap_read;
  wire dap_read_0;
  wire dap_read_1;
  wire [31:0]dap_readdata;
  wire dap_recv_buffer_select;
  wire dap_rni_select;
  wire dap_send_buffer_select;
  wire dap_write;
  wire [31:0]dap_writedata;
  wire interface_n_1;
  wire interface_n_4;
  wire ipif_Bus2IP_RdCE;
  wire old_slave_read;
  wire [9:0]p_1_out;
  wire [31:0]p_2_out;
  wire [9:0]p_3_out;
  wire p_7_in;
  wire p_8_in;
  wire [3:0]recv_buffer_address;
  wire recv_buffer_write2;
  wire [31:0]recv_buffer_writedata;
  wire rni_chipselect;
  wire [31:0]rni_readdata_delayed;
  wire [21:0]\s_axi_rdata_i_reg[31] ;
  wire [21:0]\s_axi_rdata_i_reg[31]_0 ;
  wire [9:0]\s_axi_rdata_i_reg[9] ;
  wire [3:0]send_buffer_address;
  wire [1:0]send_buffer_address1;
  wire [31:0]send_buffer_writedata1;
  wire [9:0]slave_readdata;

  assign S_AXI_AWADDR_2__s_net_1 = S_AXI_AWADDR_2__s_port_;
  assign S_AXI_AWADDR_3__s_net_1 = S_AXI_AWADDR_3__s_port_;
  BD_kth_axi_rni_static_2_0_rni_memory__parameterized0 \G0.recv_buffer 
       (.ADDRARDADDR({interface_n_4,RAM_reg,send_buffer_address1}),
        .DOADO(p_1_out),
        .Q(recv_buffer_address),
        .RAM_reg(RAM_reg_0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[0]),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[0]),
        .S_AXI_WDATA(S_AXI_WDATA),
        .WEA(WEA),
        .WEBWE(recv_buffer_write2),
        .dap_read(dap_read),
        .dap_write(dap_write),
        .dap_writedata(dap_writedata),
        .\data_reg_reg[31] (recv_buffer_writedata),
        .p_7_in(p_7_in),
        .\s_axi_rdata_i_reg[31] (\s_axi_rdata_i_reg[31]_0 ),
        .send_buffer_writedata1(send_buffer_writedata1),
        .\toggle_bit_reg[0] (interface_n_1));
  BD_kth_axi_rni_static_2_0_rni_memory \G0.send_buffer 
       (.ADDRARDADDR({RAM_reg,send_buffer_address1}),
        .ADDRBWRADDR(send_buffer_address),
        .DOADO(p_3_out),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .Q(rni_readdata_delayed),
        .RAM_reg(\s_axi_rdata_i_reg[31]_0 ),
        .RAM_reg_0(p_1_out),
        .S_AXI_ACLK(S_AXI_ACLK),
        .dap_readdata(dap_readdata),
        .dap_recv_buffer_select(dap_recv_buffer_select),
        .dap_rni_select(dap_rni_select),
        .dap_send_buffer_select(dap_send_buffer_select),
        .p_2_out(p_2_out),
        .p_8_in(p_8_in),
        .\s_axi_rdata_i_reg[31] (\s_axi_rdata_i_reg[31] ),
        .send_buffer_writedata1(send_buffer_writedata1));
  FDCE dap_recv_buffer_select_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(p_7_in),
        .Q(dap_recv_buffer_select));
  FDCE dap_rni_select_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(rni_chipselect),
        .Q(dap_rni_select));
  FDCE dap_send_buffer_select_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(p_8_in),
        .Q(dap_send_buffer_select));
  BD_kth_axi_rni_static_2_0_generic_nios_to_3D_noc interface
       (.ADDRARDADDR({interface_n_4,RAM_reg}),
        .ADDRBWRADDR(send_buffer_address),
        .AR(Reset),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_1),
        .D(slave_readdata),
        .DOADO(p_1_out),
        .E(E),
        .FROM_NOC(FROM_NOC),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .HeartBeat(HeartBeat),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .NoC_IRQ(NoC_IRQ),
        .Q(recv_buffer_address),
        .RAM_reg(recv_buffer_writedata),
        .RAM_reg_0(p_3_out),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[4:1]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[4:1]),
        .\S_AXI_AWADDR[7] (\S_AXI_AWADDR[7] ),
        .\S_AXI_AWADDR[8] (\S_AXI_AWADDR[8] ),
        .\S_AXI_AWADDR[8]_0 (\S_AXI_AWADDR[8]_0 ),
        .S_AXI_AWADDR_2__s_port_(S_AXI_AWADDR_2__s_net_1),
        .S_AXI_AWADDR_3__s_port_(S_AXI_AWADDR_3__s_net_1),
        .S_AXI_WDATA(S_AXI_WDATA[13:0]),
        .Sync(Sync),
        .TO_NOC(TO_NOC),
        .WEBWE(recv_buffer_write2),
        .\channel_nr_reg[2]_0 (interface_n_1),
        .\command_reg_reg[0]_0 (\command_reg_reg[0] ),
        .\command_reg_reg[0]_1 (\command_reg_reg[0]_0 ),
        .dap_address(dap_address),
        .dap_read(dap_read),
        .dap_read_0(RAM_reg_0),
        .dap_read_1(dap_read_0),
        .dap_read_2(dap_read_1),
        .dap_write(dap_write),
        .dap_writedata(dap_writedata[13:0]),
        .p_2_out(p_2_out),
        .rni_chipselect(rni_chipselect),
        .\s_axi_rdata_i_reg[9] (\s_axi_rdata_i_reg[9] ),
        .send_buffer_address1(send_buffer_address1));
  FDCE old_slave_read_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(ipif_Bus2IP_RdCE),
        .Q(old_slave_read));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(slave_readdata[0]),
        .Q(rni_readdata_delayed[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[0]),
        .Q(rni_readdata_delayed[10]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[1]),
        .Q(rni_readdata_delayed[11]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[2]),
        .Q(rni_readdata_delayed[12]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[3]),
        .Q(rni_readdata_delayed[13]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[4]),
        .Q(rni_readdata_delayed[14]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[5]),
        .Q(rni_readdata_delayed[15]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[6]),
        .Q(rni_readdata_delayed[16]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[7]),
        .Q(rni_readdata_delayed[17]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[8]),
        .Q(rni_readdata_delayed[18]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[9]),
        .Q(rni_readdata_delayed[19]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(slave_readdata[1]),
        .Q(rni_readdata_delayed[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[10]),
        .Q(rni_readdata_delayed[20]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[11]),
        .Q(rni_readdata_delayed[21]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[12]),
        .Q(rni_readdata_delayed[22]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[13]),
        .Q(rni_readdata_delayed[23]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[14]),
        .Q(rni_readdata_delayed[24]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[15]),
        .Q(rni_readdata_delayed[25]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[16]),
        .Q(rni_readdata_delayed[26]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[17]),
        .Q(rni_readdata_delayed[27]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[18]),
        .Q(rni_readdata_delayed[28]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[19]),
        .Q(rni_readdata_delayed[29]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(slave_readdata[2]),
        .Q(rni_readdata_delayed[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[20]),
        .Q(rni_readdata_delayed[30]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[21]),
        .Q(rni_readdata_delayed[31]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(slave_readdata[3]),
        .Q(rni_readdata_delayed[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(slave_readdata[4]),
        .Q(rni_readdata_delayed[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(slave_readdata[5]),
        .Q(rni_readdata_delayed[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(slave_readdata[6]),
        .Q(rni_readdata_delayed[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(slave_readdata[7]),
        .Q(rni_readdata_delayed[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(slave_readdata[8]),
        .Q(rni_readdata_delayed[8]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(slave_readdata[9]),
        .Q(rni_readdata_delayed[9]));
endmodule

(* ORIG_REF_NAME = "rams_16b" *) 
module BD_kth_axi_rni_static_2_0_rams_16b
   (\s_axi_rdata_i_reg[31] ,
    p_2_out,
    dap_readdata,
    S_AXI_ACLK,
    p_8_in,
    ADDRARDADDR,
    ADDRBWRADDR,
    send_buffer_writedata1,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    Q,
    dap_rni_select,
    dap_send_buffer_select,
    RAM_reg_0,
    dap_recv_buffer_select);
  output [15:0]\s_axi_rdata_i_reg[31] ;
  output [15:0]p_2_out;
  output [15:0]dap_readdata;
  input S_AXI_ACLK;
  input p_8_in;
  input [3:0]ADDRARDADDR;
  input [3:0]ADDRBWRADDR;
  input [15:0]send_buffer_writedata1;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input [15:0]Q;
  input dap_rni_select;
  input dap_send_buffer_select;
  input [15:0]RAM_reg_0;
  input dap_recv_buffer_select;

  wire [3:0]ADDRARDADDR;
  wire [3:0]ADDRBWRADDR;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [15:0]Q;
  wire [15:0]RAM_reg_0;
  wire S_AXI_ACLK;
  wire [15:0]dap_readdata;
  wire dap_recv_buffer_select;
  wire dap_rni_select;
  wire dap_send_buffer_select;
  wire [15:0]p_2_out;
  wire p_8_in;
  wire [15:0]\s_axi_rdata_i_reg[31] ;
  wire [15:0]send_buffer_writedata1;
  wire [1:0]NLW_RAM_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_DOPBDOP_UNCONNECTED;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    RAM_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(S_AXI_ACLK),
        .CLKBWRCLK(S_AXI_ACLK),
        .DIADI(send_buffer_writedata1),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\s_axi_rdata_i_reg[31] ),
        .DOBDO(p_2_out),
        .DOPADOP(NLW_RAM_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_RAM_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(p_8_in),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[16]_INST_0 
       (.I0(Q[0]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [0]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[0]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[0]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[17]_INST_0 
       (.I0(Q[1]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [1]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[1]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[1]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[18]_INST_0 
       (.I0(Q[2]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [2]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[2]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[2]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[19]_INST_0 
       (.I0(Q[3]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [3]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[3]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[3]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[20]_INST_0 
       (.I0(Q[4]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [4]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[4]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[4]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[21]_INST_0 
       (.I0(Q[5]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [5]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[5]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[5]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[22]_INST_0 
       (.I0(Q[6]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [6]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[6]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[6]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[23]_INST_0 
       (.I0(Q[7]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [7]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[7]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[7]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[24]_INST_0 
       (.I0(Q[8]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [8]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[8]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[8]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[25]_INST_0 
       (.I0(Q[9]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [9]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[9]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[9]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[26]_INST_0 
       (.I0(Q[10]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [10]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[10]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[10]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[27]_INST_0 
       (.I0(Q[11]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [11]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[11]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[11]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[28]_INST_0 
       (.I0(Q[12]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [12]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[12]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[12]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[29]_INST_0 
       (.I0(Q[13]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [13]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[13]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[13]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[30]_INST_0 
       (.I0(Q[14]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [14]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[14]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[14]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[31]_INST_0 
       (.I0(Q[15]),
        .I1(dap_rni_select),
        .I2(\s_axi_rdata_i_reg[31] [15]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[15]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[15]));
endmodule

(* ORIG_REF_NAME = "rams_16b" *) 
module BD_kth_axi_rni_static_2_0_rams_16b_0
   (DOADO,
    p_2_out,
    dap_readdata,
    S_AXI_ACLK,
    p_8_in,
    ADDRARDADDR,
    ADDRBWRADDR,
    send_buffer_writedata1,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    Q,
    dap_rni_select,
    dap_send_buffer_select,
    RAM_reg_0,
    dap_recv_buffer_select,
    RAM_reg_1);
  output [15:0]DOADO;
  output [15:0]p_2_out;
  output [15:0]dap_readdata;
  input S_AXI_ACLK;
  input p_8_in;
  input [3:0]ADDRARDADDR;
  input [3:0]ADDRBWRADDR;
  input [15:0]send_buffer_writedata1;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input [15:0]Q;
  input dap_rni_select;
  input dap_send_buffer_select;
  input [5:0]RAM_reg_0;
  input dap_recv_buffer_select;
  input [9:0]RAM_reg_1;

  wire [3:0]ADDRARDADDR;
  wire [3:0]ADDRBWRADDR;
  wire [15:0]DOADO;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [15:0]Q;
  wire [5:0]RAM_reg_0;
  wire [9:0]RAM_reg_1;
  wire S_AXI_ACLK;
  wire [15:0]dap_readdata;
  wire dap_recv_buffer_select;
  wire dap_rni_select;
  wire dap_send_buffer_select;
  wire [15:0]p_2_out;
  wire p_8_in;
  wire [15:0]send_buffer_writedata1;
  wire [1:0]NLW_RAM_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_DOPBDOP_UNCONNECTED;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    RAM_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(S_AXI_ACLK),
        .CLKBWRCLK(S_AXI_ACLK),
        .DIADI(send_buffer_writedata1),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(p_2_out),
        .DOPADOP(NLW_RAM_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_RAM_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(p_8_in),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[0]_INST_0 
       (.I0(Q[0]),
        .I1(dap_rni_select),
        .I2(DOADO[0]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_1[0]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[0]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[10]_INST_0 
       (.I0(Q[10]),
        .I1(dap_rni_select),
        .I2(DOADO[10]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[0]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[10]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[11]_INST_0 
       (.I0(Q[11]),
        .I1(dap_rni_select),
        .I2(DOADO[11]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[1]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[11]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[12]_INST_0 
       (.I0(Q[12]),
        .I1(dap_rni_select),
        .I2(DOADO[12]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[2]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[12]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[13]_INST_0 
       (.I0(Q[13]),
        .I1(dap_rni_select),
        .I2(DOADO[13]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[3]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[13]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[14]_INST_0 
       (.I0(Q[14]),
        .I1(dap_rni_select),
        .I2(DOADO[14]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[4]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[14]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[15]_INST_0 
       (.I0(Q[15]),
        .I1(dap_rni_select),
        .I2(DOADO[15]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_0[5]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[15]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[1]_INST_0 
       (.I0(Q[1]),
        .I1(dap_rni_select),
        .I2(DOADO[1]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_1[1]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[1]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[2]_INST_0 
       (.I0(Q[2]),
        .I1(dap_rni_select),
        .I2(DOADO[2]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_1[2]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[2]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[3]_INST_0 
       (.I0(Q[3]),
        .I1(dap_rni_select),
        .I2(DOADO[3]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_1[3]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[3]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[4]_INST_0 
       (.I0(Q[4]),
        .I1(dap_rni_select),
        .I2(DOADO[4]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_1[4]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[4]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[5]_INST_0 
       (.I0(Q[5]),
        .I1(dap_rni_select),
        .I2(DOADO[5]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_1[5]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[5]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[6]_INST_0 
       (.I0(Q[6]),
        .I1(dap_rni_select),
        .I2(DOADO[6]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_1[6]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[6]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[7]_INST_0 
       (.I0(Q[7]),
        .I1(dap_rni_select),
        .I2(DOADO[7]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_1[7]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[7]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[8]_INST_0 
       (.I0(Q[8]),
        .I1(dap_rni_select),
        .I2(DOADO[8]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_1[8]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[8]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[9]_INST_0 
       (.I0(Q[9]),
        .I1(dap_rni_select),
        .I2(DOADO[9]),
        .I3(dap_send_buffer_select),
        .I4(RAM_reg_1[9]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[9]));
endmodule

(* ORIG_REF_NAME = "rams_16b" *) 
module BD_kth_axi_rni_static_2_0_rams_16b__parameterized2
   (DOADO,
    send_buffer_writedata1,
    RAM_reg_0,
    S_AXI_ACLK,
    p_7_in,
    ADDRARDADDR,
    ADDRBWRADDR,
    \data_reg_reg[15] ,
    WEA,
    WEBWE,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    S_AXI_WDATA,
    dap_writedata,
    dap_write,
    dap_read);
  output [15:0]DOADO;
  output [15:0]send_buffer_writedata1;
  output RAM_reg_0;
  input S_AXI_ACLK;
  input p_7_in;
  input [4:0]ADDRARDADDR;
  input [4:0]ADDRBWRADDR;
  input [15:0]\data_reg_reg[15] ;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input [0:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [0:0]S_AXI_ARADDR;
  input [15:0]S_AXI_WDATA;
  input [15:0]dap_writedata;
  input dap_write;
  input dap_read;

  wire [4:0]ADDRARDADDR;
  wire [4:0]ADDRBWRADDR;
  wire [15:0]DOADO;
  wire RAM_reg_0;
  wire RAM_reg_n_16;
  wire RAM_reg_n_17;
  wire RAM_reg_n_18;
  wire RAM_reg_n_19;
  wire RAM_reg_n_20;
  wire RAM_reg_n_21;
  wire RAM_reg_n_22;
  wire RAM_reg_n_23;
  wire RAM_reg_n_24;
  wire RAM_reg_n_25;
  wire RAM_reg_n_26;
  wire RAM_reg_n_27;
  wire RAM_reg_n_28;
  wire RAM_reg_n_29;
  wire RAM_reg_n_30;
  wire RAM_reg_n_31;
  wire S_AXI_ACLK;
  wire [0:0]S_AXI_ARADDR;
  wire S_AXI_ARVALID;
  wire [0:0]S_AXI_AWADDR;
  wire [15:0]S_AXI_WDATA;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire dap_read;
  wire dap_write;
  wire [15:0]dap_writedata;
  wire [15:0]\data_reg_reg[15] ;
  wire p_7_in;
  wire [15:0]send_buffer_writedata1;
  wire [1:0]NLW_RAM_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_DOPBDOP_UNCONNECTED;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    RAM_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(S_AXI_ACLK),
        .CLKBWRCLK(S_AXI_ACLK),
        .DIADI(send_buffer_writedata1),
        .DIBDI(\data_reg_reg[15] ),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO({RAM_reg_n_16,RAM_reg_n_17,RAM_reg_n_18,RAM_reg_n_19,RAM_reg_n_20,RAM_reg_n_21,RAM_reg_n_22,RAM_reg_n_23,RAM_reg_n_24,RAM_reg_n_25,RAM_reg_n_26,RAM_reg_n_27,RAM_reg_n_28,RAM_reg_n_29,RAM_reg_n_30,RAM_reg_n_31}),
        .DOPADOP(NLW_RAM_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_RAM_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(p_7_in),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,WEBWE,WEBWE}));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_10__0
       (.I0(dap_writedata[11]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[11]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_11__0
       (.I0(dap_writedata[10]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[10]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_12__0
       (.I0(dap_writedata[9]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[9]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_13__0
       (.I0(dap_writedata[8]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[8]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_14__0
       (.I0(dap_writedata[7]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[7]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_15__0
       (.I0(dap_writedata[6]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[6]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_16__0
       (.I0(dap_writedata[5]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[5]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_17
       (.I0(dap_writedata[4]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[4]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_18
       (.I0(dap_writedata[3]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[3]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_19
       (.I0(dap_writedata[2]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[2]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_20
       (.I0(dap_writedata[1]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[1]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_21
       (.I0(dap_writedata[0]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[0]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[0]));
  LUT2 #(
    .INIT(4'hE)) 
    RAM_reg_i_23
       (.I0(dap_write),
        .I1(dap_read),
        .O(RAM_reg_0));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_6
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[15]),
        .I4(RAM_reg_0),
        .I5(dap_writedata[15]),
        .O(send_buffer_writedata1[15]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_7
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[14]),
        .I4(RAM_reg_0),
        .I5(dap_writedata[14]),
        .O(send_buffer_writedata1[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_8__0
       (.I0(dap_writedata[13]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[13]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_9__0
       (.I0(dap_writedata[12]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[12]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[12]));
endmodule

(* ORIG_REF_NAME = "rams_16b" *) 
module BD_kth_axi_rni_static_2_0_rams_16b__parameterized4
   (\s_axi_rdata_i_reg[31] ,
    send_buffer_writedata1,
    S_AXI_ACLK,
    p_7_in,
    ADDRARDADDR,
    ADDRBWRADDR,
    \data_reg_reg[31] ,
    WEA,
    WEBWE,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    S_AXI_WDATA,
    dap_read,
    dap_writedata);
  output [15:0]\s_axi_rdata_i_reg[31] ;
  output [15:0]send_buffer_writedata1;
  input S_AXI_ACLK;
  input p_7_in;
  input [4:0]ADDRARDADDR;
  input [4:0]ADDRBWRADDR;
  input [15:0]\data_reg_reg[31] ;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input [0:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [0:0]S_AXI_ARADDR;
  input [15:0]S_AXI_WDATA;
  input dap_read;
  input [15:0]dap_writedata;

  wire [4:0]ADDRARDADDR;
  wire [4:0]ADDRBWRADDR;
  wire RAM_reg_n_16;
  wire RAM_reg_n_17;
  wire RAM_reg_n_18;
  wire RAM_reg_n_19;
  wire RAM_reg_n_20;
  wire RAM_reg_n_21;
  wire RAM_reg_n_22;
  wire RAM_reg_n_23;
  wire RAM_reg_n_24;
  wire RAM_reg_n_25;
  wire RAM_reg_n_26;
  wire RAM_reg_n_27;
  wire RAM_reg_n_28;
  wire RAM_reg_n_29;
  wire RAM_reg_n_30;
  wire RAM_reg_n_31;
  wire S_AXI_ACLK;
  wire [0:0]S_AXI_ARADDR;
  wire S_AXI_ARVALID;
  wire [0:0]S_AXI_AWADDR;
  wire [15:0]S_AXI_WDATA;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire dap_read;
  wire [15:0]dap_writedata;
  wire [15:0]\data_reg_reg[31] ;
  wire p_7_in;
  wire [15:0]\s_axi_rdata_i_reg[31] ;
  wire [15:0]send_buffer_writedata1;
  wire [1:0]NLW_RAM_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_DOPBDOP_UNCONNECTED;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    RAM_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(S_AXI_ACLK),
        .CLKBWRCLK(S_AXI_ACLK),
        .DIADI(send_buffer_writedata1),
        .DIBDI(\data_reg_reg[31] ),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\s_axi_rdata_i_reg[31] ),
        .DOBDO({RAM_reg_n_16,RAM_reg_n_17,RAM_reg_n_18,RAM_reg_n_19,RAM_reg_n_20,RAM_reg_n_21,RAM_reg_n_22,RAM_reg_n_23,RAM_reg_n_24,RAM_reg_n_25,RAM_reg_n_26,RAM_reg_n_27,RAM_reg_n_28,RAM_reg_n_29,RAM_reg_n_30,RAM_reg_n_31}),
        .DOPADOP(NLW_RAM_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_RAM_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(p_7_in),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,WEBWE,WEBWE}));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_1
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[15]),
        .I4(dap_read),
        .I5(dap_writedata[15]),
        .O(send_buffer_writedata1[15]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_10
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[6]),
        .I4(dap_read),
        .I5(dap_writedata[6]),
        .O(send_buffer_writedata1[6]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_11
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[5]),
        .I4(dap_read),
        .I5(dap_writedata[5]),
        .O(send_buffer_writedata1[5]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_12
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[4]),
        .I4(dap_read),
        .I5(dap_writedata[4]),
        .O(send_buffer_writedata1[4]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_13
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[3]),
        .I4(dap_read),
        .I5(dap_writedata[3]),
        .O(send_buffer_writedata1[3]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_14
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[2]),
        .I4(dap_read),
        .I5(dap_writedata[2]),
        .O(send_buffer_writedata1[2]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_15
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[1]),
        .I4(dap_read),
        .I5(dap_writedata[1]),
        .O(send_buffer_writedata1[1]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_16
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[0]),
        .I4(dap_read),
        .I5(dap_writedata[0]),
        .O(send_buffer_writedata1[0]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_2
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[14]),
        .I4(dap_read),
        .I5(dap_writedata[14]),
        .O(send_buffer_writedata1[14]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_3__0
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[13]),
        .I4(dap_read),
        .I5(dap_writedata[13]),
        .O(send_buffer_writedata1[13]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_4
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[12]),
        .I4(dap_read),
        .I5(dap_writedata[12]),
        .O(send_buffer_writedata1[12]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_5
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[11]),
        .I4(dap_read),
        .I5(dap_writedata[11]),
        .O(send_buffer_writedata1[11]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_6__0
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[10]),
        .I4(dap_read),
        .I5(dap_writedata[10]),
        .O(send_buffer_writedata1[10]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_7__0
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[9]),
        .I4(dap_read),
        .I5(dap_writedata[9]),
        .O(send_buffer_writedata1[9]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_8
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[8]),
        .I4(dap_read),
        .I5(dap_writedata[8]),
        .O(send_buffer_writedata1[8]));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_9
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[7]),
        .I4(dap_read),
        .I5(dap_writedata[7]),
        .O(send_buffer_writedata1[7]));
endmodule

(* ORIG_REF_NAME = "rni_memory" *) 
module BD_kth_axi_rni_static_2_0_rni_memory
   (\s_axi_rdata_i_reg[31] ,
    DOADO,
    p_2_out,
    dap_readdata,
    S_AXI_ACLK,
    p_8_in,
    ADDRARDADDR,
    ADDRBWRADDR,
    send_buffer_writedata1,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    Q,
    dap_rni_select,
    dap_send_buffer_select,
    RAM_reg,
    dap_recv_buffer_select,
    RAM_reg_0);
  output [21:0]\s_axi_rdata_i_reg[31] ;
  output [9:0]DOADO;
  output [31:0]p_2_out;
  output [31:0]dap_readdata;
  input S_AXI_ACLK;
  input p_8_in;
  input [3:0]ADDRARDADDR;
  input [3:0]ADDRBWRADDR;
  input [31:0]send_buffer_writedata1;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input [31:0]Q;
  input dap_rni_select;
  input dap_send_buffer_select;
  input [21:0]RAM_reg;
  input dap_recv_buffer_select;
  input [9:0]RAM_reg_0;

  wire [3:0]ADDRARDADDR;
  wire [3:0]ADDRBWRADDR;
  wire [9:0]DOADO;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [31:0]Q;
  wire [21:0]RAM_reg;
  wire [9:0]RAM_reg_0;
  wire S_AXI_ACLK;
  wire [31:0]dap_readdata;
  wire dap_recv_buffer_select;
  wire dap_rni_select;
  wire dap_send_buffer_select;
  wire [31:0]p_2_out;
  wire p_8_in;
  wire [21:0]\s_axi_rdata_i_reg[31] ;
  wire [31:0]send_buffer_writedata1;

  BD_kth_axi_rni_static_2_0_rams_16b HW
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .Q(Q[31:16]),
        .RAM_reg_0(RAM_reg[21:6]),
        .S_AXI_ACLK(S_AXI_ACLK),
        .dap_readdata(dap_readdata[31:16]),
        .dap_recv_buffer_select(dap_recv_buffer_select),
        .dap_rni_select(dap_rni_select),
        .dap_send_buffer_select(dap_send_buffer_select),
        .p_2_out(p_2_out[31:16]),
        .p_8_in(p_8_in),
        .\s_axi_rdata_i_reg[31] (\s_axi_rdata_i_reg[31] [21:6]),
        .send_buffer_writedata1(send_buffer_writedata1[31:16]));
  BD_kth_axi_rni_static_2_0_rams_16b_0 LW
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .DOADO({\s_axi_rdata_i_reg[31] [5:0],DOADO}),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .Q(Q[15:0]),
        .RAM_reg_0(RAM_reg[5:0]),
        .RAM_reg_1(RAM_reg_0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .dap_readdata(dap_readdata[15:0]),
        .dap_recv_buffer_select(dap_recv_buffer_select),
        .dap_rni_select(dap_rni_select),
        .dap_send_buffer_select(dap_send_buffer_select),
        .p_2_out(p_2_out[15:0]),
        .p_8_in(p_8_in),
        .send_buffer_writedata1(send_buffer_writedata1[15:0]));
endmodule

(* ORIG_REF_NAME = "rni_memory" *) 
module BD_kth_axi_rni_static_2_0_rni_memory__parameterized0
   (\s_axi_rdata_i_reg[31] ,
    DOADO,
    send_buffer_writedata1,
    RAM_reg,
    S_AXI_ACLK,
    p_7_in,
    ADDRARDADDR,
    \toggle_bit_reg[0] ,
    Q,
    \data_reg_reg[31] ,
    WEA,
    WEBWE,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    S_AXI_WDATA,
    dap_writedata,
    dap_write,
    dap_read);
  output [21:0]\s_axi_rdata_i_reg[31] ;
  output [9:0]DOADO;
  output [31:0]send_buffer_writedata1;
  output RAM_reg;
  input S_AXI_ACLK;
  input p_7_in;
  input [4:0]ADDRARDADDR;
  input \toggle_bit_reg[0] ;
  input [3:0]Q;
  input [31:0]\data_reg_reg[31] ;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input [0:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [0:0]S_AXI_ARADDR;
  input [31:0]S_AXI_WDATA;
  input [31:0]dap_writedata;
  input dap_write;
  input dap_read;

  wire [4:0]ADDRARDADDR;
  wire [9:0]DOADO;
  wire [3:0]Q;
  wire RAM_reg;
  wire S_AXI_ACLK;
  wire [0:0]S_AXI_ARADDR;
  wire S_AXI_ARVALID;
  wire [0:0]S_AXI_AWADDR;
  wire [31:0]S_AXI_WDATA;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire dap_read;
  wire dap_write;
  wire [31:0]dap_writedata;
  wire [31:0]\data_reg_reg[31] ;
  wire p_7_in;
  wire [21:0]\s_axi_rdata_i_reg[31] ;
  wire [31:0]send_buffer_writedata1;
  wire \toggle_bit_reg[0] ;

  BD_kth_axi_rni_static_2_0_rams_16b__parameterized4 HW
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR({\toggle_bit_reg[0] ,Q}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_WDATA(S_AXI_WDATA[31:16]),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .dap_read(RAM_reg),
        .dap_writedata(dap_writedata[31:16]),
        .\data_reg_reg[31] (\data_reg_reg[31] [31:16]),
        .p_7_in(p_7_in),
        .\s_axi_rdata_i_reg[31] (\s_axi_rdata_i_reg[31] [21:6]),
        .send_buffer_writedata1(send_buffer_writedata1[31:16]));
  BD_kth_axi_rni_static_2_0_rams_16b__parameterized2 LW
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR({\toggle_bit_reg[0] ,Q}),
        .DOADO({\s_axi_rdata_i_reg[31] [5:0],DOADO}),
        .RAM_reg_0(RAM_reg),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_WDATA(S_AXI_WDATA[15:0]),
        .WEA(WEA),
        .WEBWE(WEBWE),
        .dap_read(dap_read),
        .dap_write(dap_write),
        .dap_writedata(dap_writedata[15:0]),
        .\data_reg_reg[15] (\data_reg_reg[31] [15:0]),
        .p_7_in(p_7_in),
        .send_buffer_writedata1(send_buffer_writedata1[15:0]));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module BD_kth_axi_rni_static_2_0_slave_attachment
   (S_AXI_RVALID,
    S_AXI_BVALID,
    D,
    \rni_readdata_delayed_reg[10] ,
    S_AXI_ARREADY,
    dap_rni_select_reg,
    ipif_Bus2IP_RdCE,
    S_AXI_WREADY,
    WEA,
    RAM_reg,
    RAM_reg_0,
    p_8_in,
    E,
    \command_reg_reg[0] ,
    RAM_reg_1,
    RAM_reg_2,
    synchronize_flag_reg,
    \interrupt_reg_reg[0] ,
    RAM_reg_3,
    p_7_in,
    \rni_readdata_delayed_reg[0] ,
    \rni_readdata_delayed_reg[1] ,
    \command_reg_reg[0]_0 ,
    \rni_readdata_delayed_reg[2] ,
    \rni_readdata_delayed_reg[0]_0 ,
    \rni_readdata_delayed_reg[2]_0 ,
    \rni_readdata_delayed_reg[2]_1 ,
    S_AXI_RDATA,
    Reset,
    S_AXI_ACLK,
    old_slave_read,
    S_AXI_ARESETN,
    S_AXI_ARVALID,
    dap_read,
    dap_write,
    \S_AXI_AWADDR[8] ,
    dap_address,
    dap_read_0,
    S_AXI_AWADDR,
    S_AXI_ARADDR,
    p_1_out,
    p_3_out,
    \S_AXI_AWADDR[5] ,
    S_AXI_AWADDR_6__s_port_,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_BREADY,
    RAM_reg_4);
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  output [21:0]D;
  output \rni_readdata_delayed_reg[10] ;
  output S_AXI_ARREADY;
  output dap_rni_select_reg;
  output ipif_Bus2IP_RdCE;
  output S_AXI_WREADY;
  output [0:0]WEA;
  output RAM_reg;
  output [0:0]RAM_reg_0;
  output p_8_in;
  output [0:0]E;
  output \command_reg_reg[0] ;
  output RAM_reg_1;
  output RAM_reg_2;
  output synchronize_flag_reg;
  output \interrupt_reg_reg[0] ;
  output RAM_reg_3;
  output p_7_in;
  output \rni_readdata_delayed_reg[0] ;
  output \rni_readdata_delayed_reg[1] ;
  output \command_reg_reg[0]_0 ;
  output \rni_readdata_delayed_reg[2] ;
  output \rni_readdata_delayed_reg[0]_0 ;
  output \rni_readdata_delayed_reg[2]_0 ;
  output \rni_readdata_delayed_reg[2]_1 ;
  output [31:0]S_AXI_RDATA;
  input Reset;
  input S_AXI_ACLK;
  input old_slave_read;
  input S_AXI_ARESETN;
  input S_AXI_ARVALID;
  input dap_read;
  input dap_write;
  input \S_AXI_AWADDR[8] ;
  input [6:0]dap_address;
  input dap_read_0;
  input [6:0]S_AXI_AWADDR;
  input [6:0]S_AXI_ARADDR;
  input [21:0]p_1_out;
  input [21:0]p_3_out;
  input [1:0]\S_AXI_AWADDR[5] ;
  input S_AXI_AWADDR_6__s_port_;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input [9:0]RAM_reg_4;

  wire [21:0]D;
  wire [0:0]E;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ;
  wire [31:10]IP2Bus_Data;
  wire I_DECODER_n_23;
  wire I_DECODER_n_24;
  wire I_DECODER_n_61;
  wire I_DECODER_n_62;
  wire RAM_reg;
  wire [0:0]RAM_reg_0;
  wire RAM_reg_1;
  wire RAM_reg_2;
  wire RAM_reg_3;
  wire [9:0]RAM_reg_4;
  wire Reset;
  wire S_AXI_ACLK;
  wire [6:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [6:0]S_AXI_AWADDR;
  wire [1:0]\S_AXI_AWADDR[5] ;
  wire \S_AXI_AWADDR[8] ;
  wire S_AXI_AWADDR_6__s_net_1;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [0:0]WEA;
  wire \command_reg_reg[0] ;
  wire \command_reg_reg[0]_0 ;
  wire [6:0]dap_address;
  wire dap_read;
  wire dap_read_0;
  wire dap_rni_select_i_2_n_0;
  wire dap_rni_select_i_3_n_0;
  wire dap_rni_select_reg;
  wire dap_write;
  wire \interrupt_reg_reg[0] ;
  wire ipif_Bus2IP_RdCE;
  wire old_slave_read;
  wire [21:0]p_1_out;
  wire [21:0]p_3_out;
  wire p_7_in;
  wire p_8_in;
  wire [3:0]plusOp;
  wire \rni_readdata_delayed[31]_i_3_n_0 ;
  wire \rni_readdata_delayed[31]_i_4_n_0 ;
  wire \rni_readdata_delayed_reg[0] ;
  wire \rni_readdata_delayed_reg[0]_0 ;
  wire \rni_readdata_delayed_reg[10] ;
  wire \rni_readdata_delayed_reg[1] ;
  wire \rni_readdata_delayed_reg[2] ;
  wire \rni_readdata_delayed_reg[2]_0 ;
  wire \rni_readdata_delayed_reg[2]_1 ;
  wire rst;
  wire s_axi_rdata_i;
  wire [1:0]state;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire synchronize_flag_reg;
  wire timeout;

  assign S_AXI_AWADDR_6__s_net_1 = S_AXI_AWADDR_6__s_port_;
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(timeout),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(timeout),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0 ));
  BD_kth_axi_rni_static_2_0_address_decoder I_DECODER
       (.D(D),
        .E(E),
        .Q(timeout),
        .RAM_reg(RAM_reg),
        .RAM_reg_0(RAM_reg_0),
        .RAM_reg_1(RAM_reg_3),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[6:5]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[6:5]),
        .\S_AXI_AWADDR[16] (dap_rni_select_i_3_n_0),
        .\S_AXI_AWADDR[2] (RAM_reg_2),
        .\S_AXI_AWADDR[3] (RAM_reg_1),
        .\S_AXI_AWADDR[6] (\rni_readdata_delayed[31]_i_3_n_0 ),
        .\S_AXI_AWADDR[8] (\S_AXI_AWADDR[8] ),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_AWVALID_0(\state[1]_i_2_n_0 ),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .WEA(WEA),
        .\command_reg_reg[0] (\command_reg_reg[0] ),
        .dap_address(dap_address[6:5]),
        .\dap_address[13] (dap_rni_select_i_2_n_0),
        .dap_read(dap_read),
        .dap_read_0(dap_read_0),
        .dap_rni_select_reg(dap_rni_select_reg),
        .dap_write(dap_write),
        .\interrupt_reg_reg[0] (\interrupt_reg_reg[0] ),
        .ipif_Bus2IP_RdCE(ipif_Bus2IP_RdCE),
        .old_slave_read(old_slave_read),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_7_in(p_7_in),
        .p_8_in(p_8_in),
        .\rni_readdata_delayed_reg[10] (\rni_readdata_delayed_reg[10] ),
        .s_axi_bvalid_i_reg(I_DECODER_n_62),
        .\s_axi_rdata_i_reg[31] (IP2Bus_Data),
        .s_axi_rvalid_i_reg(I_DECODER_n_61),
        .s_axi_rvalid_i_reg_0(\state[1]_i_3_n_0 ),
        .\state_reg[1] ({I_DECODER_n_23,I_DECODER_n_24}),
        .\state_reg[1]_0 (state),
        .synchronize_flag_reg(synchronize_flag_reg));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    RAM_reg_i_4__0
       (.I0(dap_address[1]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(S_AXI_ARADDR[1]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_AWADDR[1]),
        .O(RAM_reg_1));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    RAM_reg_i_5__0
       (.I0(dap_address[0]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(S_AXI_ARADDR[0]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_AWADDR[0]),
        .O(RAM_reg_2));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \command_reg[13]_i_6 
       (.I0(dap_address[3]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_AWADDR[3]),
        .O(\command_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \command_reg[13]_i_7 
       (.I0(dap_address[4]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(S_AXI_ARADDR[4]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_AWADDR[4]),
        .O(\rni_readdata_delayed_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    dap_rni_select_i_2
       (.I0(S_AXI_ARADDR[5]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[5]),
        .I3(dap_write),
        .I4(dap_read),
        .I5(dap_address[5]),
        .O(dap_rni_select_i_2_n_0));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    dap_rni_select_i_3
       (.I0(dap_address[6]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(S_AXI_ARADDR[6]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_AWADDR[6]),
        .O(dap_rni_select_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \interrupt_reg[3]_i_7 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR[3]),
        .I3(dap_read_0),
        .I4(dap_address[3]),
        .I5(\rni_readdata_delayed_reg[1] ),
        .O(\rni_readdata_delayed_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \rni_readdata_delayed[0]_i_5 
       (.I0(RAM_reg_1),
        .I1(S_AXI_AWADDR[2]),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[2]),
        .I4(dap_read_0),
        .I5(dap_address[2]),
        .O(\rni_readdata_delayed_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \rni_readdata_delayed[0]_i_6 
       (.I0(\S_AXI_AWADDR[5] [0]),
        .I1(RAM_reg_1),
        .I2(RAM_reg_2),
        .O(\rni_readdata_delayed_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \rni_readdata_delayed[2]_i_3 
       (.I0(RAM_reg_2),
        .I1(\S_AXI_AWADDR[5] [0]),
        .I2(RAM_reg_1),
        .O(\rni_readdata_delayed_reg[2] ));
  LUT6 #(
    .INIT(64'h1015FFFFFFFF1015)) 
    \rni_readdata_delayed[31]_i_3 
       (.I0(\rni_readdata_delayed[31]_i_4_n_0 ),
        .I1(\S_AXI_AWADDR[5] [0]),
        .I2(RAM_reg_1),
        .I3(RAM_reg_2),
        .I4(\rni_readdata_delayed_reg[1] ),
        .I5(\command_reg_reg[0]_0 ),
        .O(\rni_readdata_delayed[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rni_readdata_delayed[31]_i_4 
       (.I0(\rni_readdata_delayed_reg[1] ),
        .I1(\command_reg_reg[0]_0 ),
        .I2(\S_AXI_AWADDR[5] [1]),
        .I3(S_AXI_AWADDR_6__s_net_1),
        .O(\rni_readdata_delayed[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \rni_readdata_delayed[9]_i_4 
       (.I0(\rni_readdata_delayed_reg[1] ),
        .I1(S_AXI_AWADDR[3]),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[3]),
        .I4(dap_read_0),
        .I5(dap_address[3]),
        .O(\rni_readdata_delayed_reg[2]_0 ));
  FDRE rst_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Reset),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_62),
        .Q(S_AXI_BVALID),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(s_axi_rdata_i));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(RAM_reg_4[0]),
        .Q(S_AXI_RDATA[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[10]),
        .Q(S_AXI_RDATA[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[11]),
        .Q(S_AXI_RDATA[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[12]),
        .Q(S_AXI_RDATA[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[13]),
        .Q(S_AXI_RDATA[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[14]),
        .Q(S_AXI_RDATA[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[15]),
        .Q(S_AXI_RDATA[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[16]),
        .Q(S_AXI_RDATA[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[17]),
        .Q(S_AXI_RDATA[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[18]),
        .Q(S_AXI_RDATA[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[19]),
        .Q(S_AXI_RDATA[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(RAM_reg_4[1]),
        .Q(S_AXI_RDATA[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[20]),
        .Q(S_AXI_RDATA[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[21]),
        .Q(S_AXI_RDATA[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[22]),
        .Q(S_AXI_RDATA[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[23]),
        .Q(S_AXI_RDATA[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[24]),
        .Q(S_AXI_RDATA[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[25]),
        .Q(S_AXI_RDATA[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[26]),
        .Q(S_AXI_RDATA[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[27]),
        .Q(S_AXI_RDATA[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[28]),
        .Q(S_AXI_RDATA[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[29]),
        .Q(S_AXI_RDATA[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(RAM_reg_4[2]),
        .Q(S_AXI_RDATA[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[30]),
        .Q(S_AXI_RDATA[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[31]),
        .Q(S_AXI_RDATA[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(RAM_reg_4[3]),
        .Q(S_AXI_RDATA[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(RAM_reg_4[4]),
        .Q(S_AXI_RDATA[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(RAM_reg_4[5]),
        .Q(S_AXI_RDATA[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(RAM_reg_4[6]),
        .Q(S_AXI_RDATA[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(RAM_reg_4[7]),
        .Q(S_AXI_RDATA[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(RAM_reg_4[8]),
        .Q(S_AXI_RDATA[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(RAM_reg_4[9]),
        .Q(S_AXI_RDATA[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_61),
        .Q(S_AXI_RVALID),
        .R(rst));
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .O(\state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \state[1]_i_3 
       (.I0(S_AXI_RVALID),
        .I1(S_AXI_RREADY),
        .I2(S_AXI_BVALID),
        .I3(S_AXI_BREADY),
        .O(\state[1]_i_3_n_0 ));
  FDRE \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_24),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_23),
        .Q(state[1]),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
