// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
// Date        : Mon Oct 31 17:14:18 2016
// Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_kth_axi_rni_static_0_1_sim_netlist.v
// Design      : BD_kth_axi_rni_static_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BD_kth_axi_rni_static_0_1,kth_axi_rni_static_c1_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "kth_axi_rni_static_c1_v1_0,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static_c1_v1_0 U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (E,
    \command_reg_reg[14] ,
    D,
    \rni_readdata_delayed_reg[10] ,
    \state_reg[1] ,
    S_AXI_ARREADY,
    ipif_Bus2IP_RdCE,
    S_AXI_WREADY,
    WEA,
    RAM_reg,
    RAM_reg_0,
    p_8_in,
    \FSM_onehot_xmit_state_reg[0] ,
    \s_axi_rdata_i_reg[31] ,
    rni_chipselect,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    S_AXI_ACLK,
    \dap_address_1__s_port_] ,
    \S_AXI_AWADDR[2] ,
    \S_AXI_AWADDR[8] ,
    \dap_address[2] ,
    old_slave_read,
    S_AXI_ARESETN,
    Q,
    \state_reg[1]_0 ,
    S_AXI_ARVALID,
    S_AXI_AWVALID_0,
    s_axi_rvalid_i_reg_0,
    \S_AXI_AWADDR[7] ,
    \S_AXI_AWADDR[8]_0 ,
    \S_AXI_AWADDR[8]_1 ,
    dap_write,
    dap_read,
    \S_AXI_AWADDR[6] ,
    \S_AXI_AWADDR[8]_2 ,
    S_AXI_AWADDR,
    S_AXI_ARADDR,
    dap_read_0,
    dap_address,
    p_1_out,
    p_3_out,
    \s_pid_reg[4][3] ,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_RVALID,
    S_AXI_BREADY,
    S_AXI_BVALID);
  output [0:0]E;
  output \command_reg_reg[14] ;
  output [21:0]D;
  output \rni_readdata_delayed_reg[10] ;
  output [1:0]\state_reg[1] ;
  output S_AXI_ARREADY;
  output ipif_Bus2IP_RdCE;
  output S_AXI_WREADY;
  output [0:0]WEA;
  output RAM_reg;
  output [0:0]RAM_reg_0;
  output p_8_in;
  output \FSM_onehot_xmit_state_reg[0] ;
  output [31:0]\s_axi_rdata_i_reg[31] ;
  output rni_chipselect;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  input S_AXI_ACLK;
  input \dap_address_1__s_port_] ;
  input \S_AXI_AWADDR[2] ;
  input \S_AXI_AWADDR[8] ;
  input \dap_address[2] ;
  input old_slave_read;
  input S_AXI_ARESETN;
  input [0:0]Q;
  input [1:0]\state_reg[1]_0 ;
  input S_AXI_ARVALID;
  input S_AXI_AWVALID_0;
  input s_axi_rvalid_i_reg_0;
  input \S_AXI_AWADDR[7] ;
  input \S_AXI_AWADDR[8]_0 ;
  input \S_AXI_AWADDR[8]_1 ;
  input dap_write;
  input dap_read;
  input [1:0]\S_AXI_AWADDR[6] ;
  input \S_AXI_AWADDR[8]_2 ;
  input [1:0]S_AXI_AWADDR;
  input [1:0]S_AXI_ARADDR;
  input dap_read_0;
  input [1:0]dap_address;
  input [31:0]p_1_out;
  input [31:0]p_3_out;
  input [9:0]\s_pid_reg[4][3] ;
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
  wire \FSM_onehot_xmit_state_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire [0:0]Q;
  wire RAM_reg;
  wire [0:0]RAM_reg_0;
  wire S_AXI_ACLK;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire \S_AXI_AWADDR[2] ;
  wire [1:0]\S_AXI_AWADDR[6] ;
  wire \S_AXI_AWADDR[7] ;
  wire \S_AXI_AWADDR[8] ;
  wire \S_AXI_AWADDR[8]_0 ;
  wire \S_AXI_AWADDR[8]_1 ;
  wire \S_AXI_AWADDR[8]_2 ;
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
  wire \command_reg[14]_i_4_n_0 ;
  wire \command_reg_reg[14] ;
  wire cs_ce_clr;
  wire [1:0]dap_address;
  wire \dap_address[2] ;
  wire dap_address_1__s_net_1;
  wire dap_read;
  wire dap_read_0;
  wire dap_write;
  wire ipif_Bus2IP_CS;
  wire ipif_Bus2IP_RdCE;
  wire old_slave_read;
  wire [31:0]p_1_out;
  wire [31:0]p_3_out;
  wire p_8_in;
  wire rni_chipselect;
  wire \rni_readdata_delayed[31]_i_6_n_0 ;
  wire \rni_readdata_delayed_reg[10] ;
  wire s_axi_bvalid_i_reg;
  wire \s_axi_rdata_i[31]_i_3_n_0 ;
  wire [31:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rvalid_i0;
  wire s_axi_rvalid_i_reg;
  wire s_axi_rvalid_i_reg_0;
  wire [9:0]\s_pid_reg[4][3] ;
  wire start;
  wire [1:0]\state_reg[1] ;
  wire [1:0]\state_reg[1]_0 ;

  assign dap_address_1__s_net_1 = \dap_address_1__s_port_] ;
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
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_xmit_state[4]_i_4 
       (.I0(\S_AXI_AWADDR[6] [0]),
        .I1(\S_AXI_AWADDR[6] [1]),
        .I2(\S_AXI_AWADDR[8]_2 ),
        .I3(\dap_address[2] ),
        .I4(\command_reg[14]_i_4_n_0 ),
        .O(\FSM_onehot_xmit_state_reg[0] ));
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
    .INIT(64'h00000000FFE200E2)) 
    RAM_reg_i_1__0
       (.I0(S_AXI_AWADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR[0]),
        .I3(dap_read_0),
        .I4(dap_address[0]),
        .I5(\s_axi_rdata_i[31]_i_3_n_0 ),
        .O(p_8_in));
  LUT6 #(
    .INIT(64'hFF00E2E2FF000000)) 
    RAM_reg_i_1__1
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR[1]),
        .I3(dap_address[1]),
        .I4(dap_read_0),
        .I5(ipif_Bus2IP_CS),
        .O(RAM_reg));
  LUT5 #(
    .INIT(32'h88888A88)) 
    RAM_reg_i_23
       (.I0(p_8_in),
        .I1(dap_write),
        .I2(dap_read),
        .I3(ce_out_i),
        .I4(Bus_RNW_reg),
        .O(RAM_reg_0));
  LUT5 #(
    .INIT(32'h88888A88)) 
    RAM_reg_i_3
       (.I0(RAM_reg),
        .I1(dap_write),
        .I2(dap_read),
        .I3(ce_out_i),
        .I4(Bus_RNW_reg),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    S_AXI_WREADY_INST_0
       (.I0(Q),
        .I1(ce_out_i),
        .I2(Bus_RNW_reg),
        .O(S_AXI_WREADY));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \command_reg[14]_i_1 
       (.I0(dap_address_1__s_net_1),
        .I1(\S_AXI_AWADDR[2] ),
        .I2(\S_AXI_AWADDR[8] ),
        .I3(\dap_address[2] ),
        .I4(\command_reg[14]_i_4_n_0 ),
        .I5(\command_reg_reg[14] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00FB)) 
    \command_reg[14]_i_4 
       (.I0(Bus_RNW_reg),
        .I1(ce_out_i),
        .I2(dap_read),
        .I3(dap_write),
        .O(\command_reg[14]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    dap_rni_select_i_1
       (.I0(\command_reg_reg[14] ),
        .O(rni_chipselect));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000000F6)) 
    \rni_readdata_delayed[31]_i_2 
       (.I0(\S_AXI_AWADDR[7] ),
        .I1(\S_AXI_AWADDR[8]_0 ),
        .I2(\S_AXI_AWADDR[8]_1 ),
        .I3(\rni_readdata_delayed[31]_i_6_n_0 ),
        .I4(\command_reg_reg[14] ),
        .O(\rni_readdata_delayed_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00F7)) 
    \rni_readdata_delayed[31]_i_6 
       (.I0(Bus_RNW_reg),
        .I1(ce_out_i),
        .I2(dap_write),
        .I3(dap_read),
        .O(\rni_readdata_delayed[31]_i_6_n_0 ));
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
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[0]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[0]),
        .I4(\command_reg_reg[14] ),
        .I5(\s_pid_reg[4][3] [0]),
        .O(\s_axi_rdata_i_reg[31] [0]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[10]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[10]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[10]),
        .I4(\command_reg_reg[14] ),
        .I5(D[0]),
        .O(\s_axi_rdata_i_reg[31] [10]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[11]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[11]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[11]),
        .I4(\command_reg_reg[14] ),
        .I5(D[1]),
        .O(\s_axi_rdata_i_reg[31] [11]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[12]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[12]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[12]),
        .I4(\command_reg_reg[14] ),
        .I5(D[2]),
        .O(\s_axi_rdata_i_reg[31] [12]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[13]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[13]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[13]),
        .I4(\command_reg_reg[14] ),
        .I5(D[3]),
        .O(\s_axi_rdata_i_reg[31] [13]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[14]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[14]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[14]),
        .I4(\command_reg_reg[14] ),
        .I5(D[4]),
        .O(\s_axi_rdata_i_reg[31] [14]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[15]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[15]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[15]),
        .I4(\command_reg_reg[14] ),
        .I5(D[5]),
        .O(\s_axi_rdata_i_reg[31] [15]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[16]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[16]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[16]),
        .I4(\command_reg_reg[14] ),
        .I5(D[6]),
        .O(\s_axi_rdata_i_reg[31] [16]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[17]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[17]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[17]),
        .I4(\command_reg_reg[14] ),
        .I5(D[7]),
        .O(\s_axi_rdata_i_reg[31] [17]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[18]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[18]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[18]),
        .I4(\command_reg_reg[14] ),
        .I5(D[8]),
        .O(\s_axi_rdata_i_reg[31] [18]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[19]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[19]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[19]),
        .I4(\command_reg_reg[14] ),
        .I5(D[9]),
        .O(\s_axi_rdata_i_reg[31] [19]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[1]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[1]),
        .I4(\command_reg_reg[14] ),
        .I5(\s_pid_reg[4][3] [1]),
        .O(\s_axi_rdata_i_reg[31] [1]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[20]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[20]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[20]),
        .I4(\command_reg_reg[14] ),
        .I5(D[10]),
        .O(\s_axi_rdata_i_reg[31] [20]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[21]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[21]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[21]),
        .I4(\command_reg_reg[14] ),
        .I5(D[11]),
        .O(\s_axi_rdata_i_reg[31] [21]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[22]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[22]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[22]),
        .I4(\command_reg_reg[14] ),
        .I5(D[12]),
        .O(\s_axi_rdata_i_reg[31] [22]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[23]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[23]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[23]),
        .I4(\command_reg_reg[14] ),
        .I5(D[13]),
        .O(\s_axi_rdata_i_reg[31] [23]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[24]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[24]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[24]),
        .I4(\command_reg_reg[14] ),
        .I5(D[14]),
        .O(\s_axi_rdata_i_reg[31] [24]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[25]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[25]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[25]),
        .I4(\command_reg_reg[14] ),
        .I5(D[15]),
        .O(\s_axi_rdata_i_reg[31] [25]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[26]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[26]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[26]),
        .I4(\command_reg_reg[14] ),
        .I5(D[16]),
        .O(\s_axi_rdata_i_reg[31] [26]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[27]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[27]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[27]),
        .I4(\command_reg_reg[14] ),
        .I5(D[17]),
        .O(\s_axi_rdata_i_reg[31] [27]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[28]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[28]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[28]),
        .I4(\command_reg_reg[14] ),
        .I5(D[18]),
        .O(\s_axi_rdata_i_reg[31] [28]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[29]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[29]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[29]),
        .I4(\command_reg_reg[14] ),
        .I5(D[19]),
        .O(\s_axi_rdata_i_reg[31] [29]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[2]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[2]),
        .I4(\command_reg_reg[14] ),
        .I5(\s_pid_reg[4][3] [2]),
        .O(\s_axi_rdata_i_reg[31] [2]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[30]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[30]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[30]),
        .I4(\command_reg_reg[14] ),
        .I5(D[20]),
        .O(\s_axi_rdata_i_reg[31] [30]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[31]_i_2 
       (.I0(RAM_reg),
        .I1(p_1_out[31]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[31]),
        .I4(\command_reg_reg[14] ),
        .I5(D[21]),
        .O(\s_axi_rdata_i_reg[31] [31]));
  LUT6 #(
    .INIT(64'hFFFFFD5D0000FD5D)) 
    \s_axi_rdata_i[31]_i_3 
       (.I0(ipif_Bus2IP_CS),
        .I1(S_AXI_AWADDR[1]),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[1]),
        .I4(dap_read_0),
        .I5(dap_address[1]),
        .O(\s_axi_rdata_i[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \s_axi_rdata_i[31]_i_4 
       (.I0(S_AXI_AWADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR[0]),
        .I3(dap_read_0),
        .I4(dap_address[0]),
        .I5(\s_axi_rdata_i[31]_i_3_n_0 ),
        .O(\command_reg_reg[14] ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[3]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[3]),
        .I4(\command_reg_reg[14] ),
        .I5(\s_pid_reg[4][3] [3]),
        .O(\s_axi_rdata_i_reg[31] [3]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[4]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[4]),
        .I4(\command_reg_reg[14] ),
        .I5(\s_pid_reg[4][3] [4]),
        .O(\s_axi_rdata_i_reg[31] [4]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[5]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[5]),
        .I4(\command_reg_reg[14] ),
        .I5(\s_pid_reg[4][3] [5]),
        .O(\s_axi_rdata_i_reg[31] [5]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[6]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[6]),
        .I4(\command_reg_reg[14] ),
        .I5(\s_pid_reg[4][3] [6]),
        .O(\s_axi_rdata_i_reg[31] [6]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[7]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[7]),
        .I4(\command_reg_reg[14] ),
        .I5(\s_pid_reg[4][3] [7]),
        .O(\s_axi_rdata_i_reg[31] [7]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[8]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[8]),
        .I4(\command_reg_reg[14] ),
        .I5(\s_pid_reg[4][3] [8]),
        .O(\s_axi_rdata_i_reg[31] [8]));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \s_axi_rdata_i[9]_i_1 
       (.I0(RAM_reg),
        .I1(p_1_out[9]),
        .I2(\s_axi_rdata_i[31]_i_3_n_0 ),
        .I3(p_3_out[9]),
        .I4(\command_reg_reg[14] ),
        .I5(\s_pid_reg[4][3] [9]),
        .O(\s_axi_rdata_i_reg[31] [9]));
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
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (S_AXI_RVALID,
    S_AXI_BVALID,
    E,
    send_buffer_address1,
    \command_reg_reg[14] ,
    D,
    out0,
    S_AXI_ARREADY,
    \rni_readdata_delayed_reg[10] ,
    \rni_readdata_delayed_reg[10]_0 ,
    ipif_Bus2IP_RdCE,
    S_AXI_WREADY,
    WEA,
    p_7_in,
    RAM_reg,
    p_8_in,
    \FSM_onehot_xmit_state_reg[0] ,
    \FSM_onehot_xmit_state_reg[0]_0 ,
    \rni_readdata_delayed_reg[6] ,
    rni_chipselect,
    \rni_readdata_delayed_reg[3] ,
    S_AXI_RDATA,
    Reset,
    S_AXI_ACLK,
    \S_AXI_AWADDR[8] ,
    old_slave_read,
    S_AXI_ARESETN,
    S_AXI_ARVALID,
    dap_write,
    dap_read,
    \S_AXI_AWADDR[6] ,
    dap_address,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    dap_read_0,
    p_1_out,
    p_3_out,
    \s_pid_reg[4][3] ,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_BREADY);
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  output [0:0]E;
  output [2:0]send_buffer_address1;
  output \command_reg_reg[14] ;
  output [21:0]D;
  output [0:0]out0;
  output S_AXI_ARREADY;
  output \rni_readdata_delayed_reg[10] ;
  output \rni_readdata_delayed_reg[10]_0 ;
  output ipif_Bus2IP_RdCE;
  output S_AXI_WREADY;
  output [0:0]WEA;
  output p_7_in;
  output [0:0]RAM_reg;
  output p_8_in;
  output \FSM_onehot_xmit_state_reg[0] ;
  output \FSM_onehot_xmit_state_reg[0]_0 ;
  output \rni_readdata_delayed_reg[6] ;
  output rni_chipselect;
  output \rni_readdata_delayed_reg[3] ;
  output [31:0]S_AXI_RDATA;
  input Reset;
  input S_AXI_ACLK;
  input \S_AXI_AWADDR[8] ;
  input old_slave_read;
  input S_AXI_ARESETN;
  input S_AXI_ARVALID;
  input dap_write;
  input dap_read;
  input [1:0]\S_AXI_AWADDR[6] ;
  input [6:0]dap_address;
  input [6:0]S_AXI_ARADDR;
  input [6:0]S_AXI_AWADDR;
  input dap_read_0;
  input [31:0]p_1_out;
  input [31:0]p_3_out;
  input [9:0]\s_pid_reg[4][3] ;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_BREADY;

  wire [21:0]D;
  wire [0:0]E;
  wire \FSM_onehot_xmit_state_reg[0] ;
  wire \FSM_onehot_xmit_state_reg[0]_0 ;
  wire [0:0]RAM_reg;
  wire Reset;
  wire S_AXI_ACLK;
  wire [6:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [6:0]S_AXI_AWADDR;
  wire [1:0]\S_AXI_AWADDR[6] ;
  wire \S_AXI_AWADDR[8] ;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [0:0]WEA;
  wire \command_reg_reg[14] ;
  wire [6:0]dap_address;
  wire dap_read;
  wire dap_read_0;
  wire dap_write;
  wire ipif_Bus2IP_RdCE;
  wire old_slave_read;
  wire [0:0]out0;
  wire [31:0]p_1_out;
  wire [31:0]p_3_out;
  wire p_7_in;
  wire p_8_in;
  wire rni_chipselect;
  wire \rni_readdata_delayed_reg[10] ;
  wire \rni_readdata_delayed_reg[10]_0 ;
  wire \rni_readdata_delayed_reg[3] ;
  wire \rni_readdata_delayed_reg[6] ;
  wire [9:0]\s_pid_reg[4][3] ;
  wire [2:0]send_buffer_address1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .\FSM_onehot_xmit_state_reg[0] (\FSM_onehot_xmit_state_reg[0] ),
        .\FSM_onehot_xmit_state_reg[0]_0 (\FSM_onehot_xmit_state_reg[0]_0 ),
        .RAM_reg(send_buffer_address1[1]),
        .RAM_reg_0(send_buffer_address1[0]),
        .RAM_reg_1(send_buffer_address1[2]),
        .RAM_reg_2(p_7_in),
        .RAM_reg_3(RAM_reg),
        .Reset(Reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .\S_AXI_AWADDR[6] (\S_AXI_AWADDR[6] ),
        .\S_AXI_AWADDR[8] (\S_AXI_AWADDR[8] ),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .WEA(WEA),
        .\command_reg_reg[14] (\command_reg_reg[14] ),
        .dap_address(dap_address),
        .dap_read(dap_read),
        .dap_read_0(dap_read_0),
        .dap_write(dap_write),
        .ipif_Bus2IP_RdCE(ipif_Bus2IP_RdCE),
        .old_slave_read(old_slave_read),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_8_in(p_8_in),
        .rni_chipselect(rni_chipselect),
        .\rni_readdata_delayed_reg[10] (out0),
        .\rni_readdata_delayed_reg[10]_0 (\rni_readdata_delayed_reg[10] ),
        .\rni_readdata_delayed_reg[10]_1 (\rni_readdata_delayed_reg[10]_0 ),
        .\rni_readdata_delayed_reg[3] (\rni_readdata_delayed_reg[3] ),
        .\rni_readdata_delayed_reg[6] (\rni_readdata_delayed_reg[6] ),
        .\s_pid_reg[4][3] (\s_pid_reg[4][3] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generic_nios_to_3D_noc
   (AR,
    \channel_nr_reg[3]_0 ,
    WEBWE,
    NoC_IRQ,
    ADDRARDADDR,
    D,
    \command_reg_reg[14]_0 ,
    ADDRBWRADDR,
    Q,
    RAM_reg,
    TO_NOC,
    HeartBeat,
    S_AXI_ACLK,
    send_buffer_address1,
    dap_writedata,
    dap_read,
    dap_write,
    S_AXI_WDATA,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    dap_read_0,
    dap_address,
    FROM_NOC,
    Sync,
    S_AXI_ARESETN,
    out0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    Bus_RNW_reg_reg,
    \S_AXI_AWADDR[8] ,
    \S_AXI_AWADDR[7] ,
    \S_AXI_AWADDR[8]_0 ,
    dap_read_1,
    \S_AXI_AWADDR[8]_1 ,
    E,
    p_2_out);
  output [0:0]AR;
  output \channel_nr_reg[3]_0 ;
  output [0:0]WEBWE;
  output NoC_IRQ;
  output [2:0]ADDRARDADDR;
  output [9:0]D;
  output \command_reg_reg[14]_0 ;
  output [4:0]ADDRBWRADDR;
  output [4:0]Q;
  output [31:0]RAM_reg;
  output [47:0]TO_NOC;
  input HeartBeat;
  input S_AXI_ACLK;
  input [2:0]send_buffer_address1;
  input [14:0]dap_writedata;
  input dap_read;
  input dap_write;
  input [14:0]S_AXI_WDATA;
  input [3:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [3:0]S_AXI_ARADDR;
  input dap_read_0;
  input [3:0]dap_address;
  input [43:0]FROM_NOC;
  input [1:0]Sync;
  input S_AXI_ARESETN;
  input [0:0]out0;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  input Bus_RNW_reg_reg;
  input \S_AXI_AWADDR[8] ;
  input \S_AXI_AWADDR[7] ;
  input \S_AXI_AWADDR[8]_0 ;
  input dap_read_1;
  input \S_AXI_AWADDR[8]_1 ;
  input [0:0]E;
  input [31:0]p_2_out;

  wire [2:0]ADDRARDADDR;
  wire [4:0]ADDRBWRADDR;
  wire [0:0]AR;
  wire Bus_RNW_reg_reg;
  wire [3:0]CONV_INTEGER;
  wire [9:0]D;
  wire [0:0]E;
  wire [43:0]FROM_NOC;
  wire \FSM_onehot_xmit_state[0]_i_1_n_0 ;
  wire \FSM_onehot_xmit_state[2]_i_1_n_0 ;
  wire \FSM_onehot_xmit_state[3]_i_1_n_0 ;
  wire \FSM_onehot_xmit_state[4]_i_1_n_0 ;
  wire \FSM_onehot_xmit_state[4]_i_2_n_0 ;
  wire \FSM_onehot_xmit_state[4]_i_3_n_0 ;
  wire \FSM_onehot_xmit_state[4]_i_5_n_0 ;
  wire \FSM_onehot_xmit_state[4]_i_6_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_xmit_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_xmit_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_xmit_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_xmit_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_xmit_state_reg_n_0_[4] ;
  wire [1:0]Flit_id;
  wire \Flit_id[0]_i_1_n_0 ;
  wire \Flit_id[1]_i_1_n_0 ;
  wire \Flit_id[1]_i_2_n_0 ;
  wire HeartBeat;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire NoC_IRQ;
  wire [4:0]Q;
  wire [31:0]RAM_reg;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire \S_AXI_AWADDR[7] ;
  wire \S_AXI_AWADDR[8] ;
  wire \S_AXI_AWADDR[8]_0 ;
  wire \S_AXI_AWADDR[8]_1 ;
  wire [14:0]S_AXI_WDATA;
  wire [1:0]Sync;
  wire [47:0]TO_NOC;
  wire [0:0]WEBWE;
  wire [3:3]channel_nr;
  wire \channel_nr[3]_i_1_n_0 ;
  wire \channel_nr_reg[3]_0 ;
  wire \channel_status[0][0]_i_1_n_0 ;
  wire \channel_status[0][0]_i_2_n_0 ;
  wire \channel_status[0][1]_i_1_n_0 ;
  wire \channel_status[0][1]_i_2_n_0 ;
  wire \channel_status[0][1]_i_3_n_0 ;
  wire \channel_status[0][1]_i_4_n_0 ;
  wire \channel_status[0][1]_i_5_n_0 ;
  wire \channel_status[10][0]_i_1_n_0 ;
  wire \channel_status[10][1]_i_1_n_0 ;
  wire \channel_status[11][0]_i_1_n_0 ;
  wire \channel_status[11][1]_i_1_n_0 ;
  wire \channel_status[11][1]_i_2_n_0 ;
  wire \channel_status[12][0]_i_1_n_0 ;
  wire \channel_status[12][1]_i_1_n_0 ;
  wire \channel_status[13][0]_i_1_n_0 ;
  wire \channel_status[13][1]_i_1_n_0 ;
  wire \channel_status[14][0]_i_1_n_0 ;
  wire \channel_status[14][1]_i_1_n_0 ;
  wire \channel_status[15][0]_i_1_n_0 ;
  wire \channel_status[15][1]_i_1_n_0 ;
  wire \channel_status[15][1]_i_2_n_0 ;
  wire \channel_status[1][0]_i_1_n_0 ;
  wire \channel_status[1][1]_i_1_n_0 ;
  wire \channel_status[1][1]_i_2_n_0 ;
  wire \channel_status[1][1]_i_3_n_0 ;
  wire \channel_status[1][1]_i_4_n_0 ;
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
  wire \channel_status[4][1]_i_3_n_0 ;
  wire \channel_status[5][0]_i_1_n_0 ;
  wire \channel_status[5][1]_i_1_n_0 ;
  wire \channel_status[5][1]_i_2_n_0 ;
  wire \channel_status[5][1]_i_3_n_0 ;
  wire \channel_status[6][0]_i_1_n_0 ;
  wire \channel_status[6][1]_i_1_n_0 ;
  wire \channel_status[6][1]_i_2_n_0 ;
  wire \channel_status[6][1]_i_3_n_0 ;
  wire \channel_status[7][0]_i_1_n_0 ;
  wire \channel_status[7][0]_i_2_n_0 ;
  wire \channel_status[7][1]_i_1_n_0 ;
  wire \channel_status[7][1]_i_2_n_0 ;
  wire \channel_status[7][1]_i_3_n_0 ;
  wire \channel_status[8][0]_i_1_n_0 ;
  wire \channel_status[8][1]_i_1_n_0 ;
  wire \channel_status[8][1]_i_2_n_0 ;
  wire \channel_status[9][0]_i_1_n_0 ;
  wire \channel_status[9][1]_i_1_n_0 ;
  wire [1:0]\channel_status_reg[0] ;
  wire [1:0]\channel_status_reg[10] ;
  wire [1:0]\channel_status_reg[11] ;
  wire [1:0]\channel_status_reg[12] ;
  wire [1:0]\channel_status_reg[13] ;
  wire [1:0]\channel_status_reg[14] ;
  wire [1:0]\channel_status_reg[15] ;
  wire [1:0]\channel_status_reg[1] ;
  wire [1:0]\channel_status_reg[2] ;
  wire [1:0]\channel_status_reg[3] ;
  wire [1:0]\channel_status_reg[4] ;
  wire [1:0]\channel_status_reg[5] ;
  wire [1:0]\channel_status_reg[6] ;
  wire [1:0]\channel_status_reg[7] ;
  wire [1:0]\channel_status_reg[8] ;
  wire [1:0]\channel_status_reg[9] ;
  wire \command_reg_reg[14]_0 ;
  wire \command_reg_reg_n_0_[0] ;
  wire \command_reg_reg_n_0_[1] ;
  wire [3:0]\d_pid_reg[0] ;
  wire [3:0]\d_pid_reg[10] ;
  wire [3:0]\d_pid_reg[11] ;
  wire [3:0]\d_pid_reg[12] ;
  wire [3:0]\d_pid_reg[13] ;
  wire [3:0]\d_pid_reg[1] ;
  wire [3:0]\d_pid_reg[2] ;
  wire [3:0]\d_pid_reg[3] ;
  wire [3:0]\d_pid_reg[4] ;
  wire [3:0]\d_pid_reg[5] ;
  wire [3:0]\d_pid_reg[8] ;
  wire [3:0]\d_pid_reg[9] ;
  wire [3:0]dap_address;
  wire dap_read;
  wire dap_read_0;
  wire dap_read_1;
  wire dap_write;
  wire [14:0]dap_writedata;
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
  wire [4:0]delay;
  wire \delay[4]_i_1_n_0 ;
  wire \delay[4]_i_3_n_0 ;
  wire [4:0]delay_1;
  wire dest_col;
  wire dest_col_0;
  wire [3:0]dest_pid;
  wire dest_row;
  wire eqOp;
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
  wire \interrupt[2]_i_1_n_0 ;
  wire \interrupt_reg[0]_i_1_n_0 ;
  wire \interrupt_reg[0]_i_2_n_0 ;
  wire \interrupt_reg[1]_i_1_n_0 ;
  wire \interrupt_reg[1]_i_2_n_0 ;
  wire \interrupt_reg[2]_i_1_n_0 ;
  wire \interrupt_reg[2]_i_2_n_0 ;
  wire \interrupt_reg[3]_i_1_n_0 ;
  wire \interrupt_reg[3]_i_2_n_0 ;
  wire \interrupt_reg[3]_i_3_n_0 ;
  wire \interrupt_reg[4]_i_1_n_0 ;
  wire \interrupt_reg[4]_i_2_n_0 ;
  wire \interrupt_reg[4]_i_3_n_0 ;
  wire \interrupt_reg[5]_i_1_n_0 ;
  wire \interrupt_reg[5]_i_2_n_0 ;
  wire \interrupt_reg[5]_i_3_n_0 ;
  wire \interrupt_reg[6]_i_1_n_0 ;
  wire \interrupt_reg[6]_i_2_n_0 ;
  wire \interrupt_reg[6]_i_3_n_0 ;
  wire \interrupt_reg[7]_i_1_n_0 ;
  wire \interrupt_reg[7]_i_2_n_0 ;
  wire \interrupt_reg[7]_i_3_n_0 ;
  wire \interrupt_reg[7]_i_4_n_0 ;
  wire \interrupt_reg_fifo_reg_n_0_[0] ;
  wire \interrupt_reg_fifo_reg_n_0_[1] ;
  wire \interrupt_reg_fifo_reg_n_0_[2] ;
  wire \interrupt_reg_fifo_reg_n_0_[3] ;
  wire \interrupt_reg_fifo_reg_n_0_[4] ;
  wire \interrupt_reg_fifo_reg_n_0_[5] ;
  wire \interrupt_reg_fifo_reg_n_0_[6] ;
  wire \interrupt_reg_fifo_reg_n_0_[7] ;
  wire \interrupt_reg_n_0_[0] ;
  wire \interrupt_reg_n_0_[1] ;
  wire \interrupt_reg_n_0_[2] ;
  wire \interrupt_reg_reg_n_0_[0] ;
  wire \interrupt_reg_reg_n_0_[1] ;
  wire \interrupt_reg_reg_n_0_[2] ;
  wire \interrupt_reg_reg_n_0_[3] ;
  wire \interrupt_reg_reg_n_0_[4] ;
  wire \interrupt_reg_reg_n_0_[5] ;
  wire \interrupt_reg_reg_n_0_[6] ;
  wire \interrupt_reg_reg_n_0_[7] ;
  wire interrupt_request;
  wire interrupt_request_i_1_n_0;
  wire \mem_address[0]_i_2_n_0 ;
  wire \mem_address[0]_i_3_n_0 ;
  wire \mem_address[1]_i_2_n_0 ;
  wire \mem_address[1]_i_3_n_0 ;
  wire \mem_address_reg[0]_i_1_n_0 ;
  wire \mem_address_reg[1]_i_1_n_0 ;
  wire \mem_address_reg_n_0_[0] ;
  wire \mem_address_reg_n_0_[1] ;
  wire \mem_address_reg_n_0_[2] ;
  wire \mem_address_reg_n_0_[3] ;
  wire \mem_address_reg_n_0_[4] ;
  wire \msg_length_reg[0][1]_i_1_n_0 ;
  wire \msg_length_reg[10][1]_i_1_n_0 ;
  wire \msg_length_reg[10][1]_i_2_n_0 ;
  wire \msg_length_reg[11][1]_i_2_n_0 ;
  wire \msg_length_reg[11]_0 ;
  wire \msg_length_reg[12]_4 ;
  wire \msg_length_reg[13]_5 ;
  wire \msg_length_reg[1][1]_i_1_n_0 ;
  wire \msg_length_reg[2]_1 ;
  wire \msg_length_reg[3][1]_i_1_n_0 ;
  wire \msg_length_reg[4][1]_i_1_n_0 ;
  wire \msg_length_reg[5][1]_i_1_n_0 ;
  wire \msg_length_reg[8]_3 ;
  wire \msg_length_reg[9]_2 ;
  wire [1:0]\msg_length_reg_reg[0] ;
  wire [1:0]\msg_length_reg_reg[10] ;
  wire [1:0]\msg_length_reg_reg[11] ;
  wire [1:0]\msg_length_reg_reg[12] ;
  wire [1:0]\msg_length_reg_reg[13] ;
  wire [1:0]\msg_length_reg_reg[1] ;
  wire [1:0]\msg_length_reg_reg[2] ;
  wire [1:0]\msg_length_reg_reg[3] ;
  wire [1:0]\msg_length_reg_reg[4] ;
  wire [1:0]\msg_length_reg_reg[5] ;
  wire [1:0]\msg_length_reg_reg[8] ;
  wire [1:0]\msg_length_reg_reg[9] ;
  wire old_heartbeat;
  wire old_toggle_bit;
  wire [0:0]out0;
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
  wire \outport[53]_i_2_n_0 ;
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
  wire [2:0]p_0_in;
  wire [1:0]p_1_in;
  wire [3:0]p_2_in;
  wire [31:0]p_2_out;
  wire [5:4]priority;
  wire \process_map[0][EW]__0 ;
  wire \process_map[0][NS]__0 ;
  wire \recv_address[0]_i_1_n_0 ;
  wire \recv_address[1]_i_1_n_0 ;
  wire \recv_address[2]_i_2_n_0 ;
  wire \recv_address[2]_i_3_n_0 ;
  wire \recv_address[2]_i_4_n_0 ;
  wire \recv_address[3]_i_2_n_0 ;
  wire \recv_address[4]_i_3_n_0 ;
  wire recv_buffer_write_i_1_n_0;
  wire [2:0]\recv_channel_map[0][0][0]_6 ;
  wire \recv_counter[0][0]_i_1_n_0 ;
  wire \recv_counter[0][0]_i_2_n_0 ;
  wire \recv_counter[0][1]_i_1_n_0 ;
  wire \recv_counter[0][1]_i_2_n_0 ;
  wire \recv_counter[0][1]_i_3_n_0 ;
  wire \recv_counter[1][0]_i_1_n_0 ;
  wire \recv_counter[1][0]_i_2_n_0 ;
  wire \recv_counter[1][1]_i_1_n_0 ;
  wire \recv_counter[1][1]_i_2_n_0 ;
  wire \recv_counter[1][1]_i_3_n_0 ;
  wire \recv_counter[1][1]_i_4_n_0 ;
  wire \recv_counter[1][1]_i_5_n_0 ;
  wire \recv_counter[2][0]_i_1_n_0 ;
  wire \recv_counter[2][1]_i_1_n_0 ;
  wire \recv_counter[2][1]_i_3_n_0 ;
  wire \recv_counter[2][1]_i_4_n_0 ;
  wire \recv_counter[3][0]_i_1_n_0 ;
  wire \recv_counter[3][1]_i_1_n_0 ;
  wire \recv_counter[3][1]_i_3_n_0 ;
  wire \recv_counter[4][0]_i_1_n_0 ;
  wire \recv_counter[4][0]_i_2_n_0 ;
  wire \recv_counter[4][1]_i_1_n_0 ;
  wire \recv_counter[4][1]_i_2_n_0 ;
  wire \recv_counter[4][1]_i_3_n_0 ;
  wire \recv_counter[4][1]_i_4_n_0 ;
  wire \recv_counter[5][0]_i_1_n_0 ;
  wire \recv_counter[5][0]_i_2_n_0 ;
  wire \recv_counter[5][1]_i_1_n_0 ;
  wire \recv_counter[5][1]_i_2_n_0 ;
  wire \recv_counter[5][1]_i_3_n_0 ;
  wire \recv_counter[5][1]_i_4_n_0 ;
  wire \recv_counter[6][0]_i_1_n_0 ;
  wire \recv_counter[6][0]_i_2_n_0 ;
  wire \recv_counter[6][0]_i_3_n_0 ;
  wire \recv_counter[6][1]_i_1_n_0 ;
  wire \recv_counter[7][0]_i_1_n_0 ;
  wire \recv_counter[7][1]_i_1_n_0 ;
  wire \recv_counter[7][1]_i_3_n_0 ;
  wire [1:0]\recv_counter_reg[0] ;
  wire [1:0]\recv_counter_reg[1] ;
  wire [1:0]\recv_counter_reg[2] ;
  wire \recv_counter_reg[2]0 ;
  wire [1:0]\recv_counter_reg[3] ;
  wire \recv_counter_reg[3]0 ;
  wire [1:0]\recv_counter_reg[4] ;
  wire [1:0]\recv_counter_reg[5] ;
  wire [1:0]\recv_counter_reg[6] ;
  wire \recv_counter_reg[6]0 ;
  wire [1:0]\recv_counter_reg[7] ;
  wire \recv_counter_reg[7]0 ;
  wire \recv_state[0]_i_1_n_0 ;
  wire \recv_state[1]_i_1_n_0 ;
  wire \recv_state_reg_n_0_[0] ;
  wire \recv_state_reg_n_0_[1] ;
  wire \rni_readdata_delayed[0]_i_10_n_0 ;
  wire \rni_readdata_delayed[0]_i_11_n_0 ;
  wire \rni_readdata_delayed[0]_i_12_n_0 ;
  wire \rni_readdata_delayed[0]_i_13_n_0 ;
  wire \rni_readdata_delayed[0]_i_14_n_0 ;
  wire \rni_readdata_delayed[0]_i_15_n_0 ;
  wire \rni_readdata_delayed[0]_i_16_n_0 ;
  wire \rni_readdata_delayed[0]_i_17_n_0 ;
  wire \rni_readdata_delayed[0]_i_18_n_0 ;
  wire \rni_readdata_delayed[0]_i_19_n_0 ;
  wire \rni_readdata_delayed[0]_i_20_n_0 ;
  wire \rni_readdata_delayed[0]_i_21_n_0 ;
  wire \rni_readdata_delayed[0]_i_22_n_0 ;
  wire \rni_readdata_delayed[0]_i_23_n_0 ;
  wire \rni_readdata_delayed[0]_i_24_n_0 ;
  wire \rni_readdata_delayed[0]_i_25_n_0 ;
  wire \rni_readdata_delayed[0]_i_26_n_0 ;
  wire \rni_readdata_delayed[0]_i_27_n_0 ;
  wire \rni_readdata_delayed[0]_i_28_n_0 ;
  wire \rni_readdata_delayed[0]_i_29_n_0 ;
  wire \rni_readdata_delayed[0]_i_30_n_0 ;
  wire \rni_readdata_delayed[0]_i_31_n_0 ;
  wire \rni_readdata_delayed[0]_i_32_n_0 ;
  wire \rni_readdata_delayed[0]_i_3_n_0 ;
  wire \rni_readdata_delayed[0]_i_4_n_0 ;
  wire \rni_readdata_delayed[0]_i_9_n_0 ;
  wire \rni_readdata_delayed[1]_i_2_n_0 ;
  wire \rni_readdata_delayed[1]_i_3_n_0 ;
  wire \rni_readdata_delayed[1]_i_4_n_0 ;
  wire \rni_readdata_delayed[1]_i_5_n_0 ;
  wire \rni_readdata_delayed[1]_i_6_n_0 ;
  wire \rni_readdata_delayed[1]_i_7_n_0 ;
  wire \rni_readdata_delayed[1]_i_8_n_0 ;
  wire \rni_readdata_delayed[2]_i_2_n_0 ;
  wire \rni_readdata_delayed[2]_i_3_n_0 ;
  wire \rni_readdata_delayed[2]_i_4_n_0 ;
  wire \rni_readdata_delayed[2]_i_5_n_0 ;
  wire \rni_readdata_delayed[2]_i_6_n_0 ;
  wire \rni_readdata_delayed[3]_i_2_n_0 ;
  wire \rni_readdata_delayed[3]_i_3_n_0 ;
  wire \rni_readdata_delayed[3]_i_4_n_0 ;
  wire \rni_readdata_delayed[3]_i_5_n_0 ;
  wire \rni_readdata_delayed[3]_i_6_n_0 ;
  wire \rni_readdata_delayed[4]_i_2_n_0 ;
  wire \rni_readdata_delayed[4]_i_3_n_0 ;
  wire \rni_readdata_delayed[4]_i_4_n_0 ;
  wire \rni_readdata_delayed[4]_i_5_n_0 ;
  wire \rni_readdata_delayed[4]_i_6_n_0 ;
  wire \rni_readdata_delayed[4]_i_7_n_0 ;
  wire \rni_readdata_delayed[4]_i_8_n_0 ;
  wire \rni_readdata_delayed[5]_i_2_n_0 ;
  wire \rni_readdata_delayed[5]_i_3_n_0 ;
  wire \rni_readdata_delayed[5]_i_4_n_0 ;
  wire \rni_readdata_delayed[5]_i_5_n_0 ;
  wire \rni_readdata_delayed[5]_i_6_n_0 ;
  wire \rni_readdata_delayed[5]_i_7_n_0 ;
  wire \rni_readdata_delayed[5]_i_8_n_0 ;
  wire \rni_readdata_delayed[6]_i_2_n_0 ;
  wire \rni_readdata_delayed[6]_i_3_n_0 ;
  wire \rni_readdata_delayed[6]_i_4_n_0 ;
  wire \rni_readdata_delayed[6]_i_5_n_0 ;
  wire \rni_readdata_delayed[6]_i_6_n_0 ;
  wire \rni_readdata_delayed[6]_i_7_n_0 ;
  wire \rni_readdata_delayed[6]_i_8_n_0 ;
  wire \rni_readdata_delayed[7]_i_2_n_0 ;
  wire \rni_readdata_delayed[7]_i_4_n_0 ;
  wire \rni_readdata_delayed[7]_i_5_n_0 ;
  wire \rni_readdata_delayed[7]_i_6_n_0 ;
  wire \rni_readdata_delayed[7]_i_7_n_0 ;
  wire \rni_readdata_delayed[8]_i_2_n_0 ;
  wire \rni_readdata_delayed[8]_i_3_n_0 ;
  wire \rni_readdata_delayed[8]_i_4_n_0 ;
  wire \rni_readdata_delayed[8]_i_6_n_0 ;
  wire \rni_readdata_delayed[8]_i_7_n_0 ;
  wire \rni_readdata_delayed[9]_i_2_n_0 ;
  wire \rni_readdata_delayed[9]_i_3_n_0 ;
  wire \rni_readdata_delayed[9]_i_4_n_0 ;
  wire \rni_readdata_delayed[9]_i_5_n_0 ;
  wire \rni_readdata_delayed[9]_i_6_n_0 ;
  wire \rni_readdata_delayed[9]_i_7_n_0 ;
  wire \rni_readdata_delayed_reg[0]_i_2_n_0 ;
  wire \rni_readdata_delayed_reg[0]_i_5_n_0 ;
  wire \rni_readdata_delayed_reg[0]_i_6_n_0 ;
  wire \rni_readdata_delayed_reg[0]_i_7_n_0 ;
  wire \rni_readdata_delayed_reg[0]_i_8_n_0 ;
  wire [14:0]rni_writedata;
  wire [3:0]\s_pid_reg[0] ;
  wire [3:0]\s_pid_reg[10] ;
  wire [3:0]\s_pid_reg[11] ;
  wire [3:0]\s_pid_reg[12] ;
  wire [3:0]\s_pid_reg[13] ;
  wire [3:0]\s_pid_reg[1] ;
  wire [3:0]\s_pid_reg[2] ;
  wire [3:0]\s_pid_reg[3] ;
  wire [3:0]\s_pid_reg[4] ;
  wire [3:0]\s_pid_reg[5] ;
  wire [3:0]\s_pid_reg[8] ;
  wire [3:0]\s_pid_reg[9] ;
  wire [2:0]send_buffer_address1;
  wire send_clock_i_1_n_0;
  wire send_clock_reg_n_0;
  wire [1:0]send_counter;
  wire \send_counter[0]_i_2_n_0 ;
  wire \send_counter[1]_i_2_n_0 ;
  wire slave_irq0;
  wire slave_irq_i_1_n_0;
  wire [3:0]src_pid;
  wire synchronize_flag;
  wire synchronize_flag_i_1_n_0;
  wire toggle_address;
  wire [2:0]xmit_state;
  wire \xmit_state[0]_i_1_n_0 ;
  wire \xmit_state[1]_i_1_n_0 ;
  wire \xmit_state[2]_i_1_n_0 ;
  wire [3:3]\NLW_global_clock_reg[36]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \FSM_onehot_xmit_state[0]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I3(eqOp),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .O(\FSM_onehot_xmit_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_xmit_state[2]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .O(\FSM_onehot_xmit_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_xmit_state[3]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .O(\FSM_onehot_xmit_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44444445)) 
    \FSM_onehot_xmit_state[4]_i_1 
       (.I0(\FSM_onehot_xmit_state[4]_i_3_n_0 ),
        .I1(xmit_state[2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(Bus_RNW_reg_reg),
        .I4(\FSM_onehot_xmit_state[4]_i_5_n_0 ),
        .I5(\FSM_onehot_xmit_state[4]_i_6_n_0 ),
        .O(\FSM_onehot_xmit_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_onehot_xmit_state[4]_i_2 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(eqOp),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .O(\FSM_onehot_xmit_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_xmit_state[4]_i_3 
       (.I0(xmit_state[0]),
        .I1(\delay[4]_i_3_n_0 ),
        .I2(xmit_state[2]),
        .O(\FSM_onehot_xmit_state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEAEAEAEFEA)) 
    \FSM_onehot_xmit_state[4]_i_5 
       (.I0(send_buffer_address1[0]),
        .I1(dap_address[0]),
        .I2(dap_read_0),
        .I3(S_AXI_AWADDR[0]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_ARADDR[0]),
        .O(\FSM_onehot_xmit_state[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hBC)) 
    \FSM_onehot_xmit_state[4]_i_6 
       (.I0(Sync[0]),
        .I1(xmit_state[0]),
        .I2(xmit_state[1]),
        .O(\FSM_onehot_xmit_state[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_xmit_state[4]_i_7 
       (.I0(ADDRBWRADDR[0]),
        .I1(ADDRBWRADDR[1]),
        .O(eqOp));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_xmit_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_xmit_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_xmit_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .S(AR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_xmit_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_xmit_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .R(AR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_xmit_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_xmit_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_xmit_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .R(AR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_xmit_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_xmit_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_xmit_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .R(AR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_xmit_state_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_xmit_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_xmit_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .R(AR));
  LUT6 #(
    .INIT(64'hAAFAFFFFEEFE0000)) 
    \Flit_id[0]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I3(\command_reg_reg_n_0_[0] ),
        .I4(\Flit_id[1]_i_2_n_0 ),
        .I5(Flit_id[0]),
        .O(\Flit_id[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFAE0000)) 
    \Flit_id[1]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I2(Flit_id[0]),
        .I3(\outport[9]_i_2_n_0 ),
        .I4(\Flit_id[1]_i_2_n_0 ),
        .I5(Flit_id[1]),
        .O(\Flit_id[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA80)) 
    \Flit_id[1]_i_2 
       (.I0(S_AXI_ARESETN),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I2(Sync[0]),
        .I3(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .O(\Flit_id[1]_i_2_n_0 ));
  FDRE \Flit_id_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\Flit_id[0]_i_1_n_0 ),
        .Q(Flit_id[0]),
        .R(1'b0));
  FDRE \Flit_id_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\Flit_id[1]_i_1_n_0 ),
        .Q(Flit_id[1]),
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
       (.I0(\channel_nr_reg[3]_0 ),
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
  LUT4 #(
    .INIT(16'h1000)) 
    \channel_nr[3]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\recv_state_reg_n_0_[0] ),
        .I2(Sync[1]),
        .I3(S_AXI_ARESETN),
        .O(\channel_nr[3]_i_1_n_0 ));
  FDRE \channel_nr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\channel_nr[3]_i_1_n_0 ),
        .D(\channel_nr_reg[3]_0 ),
        .Q(channel_nr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \channel_status[0][0]_i_1 
       (.I0(\channel_status[0][0]_i_2_n_0 ),
        .I1(\recv_counter[4][1]_i_3_n_0 ),
        .I2(channel_nr),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(\channel_status[0][1]_i_4_n_0 ),
        .I5(\channel_status_reg[0] [0]),
        .O(\channel_status[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \channel_status[0][0]_i_2 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\recv_state_reg_n_0_[0] ),
        .O(\channel_status[0][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \channel_status[0][1]_i_1 
       (.I0(\channel_status[0][1]_i_2_n_0 ),
        .I1(channel_nr),
        .I2(\recv_counter[4][1]_i_3_n_0 ),
        .I3(\channel_status[0][1]_i_3_n_0 ),
        .I4(\channel_status[0][1]_i_4_n_0 ),
        .I5(\channel_status_reg[0] [1]),
        .O(\channel_status[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \channel_status[0][1]_i_2 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\mem_address_reg_n_0_[1] ),
        .I2(\mem_address_reg_n_0_[0] ),
        .O(\channel_status[0][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \channel_status[0][1]_i_3 
       (.I0(\mem_address_reg_n_0_[4] ),
        .I1(\recv_state_reg_n_0_[0] ),
        .O(\channel_status[0][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \channel_status[0][1]_i_4 
       (.I0(\channel_status[0][1]_i_5_n_0 ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\interrupt_reg_fifo_reg_n_0_[0] ),
        .I3(\interrupt_reg_reg_n_0_[0] ),
        .I4(old_toggle_bit),
        .I5(\channel_nr_reg[3]_0 ),
        .O(\channel_status[0][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \channel_status[0][1]_i_5 
       (.I0(\mem_address_reg_n_0_[4] ),
        .I1(channel_nr),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(\mem_address_reg_n_0_[2] ),
        .O(\channel_status[0][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \channel_status[10][0]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[6][0]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[10] [0]),
        .O(\channel_status[10][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \channel_status[10][1]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[6][0]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[10] [1]),
        .O(\channel_status[10][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \channel_status[11][0]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(\mem_address_reg_n_0_[3] ),
        .I4(\channel_status[11][1]_i_2_n_0 ),
        .I5(\channel_status_reg[11] [0]),
        .O(\channel_status[11][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF10000000)) 
    \channel_status[11][1]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(\mem_address_reg_n_0_[3] ),
        .I4(\channel_status[11][1]_i_2_n_0 ),
        .I5(\channel_status_reg[11] [1]),
        .O(\channel_status[11][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \channel_status[11][1]_i_2 
       (.I0(channel_nr),
        .I1(\mem_address_reg_n_0_[4] ),
        .O(\channel_status[11][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \channel_status[12][0]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[4][1]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[12] [0]),
        .O(\channel_status[12][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF10000000)) 
    \channel_status[12][1]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[4][1]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[12] [1]),
        .O(\channel_status[12][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \channel_status[13][0]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[5][1]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[13] [0]),
        .O(\channel_status[13][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF10000000)) 
    \channel_status[13][1]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[5][1]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[13] [1]),
        .O(\channel_status[13][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \channel_status[14][0]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[6][0]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[14] [0]),
        .O(\channel_status[14][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFF01000000)) 
    \channel_status[14][1]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[6][0]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[14] [1]),
        .O(\channel_status[14][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \channel_status[15][0]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(\mem_address_reg_n_0_[3] ),
        .I4(\channel_status[15][1]_i_2_n_0 ),
        .I5(\channel_status_reg[15] [0]),
        .O(\channel_status[15][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFF00001000)) 
    \channel_status[15][1]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(\mem_address_reg_n_0_[3] ),
        .I4(\channel_status[15][1]_i_2_n_0 ),
        .I5(\channel_status_reg[15] [1]),
        .O(\channel_status[15][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \channel_status[15][1]_i_2 
       (.I0(channel_nr),
        .I1(\mem_address_reg_n_0_[4] ),
        .O(\channel_status[15][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDCCCDCDCCCCCCCC)) 
    \channel_status[1][0]_i_1 
       (.I0(\channel_status[1][1]_i_2_n_0 ),
        .I1(\channel_status[1][1]_i_3_n_0 ),
        .I2(\channel_status[1][1]_i_4_n_0 ),
        .I3(\interrupt_reg_reg_n_0_[1] ),
        .I4(\interrupt_reg_fifo_reg_n_0_[1] ),
        .I5(\channel_status_reg[1] [0]),
        .O(\channel_status[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABAAAAAAAA)) 
    \channel_status[1][1]_i_1 
       (.I0(\channel_status[1][1]_i_2_n_0 ),
        .I1(\channel_status[1][1]_i_3_n_0 ),
        .I2(\channel_status[1][1]_i_4_n_0 ),
        .I3(\interrupt_reg_reg_n_0_[1] ),
        .I4(\interrupt_reg_fifo_reg_n_0_[1] ),
        .I5(\channel_status_reg[1] [1]),
        .O(\channel_status[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \channel_status[1][1]_i_2 
       (.I0(interrupt_request_i_1_n_0),
        .I1(channel_nr),
        .I2(\mem_address_reg_n_0_[4] ),
        .I3(\mem_address_reg_n_0_[2] ),
        .I4(\mem_address_reg_n_0_[3] ),
        .O(\channel_status[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \channel_status[1][1]_i_3 
       (.I0(channel_nr),
        .I1(\mem_address_reg_n_0_[4] ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(\mem_address_reg_n_0_[3] ),
        .I4(\recv_state_reg_n_0_[0] ),
        .I5(\recv_state_reg_n_0_[1] ),
        .O(\channel_status[1][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \channel_status[1][1]_i_4 
       (.I0(old_toggle_bit),
        .I1(\channel_nr_reg[3]_0 ),
        .O(\channel_status[1][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \channel_status[2][0]_i_1 
       (.I0(\channel_status[0][0]_i_2_n_0 ),
        .I1(channel_nr),
        .I2(\mem_address_reg_n_0_[4] ),
        .I3(\recv_counter[6][0]_i_3_n_0 ),
        .I4(\channel_status[2][1]_i_2_n_0 ),
        .I5(\channel_status_reg[2] [0]),
        .O(\channel_status[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \channel_status[2][1]_i_1 
       (.I0(\mem_address_reg_n_0_[4] ),
        .I1(channel_nr),
        .I2(\recv_counter[6][0]_i_3_n_0 ),
        .I3(interrupt_request_i_1_n_0),
        .I4(\channel_status[2][1]_i_2_n_0 ),
        .I5(\channel_status_reg[2] [1]),
        .O(\channel_status[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \channel_status[2][1]_i_2 
       (.I0(\channel_status[2][1]_i_3_n_0 ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\interrupt_reg_fifo_reg_n_0_[2] ),
        .I3(\interrupt_reg_reg_n_0_[2] ),
        .I4(old_toggle_bit),
        .I5(\channel_nr_reg[3]_0 ),
        .O(\channel_status[2][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \channel_status[2][1]_i_3 
       (.I0(\mem_address_reg_n_0_[3] ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[4] ),
        .I3(channel_nr),
        .O(\channel_status[2][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCDCCCDCDCCCCCCCC)) 
    \channel_status[3][0]_i_1 
       (.I0(\channel_status[3][1]_i_2_n_0 ),
        .I1(\channel_status[3][1]_i_3_n_0 ),
        .I2(\channel_status[1][1]_i_4_n_0 ),
        .I3(\interrupt_reg_reg_n_0_[3] ),
        .I4(\interrupt_reg_fifo_reg_n_0_[3] ),
        .I5(\channel_status_reg[3] [0]),
        .O(\channel_status[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABAAAAAAAA)) 
    \channel_status[3][1]_i_1 
       (.I0(\channel_status[3][1]_i_2_n_0 ),
        .I1(\channel_status[3][1]_i_3_n_0 ),
        .I2(\channel_status[1][1]_i_4_n_0 ),
        .I3(\interrupt_reg_reg_n_0_[3] ),
        .I4(\interrupt_reg_fifo_reg_n_0_[3] ),
        .I5(\channel_status_reg[3] [1]),
        .O(\channel_status[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \channel_status[3][1]_i_2 
       (.I0(interrupt_request_i_1_n_0),
        .I1(channel_nr),
        .I2(\mem_address_reg_n_0_[4] ),
        .I3(\mem_address_reg_n_0_[2] ),
        .I4(\mem_address_reg_n_0_[3] ),
        .O(\channel_status[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \channel_status[3][1]_i_3 
       (.I0(\recv_state_reg_n_0_[0] ),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(channel_nr),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(\mem_address_reg_n_0_[2] ),
        .I5(\mem_address_reg_n_0_[3] ),
        .O(\channel_status[3][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \channel_status[4][0]_i_1 
       (.I0(\channel_status[0][0]_i_2_n_0 ),
        .I1(\recv_counter[4][1]_i_3_n_0 ),
        .I2(channel_nr),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(\channel_status[4][1]_i_2_n_0 ),
        .I5(\channel_status_reg[4] [0]),
        .O(\channel_status[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \channel_status[4][1]_i_1 
       (.I0(\interrupt[2]_i_1_n_0 ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(channel_nr),
        .I4(\channel_status[4][1]_i_2_n_0 ),
        .I5(\channel_status_reg[4] [1]),
        .O(\channel_status[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \channel_status[4][1]_i_2 
       (.I0(\channel_status[4][1]_i_3_n_0 ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\interrupt_reg_fifo_reg_n_0_[4] ),
        .I3(\interrupt_reg_reg_n_0_[4] ),
        .I4(old_toggle_bit),
        .I5(\channel_nr_reg[3]_0 ),
        .O(\channel_status[4][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \channel_status[4][1]_i_3 
       (.I0(\mem_address_reg_n_0_[4] ),
        .I1(channel_nr),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(\mem_address_reg_n_0_[2] ),
        .O(\channel_status[4][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \channel_status[5][0]_i_1 
       (.I0(\channel_status[0][0]_i_2_n_0 ),
        .I1(\recv_counter[5][1]_i_3_n_0 ),
        .I2(channel_nr),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(\channel_status[5][1]_i_2_n_0 ),
        .I5(\channel_status_reg[5] [0]),
        .O(\channel_status[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    \channel_status[5][1]_i_1 
       (.I0(\interrupt[2]_i_1_n_0 ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(channel_nr),
        .I4(\channel_status[5][1]_i_2_n_0 ),
        .I5(\channel_status_reg[5] [1]),
        .O(\channel_status[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \channel_status[5][1]_i_2 
       (.I0(\channel_status[5][1]_i_3_n_0 ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\interrupt_reg_fifo_reg_n_0_[5] ),
        .I3(\interrupt_reg_reg_n_0_[5] ),
        .I4(old_toggle_bit),
        .I5(\channel_nr_reg[3]_0 ),
        .O(\channel_status[5][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \channel_status[5][1]_i_3 
       (.I0(\mem_address_reg_n_0_[4] ),
        .I1(channel_nr),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(\mem_address_reg_n_0_[2] ),
        .O(\channel_status[5][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \channel_status[6][0]_i_1 
       (.I0(\channel_status[0][0]_i_2_n_0 ),
        .I1(channel_nr),
        .I2(\mem_address_reg_n_0_[4] ),
        .I3(\recv_counter[6][0]_i_3_n_0 ),
        .I4(\channel_status[6][1]_i_2_n_0 ),
        .I5(\channel_status_reg[6] [0]),
        .O(\channel_status[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200FFFF02000000)) 
    \channel_status[6][1]_i_1 
       (.I0(\mem_address_reg_n_0_[4] ),
        .I1(channel_nr),
        .I2(\recv_counter[6][0]_i_3_n_0 ),
        .I3(interrupt_request_i_1_n_0),
        .I4(\channel_status[6][1]_i_2_n_0 ),
        .I5(\channel_status_reg[6] [1]),
        .O(\channel_status[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \channel_status[6][1]_i_2 
       (.I0(\channel_status[6][1]_i_3_n_0 ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\interrupt_reg_fifo_reg_n_0_[6] ),
        .I3(\interrupt_reg_reg_n_0_[6] ),
        .I4(old_toggle_bit),
        .I5(\channel_nr_reg[3]_0 ),
        .O(\channel_status[6][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \channel_status[6][1]_i_3 
       (.I0(\mem_address_reg_n_0_[3] ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[4] ),
        .I3(channel_nr),
        .O(\channel_status[6][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \channel_status[7][0]_i_1 
       (.I0(\recv_state_reg_n_0_[0] ),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(\channel_status[7][0]_i_2_n_0 ),
        .I3(\channel_status[7][1]_i_3_n_0 ),
        .I4(\channel_status_reg[7] [0]),
        .O(\channel_status[7][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \channel_status[7][0]_i_2 
       (.I0(\mem_address_reg_n_0_[3] ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\mem_address_reg_n_0_[4] ),
        .I3(channel_nr),
        .O(\channel_status[7][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    \channel_status[7][1]_i_1 
       (.I0(interrupt_request_i_1_n_0),
        .I1(\channel_status[7][1]_i_2_n_0 ),
        .I2(\mem_address_reg_n_0_[2] ),
        .I3(\mem_address_reg_n_0_[3] ),
        .I4(\channel_status[7][1]_i_3_n_0 ),
        .I5(\channel_status_reg[7] [1]),
        .O(\channel_status[7][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \channel_status[7][1]_i_2 
       (.I0(channel_nr),
        .I1(\mem_address_reg_n_0_[4] ),
        .O(\channel_status[7][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h11F111F1FFFF11F1)) 
    \channel_status[7][1]_i_3 
       (.I0(\channel_status[7][0]_i_2_n_0 ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\interrupt_reg_fifo_reg_n_0_[7] ),
        .I3(\interrupt_reg_reg_n_0_[7] ),
        .I4(old_toggle_bit),
        .I5(\channel_nr_reg[3]_0 ),
        .O(\channel_status[7][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \channel_status[8][0]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[4][1]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[8] [0]),
        .O(\channel_status[8][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFF00100000)) 
    \channel_status[8][1]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[4][1]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[8] [1]),
        .O(\channel_status[8][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE55)) 
    \channel_status[8][1]_i_2 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\mem_address_reg_n_0_[1] ),
        .I2(\mem_address_reg_n_0_[0] ),
        .I3(\recv_state_reg_n_0_[0] ),
        .O(\channel_status[8][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \channel_status[9][0]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[5][1]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[9] [0]),
        .O(\channel_status[9][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFF00100000)) 
    \channel_status[9][1]_i_1 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\channel_status[8][1]_i_2_n_0 ),
        .I2(\recv_counter[5][1]_i_3_n_0 ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(channel_nr),
        .I5(\channel_status_reg[9] [1]),
        .O(\channel_status[9][1]_i_1_n_0 ));
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
  FDCE \channel_status_reg[10][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[10][0]_i_1_n_0 ),
        .Q(\channel_status_reg[10] [0]));
  FDCE \channel_status_reg[10][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[10][1]_i_1_n_0 ),
        .Q(\channel_status_reg[10] [1]));
  FDCE \channel_status_reg[11][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[11][0]_i_1_n_0 ),
        .Q(\channel_status_reg[11] [0]));
  FDCE \channel_status_reg[11][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[11][1]_i_1_n_0 ),
        .Q(\channel_status_reg[11] [1]));
  FDCE \channel_status_reg[12][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[12][0]_i_1_n_0 ),
        .Q(\channel_status_reg[12] [0]));
  FDCE \channel_status_reg[12][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[12][1]_i_1_n_0 ),
        .Q(\channel_status_reg[12] [1]));
  FDCE \channel_status_reg[13][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[13][0]_i_1_n_0 ),
        .Q(\channel_status_reg[13] [0]));
  FDCE \channel_status_reg[13][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[13][1]_i_1_n_0 ),
        .Q(\channel_status_reg[13] [1]));
  FDCE \channel_status_reg[14][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[14][0]_i_1_n_0 ),
        .Q(\channel_status_reg[14] [0]));
  FDCE \channel_status_reg[14][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[14][1]_i_1_n_0 ),
        .Q(\channel_status_reg[14] [1]));
  FDCE \channel_status_reg[15][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[15][0]_i_1_n_0 ),
        .Q(\channel_status_reg[15] [0]));
  FDCE \channel_status_reg[15][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[15][1]_i_1_n_0 ),
        .Q(\channel_status_reg[15] [1]));
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
  FDCE \channel_status_reg[8][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[8][0]_i_1_n_0 ),
        .Q(\channel_status_reg[8] [0]));
  FDCE \channel_status_reg[8][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[8][1]_i_1_n_0 ),
        .Q(\channel_status_reg[8] [1]));
  FDCE \channel_status_reg[9][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[9][0]_i_1_n_0 ),
        .Q(\channel_status_reg[9] [0]));
  FDCE \channel_status_reg[9][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\channel_status[9][1]_i_1_n_0 ),
        .Q(\channel_status_reg[9] [1]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[0]),
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
    \command_reg[13]_i_1 
       (.I0(S_AXI_WDATA[13]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[13]),
        .O(rni_writedata[13]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[14]_i_2 
       (.I0(S_AXI_WDATA[14]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[14]),
        .O(rni_writedata[14]));
  LUT3 #(
    .INIT(8'hFE)) 
    \command_reg[14]_i_3 
       (.I0(\S_AXI_AWADDR[8] ),
        .I1(ADDRARDADDR[1]),
        .I2(ADDRARDADDR[0]),
        .O(\command_reg_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \command_reg[1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(dap_writedata[1]),
        .O(rni_writedata[1]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \command_reg[2]_i_1 
       (.I0(dap_writedata[2]),
        .I1(dap_read),
        .I2(dap_write),
        .I3(S_AXI_WDATA[2]),
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
        .Q(p_2_in[1]));
  FDCE \command_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[11]),
        .Q(p_2_in[2]));
  FDCE \command_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[12]),
        .Q(p_2_in[3]));
  FDCE \command_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[13]),
        .Q(p_1_in[0]));
  FDCE \command_reg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[14]),
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
        .Q(p_0_in[2]));
  FDCE \command_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[5]),
        .Q(CONV_INTEGER[0]));
  FDCE \command_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[6]),
        .Q(CONV_INTEGER[1]));
  FDCE \command_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[7]),
        .Q(CONV_INTEGER[2]));
  FDCE \command_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[8]),
        .Q(CONV_INTEGER[3]));
  FDCE \command_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(AR),
        .D(rni_writedata[9]),
        .Q(p_2_in[0]));
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
  FDCE \d_pid_reg[10][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[10][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[10] [0]));
  FDCE \d_pid_reg[10][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[10][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[10] [1]));
  FDCE \d_pid_reg[10][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[10][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[10] [2]));
  FDCE \d_pid_reg[10][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[10][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[10] [3]));
  FDCE \d_pid_reg[11][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[11]_0 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[11] [0]));
  FDCE \d_pid_reg[11][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[11]_0 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[11] [1]));
  FDCE \d_pid_reg[11][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[11]_0 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[11] [2]));
  FDCE \d_pid_reg[11][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[11]_0 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[11] [3]));
  FDCE \d_pid_reg[12][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[12]_4 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[12] [0]));
  FDCE \d_pid_reg[12][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[12]_4 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[12] [1]));
  FDCE \d_pid_reg[12][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[12]_4 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[12] [2]));
  FDCE \d_pid_reg[12][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[12]_4 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[12] [3]));
  FDCE \d_pid_reg[13][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[13]_5 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[13] [0]));
  FDCE \d_pid_reg[13][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[13]_5 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[13] [1]));
  FDCE \d_pid_reg[13][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[13]_5 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[13] [2]));
  FDCE \d_pid_reg[13][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[13]_5 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[13] [3]));
  FDCE \d_pid_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[1] [0]));
  FDCE \d_pid_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[1] [1]));
  FDCE \d_pid_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[1] [2]));
  FDCE \d_pid_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[1] [3]));
  FDCE \d_pid_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_1 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[2] [0]));
  FDCE \d_pid_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_1 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[2] [1]));
  FDCE \d_pid_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_1 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[2] [2]));
  FDCE \d_pid_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_1 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[2] [3]));
  FDCE \d_pid_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[3][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[3] [0]));
  FDCE \d_pid_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[3][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[3] [1]));
  FDCE \d_pid_reg[3][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[3][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[3] [2]));
  FDCE \d_pid_reg[3][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[3][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[3] [3]));
  FDCE \d_pid_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[4] [0]));
  FDCE \d_pid_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[4] [1]));
  FDCE \d_pid_reg[4][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[4] [2]));
  FDCE \d_pid_reg[4][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4][1]_i_1_n_0 ),
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
  FDCE \d_pid_reg[8][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[8]_3 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[8] [0]));
  FDCE \d_pid_reg[8][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[8]_3 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[8] [1]));
  FDCE \d_pid_reg[8][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[8]_3 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[8] [2]));
  FDCE \d_pid_reg[8][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[8]_3 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[8] [3]));
  FDCE \d_pid_reg[9][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[9]_2 ),
        .CLR(AR),
        .D(FROM_NOC[10]),
        .Q(\d_pid_reg[9] [0]));
  FDCE \d_pid_reg[9][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[9]_2 ),
        .CLR(AR),
        .D(FROM_NOC[11]),
        .Q(\d_pid_reg[9] [1]));
  FDCE \d_pid_reg[9][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[9]_2 ),
        .CLR(AR),
        .D(FROM_NOC[12]),
        .Q(\d_pid_reg[9] [2]));
  FDCE \d_pid_reg[9][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[9]_2 ),
        .CLR(AR),
        .D(FROM_NOC[13]),
        .Q(\d_pid_reg[9] [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[10]_i_1 
       (.I0(FROM_NOC[10]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[11]_i_1 
       (.I0(FROM_NOC[11]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[12]_i_1 
       (.I0(FROM_NOC[12]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[13]_i_1 
       (.I0(FROM_NOC[13]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[14]_i_1 
       (.I0(FROM_NOC[14]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[15]_i_1 
       (.I0(FROM_NOC[15]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[16]_i_1 
       (.I0(FROM_NOC[16]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[19]_i_1 
       (.I0(FROM_NOC[19]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[24]_i_1 
       (.I0(FROM_NOC[24]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[25]_i_1 
       (.I0(FROM_NOC[25]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[26]_i_1 
       (.I0(FROM_NOC[26]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[27]_i_1 
       (.I0(FROM_NOC[27]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[28]_i_1 
       (.I0(FROM_NOC[28]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[29]_i_1 
       (.I0(FROM_NOC[29]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[30]_i_1 
       (.I0(FROM_NOC[30]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[31]_i_1 
       (.I0(FROM_NOC[31]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data_reg[8]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .O(\data_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
  LUT3 #(
    .INIT(8'hBA)) 
    \delay[0]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I1(delay[0]),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .O(delay_1[0]));
  LUT4 #(
    .INIT(16'hEBAA)) 
    \delay[1]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I1(delay[0]),
        .I2(delay[1]),
        .I3(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .O(delay_1[1]));
  LUT4 #(
    .INIT(16'hA802)) 
    \delay[2]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I1(delay[0]),
        .I2(delay[1]),
        .I3(delay[2]),
        .O(delay_1[2]));
  LUT6 #(
    .INIT(64'hEEEEEEEBAAAAAAAA)) 
    \delay[3]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I1(delay[3]),
        .I2(delay[2]),
        .I3(delay[0]),
        .I4(delay[1]),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .O(delay_1[3]));
  LUT6 #(
    .INIT(64'hFC005000F0005000)) 
    \delay[4]_i_1 
       (.I0(\delay[4]_i_3_n_0 ),
        .I1(Sync[0]),
        .I2(xmit_state[2]),
        .I3(S_AXI_ARESETN),
        .I4(xmit_state[0]),
        .I5(xmit_state[1]),
        .O(\delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \delay[4]_i_2 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I1(delay[3]),
        .I2(delay[2]),
        .I3(delay[0]),
        .I4(delay[1]),
        .I5(delay[4]),
        .O(delay_1[4]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \delay[4]_i_3 
       (.I0(delay[4]),
        .I1(delay[1]),
        .I2(delay[0]),
        .I3(delay[2]),
        .I4(delay[3]),
        .O(\delay[4]_i_3_n_0 ));
  FDRE \delay_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\delay[4]_i_1_n_0 ),
        .D(delay_1[0]),
        .Q(delay[0]),
        .R(1'b0));
  FDRE \delay_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\delay[4]_i_1_n_0 ),
        .D(delay_1[1]),
        .Q(delay[1]),
        .R(1'b0));
  FDRE \delay_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\delay[4]_i_1_n_0 ),
        .D(delay_1[2]),
        .Q(delay[2]),
        .R(1'b0));
  FDRE \delay_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\delay[4]_i_1_n_0 ),
        .D(delay_1[3]),
        .Q(delay[3]),
        .R(1'b0));
  FDRE \delay_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\delay[4]_i_1_n_0 ),
        .D(delay_1[4]),
        .Q(delay[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \dest_col[0]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I1(S_AXI_ARESETN),
        .O(dest_col_0));
  FDRE \dest_col_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(\process_map[0][NS]__0 ),
        .Q(dest_col),
        .R(1'b0));
  FDRE \dest_pid_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(CONV_INTEGER[0]),
        .Q(dest_pid[0]),
        .R(1'b0));
  FDRE \dest_pid_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(CONV_INTEGER[1]),
        .Q(dest_pid[1]),
        .R(1'b0));
  FDRE \dest_pid_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(CONV_INTEGER[2]),
        .Q(dest_pid[2]),
        .R(1'b0));
  FDRE \dest_pid_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(CONV_INTEGER[3]),
        .Q(dest_pid[3]),
        .R(1'b0));
  FDRE \dest_row_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(\process_map[0][EW]__0 ),
        .Q(dest_row),
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \interrupt[0]_i_1 
       (.I0(\mem_address_reg_n_0_[2] ),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(\mem_address_reg_n_0_[1] ),
        .I3(\mem_address_reg_n_0_[0] ),
        .I4(\recv_state_reg_n_0_[0] ),
        .O(\interrupt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \interrupt[1]_i_1 
       (.I0(\mem_address_reg_n_0_[3] ),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(\mem_address_reg_n_0_[1] ),
        .I3(\mem_address_reg_n_0_[0] ),
        .I4(\recv_state_reg_n_0_[0] ),
        .O(\interrupt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \interrupt[2]_i_1 
       (.I0(\mem_address_reg_n_0_[4] ),
        .I1(\recv_state_reg_n_0_[0] ),
        .I2(\mem_address_reg_n_0_[0] ),
        .I3(\mem_address_reg_n_0_[1] ),
        .I4(\recv_state_reg_n_0_[1] ),
        .O(\interrupt[2]_i_1_n_0 ));
  FDCE \interrupt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt[0]_i_1_n_0 ),
        .Q(\interrupt_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hFFFEFFFFAAAAAAAA)) 
    \interrupt_reg[0]_i_1 
       (.I0(\interrupt_reg[0]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(\interrupt_reg[3]_i_3_n_0 ),
        .I4(\interrupt_reg[4]_i_3_n_0 ),
        .I5(\interrupt_reg_reg_n_0_[0] ),
        .O(\interrupt_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \interrupt_reg[0]_i_2 
       (.I0(\interrupt_reg_n_0_[1] ),
        .I1(\interrupt_reg_n_0_[0] ),
        .I2(interrupt_request),
        .I3(\interrupt_reg_n_0_[2] ),
        .O(\interrupt_reg[0]_i_2_n_0 ));
  FDCE \interrupt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt[1]_i_1_n_0 ),
        .Q(\interrupt_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hFFFEFFFFAAAAAAAA)) 
    \interrupt_reg[1]_i_1 
       (.I0(\interrupt_reg[1]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(\interrupt_reg[3]_i_3_n_0 ),
        .I4(\interrupt_reg[5]_i_3_n_0 ),
        .I5(\interrupt_reg_reg_n_0_[1] ),
        .O(\interrupt_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \interrupt_reg[1]_i_2 
       (.I0(\interrupt_reg_n_0_[1] ),
        .I1(\interrupt_reg_n_0_[0] ),
        .I2(interrupt_request),
        .I3(\interrupt_reg_n_0_[2] ),
        .O(\interrupt_reg[1]_i_2_n_0 ));
  FDCE \interrupt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt[2]_i_1_n_0 ),
        .Q(\interrupt_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFEFFFFAAAAAAAA)) 
    \interrupt_reg[2]_i_1 
       (.I0(\interrupt_reg[2]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(\interrupt_reg[3]_i_3_n_0 ),
        .I4(\interrupt_reg[6]_i_3_n_0 ),
        .I5(\interrupt_reg_reg_n_0_[2] ),
        .O(\interrupt_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \interrupt_reg[2]_i_2 
       (.I0(\interrupt_reg_n_0_[0] ),
        .I1(\interrupt_reg_n_0_[1] ),
        .I2(interrupt_request),
        .I3(\interrupt_reg_n_0_[2] ),
        .O(\interrupt_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFAAAAAAAA)) 
    \interrupt_reg[3]_i_1 
       (.I0(\interrupt_reg[3]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(\interrupt_reg[3]_i_3_n_0 ),
        .I4(\interrupt_reg[7]_i_4_n_0 ),
        .I5(\interrupt_reg_reg_n_0_[3] ),
        .O(\interrupt_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \interrupt_reg[3]_i_2 
       (.I0(\interrupt_reg_n_0_[1] ),
        .I1(\interrupt_reg_n_0_[0] ),
        .I2(interrupt_request),
        .I3(\interrupt_reg_n_0_[2] ),
        .O(\interrupt_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFFFDFDFDDD)) 
    \interrupt_reg[3]_i_3 
       (.I0(send_buffer_address1[0]),
        .I1(send_buffer_address1[1]),
        .I2(dap_writedata[2]),
        .I3(dap_read),
        .I4(dap_write),
        .I5(S_AXI_WDATA[2]),
        .O(\interrupt_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBAAAAAAAA)) 
    \interrupt_reg[4]_i_1 
       (.I0(\interrupt_reg[4]_i_2_n_0 ),
        .I1(\interrupt_reg[4]_i_3_n_0 ),
        .I2(Bus_RNW_reg_reg),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I4(\interrupt_reg[7]_i_3_n_0 ),
        .I5(\interrupt_reg_reg_n_0_[4] ),
        .O(\interrupt_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \interrupt_reg[4]_i_2 
       (.I0(interrupt_request),
        .I1(\interrupt_reg_n_0_[2] ),
        .I2(\interrupt_reg_n_0_[1] ),
        .I3(\interrupt_reg_n_0_[0] ),
        .O(\interrupt_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0505050005050533)) 
    \interrupt_reg[4]_i_3 
       (.I0(dap_writedata[0]),
        .I1(S_AXI_WDATA[0]),
        .I2(dap_writedata[1]),
        .I3(dap_read),
        .I4(dap_write),
        .I5(S_AXI_WDATA[1]),
        .O(\interrupt_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBAAAAAAAA)) 
    \interrupt_reg[5]_i_1 
       (.I0(\interrupt_reg[5]_i_2_n_0 ),
        .I1(\interrupt_reg[5]_i_3_n_0 ),
        .I2(Bus_RNW_reg_reg),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I4(\interrupt_reg[7]_i_3_n_0 ),
        .I5(\interrupt_reg_reg_n_0_[5] ),
        .O(\interrupt_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \interrupt_reg[5]_i_2 
       (.I0(interrupt_request),
        .I1(\interrupt_reg_n_0_[2] ),
        .I2(\interrupt_reg_n_0_[1] ),
        .I3(\interrupt_reg_n_0_[0] ),
        .O(\interrupt_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A000A0A0ACC)) 
    \interrupt_reg[5]_i_3 
       (.I0(dap_writedata[0]),
        .I1(S_AXI_WDATA[0]),
        .I2(dap_writedata[1]),
        .I3(dap_read),
        .I4(dap_write),
        .I5(S_AXI_WDATA[1]),
        .O(\interrupt_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBAAAAAAAA)) 
    \interrupt_reg[6]_i_1 
       (.I0(\interrupt_reg[6]_i_2_n_0 ),
        .I1(\interrupt_reg[6]_i_3_n_0 ),
        .I2(Bus_RNW_reg_reg),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I4(\interrupt_reg[7]_i_3_n_0 ),
        .I5(\interrupt_reg_reg_n_0_[6] ),
        .O(\interrupt_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \interrupt_reg[6]_i_2 
       (.I0(interrupt_request),
        .I1(\interrupt_reg_n_0_[2] ),
        .I2(\interrupt_reg_n_0_[0] ),
        .I3(\interrupt_reg_n_0_[1] ),
        .O(\interrupt_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A000A0A0ACC)) 
    \interrupt_reg[6]_i_3 
       (.I0(dap_writedata[1]),
        .I1(S_AXI_WDATA[1]),
        .I2(dap_writedata[0]),
        .I3(dap_read),
        .I4(dap_write),
        .I5(S_AXI_WDATA[0]),
        .O(\interrupt_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFAAAAAAAA)) 
    \interrupt_reg[7]_i_1 
       (.I0(\interrupt_reg[7]_i_2_n_0 ),
        .I1(Bus_RNW_reg_reg),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I3(\interrupt_reg[7]_i_3_n_0 ),
        .I4(\interrupt_reg[7]_i_4_n_0 ),
        .I5(\interrupt_reg_reg_n_0_[7] ),
        .O(\interrupt_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \interrupt_reg[7]_i_2 
       (.I0(\interrupt_reg_n_0_[1] ),
        .I1(\interrupt_reg_n_0_[0] ),
        .I2(interrupt_request),
        .I3(\interrupt_reg_n_0_[2] ),
        .O(\interrupt_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5457FFFF)) 
    \interrupt_reg[7]_i_3 
       (.I0(dap_writedata[2]),
        .I1(dap_read),
        .I2(dap_write),
        .I3(S_AXI_WDATA[2]),
        .I4(send_buffer_address1[0]),
        .I5(send_buffer_address1[1]),
        .O(\interrupt_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0CCA0A0A000)) 
    \interrupt_reg[7]_i_4 
       (.I0(dap_writedata[0]),
        .I1(S_AXI_WDATA[0]),
        .I2(dap_writedata[1]),
        .I3(dap_read),
        .I4(dap_write),
        .I5(S_AXI_WDATA[1]),
        .O(\interrupt_reg[7]_i_4_n_0 ));
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
        .Q(\interrupt_reg_fifo_reg_n_0_[1] ));
  FDCE \interrupt_reg_fifo_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg_reg_n_0_[2] ),
        .Q(\interrupt_reg_fifo_reg_n_0_[2] ));
  FDCE \interrupt_reg_fifo_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg_reg_n_0_[3] ),
        .Q(\interrupt_reg_fifo_reg_n_0_[3] ));
  FDCE \interrupt_reg_fifo_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg_reg_n_0_[4] ),
        .Q(\interrupt_reg_fifo_reg_n_0_[4] ));
  FDCE \interrupt_reg_fifo_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg_reg_n_0_[5] ),
        .Q(\interrupt_reg_fifo_reg_n_0_[5] ));
  FDCE \interrupt_reg_fifo_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg_reg_n_0_[6] ),
        .Q(\interrupt_reg_fifo_reg_n_0_[6] ));
  FDCE \interrupt_reg_fifo_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg_reg_n_0_[7] ),
        .Q(\interrupt_reg_fifo_reg_n_0_[7] ));
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
        .Q(\interrupt_reg_reg_n_0_[3] ));
  FDCE \interrupt_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg[4]_i_1_n_0 ),
        .Q(\interrupt_reg_reg_n_0_[4] ));
  FDCE \interrupt_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg[5]_i_1_n_0 ),
        .Q(\interrupt_reg_reg_n_0_[5] ));
  FDCE \interrupt_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg[6]_i_1_n_0 ),
        .Q(\interrupt_reg_reg_n_0_[6] ));
  FDCE \interrupt_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\interrupt_reg[7]_i_1_n_0 ),
        .Q(\interrupt_reg_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    interrupt_request_i_1
       (.I0(\recv_state_reg_n_0_[0] ),
        .I1(\mem_address_reg_n_0_[0] ),
        .I2(\mem_address_reg_n_0_[1] ),
        .I3(\recv_state_reg_n_0_[1] ),
        .O(interrupt_request_i_1_n_0));
  FDCE interrupt_request_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(interrupt_request_i_1_n_0),
        .Q(interrupt_request));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_address[0]_i_2 
       (.I0(\recv_counter_reg[2] [0]),
        .I1(\recv_counter_reg[3] [0]),
        .I2(\recv_channel_map[0][0][0]_6 [1]),
        .I3(\recv_counter_reg[0] [0]),
        .I4(\recv_address[2]_i_2_n_0 ),
        .I5(\recv_counter_reg[1] [0]),
        .O(\mem_address[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_address[0]_i_3 
       (.I0(\recv_counter_reg[6] [0]),
        .I1(\recv_counter_reg[7] [0]),
        .I2(\recv_channel_map[0][0][0]_6 [1]),
        .I3(\recv_counter_reg[4] [0]),
        .I4(\recv_address[2]_i_2_n_0 ),
        .I5(\recv_counter_reg[5] [0]),
        .O(\mem_address[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_address[1]_i_2 
       (.I0(\recv_counter_reg[2] [1]),
        .I1(\recv_counter_reg[3] [1]),
        .I2(\recv_channel_map[0][0][0]_6 [1]),
        .I3(\recv_counter_reg[0] [1]),
        .I4(\recv_address[2]_i_2_n_0 ),
        .I5(\recv_counter_reg[1] [1]),
        .O(\mem_address[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_address[1]_i_3 
       (.I0(\recv_counter_reg[6] [1]),
        .I1(\recv_counter_reg[7] [1]),
        .I2(\recv_channel_map[0][0][0]_6 [1]),
        .I3(\recv_counter_reg[4] [1]),
        .I4(\recv_address[2]_i_2_n_0 ),
        .I5(\recv_counter_reg[5] [1]),
        .O(\mem_address[1]_i_3_n_0 ));
  FDRE \mem_address_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\channel_nr[3]_i_1_n_0 ),
        .D(\mem_address_reg[0]_i_1_n_0 ),
        .Q(\mem_address_reg_n_0_[0] ),
        .R(1'b0));
  MUXF7 \mem_address_reg[0]_i_1 
       (.I0(\mem_address[0]_i_2_n_0 ),
        .I1(\mem_address[0]_i_3_n_0 ),
        .O(\mem_address_reg[0]_i_1_n_0 ),
        .S(\recv_channel_map[0][0][0]_6 [2]));
  FDRE \mem_address_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\channel_nr[3]_i_1_n_0 ),
        .D(\mem_address_reg[1]_i_1_n_0 ),
        .Q(\mem_address_reg_n_0_[1] ),
        .R(1'b0));
  MUXF7 \mem_address_reg[1]_i_1 
       (.I0(\mem_address[1]_i_2_n_0 ),
        .I1(\mem_address[1]_i_3_n_0 ),
        .O(\mem_address_reg[1]_i_1_n_0 ),
        .S(\recv_channel_map[0][0][0]_6 [2]));
  FDRE \mem_address_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\channel_nr[3]_i_1_n_0 ),
        .D(\recv_channel_map[0][0][0]_6 [0]),
        .Q(\mem_address_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mem_address_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\channel_nr[3]_i_1_n_0 ),
        .D(\recv_channel_map[0][0][0]_6 [1]),
        .Q(\mem_address_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mem_address_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\channel_nr[3]_i_1_n_0 ),
        .D(\recv_channel_map[0][0][0]_6 [2]),
        .Q(\mem_address_reg_n_0_[4] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \msg_length_reg[0][1]_i_1 
       (.I0(\channel_nr_reg[3]_0 ),
        .I1(\recv_counter[0][1]_i_3_n_0 ),
        .O(\msg_length_reg[0][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \msg_length_reg[10][1]_i_1 
       (.I0(\msg_length_reg[10][1]_i_2_n_0 ),
        .I1(\channel_nr_reg[3]_0 ),
        .O(\msg_length_reg[10][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \msg_length_reg[10][1]_i_2 
       (.I0(\recv_counter[2][1]_i_3_n_0 ),
        .I1(FROM_NOC[37]),
        .I2(FROM_NOC[38]),
        .I3(FROM_NOC[39]),
        .I4(FROM_NOC[36]),
        .I5(\recv_channel_map[0][0][0]_6 [1]),
        .O(\msg_length_reg[10][1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \msg_length_reg[11][1]_i_1 
       (.I0(\channel_nr_reg[3]_0 ),
        .I1(\msg_length_reg[11][1]_i_2_n_0 ),
        .O(\msg_length_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFFFFFFEFFFFFFFF)) 
    \msg_length_reg[11][1]_i_2 
       (.I0(\recv_address[2]_i_4_n_0 ),
        .I1(FROM_NOC[36]),
        .I2(FROM_NOC[39]),
        .I3(FROM_NOC[38]),
        .I4(FROM_NOC[37]),
        .I5(\recv_counter[2][1]_i_3_n_0 ),
        .O(\msg_length_reg[11][1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \msg_length_reg[12][1]_i_1 
       (.I0(\channel_nr_reg[3]_0 ),
        .I1(\recv_counter[4][1]_i_4_n_0 ),
        .O(\msg_length_reg[12]_4 ));
  LUT2 #(
    .INIT(4'h2)) 
    \msg_length_reg[13][1]_i_1 
       (.I0(\channel_nr_reg[3]_0 ),
        .I1(\recv_counter[5][1]_i_4_n_0 ),
        .O(\msg_length_reg[13]_5 ));
  LUT2 #(
    .INIT(4'h1)) 
    \msg_length_reg[1][1]_i_1 
       (.I0(\channel_nr_reg[3]_0 ),
        .I1(\recv_counter[1][1]_i_4_n_0 ),
        .O(\msg_length_reg[1][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \msg_length_reg[2][1]_i_1 
       (.I0(\msg_length_reg[10][1]_i_2_n_0 ),
        .I1(\channel_nr_reg[3]_0 ),
        .O(\msg_length_reg[2]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \msg_length_reg[3][1]_i_1 
       (.I0(\channel_nr_reg[3]_0 ),
        .I1(\msg_length_reg[11][1]_i_2_n_0 ),
        .O(\msg_length_reg[3][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \msg_length_reg[4][1]_i_1 
       (.I0(\channel_nr_reg[3]_0 ),
        .I1(\recv_counter[4][1]_i_4_n_0 ),
        .O(\msg_length_reg[4][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \msg_length_reg[5][1]_i_1 
       (.I0(\channel_nr_reg[3]_0 ),
        .I1(\recv_counter[5][1]_i_4_n_0 ),
        .O(\msg_length_reg[5][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \msg_length_reg[8][1]_i_1 
       (.I0(\channel_nr_reg[3]_0 ),
        .I1(\recv_counter[0][1]_i_3_n_0 ),
        .O(\msg_length_reg[8]_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \msg_length_reg[9][1]_i_1 
       (.I0(\channel_nr_reg[3]_0 ),
        .I1(\recv_counter[1][1]_i_4_n_0 ),
        .O(\msg_length_reg[9]_2 ));
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
  FDCE \msg_length_reg_reg[10][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[10][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[10] [0]));
  FDCE \msg_length_reg_reg[10][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[10][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[10] [1]));
  FDCE \msg_length_reg_reg[11][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[11]_0 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[11] [0]));
  FDCE \msg_length_reg_reg[11][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[11]_0 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[11] [1]));
  FDCE \msg_length_reg_reg[12][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[12]_4 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[12] [0]));
  FDCE \msg_length_reg_reg[12][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[12]_4 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[12] [1]));
  FDCE \msg_length_reg_reg[13][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[13]_5 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[13] [0]));
  FDCE \msg_length_reg_reg[13][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[13]_5 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[13] [1]));
  FDCE \msg_length_reg_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[1] [0]));
  FDCE \msg_length_reg_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[1] [1]));
  FDCE \msg_length_reg_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_1 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[2] [0]));
  FDCE \msg_length_reg_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_1 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[2] [1]));
  FDCE \msg_length_reg_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[3][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[3] [0]));
  FDCE \msg_length_reg_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[3][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[3] [1]));
  FDCE \msg_length_reg_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[4] [0]));
  FDCE \msg_length_reg_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4][1]_i_1_n_0 ),
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
  FDCE \msg_length_reg_reg[8][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[8]_3 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[8] [0]));
  FDCE \msg_length_reg_reg[8][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[8]_3 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[8] [1]));
  FDCE \msg_length_reg_reg[9][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[9]_2 ),
        .CLR(AR),
        .D(FROM_NOC[8]),
        .Q(\msg_length_reg_reg[9] [0]));
  FDCE \msg_length_reg_reg[9][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[9]_2 ),
        .CLR(AR),
        .D(FROM_NOC[9]),
        .Q(\msg_length_reg_reg[9] [1]));
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
        .D(\channel_nr_reg[3]_0 ),
        .Q(old_toggle_bit));
  LUT3 #(
    .INIT(8'hFE)) 
    \outport[0]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\outport[0]_i_2_n_0 ),
        .O(\outport[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \outport[0]_i_2 
       (.I0(global_clock_reg[32]),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I2(global_clock_reg__0[0]),
        .I3(send_clock_reg_n_0),
        .I4(p_2_out[0]),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .O(\outport[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \outport[10]_i_1 
       (.I0(\outport[53]_i_2_n_0 ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I2(p_2_out[10]),
        .I3(send_clock_reg_n_0),
        .I4(global_clock_reg__0[10]),
        .I5(\outport[10]_i_2_n_0 ),
        .O(\outport[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \outport[10]_i_2 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I1(CONV_INTEGER[0]),
        .O(\outport[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \outport[11]_i_1 
       (.I0(\outport[53]_i_2_n_0 ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I2(p_2_out[11]),
        .I3(send_clock_reg_n_0),
        .I4(global_clock_reg__0[11]),
        .I5(\outport[11]_i_2_n_0 ),
        .O(\outport[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \outport[11]_i_2 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I1(CONV_INTEGER[1]),
        .O(\outport[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \outport[12]_i_1 
       (.I0(\outport[53]_i_2_n_0 ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I2(p_2_out[12]),
        .I3(send_clock_reg_n_0),
        .I4(global_clock_reg__0[12]),
        .I5(\outport[12]_i_2_n_0 ),
        .O(\outport[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \outport[12]_i_2 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I1(CONV_INTEGER[2]),
        .O(\outport[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \outport[13]_i_1 
       (.I0(\outport[53]_i_2_n_0 ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I2(p_2_out[13]),
        .I3(send_clock_reg_n_0),
        .I4(global_clock_reg__0[13]),
        .I5(\outport[13]_i_2_n_0 ),
        .O(\outport[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \outport[13]_i_2 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I1(CONV_INTEGER[3]),
        .O(\outport[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[14]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[14]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[14]),
        .O(\outport[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[15]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[15]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[15]),
        .O(\outport[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[16]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[16]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[16]),
        .O(\outport[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[17]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[17]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[17]),
        .O(\outport[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[18]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[18]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[18]),
        .O(\outport[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[19]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[19]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[19]),
        .O(\outport[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \outport[1]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\outport[1]_i_2_n_0 ),
        .O(\outport[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \outport[1]_i_2 
       (.I0(global_clock_reg[33]),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I2(global_clock_reg__0[1]),
        .I3(send_clock_reg_n_0),
        .I4(p_2_out[1]),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .O(\outport[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[20]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[20]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[20]),
        .O(\outport[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[21]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[21]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[21]),
        .O(\outport[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[22]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[22]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[22]),
        .O(\outport[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[23]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[23]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[23]),
        .O(\outport[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[24]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[24]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[24]),
        .O(\outport[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[25]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[25]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[25]),
        .O(\outport[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[26]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[26]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[26]),
        .O(\outport[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[27]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[27]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[27]),
        .O(\outport[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[28]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[28]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[28]),
        .O(\outport[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[29]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[29]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[29]),
        .O(\outport[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \outport[2]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\outport[2]_i_2_n_0 ),
        .O(\outport[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \outport[2]_i_2 
       (.I0(global_clock_reg[34]),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I2(global_clock_reg__0[2]),
        .I3(send_clock_reg_n_0),
        .I4(p_2_out[2]),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .O(\outport[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[30]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[30]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[30]),
        .O(\outport[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \outport[31]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(p_2_out[31]),
        .I2(send_clock_reg_n_0),
        .I3(global_clock_reg__0[31]),
        .O(\outport[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[34]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(dest_col),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(\process_map[0][NS]__0 ),
        .O(\outport[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[36]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(dest_row),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(\process_map[0][EW]__0 ),
        .O(\outport[36]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \outport[3]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\outport[3]_i_2_n_0 ),
        .O(\outport[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \outport[3]_i_2 
       (.I0(global_clock_reg[35]),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I2(global_clock_reg__0[3]),
        .I3(send_clock_reg_n_0),
        .I4(p_2_out[3]),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .O(\outport[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[42]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(priority[4]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(p_1_in[0]),
        .O(\outport[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[43]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(priority[5]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(p_1_in[1]),
        .O(\outport[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[44]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(dest_pid[0]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(CONV_INTEGER[0]),
        .O(\outport[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[45]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(dest_pid[1]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(CONV_INTEGER[1]),
        .O(\outport[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[46]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(dest_pid[2]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(CONV_INTEGER[2]),
        .O(\outport[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[47]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(dest_pid[3]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(CONV_INTEGER[3]),
        .O(\outport[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[48]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(src_pid[0]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(p_2_in[0]),
        .O(\outport[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[49]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(src_pid[1]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(p_2_in[1]),
        .O(\outport[49]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \outport[4]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\outport[4]_i_2_n_0 ),
        .O(\outport[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \outport[4]_i_2 
       (.I0(global_clock_reg[36]),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I2(global_clock_reg__0[4]),
        .I3(send_clock_reg_n_0),
        .I4(p_2_out[4]),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .O(\outport[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[50]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(src_pid[2]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(p_2_in[2]),
        .O(\outport[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \outport[51]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(src_pid[3]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(p_2_in[3]),
        .O(\outport[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEFFFFFEEE)) 
    \outport[52]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I3(Flit_id[0]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I5(\command_reg_reg_n_0_[0] ),
        .O(\outport[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAFFEAEAEA)) 
    \outport[53]_i_1 
       (.I0(\outport[53]_i_2_n_0 ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I2(Flit_id[1]),
        .I3(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I4(\command_reg_reg_n_0_[1] ),
        .I5(\command_reg_reg_n_0_[0] ),
        .O(\outport[53]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \outport[53]_i_2 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .O(\outport[53]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outport[55]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(AR));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \outport[55]_i_2 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I2(Sync[0]),
        .I3(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .O(\outport[55]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \outport[55]_i_3 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .O(\outport[55]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \outport[5]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\outport[5]_i_2_n_0 ),
        .O(\outport[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \outport[5]_i_2 
       (.I0(global_clock_reg[37]),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I2(global_clock_reg__0[5]),
        .I3(send_clock_reg_n_0),
        .I4(p_2_out[5]),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .O(\outport[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \outport[6]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\outport[6]_i_2_n_0 ),
        .O(\outport[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \outport[6]_i_2 
       (.I0(global_clock_reg[38]),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I2(global_clock_reg__0[6]),
        .I3(send_clock_reg_n_0),
        .I4(p_2_out[6]),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .O(\outport[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \outport[7]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .I2(\outport[7]_i_2_n_0 ),
        .O(\outport[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \outport[7]_i_2 
       (.I0(global_clock_reg[39]),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I2(global_clock_reg__0[7]),
        .I3(send_clock_reg_n_0),
        .I4(p_2_out[7]),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .O(\outport[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \outport[8]_i_1 
       (.I0(\outport[53]_i_2_n_0 ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I2(p_2_out[8]),
        .I3(send_clock_reg_n_0),
        .I4(global_clock_reg__0[8]),
        .I5(\outport[8]_i_2_n_0 ),
        .O(\outport[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \outport[8]_i_2 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I1(\command_reg_reg_n_0_[0] ),
        .O(\outport[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEAAAEA)) 
    \outport[9]_i_1 
       (.I0(\outport[53]_i_2_n_0 ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I2(p_2_out[9]),
        .I3(send_clock_reg_n_0),
        .I4(global_clock_reg__0[9]),
        .I5(\outport[9]_i_2_n_0 ),
        .O(\outport[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \outport[9]_i_2 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[1] ),
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
        .D(\FSM_onehot_xmit_state_reg_n_0_[1] ),
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
  FDRE \priority_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(p_1_in[0]),
        .Q(priority[4]),
        .R(1'b0));
  FDRE \priority_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(p_1_in[1]),
        .Q(priority[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \process_map[0][EW] 
       (.I0(CONV_INTEGER[2]),
        .I1(CONV_INTEGER[1]),
        .I2(CONV_INTEGER[3]),
        .O(\process_map[0][EW]__0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7762)) 
    \process_map[0][NS] 
       (.I0(CONV_INTEGER[2]),
        .I1(CONV_INTEGER[3]),
        .I2(CONV_INTEGER[1]),
        .I3(CONV_INTEGER[0]),
        .O(\process_map[0][NS]__0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \recv_address[0]_i_1 
       (.I0(FROM_NOC[40]),
        .I1(FROM_NOC[43]),
        .I2(FROM_NOC[42]),
        .I3(\mem_address[0]_i_3_n_0 ),
        .I4(\recv_channel_map[0][0][0]_6 [2]),
        .I5(\mem_address[0]_i_2_n_0 ),
        .O(\recv_address[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \recv_address[1]_i_1 
       (.I0(FROM_NOC[41]),
        .I1(FROM_NOC[43]),
        .I2(FROM_NOC[42]),
        .I3(\mem_address[1]_i_3_n_0 ),
        .I4(\recv_channel_map[0][0][0]_6 [2]),
        .I5(\mem_address[1]_i_2_n_0 ),
        .O(\recv_address[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \recv_address[2]_i_1 
       (.I0(\recv_address[2]_i_2_n_0 ),
        .O(\recv_channel_map[0][0][0]_6 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFB0CFFFFF8)) 
    \recv_address[2]_i_2 
       (.I0(\recv_address[2]_i_3_n_0 ),
        .I1(FROM_NOC[36]),
        .I2(FROM_NOC[39]),
        .I3(FROM_NOC[37]),
        .I4(FROM_NOC[38]),
        .I5(\recv_address[2]_i_4_n_0 ),
        .O(\recv_address[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \recv_address[2]_i_3 
       (.I0(FROM_NOC[34]),
        .I1(FROM_NOC[35]),
        .I2(FROM_NOC[33]),
        .I3(FROM_NOC[32]),
        .O(\recv_address[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \recv_address[2]_i_4 
       (.I0(FROM_NOC[32]),
        .I1(FROM_NOC[33]),
        .I2(FROM_NOC[34]),
        .I3(FROM_NOC[35]),
        .O(\recv_address[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \recv_address[3]_i_1 
       (.I0(\recv_address[3]_i_2_n_0 ),
        .I1(FROM_NOC[35]),
        .I2(FROM_NOC[34]),
        .I3(FROM_NOC[33]),
        .I4(FROM_NOC[32]),
        .O(\recv_channel_map[0][0][0]_6 [1]));
  LUT4 #(
    .INIT(16'h7F6E)) 
    \recv_address[3]_i_2 
       (.I0(FROM_NOC[37]),
        .I1(FROM_NOC[39]),
        .I2(FROM_NOC[38]),
        .I3(FROM_NOC[36]),
        .O(\recv_address[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \recv_address[4]_i_1 
       (.I0(Sync[1]),
        .I1(\recv_state_reg_n_0_[0] ),
        .I2(\recv_state_reg_n_0_[1] ),
        .O(data_reg));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \recv_address[4]_i_2 
       (.I0(\recv_address[4]_i_3_n_0 ),
        .I1(FROM_NOC[32]),
        .I2(FROM_NOC[39]),
        .I3(FROM_NOC[38]),
        .I4(FROM_NOC[36]),
        .I5(FROM_NOC[37]),
        .O(\recv_channel_map[0][0][0]_6 [2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \recv_address[4]_i_3 
       (.I0(FROM_NOC[35]),
        .I1(FROM_NOC[34]),
        .O(\recv_address[4]_i_3_n_0 ));
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
        .D(\recv_channel_map[0][0][0]_6 [0]),
        .Q(Q[2]));
  FDCE \recv_address_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\recv_channel_map[0][0][0]_6 [1]),
        .Q(Q[3]));
  FDCE \recv_address_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(data_reg),
        .CLR(AR),
        .D(\recv_channel_map[0][0][0]_6 [2]),
        .Q(Q[4]));
  LUT4 #(
    .INIT(16'h6F60)) 
    recv_buffer_write_i_1
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\recv_state_reg_n_0_[0] ),
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
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(S_AXI_ARESETN),
        .I3(\recv_counter[0][0]_i_2_n_0 ),
        .I4(\recv_counter[0][1]_i_3_n_0 ),
        .I5(\recv_counter_reg[0] [0]),
        .O(\recv_counter[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \recv_counter[0][0]_i_2 
       (.I0(\mem_address_reg_n_0_[3] ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\recv_state_reg_n_0_[1] ),
        .I3(Sync[1]),
        .I4(\mem_address_reg_n_0_[4] ),
        .I5(\recv_state_reg_n_0_[0] ),
        .O(\recv_counter[0][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \recv_counter[0][1]_i_1 
       (.I0(\recv_counter[0][1]_i_2_n_0 ),
        .I1(S_AXI_ARESETN),
        .I2(\recv_counter[4][1]_i_3_n_0 ),
        .I3(\recv_counter[1][1]_i_3_n_0 ),
        .I4(\recv_counter[0][1]_i_3_n_0 ),
        .I5(\recv_counter_reg[0] [1]),
        .O(\recv_counter[0][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \recv_counter[0][1]_i_2 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[0] [0]),
        .I2(\recv_counter_reg[0] [1]),
        .I3(\recv_state_reg_n_0_[1] ),
        .O(\recv_counter[0][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \recv_counter[0][1]_i_3 
       (.I0(\recv_counter[1][1]_i_5_n_0 ),
        .I1(\recv_channel_map[0][0][0]_6 [2]),
        .I2(\recv_channel_map[0][0][0]_6 [1]),
        .I3(FROM_NOC[43]),
        .I4(FROM_NOC[42]),
        .I5(data_reg),
        .O(\recv_counter[0][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2FFF2F2FE000E0E0)) 
    \recv_counter[1][0]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(S_AXI_ARESETN),
        .I3(\recv_counter[1][0]_i_2_n_0 ),
        .I4(\recv_counter[1][1]_i_4_n_0 ),
        .I5(\recv_counter_reg[1] [0]),
        .O(\recv_counter[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \recv_counter[1][0]_i_2 
       (.I0(\mem_address_reg_n_0_[3] ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\recv_state_reg_n_0_[1] ),
        .I3(Sync[1]),
        .I4(\mem_address_reg_n_0_[4] ),
        .I5(\recv_state_reg_n_0_[0] ),
        .O(\recv_counter[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \recv_counter[1][1]_i_1 
       (.I0(\recv_counter[1][1]_i_2_n_0 ),
        .I1(S_AXI_ARESETN),
        .I2(\recv_counter[5][1]_i_3_n_0 ),
        .I3(\recv_counter[1][1]_i_3_n_0 ),
        .I4(\recv_counter[1][1]_i_4_n_0 ),
        .I5(\recv_counter_reg[1] [1]),
        .O(\recv_counter[1][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \recv_counter[1][1]_i_2 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[1] [0]),
        .I2(\recv_counter_reg[1] [1]),
        .I3(\recv_state_reg_n_0_[1] ),
        .O(\recv_counter[1][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \recv_counter[1][1]_i_3 
       (.I0(\recv_state_reg_n_0_[0] ),
        .I1(\mem_address_reg_n_0_[4] ),
        .I2(Sync[1]),
        .I3(\recv_state_reg_n_0_[1] ),
        .O(\recv_counter[1][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \recv_counter[1][1]_i_4 
       (.I0(\recv_channel_map[0][0][0]_6 [2]),
        .I1(\recv_channel_map[0][0][0]_6 [1]),
        .I2(\recv_counter[1][1]_i_5_n_0 ),
        .I3(FROM_NOC[43]),
        .I4(FROM_NOC[42]),
        .I5(data_reg),
        .O(\recv_counter[1][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hBFFFBFBE)) 
    \recv_counter[1][1]_i_5 
       (.I0(\recv_address[2]_i_4_n_0 ),
        .I1(FROM_NOC[38]),
        .I2(FROM_NOC[37]),
        .I3(FROM_NOC[39]),
        .I4(FROM_NOC[36]),
        .O(\recv_counter[1][1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2FE0)) 
    \recv_counter[2][0]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(\recv_counter_reg[2]0 ),
        .I3(\recv_counter_reg[2] [0]),
        .O(\recv_counter[2][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCAFF3A00)) 
    \recv_counter[2][1]_i_1 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[2] [0]),
        .I2(\recv_state_reg_n_0_[1] ),
        .I3(\recv_counter_reg[2]0 ),
        .I4(\recv_counter_reg[2] [1]),
        .O(\recv_counter[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h800080008000AAAA)) 
    \recv_counter[2][1]_i_2 
       (.I0(S_AXI_ARESETN),
        .I1(\recv_counter[2][1]_i_3_n_0 ),
        .I2(\recv_counter[2][1]_i_4_n_0 ),
        .I3(\recv_channel_map[0][0][0]_6 [1]),
        .I4(\recv_counter[6][0]_i_3_n_0 ),
        .I5(\recv_counter[1][1]_i_3_n_0 ),
        .O(\recv_counter_reg[2]0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \recv_counter[2][1]_i_3 
       (.I0(\recv_state_reg_n_0_[1] ),
        .I1(\recv_state_reg_n_0_[0] ),
        .I2(Sync[1]),
        .I3(FROM_NOC[42]),
        .I4(FROM_NOC[43]),
        .O(\recv_counter[2][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \recv_counter[2][1]_i_4 
       (.I0(FROM_NOC[37]),
        .I1(FROM_NOC[38]),
        .I2(FROM_NOC[39]),
        .I3(FROM_NOC[36]),
        .O(\recv_counter[2][1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2FE0)) 
    \recv_counter[3][0]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(\recv_counter_reg[3]0 ),
        .I3(\recv_counter_reg[3] [0]),
        .O(\recv_counter[3][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCAFF3A00)) 
    \recv_counter[3][1]_i_1 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[3] [0]),
        .I2(\recv_state_reg_n_0_[1] ),
        .I3(\recv_counter_reg[3]0 ),
        .I4(\recv_counter_reg[3] [1]),
        .O(\recv_counter[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0080AAAA)) 
    \recv_counter[3][1]_i_2 
       (.I0(S_AXI_ARESETN),
        .I1(\recv_counter[3][1]_i_3_n_0 ),
        .I2(\recv_state_reg_n_0_[0] ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(\msg_length_reg[11][1]_i_2_n_0 ),
        .O(\recv_counter_reg[3]0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \recv_counter[3][1]_i_3 
       (.I0(Sync[1]),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(\mem_address_reg_n_0_[3] ),
        .I3(\mem_address_reg_n_0_[2] ),
        .O(\recv_counter[3][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2FFF2F2FE000E0E0)) 
    \recv_counter[4][0]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(S_AXI_ARESETN),
        .I3(\recv_counter[4][0]_i_2_n_0 ),
        .I4(\recv_counter[4][1]_i_4_n_0 ),
        .I5(\recv_counter_reg[4] [0]),
        .O(\recv_counter[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \recv_counter[4][0]_i_2 
       (.I0(\mem_address_reg_n_0_[3] ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\recv_state_reg_n_0_[0] ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(\recv_state_reg_n_0_[1] ),
        .I5(Sync[1]),
        .O(\recv_counter[4][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \recv_counter[4][1]_i_1 
       (.I0(\recv_counter[4][1]_i_2_n_0 ),
        .I1(S_AXI_ARESETN),
        .I2(\recv_counter[4][1]_i_3_n_0 ),
        .I3(\recv_counter[6][0]_i_2_n_0 ),
        .I4(\recv_counter[4][1]_i_4_n_0 ),
        .I5(\recv_counter_reg[4] [1]),
        .O(\recv_counter[4][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \recv_counter[4][1]_i_2 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[4] [0]),
        .I2(\recv_counter_reg[4] [1]),
        .I3(\recv_state_reg_n_0_[1] ),
        .O(\recv_counter[4][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \recv_counter[4][1]_i_3 
       (.I0(\mem_address_reg_n_0_[2] ),
        .I1(\mem_address_reg_n_0_[3] ),
        .O(\recv_counter[4][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \recv_counter[4][1]_i_4 
       (.I0(data_reg),
        .I1(FROM_NOC[42]),
        .I2(FROM_NOC[43]),
        .I3(\recv_channel_map[0][0][0]_6 [2]),
        .I4(\recv_address[2]_i_2_n_0 ),
        .O(\recv_counter[4][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2FFF2F2FE000E0E0)) 
    \recv_counter[5][0]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(S_AXI_ARESETN),
        .I3(\recv_counter[5][0]_i_2_n_0 ),
        .I4(\recv_counter[5][1]_i_4_n_0 ),
        .I5(\recv_counter_reg[5] [0]),
        .O(\recv_counter[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \recv_counter[5][0]_i_2 
       (.I0(\mem_address_reg_n_0_[3] ),
        .I1(\mem_address_reg_n_0_[2] ),
        .I2(\recv_state_reg_n_0_[0] ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(\recv_state_reg_n_0_[1] ),
        .I5(Sync[1]),
        .O(\recv_counter[5][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \recv_counter[5][1]_i_1 
       (.I0(\recv_counter[5][1]_i_2_n_0 ),
        .I1(S_AXI_ARESETN),
        .I2(\recv_counter[5][1]_i_3_n_0 ),
        .I3(\recv_counter[6][0]_i_2_n_0 ),
        .I4(\recv_counter[5][1]_i_4_n_0 ),
        .I5(\recv_counter_reg[5] [1]),
        .O(\recv_counter[5][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \recv_counter[5][1]_i_2 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[5] [0]),
        .I2(\recv_counter_reg[5] [1]),
        .I3(\recv_state_reg_n_0_[1] ),
        .O(\recv_counter[5][1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \recv_counter[5][1]_i_3 
       (.I0(\mem_address_reg_n_0_[2] ),
        .I1(\mem_address_reg_n_0_[3] ),
        .O(\recv_counter[5][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \recv_counter[5][1]_i_4 
       (.I0(\recv_address[2]_i_2_n_0 ),
        .I1(data_reg),
        .I2(FROM_NOC[42]),
        .I3(FROM_NOC[43]),
        .I4(\recv_channel_map[0][0][0]_6 [2]),
        .O(\recv_counter[5][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF2F000000E0)) 
    \recv_counter[6][0]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(S_AXI_ARESETN),
        .I3(\recv_counter[6][0]_i_2_n_0 ),
        .I4(\recv_counter[6][0]_i_3_n_0 ),
        .I5(\recv_counter_reg[6] [0]),
        .O(\recv_counter[6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \recv_counter[6][0]_i_2 
       (.I0(Sync[1]),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(\mem_address_reg_n_0_[4] ),
        .I3(\recv_state_reg_n_0_[0] ),
        .O(\recv_counter[6][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \recv_counter[6][0]_i_3 
       (.I0(\mem_address_reg_n_0_[2] ),
        .I1(\mem_address_reg_n_0_[3] ),
        .O(\recv_counter[6][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCAFF3A00)) 
    \recv_counter[6][1]_i_1 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[6] [0]),
        .I2(\recv_state_reg_n_0_[1] ),
        .I3(\recv_counter_reg[6]0 ),
        .I4(\recv_counter_reg[6] [1]),
        .O(\recv_counter[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \recv_counter[6][1]_i_2 
       (.I0(S_AXI_ARESETN),
        .I1(Sync[1]),
        .I2(\recv_state_reg_n_0_[1] ),
        .I3(\mem_address_reg_n_0_[4] ),
        .I4(\recv_state_reg_n_0_[0] ),
        .I5(\recv_counter[6][0]_i_3_n_0 ),
        .O(\recv_counter_reg[6]0 ));
  LUT4 #(
    .INIT(16'h2FE0)) 
    \recv_counter[7][0]_i_1 
       (.I0(FROM_NOC[8]),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(\recv_counter_reg[7]0 ),
        .I3(\recv_counter_reg[7] [0]),
        .O(\recv_counter[7][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCAFF3A00)) 
    \recv_counter[7][1]_i_1 
       (.I0(FROM_NOC[9]),
        .I1(\recv_counter_reg[7] [0]),
        .I2(\recv_state_reg_n_0_[1] ),
        .I3(\recv_counter_reg[7]0 ),
        .I4(\recv_counter_reg[7] [1]),
        .O(\recv_counter[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \recv_counter[7][1]_i_2 
       (.I0(\recv_counter[7][1]_i_3_n_0 ),
        .I1(\recv_state_reg_n_0_[1] ),
        .I2(Sync[1]),
        .I3(\recv_state_reg_n_0_[0] ),
        .I4(\mem_address_reg_n_0_[4] ),
        .I5(S_AXI_ARESETN),
        .O(\recv_counter_reg[7]0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \recv_counter[7][1]_i_3 
       (.I0(\mem_address_reg_n_0_[2] ),
        .I1(\mem_address_reg_n_0_[3] ),
        .O(\recv_counter[7][1]_i_3_n_0 ));
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
  FDRE \recv_counter_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[4][0]_i_1_n_0 ),
        .Q(\recv_counter_reg[4] [0]),
        .R(1'b0));
  FDRE \recv_counter_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[4][1]_i_1_n_0 ),
        .Q(\recv_counter_reg[4] [1]),
        .R(1'b0));
  FDRE \recv_counter_reg[5][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[5][0]_i_1_n_0 ),
        .Q(\recv_counter_reg[5] [0]),
        .R(1'b0));
  FDRE \recv_counter_reg[5][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[5][1]_i_1_n_0 ),
        .Q(\recv_counter_reg[5] [1]),
        .R(1'b0));
  FDRE \recv_counter_reg[6][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[6][0]_i_1_n_0 ),
        .Q(\recv_counter_reg[6] [0]),
        .R(1'b0));
  FDRE \recv_counter_reg[6][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[6][1]_i_1_n_0 ),
        .Q(\recv_counter_reg[6] [1]),
        .R(1'b0));
  FDRE \recv_counter_reg[7][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[7][0]_i_1_n_0 ),
        .Q(\recv_counter_reg[7] [0]),
        .R(1'b0));
  FDRE \recv_counter_reg[7][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\recv_counter[7][1]_i_1_n_0 ),
        .Q(\recv_counter_reg[7] [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF0FF7F0)) 
    \recv_state[0]_i_1 
       (.I0(FROM_NOC[43]),
        .I1(FROM_NOC[42]),
        .I2(\recv_state_reg_n_0_[0] ),
        .I3(Sync[1]),
        .I4(\recv_state_reg_n_0_[1] ),
        .O(\recv_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF0FF8F0)) 
    \recv_state[1]_i_1 
       (.I0(FROM_NOC[43]),
        .I1(FROM_NOC[42]),
        .I2(\recv_state_reg_n_0_[0] ),
        .I3(Sync[1]),
        .I4(\recv_state_reg_n_0_[1] ),
        .O(\recv_state[1]_i_1_n_0 ));
  FDCE \recv_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\recv_state[0]_i_1_n_0 ),
        .Q(\recv_state_reg_n_0_[0] ));
  FDCE \recv_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\recv_state[1]_i_1_n_0 ),
        .Q(\recv_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[0]_i_1 
       (.I0(\rni_readdata_delayed_reg[0]_i_2_n_0 ),
        .I1(out0),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[0]_i_10 
       (.I0(\rni_readdata_delayed[0]_i_21_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_22_n_0 ),
        .I2(send_buffer_address1[1]),
        .I3(\rni_readdata_delayed[0]_i_23_n_0 ),
        .I4(send_buffer_address1[0]),
        .I5(\rni_readdata_delayed[0]_i_24_n_0 ),
        .O(\rni_readdata_delayed[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[0]_i_11 
       (.I0(\rni_readdata_delayed[0]_i_25_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_26_n_0 ),
        .I2(send_buffer_address1[1]),
        .I3(\rni_readdata_delayed[0]_i_27_n_0 ),
        .I4(send_buffer_address1[0]),
        .I5(\rni_readdata_delayed[0]_i_28_n_0 ),
        .O(\rni_readdata_delayed[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[0]_i_12 
       (.I0(\rni_readdata_delayed[0]_i_29_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_30_n_0 ),
        .I2(send_buffer_address1[1]),
        .I3(\rni_readdata_delayed[0]_i_31_n_0 ),
        .I4(send_buffer_address1[0]),
        .I5(\rni_readdata_delayed[0]_i_32_n_0 ),
        .O(\rni_readdata_delayed[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[0]_i_13 
       (.I0(\msg_length_reg_reg[3] [0]),
        .I1(\msg_length_reg_reg[2] [0]),
        .I2(send_buffer_address1[1]),
        .I3(\msg_length_reg_reg[1] [0]),
        .I4(send_buffer_address1[0]),
        .I5(\msg_length_reg_reg[0] [0]),
        .O(\rni_readdata_delayed[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rni_readdata_delayed[0]_i_14 
       (.I0(\msg_length_reg_reg[4] [0]),
        .I1(send_buffer_address1[0]),
        .I2(\msg_length_reg_reg[5] [0]),
        .I3(send_buffer_address1[1]),
        .O(\rni_readdata_delayed[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[0]_i_15 
       (.I0(\msg_length_reg_reg[11] [0]),
        .I1(\msg_length_reg_reg[10] [0]),
        .I2(send_buffer_address1[1]),
        .I3(\msg_length_reg_reg[9] [0]),
        .I4(send_buffer_address1[0]),
        .I5(\msg_length_reg_reg[8] [0]),
        .O(\rni_readdata_delayed[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rni_readdata_delayed[0]_i_16 
       (.I0(\msg_length_reg_reg[12] [0]),
        .I1(send_buffer_address1[0]),
        .I2(\msg_length_reg_reg[13] [0]),
        .I3(send_buffer_address1[1]),
        .O(\rni_readdata_delayed[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_17 
       (.I0(\channel_status_reg[3] [1]),
        .I1(\channel_status_reg[3] [0]),
        .O(\rni_readdata_delayed[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_18 
       (.I0(\channel_status_reg[2] [1]),
        .I1(\channel_status_reg[2] [0]),
        .O(\rni_readdata_delayed[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_19 
       (.I0(\channel_status_reg[1] [1]),
        .I1(\channel_status_reg[1] [0]),
        .O(\rni_readdata_delayed[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_20 
       (.I0(\channel_status_reg[0] [1]),
        .I1(\channel_status_reg[0] [0]),
        .O(\rni_readdata_delayed[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_21 
       (.I0(\channel_status_reg[7] [1]),
        .I1(\channel_status_reg[7] [0]),
        .O(\rni_readdata_delayed[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_22 
       (.I0(\channel_status_reg[6] [1]),
        .I1(\channel_status_reg[6] [0]),
        .O(\rni_readdata_delayed[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_23 
       (.I0(\channel_status_reg[5] [1]),
        .I1(\channel_status_reg[5] [0]),
        .O(\rni_readdata_delayed[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_24 
       (.I0(\channel_status_reg[4] [1]),
        .I1(\channel_status_reg[4] [0]),
        .O(\rni_readdata_delayed[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_25 
       (.I0(\channel_status_reg[11] [1]),
        .I1(\channel_status_reg[11] [0]),
        .O(\rni_readdata_delayed[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_26 
       (.I0(\channel_status_reg[10] [1]),
        .I1(\channel_status_reg[10] [0]),
        .O(\rni_readdata_delayed[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_27 
       (.I0(\channel_status_reg[9] [1]),
        .I1(\channel_status_reg[9] [0]),
        .O(\rni_readdata_delayed[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_28 
       (.I0(\channel_status_reg[8] [1]),
        .I1(\channel_status_reg[8] [0]),
        .O(\rni_readdata_delayed[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_29 
       (.I0(\channel_status_reg[15] [1]),
        .I1(\channel_status_reg[15] [0]),
        .O(\rni_readdata_delayed[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE200FFFFE2FF)) 
    \rni_readdata_delayed[0]_i_3 
       (.I0(\interrupt_reg_reg_n_0_[0] ),
        .I1(send_buffer_address1[0]),
        .I2(synchronize_flag),
        .I3(send_buffer_address1[1]),
        .I4(send_buffer_address1[2]),
        .I5(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .O(\rni_readdata_delayed[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_30 
       (.I0(\channel_status_reg[14] [1]),
        .I1(\channel_status_reg[14] [0]),
        .O(\rni_readdata_delayed[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_31 
       (.I0(\channel_status_reg[13] [1]),
        .I1(\channel_status_reg[13] [0]),
        .O(\rni_readdata_delayed[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rni_readdata_delayed[0]_i_32 
       (.I0(\channel_status_reg[12] [1]),
        .I1(\channel_status_reg[12] [0]),
        .O(\rni_readdata_delayed[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[0]_i_4 
       (.I0(\rni_readdata_delayed_reg[0]_i_5_n_0 ),
        .I1(\rni_readdata_delayed_reg[0]_i_6_n_0 ),
        .I2(\S_AXI_AWADDR[8]_0 ),
        .I3(\rni_readdata_delayed_reg[0]_i_7_n_0 ),
        .I4(\rni_readdata_delayed[9]_i_4_n_0 ),
        .I5(\rni_readdata_delayed_reg[0]_i_8_n_0 ),
        .O(\rni_readdata_delayed[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[0]_i_9 
       (.I0(\rni_readdata_delayed[0]_i_17_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_18_n_0 ),
        .I2(send_buffer_address1[1]),
        .I3(\rni_readdata_delayed[0]_i_19_n_0 ),
        .I4(send_buffer_address1[0]),
        .I5(\rni_readdata_delayed[0]_i_20_n_0 ),
        .O(\rni_readdata_delayed[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[1]_i_1 
       (.I0(\rni_readdata_delayed[1]_i_2_n_0 ),
        .I1(out0),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h4F4F4F44)) 
    \rni_readdata_delayed[1]_i_2 
       (.I0(\S_AXI_AWADDR[8]_1 ),
        .I1(\interrupt_reg_reg_n_0_[1] ),
        .I2(\rni_readdata_delayed[1]_i_3_n_0 ),
        .I3(\rni_readdata_delayed[1]_i_4_n_0 ),
        .I4(\rni_readdata_delayed[1]_i_5_n_0 ),
        .O(\rni_readdata_delayed[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \rni_readdata_delayed[1]_i_3 
       (.I0(dap_read_1),
        .I1(\rni_readdata_delayed[1]_i_6_n_0 ),
        .I2(send_buffer_address1[2]),
        .I3(\rni_readdata_delayed[1]_i_7_n_0 ),
        .I4(\rni_readdata_delayed[9]_i_4_n_0 ),
        .O(\rni_readdata_delayed[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00B8B80000)) 
    \rni_readdata_delayed[1]_i_4 
       (.I0(\msg_length_reg_reg[11] [1]),
        .I1(send_buffer_address1[0]),
        .I2(\msg_length_reg_reg[10] [1]),
        .I3(\rni_readdata_delayed[1]_i_8_n_0 ),
        .I4(send_buffer_address1[1]),
        .I5(send_buffer_address1[2]),
        .O(\rni_readdata_delayed[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBAAABA)) 
    \rni_readdata_delayed[1]_i_5 
       (.I0(\rni_readdata_delayed[9]_i_4_n_0 ),
        .I1(send_buffer_address1[1]),
        .I2(\msg_length_reg_reg[8] [1]),
        .I3(send_buffer_address1[0]),
        .I4(\msg_length_reg_reg[9] [1]),
        .I5(send_buffer_address1[2]),
        .O(\rni_readdata_delayed[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rni_readdata_delayed[1]_i_6 
       (.I0(\msg_length_reg_reg[4] [1]),
        .I1(send_buffer_address1[0]),
        .I2(\msg_length_reg_reg[5] [1]),
        .I3(send_buffer_address1[1]),
        .O(\rni_readdata_delayed[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[1]_i_7 
       (.I0(\msg_length_reg_reg[3] [1]),
        .I1(\msg_length_reg_reg[2] [1]),
        .I2(send_buffer_address1[1]),
        .I3(\msg_length_reg_reg[1] [1]),
        .I4(send_buffer_address1[0]),
        .I5(\msg_length_reg_reg[0] [1]),
        .O(\rni_readdata_delayed[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rni_readdata_delayed[1]_i_8 
       (.I0(\msg_length_reg_reg[13] [1]),
        .I1(send_buffer_address1[0]),
        .I2(\msg_length_reg_reg[12] [1]),
        .O(\rni_readdata_delayed[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[2]_i_1 
       (.I0(\rni_readdata_delayed[2]_i_2_n_0 ),
        .I1(out0),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rni_readdata_delayed[2]_i_2 
       (.I0(\S_AXI_AWADDR[8]_1 ),
        .I1(\interrupt_reg_reg_n_0_[2] ),
        .I2(dap_read_1),
        .I3(\rni_readdata_delayed[2]_i_3_n_0 ),
        .I4(\rni_readdata_delayed[9]_i_4_n_0 ),
        .I5(\rni_readdata_delayed[2]_i_4_n_0 ),
        .O(\rni_readdata_delayed[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rni_readdata_delayed[2]_i_3 
       (.I0(\d_pid_reg[4] [0]),
        .I1(send_buffer_address1[0]),
        .I2(\d_pid_reg[5] [0]),
        .I3(send_buffer_address1[1]),
        .I4(send_buffer_address1[2]),
        .I5(\rni_readdata_delayed[2]_i_5_n_0 ),
        .O(\rni_readdata_delayed[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rni_readdata_delayed[2]_i_4 
       (.I0(\d_pid_reg[12] [0]),
        .I1(send_buffer_address1[0]),
        .I2(\d_pid_reg[13] [0]),
        .I3(send_buffer_address1[1]),
        .I4(send_buffer_address1[2]),
        .I5(\rni_readdata_delayed[2]_i_6_n_0 ),
        .O(\rni_readdata_delayed[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[2]_i_5 
       (.I0(\d_pid_reg[3] [0]),
        .I1(\d_pid_reg[2] [0]),
        .I2(send_buffer_address1[1]),
        .I3(\d_pid_reg[1] [0]),
        .I4(send_buffer_address1[0]),
        .I5(\d_pid_reg[0] [0]),
        .O(\rni_readdata_delayed[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[2]_i_6 
       (.I0(\d_pid_reg[11] [0]),
        .I1(\d_pid_reg[10] [0]),
        .I2(send_buffer_address1[1]),
        .I3(\d_pid_reg[9] [0]),
        .I4(send_buffer_address1[0]),
        .I5(\d_pid_reg[8] [0]),
        .O(\rni_readdata_delayed[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[3]_i_1 
       (.I0(\rni_readdata_delayed[3]_i_2_n_0 ),
        .I1(out0),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rni_readdata_delayed[3]_i_2 
       (.I0(\S_AXI_AWADDR[8]_1 ),
        .I1(\interrupt_reg_reg_n_0_[3] ),
        .I2(dap_read_1),
        .I3(\rni_readdata_delayed[3]_i_3_n_0 ),
        .I4(\rni_readdata_delayed[9]_i_4_n_0 ),
        .I5(\rni_readdata_delayed[3]_i_4_n_0 ),
        .O(\rni_readdata_delayed[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rni_readdata_delayed[3]_i_3 
       (.I0(\d_pid_reg[4] [1]),
        .I1(send_buffer_address1[0]),
        .I2(\d_pid_reg[5] [1]),
        .I3(send_buffer_address1[1]),
        .I4(send_buffer_address1[2]),
        .I5(\rni_readdata_delayed[3]_i_5_n_0 ),
        .O(\rni_readdata_delayed[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rni_readdata_delayed[3]_i_4 
       (.I0(\d_pid_reg[12] [1]),
        .I1(send_buffer_address1[0]),
        .I2(\d_pid_reg[13] [1]),
        .I3(send_buffer_address1[1]),
        .I4(send_buffer_address1[2]),
        .I5(\rni_readdata_delayed[3]_i_6_n_0 ),
        .O(\rni_readdata_delayed[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[3]_i_5 
       (.I0(\d_pid_reg[3] [1]),
        .I1(\d_pid_reg[2] [1]),
        .I2(send_buffer_address1[1]),
        .I3(\d_pid_reg[1] [1]),
        .I4(send_buffer_address1[0]),
        .I5(\d_pid_reg[0] [1]),
        .O(\rni_readdata_delayed[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[3]_i_6 
       (.I0(\d_pid_reg[11] [1]),
        .I1(\d_pid_reg[10] [1]),
        .I2(send_buffer_address1[1]),
        .I3(\d_pid_reg[9] [1]),
        .I4(send_buffer_address1[0]),
        .I5(\d_pid_reg[8] [1]),
        .O(\rni_readdata_delayed[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[4]_i_1 
       (.I0(\rni_readdata_delayed[4]_i_2_n_0 ),
        .I1(out0),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h4F4F4F44)) 
    \rni_readdata_delayed[4]_i_2 
       (.I0(\S_AXI_AWADDR[8]_1 ),
        .I1(\interrupt_reg_reg_n_0_[4] ),
        .I2(\rni_readdata_delayed[4]_i_3_n_0 ),
        .I3(\rni_readdata_delayed[4]_i_4_n_0 ),
        .I4(\rni_readdata_delayed[4]_i_5_n_0 ),
        .O(\rni_readdata_delayed[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \rni_readdata_delayed[4]_i_3 
       (.I0(dap_read_1),
        .I1(\rni_readdata_delayed[4]_i_6_n_0 ),
        .I2(send_buffer_address1[2]),
        .I3(\rni_readdata_delayed[4]_i_7_n_0 ),
        .I4(\rni_readdata_delayed[9]_i_4_n_0 ),
        .O(\rni_readdata_delayed[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00B8B80000)) 
    \rni_readdata_delayed[4]_i_4 
       (.I0(\d_pid_reg[11] [2]),
        .I1(send_buffer_address1[0]),
        .I2(\d_pid_reg[10] [2]),
        .I3(\rni_readdata_delayed[4]_i_8_n_0 ),
        .I4(send_buffer_address1[1]),
        .I5(send_buffer_address1[2]),
        .O(\rni_readdata_delayed[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBAAABA)) 
    \rni_readdata_delayed[4]_i_5 
       (.I0(\rni_readdata_delayed[9]_i_4_n_0 ),
        .I1(send_buffer_address1[1]),
        .I2(\d_pid_reg[8] [2]),
        .I3(send_buffer_address1[0]),
        .I4(\d_pid_reg[9] [2]),
        .I5(send_buffer_address1[2]),
        .O(\rni_readdata_delayed[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rni_readdata_delayed[4]_i_6 
       (.I0(\d_pid_reg[4] [2]),
        .I1(send_buffer_address1[0]),
        .I2(\d_pid_reg[5] [2]),
        .I3(send_buffer_address1[1]),
        .O(\rni_readdata_delayed[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[4]_i_7 
       (.I0(\d_pid_reg[3] [2]),
        .I1(\d_pid_reg[2] [2]),
        .I2(send_buffer_address1[1]),
        .I3(\d_pid_reg[1] [2]),
        .I4(send_buffer_address1[0]),
        .I5(\d_pid_reg[0] [2]),
        .O(\rni_readdata_delayed[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rni_readdata_delayed[4]_i_8 
       (.I0(\d_pid_reg[13] [2]),
        .I1(send_buffer_address1[0]),
        .I2(\d_pid_reg[12] [2]),
        .O(\rni_readdata_delayed[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[5]_i_1 
       (.I0(\rni_readdata_delayed[5]_i_2_n_0 ),
        .I1(out0),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h4F4F4F44)) 
    \rni_readdata_delayed[5]_i_2 
       (.I0(\S_AXI_AWADDR[8]_1 ),
        .I1(\interrupt_reg_reg_n_0_[5] ),
        .I2(\rni_readdata_delayed[5]_i_3_n_0 ),
        .I3(\rni_readdata_delayed[5]_i_4_n_0 ),
        .I4(\rni_readdata_delayed[5]_i_5_n_0 ),
        .O(\rni_readdata_delayed[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \rni_readdata_delayed[5]_i_3 
       (.I0(dap_read_1),
        .I1(\rni_readdata_delayed[5]_i_6_n_0 ),
        .I2(send_buffer_address1[2]),
        .I3(\rni_readdata_delayed[5]_i_7_n_0 ),
        .I4(\rni_readdata_delayed[9]_i_4_n_0 ),
        .O(\rni_readdata_delayed[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00B8B80000)) 
    \rni_readdata_delayed[5]_i_4 
       (.I0(\d_pid_reg[11] [3]),
        .I1(send_buffer_address1[0]),
        .I2(\d_pid_reg[10] [3]),
        .I3(\rni_readdata_delayed[5]_i_8_n_0 ),
        .I4(send_buffer_address1[1]),
        .I5(send_buffer_address1[2]),
        .O(\rni_readdata_delayed[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBAAABA)) 
    \rni_readdata_delayed[5]_i_5 
       (.I0(\rni_readdata_delayed[9]_i_4_n_0 ),
        .I1(send_buffer_address1[1]),
        .I2(\d_pid_reg[8] [3]),
        .I3(send_buffer_address1[0]),
        .I4(\d_pid_reg[9] [3]),
        .I5(send_buffer_address1[2]),
        .O(\rni_readdata_delayed[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rni_readdata_delayed[5]_i_6 
       (.I0(\d_pid_reg[4] [3]),
        .I1(send_buffer_address1[0]),
        .I2(\d_pid_reg[5] [3]),
        .I3(send_buffer_address1[1]),
        .O(\rni_readdata_delayed[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[5]_i_7 
       (.I0(\d_pid_reg[3] [3]),
        .I1(\d_pid_reg[2] [3]),
        .I2(send_buffer_address1[1]),
        .I3(\d_pid_reg[1] [3]),
        .I4(send_buffer_address1[0]),
        .I5(\d_pid_reg[0] [3]),
        .O(\rni_readdata_delayed[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rni_readdata_delayed[5]_i_8 
       (.I0(\d_pid_reg[13] [3]),
        .I1(send_buffer_address1[0]),
        .I2(\d_pid_reg[12] [3]),
        .O(\rni_readdata_delayed[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[6]_i_1 
       (.I0(\rni_readdata_delayed[6]_i_2_n_0 ),
        .I1(out0),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h4F4F4F44)) 
    \rni_readdata_delayed[6]_i_2 
       (.I0(\S_AXI_AWADDR[8]_1 ),
        .I1(\interrupt_reg_reg_n_0_[6] ),
        .I2(\rni_readdata_delayed[6]_i_3_n_0 ),
        .I3(\rni_readdata_delayed[6]_i_4_n_0 ),
        .I4(\rni_readdata_delayed[6]_i_5_n_0 ),
        .O(\rni_readdata_delayed[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \rni_readdata_delayed[6]_i_3 
       (.I0(dap_read_1),
        .I1(\rni_readdata_delayed[6]_i_6_n_0 ),
        .I2(send_buffer_address1[2]),
        .I3(\rni_readdata_delayed[6]_i_7_n_0 ),
        .I4(\rni_readdata_delayed[9]_i_4_n_0 ),
        .O(\rni_readdata_delayed[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00B8B80000)) 
    \rni_readdata_delayed[6]_i_4 
       (.I0(\s_pid_reg[11] [0]),
        .I1(send_buffer_address1[0]),
        .I2(\s_pid_reg[10] [0]),
        .I3(\rni_readdata_delayed[6]_i_8_n_0 ),
        .I4(send_buffer_address1[1]),
        .I5(send_buffer_address1[2]),
        .O(\rni_readdata_delayed[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBAAABA)) 
    \rni_readdata_delayed[6]_i_5 
       (.I0(\rni_readdata_delayed[9]_i_4_n_0 ),
        .I1(send_buffer_address1[1]),
        .I2(\s_pid_reg[8] [0]),
        .I3(send_buffer_address1[0]),
        .I4(\s_pid_reg[9] [0]),
        .I5(send_buffer_address1[2]),
        .O(\rni_readdata_delayed[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rni_readdata_delayed[6]_i_6 
       (.I0(\s_pid_reg[4] [0]),
        .I1(send_buffer_address1[0]),
        .I2(\s_pid_reg[5] [0]),
        .I3(send_buffer_address1[1]),
        .O(\rni_readdata_delayed[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[6]_i_7 
       (.I0(\s_pid_reg[3] [0]),
        .I1(\s_pid_reg[2] [0]),
        .I2(send_buffer_address1[1]),
        .I3(\s_pid_reg[1] [0]),
        .I4(send_buffer_address1[0]),
        .I5(\s_pid_reg[0] [0]),
        .O(\rni_readdata_delayed[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rni_readdata_delayed[6]_i_8 
       (.I0(\s_pid_reg[13] [0]),
        .I1(send_buffer_address1[0]),
        .I2(\s_pid_reg[12] [0]),
        .O(\rni_readdata_delayed[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[7]_i_1 
       (.I0(\rni_readdata_delayed[7]_i_2_n_0 ),
        .I1(out0),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rni_readdata_delayed[7]_i_2 
       (.I0(\S_AXI_AWADDR[8]_1 ),
        .I1(\interrupt_reg_reg_n_0_[7] ),
        .I2(dap_read_1),
        .I3(\rni_readdata_delayed[7]_i_4_n_0 ),
        .I4(\rni_readdata_delayed[9]_i_4_n_0 ),
        .I5(\rni_readdata_delayed[7]_i_5_n_0 ),
        .O(\rni_readdata_delayed[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rni_readdata_delayed[7]_i_4 
       (.I0(\s_pid_reg[4] [1]),
        .I1(send_buffer_address1[0]),
        .I2(\s_pid_reg[5] [1]),
        .I3(send_buffer_address1[1]),
        .I4(send_buffer_address1[2]),
        .I5(\rni_readdata_delayed[7]_i_6_n_0 ),
        .O(\rni_readdata_delayed[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rni_readdata_delayed[7]_i_5 
       (.I0(\s_pid_reg[12] [1]),
        .I1(send_buffer_address1[0]),
        .I2(\s_pid_reg[13] [1]),
        .I3(send_buffer_address1[1]),
        .I4(send_buffer_address1[2]),
        .I5(\rni_readdata_delayed[7]_i_7_n_0 ),
        .O(\rni_readdata_delayed[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[7]_i_6 
       (.I0(\s_pid_reg[3] [1]),
        .I1(\s_pid_reg[2] [1]),
        .I2(send_buffer_address1[1]),
        .I3(\s_pid_reg[1] [1]),
        .I4(send_buffer_address1[0]),
        .I5(\s_pid_reg[0] [1]),
        .O(\rni_readdata_delayed[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rni_readdata_delayed[7]_i_7 
       (.I0(\s_pid_reg[11] [1]),
        .I1(\s_pid_reg[10] [1]),
        .I2(send_buffer_address1[1]),
        .I3(\s_pid_reg[9] [1]),
        .I4(send_buffer_address1[0]),
        .I5(\s_pid_reg[8] [1]),
        .O(\rni_readdata_delayed[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[8]_i_1 
       (.I0(\rni_readdata_delayed[8]_i_2_n_0 ),
        .I1(out0),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \rni_readdata_delayed[8]_i_2 
       (.I0(\rni_readdata_delayed[8]_i_3_n_0 ),
        .I1(\rni_readdata_delayed[9]_i_4_n_0 ),
        .I2(\rni_readdata_delayed[8]_i_4_n_0 ),
        .I3(dap_read_1),
        .O(\rni_readdata_delayed[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rni_readdata_delayed[8]_i_3 
       (.I0(\s_pid_reg[12] [2]),
        .I1(send_buffer_address1[0]),
        .I2(\s_pid_reg[13] [2]),
        .I3(send_buffer_address1[1]),
        .I4(send_buffer_address1[2]),
        .I5(\rni_readdata_delayed[8]_i_6_n_0 ),
        .O(\rni_readdata_delayed[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E20000FFFF)) 
    \rni_readdata_delayed[8]_i_4 
       (.I0(\s_pid_reg[4] [2]),
        .I1(send_buffer_address1[0]),
        .I2(\s_pid_reg[5] [2]),
        .I3(send_buffer_address1[1]),
        .I4(\rni_readdata_delayed[8]_i_7_n_0 ),
        .I5(send_buffer_address1[2]),
        .O(\rni_readdata_delayed[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \rni_readdata_delayed[8]_i_6 
       (.I0(\s_pid_reg[10] [2]),
        .I1(\s_pid_reg[11] [2]),
        .I2(send_buffer_address1[1]),
        .I3(\s_pid_reg[9] [2]),
        .I4(send_buffer_address1[0]),
        .I5(\s_pid_reg[8] [2]),
        .O(\rni_readdata_delayed[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \rni_readdata_delayed[8]_i_7 
       (.I0(\s_pid_reg[3] [2]),
        .I1(\s_pid_reg[2] [2]),
        .I2(send_buffer_address1[1]),
        .I3(\s_pid_reg[1] [2]),
        .I4(send_buffer_address1[0]),
        .I5(\s_pid_reg[0] [2]),
        .O(\rni_readdata_delayed[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rni_readdata_delayed[9]_i_1 
       (.I0(\rni_readdata_delayed[9]_i_2_n_0 ),
        .I1(out0),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h0000202A)) 
    \rni_readdata_delayed[9]_i_2 
       (.I0(\S_AXI_AWADDR[7] ),
        .I1(\rni_readdata_delayed[9]_i_3_n_0 ),
        .I2(\rni_readdata_delayed[9]_i_4_n_0 ),
        .I3(\rni_readdata_delayed[9]_i_5_n_0 ),
        .I4(\S_AXI_AWADDR[8]_0 ),
        .O(\rni_readdata_delayed[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABFBFFFFABFB0000)) 
    \rni_readdata_delayed[9]_i_3 
       (.I0(send_buffer_address1[1]),
        .I1(\s_pid_reg[4] [3]),
        .I2(send_buffer_address1[0]),
        .I3(\s_pid_reg[5] [3]),
        .I4(send_buffer_address1[2]),
        .I5(\rni_readdata_delayed[9]_i_6_n_0 ),
        .O(\rni_readdata_delayed[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \rni_readdata_delayed[9]_i_4 
       (.I0(\channel_nr_reg[3]_0 ),
        .I1(S_AXI_AWADDR[1]),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[1]),
        .I4(dap_read_0),
        .I5(dap_address[1]),
        .O(\rni_readdata_delayed[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBABFFFFFBABF0000)) 
    \rni_readdata_delayed[9]_i_5 
       (.I0(send_buffer_address1[1]),
        .I1(\s_pid_reg[13] [3]),
        .I2(send_buffer_address1[0]),
        .I3(\s_pid_reg[12] [3]),
        .I4(send_buffer_address1[2]),
        .I5(\rni_readdata_delayed[9]_i_7_n_0 ),
        .O(\rni_readdata_delayed[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \rni_readdata_delayed[9]_i_6 
       (.I0(\s_pid_reg[3] [3]),
        .I1(\s_pid_reg[2] [3]),
        .I2(send_buffer_address1[1]),
        .I3(\s_pid_reg[1] [3]),
        .I4(send_buffer_address1[0]),
        .I5(\s_pid_reg[0] [3]),
        .O(\rni_readdata_delayed[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \rni_readdata_delayed[9]_i_7 
       (.I0(\s_pid_reg[11] [3]),
        .I1(\s_pid_reg[10] [3]),
        .I2(send_buffer_address1[1]),
        .I3(\s_pid_reg[9] [3]),
        .I4(send_buffer_address1[0]),
        .I5(\s_pid_reg[8] [3]),
        .O(\rni_readdata_delayed[9]_i_7_n_0 ));
  MUXF7 \rni_readdata_delayed_reg[0]_i_2 
       (.I0(\rni_readdata_delayed[0]_i_3_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_4_n_0 ),
        .O(\rni_readdata_delayed_reg[0]_i_2_n_0 ),
        .S(\S_AXI_AWADDR[8] ));
  MUXF7 \rni_readdata_delayed_reg[0]_i_5 
       (.I0(\rni_readdata_delayed[0]_i_9_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_10_n_0 ),
        .O(\rni_readdata_delayed_reg[0]_i_5_n_0 ),
        .S(send_buffer_address1[2]));
  MUXF7 \rni_readdata_delayed_reg[0]_i_6 
       (.I0(\rni_readdata_delayed[0]_i_11_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_12_n_0 ),
        .O(\rni_readdata_delayed_reg[0]_i_6_n_0 ),
        .S(send_buffer_address1[2]));
  MUXF7 \rni_readdata_delayed_reg[0]_i_7 
       (.I0(\rni_readdata_delayed[0]_i_13_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_14_n_0 ),
        .O(\rni_readdata_delayed_reg[0]_i_7_n_0 ),
        .S(send_buffer_address1[2]));
  MUXF7 \rni_readdata_delayed_reg[0]_i_8 
       (.I0(\rni_readdata_delayed[0]_i_15_n_0 ),
        .I1(\rni_readdata_delayed[0]_i_16_n_0 ),
        .O(\rni_readdata_delayed_reg[0]_i_8_n_0 ),
        .S(send_buffer_address1[2]));
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
  FDCE \s_pid_reg[10][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[10][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[10] [0]));
  FDCE \s_pid_reg[10][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[10][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[10] [1]));
  FDCE \s_pid_reg[10][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[10][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[10] [2]));
  FDCE \s_pid_reg[10][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[10][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[10] [3]));
  FDCE \s_pid_reg[11][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[11]_0 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[11] [0]));
  FDCE \s_pid_reg[11][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[11]_0 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[11] [1]));
  FDCE \s_pid_reg[11][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[11]_0 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[11] [2]));
  FDCE \s_pid_reg[11][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[11]_0 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[11] [3]));
  FDCE \s_pid_reg[12][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[12]_4 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[12] [0]));
  FDCE \s_pid_reg[12][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[12]_4 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[12] [1]));
  FDCE \s_pid_reg[12][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[12]_4 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[12] [2]));
  FDCE \s_pid_reg[12][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[12]_4 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[12] [3]));
  FDCE \s_pid_reg[13][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[13]_5 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[13] [0]));
  FDCE \s_pid_reg[13][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[13]_5 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[13] [1]));
  FDCE \s_pid_reg[13][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[13]_5 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[13] [2]));
  FDCE \s_pid_reg[13][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[13]_5 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[13] [3]));
  FDCE \s_pid_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[1] [0]));
  FDCE \s_pid_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[1] [1]));
  FDCE \s_pid_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[1] [2]));
  FDCE \s_pid_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[1][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[1] [3]));
  FDCE \s_pid_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_1 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[2] [0]));
  FDCE \s_pid_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_1 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[2] [1]));
  FDCE \s_pid_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_1 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[2] [2]));
  FDCE \s_pid_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[2]_1 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[2] [3]));
  FDCE \s_pid_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[3][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[3] [0]));
  FDCE \s_pid_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[3][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[3] [1]));
  FDCE \s_pid_reg[3][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[3][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[3] [2]));
  FDCE \s_pid_reg[3][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[3][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[3] [3]));
  FDCE \s_pid_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[4] [0]));
  FDCE \s_pid_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[4] [1]));
  FDCE \s_pid_reg[4][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4][1]_i_1_n_0 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[4] [2]));
  FDCE \s_pid_reg[4][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[4][1]_i_1_n_0 ),
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
  FDCE \s_pid_reg[8][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[8]_3 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[8] [0]));
  FDCE \s_pid_reg[8][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[8]_3 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[8] [1]));
  FDCE \s_pid_reg[8][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[8]_3 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[8] [2]));
  FDCE \s_pid_reg[8][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[8]_3 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[8] [3]));
  FDCE \s_pid_reg[9][0] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[9]_2 ),
        .CLR(AR),
        .D(FROM_NOC[36]),
        .Q(\s_pid_reg[9] [0]));
  FDCE \s_pid_reg[9][1] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[9]_2 ),
        .CLR(AR),
        .D(FROM_NOC[37]),
        .Q(\s_pid_reg[9] [1]));
  FDCE \s_pid_reg[9][2] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[9]_2 ),
        .CLR(AR),
        .D(FROM_NOC[38]),
        .Q(\s_pid_reg[9] [2]));
  FDCE \s_pid_reg[9][3] 
       (.C(S_AXI_ACLK),
        .CE(\msg_length_reg[9]_2 ),
        .CLR(AR),
        .D(FROM_NOC[39]),
        .Q(\s_pid_reg[9] [3]));
  LUT4 #(
    .INIT(16'hF400)) 
    send_clock_i_1
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I1(send_clock_reg_n_0),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I3(S_AXI_ARESETN),
        .O(send_clock_i_1_n_0));
  FDRE send_clock_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(send_clock_i_1_n_0),
        .Q(send_clock_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAFFEAEA)) 
    \send_counter[0]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\command_reg_reg_n_0_[0] ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I3(ADDRBWRADDR[0]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .I5(\send_counter[0]_i_2_n_0 ),
        .O(send_counter[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \send_counter[0]_i_2 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .O(\send_counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \send_counter[1]_i_1 
       (.I0(\FSM_onehot_xmit_state_reg_n_0_[0] ),
        .I1(\send_counter[1]_i_2_n_0 ),
        .I2(\FSM_onehot_xmit_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_xmit_state_reg_n_0_[3] ),
        .O(send_counter[1]));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \send_counter[1]_i_2 
       (.I0(\command_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .I2(ADDRBWRADDR[0]),
        .I3(ADDRBWRADDR[1]),
        .I4(\FSM_onehot_xmit_state_reg_n_0_[4] ),
        .O(\send_counter[1]_i_2_n_0 ));
  FDRE \send_counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_3_n_0 ),
        .D(send_counter[0]),
        .Q(ADDRBWRADDR[0]),
        .R(AR));
  FDRE \send_counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\outport[55]_i_3_n_0 ),
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
  FDRE \src_buffer_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .D(p_0_in[0]),
        .Q(ADDRBWRADDR[2]),
        .R(AR));
  FDRE \src_buffer_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .D(p_0_in[1]),
        .Q(ADDRBWRADDR[3]),
        .R(AR));
  FDRE \src_buffer_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_xmit_state_reg_n_0_[1] ),
        .D(p_0_in[2]),
        .Q(ADDRBWRADDR[4]),
        .R(AR));
  FDRE \src_pid_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(p_2_in[0]),
        .Q(src_pid[0]),
        .R(1'b0));
  FDRE \src_pid_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(p_2_in[1]),
        .Q(src_pid[1]),
        .R(1'b0));
  FDRE \src_pid_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(p_2_in[2]),
        .Q(src_pid[2]),
        .R(1'b0));
  FDRE \src_pid_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(dest_col_0),
        .D(p_2_in[3]),
        .Q(src_pid[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFCFFFFFFA8AAAAAA)) 
    synchronize_flag_i_1
       (.I0(slave_irq0),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .I2(Bus_RNW_reg_reg),
        .I3(send_buffer_address1[0]),
        .I4(send_buffer_address1[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \toggle_bit[0]_i_2 
       (.I0(\channel_nr_reg[3]_0 ),
        .O(toggle_address));
  FDCE \toggle_bit_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slave_irq0),
        .CLR(AR),
        .D(toggle_address),
        .Q(\channel_nr_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \xmit_state[0]_i_1 
       (.I0(xmit_state[2]),
        .I1(xmit_state[0]),
        .I2(xmit_state[1]),
        .O(\xmit_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h70FFFF70)) 
    \xmit_state[1]_i_1 
       (.I0(ADDRBWRADDR[0]),
        .I1(ADDRBWRADDR[1]),
        .I2(xmit_state[2]),
        .I3(xmit_state[0]),
        .I4(xmit_state[1]),
        .O(\xmit_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \xmit_state[2]_i_1 
       (.I0(xmit_state[1]),
        .I1(xmit_state[0]),
        .O(\xmit_state[2]_i_1_n_0 ));
  FDRE \xmit_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_xmit_state[4]_i_1_n_0 ),
        .D(\xmit_state[0]_i_1_n_0 ),
        .Q(xmit_state[0]),
        .R(AR));
  FDRE \xmit_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_xmit_state[4]_i_1_n_0 ),
        .D(\xmit_state[1]_i_1_n_0 ),
        .Q(xmit_state[1]),
        .R(AR));
  FDRE \xmit_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_onehot_xmit_state[4]_i_1_n_0 ),
        .D(\xmit_state[2]_i_1_n_0 ),
        .Q(xmit_state[2]),
        .R(AR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static
   (S_AXI_RDATA,
    TO_NOC,
    S_AXI_ARREADY,
    S_AXI_WREADY,
    S_AXI_RVALID,
    S_AXI_BVALID,
    dap_readdata,
    NoC_IRQ,
    dap_writedata,
    dap_read,
    dap_write,
    S_AXI_WDATA,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    dap_address,
    FROM_NOC,
    Sync,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    HeartBeat,
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
  input [31:0]dap_writedata;
  input dap_read;
  input dap_write;
  input [31:0]S_AXI_WDATA;
  input [8:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [8:0]S_AXI_ARADDR;
  input [8:0]dap_address;
  input [43:0]FROM_NOC;
  input [1:0]Sync;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input HeartBeat;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_BREADY;

  wire AXI_LITE_IPIF_I_n_2;
  wire AXI_LITE_IPIF_I_n_31;
  wire AXI_LITE_IPIF_I_n_32;
  wire AXI_LITE_IPIF_I_n_39;
  wire AXI_LITE_IPIF_I_n_40;
  wire AXI_LITE_IPIF_I_n_41;
  wire AXI_LITE_IPIF_I_n_43;
  wire AXI_LITE_IPIF_I_n_6;
  wire [43:0]FROM_NOC;
  wire \G0.recv_buffer/wea ;
  wire \G0.send_buffer/wea ;
  wire HeartBeat;
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
  wire USER_LOGIC_I_n_69;
  wire USER_LOGIC_I_n_80;
  wire [8:0]dap_address;
  wire dap_read;
  wire [31:0]dap_readdata;
  wire dap_write;
  wire [31:0]dap_writedata;
  wire [31:31]\interface/out0 ;
  wire ipif_Bus2IP_RdCE;
  wire old_slave_read;
  wire [31:0]p_1_out;
  wire [31:0]p_3_out;
  wire p_7_in;
  wire p_8_in;
  wire rni_chipselect;
  wire [4:0]send_buffer_address1;
  wire [31:0]slave_readdata;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif AXI_LITE_IPIF_I
       (.D(slave_readdata[31:10]),
        .E(AXI_LITE_IPIF_I_n_2),
        .\FSM_onehot_xmit_state_reg[0] (AXI_LITE_IPIF_I_n_39),
        .\FSM_onehot_xmit_state_reg[0]_0 (AXI_LITE_IPIF_I_n_40),
        .RAM_reg(\G0.send_buffer/wea ),
        .Reset(Reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[8:5],S_AXI_ARADDR[2:0]}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[8:5],S_AXI_AWADDR[2:0]}),
        .\S_AXI_AWADDR[6] (send_buffer_address1[4:3]),
        .\S_AXI_AWADDR[8] (USER_LOGIC_I_n_80),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .WEA(\G0.recv_buffer/wea ),
        .\command_reg_reg[14] (AXI_LITE_IPIF_I_n_6),
        .dap_address({dap_address[8:5],dap_address[2:0]}),
        .dap_read(dap_read),
        .dap_read_0(USER_LOGIC_I_n_69),
        .dap_write(dap_write),
        .ipif_Bus2IP_RdCE(ipif_Bus2IP_RdCE),
        .old_slave_read(old_slave_read),
        .out0(\interface/out0 ),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_7_in(p_7_in),
        .p_8_in(p_8_in),
        .rni_chipselect(rni_chipselect),
        .\rni_readdata_delayed_reg[10] (AXI_LITE_IPIF_I_n_31),
        .\rni_readdata_delayed_reg[10]_0 (AXI_LITE_IPIF_I_n_32),
        .\rni_readdata_delayed_reg[3] (AXI_LITE_IPIF_I_n_43),
        .\rni_readdata_delayed_reg[6] (AXI_LITE_IPIF_I_n_41),
        .\s_pid_reg[4][3] (slave_readdata[9:0]),
        .send_buffer_address1(send_buffer_address1[2:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_generic_rni_static USER_LOGIC_I
       (.Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_39),
        .Bus_RNW_reg_reg_0(slave_readdata[31:10]),
        .D(slave_readdata[9:0]),
        .E(AXI_LITE_IPIF_I_n_2),
        .FROM_NOC(FROM_NOC),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\G0.send_buffer/wea ),
        .HeartBeat(HeartBeat),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (AXI_LITE_IPIF_I_n_6),
        .NoC_IRQ(NoC_IRQ),
        .RAM_reg(send_buffer_address1[4:3]),
        .RAM_reg_0(USER_LOGIC_I_n_69),
        .Reset(Reset),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[5:3],S_AXI_ARADDR[1:0]}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[5:3],S_AXI_AWADDR[1:0]}),
        .\S_AXI_AWADDR[7] (AXI_LITE_IPIF_I_n_31),
        .\S_AXI_AWADDR[8] (AXI_LITE_IPIF_I_n_40),
        .\S_AXI_AWADDR[8]_0 (AXI_LITE_IPIF_I_n_32),
        .\S_AXI_AWADDR[8]_1 (AXI_LITE_IPIF_I_n_41),
        .S_AXI_WDATA(S_AXI_WDATA),
        .Sync(Sync),
        .TO_NOC(TO_NOC),
        .WEA(\G0.recv_buffer/wea ),
        .\command_reg_reg[14] (USER_LOGIC_I_n_80),
        .dap_address({dap_address[5:3],dap_address[1]}),
        .dap_read(dap_read),
        .dap_read_0(AXI_LITE_IPIF_I_n_43),
        .dap_readdata(dap_readdata),
        .dap_write(dap_write),
        .dap_writedata(dap_writedata),
        .ipif_Bus2IP_RdCE(ipif_Bus2IP_RdCE),
        .old_slave_read(old_slave_read),
        .out0(\interface/out0 ),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_7_in(p_7_in),
        .p_8_in(p_8_in),
        .rni_chipselect(rni_chipselect),
        .send_buffer_address1(send_buffer_address1[2:0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static_c1_v1_0
   (S_AXI_RDATA,
    TO_NOC,
    S_AXI_ARREADY,
    S_AXI_WREADY,
    S_AXI_RVALID,
    S_AXI_BVALID,
    dap_readdata,
    NoC_IRQ,
    dap_writedata,
    dap_read,
    dap_write,
    S_AXI_WDATA,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    dap_address,
    FROM_NOC,
    Sync,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    HeartBeat,
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
  input [31:0]dap_writedata;
  input dap_read;
  input dap_write;
  input [31:0]S_AXI_WDATA;
  input [8:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [8:0]S_AXI_ARADDR;
  input [8:0]dap_address;
  input [43:0]FROM_NOC;
  input [1:0]Sync;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input HeartBeat;
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static kth_axi_rni_static_0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_generic_rni_static
   (p_3_out,
    RAM_reg,
    p_1_out,
    Reset,
    old_slave_read,
    NoC_IRQ,
    RAM_reg_0,
    D,
    \command_reg_reg[14] ,
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
    dap_writedata,
    dap_read,
    dap_write,
    S_AXI_WDATA,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    dap_address,
    FROM_NOC,
    Sync,
    S_AXI_ARESETN,
    out0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    Bus_RNW_reg_reg,
    \S_AXI_AWADDR[8] ,
    \S_AXI_AWADDR[7] ,
    \S_AXI_AWADDR[8]_0 ,
    dap_read_0,
    \S_AXI_AWADDR[8]_1 ,
    E,
    Bus_RNW_reg_reg_0);
  output [31:0]p_3_out;
  output [1:0]RAM_reg;
  output [31:0]p_1_out;
  output Reset;
  output old_slave_read;
  output NoC_IRQ;
  output RAM_reg_0;
  output [9:0]D;
  output \command_reg_reg[14] ;
  output [31:0]dap_readdata;
  output [47:0]TO_NOC;
  input S_AXI_ACLK;
  input p_8_in;
  input [2:0]send_buffer_address1;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input p_7_in;
  input [0:0]WEA;
  input HeartBeat;
  input rni_chipselect;
  input ipif_Bus2IP_RdCE;
  input [31:0]dap_writedata;
  input dap_read;
  input dap_write;
  input [31:0]S_AXI_WDATA;
  input [4:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [4:0]S_AXI_ARADDR;
  input [3:0]dap_address;
  input [43:0]FROM_NOC;
  input [1:0]Sync;
  input S_AXI_ARESETN;
  input [0:0]out0;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  input Bus_RNW_reg_reg;
  input \S_AXI_AWADDR[8] ;
  input \S_AXI_AWADDR[7] ;
  input \S_AXI_AWADDR[8]_0 ;
  input dap_read_0;
  input \S_AXI_AWADDR[8]_1 ;
  input [0:0]E;
  input [21:0]Bus_RNW_reg_reg_0;

  wire Bus_RNW_reg_reg;
  wire [21:0]Bus_RNW_reg_reg_0;
  wire [9:0]D;
  wire [0:0]E;
  wire [43:0]FROM_NOC;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire HeartBeat;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
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
  wire \S_AXI_AWADDR[8]_1 ;
  wire [31:0]S_AXI_WDATA;
  wire [1:0]Sync;
  wire [47:0]TO_NOC;
  wire [0:0]WEA;
  wire \command_reg_reg[14] ;
  wire [3:0]dap_address;
  wire dap_read;
  wire dap_read_0;
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
  wire [0:0]out0;
  wire [31:0]p_1_out;
  wire [31:0]p_2_out;
  wire [31:0]p_3_out;
  wire p_7_in;
  wire p_8_in;
  wire [4:0]recv_buffer_address;
  wire recv_buffer_write2;
  wire [31:0]recv_buffer_writedata;
  wire rni_chipselect;
  wire [31:0]rni_readdata_delayed;
  wire [4:0]send_buffer_address;
  wire [2:0]send_buffer_address1;
  wire [31:0]send_buffer_writedata1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory__parameterized0 \G0.recv_buffer 
       (.ADDRARDADDR({interface_n_4,RAM_reg,send_buffer_address1}),
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
        .p_1_out(p_1_out),
        .p_7_in(p_7_in),
        .send_buffer_writedata1(send_buffer_writedata1),
        .\toggle_bit_reg[0] (interface_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory \G0.send_buffer 
       (.ADDRARDADDR({RAM_reg,send_buffer_address1}),
        .ADDRBWRADDR(send_buffer_address),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .Q(rni_readdata_delayed),
        .S_AXI_ACLK(S_AXI_ACLK),
        .dap_readdata(dap_readdata),
        .dap_recv_buffer_select(dap_recv_buffer_select),
        .dap_rni_select(dap_rni_select),
        .dap_send_buffer_select(dap_send_buffer_select),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .p_3_out(p_3_out),
        .p_8_in(p_8_in),
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generic_nios_to_3D_noc interface
       (.ADDRARDADDR({interface_n_4,RAM_reg}),
        .ADDRBWRADDR(send_buffer_address),
        .AR(Reset),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .D(D),
        .E(E),
        .FROM_NOC(FROM_NOC),
        .HeartBeat(HeartBeat),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .NoC_IRQ(NoC_IRQ),
        .Q(recv_buffer_address),
        .RAM_reg(recv_buffer_writedata),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[4:1]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[4:1]),
        .\S_AXI_AWADDR[7] (\S_AXI_AWADDR[7] ),
        .\S_AXI_AWADDR[8] (\S_AXI_AWADDR[8] ),
        .\S_AXI_AWADDR[8]_0 (\S_AXI_AWADDR[8]_0 ),
        .\S_AXI_AWADDR[8]_1 (\S_AXI_AWADDR[8]_1 ),
        .S_AXI_WDATA(S_AXI_WDATA[14:0]),
        .Sync(Sync),
        .TO_NOC(TO_NOC),
        .WEBWE(recv_buffer_write2),
        .\channel_nr_reg[3]_0 (interface_n_1),
        .\command_reg_reg[14]_0 (\command_reg_reg[14] ),
        .dap_address(dap_address),
        .dap_read(dap_read),
        .dap_read_0(RAM_reg_0),
        .dap_read_1(dap_read_0),
        .dap_write(dap_write),
        .dap_writedata(dap_writedata[14:0]),
        .out0(out0),
        .p_2_out(p_2_out),
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
        .D(D[0]),
        .Q(rni_readdata_delayed[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[0]),
        .Q(rni_readdata_delayed[10]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[1]),
        .Q(rni_readdata_delayed[11]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[2]),
        .Q(rni_readdata_delayed[12]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[3]),
        .Q(rni_readdata_delayed[13]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[4]),
        .Q(rni_readdata_delayed[14]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[5]),
        .Q(rni_readdata_delayed[15]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[6]),
        .Q(rni_readdata_delayed[16]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[7]),
        .Q(rni_readdata_delayed[17]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[8]),
        .Q(rni_readdata_delayed[18]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[9]),
        .Q(rni_readdata_delayed[19]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[1]),
        .Q(rni_readdata_delayed[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[10]),
        .Q(rni_readdata_delayed[20]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[11]),
        .Q(rni_readdata_delayed[21]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[12]),
        .Q(rni_readdata_delayed[22]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[13]),
        .Q(rni_readdata_delayed[23]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[14]),
        .Q(rni_readdata_delayed[24]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[15]),
        .Q(rni_readdata_delayed[25]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[16]),
        .Q(rni_readdata_delayed[26]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[17]),
        .Q(rni_readdata_delayed[27]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[18]),
        .Q(rni_readdata_delayed[28]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[19]),
        .Q(rni_readdata_delayed[29]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[2]),
        .Q(rni_readdata_delayed[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[20]),
        .Q(rni_readdata_delayed[30]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(Bus_RNW_reg_reg_0[21]),
        .Q(rni_readdata_delayed[31]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[3]),
        .Q(rni_readdata_delayed[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[4]),
        .Q(rni_readdata_delayed[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[5]),
        .Q(rni_readdata_delayed[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[6]),
        .Q(rni_readdata_delayed[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[7]),
        .Q(rni_readdata_delayed[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[8]),
        .Q(rni_readdata_delayed[8]));
  FDCE #(
    .INIT(1'b0)) 
    \rni_readdata_delayed_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(Reset),
        .D(D[9]),
        .Q(rni_readdata_delayed[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b
   (p_3_out,
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
    p_1_out,
    dap_recv_buffer_select);
  output [15:0]p_3_out;
  output [15:0]p_2_out;
  output [15:0]dap_readdata;
  input S_AXI_ACLK;
  input p_8_in;
  input [4:0]ADDRARDADDR;
  input [4:0]ADDRBWRADDR;
  input [15:0]send_buffer_writedata1;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input [15:0]Q;
  input dap_rni_select;
  input dap_send_buffer_select;
  input [15:0]p_1_out;
  input dap_recv_buffer_select;

  wire [4:0]ADDRARDADDR;
  wire [4:0]ADDRBWRADDR;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [15:0]Q;
  wire S_AXI_ACLK;
  wire [15:0]dap_readdata;
  wire dap_recv_buffer_select;
  wire dap_rni_select;
  wire dap_send_buffer_select;
  wire [15:0]p_1_out;
  wire [15:0]p_2_out;
  wire [15:0]p_3_out;
  wire p_8_in;
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
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(p_3_out),
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
        .I2(p_3_out[0]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[0]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[0]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[17]_INST_0 
       (.I0(Q[1]),
        .I1(dap_rni_select),
        .I2(p_3_out[1]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[1]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[1]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[18]_INST_0 
       (.I0(Q[2]),
        .I1(dap_rni_select),
        .I2(p_3_out[2]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[2]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[2]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[19]_INST_0 
       (.I0(Q[3]),
        .I1(dap_rni_select),
        .I2(p_3_out[3]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[3]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[3]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[20]_INST_0 
       (.I0(Q[4]),
        .I1(dap_rni_select),
        .I2(p_3_out[4]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[4]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[4]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[21]_INST_0 
       (.I0(Q[5]),
        .I1(dap_rni_select),
        .I2(p_3_out[5]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[5]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[5]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[22]_INST_0 
       (.I0(Q[6]),
        .I1(dap_rni_select),
        .I2(p_3_out[6]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[6]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[6]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[23]_INST_0 
       (.I0(Q[7]),
        .I1(dap_rni_select),
        .I2(p_3_out[7]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[7]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[7]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[24]_INST_0 
       (.I0(Q[8]),
        .I1(dap_rni_select),
        .I2(p_3_out[8]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[8]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[8]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[25]_INST_0 
       (.I0(Q[9]),
        .I1(dap_rni_select),
        .I2(p_3_out[9]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[9]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[9]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[26]_INST_0 
       (.I0(Q[10]),
        .I1(dap_rni_select),
        .I2(p_3_out[10]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[10]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[10]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[27]_INST_0 
       (.I0(Q[11]),
        .I1(dap_rni_select),
        .I2(p_3_out[11]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[11]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[11]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[28]_INST_0 
       (.I0(Q[12]),
        .I1(dap_rni_select),
        .I2(p_3_out[12]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[12]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[12]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[29]_INST_0 
       (.I0(Q[13]),
        .I1(dap_rni_select),
        .I2(p_3_out[13]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[13]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[13]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[30]_INST_0 
       (.I0(Q[14]),
        .I1(dap_rni_select),
        .I2(p_3_out[14]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[14]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[14]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[31]_INST_0 
       (.I0(Q[15]),
        .I1(dap_rni_select),
        .I2(p_3_out[15]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[15]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[15]));
endmodule

(* ORIG_REF_NAME = "rams_16b" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b_0
   (p_3_out,
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
    p_1_out,
    dap_recv_buffer_select);
  output [15:0]p_3_out;
  output [15:0]p_2_out;
  output [15:0]dap_readdata;
  input S_AXI_ACLK;
  input p_8_in;
  input [4:0]ADDRARDADDR;
  input [4:0]ADDRBWRADDR;
  input [15:0]send_buffer_writedata1;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input [15:0]Q;
  input dap_rni_select;
  input dap_send_buffer_select;
  input [15:0]p_1_out;
  input dap_recv_buffer_select;

  wire [4:0]ADDRARDADDR;
  wire [4:0]ADDRBWRADDR;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [15:0]Q;
  wire S_AXI_ACLK;
  wire [15:0]dap_readdata;
  wire dap_recv_buffer_select;
  wire dap_rni_select;
  wire dap_send_buffer_select;
  wire [15:0]p_1_out;
  wire [15:0]p_2_out;
  wire [15:0]p_3_out;
  wire p_8_in;
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
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(p_3_out),
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
        .I2(p_3_out[0]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[0]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[0]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[10]_INST_0 
       (.I0(Q[10]),
        .I1(dap_rni_select),
        .I2(p_3_out[10]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[10]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[10]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[11]_INST_0 
       (.I0(Q[11]),
        .I1(dap_rni_select),
        .I2(p_3_out[11]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[11]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[11]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[12]_INST_0 
       (.I0(Q[12]),
        .I1(dap_rni_select),
        .I2(p_3_out[12]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[12]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[12]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[13]_INST_0 
       (.I0(Q[13]),
        .I1(dap_rni_select),
        .I2(p_3_out[13]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[13]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[13]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[14]_INST_0 
       (.I0(Q[14]),
        .I1(dap_rni_select),
        .I2(p_3_out[14]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[14]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[14]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[15]_INST_0 
       (.I0(Q[15]),
        .I1(dap_rni_select),
        .I2(p_3_out[15]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[15]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[15]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[1]_INST_0 
       (.I0(Q[1]),
        .I1(dap_rni_select),
        .I2(p_3_out[1]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[1]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[1]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[2]_INST_0 
       (.I0(Q[2]),
        .I1(dap_rni_select),
        .I2(p_3_out[2]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[2]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[2]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[3]_INST_0 
       (.I0(Q[3]),
        .I1(dap_rni_select),
        .I2(p_3_out[3]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[3]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[3]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[4]_INST_0 
       (.I0(Q[4]),
        .I1(dap_rni_select),
        .I2(p_3_out[4]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[4]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[4]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[5]_INST_0 
       (.I0(Q[5]),
        .I1(dap_rni_select),
        .I2(p_3_out[5]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[5]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[5]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[6]_INST_0 
       (.I0(Q[6]),
        .I1(dap_rni_select),
        .I2(p_3_out[6]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[6]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[6]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[7]_INST_0 
       (.I0(Q[7]),
        .I1(dap_rni_select),
        .I2(p_3_out[7]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[7]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[7]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[8]_INST_0 
       (.I0(Q[8]),
        .I1(dap_rni_select),
        .I2(p_3_out[8]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[8]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[8]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \dap_readdata[9]_INST_0 
       (.I0(Q[9]),
        .I1(dap_rni_select),
        .I2(p_3_out[9]),
        .I3(dap_send_buffer_select),
        .I4(p_1_out[9]),
        .I5(dap_recv_buffer_select),
        .O(dap_readdata[9]));
endmodule

(* ORIG_REF_NAME = "rams_16b" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized2
   (p_1_out,
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
  output [15:0]p_1_out;
  output [15:0]send_buffer_writedata1;
  output RAM_reg_0;
  input S_AXI_ACLK;
  input p_7_in;
  input [5:0]ADDRARDADDR;
  input [5:0]ADDRBWRADDR;
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

  wire [5:0]ADDRARDADDR;
  wire [5:0]ADDRBWRADDR;
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
  wire [15:0]p_1_out;
  wire p_7_in;
  wire [15:0]send_buffer_writedata1;
  wire [1:0]NLW_RAM_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_DOPBDOP_UNCONNECTED;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(S_AXI_ACLK),
        .CLKBWRCLK(S_AXI_ACLK),
        .DIADI(send_buffer_writedata1),
        .DIBDI(\data_reg_reg[15] ),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(p_1_out),
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
       (.I0(dap_writedata[12]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[12]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[12]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_11__0
       (.I0(dap_writedata[11]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[11]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_12__0
       (.I0(dap_writedata[10]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[10]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[10]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_13__0
       (.I0(dap_writedata[9]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[9]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_14__0
       (.I0(dap_writedata[8]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[8]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_15__0
       (.I0(dap_writedata[7]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[7]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_16__0
       (.I0(dap_writedata[6]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[6]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_17
       (.I0(dap_writedata[5]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[5]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_18
       (.I0(dap_writedata[4]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[4]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_19
       (.I0(dap_writedata[3]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[3]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_20
       (.I0(dap_writedata[2]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[2]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_21
       (.I0(dap_writedata[1]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[1]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_22
       (.I0(dap_writedata[0]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[0]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[0]));
  LUT2 #(
    .INIT(4'hE)) 
    RAM_reg_i_24
       (.I0(dap_write),
        .I1(dap_read),
        .O(RAM_reg_0));
  LUT6 #(
    .INIT(64'hFFFF1D0000001D00)) 
    RAM_reg_i_7
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR),
        .I3(S_AXI_WDATA[15]),
        .I4(RAM_reg_0),
        .I5(dap_writedata[15]),
        .O(send_buffer_writedata1[15]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_8__0
       (.I0(dap_writedata[14]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[14]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAA303F0000)) 
    RAM_reg_i_9__0
       (.I0(dap_writedata[13]),
        .I1(S_AXI_ARADDR),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_AWADDR),
        .I4(S_AXI_WDATA[13]),
        .I5(RAM_reg_0),
        .O(send_buffer_writedata1[13]));
endmodule

(* ORIG_REF_NAME = "rams_16b" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized4
   (p_1_out,
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
  output [15:0]p_1_out;
  output [15:0]send_buffer_writedata1;
  input S_AXI_ACLK;
  input p_7_in;
  input [5:0]ADDRARDADDR;
  input [5:0]ADDRBWRADDR;
  input [15:0]\data_reg_reg[31] ;
  input [0:0]WEA;
  input [0:0]WEBWE;
  input [0:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [0:0]S_AXI_ARADDR;
  input [15:0]S_AXI_WDATA;
  input dap_read;
  input [15:0]dap_writedata;

  wire [5:0]ADDRARDADDR;
  wire [5:0]ADDRBWRADDR;
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
  wire [15:0]p_1_out;
  wire p_7_in;
  wire [15:0]send_buffer_writedata1;
  wire [1:0]NLW_RAM_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_DOPBDOP_UNCONNECTED;

  (* CLOCK_DOMAINS = "COMMON" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
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
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,ADDRARDADDR,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(S_AXI_ACLK),
        .CLKBWRCLK(S_AXI_ACLK),
        .DIADI(send_buffer_writedata1),
        .DIBDI(\data_reg_reg[31] ),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(p_1_out),
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
    RAM_reg_i_6
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory
   (p_3_out,
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
    p_1_out,
    dap_recv_buffer_select);
  output [31:0]p_3_out;
  output [31:0]p_2_out;
  output [31:0]dap_readdata;
  input S_AXI_ACLK;
  input p_8_in;
  input [4:0]ADDRARDADDR;
  input [4:0]ADDRBWRADDR;
  input [31:0]send_buffer_writedata1;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input [31:0]Q;
  input dap_rni_select;
  input dap_send_buffer_select;
  input [31:0]p_1_out;
  input dap_recv_buffer_select;

  wire [4:0]ADDRARDADDR;
  wire [4:0]ADDRBWRADDR;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [31:0]Q;
  wire S_AXI_ACLK;
  wire [31:0]dap_readdata;
  wire dap_recv_buffer_select;
  wire dap_rni_select;
  wire dap_send_buffer_select;
  wire [31:0]p_1_out;
  wire [31:0]p_2_out;
  wire [31:0]p_3_out;
  wire p_8_in;
  wire [31:0]send_buffer_writedata1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b HW
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .Q(Q[31:16]),
        .S_AXI_ACLK(S_AXI_ACLK),
        .dap_readdata(dap_readdata[31:16]),
        .dap_recv_buffer_select(dap_recv_buffer_select),
        .dap_rni_select(dap_rni_select),
        .dap_send_buffer_select(dap_send_buffer_select),
        .p_1_out(p_1_out[31:16]),
        .p_2_out(p_2_out[31:16]),
        .p_3_out(p_3_out[31:16]),
        .p_8_in(p_8_in),
        .send_buffer_writedata1(send_buffer_writedata1[31:16]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b_0 LW
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .Q(Q[15:0]),
        .S_AXI_ACLK(S_AXI_ACLK),
        .dap_readdata(dap_readdata[15:0]),
        .dap_recv_buffer_select(dap_recv_buffer_select),
        .dap_rni_select(dap_rni_select),
        .dap_send_buffer_select(dap_send_buffer_select),
        .p_1_out(p_1_out[15:0]),
        .p_2_out(p_2_out[15:0]),
        .p_3_out(p_3_out[15:0]),
        .p_8_in(p_8_in),
        .send_buffer_writedata1(send_buffer_writedata1[15:0]));
endmodule

(* ORIG_REF_NAME = "rni_memory" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory__parameterized0
   (p_1_out,
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
  output [31:0]p_1_out;
  output [31:0]send_buffer_writedata1;
  output RAM_reg;
  input S_AXI_ACLK;
  input p_7_in;
  input [5:0]ADDRARDADDR;
  input \toggle_bit_reg[0] ;
  input [4:0]Q;
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

  wire [5:0]ADDRARDADDR;
  wire [4:0]Q;
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
  wire [31:0]p_1_out;
  wire p_7_in;
  wire [31:0]send_buffer_writedata1;
  wire \toggle_bit_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized4 HW
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
        .p_1_out(p_1_out[31:16]),
        .p_7_in(p_7_in),
        .send_buffer_writedata1(send_buffer_writedata1[31:16]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized2 LW
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR({\toggle_bit_reg[0] ,Q}),
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
        .p_1_out(p_1_out[15:0]),
        .p_7_in(p_7_in),
        .send_buffer_writedata1(send_buffer_writedata1[15:0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (S_AXI_RVALID,
    S_AXI_BVALID,
    E,
    RAM_reg,
    RAM_reg_0,
    RAM_reg_1,
    \command_reg_reg[14] ,
    D,
    \rni_readdata_delayed_reg[10] ,
    S_AXI_ARREADY,
    \rni_readdata_delayed_reg[10]_0 ,
    \rni_readdata_delayed_reg[10]_1 ,
    ipif_Bus2IP_RdCE,
    S_AXI_WREADY,
    WEA,
    RAM_reg_2,
    RAM_reg_3,
    p_8_in,
    \FSM_onehot_xmit_state_reg[0] ,
    \FSM_onehot_xmit_state_reg[0]_0 ,
    \rni_readdata_delayed_reg[6] ,
    rni_chipselect,
    \rni_readdata_delayed_reg[3] ,
    S_AXI_RDATA,
    Reset,
    S_AXI_ACLK,
    \S_AXI_AWADDR[8] ,
    old_slave_read,
    S_AXI_ARESETN,
    S_AXI_ARVALID,
    dap_write,
    dap_read,
    \S_AXI_AWADDR[6] ,
    dap_address,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    dap_read_0,
    p_1_out,
    p_3_out,
    \s_pid_reg[4][3] ,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_BREADY);
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  output [0:0]E;
  output RAM_reg;
  output RAM_reg_0;
  output RAM_reg_1;
  output \command_reg_reg[14] ;
  output [21:0]D;
  output \rni_readdata_delayed_reg[10] ;
  output S_AXI_ARREADY;
  output \rni_readdata_delayed_reg[10]_0 ;
  output \rni_readdata_delayed_reg[10]_1 ;
  output ipif_Bus2IP_RdCE;
  output S_AXI_WREADY;
  output [0:0]WEA;
  output RAM_reg_2;
  output [0:0]RAM_reg_3;
  output p_8_in;
  output \FSM_onehot_xmit_state_reg[0] ;
  output \FSM_onehot_xmit_state_reg[0]_0 ;
  output \rni_readdata_delayed_reg[6] ;
  output rni_chipselect;
  output \rni_readdata_delayed_reg[3] ;
  output [31:0]S_AXI_RDATA;
  input Reset;
  input S_AXI_ACLK;
  input \S_AXI_AWADDR[8] ;
  input old_slave_read;
  input S_AXI_ARESETN;
  input S_AXI_ARVALID;
  input dap_write;
  input dap_read;
  input [1:0]\S_AXI_AWADDR[6] ;
  input [6:0]dap_address;
  input [6:0]S_AXI_ARADDR;
  input [6:0]S_AXI_AWADDR;
  input dap_read_0;
  input [31:0]p_1_out;
  input [31:0]p_3_out;
  input [9:0]\s_pid_reg[4][3] ;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_BREADY;

  wire [21:0]D;
  wire [0:0]E;
  wire \FSM_onehot_xmit_state_reg[0] ;
  wire \FSM_onehot_xmit_state_reg[0]_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2] ;
  wire [31:0]IP2Bus_Data;
  wire I_DECODER_n_25;
  wire I_DECODER_n_26;
  wire I_DECODER_n_68;
  wire I_DECODER_n_69;
  wire RAM_reg;
  wire RAM_reg_0;
  wire RAM_reg_1;
  wire RAM_reg_2;
  wire [0:0]RAM_reg_3;
  wire Reset;
  wire S_AXI_ACLK;
  wire [6:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [6:0]S_AXI_AWADDR;
  wire [1:0]\S_AXI_AWADDR[6] ;
  wire \S_AXI_AWADDR[8] ;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [0:0]WEA;
  wire \command_reg_reg[14] ;
  wire [6:0]dap_address;
  wire dap_read;
  wire dap_read_0;
  wire dap_write;
  wire ipif_Bus2IP_RdCE;
  wire old_slave_read;
  wire [31:0]p_1_out;
  wire [31:0]p_3_out;
  wire p_8_in;
  wire [3:0]plusOp;
  wire rni_chipselect;
  wire \rni_readdata_delayed[31]_i_5_n_0 ;
  wire \rni_readdata_delayed_reg[10] ;
  wire \rni_readdata_delayed_reg[10]_0 ;
  wire \rni_readdata_delayed_reg[10]_1 ;
  wire \rni_readdata_delayed_reg[3] ;
  wire \rni_readdata_delayed_reg[6] ;
  wire rst;
  wire s_axi_rdata_i;
  wire [9:0]\s_pid_reg[4][3] ;
  wire [1:0]state;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire timeout;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFE200E2)) 
    \FSM_onehot_xmit_state[4]_i_8 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARADDR[3]),
        .I3(dap_read_0),
        .I4(dap_address[3]),
        .I5(\rni_readdata_delayed_reg[10]_1 ),
        .O(\FSM_onehot_xmit_state_reg[0]_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.D(D),
        .E(E),
        .\FSM_onehot_xmit_state_reg[0] (\FSM_onehot_xmit_state_reg[0] ),
        .Q(timeout),
        .RAM_reg(RAM_reg_2),
        .RAM_reg_0(RAM_reg_3),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[6:5]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[6:5]),
        .\S_AXI_AWADDR[2] (RAM_reg_0),
        .\S_AXI_AWADDR[6] (\S_AXI_AWADDR[6] ),
        .\S_AXI_AWADDR[7] (\rni_readdata_delayed_reg[10]_0 ),
        .\S_AXI_AWADDR[8] (\S_AXI_AWADDR[8] ),
        .\S_AXI_AWADDR[8]_0 (\rni_readdata_delayed_reg[10]_1 ),
        .\S_AXI_AWADDR[8]_1 (\rni_readdata_delayed[31]_i_5_n_0 ),
        .\S_AXI_AWADDR[8]_2 (\FSM_onehot_xmit_state_reg[0]_0 ),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_AWVALID_0(\state[1]_i_2_n_0 ),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .WEA(WEA),
        .\command_reg_reg[14] (\command_reg_reg[14] ),
        .dap_address(dap_address[6:5]),
        .\dap_address[2] (RAM_reg_1),
        .\dap_address_1__s_port_] (RAM_reg),
        .dap_read(dap_read),
        .dap_read_0(dap_read_0),
        .dap_write(dap_write),
        .ipif_Bus2IP_RdCE(ipif_Bus2IP_RdCE),
        .old_slave_read(old_slave_read),
        .p_1_out(p_1_out),
        .p_3_out(p_3_out),
        .p_8_in(p_8_in),
        .rni_chipselect(rni_chipselect),
        .\rni_readdata_delayed_reg[10] (\rni_readdata_delayed_reg[10] ),
        .s_axi_bvalid_i_reg(I_DECODER_n_69),
        .\s_axi_rdata_i_reg[31] (IP2Bus_Data),
        .s_axi_rvalid_i_reg(I_DECODER_n_68),
        .s_axi_rvalid_i_reg_0(\state[1]_i_3_n_0 ),
        .\s_pid_reg[4][3] (\s_pid_reg[4][3] ),
        .\state_reg[1] ({I_DECODER_n_25,I_DECODER_n_26}),
        .\state_reg[1]_0 (state));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    RAM_reg_i_4__0
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[2]),
        .I3(dap_write),
        .I4(dap_read),
        .I5(dap_address[2]),
        .O(RAM_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    RAM_reg_i_5__0
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[1]),
        .I3(dap_write),
        .I4(dap_read),
        .I5(dap_address[1]),
        .O(RAM_reg));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    RAM_reg_i_6__0
       (.I0(dap_address[0]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(S_AXI_ARADDR[0]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_AWADDR[0]),
        .O(RAM_reg_0));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \rni_readdata_delayed[31]_i_3 
       (.I0(dap_address[3]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_AWADDR[3]),
        .O(\rni_readdata_delayed_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \rni_readdata_delayed[31]_i_4 
       (.I0(dap_address[4]),
        .I1(dap_write),
        .I2(dap_read),
        .I3(S_AXI_ARADDR[4]),
        .I4(S_AXI_ARVALID),
        .I5(S_AXI_AWADDR[4]),
        .O(\rni_readdata_delayed_reg[10]_1 ));
  LUT6 #(
    .INIT(64'h000000000000001D)) 
    \rni_readdata_delayed[31]_i_5 
       (.I0(RAM_reg_0),
        .I1(RAM_reg),
        .I2(RAM_reg_1),
        .I3(\S_AXI_AWADDR[6] [0]),
        .I4(\S_AXI_AWADDR[6] [1]),
        .I5(\FSM_onehot_xmit_state_reg[0]_0 ),
        .O(\rni_readdata_delayed[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \rni_readdata_delayed[7]_i_3 
       (.I0(\FSM_onehot_xmit_state_reg[0]_0 ),
        .I1(RAM_reg),
        .I2(RAM_reg_1),
        .I3(RAM_reg_0),
        .O(\rni_readdata_delayed_reg[6] ));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    \rni_readdata_delayed[8]_i_5 
       (.I0(\rni_readdata_delayed_reg[10]_1 ),
        .I1(S_AXI_AWADDR[3]),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARADDR[3]),
        .I4(dap_read_0),
        .I5(dap_address[3]),
        .O(\rni_readdata_delayed_reg[3] ));
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
        .D(I_DECODER_n_69),
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
        .D(IP2Bus_Data[0]),
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
        .D(IP2Bus_Data[1]),
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
        .D(IP2Bus_Data[2]),
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
        .D(IP2Bus_Data[3]),
        .Q(S_AXI_RDATA[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[4]),
        .Q(S_AXI_RDATA[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[5]),
        .Q(S_AXI_RDATA[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[6]),
        .Q(S_AXI_RDATA[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[7]),
        .Q(S_AXI_RDATA[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[8]),
        .Q(S_AXI_RDATA[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[9]),
        .Q(S_AXI_RDATA[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_68),
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
        .D(I_DECODER_n_26),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(I_DECODER_n_25),
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
