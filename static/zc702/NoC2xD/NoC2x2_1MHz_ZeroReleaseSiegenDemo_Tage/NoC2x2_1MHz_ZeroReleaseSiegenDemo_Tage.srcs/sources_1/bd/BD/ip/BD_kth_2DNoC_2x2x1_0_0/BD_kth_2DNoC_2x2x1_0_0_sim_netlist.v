// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
// Date        : Mon Oct 31 17:12:50 2016
// Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tage/DegreeProject/zc702/NoC2xD/NoC2x2_1MHz_ZeroReleaseSiegenDemo_Tage/NoC2x2_1MHz_ZeroReleaseSiegenDemo_Tage.srcs/sources_1/bd/BD/ip/BD_kth_2DNoC_2x2x1_0_0/BD_kth_2DNoC_2x2x1_0_0_sim_netlist.v
// Design      : BD_kth_2DNoC_2x2x1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BD_kth_2DNoC_2x2x1_0_0,kth_2DNoC_2x2x1_c1_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "kth_2DNoC_2x2x1_c1_v1_0,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module BD_kth_2DNoC_2x2x1_0_0
   (clk,
    reset,
    To_NoC_0,
    From_NoC_0,
    Sync_0,
    HeartBeat_0,
    To_NoC_1,
    From_NoC_1,
    Sync_1,
    HeartBeat_1,
    To_NoC_2,
    From_NoC_2,
    Sync_2,
    HeartBeat_2,
    To_NoC_3,
    From_NoC_3,
    Sync_3,
    HeartBeat_3);
  input clk;
  input reset;
  input [55:0]To_NoC_0;
  output [55:0]From_NoC_0;
  output [1:0]Sync_0;
  output HeartBeat_0;
  input [55:0]To_NoC_1;
  output [55:0]From_NoC_1;
  output [1:0]Sync_1;
  output HeartBeat_1;
  input [55:0]To_NoC_2;
  output [55:0]From_NoC_2;
  output [1:0]Sync_2;
  output HeartBeat_2;
  input [55:0]To_NoC_3;
  output [55:0]From_NoC_3;
  output [1:0]Sync_3;
  output HeartBeat_3;

  wire [55:0]From_NoC_0;
  wire [55:0]From_NoC_1;
  wire [55:0]From_NoC_2;
  wire [55:0]From_NoC_3;
  wire HeartBeat_0;
  wire [1:0]Sync_0;
  wire [1:0]Sync_1;
  wire [1:0]Sync_2;
  wire [1:0]Sync_3;
  wire [55:0]To_NoC_0;
  wire [55:0]To_NoC_1;
  wire [55:0]To_NoC_2;
  wire [55:0]To_NoC_3;
  wire clk;
  wire reset;

  assign HeartBeat_1 = HeartBeat_0;
  assign HeartBeat_2 = HeartBeat_0;
  assign HeartBeat_3 = HeartBeat_0;
  BD_kth_2DNoC_2x2x1_0_0_kth_2DNoC_2x2x1_c1_v1_0 U0
       (.From_NoC_0(From_NoC_0),
        .From_NoC_1(From_NoC_1),
        .From_NoC_2(From_NoC_2),
        .From_NoC_3(From_NoC_3),
        .HeartBeat_0(HeartBeat_0),
        .To_NoC_0(To_NoC_0),
        .To_NoC_1(To_NoC_1),
        .To_NoC_2(To_NoC_2),
        .To_NoC_3(To_NoC_3),
        .clk(clk),
        .read_R({Sync_3[0],Sync_2[0],Sync_1[0],Sync_0[0]}),
        .reset(reset),
        .write_R({Sync_3[1],Sync_2[1],Sync_1[1],Sync_0[1]}));
endmodule

(* ORIG_REF_NAME = "NoC_2D_Parallel" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_2D_Parallel
   (From_NoC_1,
    read_R,
    write_R,
    From_NoC_0,
    From_NoC_2,
    From_NoC_3,
    reset,
    clk,
    To_NoC_1,
    To_NoC_0,
    To_NoC_2,
    To_NoC_3);
  output [55:0]From_NoC_1;
  output [3:0]read_R;
  output [3:0]write_R;
  output [55:0]From_NoC_0;
  output [55:0]From_NoC_2;
  output [55:0]From_NoC_3;
  input reset;
  input clk;
  input [55:0]To_NoC_1;
  input [55:0]To_NoC_0;
  input [55:0]To_NoC_2;
  input [55:0]To_NoC_3;

  wire [55:0]From_NoC_0;
  wire [55:0]From_NoC_1;
  wire [55:0]From_NoC_2;
  wire [55:0]From_NoC_3;
  wire [55:0]To_NoC_0;
  wire [55:0]To_NoC_1;
  wire [55:0]To_NoC_2;
  wire [55:0]To_NoC_3;
  wire clk;
  wire [55:0]\interconnect_out[0][0]_21 ;
  wire [55:0]\interconnect_out[0][2]_22 ;
  wire [55:0]\interconnect_out[1][0]_10 ;
  wire [55:0]\interconnect_out[1][3]_11 ;
  wire [55:0]\interconnect_out[2][1]_37 ;
  wire [55:0]\interconnect_out[2][2]_38 ;
  wire [55:0]\interconnect_out[3][1]_53 ;
  wire [55:0]\interconnect_out[3][3]_54 ;
  wire [3:0]read_R;
  wire reset;
  wire [3:0]write_R;

  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch \UX[0].UY[0].UZ[0].UD 
       (.From_NoC_0(From_NoC_0),
        .\Outport[0] (\interconnect_out[0][0]_21 ),
        .\Outport[2] (\interconnect_out[0][2]_22 ),
        .Q(\interconnect_out[2][1]_37 ),
        .To_NoC_0(To_NoC_0),
        .clk(clk),
        .\mem_reg[55] (\interconnect_out[1][3]_11 ),
        .read_R(read_R[0]),
        .reset(reset),
        .write_R(write_R[0]));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized1 \UX[0].UY[1].UZ[0].UD 
       (.From_NoC_2(From_NoC_2),
        .\Inport[1] (\interconnect_out[0][0]_21 ),
        .\Outport[1] (\interconnect_out[2][1]_37 ),
        .\Outport[2] (\interconnect_out[2][2]_38 ),
        .Q(\interconnect_out[3][3]_54 ),
        .To_NoC_2(To_NoC_2),
        .clk(clk),
        .read_R(read_R[2]),
        .reset(reset),
        .write_R(write_R[2]));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized3 \UX[1].UY[0].UZ[0].UD 
       (.D(\interconnect_out[0][2]_22 ),
        .From_NoC_1(From_NoC_1),
        .\G0.mem_reg[55] (\interconnect_out[1][0]_10 ),
        .\G0.mem_reg[55]_0 (\interconnect_out[1][3]_11 ),
        .Q(\interconnect_out[3][1]_53 ),
        .To_NoC_1(To_NoC_1),
        .clk(clk),
        .read_R(read_R[1]),
        .reset(reset),
        .write_R(write_R[1]));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized5 \UX[1].UY[1].UZ[0].UD 
       (.From_NoC_3(From_NoC_3),
        .\Inport[1] (\interconnect_out[1][0]_10 ),
        .\Inport[3] (\interconnect_out[2][2]_38 ),
        .\Outport[1] (\interconnect_out[3][1]_53 ),
        .\Outport[3] (\interconnect_out[3][3]_54 ),
        .To_NoC_3(To_NoC_3),
        .clk(clk),
        .read_R(read_R[3]),
        .reset(reset),
        .write_R(write_R[3]));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_Switch" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch
   (\Outport[0] ,
    \Outport[2] ,
    From_NoC_0,
    read_R,
    write_R,
    reset,
    Q,
    clk,
    \mem_reg[55] ,
    To_NoC_0);
  output [55:0]\Outport[0] ;
  output [55:0]\Outport[2] ;
  output [55:0]From_NoC_0;
  output [0:0]read_R;
  output [0:0]write_R;
  input reset;
  input [55:0]Q;
  input clk;
  input [55:0]\mem_reg[55] ;
  input [55:0]To_NoC_0;

  wire [55:0]From_NoC_0;
  wire [55:0]\Outport[0] ;
  wire [55:0]\Outport[2] ;
  wire [55:0]Q;
  wire [55:0]\Q[2]__0 ;
  wire [55:0]\Q[6]__0 ;
  wire [55:0]Q_0;
  wire [55:0]To_NoC_0;
  wire clk;
  wire [1:0]ctrl_cycle;
  wire \ctrl_cycle[0]_i_1__0_n_0 ;
  wire \ctrl_cycle[1]_i_1__0_n_0 ;
  wire gtOp;
  wire load_enable;
  wire [55:0]\mem_reg[55] ;
  wire [55:0]\next_outport[0]_24 ;
  wire [55:0]\next_outport[2]_25 ;
  wire [55:0]\next_outport[6]_26 ;
  wire \next_switch_matrix[6]_23 ;
  wire [2:0]\next_switch_matrix_reg[0]__0__0 ;
  wire [2:0]\next_switch_matrix_reg[1]__0__0 ;
  wire [2:0]\next_switch_matrix_reg[2]__0__0 ;
  wire [2:0]\next_switch_matrix_reg[3]__0__0 ;
  wire [2:0]\next_switch_matrix_reg[4]__0__0 ;
  wire [2:0]\next_switch_matrix_reg[5]__0__0 ;
  wire [2:0]\next_switch_matrix_reg[6]__0__0 ;
  wire [1:0]\port_wants_to[2][2]_17 ;
  wire [1:1]\port_wants_to[6][0]_20 ;
  wire \pres_switch_matrix[0][2]_i_1__0_n_0 ;
  wire [2:0]\pres_switch_matrix_reg[0]__0__0 ;
  wire [2:0]\pres_switch_matrix_reg[2]__0 ;
  wire [2:0]\pres_switch_matrix_reg[6]__0__0 ;
  wire [0:0]read_R;
  wire read_R_i_1_n_0;
  wire read_R_i_2_n_0;
  wire read_R_i_3_n_0;
  wire read_R_i_4_n_0;
  wire read_R_i_5_n_0;
  wire \recv[0].dir_n_0 ;
  wire \recv[0].dir_n_1 ;
  wire \recv[0].dir_n_59 ;
  wire \recv[0].dir_n_60 ;
  wire \recv[0].dir_n_61 ;
  wire \recv[0].dir_n_62 ;
  wire \recv[2].dir_n_56 ;
  wire \recv[2].dir_n_57 ;
  wire \recv[2].dir_n_58 ;
  wire \recv[2].dir_n_59 ;
  wire \recv[2].dir_n_62 ;
  wire \recv[2].dir_n_63 ;
  wire \recv[2].dir_n_64 ;
  wire \recv[2].dir_n_65 ;
  wire \recv[6].dir_n_56 ;
  wire \recv[6].dir_n_57 ;
  wire \recv[6].dir_n_59 ;
  wire \recv[6].dir_n_60 ;
  wire \recv[6].dir_n_62 ;
  wire \recv[6].dir_n_63 ;
  wire \recv[6].dir_n_64 ;
  wire \recv[6].dir_n_65 ;
  wire reset;
  wire [0:0]write_R;
  wire \xmit[6].dir_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ctrl_cycle[0]_i_1__0 
       (.I0(ctrl_cycle[0]),
        .O(\ctrl_cycle[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctrl_cycle[1]_i_1__0 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\ctrl_cycle[1]_i_1__0_n_0 ));
  FDRE \ctrl_cycle_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ctrl_cycle[0]_i_1__0_n_0 ),
        .Q(ctrl_cycle[0]),
        .R(reset));
  FDRE \ctrl_cycle_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ctrl_cycle[1]_i_1__0_n_0 ),
        .Q(ctrl_cycle[1]),
        .R(reset));
  LUT2 #(
    .INIT(4'h1)) 
    \next_switch_matrix[0][2]_i_1 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\next_switch_matrix[6]_23 ));
  FDSE \next_switch_matrix_reg[0][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[6].dir_n_63 ),
        .Q(\next_switch_matrix_reg[0]__0__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[0][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[0].dir_n_59 ),
        .Q(\next_switch_matrix_reg[0]__0__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[0][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[2].dir_n_63 ),
        .Q(\next_switch_matrix_reg[0]__0__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[1][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[2].dir_n_56 ),
        .Q(\next_switch_matrix_reg[1]__0__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[1][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[2].dir_n_56 ),
        .Q(\next_switch_matrix_reg[1]__0__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[2][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[6].dir_n_62 ),
        .Q(\next_switch_matrix_reg[2]__0__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[2][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[0].dir_n_62 ),
        .Q(\next_switch_matrix_reg[2]__0__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[2][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[2].dir_n_64 ),
        .Q(\next_switch_matrix_reg[2]__0__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[3][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[2].dir_n_57 ),
        .Q(\next_switch_matrix_reg[3]__0__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[3][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[2].dir_n_57 ),
        .Q(\next_switch_matrix_reg[3]__0__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[4][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[6].dir_n_59 ),
        .Q(\next_switch_matrix_reg[4]__0__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[4][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(1'b1),
        .Q(\next_switch_matrix_reg[4]__0__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[5][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[6].dir_n_60 ),
        .Q(\next_switch_matrix_reg[5]__0__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[5][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[2].dir_n_59 ),
        .Q(\next_switch_matrix_reg[5]__0__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[6].dir_n_64 ),
        .Q(\next_switch_matrix_reg[6]__0__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[0].dir_n_61 ),
        .Q(\next_switch_matrix_reg[6]__0__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_23 ),
        .D(\recv[2].dir_n_65 ),
        .Q(\next_switch_matrix_reg[6]__0__0 [2]),
        .S(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \pres_switch_matrix[0][2]_i_1__0 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\pres_switch_matrix[0][2]_i_1__0_n_0 ));
  FDSE \pres_switch_matrix_reg[0][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[0]__0__0 [0]),
        .Q(\pres_switch_matrix_reg[0]__0__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[0][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[0]__0__0 [1]),
        .Q(\pres_switch_matrix_reg[0]__0__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[0][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[0]__0__0 [2]),
        .Q(\pres_switch_matrix_reg[0]__0__0 [2]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[2][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[2]__0__0 [0]),
        .Q(\pres_switch_matrix_reg[2]__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[2][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[2]__0__0 [1]),
        .Q(\pres_switch_matrix_reg[2]__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[2][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[2]__0__0 [2]),
        .Q(\pres_switch_matrix_reg[2]__0 [2]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[6]__0__0 [0]),
        .Q(\pres_switch_matrix_reg[6]__0__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[6]__0__0 [1]),
        .Q(\pres_switch_matrix_reg[6]__0__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[6]__0__0 [2]),
        .Q(\pres_switch_matrix_reg[6]__0__0 [2]),
        .S(reset));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    read_R_i_1
       (.I0(ctrl_cycle[1]),
        .I1(ctrl_cycle[0]),
        .I2(read_R_i_2_n_0),
        .I3(read_R_i_3_n_0),
        .I4(read_R_i_4_n_0),
        .I5(read_R_i_5_n_0),
        .O(read_R_i_1_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    read_R_i_2
       (.I0(\next_switch_matrix_reg[3]__0__0 [0]),
        .I1(\next_switch_matrix_reg[3]__0__0 [2]),
        .I2(\next_switch_matrix_reg[4]__0__0 [0]),
        .I3(\next_switch_matrix_reg[4]__0__0 [2]),
        .O(read_R_i_2_n_0));
  LUT5 #(
    .INIT(32'h4F444444)) 
    read_R_i_3
       (.I0(\next_switch_matrix_reg[5]__0__0 [0]),
        .I1(\next_switch_matrix_reg[5]__0__0 [2]),
        .I2(\next_switch_matrix_reg[6]__0__0 [0]),
        .I3(\next_switch_matrix_reg[6]__0__0 [2]),
        .I4(\next_switch_matrix_reg[6]__0__0 [1]),
        .O(read_R_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    read_R_i_4
       (.I0(\next_switch_matrix_reg[1]__0__0 [2]),
        .I1(\next_switch_matrix_reg[1]__0__0 [0]),
        .O(read_R_i_4_n_0));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    read_R_i_5
       (.I0(\next_switch_matrix_reg[0]__0__0 [0]),
        .I1(\next_switch_matrix_reg[0]__0__0 [2]),
        .I2(\next_switch_matrix_reg[0]__0__0 [1]),
        .I3(\next_switch_matrix_reg[2]__0__0 [0]),
        .I4(\next_switch_matrix_reg[2]__0__0 [2]),
        .I5(\next_switch_matrix_reg[2]__0__0 [1]),
        .O(read_R_i_5_n_0));
  FDRE read_R_reg
       (.C(clk),
        .CE(1'b1),
        .D(read_R_i_1_n_0),
        .Q(read_R),
        .R(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv \recv[0].dir 
       (.D(\recv[0].dir_n_59 ),
        .E(load_enable),
        .\G0.mem_reg[33]_0 (\recv[6].dir_n_56 ),
        .\G0.mem_reg[37]_0 (\recv[6].dir_n_57 ),
        .\G0.mem_reg[55]_0 (\Q[2]__0 ),
        .\G0.mem_reg[55]_1 (\Q[6]__0 ),
        .Q(Q_0),
        .clk(clk),
        .gtOp(gtOp),
        .\mem_reg[55] (\next_outport[0]_24 ),
        .\mem_reg[55]_0 (Q),
        .\next_switch_matrix_reg[0][1] (\recv[0].dir_n_1 ),
        .\next_switch_matrix_reg[2][1] (\recv[0].dir_n_62 ),
        .\next_switch_matrix_reg[4][0] (\recv[0].dir_n_0 ),
        .\next_switch_matrix_reg[5][2] (\recv[0].dir_n_60 ),
        .\next_switch_matrix_reg[6][1] (\recv[0].dir_n_61 ),
        .\port_wants_to[2][2]_17 (\port_wants_to[2][2]_17 ),
        .\pres_switch_matrix_reg[0][2] (\pres_switch_matrix_reg[0]__0__0 ),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_8 \recv[2].dir 
       (.D(\recv[2].dir_n_56 ),
        .E(load_enable),
        .\G0.mem_reg[32]_0 (\recv[0].dir_n_59 ),
        .\G0.mem_reg[33]_0 (\recv[6].dir_n_56 ),
        .\G0.mem_reg[34]_0 (\recv[0].dir_n_1 ),
        .\G0.mem_reg[37]_0 (\recv[0].dir_n_61 ),
        .\G0.mem_reg[37]_1 (\recv[6].dir_n_57 ),
        .\G0.mem_reg[55]_0 (Q_0[55]),
        .\G0.mem_reg[55]_1 (\recv[0].dir_n_62 ),
        .\G0.mem_reg[55]_2 (\recv[0].dir_n_60 ),
        .\G0.mem_reg[55]_3 (\recv[0].dir_n_0 ),
        .\G0.mem_reg[55]_4 (\recv[6].dir_n_65 ),
        .Q(\Q[2]__0 ),
        .clk(clk),
        .gtOp(gtOp),
        .\mem_reg[55] (\mem_reg[55] ),
        .\next_switch_matrix_reg[0][2] (\recv[2].dir_n_63 ),
        .\next_switch_matrix_reg[2][2] (\recv[2].dir_n_58 ),
        .\next_switch_matrix_reg[2][2]_0 (\recv[2].dir_n_64 ),
        .\next_switch_matrix_reg[3][2] (\recv[2].dir_n_57 ),
        .\next_switch_matrix_reg[4][0] (\recv[2].dir_n_62 ),
        .\next_switch_matrix_reg[5][2] (\recv[2].dir_n_59 ),
        .\next_switch_matrix_reg[6][2] (\recv[2].dir_n_65 ),
        .\port_wants_to[2][2]_17 (\port_wants_to[2][2]_17 ),
        .\port_wants_to[6][0]_20 (\port_wants_to[6][0]_20 ),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_9 \recv[6].dir 
       (.D(\recv[6].dir_n_59 ),
        .E(load_enable),
        .\G0.mem_reg[55]_0 (\recv[2].dir_n_62 ),
        .\G0.mem_reg[55]_1 (\recv[2].dir_n_58 ),
        .\G0.mem_reg[55]_2 (\recv[2].dir_n_64 ),
        .\G0.mem_reg[55]_3 (\recv[2].dir_n_63 ),
        .\G0.mem_reg[55]_4 (\recv[2].dir_n_57 ),
        .\G0.mem_reg[55]_5 (\recv[2].dir_n_56 ),
        .\G0.mem_reg[55]_6 (\recv[2].dir_n_59 ),
        .\G0.mem_reg[55]_7 (Q_0),
        .\G0.mem_reg[55]_8 (\Q[2]__0 ),
        .Q(\Q[6]__0 ),
        .To_NoC_0(To_NoC_0),
        .clk(clk),
        .\ctrl_cycle_reg[1] (ctrl_cycle),
        .\mem_reg[55] (\next_outport[2]_25 ),
        .\mem_reg[55]_0 (\next_outport[6]_26 ),
        .\next_switch_matrix_reg[0][0] (\recv[6].dir_n_63 ),
        .\next_switch_matrix_reg[2][0] (\recv[6].dir_n_62 ),
        .\next_switch_matrix_reg[4][0] (\recv[6].dir_n_56 ),
        .\next_switch_matrix_reg[4][0]_0 (\recv[6].dir_n_57 ),
        .\next_switch_matrix_reg[4][0]_1 (\recv[6].dir_n_65 ),
        .\next_switch_matrix_reg[5][0] (\recv[6].dir_n_60 ),
        .\next_switch_matrix_reg[6][0] (\recv[6].dir_n_64 ),
        .\port_wants_to[6][0]_20 (\port_wants_to[6][0]_20 ),
        .\pres_switch_matrix_reg[2][2] (\pres_switch_matrix_reg[2]__0 ),
        .\pres_switch_matrix_reg[6][2] (\pres_switch_matrix_reg[6]__0__0 ),
        .reset(reset));
  FDRE write_R_reg
       (.C(clk),
        .CE(1'b1),
        .D(\xmit[6].dir_n_0 ),
        .Q(write_R),
        .R(1'b0));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_10 \xmit[0].dir 
       (.D(\next_outport[0]_24 ),
        .E(load_enable),
        .\Outport[0] (\Outport[0] ),
        .clk(clk),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_11 \xmit[2].dir 
       (.D(\next_outport[2]_25 ),
        .E(load_enable),
        .\Outport[2] (\Outport[2] ),
        .clk(clk),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_12 \xmit[6].dir 
       (.D(\next_outport[6]_26 ),
        .E(load_enable),
        .From_NoC_0(From_NoC_0),
        .Q(ctrl_cycle),
        .clk(clk),
        .reset(reset),
        .write_R_reg(\xmit[6].dir_n_0 ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_Switch" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized1
   (\Outport[1] ,
    \Outport[2] ,
    From_NoC_2,
    read_R,
    write_R,
    reset,
    \Inport[1] ,
    clk,
    Q,
    To_NoC_2);
  output [55:0]\Outport[1] ;
  output [55:0]\Outport[2] ;
  output [55:0]From_NoC_2;
  output [0:0]read_R;
  output [0:0]write_R;
  input reset;
  input [55:0]\Inport[1] ;
  input clk;
  input [55:0]Q;
  input [55:0]To_NoC_2;

  wire [55:0]From_NoC_2;
  wire [55:0]\Inport[1] ;
  wire [55:0]\Outport[1] ;
  wire [55:0]\Outport[2] ;
  wire [55:0]Q;
  wire [55:0]\Q[1]__0 ;
  wire [55:0]\Q[2]__0 ;
  wire [55:0]\Q[6]__0 ;
  wire [55:0]To_NoC_2;
  wire clk;
  wire [1:0]ctrl_cycle;
  wire \ctrl_cycle[0]_i_1__1_n_0 ;
  wire \ctrl_cycle[1]_i_1__1_n_0 ;
  wire load_enable;
  wire [55:0]\next_outport[1]_40 ;
  wire [55:0]\next_outport[2]_41 ;
  wire [55:0]\next_outport[6]_42 ;
  wire \next_switch_matrix[6]_39 ;
  wire [2:0]\next_switch_matrix_reg[0]__0 ;
  wire [2:0]\next_switch_matrix_reg[1]__0 ;
  wire [2:0]\next_switch_matrix_reg[2]__0 ;
  wire [2:0]\next_switch_matrix_reg[3]__0 ;
  wire [2:0]\next_switch_matrix_reg[4]__0 ;
  wire [2:0]\next_switch_matrix_reg[5]__0 ;
  wire [2:0]\next_switch_matrix_reg[6]__0 ;
  wire [1:1]\port_wants_to[2][2]_29 ;
  wire [1:1]\port_wants_to[6][0]_36 ;
  wire [0:0]\port_wants_to[6][1]_32 ;
  wire [1:1]\port_wants_to[6][2]_34 ;
  wire [2:0]\port_wants_to[6][3]_33 ;
  wire \pres_switch_matrix[1][2]_i_1_n_0 ;
  wire [2:0]\pres_switch_matrix_reg[1]__0 ;
  wire [2:0]\pres_switch_matrix_reg[2]__0__0 ;
  wire [2:0]\pres_switch_matrix_reg[6]__0 ;
  wire [0:0]read_R;
  wire read_R_i_1__0_n_0;
  wire read_R_i_2__0_n_0;
  wire read_R_i_3__0_n_0;
  wire read_R_i_4__0_n_0;
  wire read_R_i_5__0_n_0;
  wire \recv[1].dir_n_0 ;
  wire \recv[1].dir_n_57 ;
  wire \recv[1].dir_n_58 ;
  wire \recv[1].dir_n_59 ;
  wire \recv[1].dir_n_60 ;
  wire \recv[1].dir_n_61 ;
  wire \recv[2].dir_n_56 ;
  wire \recv[2].dir_n_57 ;
  wire \recv[2].dir_n_58 ;
  wire \recv[2].dir_n_60 ;
  wire \recv[2].dir_n_61 ;
  wire \recv[2].dir_n_62 ;
  wire \recv[2].dir_n_63 ;
  wire \recv[2].dir_n_64 ;
  wire \recv[2].dir_n_65 ;
  wire \recv[2].dir_n_66 ;
  wire \recv[2].dir_n_67 ;
  wire \recv[2].dir_n_68 ;
  wire \recv[2].dir_n_69 ;
  wire \recv[2].dir_n_70 ;
  wire \recv[2].dir_n_71 ;
  wire \recv[2].dir_n_72 ;
  wire \recv[2].dir_n_73 ;
  wire \recv[2].dir_n_74 ;
  wire \recv[2].dir_n_75 ;
  wire \recv[2].dir_n_76 ;
  wire \recv[2].dir_n_77 ;
  wire \recv[2].dir_n_78 ;
  wire \recv[2].dir_n_79 ;
  wire \recv[2].dir_n_80 ;
  wire \recv[2].dir_n_81 ;
  wire \recv[2].dir_n_82 ;
  wire \recv[2].dir_n_83 ;
  wire \recv[2].dir_n_84 ;
  wire \recv[6].dir_n_59 ;
  wire \recv[6].dir_n_60 ;
  wire \recv[6].dir_n_61 ;
  wire \recv[6].dir_n_63 ;
  wire \recv[6].dir_n_64 ;
  wire \recv[6].dir_n_66 ;
  wire \recv[6].dir_n_68 ;
  wire \recv[6].dir_n_69 ;
  wire \recv[6].dir_n_70 ;
  wire \recv[6].dir_n_72 ;
  wire \recv[6].dir_n_73 ;
  wire \recv[6].dir_n_74 ;
  wire \recv[6].dir_n_75 ;
  wire \recv[6].dir_n_76 ;
  wire \recv[6].dir_n_77 ;
  wire reset;
  wire [0:0]write_R;
  wire \xmit[6].dir_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ctrl_cycle[0]_i_1__1 
       (.I0(ctrl_cycle[0]),
        .O(\ctrl_cycle[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctrl_cycle[1]_i_1__1 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\ctrl_cycle[1]_i_1__1_n_0 ));
  FDRE \ctrl_cycle_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ctrl_cycle[0]_i_1__1_n_0 ),
        .Q(ctrl_cycle[0]),
        .R(reset));
  FDRE \ctrl_cycle_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ctrl_cycle[1]_i_1__1_n_0 ),
        .Q(ctrl_cycle[1]),
        .R(reset));
  LUT2 #(
    .INIT(4'h1)) 
    \next_switch_matrix[0][2]_i_1__0 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\next_switch_matrix[6]_39 ));
  FDSE \next_switch_matrix_reg[0][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[6].dir_n_70 ),
        .Q(\next_switch_matrix_reg[0]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[0][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[2].dir_n_58 ),
        .Q(\next_switch_matrix_reg[0]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[1][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[6].dir_n_77 ),
        .Q(\next_switch_matrix_reg[1]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[1][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[1].dir_n_59 ),
        .Q(\next_switch_matrix_reg[1]__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[1][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[2].dir_n_78 ),
        .Q(\next_switch_matrix_reg[1]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[2][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[6].dir_n_69 ),
        .Q(\next_switch_matrix_reg[2]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[2][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[1].dir_n_57 ),
        .Q(\next_switch_matrix_reg[2]__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[2][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[2].dir_n_62 ),
        .Q(\next_switch_matrix_reg[2]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[3][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[6].dir_n_64 ),
        .Q(\next_switch_matrix_reg[3]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[3][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[2].dir_n_83 ),
        .Q(\next_switch_matrix_reg[3]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[4][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[6].dir_n_75 ),
        .Q(\next_switch_matrix_reg[4]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[4][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[2].dir_n_60 ),
        .Q(\next_switch_matrix_reg[4]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[5][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[6].dir_n_63 ),
        .Q(\next_switch_matrix_reg[5]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[5][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[2].dir_n_77 ),
        .Q(\next_switch_matrix_reg[5]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[6].dir_n_68 ),
        .Q(\next_switch_matrix_reg[6]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[1].dir_n_58 ),
        .Q(\next_switch_matrix_reg[6]__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_39 ),
        .D(\recv[2].dir_n_81 ),
        .Q(\next_switch_matrix_reg[6]__0 [2]),
        .S(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \pres_switch_matrix[1][2]_i_1 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\pres_switch_matrix[1][2]_i_1_n_0 ));
  FDSE \pres_switch_matrix_reg[1][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[1]__0 [0]),
        .Q(\pres_switch_matrix_reg[1]__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[1][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[1]__0 [1]),
        .Q(\pres_switch_matrix_reg[1]__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[1][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[1]__0 [2]),
        .Q(\pres_switch_matrix_reg[1]__0 [2]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[2][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[2]__0 [0]),
        .Q(\pres_switch_matrix_reg[2]__0__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[2][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[2]__0 [1]),
        .Q(\pres_switch_matrix_reg[2]__0__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[2][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[2]__0 [2]),
        .Q(\pres_switch_matrix_reg[2]__0__0 [2]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[6]__0 [0]),
        .Q(\pres_switch_matrix_reg[6]__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[6]__0 [1]),
        .Q(\pres_switch_matrix_reg[6]__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[6]__0 [2]),
        .Q(\pres_switch_matrix_reg[6]__0 [2]),
        .S(reset));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    read_R_i_1__0
       (.I0(ctrl_cycle[1]),
        .I1(ctrl_cycle[0]),
        .I2(read_R_i_2__0_n_0),
        .I3(read_R_i_3__0_n_0),
        .I4(read_R_i_4__0_n_0),
        .I5(read_R_i_5__0_n_0),
        .O(read_R_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    read_R_i_2__0
       (.I0(\next_switch_matrix_reg[3]__0 [0]),
        .I1(\next_switch_matrix_reg[3]__0 [2]),
        .I2(\next_switch_matrix_reg[4]__0 [0]),
        .I3(\next_switch_matrix_reg[4]__0 [2]),
        .O(read_R_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h4F444444)) 
    read_R_i_3__0
       (.I0(\next_switch_matrix_reg[5]__0 [0]),
        .I1(\next_switch_matrix_reg[5]__0 [2]),
        .I2(\next_switch_matrix_reg[6]__0 [0]),
        .I3(\next_switch_matrix_reg[6]__0 [2]),
        .I4(\next_switch_matrix_reg[6]__0 [1]),
        .O(read_R_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    read_R_i_4__0
       (.I0(\next_switch_matrix_reg[1]__0 [1]),
        .I1(\next_switch_matrix_reg[1]__0 [2]),
        .I2(\next_switch_matrix_reg[1]__0 [0]),
        .O(read_R_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h4F444444)) 
    read_R_i_5__0
       (.I0(\next_switch_matrix_reg[0]__0 [0]),
        .I1(\next_switch_matrix_reg[0]__0 [2]),
        .I2(\next_switch_matrix_reg[2]__0 [0]),
        .I3(\next_switch_matrix_reg[2]__0 [2]),
        .I4(\next_switch_matrix_reg[2]__0 [1]),
        .O(read_R_i_5__0_n_0));
  FDRE read_R_reg
       (.C(clk),
        .CE(1'b1),
        .D(read_R_i_1__0_n_0),
        .Q(read_R),
        .R(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized1 \recv[1].dir 
       (.D(\recv[1].dir_n_59 ),
        .E(load_enable),
        .\G0.mem_reg[37]_0 (\recv[2].dir_n_56 ),
        .\G0.mem_reg[55]_0 (\Q[2]__0 ),
        .\G0.mem_reg[55]_1 (\Q[6]__0 ),
        .\Inport[1] (\Inport[1] ),
        .Q(\Q[1]__0 ),
        .clk(clk),
        .\mem_reg[55] (\next_outport[1]_40 ),
        .\next_switch_matrix_reg[0][2] (\recv[1].dir_n_61 ),
        .\next_switch_matrix_reg[1][0] (\recv[1].dir_n_60 ),
        .\next_switch_matrix_reg[2][1] (\recv[1].dir_n_57 ),
        .\next_switch_matrix_reg[4][2] (\recv[1].dir_n_0 ),
        .\next_switch_matrix_reg[6][1] (\recv[1].dir_n_58 ),
        .\port_wants_to[2][2]_29 (\port_wants_to[2][2]_29 ),
        .\pres_switch_matrix_reg[1][2] (\pres_switch_matrix_reg[1]__0 ),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized2 \recv[2].dir 
       (.D(\recv[2].dir_n_77 ),
        .E(load_enable),
        .\G0.mem_reg[32]_0 (\recv[6].dir_n_59 ),
        .\G0.mem_reg[36]_0 (\recv[1].dir_n_0 ),
        .\G0.mem_reg[37]_0 (\recv[6].dir_n_60 ),
        .\G0.mem_reg[37]_1 (\recv[6].dir_n_74 ),
        .\G0.mem_reg[37]_2 (\recv[6].dir_n_72 ),
        .\G0.mem_reg[55]_0 (\recv[1].dir_n_58 ),
        .\G0.mem_reg[55]_1 (\recv[1].dir_n_60 ),
        .\G0.mem_reg[55]_2 (\recv[6].dir_n_73 ),
        .\G0.mem_reg[55]_3 (\recv[6].dir_n_66 ),
        .\G0.mem_reg[55]_4 (\recv[6].dir_n_61 ),
        .\G0.mem_reg[55]_5 (\recv[6].dir_n_76 ),
        .\G0.mem_reg[55]_6 (\recv[1].dir_n_61 ),
        .\G0.mem_reg[55]_7 (\recv[1].dir_n_57 ),
        .Q(\Q[2]__0 ),
        .clk(clk),
        .\mem_reg[55] (Q),
        .\next_switch_matrix_reg[0][0] (\recv[2].dir_n_67 ),
        .\next_switch_matrix_reg[0][0]_0 (\recv[2].dir_n_70 ),
        .\next_switch_matrix_reg[0][0]_1 (\recv[2].dir_n_72 ),
        .\next_switch_matrix_reg[0][0]_2 (\recv[2].dir_n_73 ),
        .\next_switch_matrix_reg[0][0]_3 (\recv[2].dir_n_74 ),
        .\next_switch_matrix_reg[0][0]_4 (\recv[2].dir_n_79 ),
        .\next_switch_matrix_reg[0][0]_5 (\recv[2].dir_n_84 ),
        .\next_switch_matrix_reg[0][2] (\recv[2].dir_n_58 ),
        .\next_switch_matrix_reg[1][0] (\recv[2].dir_n_57 ),
        .\next_switch_matrix_reg[1][2] (\recv[2].dir_n_78 ),
        .\next_switch_matrix_reg[2][0] (\recv[2].dir_n_69 ),
        .\next_switch_matrix_reg[2][2] (\recv[2].dir_n_62 ),
        .\next_switch_matrix_reg[3][0] (\recv[2].dir_n_65 ),
        .\next_switch_matrix_reg[3][0]_0 (\recv[2].dir_n_68 ),
        .\next_switch_matrix_reg[3][2] (\recv[2].dir_n_63 ),
        .\next_switch_matrix_reg[3][2]_0 (\recv[2].dir_n_83 ),
        .\next_switch_matrix_reg[4][0] (\recv[2].dir_n_61 ),
        .\next_switch_matrix_reg[4][0]_0 (\recv[2].dir_n_66 ),
        .\next_switch_matrix_reg[4][0]_1 (\recv[2].dir_n_71 ),
        .\next_switch_matrix_reg[4][2] (\recv[2].dir_n_56 ),
        .\next_switch_matrix_reg[4][2]_0 (\port_wants_to[2][2]_29 ),
        .\next_switch_matrix_reg[4][2]_1 (\recv[2].dir_n_60 ),
        .\next_switch_matrix_reg[5][0] (\recv[2].dir_n_64 ),
        .\next_switch_matrix_reg[5][0]_0 (\recv[2].dir_n_76 ),
        .\next_switch_matrix_reg[5][2] (\recv[2].dir_n_75 ),
        .\next_switch_matrix_reg[6][0] (\recv[2].dir_n_80 ),
        .\next_switch_matrix_reg[6][2] (\recv[2].dir_n_81 ),
        .\next_switch_matrix_reg[6][2]_0 (\recv[2].dir_n_82 ),
        .\port_wants_to[6][0]_36 (\port_wants_to[6][0]_36 ),
        .\port_wants_to[6][1]_32 (\port_wants_to[6][1]_32 ),
        .\port_wants_to[6][2]_34 (\port_wants_to[6][2]_34 ),
        .\port_wants_to[6][3]_33 (\port_wants_to[6][3]_33 ),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized6 \recv[6].dir 
       (.D(\recv[2].dir_n_58 ),
        .E(load_enable),
        .\G0.mem_reg[32]_0 (\recv[2].dir_n_82 ),
        .\G0.mem_reg[32]_1 (\recv[2].dir_n_72 ),
        .\G0.mem_reg[32]_2 (\recv[2].dir_n_74 ),
        .\G0.mem_reg[33]_0 (\recv[2].dir_n_76 ),
        .\G0.mem_reg[33]_1 (\recv[2].dir_n_75 ),
        .\G0.mem_reg[36]_0 (\recv[2].dir_n_70 ),
        .\G0.mem_reg[37]_0 (\recv[2].dir_n_57 ),
        .\G0.mem_reg[37]_1 (\recv[2].dir_n_84 ),
        .\G0.mem_reg[37]_2 (\recv[2].dir_n_67 ),
        .\G0.mem_reg[55]_0 (\recv[2].dir_n_60 ),
        .\G0.mem_reg[55]_1 (\recv[1].dir_n_58 ),
        .\G0.mem_reg[55]_10 (\recv[2].dir_n_68 ),
        .\G0.mem_reg[55]_11 (\recv[2].dir_n_80 ),
        .\G0.mem_reg[55]_12 (\recv[2].dir_n_71 ),
        .\G0.mem_reg[55]_13 (\recv[2].dir_n_73 ),
        .\G0.mem_reg[55]_14 (\recv[1].dir_n_60 ),
        .\G0.mem_reg[55]_15 (\recv[1].dir_n_57 ),
        .\G0.mem_reg[55]_16 (\Q[1]__0 ),
        .\G0.mem_reg[55]_17 (\Q[2]__0 ),
        .\G0.mem_reg[55]_2 (\recv[2].dir_n_63 ),
        .\G0.mem_reg[55]_3 (\recv[2].dir_n_61 ),
        .\G0.mem_reg[55]_4 (\recv[2].dir_n_79 ),
        .\G0.mem_reg[55]_5 (\recv[2].dir_n_62 ),
        .\G0.mem_reg[55]_6 (\recv[2].dir_n_66 ),
        .\G0.mem_reg[55]_7 (\recv[2].dir_n_65 ),
        .\G0.mem_reg[55]_8 (\recv[2].dir_n_64 ),
        .\G0.mem_reg[55]_9 (\recv[2].dir_n_69 ),
        .Q(\Q[6]__0 ),
        .To_NoC_2(To_NoC_2),
        .clk(clk),
        .\ctrl_cycle_reg[1] (ctrl_cycle),
        .\mem_reg[55] (\next_outport[2]_41 ),
        .\mem_reg[55]_0 (\next_outport[6]_42 ),
        .\next_switch_matrix_reg[0][0] (\recv[6].dir_n_61 ),
        .\next_switch_matrix_reg[0][0]_0 (\recv[6].dir_n_66 ),
        .\next_switch_matrix_reg[0][0]_1 (\recv[6].dir_n_70 ),
        .\next_switch_matrix_reg[0][0]_2 (\recv[6].dir_n_73 ),
        .\next_switch_matrix_reg[0][0]_3 (\recv[6].dir_n_76 ),
        .\next_switch_matrix_reg[1][0] (\recv[6].dir_n_77 ),
        .\next_switch_matrix_reg[2][0] (\recv[6].dir_n_69 ),
        .\next_switch_matrix_reg[3][0] (\recv[6].dir_n_64 ),
        .\next_switch_matrix_reg[3][0]_0 (\recv[6].dir_n_74 ),
        .\next_switch_matrix_reg[4][0] (\recv[6].dir_n_59 ),
        .\next_switch_matrix_reg[4][0]_0 (\recv[6].dir_n_75 ),
        .\next_switch_matrix_reg[5][0] (\recv[6].dir_n_63 ),
        .\next_switch_matrix_reg[6][0] (\recv[6].dir_n_60 ),
        .\next_switch_matrix_reg[6][0]_0 (\port_wants_to[6][2]_34 ),
        .\next_switch_matrix_reg[6][0]_1 (\recv[6].dir_n_68 ),
        .\next_switch_matrix_reg[6][0]_2 (\recv[6].dir_n_72 ),
        .\port_wants_to[6][0]_36 (\port_wants_to[6][0]_36 ),
        .\port_wants_to[6][1]_32 (\port_wants_to[6][1]_32 ),
        .\port_wants_to[6][3]_33 (\port_wants_to[6][3]_33 ),
        .\pres_switch_matrix_reg[2][2] (\pres_switch_matrix_reg[2]__0__0 ),
        .\pres_switch_matrix_reg[6][2] (\pres_switch_matrix_reg[6]__0 ),
        .reset(reset));
  FDRE write_R_reg
       (.C(clk),
        .CE(1'b1),
        .D(\xmit[6].dir_n_0 ),
        .Q(write_R),
        .R(1'b0));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_5 \xmit[1].dir 
       (.D(\next_outport[1]_40 ),
        .E(load_enable),
        .\Outport[1] (\Outport[1] ),
        .clk(clk),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_6 \xmit[2].dir 
       (.D(\next_outport[2]_41 ),
        .E(load_enable),
        .\Outport[2] (\Outport[2] ),
        .clk(clk),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_7 \xmit[6].dir 
       (.D(\next_outport[6]_42 ),
        .E(load_enable),
        .From_NoC_2(From_NoC_2),
        .Q(ctrl_cycle),
        .clk(clk),
        .reset(reset),
        .write_R_reg(\xmit[6].dir_n_0 ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_Switch" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized3
   (read_R,
    write_R,
    \G0.mem_reg[55] ,
    \G0.mem_reg[55]_0 ,
    From_NoC_1,
    reset,
    clk,
    Q,
    D,
    To_NoC_1);
  output [0:0]read_R;
  output [0:0]write_R;
  output [55:0]\G0.mem_reg[55] ;
  output [55:0]\G0.mem_reg[55]_0 ;
  output [55:0]From_NoC_1;
  input reset;
  input clk;
  input [55:0]Q;
  input [55:0]D;
  input [55:0]To_NoC_1;

  wire [55:0]D;
  wire [55:0]From_NoC_1;
  wire [55:0]\G0.mem_reg[55] ;
  wire [55:0]\G0.mem_reg[55]_0 ;
  wire [55:0]Q;
  wire [55:0]\Q[3]__0 ;
  wire [55:0]\Q[6]__0 ;
  wire [55:0]Q_0;
  wire [55:0]To_NoC_1;
  wire clk;
  wire [1:0]ctrl_cycle;
  wire \ctrl_cycle[0]_i_1_n_0 ;
  wire \ctrl_cycle[1]_i_1_n_0 ;
  wire \i_/next_switch_matrix[0][0]_i_10_n_0 ;
  wire \i_/next_switch_matrix[0][0]_i_12_n_0 ;
  wire \i_/next_switch_matrix[0][0]_i_4_n_0 ;
  wire \i_/next_switch_matrix[0][0]_i_7_n_0 ;
  wire \i_/next_switch_matrix[0][0]_i_8_n_0 ;
  wire \i_/next_switch_matrix[0][1]_i_1_n_0 ;
  wire \i_/next_switch_matrix[0][2]_i_2_n_0 ;
  wire \i_/next_switch_matrix[0][2]_i_3_n_0 ;
  wire \i_/next_switch_matrix[0][2]_i_4_n_0 ;
  wire \i_/next_switch_matrix[0][2]_i_7_n_0 ;
  wire \i_/next_switch_matrix[0][2]_i_8_n_0 ;
  wire \i_/next_switch_matrix[1][0]_i_4_n_0 ;
  wire \i_/next_switch_matrix[1][2]_i_3_n_0 ;
  wire \i_/next_switch_matrix[1][2]_i_5_n_0 ;
  wire \i_/next_switch_matrix[2][0]_i_1_n_0 ;
  wire \i_/next_switch_matrix[2][0]_i_3_n_0 ;
  wire \i_/next_switch_matrix[2][2]_i_1_n_0 ;
  wire \i_/next_switch_matrix[2][2]_i_2_n_0 ;
  wire \i_/next_switch_matrix[3][0]_i_1_n_0 ;
  wire \i_/next_switch_matrix[3][0]_i_2_n_0 ;
  wire \i_/next_switch_matrix[3][0]_i_7_n_0 ;
  wire \i_/next_switch_matrix[3][0]_i_9_n_0 ;
  wire \i_/next_switch_matrix[3][1]_i_1_n_0 ;
  wire \i_/next_switch_matrix[3][2]_i_1_n_0 ;
  wire \i_/next_switch_matrix[3][2]_i_3_n_0 ;
  wire \i_/next_switch_matrix[3][2]_i_6_n_0 ;
  wire \i_/next_switch_matrix[3][2]_i_7_n_0 ;
  wire \i_/next_switch_matrix[3][2]_i_8_n_0 ;
  wire \i_/next_switch_matrix[3][2]_i_9_n_0 ;
  wire \i_/next_switch_matrix[4][0]_i_3_n_0 ;
  wire \i_/next_switch_matrix[4][0]_i_4_n_0 ;
  wire \i_/next_switch_matrix[4][0]_i_7_n_0 ;
  wire \i_/next_switch_matrix[4][0]_i_8_n_0 ;
  wire \i_/next_switch_matrix[4][0]_i_9_n_0 ;
  wire \i_/next_switch_matrix[4][2]_i_2_n_0 ;
  wire \i_/next_switch_matrix[4][2]_i_3_n_0 ;
  wire \i_/next_switch_matrix[4][2]_i_6_n_0 ;
  wire \i_/next_switch_matrix[5][0]_i_1_n_0 ;
  wire \i_/next_switch_matrix[6][0]_i_1_n_0 ;
  wire \i_/next_switch_matrix[6][2]_i_1_n_0 ;
  wire \i_/next_switch_matrix[6][2]_i_2_n_0 ;
  wire \i_/read_R_i_1_n_0 ;
  wire \i_/read_R_i_2_n_0 ;
  wire \i_/read_R_i_3_n_0 ;
  wire \i_/read_R_i_4_n_0 ;
  wire \i_/read_R_i_5_n_0 ;
  wire \i_/write_R_i_1_n_0 ;
  wire load_enable;
  wire [55:0]\next_outport[0]_13 ;
  wire [55:0]\next_outport[3]_14 ;
  wire [55:0]\next_outport[6]_15 ;
  wire \next_switch_matrix[0][1]_i_2_n_0 ;
  wire \next_switch_matrix[6]_12 ;
  wire [2:0]\next_switch_matrix_reg[0]__0 ;
  wire [2:0]\next_switch_matrix_reg[1]__0 ;
  wire [2:0]\next_switch_matrix_reg[2]__0 ;
  wire [2:0]\next_switch_matrix_reg[3]__0 ;
  wire [2:0]\next_switch_matrix_reg[4]__0 ;
  wire [2:0]\next_switch_matrix_reg[5]__0 ;
  wire [2:0]\next_switch_matrix_reg[6]__0 ;
  wire [2:0]\port_wants_to[3][0]_4 ;
  wire [2:0]\port_wants_to[3][1]_2 ;
  wire [2:0]\port_wants_to[3][2]_1 ;
  wire [2:2]\port_wants_to[3][3]_0 ;
  wire [2:2]\port_wants_to[3][4]_3 ;
  wire [2:0]\port_wants_to[6][0]_9 ;
  wire [2:1]\port_wants_to[6][1]_7 ;
  wire [2:1]\port_wants_to[6][2]_6 ;
  wire \pres_switch_matrix[0][2]_i_1_n_0 ;
  wire [2:0]\pres_switch_matrix_reg[0]__0 ;
  wire [2:0]\pres_switch_matrix_reg[3]__0 ;
  wire [2:0]\pres_switch_matrix_reg[6]__0 ;
  wire [0:0]read_R;
  wire \recv[0].dir_n_0 ;
  wire \recv[3].dir_n_0 ;
  wire \recv[3].dir_n_60 ;
  wire \recv[3].dir_n_61 ;
  wire \recv[3].dir_n_62 ;
  wire \recv[3].dir_n_63 ;
  wire \recv[3].dir_n_66 ;
  wire \recv[3].dir_n_71 ;
  wire \recv[6].dir_n_0 ;
  wire \recv[6].dir_n_4 ;
  wire \recv[6].dir_n_61 ;
  wire \recv[6].dir_n_62 ;
  wire \recv[6].dir_n_63 ;
  wire \recv[6].dir_n_64 ;
  wire \recv[6].dir_n_67 ;
  wire \recv[6].dir_n_70 ;
  wire \recv[6].dir_n_71 ;
  wire \recv[6].dir_n_72 ;
  wire \recv[6].dir_n_73 ;
  wire \recv[6].dir_n_74 ;
  wire reset;
  wire [0:0]write_R;

  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ctrl_cycle[0]_i_1 
       (.I0(ctrl_cycle[0]),
        .O(\ctrl_cycle[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctrl_cycle[1]_i_1 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\ctrl_cycle[1]_i_1_n_0 ));
  FDRE \ctrl_cycle_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ctrl_cycle[0]_i_1_n_0 ),
        .Q(ctrl_cycle[0]),
        .R(reset));
  FDRE \ctrl_cycle_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ctrl_cycle[1]_i_1_n_0 ),
        .Q(ctrl_cycle[1]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[0]_i_1 
       (.I0(Q_0[0]),
        .I1(\Q[3]__0 [0]),
        .I2(\Q[6]__0 [0]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [0]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[0]_i_1__0 
       (.I0(\Q[6]__0 [0]),
        .I1(Q_0[0]),
        .I2(\Q[3]__0 [0]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [0]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[0]_i_1__1 
       (.I0(\Q[6]__0 [0]),
        .I1(Q_0[0]),
        .I2(\Q[3]__0 [0]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [0]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[10]_i_1 
       (.I0(Q_0[10]),
        .I1(\Q[3]__0 [10]),
        .I2(\Q[6]__0 [10]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [10]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[10]_i_1__0 
       (.I0(\Q[6]__0 [10]),
        .I1(Q_0[10]),
        .I2(\Q[3]__0 [10]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [10]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[10]_i_1__1 
       (.I0(\Q[6]__0 [10]),
        .I1(Q_0[10]),
        .I2(\Q[3]__0 [10]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [10]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[11]_i_1 
       (.I0(Q_0[11]),
        .I1(\Q[3]__0 [11]),
        .I2(\Q[6]__0 [11]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [11]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[11]_i_1__0 
       (.I0(\Q[6]__0 [11]),
        .I1(Q_0[11]),
        .I2(\Q[3]__0 [11]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [11]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[11]_i_1__1 
       (.I0(\Q[6]__0 [11]),
        .I1(Q_0[11]),
        .I2(\Q[3]__0 [11]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [11]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[12]_i_1 
       (.I0(Q_0[12]),
        .I1(\Q[3]__0 [12]),
        .I2(\Q[6]__0 [12]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [12]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[12]_i_1__0 
       (.I0(\Q[6]__0 [12]),
        .I1(Q_0[12]),
        .I2(\Q[3]__0 [12]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [12]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[12]_i_1__1 
       (.I0(\Q[6]__0 [12]),
        .I1(Q_0[12]),
        .I2(\Q[3]__0 [12]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [12]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[13]_i_1 
       (.I0(Q_0[13]),
        .I1(\Q[3]__0 [13]),
        .I2(\Q[6]__0 [13]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [13]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[13]_i_1__0 
       (.I0(\Q[6]__0 [13]),
        .I1(Q_0[13]),
        .I2(\Q[3]__0 [13]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [13]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[13]_i_1__1 
       (.I0(\Q[6]__0 [13]),
        .I1(Q_0[13]),
        .I2(\Q[3]__0 [13]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [13]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[14]_i_1 
       (.I0(Q_0[14]),
        .I1(\Q[3]__0 [14]),
        .I2(\Q[6]__0 [14]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [14]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[14]_i_1__0 
       (.I0(\Q[6]__0 [14]),
        .I1(Q_0[14]),
        .I2(\Q[3]__0 [14]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [14]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[14]_i_1__1 
       (.I0(\Q[6]__0 [14]),
        .I1(Q_0[14]),
        .I2(\Q[3]__0 [14]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [14]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[15]_i_1 
       (.I0(Q_0[15]),
        .I1(\Q[3]__0 [15]),
        .I2(\Q[6]__0 [15]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [15]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[15]_i_1__0 
       (.I0(\Q[6]__0 [15]),
        .I1(Q_0[15]),
        .I2(\Q[3]__0 [15]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [15]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[15]_i_1__1 
       (.I0(\Q[6]__0 [15]),
        .I1(Q_0[15]),
        .I2(\Q[3]__0 [15]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [15]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[16]_i_1 
       (.I0(Q_0[16]),
        .I1(\Q[3]__0 [16]),
        .I2(\Q[6]__0 [16]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [16]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[16]_i_1__0 
       (.I0(\Q[6]__0 [16]),
        .I1(Q_0[16]),
        .I2(\Q[3]__0 [16]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [16]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[16]_i_1__1 
       (.I0(\Q[6]__0 [16]),
        .I1(Q_0[16]),
        .I2(\Q[3]__0 [16]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [16]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[17]_i_1 
       (.I0(Q_0[17]),
        .I1(\Q[3]__0 [17]),
        .I2(\Q[6]__0 [17]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [17]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[17]_i_1__0 
       (.I0(\Q[6]__0 [17]),
        .I1(Q_0[17]),
        .I2(\Q[3]__0 [17]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [17]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[17]_i_1__1 
       (.I0(\Q[6]__0 [17]),
        .I1(Q_0[17]),
        .I2(\Q[3]__0 [17]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [17]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[18]_i_1 
       (.I0(Q_0[18]),
        .I1(\Q[3]__0 [18]),
        .I2(\Q[6]__0 [18]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [18]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[18]_i_1__0 
       (.I0(\Q[6]__0 [18]),
        .I1(Q_0[18]),
        .I2(\Q[3]__0 [18]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [18]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[18]_i_1__1 
       (.I0(\Q[6]__0 [18]),
        .I1(Q_0[18]),
        .I2(\Q[3]__0 [18]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [18]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[19]_i_1 
       (.I0(Q_0[19]),
        .I1(\Q[3]__0 [19]),
        .I2(\Q[6]__0 [19]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [19]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[19]_i_1__0 
       (.I0(\Q[6]__0 [19]),
        .I1(Q_0[19]),
        .I2(\Q[3]__0 [19]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [19]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[19]_i_1__1 
       (.I0(\Q[6]__0 [19]),
        .I1(Q_0[19]),
        .I2(\Q[3]__0 [19]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [19]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[1]_i_1 
       (.I0(Q_0[1]),
        .I1(\Q[3]__0 [1]),
        .I2(\Q[6]__0 [1]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [1]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[1]_i_1__0 
       (.I0(\Q[6]__0 [1]),
        .I1(Q_0[1]),
        .I2(\Q[3]__0 [1]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [1]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[1]_i_1__1 
       (.I0(\Q[6]__0 [1]),
        .I1(Q_0[1]),
        .I2(\Q[3]__0 [1]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [1]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[20]_i_1 
       (.I0(Q_0[20]),
        .I1(\Q[3]__0 [20]),
        .I2(\Q[6]__0 [20]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [20]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[20]_i_1__0 
       (.I0(\Q[6]__0 [20]),
        .I1(Q_0[20]),
        .I2(\Q[3]__0 [20]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [20]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[20]_i_1__1 
       (.I0(\Q[6]__0 [20]),
        .I1(Q_0[20]),
        .I2(\Q[3]__0 [20]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [20]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[21]_i_1 
       (.I0(Q_0[21]),
        .I1(\Q[3]__0 [21]),
        .I2(\Q[6]__0 [21]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [21]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[21]_i_1__0 
       (.I0(\Q[6]__0 [21]),
        .I1(Q_0[21]),
        .I2(\Q[3]__0 [21]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [21]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[21]_i_1__1 
       (.I0(\Q[6]__0 [21]),
        .I1(Q_0[21]),
        .I2(\Q[3]__0 [21]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [21]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[22]_i_1 
       (.I0(Q_0[22]),
        .I1(\Q[3]__0 [22]),
        .I2(\Q[6]__0 [22]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [22]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[22]_i_1__0 
       (.I0(\Q[6]__0 [22]),
        .I1(Q_0[22]),
        .I2(\Q[3]__0 [22]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [22]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[22]_i_1__1 
       (.I0(\Q[6]__0 [22]),
        .I1(Q_0[22]),
        .I2(\Q[3]__0 [22]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [22]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[23]_i_1 
       (.I0(Q_0[23]),
        .I1(\Q[3]__0 [23]),
        .I2(\Q[6]__0 [23]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [23]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[23]_i_1__0 
       (.I0(\Q[6]__0 [23]),
        .I1(Q_0[23]),
        .I2(\Q[3]__0 [23]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [23]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[23]_i_1__1 
       (.I0(\Q[6]__0 [23]),
        .I1(Q_0[23]),
        .I2(\Q[3]__0 [23]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [23]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[24]_i_1 
       (.I0(Q_0[24]),
        .I1(\Q[3]__0 [24]),
        .I2(\Q[6]__0 [24]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [24]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[24]_i_1__0 
       (.I0(\Q[6]__0 [24]),
        .I1(Q_0[24]),
        .I2(\Q[3]__0 [24]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [24]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[24]_i_1__1 
       (.I0(\Q[6]__0 [24]),
        .I1(Q_0[24]),
        .I2(\Q[3]__0 [24]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [24]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[25]_i_1 
       (.I0(Q_0[25]),
        .I1(\Q[3]__0 [25]),
        .I2(\Q[6]__0 [25]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [25]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[25]_i_1__0 
       (.I0(\Q[6]__0 [25]),
        .I1(Q_0[25]),
        .I2(\Q[3]__0 [25]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [25]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[25]_i_1__1 
       (.I0(\Q[6]__0 [25]),
        .I1(Q_0[25]),
        .I2(\Q[3]__0 [25]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [25]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[26]_i_1 
       (.I0(Q_0[26]),
        .I1(\Q[3]__0 [26]),
        .I2(\Q[6]__0 [26]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [26]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[26]_i_1__0 
       (.I0(\Q[6]__0 [26]),
        .I1(Q_0[26]),
        .I2(\Q[3]__0 [26]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [26]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[26]_i_1__1 
       (.I0(\Q[6]__0 [26]),
        .I1(Q_0[26]),
        .I2(\Q[3]__0 [26]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [26]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[27]_i_1 
       (.I0(Q_0[27]),
        .I1(\Q[3]__0 [27]),
        .I2(\Q[6]__0 [27]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [27]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[27]_i_1__0 
       (.I0(\Q[6]__0 [27]),
        .I1(Q_0[27]),
        .I2(\Q[3]__0 [27]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [27]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[27]_i_1__1 
       (.I0(\Q[6]__0 [27]),
        .I1(Q_0[27]),
        .I2(\Q[3]__0 [27]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [27]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[28]_i_1 
       (.I0(Q_0[28]),
        .I1(\Q[3]__0 [28]),
        .I2(\Q[6]__0 [28]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [28]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[28]_i_1__0 
       (.I0(\Q[6]__0 [28]),
        .I1(Q_0[28]),
        .I2(\Q[3]__0 [28]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [28]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[28]_i_1__1 
       (.I0(\Q[6]__0 [28]),
        .I1(Q_0[28]),
        .I2(\Q[3]__0 [28]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [28]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[29]_i_1 
       (.I0(Q_0[29]),
        .I1(\Q[3]__0 [29]),
        .I2(\Q[6]__0 [29]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [29]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[29]_i_1__0 
       (.I0(\Q[6]__0 [29]),
        .I1(Q_0[29]),
        .I2(\Q[3]__0 [29]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [29]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[29]_i_1__1 
       (.I0(\Q[6]__0 [29]),
        .I1(Q_0[29]),
        .I2(\Q[3]__0 [29]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [29]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[2]_i_1 
       (.I0(Q_0[2]),
        .I1(\Q[3]__0 [2]),
        .I2(\Q[6]__0 [2]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [2]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[2]_i_1__0 
       (.I0(\Q[6]__0 [2]),
        .I1(Q_0[2]),
        .I2(\Q[3]__0 [2]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [2]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[2]_i_1__1 
       (.I0(\Q[6]__0 [2]),
        .I1(Q_0[2]),
        .I2(\Q[3]__0 [2]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [2]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[30]_i_1 
       (.I0(Q_0[30]),
        .I1(\Q[3]__0 [30]),
        .I2(\Q[6]__0 [30]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [30]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[30]_i_1__0 
       (.I0(\Q[6]__0 [30]),
        .I1(Q_0[30]),
        .I2(\Q[3]__0 [30]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [30]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[30]_i_1__1 
       (.I0(\Q[6]__0 [30]),
        .I1(Q_0[30]),
        .I2(\Q[3]__0 [30]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [30]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[31]_i_1 
       (.I0(Q_0[31]),
        .I1(\Q[3]__0 [31]),
        .I2(\Q[6]__0 [31]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [31]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[31]_i_1__0 
       (.I0(\Q[6]__0 [31]),
        .I1(Q_0[31]),
        .I2(\Q[3]__0 [31]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [31]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[31]_i_1__1 
       (.I0(\Q[6]__0 [31]),
        .I1(Q_0[31]),
        .I2(\Q[3]__0 [31]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [31]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[32]_i_1 
       (.I0(Q_0[32]),
        .I1(\Q[3]__0 [32]),
        .I2(\Q[6]__0 [32]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [32]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[32]_i_1__0 
       (.I0(\Q[6]__0 [32]),
        .I1(Q_0[32]),
        .I2(\Q[3]__0 [32]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [32]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[32]_i_1__1 
       (.I0(\Q[6]__0 [32]),
        .I1(Q_0[32]),
        .I2(\Q[3]__0 [32]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [32]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[33]_i_1 
       (.I0(Q_0[33]),
        .I1(\Q[3]__0 [33]),
        .I2(\Q[6]__0 [33]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [33]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[33]_i_1__0 
       (.I0(\Q[6]__0 [33]),
        .I1(Q_0[33]),
        .I2(\Q[3]__0 [33]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [33]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[33]_i_1__1 
       (.I0(\Q[6]__0 [33]),
        .I1(Q_0[33]),
        .I2(\Q[3]__0 [33]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [33]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[34]_i_1 
       (.I0(Q_0[34]),
        .I1(\Q[3]__0 [34]),
        .I2(\Q[6]__0 [34]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [34]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[34]_i_1__0 
       (.I0(\Q[6]__0 [34]),
        .I1(Q_0[34]),
        .I2(\Q[3]__0 [34]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [34]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[34]_i_1__1 
       (.I0(\Q[6]__0 [34]),
        .I1(Q_0[34]),
        .I2(\Q[3]__0 [34]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [34]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[35]_i_1 
       (.I0(Q_0[35]),
        .I1(\Q[3]__0 [35]),
        .I2(\Q[6]__0 [35]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [35]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[35]_i_1__0 
       (.I0(\Q[6]__0 [35]),
        .I1(Q_0[35]),
        .I2(\Q[3]__0 [35]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [35]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[35]_i_1__1 
       (.I0(\Q[6]__0 [35]),
        .I1(Q_0[35]),
        .I2(\Q[3]__0 [35]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [35]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[36]_i_1 
       (.I0(Q_0[36]),
        .I1(\Q[3]__0 [36]),
        .I2(\Q[6]__0 [36]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [36]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[36]_i_1__0 
       (.I0(\Q[6]__0 [36]),
        .I1(Q_0[36]),
        .I2(\Q[3]__0 [36]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [36]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[36]_i_1__1 
       (.I0(\Q[6]__0 [36]),
        .I1(Q_0[36]),
        .I2(\Q[3]__0 [36]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [36]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[37]_i_1 
       (.I0(Q_0[37]),
        .I1(\Q[3]__0 [37]),
        .I2(\Q[6]__0 [37]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [37]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[37]_i_1__0 
       (.I0(\Q[6]__0 [37]),
        .I1(Q_0[37]),
        .I2(\Q[3]__0 [37]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [37]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[37]_i_1__1 
       (.I0(\Q[6]__0 [37]),
        .I1(Q_0[37]),
        .I2(\Q[3]__0 [37]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [37]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[38]_i_1 
       (.I0(Q_0[38]),
        .I1(\Q[3]__0 [38]),
        .I2(\Q[6]__0 [38]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [38]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[38]_i_1__0 
       (.I0(\Q[6]__0 [38]),
        .I1(Q_0[38]),
        .I2(\Q[3]__0 [38]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [38]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[38]_i_1__1 
       (.I0(\Q[6]__0 [38]),
        .I1(Q_0[38]),
        .I2(\Q[3]__0 [38]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [38]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[39]_i_1 
       (.I0(Q_0[39]),
        .I1(\Q[3]__0 [39]),
        .I2(\Q[6]__0 [39]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [39]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[39]_i_1__0 
       (.I0(\Q[6]__0 [39]),
        .I1(Q_0[39]),
        .I2(\Q[3]__0 [39]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [39]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[39]_i_1__1 
       (.I0(\Q[6]__0 [39]),
        .I1(Q_0[39]),
        .I2(\Q[3]__0 [39]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [39]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[3]_i_1 
       (.I0(Q_0[3]),
        .I1(\Q[3]__0 [3]),
        .I2(\Q[6]__0 [3]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [3]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[3]_i_1__0 
       (.I0(\Q[6]__0 [3]),
        .I1(Q_0[3]),
        .I2(\Q[3]__0 [3]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [3]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[3]_i_1__1 
       (.I0(\Q[6]__0 [3]),
        .I1(Q_0[3]),
        .I2(\Q[3]__0 [3]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [3]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[40]_i_1 
       (.I0(Q_0[40]),
        .I1(\Q[3]__0 [40]),
        .I2(\Q[6]__0 [40]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [40]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[40]_i_1__0 
       (.I0(\Q[6]__0 [40]),
        .I1(Q_0[40]),
        .I2(\Q[3]__0 [40]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [40]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[40]_i_1__1 
       (.I0(\Q[6]__0 [40]),
        .I1(Q_0[40]),
        .I2(\Q[3]__0 [40]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [40]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[41]_i_1 
       (.I0(Q_0[41]),
        .I1(\Q[3]__0 [41]),
        .I2(\Q[6]__0 [41]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [41]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[41]_i_1__0 
       (.I0(\Q[6]__0 [41]),
        .I1(Q_0[41]),
        .I2(\Q[3]__0 [41]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [41]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[41]_i_1__1 
       (.I0(\Q[6]__0 [41]),
        .I1(Q_0[41]),
        .I2(\Q[3]__0 [41]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [41]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[42]_i_1 
       (.I0(Q_0[42]),
        .I1(\Q[3]__0 [42]),
        .I2(\Q[6]__0 [42]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [42]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[42]_i_1__0 
       (.I0(\Q[6]__0 [42]),
        .I1(Q_0[42]),
        .I2(\Q[3]__0 [42]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [42]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[42]_i_1__1 
       (.I0(\Q[6]__0 [42]),
        .I1(Q_0[42]),
        .I2(\Q[3]__0 [42]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [42]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[43]_i_1 
       (.I0(Q_0[43]),
        .I1(\Q[3]__0 [43]),
        .I2(\Q[6]__0 [43]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [43]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[43]_i_1__0 
       (.I0(\Q[6]__0 [43]),
        .I1(Q_0[43]),
        .I2(\Q[3]__0 [43]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [43]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[43]_i_1__1 
       (.I0(\Q[6]__0 [43]),
        .I1(Q_0[43]),
        .I2(\Q[3]__0 [43]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [43]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[44]_i_1 
       (.I0(Q_0[44]),
        .I1(\Q[3]__0 [44]),
        .I2(\Q[6]__0 [44]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [44]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[44]_i_1__0 
       (.I0(\Q[6]__0 [44]),
        .I1(Q_0[44]),
        .I2(\Q[3]__0 [44]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [44]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[44]_i_1__1 
       (.I0(\Q[6]__0 [44]),
        .I1(Q_0[44]),
        .I2(\Q[3]__0 [44]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [44]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[45]_i_1 
       (.I0(Q_0[45]),
        .I1(\Q[3]__0 [45]),
        .I2(\Q[6]__0 [45]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [45]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[45]_i_1__0 
       (.I0(\Q[6]__0 [45]),
        .I1(Q_0[45]),
        .I2(\Q[3]__0 [45]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [45]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[45]_i_1__1 
       (.I0(\Q[6]__0 [45]),
        .I1(Q_0[45]),
        .I2(\Q[3]__0 [45]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [45]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[46]_i_1 
       (.I0(Q_0[46]),
        .I1(\Q[3]__0 [46]),
        .I2(\Q[6]__0 [46]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [46]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[46]_i_1__0 
       (.I0(\Q[6]__0 [46]),
        .I1(Q_0[46]),
        .I2(\Q[3]__0 [46]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [46]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[46]_i_1__1 
       (.I0(\Q[6]__0 [46]),
        .I1(Q_0[46]),
        .I2(\Q[3]__0 [46]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [46]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[47]_i_1 
       (.I0(Q_0[47]),
        .I1(\Q[3]__0 [47]),
        .I2(\Q[6]__0 [47]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [47]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[47]_i_1__0 
       (.I0(\Q[6]__0 [47]),
        .I1(Q_0[47]),
        .I2(\Q[3]__0 [47]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [47]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[47]_i_1__1 
       (.I0(\Q[6]__0 [47]),
        .I1(Q_0[47]),
        .I2(\Q[3]__0 [47]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [47]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[48]_i_1 
       (.I0(Q_0[48]),
        .I1(\Q[3]__0 [48]),
        .I2(\Q[6]__0 [48]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [48]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[48]_i_1__0 
       (.I0(\Q[6]__0 [48]),
        .I1(Q_0[48]),
        .I2(\Q[3]__0 [48]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [48]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[48]_i_1__1 
       (.I0(\Q[6]__0 [48]),
        .I1(Q_0[48]),
        .I2(\Q[3]__0 [48]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [48]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[49]_i_1 
       (.I0(Q_0[49]),
        .I1(\Q[3]__0 [49]),
        .I2(\Q[6]__0 [49]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [49]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[49]_i_1__0 
       (.I0(\Q[6]__0 [49]),
        .I1(Q_0[49]),
        .I2(\Q[3]__0 [49]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [49]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[49]_i_1__1 
       (.I0(\Q[6]__0 [49]),
        .I1(Q_0[49]),
        .I2(\Q[3]__0 [49]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [49]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[4]_i_1 
       (.I0(Q_0[4]),
        .I1(\Q[3]__0 [4]),
        .I2(\Q[6]__0 [4]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [4]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[4]_i_1__0 
       (.I0(\Q[6]__0 [4]),
        .I1(Q_0[4]),
        .I2(\Q[3]__0 [4]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [4]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[4]_i_1__1 
       (.I0(\Q[6]__0 [4]),
        .I1(Q_0[4]),
        .I2(\Q[3]__0 [4]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [4]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[50]_i_1 
       (.I0(Q_0[50]),
        .I1(\Q[3]__0 [50]),
        .I2(\Q[6]__0 [50]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [50]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[50]_i_1__0 
       (.I0(\Q[6]__0 [50]),
        .I1(Q_0[50]),
        .I2(\Q[3]__0 [50]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [50]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[50]_i_1__1 
       (.I0(\Q[6]__0 [50]),
        .I1(Q_0[50]),
        .I2(\Q[3]__0 [50]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [50]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[51]_i_1 
       (.I0(Q_0[51]),
        .I1(\Q[3]__0 [51]),
        .I2(\Q[6]__0 [51]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [51]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[51]_i_1__0 
       (.I0(\Q[6]__0 [51]),
        .I1(Q_0[51]),
        .I2(\Q[3]__0 [51]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [51]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[51]_i_1__1 
       (.I0(\Q[6]__0 [51]),
        .I1(Q_0[51]),
        .I2(\Q[3]__0 [51]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [51]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[52]_i_1 
       (.I0(Q_0[52]),
        .I1(\Q[3]__0 [52]),
        .I2(\Q[6]__0 [52]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [52]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[52]_i_1__0 
       (.I0(\Q[6]__0 [52]),
        .I1(Q_0[52]),
        .I2(\Q[3]__0 [52]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [52]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[52]_i_1__1 
       (.I0(\Q[6]__0 [52]),
        .I1(Q_0[52]),
        .I2(\Q[3]__0 [52]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [52]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[53]_i_1 
       (.I0(Q_0[53]),
        .I1(\Q[3]__0 [53]),
        .I2(\Q[6]__0 [53]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [53]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[53]_i_1__0 
       (.I0(\Q[6]__0 [53]),
        .I1(Q_0[53]),
        .I2(\Q[3]__0 [53]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [53]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[53]_i_1__1 
       (.I0(\Q[6]__0 [53]),
        .I1(Q_0[53]),
        .I2(\Q[3]__0 [53]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [53]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[54]_i_1 
       (.I0(Q_0[54]),
        .I1(\Q[3]__0 [54]),
        .I2(\Q[6]__0 [54]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [54]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[54]_i_1__0 
       (.I0(\Q[6]__0 [54]),
        .I1(Q_0[54]),
        .I2(\Q[3]__0 [54]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [54]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[54]_i_1__1 
       (.I0(\Q[6]__0 [54]),
        .I1(Q_0[54]),
        .I2(\Q[3]__0 [54]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [54]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_/mem[55]_i_1 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(load_enable));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[55]_i_1__0 
       (.I0(Q_0[55]),
        .I1(\Q[3]__0 [55]),
        .I2(\Q[6]__0 [55]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [55]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[55]_i_1__1 
       (.I0(\Q[6]__0 [55]),
        .I1(Q_0[55]),
        .I2(\Q[3]__0 [55]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [55]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[55]_i_2 
       (.I0(\Q[6]__0 [55]),
        .I1(Q_0[55]),
        .I2(\Q[3]__0 [55]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [55]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[5]_i_1 
       (.I0(Q_0[5]),
        .I1(\Q[3]__0 [5]),
        .I2(\Q[6]__0 [5]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [5]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[5]_i_1__0 
       (.I0(\Q[6]__0 [5]),
        .I1(Q_0[5]),
        .I2(\Q[3]__0 [5]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [5]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[5]_i_1__1 
       (.I0(\Q[6]__0 [5]),
        .I1(Q_0[5]),
        .I2(\Q[3]__0 [5]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [5]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[6]_i_1 
       (.I0(Q_0[6]),
        .I1(\Q[3]__0 [6]),
        .I2(\Q[6]__0 [6]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [6]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[6]_i_1__0 
       (.I0(\Q[6]__0 [6]),
        .I1(Q_0[6]),
        .I2(\Q[3]__0 [6]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [6]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[6]_i_1__1 
       (.I0(\Q[6]__0 [6]),
        .I1(Q_0[6]),
        .I2(\Q[3]__0 [6]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [6]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[7]_i_1 
       (.I0(Q_0[7]),
        .I1(\Q[3]__0 [7]),
        .I2(\Q[6]__0 [7]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [7]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[7]_i_1__0 
       (.I0(\Q[6]__0 [7]),
        .I1(Q_0[7]),
        .I2(\Q[3]__0 [7]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [7]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[7]_i_1__1 
       (.I0(\Q[6]__0 [7]),
        .I1(Q_0[7]),
        .I2(\Q[3]__0 [7]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [7]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[8]_i_1 
       (.I0(Q_0[8]),
        .I1(\Q[3]__0 [8]),
        .I2(\Q[6]__0 [8]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [8]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[8]_i_1__0 
       (.I0(\Q[6]__0 [8]),
        .I1(Q_0[8]),
        .I2(\Q[3]__0 [8]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [8]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[8]_i_1__1 
       (.I0(\Q[6]__0 [8]),
        .I1(Q_0[8]),
        .I2(\Q[3]__0 [8]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [8]));
  LUT6 #(
    .INIT(64'h00F00000CC0000AA)) 
    \i_/mem[9]_i_1 
       (.I0(Q_0[9]),
        .I1(\Q[3]__0 [9]),
        .I2(\Q[6]__0 [9]),
        .I3(\pres_switch_matrix_reg[0]__0 [0]),
        .I4(\pres_switch_matrix_reg[0]__0 [1]),
        .I5(\pres_switch_matrix_reg[0]__0 [2]),
        .O(\next_outport[0]_13 [9]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[9]_i_1__0 
       (.I0(\Q[6]__0 [9]),
        .I1(Q_0[9]),
        .I2(\Q[3]__0 [9]),
        .I3(\pres_switch_matrix_reg[3]__0 [1]),
        .I4(\pres_switch_matrix_reg[3]__0 [0]),
        .I5(\pres_switch_matrix_reg[3]__0 [2]),
        .O(\next_outport[3]_14 [9]));
  LUT6 #(
    .INIT(64'h0000AA00F00000CC)) 
    \i_/mem[9]_i_1__1 
       (.I0(\Q[6]__0 [9]),
        .I1(Q_0[9]),
        .I2(\Q[3]__0 [9]),
        .I3(\pres_switch_matrix_reg[6]__0 [1]),
        .I4(\pres_switch_matrix_reg[6]__0 [0]),
        .I5(\pres_switch_matrix_reg[6]__0 [2]),
        .O(\next_outport[6]_15 [9]));
  LUT6 #(
    .INIT(64'h00080000FFFFFFFF)) 
    \i_/next_switch_matrix[0][0]_i_10 
       (.I0(\Q[6]__0 [55]),
        .I1(\recv[6].dir_n_73 ),
        .I2(\port_wants_to[6][0]_9 [0]),
        .I3(\port_wants_to[6][0]_9 [2]),
        .I4(\i_/next_switch_matrix[0][0]_i_12_n_0 ),
        .I5(\i_/next_switch_matrix[0][1]_i_1_n_0 ),
        .O(\i_/next_switch_matrix[0][0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5530553055303030)) 
    \i_/next_switch_matrix[0][0]_i_12 
       (.I0(\recv[6].dir_n_72 ),
        .I1(\i_/next_switch_matrix[6][2]_i_2_n_0 ),
        .I2(\port_wants_to[6][0]_9 [2]),
        .I3(\Q[6]__0 [55]),
        .I4(\Q[6]__0 [36]),
        .I5(\Q[6]__0 [37]),
        .O(\i_/next_switch_matrix[0][0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFEFFF)) 
    \i_/next_switch_matrix[0][0]_i_4 
       (.I0(\port_wants_to[6][1]_7 [1]),
        .I1(\port_wants_to[6][1]_7 [2]),
        .I2(\i_/next_switch_matrix[4][0]_i_4_n_0 ),
        .I3(\i_/next_switch_matrix[0][1]_i_1_n_0 ),
        .I4(\i_/next_switch_matrix[0][2]_i_3_n_0 ),
        .I5(\i_/next_switch_matrix[0][0]_i_10_n_0 ),
        .O(\i_/next_switch_matrix[0][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFB7FFB7FFB7BBB3)) 
    \i_/next_switch_matrix[0][0]_i_7 
       (.I0(\recv[6].dir_n_73 ),
        .I1(\Q[6]__0 [55]),
        .I2(\Q[6]__0 [34]),
        .I3(\Q[6]__0 [35]),
        .I4(\Q[6]__0 [33]),
        .I5(\Q[6]__0 [32]),
        .O(\i_/next_switch_matrix[0][0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hF0F0F8F0)) 
    \i_/next_switch_matrix[0][0]_i_8 
       (.I0(\port_wants_to[6][1]_7 [1]),
        .I1(\i_/next_switch_matrix[4][0]_i_4_n_0 ),
        .I2(\i_/next_switch_matrix[4][0]_i_9_n_0 ),
        .I3(\i_/next_switch_matrix[3][2]_i_1_n_0 ),
        .I4(\port_wants_to[6][1]_7 [2]),
        .O(\i_/next_switch_matrix[0][0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F1F0FFF)) 
    \i_/next_switch_matrix[0][1]_i_1 
       (.I0(Q_0[32]),
        .I1(Q_0[33]),
        .I2(Q_0[55]),
        .I3(\next_switch_matrix[0][1]_i_2_n_0 ),
        .I4(Q_0[34]),
        .I5(Q_0[35]),
        .O(\i_/next_switch_matrix[0][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i_/next_switch_matrix[0][2]_i_1 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\next_switch_matrix[6]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_/next_switch_matrix[0][2]_i_2 
       (.I0(\i_/next_switch_matrix[0][2]_i_3_n_0 ),
        .O(\i_/next_switch_matrix[0][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \i_/next_switch_matrix[0][2]_i_3 
       (.I0(\i_/next_switch_matrix[0][2]_i_4_n_0 ),
        .I1(\port_wants_to[3][2]_1 [0]),
        .I2(\port_wants_to[3][2]_1 [2]),
        .I3(\i_/next_switch_matrix[0][2]_i_7_n_0 ),
        .O(\i_/next_switch_matrix[0][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hABBB)) 
    \i_/next_switch_matrix[0][2]_i_4 
       (.I0(\i_/next_switch_matrix[2][2]_i_2_n_0 ),
        .I1(\i_/next_switch_matrix[4][2]_i_3_n_0 ),
        .I2(\port_wants_to[3][1]_2 [2]),
        .I3(\port_wants_to[3][1]_2 [0]),
        .O(\i_/next_switch_matrix[0][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \i_/next_switch_matrix[0][2]_i_7 
       (.I0(\i_/next_switch_matrix[2][2]_i_2_n_0 ),
        .I1(\port_wants_to[3][1]_2 [0]),
        .I2(\port_wants_to[3][1]_2 [2]),
        .I3(\i_/next_switch_matrix[0][2]_i_8_n_0 ),
        .O(\i_/next_switch_matrix[0][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \i_/next_switch_matrix[0][2]_i_8 
       (.I0(\port_wants_to[3][0]_4 [2]),
        .I1(\port_wants_to[3][0]_4 [0]),
        .I2(\recv[3].dir_n_66 ),
        .I3(\Q[3]__0 [55]),
        .I4(\i_/next_switch_matrix[1][2]_i_3_n_0 ),
        .I5(\i_/next_switch_matrix[0][1]_i_1_n_0 ),
        .O(\i_/next_switch_matrix[0][2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i_/next_switch_matrix[1][0]_i_4 
       (.I0(\i_/next_switch_matrix[0][0]_i_12_n_0 ),
        .I1(\i_/next_switch_matrix[2][0]_i_3_n_0 ),
        .O(\i_/next_switch_matrix[1][0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAC0AAAA)) 
    \i_/next_switch_matrix[1][2]_i_3 
       (.I0(\i_/next_switch_matrix[1][2]_i_5_n_0 ),
        .I1(\recv[3].dir_n_66 ),
        .I2(\Q[3]__0 [55]),
        .I3(\recv[0].dir_n_0 ),
        .I4(\port_wants_to[3][0]_4 [2]),
        .O(\i_/next_switch_matrix[1][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFAFFAAEE)) 
    \i_/next_switch_matrix[1][2]_i_5 
       (.I0(\port_wants_to[3][0]_4 [2]),
        .I1(\i_/next_switch_matrix[0][1]_i_1_n_0 ),
        .I2(\i_/next_switch_matrix[3][1]_i_1_n_0 ),
        .I3(\port_wants_to[3][0]_4 [0]),
        .I4(\port_wants_to[3][0]_4 [1]),
        .O(\i_/next_switch_matrix[1][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_/next_switch_matrix[2][0]_i_1 
       (.I0(\port_wants_to[6][0]_9 [0]),
        .I1(\i_/next_switch_matrix[2][0]_i_3_n_0 ),
        .O(\i_/next_switch_matrix[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A003F002A0000)) 
    \i_/next_switch_matrix[2][0]_i_3 
       (.I0(\i_/next_switch_matrix[3][2]_i_1_n_0 ),
        .I1(\Q[6]__0 [55]),
        .I2(\recv[6].dir_n_73 ),
        .I3(\port_wants_to[6][0]_9 [2]),
        .I4(\port_wants_to[6][0]_9 [0]),
        .I5(\i_/next_switch_matrix[2][2]_i_1_n_0 ),
        .O(\i_/next_switch_matrix[2][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFDDD)) 
    \i_/next_switch_matrix[2][2]_i_1 
       (.I0(\i_/next_switch_matrix[2][2]_i_2_n_0 ),
        .I1(\port_wants_to[3][0]_4 [2]),
        .I2(\recv[3].dir_n_66 ),
        .I3(\Q[3]__0 [55]),
        .I4(\port_wants_to[3][0]_4 [0]),
        .O(\i_/next_switch_matrix[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888A00008A8A0000)) 
    \i_/next_switch_matrix[2][2]_i_2 
       (.I0(\i_/next_switch_matrix[1][2]_i_3_n_0 ),
        .I1(\recv[3].dir_n_66 ),
        .I2(\Q[3]__0 [35]),
        .I3(\Q[3]__0 [34]),
        .I4(\Q[3]__0 [55]),
        .I5(\recv[3].dir_n_71 ),
        .O(\i_/next_switch_matrix[2][2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hCC8C)) 
    \i_/next_switch_matrix[3][0]_i_1 
       (.I0(\i_/next_switch_matrix[3][0]_i_2_n_0 ),
        .I1(\recv[6].dir_n_71 ),
        .I2(\i_/next_switch_matrix[3][1]_i_1_n_0 ),
        .I3(\recv[6].dir_n_70 ),
        .O(\i_/next_switch_matrix[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444455545544)) 
    \i_/next_switch_matrix[3][0]_i_2 
       (.I0(\i_/next_switch_matrix[3][2]_i_1_n_0 ),
        .I1(\i_/next_switch_matrix[6][2]_i_2_n_0 ),
        .I2(\Q[6]__0 [34]),
        .I3(\Q[6]__0 [35]),
        .I4(\recv[6].dir_n_74 ),
        .I5(\port_wants_to[6][0]_9 [1]),
        .O(\i_/next_switch_matrix[3][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \i_/next_switch_matrix[3][0]_i_7 
       (.I0(\i_/next_switch_matrix[0][0]_i_8_n_0 ),
        .I1(\recv[6].dir_n_63 ),
        .I2(\recv[6].dir_n_64 ),
        .I3(\port_wants_to[6][2]_6 [1]),
        .I4(\port_wants_to[6][2]_6 [2]),
        .O(\i_/next_switch_matrix[3][0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h5444)) 
    \i_/next_switch_matrix[3][0]_i_9 
       (.I0(\recv[6].dir_n_63 ),
        .I1(\recv[6].dir_n_64 ),
        .I2(\port_wants_to[6][2]_6 [2]),
        .I3(\port_wants_to[6][2]_6 [1]),
        .O(\i_/next_switch_matrix[3][0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \i_/next_switch_matrix[3][1]_i_1 
       (.I0(Q_0[35]),
        .I1(Q_0[34]),
        .I2(\next_switch_matrix[0][1]_i_2_n_0 ),
        .I3(Q_0[55]),
        .O(\i_/next_switch_matrix[3][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC8C0)) 
    \i_/next_switch_matrix[3][2]_i_1 
       (.I0(\port_wants_to[3][4]_3 ),
        .I1(\i_/next_switch_matrix[3][2]_i_3_n_0 ),
        .I2(\recv[3].dir_n_63 ),
        .I3(\port_wants_to[3][3]_0 ),
        .O(\i_/next_switch_matrix[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00FB)) 
    \i_/next_switch_matrix[3][2]_i_3 
       (.I0(\i_/next_switch_matrix[0][2]_i_4_n_0 ),
        .I1(\port_wants_to[3][2]_1 [0]),
        .I2(\port_wants_to[3][2]_1 [2]),
        .I3(\i_/next_switch_matrix[3][2]_i_6_n_0 ),
        .O(\i_/next_switch_matrix[3][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    \i_/next_switch_matrix[3][2]_i_6 
       (.I0(\i_/next_switch_matrix[2][2]_i_2_n_0 ),
        .I1(\port_wants_to[3][1]_2 [0]),
        .I2(\port_wants_to[3][1]_2 [2]),
        .I3(\i_/next_switch_matrix[3][2]_i_9_n_0 ),
        .O(\i_/next_switch_matrix[3][2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \i_/next_switch_matrix[3][2]_i_7 
       (.I0(\recv[3].dir_n_66 ),
        .I1(\Q[3]__0 [55]),
        .I2(\Q[3]__0 [35]),
        .I3(\recv[3].dir_n_71 ),
        .I4(\i_/next_switch_matrix[3][2]_i_6_n_0 ),
        .O(\i_/next_switch_matrix[3][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFFFFFFFFFFF)) 
    \i_/next_switch_matrix[3][2]_i_8 
       (.I0(\i_/next_switch_matrix[0][2]_i_7_n_0 ),
        .I1(\Q[3]__0 [35]),
        .I2(\Q[3]__0 [34]),
        .I3(\recv[3].dir_n_66 ),
        .I4(\Q[3]__0 [55]),
        .I5(\recv[3].dir_n_71 ),
        .O(\i_/next_switch_matrix[3][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h02220000FFFFFFFF)) 
    \i_/next_switch_matrix[3][2]_i_9 
       (.I0(\i_/next_switch_matrix[2][2]_i_2_n_0 ),
        .I1(\port_wants_to[3][0]_4 [2]),
        .I2(\recv[3].dir_n_66 ),
        .I3(\Q[3]__0 [55]),
        .I4(\port_wants_to[3][0]_4 [0]),
        .I5(\i_/next_switch_matrix[3][1]_i_1_n_0 ),
        .O(\i_/next_switch_matrix[3][2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \i_/next_switch_matrix[4][0]_i_3 
       (.I0(\i_/next_switch_matrix[4][0]_i_9_n_0 ),
        .I1(\i_/next_switch_matrix[3][2]_i_1_n_0 ),
        .I2(\port_wants_to[6][1]_7 [2]),
        .I3(\port_wants_to[6][1]_7 [1]),
        .O(\i_/next_switch_matrix[4][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFBFAFAFAF)) 
    \i_/next_switch_matrix[4][0]_i_4 
       (.I0(\i_/next_switch_matrix[1][0]_i_4_n_0 ),
        .I1(\recv[6].dir_n_73 ),
        .I2(\Q[6]__0 [55]),
        .I3(\recv[6].dir_n_74 ),
        .I4(\Q[6]__0 [34]),
        .I5(\Q[6]__0 [35]),
        .O(\i_/next_switch_matrix[4][0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00001F00)) 
    \i_/next_switch_matrix[4][0]_i_7 
       (.I0(\Q[6]__0 [37]),
        .I1(\Q[6]__0 [36]),
        .I2(\Q[6]__0 [55]),
        .I3(\port_wants_to[6][0]_9 [2]),
        .I4(\i_/next_switch_matrix[4][0]_i_4_n_0 ),
        .O(\i_/next_switch_matrix[4][0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \i_/next_switch_matrix[4][0]_i_8 
       (.I0(\i_/next_switch_matrix[0][1]_i_1_n_0 ),
        .I1(\port_wants_to[6][1]_7 [2]),
        .I2(\port_wants_to[6][1]_7 [1]),
        .I3(\i_/next_switch_matrix[0][2]_i_3_n_0 ),
        .I4(\i_/next_switch_matrix[0][0]_i_10_n_0 ),
        .O(\i_/next_switch_matrix[4][0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00001115FFFFFFFF)) 
    \i_/next_switch_matrix[4][0]_i_9 
       (.I0(\recv[6].dir_n_0 ),
        .I1(\Q[6]__0 [55]),
        .I2(\Q[6]__0 [36]),
        .I3(\Q[6]__0 [37]),
        .I4(\port_wants_to[6][0]_9 [2]),
        .I5(\i_/next_switch_matrix[3][1]_i_1_n_0 ),
        .O(\i_/next_switch_matrix[4][0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \i_/next_switch_matrix[4][2]_i_2 
       (.I0(\i_/next_switch_matrix[2][2]_i_2_n_0 ),
        .I1(\i_/next_switch_matrix[4][2]_i_3_n_0 ),
        .I2(\port_wants_to[3][1]_2 [2]),
        .I3(\port_wants_to[3][1]_2 [0]),
        .O(\i_/next_switch_matrix[4][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEBAFABEEEAAEAA)) 
    \i_/next_switch_matrix[4][2]_i_3 
       (.I0(\i_/next_switch_matrix[4][2]_i_6_n_0 ),
        .I1(\port_wants_to[3][1]_2 [0]),
        .I2(\port_wants_to[3][1]_2 [2]),
        .I3(\i_/next_switch_matrix[3][2]_i_9_n_0 ),
        .I4(\i_/next_switch_matrix[6][2]_i_2_n_0 ),
        .I5(\i_/next_switch_matrix[0][2]_i_8_n_0 ),
        .O(\i_/next_switch_matrix[4][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h550F1133)) 
    \i_/next_switch_matrix[4][2]_i_6 
       (.I0(\recv[0].dir_n_0 ),
        .I1(\i_/next_switch_matrix[0][1]_i_1_n_0 ),
        .I2(\i_/next_switch_matrix[3][1]_i_1_n_0 ),
        .I3(\port_wants_to[3][1]_2 [2]),
        .I4(\port_wants_to[3][1]_2 [0]),
        .O(\i_/next_switch_matrix[4][2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \i_/next_switch_matrix[5][0]_i_1 
       (.I0(\i_/next_switch_matrix[4][0]_i_4_n_0 ),
        .I1(\port_wants_to[6][0]_9 [2]),
        .I2(\port_wants_to[6][0]_9 [0]),
        .O(\i_/next_switch_matrix[5][0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i_/next_switch_matrix[6][0]_i_1 
       (.I0(\recv[6].dir_n_4 ),
        .O(\i_/next_switch_matrix[6][0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i_/next_switch_matrix[6][2]_i_1 
       (.I0(\i_/next_switch_matrix[6][2]_i_2_n_0 ),
        .O(\i_/next_switch_matrix[6][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h222A0000FFFFFFFF)) 
    \i_/next_switch_matrix[6][2]_i_2 
       (.I0(\i_/next_switch_matrix[2][2]_i_2_n_0 ),
        .I1(\Q[3]__0 [55]),
        .I2(\Q[3]__0 [36]),
        .I3(\Q[3]__0 [37]),
        .I4(\port_wants_to[3][0]_4 [2]),
        .I5(\recv[0].dir_n_0 ),
        .O(\i_/next_switch_matrix[6][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \i_/read_R_i_1 
       (.I0(ctrl_cycle[1]),
        .I1(ctrl_cycle[0]),
        .I2(\i_/read_R_i_2_n_0 ),
        .I3(\i_/read_R_i_3_n_0 ),
        .I4(\i_/read_R_i_4_n_0 ),
        .I5(\i_/read_R_i_5_n_0 ),
        .O(\i_/read_R_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \i_/read_R_i_2 
       (.I0(\next_switch_matrix_reg[3]__0 [0]),
        .I1(\next_switch_matrix_reg[3]__0 [2]),
        .I2(\next_switch_matrix_reg[3]__0 [1]),
        .I3(\next_switch_matrix_reg[4]__0 [0]),
        .I4(\next_switch_matrix_reg[4]__0 [2]),
        .O(\i_/read_R_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \i_/read_R_i_3 
       (.I0(\next_switch_matrix_reg[5]__0 [0]),
        .I1(\next_switch_matrix_reg[5]__0 [2]),
        .I2(\next_switch_matrix_reg[6]__0 [0]),
        .I3(\next_switch_matrix_reg[6]__0 [2]),
        .I4(\next_switch_matrix_reg[6]__0 [1]),
        .O(\i_/read_R_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i_/read_R_i_4 
       (.I0(\next_switch_matrix_reg[1]__0 [2]),
        .I1(\next_switch_matrix_reg[1]__0 [0]),
        .O(\i_/read_R_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \i_/read_R_i_5 
       (.I0(\next_switch_matrix_reg[0]__0 [0]),
        .I1(\next_switch_matrix_reg[0]__0 [2]),
        .I2(\next_switch_matrix_reg[0]__0 [1]),
        .I3(\next_switch_matrix_reg[2]__0 [0]),
        .I4(\next_switch_matrix_reg[2]__0 [2]),
        .O(\i_/read_R_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \i_/write_R_i_1 
       (.I0(From_NoC_1[55]),
        .I1(ctrl_cycle[1]),
        .I2(ctrl_cycle[0]),
        .O(\i_/write_R_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][1]_i_2 
       (.I0(Q_0[36]),
        .I1(Q_0[37]),
        .O(\next_switch_matrix[0][1]_i_2_n_0 ));
  FDSE \next_switch_matrix_reg[0][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\recv[6].dir_n_62 ),
        .Q(\next_switch_matrix_reg[0]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[0][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\i_/next_switch_matrix[0][1]_i_1_n_0 ),
        .Q(\next_switch_matrix_reg[0]__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[0][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\i_/next_switch_matrix[0][2]_i_2_n_0 ),
        .Q(\next_switch_matrix_reg[0]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[1][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\recv[6].dir_n_61 ),
        .Q(\next_switch_matrix_reg[1]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[1][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\recv[3].dir_n_0 ),
        .Q(\next_switch_matrix_reg[1]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[2][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\i_/next_switch_matrix[2][0]_i_1_n_0 ),
        .Q(\next_switch_matrix_reg[2]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[2][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\i_/next_switch_matrix[2][2]_i_1_n_0 ),
        .Q(\next_switch_matrix_reg[2]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[3][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\i_/next_switch_matrix[3][0]_i_1_n_0 ),
        .Q(\next_switch_matrix_reg[3]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[3][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\i_/next_switch_matrix[3][1]_i_1_n_0 ),
        .Q(\next_switch_matrix_reg[3]__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[3][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\i_/next_switch_matrix[3][2]_i_1_n_0 ),
        .Q(\next_switch_matrix_reg[3]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[4][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\recv[6].dir_n_67 ),
        .Q(\next_switch_matrix_reg[4]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[4][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\recv[3].dir_n_62 ),
        .Q(\next_switch_matrix_reg[4]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[5][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\i_/next_switch_matrix[5][0]_i_1_n_0 ),
        .Q(\next_switch_matrix_reg[5]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[5][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\recv[3].dir_n_60 ),
        .Q(\next_switch_matrix_reg[5]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\i_/next_switch_matrix[6][0]_i_1_n_0 ),
        .Q(\next_switch_matrix_reg[6]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\recv[0].dir_n_0 ),
        .Q(\next_switch_matrix_reg[6]__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_12 ),
        .D(\i_/next_switch_matrix[6][2]_i_1_n_0 ),
        .Q(\next_switch_matrix_reg[6]__0 [2]),
        .S(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \pres_switch_matrix[0][2]_i_1 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\pres_switch_matrix[0][2]_i_1_n_0 ));
  FDSE \pres_switch_matrix_reg[0][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[0]__0 [0]),
        .Q(\pres_switch_matrix_reg[0]__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[0][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[0]__0 [1]),
        .Q(\pres_switch_matrix_reg[0]__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[0][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[0]__0 [2]),
        .Q(\pres_switch_matrix_reg[0]__0 [2]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[3][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[3]__0 [0]),
        .Q(\pres_switch_matrix_reg[3]__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[3][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[3]__0 [1]),
        .Q(\pres_switch_matrix_reg[3]__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[3][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[3]__0 [2]),
        .Q(\pres_switch_matrix_reg[3]__0 [2]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[6]__0 [0]),
        .Q(\pres_switch_matrix_reg[6]__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[6]__0 [1]),
        .Q(\pres_switch_matrix_reg[6]__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[0][2]_i_1_n_0 ),
        .D(\next_switch_matrix_reg[6]__0 [2]),
        .Q(\pres_switch_matrix_reg[6]__0 [2]),
        .S(reset));
  FDRE read_R_reg
       (.C(clk),
        .CE(1'b1),
        .D(\i_/read_R_i_1_n_0 ),
        .Q(read_R),
        .R(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized7 \recv[0].dir 
       (.E(load_enable),
        .\G0.mem_reg[36]_0 (\next_switch_matrix[0][1]_i_2_n_0 ),
        .Q(Q_0),
        .clk(clk),
        .\mem_reg[55] (Q),
        .\next_switch_matrix_reg[6][1] (\recv[0].dir_n_0 ),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized10 \recv[3].dir 
       (.D(\recv[3].dir_n_0 ),
        .E(load_enable),
        .\G0.mem_reg[34]_0 (\i_/next_switch_matrix[3][2]_i_1_n_0 ),
        .\G0.mem_reg[35]_0 (\i_/next_switch_matrix[0][2]_i_3_n_0 ),
        .\G0.mem_reg[35]_1 (\i_/next_switch_matrix[4][2]_i_2_n_0 ),
        .\G0.mem_reg[35]_2 (\i_/next_switch_matrix[3][2]_i_8_n_0 ),
        .\G0.mem_reg[35]_3 (\i_/next_switch_matrix[0][2]_i_4_n_0 ),
        .\G0.mem_reg[55]_0 (\i_/next_switch_matrix[1][2]_i_3_n_0 ),
        .\G0.mem_reg[55]_1 (\i_/next_switch_matrix[6][2]_i_2_n_0 ),
        .\G0.mem_reg[55]_2 (\i_/next_switch_matrix[3][2]_i_7_n_0 ),
        .Q(\Q[3]__0 ),
        .clk(clk),
        .\mem_reg[55] (D),
        .\next_switch_matrix_reg[0][0] (\recv[3].dir_n_61 ),
        .\next_switch_matrix_reg[2][2] (\recv[3].dir_n_66 ),
        .\next_switch_matrix_reg[2][2]_0 (\recv[3].dir_n_71 ),
        .\next_switch_matrix_reg[3][2] (\recv[3].dir_n_63 ),
        .\next_switch_matrix_reg[4][2] (\recv[3].dir_n_62 ),
        .\next_switch_matrix_reg[5][2] (\recv[3].dir_n_60 ),
        .\port_wants_to[3][0]_4 (\port_wants_to[3][0]_4 ),
        .\port_wants_to[3][1]_2 ({\port_wants_to[3][1]_2 [2],\port_wants_to[3][1]_2 [0]}),
        .\port_wants_to[3][2]_1 ({\port_wants_to[3][2]_1 [2],\port_wants_to[3][2]_1 [0]}),
        .\port_wants_to[3][3]_0 (\port_wants_to[3][3]_0 ),
        .\port_wants_to[3][4]_3 (\port_wants_to[3][4]_3 ),
        .\port_wants_to[6][2]_6 (\port_wants_to[6][2]_6 ),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized13 \recv[6].dir 
       (.D(\recv[6].dir_n_61 ),
        .E(load_enable),
        .\G0.mem_reg[32]_0 (\i_/next_switch_matrix[0][0]_i_4_n_0 ),
        .\G0.mem_reg[32]_1 (\i_/next_switch_matrix[0][0]_i_8_n_0 ),
        .\G0.mem_reg[32]_2 (\i_/next_switch_matrix[4][0]_i_8_n_0 ),
        .\G0.mem_reg[33]_0 (\recv[0].dir_n_0 ),
        .\G0.mem_reg[34]_0 (\i_/next_switch_matrix[3][2]_i_1_n_0 ),
        .\G0.mem_reg[34]_1 (\i_/next_switch_matrix[3][0]_i_9_n_0 ),
        .\G0.mem_reg[35]_0 (\i_/next_switch_matrix[3][0]_i_7_n_0 ),
        .\G0.mem_reg[35]_1 (\i_/next_switch_matrix[0][2]_i_3_n_0 ),
        .\G0.mem_reg[35]_2 (\i_/next_switch_matrix[4][2]_i_2_n_0 ),
        .\G0.mem_reg[37]_0 (\recv[3].dir_n_0 ),
        .\G0.mem_reg[37]_1 (\recv[3].dir_n_60 ),
        .\G0.mem_reg[37]_2 (\i_/next_switch_matrix[4][0]_i_7_n_0 ),
        .\G0.mem_reg[55]_0 (\i_/next_switch_matrix[1][0]_i_4_n_0 ),
        .\G0.mem_reg[55]_1 (\i_/next_switch_matrix[4][0]_i_4_n_0 ),
        .\G0.mem_reg[55]_2 (\i_/next_switch_matrix[4][0]_i_3_n_0 ),
        .\G0.mem_reg[55]_3 (\i_/next_switch_matrix[0][0]_i_7_n_0 ),
        .\G0.mem_reg[55]_4 (\recv[3].dir_n_61 ),
        .\G0.mem_reg[55]_5 (\i_/next_switch_matrix[6][2]_i_2_n_0 ),
        .Q(\Q[6]__0 ),
        .To_NoC_1(To_NoC_1),
        .clk(clk),
        .\next_switch_matrix_reg[0][0] (\recv[6].dir_n_62 ),
        .\next_switch_matrix_reg[0][0]_0 (\recv[6].dir_n_63 ),
        .\next_switch_matrix_reg[0][0]_1 (\recv[6].dir_n_64 ),
        .\next_switch_matrix_reg[0][0]_2 (\recv[6].dir_n_73 ),
        .\next_switch_matrix_reg[1][0] (\recv[6].dir_n_0 ),
        .\next_switch_matrix_reg[1][0]_0 (\recv[6].dir_n_72 ),
        .\next_switch_matrix_reg[3][0] (\recv[6].dir_n_70 ),
        .\next_switch_matrix_reg[3][0]_0 (\recv[6].dir_n_71 ),
        .\next_switch_matrix_reg[3][0]_1 (\recv[6].dir_n_74 ),
        .\next_switch_matrix_reg[4][0] (\recv[6].dir_n_67 ),
        .\next_switch_matrix_reg[6][0] (\recv[6].dir_n_4 ),
        .\port_wants_to[6][0]_9 (\port_wants_to[6][0]_9 ),
        .\port_wants_to[6][1]_7 (\port_wants_to[6][1]_7 ),
        .\port_wants_to[6][2]_6 (\port_wants_to[6][2]_6 ),
        .reset(reset));
  FDRE write_R_reg
       (.C(clk),
        .CE(1'b1),
        .D(\i_/write_R_i_1_n_0 ),
        .Q(write_R),
        .R(1'b0));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_2 \xmit[0].dir 
       (.D(\next_outport[0]_13 ),
        .E(load_enable),
        .\G0.mem_reg[55] (\G0.mem_reg[55] ),
        .clk(clk),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_3 \xmit[3].dir 
       (.D(\next_outport[3]_14 ),
        .E(load_enable),
        .\G0.mem_reg[55] (\G0.mem_reg[55]_0 ),
        .clk(clk),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_4 \xmit[6].dir 
       (.D(\next_outport[6]_15 ),
        .E(load_enable),
        .From_NoC_1(From_NoC_1),
        .clk(clk),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_Switch" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized5
   (\Outport[1] ,
    \Outport[3] ,
    From_NoC_3,
    read_R,
    write_R,
    reset,
    \Inport[1] ,
    clk,
    \Inport[3] ,
    To_NoC_3);
  output [55:0]\Outport[1] ;
  output [55:0]\Outport[3] ;
  output [55:0]From_NoC_3;
  output [0:0]read_R;
  output [0:0]write_R;
  input reset;
  input [55:0]\Inport[1] ;
  input clk;
  input [55:0]\Inport[3] ;
  input [55:0]To_NoC_3;

  wire [55:0]From_NoC_3;
  wire [55:0]\Inport[1] ;
  wire [55:0]\Inport[3] ;
  wire [55:0]\Outport[1] ;
  wire [55:0]\Outport[3] ;
  wire [55:0]\Q[1]__0 ;
  wire [55:0]\Q[3]__0 ;
  wire [55:0]\Q[6]__0 ;
  wire [55:0]To_NoC_3;
  wire clk;
  wire [1:0]ctrl_cycle;
  wire \ctrl_cycle[0]_i_1__2_n_0 ;
  wire \ctrl_cycle[1]_i_1__2_n_0 ;
  wire load_enable;
  wire [55:0]\next_outport[1]_56 ;
  wire [55:0]\next_outport[3]_57 ;
  wire [55:0]\next_outport[6]_58 ;
  wire \next_switch_matrix[6]_55 ;
  wire [2:0]\next_switch_matrix_reg[0]__0 ;
  wire [2:0]\next_switch_matrix_reg[1]__0 ;
  wire [2:0]\next_switch_matrix_reg[2]__0 ;
  wire [2:0]\next_switch_matrix_reg[3]__0 ;
  wire [2:0]\next_switch_matrix_reg[4]__0 ;
  wire [2:0]\next_switch_matrix_reg[5]__0 ;
  wire [2:0]\next_switch_matrix_reg[6]__0 ;
  wire [2:0]\port_wants_to[6][0]_50 ;
  wire [2:1]\port_wants_to[6][1]_52 ;
  wire [2:1]\port_wants_to[6][2]_51 ;
  wire [2:1]\port_wants_to[6][3]_49 ;
  wire [2:1]\port_wants_to[6][4]_48 ;
  wire \pres_switch_matrix[1][2]_i_1__0_n_0 ;
  wire [2:0]\pres_switch_matrix_reg[1]__0__0 ;
  wire [2:0]\pres_switch_matrix_reg[3]__0__0 ;
  wire [2:0]\pres_switch_matrix_reg[6]__0 ;
  wire [0:0]read_R;
  wire read_R_i_1__1_n_0;
  wire read_R_i_2__1_n_0;
  wire read_R_i_3__1_n_0;
  wire read_R_i_4__1_n_0;
  wire read_R_i_5__1_n_0;
  wire \recv[1].dir_n_0 ;
  wire \recv[1].dir_n_57 ;
  wire \recv[1].dir_n_58 ;
  wire \recv[1].dir_n_59 ;
  wire \recv[1].dir_n_60 ;
  wire \recv[1].dir_n_61 ;
  wire \recv[1].dir_n_62 ;
  wire \recv[3].dir_n_0 ;
  wire \recv[3].dir_n_1 ;
  wire \recv[3].dir_n_2 ;
  wire \recv[3].dir_n_3 ;
  wire \recv[3].dir_n_60 ;
  wire \recv[3].dir_n_61 ;
  wire \recv[3].dir_n_62 ;
  wire \recv[3].dir_n_63 ;
  wire \recv[3].dir_n_64 ;
  wire \recv[3].dir_n_65 ;
  wire \recv[3].dir_n_66 ;
  wire \recv[3].dir_n_67 ;
  wire \recv[3].dir_n_68 ;
  wire \recv[3].dir_n_69 ;
  wire \recv[3].dir_n_70 ;
  wire \recv[3].dir_n_71 ;
  wire \recv[6].dir_n_60 ;
  wire \recv[6].dir_n_61 ;
  wire \recv[6].dir_n_65 ;
  wire \recv[6].dir_n_70 ;
  wire \recv[6].dir_n_71 ;
  wire \recv[6].dir_n_72 ;
  wire \recv[6].dir_n_73 ;
  wire \recv[6].dir_n_74 ;
  wire \recv[6].dir_n_75 ;
  wire reset;
  wire [0:0]write_R;
  wire \xmit[6].dir_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ctrl_cycle[0]_i_1__2 
       (.I0(ctrl_cycle[0]),
        .O(\ctrl_cycle[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctrl_cycle[1]_i_1__2 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\ctrl_cycle[1]_i_1__2_n_0 ));
  FDRE \ctrl_cycle_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\ctrl_cycle[0]_i_1__2_n_0 ),
        .Q(ctrl_cycle[0]),
        .R(reset));
  FDRE \ctrl_cycle_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\ctrl_cycle[1]_i_1__2_n_0 ),
        .Q(ctrl_cycle[1]),
        .R(reset));
  LUT2 #(
    .INIT(4'h1)) 
    \next_switch_matrix[0][2]_i_1__1 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\next_switch_matrix[6]_55 ));
  FDSE \next_switch_matrix_reg[0][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[6].dir_n_73 ),
        .Q(\next_switch_matrix_reg[0]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[0][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[3].dir_n_61 ),
        .Q(\next_switch_matrix_reg[0]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[1][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[6].dir_n_65 ),
        .Q(\next_switch_matrix_reg[1]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[1][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[1].dir_n_62 ),
        .Q(\next_switch_matrix_reg[1]__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[1][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[3].dir_n_67 ),
        .Q(\next_switch_matrix_reg[1]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[2][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[6].dir_n_74 ),
        .Q(\next_switch_matrix_reg[2]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[2][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[3].dir_n_60 ),
        .Q(\next_switch_matrix_reg[2]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[3][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[6].dir_n_60 ),
        .Q(\next_switch_matrix_reg[3]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[3][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[1].dir_n_60 ),
        .Q(\next_switch_matrix_reg[3]__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[3][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[3].dir_n_2 ),
        .Q(\next_switch_matrix_reg[3]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[4][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[6].dir_n_72 ),
        .Q(\next_switch_matrix_reg[4]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[4][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[3].dir_n_71 ),
        .Q(\next_switch_matrix_reg[4]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[5][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[6].dir_n_61 ),
        .Q(\next_switch_matrix_reg[5]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[5][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[3].dir_n_63 ),
        .Q(\next_switch_matrix_reg[5]__0 [2]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][0] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[6].dir_n_75 ),
        .Q(\next_switch_matrix_reg[6]__0 [0]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][1] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[1].dir_n_61 ),
        .Q(\next_switch_matrix_reg[6]__0 [1]),
        .S(reset));
  FDSE \next_switch_matrix_reg[6][2] 
       (.C(clk),
        .CE(\next_switch_matrix[6]_55 ),
        .D(\recv[3].dir_n_70 ),
        .Q(\next_switch_matrix_reg[6]__0 [2]),
        .S(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \pres_switch_matrix[1][2]_i_1__0 
       (.I0(ctrl_cycle[0]),
        .I1(ctrl_cycle[1]),
        .O(\pres_switch_matrix[1][2]_i_1__0_n_0 ));
  FDSE \pres_switch_matrix_reg[1][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[1]__0 [0]),
        .Q(\pres_switch_matrix_reg[1]__0__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[1][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[1]__0 [1]),
        .Q(\pres_switch_matrix_reg[1]__0__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[1][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[1]__0 [2]),
        .Q(\pres_switch_matrix_reg[1]__0__0 [2]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[3][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[3]__0 [0]),
        .Q(\pres_switch_matrix_reg[3]__0__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[3][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[3]__0 [1]),
        .Q(\pres_switch_matrix_reg[3]__0__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[3][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[3]__0 [2]),
        .Q(\pres_switch_matrix_reg[3]__0__0 [2]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][0] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[6]__0 [0]),
        .Q(\pres_switch_matrix_reg[6]__0 [0]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][1] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[6]__0 [1]),
        .Q(\pres_switch_matrix_reg[6]__0 [1]),
        .S(reset));
  FDSE \pres_switch_matrix_reg[6][2] 
       (.C(clk),
        .CE(\pres_switch_matrix[1][2]_i_1__0_n_0 ),
        .D(\next_switch_matrix_reg[6]__0 [2]),
        .Q(\pres_switch_matrix_reg[6]__0 [2]),
        .S(reset));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    read_R_i_1__1
       (.I0(ctrl_cycle[1]),
        .I1(ctrl_cycle[0]),
        .I2(read_R_i_2__1_n_0),
        .I3(read_R_i_3__1_n_0),
        .I4(read_R_i_4__1_n_0),
        .I5(read_R_i_5__1_n_0),
        .O(read_R_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    read_R_i_2__1
       (.I0(\next_switch_matrix_reg[3]__0 [0]),
        .I1(\next_switch_matrix_reg[3]__0 [2]),
        .I2(\next_switch_matrix_reg[3]__0 [1]),
        .I3(\next_switch_matrix_reg[4]__0 [0]),
        .I4(\next_switch_matrix_reg[4]__0 [2]),
        .O(read_R_i_2__1_n_0));
  LUT5 #(
    .INIT(32'h4F444444)) 
    read_R_i_3__1
       (.I0(\next_switch_matrix_reg[5]__0 [0]),
        .I1(\next_switch_matrix_reg[5]__0 [2]),
        .I2(\next_switch_matrix_reg[6]__0 [0]),
        .I3(\next_switch_matrix_reg[6]__0 [2]),
        .I4(\next_switch_matrix_reg[6]__0 [1]),
        .O(read_R_i_3__1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    read_R_i_4__1
       (.I0(\next_switch_matrix_reg[1]__0 [1]),
        .I1(\next_switch_matrix_reg[1]__0 [2]),
        .I2(\next_switch_matrix_reg[1]__0 [0]),
        .O(read_R_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    read_R_i_5__1
       (.I0(\next_switch_matrix_reg[0]__0 [0]),
        .I1(\next_switch_matrix_reg[0]__0 [2]),
        .I2(\next_switch_matrix_reg[2]__0 [0]),
        .I3(\next_switch_matrix_reg[2]__0 [2]),
        .O(read_R_i_5__1_n_0));
  FDRE read_R_reg
       (.C(clk),
        .CE(1'b1),
        .D(read_R_i_1__1_n_0),
        .Q(read_R),
        .R(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized15 \recv[1].dir 
       (.D(\recv[1].dir_n_60 ),
        .E(load_enable),
        .\G0.mem_reg[55]_0 (\Q[3]__0 ),
        .\G0.mem_reg[55]_1 (\Q[6]__0 ),
        .\Inport[1] (\Inport[1] ),
        .Q(\Q[1]__0 ),
        .clk(clk),
        .\mem_reg[55] (\next_outport[1]_56 ),
        .\next_switch_matrix_reg[1][1] (\recv[1].dir_n_62 ),
        .\next_switch_matrix_reg[3][0] (\recv[1].dir_n_57 ),
        .\next_switch_matrix_reg[3][0]_0 (\recv[1].dir_n_58 ),
        .\next_switch_matrix_reg[3][0]_1 (\recv[1].dir_n_59 ),
        .\next_switch_matrix_reg[6][1] (\recv[1].dir_n_61 ),
        .\next_switch_matrix_reg[6][2] (\recv[1].dir_n_0 ),
        .\port_wants_to[6][4]_48 (\port_wants_to[6][4]_48 ),
        .\pres_switch_matrix_reg[1][2] (\pres_switch_matrix_reg[1]__0__0 ),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized17 \recv[3].dir 
       (.D(\recv[3].dir_n_61 ),
        .E(load_enable),
        .\G0.mem_reg[34]_0 (\recv[1].dir_n_59 ),
        .\G0.mem_reg[35]_0 (\recv[6].dir_n_70 ),
        .\G0.mem_reg[35]_1 (\recv[6].dir_n_71 ),
        .\G0.mem_reg[37]_0 (\recv[1].dir_n_58 ),
        .\G0.mem_reg[55]_0 (\recv[1].dir_n_0 ),
        .\Inport[3] (\Inport[3] ),
        .Q(\Q[3]__0 ),
        .clk(clk),
        .\next_switch_matrix_reg[0][0] (\recv[3].dir_n_65 ),
        .\next_switch_matrix_reg[1][2] (\recv[3].dir_n_3 ),
        .\next_switch_matrix_reg[1][2]_0 (\recv[3].dir_n_67 ),
        .\next_switch_matrix_reg[2][2] (\recv[3].dir_n_60 ),
        .\next_switch_matrix_reg[3][0] (\recv[3].dir_n_0 ),
        .\next_switch_matrix_reg[3][0]_0 (\recv[3].dir_n_62 ),
        .\next_switch_matrix_reg[3][2] (\recv[3].dir_n_2 ),
        .\next_switch_matrix_reg[4][2] (\recv[3].dir_n_71 ),
        .\next_switch_matrix_reg[5][0] (\recv[3].dir_n_64 ),
        .\next_switch_matrix_reg[5][0]_0 (\recv[3].dir_n_66 ),
        .\next_switch_matrix_reg[5][0]_1 (\recv[3].dir_n_68 ),
        .\next_switch_matrix_reg[5][0]_2 (\recv[3].dir_n_69 ),
        .\next_switch_matrix_reg[5][2] (\recv[3].dir_n_63 ),
        .\next_switch_matrix_reg[6][2] (\recv[3].dir_n_1 ),
        .\next_switch_matrix_reg[6][2]_0 (\recv[3].dir_n_70 ),
        .\port_wants_to[6][0]_50 ({\port_wants_to[6][0]_50 [2],\port_wants_to[6][0]_50 [0]}),
        .\port_wants_to[6][1]_52 (\port_wants_to[6][1]_52 ),
        .\port_wants_to[6][2]_51 (\port_wants_to[6][2]_51 ),
        .\port_wants_to[6][3]_49 (\port_wants_to[6][3]_49 ),
        .\port_wants_to[6][4]_48 (\port_wants_to[6][4]_48 ),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized20 \recv[6].dir 
       (.D(\recv[6].dir_n_60 ),
        .E(load_enable),
        .\G0.mem_reg[34]_0 (\recv[3].dir_n_68 ),
        .\G0.mem_reg[34]_1 (\recv[3].dir_n_69 ),
        .\G0.mem_reg[34]_2 (\recv[3].dir_n_66 ),
        .\G0.mem_reg[34]_3 (\recv[3].dir_n_2 ),
        .\G0.mem_reg[35]_0 (\recv[3].dir_n_64 ),
        .\G0.mem_reg[36]_0 (\recv[3].dir_n_1 ),
        .\G0.mem_reg[36]_1 (\recv[3].dir_n_71 ),
        .\G0.mem_reg[36]_2 (\recv[3].dir_n_0 ),
        .\G0.mem_reg[37]_0 (\recv[3].dir_n_63 ),
        .\G0.mem_reg[37]_1 (\recv[3].dir_n_62 ),
        .\G0.mem_reg[37]_2 (\recv[1].dir_n_57 ),
        .\G0.mem_reg[55]_0 (\recv[3].dir_n_3 ),
        .\G0.mem_reg[55]_1 (\recv[3].dir_n_65 ),
        .\G0.mem_reg[55]_2 (\recv[3].dir_n_61 ),
        .\G0.mem_reg[55]_3 (\recv[3].dir_n_60 ),
        .\G0.mem_reg[55]_4 (\Q[1]__0 ),
        .\G0.mem_reg[55]_5 (\Q[3]__0 ),
        .Q(\Q[6]__0 ),
        .To_NoC_3(To_NoC_3),
        .clk(clk),
        .\ctrl_cycle_reg[1] (ctrl_cycle),
        .\mem_reg[55] (\next_outport[3]_57 ),
        .\mem_reg[55]_0 (\next_outport[6]_58 ),
        .\next_switch_matrix_reg[0][0] ({\port_wants_to[6][0]_50 [2],\port_wants_to[6][0]_50 [0]}),
        .\next_switch_matrix_reg[0][0]_0 (\recv[6].dir_n_70 ),
        .\next_switch_matrix_reg[0][0]_1 (\recv[6].dir_n_71 ),
        .\next_switch_matrix_reg[0][0]_2 (\recv[6].dir_n_73 ),
        .\next_switch_matrix_reg[1][0] (\recv[6].dir_n_65 ),
        .\next_switch_matrix_reg[2][0] (\recv[6].dir_n_74 ),
        .\next_switch_matrix_reg[4][0] (\recv[6].dir_n_72 ),
        .\next_switch_matrix_reg[5][0] (\recv[6].dir_n_61 ),
        .\next_switch_matrix_reg[6][0] (\recv[6].dir_n_75 ),
        .\port_wants_to[6][1]_52 (\port_wants_to[6][1]_52 ),
        .\port_wants_to[6][2]_51 (\port_wants_to[6][2]_51 ),
        .\port_wants_to[6][3]_49 (\port_wants_to[6][3]_49 ),
        .\port_wants_to[6][4]_48 (\port_wants_to[6][4]_48 ),
        .\pres_switch_matrix_reg[3][2] (\pres_switch_matrix_reg[3]__0__0 ),
        .\pres_switch_matrix_reg[6][2] (\pres_switch_matrix_reg[6]__0 ),
        .reset(reset));
  FDRE write_R_reg
       (.C(clk),
        .CE(1'b1),
        .D(\xmit[6].dir_n_0 ),
        .Q(write_R),
        .R(1'b0));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter \xmit[1].dir 
       (.D(\next_outport[1]_56 ),
        .E(load_enable),
        .\Outport[1] (\Outport[1] ),
        .clk(clk),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_0 \xmit[3].dir 
       (.D(\next_outport[3]_57 ),
        .E(load_enable),
        .\Outport[3] (\Outport[3] ),
        .clk(clk),
        .reset(reset));
  BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_1 \xmit[6].dir 
       (.D(\next_outport[6]_58 ),
        .E(load_enable),
        .From_NoC_3(From_NoC_3),
        .Q(ctrl_cycle),
        .clk(clk),
        .reset(reset),
        .write_R_reg(\xmit[6].dir_n_0 ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv
   (\next_switch_matrix_reg[4][0] ,
    \next_switch_matrix_reg[0][1] ,
    gtOp,
    Q,
    D,
    \next_switch_matrix_reg[5][2] ,
    \next_switch_matrix_reg[6][1] ,
    \next_switch_matrix_reg[2][1] ,
    \mem_reg[55] ,
    \G0.mem_reg[37]_0 ,
    \G0.mem_reg[33]_0 ,
    \port_wants_to[2][2]_17 ,
    \G0.mem_reg[55]_0 ,
    \G0.mem_reg[55]_1 ,
    \pres_switch_matrix_reg[0][2] ,
    reset,
    E,
    \mem_reg[55]_0 ,
    clk);
  output \next_switch_matrix_reg[4][0] ;
  output \next_switch_matrix_reg[0][1] ;
  output gtOp;
  output [55:0]Q;
  output [0:0]D;
  output \next_switch_matrix_reg[5][2] ;
  output [0:0]\next_switch_matrix_reg[6][1] ;
  output [0:0]\next_switch_matrix_reg[2][1] ;
  output [55:0]\mem_reg[55] ;
  input \G0.mem_reg[37]_0 ;
  input \G0.mem_reg[33]_0 ;
  input [1:0]\port_wants_to[2][2]_17 ;
  input [55:0]\G0.mem_reg[55]_0 ;
  input [55:0]\G0.mem_reg[55]_1 ;
  input [2:0]\pres_switch_matrix_reg[0][2] ;
  input reset;
  input [0:0]E;
  input [55:0]\mem_reg[55]_0 ;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire \G0.mem_reg[33]_0 ;
  wire \G0.mem_reg[37]_0 ;
  wire [55:0]\G0.mem_reg[55]_0 ;
  wire [55:0]\G0.mem_reg[55]_1 ;
  wire [55:0]Q;
  wire clk;
  wire gtOp;
  wire [55:0]\mem_reg[55] ;
  wire [55:0]\mem_reg[55]_0 ;
  wire \next_switch_matrix[5][2]_i_5_n_0 ;
  wire \next_switch_matrix_reg[0][1] ;
  wire [0:0]\next_switch_matrix_reg[2][1] ;
  wire \next_switch_matrix_reg[4][0] ;
  wire \next_switch_matrix_reg[5][2] ;
  wire [0:0]\next_switch_matrix_reg[6][1] ;
  wire [1:0]\port_wants_to[2][2]_17 ;
  wire [2:0]\pres_switch_matrix_reg[0][2] ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55]_0 [9]),
        .Q(Q[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[0]_i_1 
       (.I0(Q[0]),
        .I1(\G0.mem_reg[55]_0 [0]),
        .I2(\G0.mem_reg[55]_1 [0]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [0]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[10]_i_1 
       (.I0(Q[10]),
        .I1(\G0.mem_reg[55]_0 [10]),
        .I2(\G0.mem_reg[55]_1 [10]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [10]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[11]_i_1 
       (.I0(Q[11]),
        .I1(\G0.mem_reg[55]_0 [11]),
        .I2(\G0.mem_reg[55]_1 [11]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [11]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[12]_i_1 
       (.I0(Q[12]),
        .I1(\G0.mem_reg[55]_0 [12]),
        .I2(\G0.mem_reg[55]_1 [12]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [12]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[13]_i_1 
       (.I0(Q[13]),
        .I1(\G0.mem_reg[55]_0 [13]),
        .I2(\G0.mem_reg[55]_1 [13]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [13]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[14]_i_1 
       (.I0(Q[14]),
        .I1(\G0.mem_reg[55]_0 [14]),
        .I2(\G0.mem_reg[55]_1 [14]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [14]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[15]_i_1 
       (.I0(Q[15]),
        .I1(\G0.mem_reg[55]_0 [15]),
        .I2(\G0.mem_reg[55]_1 [15]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [15]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[16]_i_1 
       (.I0(Q[16]),
        .I1(\G0.mem_reg[55]_0 [16]),
        .I2(\G0.mem_reg[55]_1 [16]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [16]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[17]_i_1 
       (.I0(Q[17]),
        .I1(\G0.mem_reg[55]_0 [17]),
        .I2(\G0.mem_reg[55]_1 [17]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [17]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[18]_i_1 
       (.I0(Q[18]),
        .I1(\G0.mem_reg[55]_0 [18]),
        .I2(\G0.mem_reg[55]_1 [18]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [18]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[19]_i_1 
       (.I0(Q[19]),
        .I1(\G0.mem_reg[55]_0 [19]),
        .I2(\G0.mem_reg[55]_1 [19]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [19]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[1]_i_1 
       (.I0(Q[1]),
        .I1(\G0.mem_reg[55]_0 [1]),
        .I2(\G0.mem_reg[55]_1 [1]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [1]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[20]_i_1 
       (.I0(Q[20]),
        .I1(\G0.mem_reg[55]_0 [20]),
        .I2(\G0.mem_reg[55]_1 [20]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [20]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[21]_i_1 
       (.I0(Q[21]),
        .I1(\G0.mem_reg[55]_0 [21]),
        .I2(\G0.mem_reg[55]_1 [21]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [21]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[22]_i_1 
       (.I0(Q[22]),
        .I1(\G0.mem_reg[55]_0 [22]),
        .I2(\G0.mem_reg[55]_1 [22]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [22]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[23]_i_1 
       (.I0(Q[23]),
        .I1(\G0.mem_reg[55]_0 [23]),
        .I2(\G0.mem_reg[55]_1 [23]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [23]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[24]_i_1 
       (.I0(Q[24]),
        .I1(\G0.mem_reg[55]_0 [24]),
        .I2(\G0.mem_reg[55]_1 [24]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [24]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[25]_i_1 
       (.I0(Q[25]),
        .I1(\G0.mem_reg[55]_0 [25]),
        .I2(\G0.mem_reg[55]_1 [25]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [25]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[26]_i_1 
       (.I0(Q[26]),
        .I1(\G0.mem_reg[55]_0 [26]),
        .I2(\G0.mem_reg[55]_1 [26]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [26]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[27]_i_1 
       (.I0(Q[27]),
        .I1(\G0.mem_reg[55]_0 [27]),
        .I2(\G0.mem_reg[55]_1 [27]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [27]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[28]_i_1 
       (.I0(Q[28]),
        .I1(\G0.mem_reg[55]_0 [28]),
        .I2(\G0.mem_reg[55]_1 [28]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [28]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[29]_i_1 
       (.I0(Q[29]),
        .I1(\G0.mem_reg[55]_0 [29]),
        .I2(\G0.mem_reg[55]_1 [29]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [29]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[2]_i_1 
       (.I0(Q[2]),
        .I1(\G0.mem_reg[55]_0 [2]),
        .I2(\G0.mem_reg[55]_1 [2]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [2]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[30]_i_1 
       (.I0(Q[30]),
        .I1(\G0.mem_reg[55]_0 [30]),
        .I2(\G0.mem_reg[55]_1 [30]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [30]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[31]_i_1 
       (.I0(Q[31]),
        .I1(\G0.mem_reg[55]_0 [31]),
        .I2(\G0.mem_reg[55]_1 [31]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [31]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[32]_i_1 
       (.I0(Q[32]),
        .I1(\G0.mem_reg[55]_0 [32]),
        .I2(\G0.mem_reg[55]_1 [32]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [32]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[33]_i_1 
       (.I0(Q[33]),
        .I1(\G0.mem_reg[55]_0 [33]),
        .I2(\G0.mem_reg[55]_1 [33]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [33]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[34]_i_1 
       (.I0(Q[34]),
        .I1(\G0.mem_reg[55]_0 [34]),
        .I2(\G0.mem_reg[55]_1 [34]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [34]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[35]_i_1 
       (.I0(Q[35]),
        .I1(\G0.mem_reg[55]_0 [35]),
        .I2(\G0.mem_reg[55]_1 [35]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [35]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[36]_i_1 
       (.I0(Q[36]),
        .I1(\G0.mem_reg[55]_0 [36]),
        .I2(\G0.mem_reg[55]_1 [36]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [36]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[37]_i_1 
       (.I0(Q[37]),
        .I1(\G0.mem_reg[55]_0 [37]),
        .I2(\G0.mem_reg[55]_1 [37]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [37]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[38]_i_1 
       (.I0(Q[38]),
        .I1(\G0.mem_reg[55]_0 [38]),
        .I2(\G0.mem_reg[55]_1 [38]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [38]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[39]_i_1 
       (.I0(Q[39]),
        .I1(\G0.mem_reg[55]_0 [39]),
        .I2(\G0.mem_reg[55]_1 [39]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [39]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[3]_i_1 
       (.I0(Q[3]),
        .I1(\G0.mem_reg[55]_0 [3]),
        .I2(\G0.mem_reg[55]_1 [3]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [3]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[40]_i_1 
       (.I0(Q[40]),
        .I1(\G0.mem_reg[55]_0 [40]),
        .I2(\G0.mem_reg[55]_1 [40]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [40]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[41]_i_1 
       (.I0(Q[41]),
        .I1(\G0.mem_reg[55]_0 [41]),
        .I2(\G0.mem_reg[55]_1 [41]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [41]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[42]_i_1 
       (.I0(Q[42]),
        .I1(\G0.mem_reg[55]_0 [42]),
        .I2(\G0.mem_reg[55]_1 [42]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [42]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[43]_i_1 
       (.I0(Q[43]),
        .I1(\G0.mem_reg[55]_0 [43]),
        .I2(\G0.mem_reg[55]_1 [43]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [43]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[44]_i_1 
       (.I0(Q[44]),
        .I1(\G0.mem_reg[55]_0 [44]),
        .I2(\G0.mem_reg[55]_1 [44]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [44]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[45]_i_1 
       (.I0(Q[45]),
        .I1(\G0.mem_reg[55]_0 [45]),
        .I2(\G0.mem_reg[55]_1 [45]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [45]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[46]_i_1 
       (.I0(Q[46]),
        .I1(\G0.mem_reg[55]_0 [46]),
        .I2(\G0.mem_reg[55]_1 [46]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [46]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[47]_i_1 
       (.I0(Q[47]),
        .I1(\G0.mem_reg[55]_0 [47]),
        .I2(\G0.mem_reg[55]_1 [47]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [47]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[48]_i_1 
       (.I0(Q[48]),
        .I1(\G0.mem_reg[55]_0 [48]),
        .I2(\G0.mem_reg[55]_1 [48]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [48]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[49]_i_1 
       (.I0(Q[49]),
        .I1(\G0.mem_reg[55]_0 [49]),
        .I2(\G0.mem_reg[55]_1 [49]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [49]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[4]_i_1 
       (.I0(Q[4]),
        .I1(\G0.mem_reg[55]_0 [4]),
        .I2(\G0.mem_reg[55]_1 [4]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [4]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[50]_i_1 
       (.I0(Q[50]),
        .I1(\G0.mem_reg[55]_0 [50]),
        .I2(\G0.mem_reg[55]_1 [50]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [50]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[51]_i_1 
       (.I0(Q[51]),
        .I1(\G0.mem_reg[55]_0 [51]),
        .I2(\G0.mem_reg[55]_1 [51]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [51]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[52]_i_1 
       (.I0(Q[52]),
        .I1(\G0.mem_reg[55]_0 [52]),
        .I2(\G0.mem_reg[55]_1 [52]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [52]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[53]_i_1 
       (.I0(Q[53]),
        .I1(\G0.mem_reg[55]_0 [53]),
        .I2(\G0.mem_reg[55]_1 [53]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [53]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[54]_i_1 
       (.I0(Q[54]),
        .I1(\G0.mem_reg[55]_0 [54]),
        .I2(\G0.mem_reg[55]_1 [54]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [54]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[55]_i_1__0 
       (.I0(Q[55]),
        .I1(\G0.mem_reg[55]_0 [55]),
        .I2(\G0.mem_reg[55]_1 [55]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [55]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[5]_i_1 
       (.I0(Q[5]),
        .I1(\G0.mem_reg[55]_0 [5]),
        .I2(\G0.mem_reg[55]_1 [5]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [5]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[6]_i_1 
       (.I0(Q[6]),
        .I1(\G0.mem_reg[55]_0 [6]),
        .I2(\G0.mem_reg[55]_1 [6]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [6]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[7]_i_1 
       (.I0(Q[7]),
        .I1(\G0.mem_reg[55]_0 [7]),
        .I2(\G0.mem_reg[55]_1 [7]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [7]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[8]_i_1 
       (.I0(Q[8]),
        .I1(\G0.mem_reg[55]_0 [8]),
        .I2(\G0.mem_reg[55]_1 [8]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [8]));
  LUT6 #(
    .INIT(64'h00F0000000CC00AA)) 
    \mem[9]_i_1 
       (.I0(Q[9]),
        .I1(\G0.mem_reg[55]_0 [9]),
        .I2(\G0.mem_reg[55]_1 [9]),
        .I3(\pres_switch_matrix_reg[0][2] [0]),
        .I4(\pres_switch_matrix_reg[0][2] [1]),
        .I5(\pres_switch_matrix_reg[0][2] [2]),
        .O(\mem_reg[55] [9]));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0FFF1F)) 
    \next_switch_matrix[0][1]_i_1 
       (.I0(Q[32]),
        .I1(Q[33]),
        .I2(Q[55]),
        .I3(\next_switch_matrix_reg[0][1] ),
        .I4(Q[36]),
        .I5(Q[37]),
        .O(D));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][1]_i_2 
       (.I0(Q[34]),
        .I1(Q[35]),
        .O(\next_switch_matrix_reg[0][1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \next_switch_matrix[2][1]_i_1 
       (.I0(Q[55]),
        .I1(\next_switch_matrix_reg[0][1] ),
        .I2(Q[36]),
        .I3(Q[37]),
        .O(\next_switch_matrix_reg[2][1] ));
  LUT6 #(
    .INIT(64'hBBBBABAAAAAAAAAA)) 
    \next_switch_matrix[4][0]_i_7 
       (.I0(\G0.mem_reg[37]_0 ),
        .I1(\G0.mem_reg[33]_0 ),
        .I2(\next_switch_matrix_reg[0][1] ),
        .I3(\next_switch_matrix[5][2]_i_5_n_0 ),
        .I4(gtOp),
        .I5(Q[55]),
        .O(\next_switch_matrix_reg[4][0] ));
  LUT6 #(
    .INIT(64'h0004FFFF0000FFFF)) 
    \next_switch_matrix[5][2]_i_4 
       (.I0(\next_switch_matrix[5][2]_i_5_n_0 ),
        .I1(Q[55]),
        .I2(\next_switch_matrix_reg[0][1] ),
        .I3(gtOp),
        .I4(\port_wants_to[2][2]_17 [0]),
        .I5(\port_wants_to[2][2]_17 [1]),
        .O(\next_switch_matrix_reg[5][2] ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[5][2]_i_5 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\next_switch_matrix[5][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[5][2]_i_6 
       (.I0(Q[36]),
        .I1(Q[37]),
        .O(gtOp));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \next_switch_matrix[6][1]_i_1 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(\next_switch_matrix_reg[0][1] ),
        .I3(Q[55]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\next_switch_matrix_reg[6][1] ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_8
   (Q,
    D,
    \next_switch_matrix_reg[3][2] ,
    \next_switch_matrix_reg[2][2] ,
    \next_switch_matrix_reg[5][2] ,
    \port_wants_to[2][2]_17 ,
    \next_switch_matrix_reg[4][0] ,
    \next_switch_matrix_reg[0][2] ,
    \next_switch_matrix_reg[2][2]_0 ,
    \next_switch_matrix_reg[6][2] ,
    \G0.mem_reg[32]_0 ,
    \G0.mem_reg[37]_0 ,
    \G0.mem_reg[55]_0 ,
    \G0.mem_reg[34]_0 ,
    gtOp,
    \G0.mem_reg[55]_1 ,
    \G0.mem_reg[55]_2 ,
    \G0.mem_reg[55]_3 ,
    \G0.mem_reg[33]_0 ,
    \G0.mem_reg[55]_4 ,
    \port_wants_to[6][0]_20 ,
    \G0.mem_reg[37]_1 ,
    reset,
    E,
    \mem_reg[55] ,
    clk);
  output [55:0]Q;
  output [0:0]D;
  output [0:0]\next_switch_matrix_reg[3][2] ;
  output \next_switch_matrix_reg[2][2] ;
  output [0:0]\next_switch_matrix_reg[5][2] ;
  output [1:0]\port_wants_to[2][2]_17 ;
  output \next_switch_matrix_reg[4][0] ;
  output [0:0]\next_switch_matrix_reg[0][2] ;
  output \next_switch_matrix_reg[2][2]_0 ;
  output [0:0]\next_switch_matrix_reg[6][2] ;
  input [0:0]\G0.mem_reg[32]_0 ;
  input [0:0]\G0.mem_reg[37]_0 ;
  input [0:0]\G0.mem_reg[55]_0 ;
  input \G0.mem_reg[34]_0 ;
  input gtOp;
  input [0:0]\G0.mem_reg[55]_1 ;
  input \G0.mem_reg[55]_2 ;
  input \G0.mem_reg[55]_3 ;
  input \G0.mem_reg[33]_0 ;
  input \G0.mem_reg[55]_4 ;
  input [0:0]\port_wants_to[6][0]_20 ;
  input \G0.mem_reg[37]_1 ;
  input reset;
  input [0:0]E;
  input [55:0]\mem_reg[55] ;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\G0.mem_reg[32]_0 ;
  wire \G0.mem_reg[33]_0 ;
  wire \G0.mem_reg[34]_0 ;
  wire [0:0]\G0.mem_reg[37]_0 ;
  wire \G0.mem_reg[37]_1 ;
  wire [0:0]\G0.mem_reg[55]_0 ;
  wire [0:0]\G0.mem_reg[55]_1 ;
  wire \G0.mem_reg[55]_2 ;
  wire \G0.mem_reg[55]_3 ;
  wire \G0.mem_reg[55]_4 ;
  wire [55:0]Q;
  wire clk;
  wire gtOp;
  wire gtOp_0;
  wire [55:0]\mem_reg[55] ;
  wire \next_switch_matrix[0][2]_i_10__1_n_0 ;
  wire \next_switch_matrix[0][2]_i_11_n_0 ;
  wire \next_switch_matrix[0][2]_i_12_n_0 ;
  wire \next_switch_matrix[0][2]_i_15_n_0 ;
  wire \next_switch_matrix[0][2]_i_3_n_0 ;
  wire \next_switch_matrix[0][2]_i_4_n_0 ;
  wire \next_switch_matrix[0][2]_i_6__0_n_0 ;
  wire \next_switch_matrix[0][2]_i_7_n_0 ;
  wire \next_switch_matrix[0][2]_i_8__0_n_0 ;
  wire \next_switch_matrix[0][2]_i_9__1_n_0 ;
  wire \next_switch_matrix[1][2]_i_2__2_n_0 ;
  wire \next_switch_matrix[1][2]_i_3__1_n_0 ;
  wire \next_switch_matrix[1][2]_i_4__2_n_0 ;
  wire \next_switch_matrix[1][2]_i_5__1_n_0 ;
  wire \next_switch_matrix[1][2]_i_6__1_n_0 ;
  wire \next_switch_matrix[2][2]_i_10_n_0 ;
  wire \next_switch_matrix[2][2]_i_2_n_0 ;
  wire \next_switch_matrix[2][2]_i_6__0_n_0 ;
  wire \next_switch_matrix[2][2]_i_7__0_n_0 ;
  wire \next_switch_matrix[2][2]_i_8_n_0 ;
  wire \next_switch_matrix[2][2]_i_9_n_0 ;
  wire \next_switch_matrix[3][2]_i_2__0_n_0 ;
  wire \next_switch_matrix[4][0]_i_6__0_n_0 ;
  wire \next_switch_matrix[5][2]_i_2__1_n_0 ;
  wire \next_switch_matrix[5][2]_i_3_n_0 ;
  wire [0:0]\next_switch_matrix_reg[0][2] ;
  wire \next_switch_matrix_reg[2][2] ;
  wire \next_switch_matrix_reg[2][2]_0 ;
  wire [0:0]\next_switch_matrix_reg[3][2] ;
  wire \next_switch_matrix_reg[4][0] ;
  wire [0:0]\next_switch_matrix_reg[5][2] ;
  wire [0:0]\next_switch_matrix_reg[6][2] ;
  wire [1:0]\port_wants_to[2][1]_16 ;
  wire [1:0]\port_wants_to[2][2]_17 ;
  wire [0:0]\port_wants_to[6][0]_20 ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [9]),
        .Q(Q[9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \next_switch_matrix[0][2]_i_10__1 
       (.I0(\next_switch_matrix[0][2]_i_11_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_2__0_n_0 ),
        .O(\next_switch_matrix[0][2]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF5C0F5CF05C005C)) 
    \next_switch_matrix[0][2]_i_11 
       (.I0(\next_switch_matrix[2][2]_i_7__0_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_9__1_n_0 ),
        .I2(\port_wants_to[2][1]_16 [1]),
        .I3(\port_wants_to[2][1]_16 [0]),
        .I4(\next_switch_matrix_reg[2][2] ),
        .I5(\next_switch_matrix[0][2]_i_15_n_0 ),
        .O(\next_switch_matrix[0][2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h777377737773BBBB)) 
    \next_switch_matrix[0][2]_i_12 
       (.I0(gtOp_0),
        .I1(Q[55]),
        .I2(Q[32]),
        .I3(Q[33]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(\next_switch_matrix[0][2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEE0FFFF)) 
    \next_switch_matrix[0][2]_i_13 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(Q[33]),
        .I3(Q[32]),
        .I4(Q[55]),
        .I5(gtOp_0),
        .O(\port_wants_to[2][1]_16 [1]));
  LUT6 #(
    .INIT(64'h57FD57FD57FD55FD)) 
    \next_switch_matrix[0][2]_i_14 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(\next_switch_matrix[0][2]_i_6__0_n_0 ),
        .I4(Q[33]),
        .I5(Q[32]),
        .O(\port_wants_to[2][1]_16 [0]));
  LUT3 #(
    .INIT(8'h74)) 
    \next_switch_matrix[0][2]_i_15 
       (.I0(1'b1),
        .I1(\next_switch_matrix[0][2]_i_12_n_0 ),
        .I2(\next_switch_matrix[5][2]_i_2__1_n_0 ),
        .O(\next_switch_matrix[0][2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCC8CCCCCCCCCCCCC)) 
    \next_switch_matrix[0][2]_i_2 
       (.I0(\next_switch_matrix[0][2]_i_3_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_4_n_0 ),
        .I2(Q[55]),
        .I3(gtOp_0),
        .I4(\next_switch_matrix[0][2]_i_6__0_n_0 ),
        .I5(\next_switch_matrix[0][2]_i_7_n_0 ),
        .O(\next_switch_matrix_reg[0][2] ));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFBFFBB)) 
    \next_switch_matrix[0][2]_i_3 
       (.I0(\next_switch_matrix[0][2]_i_8__0_n_0 ),
        .I1(Q[55]),
        .I2(gtOp_0),
        .I3(\next_switch_matrix[0][2]_i_6__0_n_0 ),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\next_switch_matrix[0][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555545554555455)) 
    \next_switch_matrix[0][2]_i_4 
       (.I0(\next_switch_matrix[0][2]_i_9__1_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_10__1_n_0 ),
        .I2(gtOp_0),
        .I3(Q[55]),
        .I4(\next_switch_matrix[0][2]_i_7_n_0 ),
        .I5(\next_switch_matrix[0][2]_i_6__0_n_0 ),
        .O(\next_switch_matrix[0][2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][2]_i_5__0 
       (.I0(Q[36]),
        .I1(Q[37]),
        .O(gtOp_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][2]_i_6__0 
       (.I0(Q[34]),
        .I1(Q[35]),
        .O(\next_switch_matrix[0][2]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][2]_i_7 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\next_switch_matrix[0][2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \next_switch_matrix[0][2]_i_8__0 
       (.I0(\next_switch_matrix[0][2]_i_11_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_12_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_2__0_n_0 ),
        .O(\next_switch_matrix[0][2]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000800FFFFFFFF)) 
    \next_switch_matrix[0][2]_i_9__1 
       (.I0(Q[55]),
        .I1(gtOp_0),
        .I2(\next_switch_matrix[1][2]_i_2__2_n_0 ),
        .I3(\next_switch_matrix[1][2]_i_3__1_n_0 ),
        .I4(\next_switch_matrix[1][2]_i_4__2_n_0 ),
        .I5(\G0.mem_reg[32]_0 ),
        .O(\next_switch_matrix[0][2]_i_9__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \next_switch_matrix[1][2]_i_1__2 
       (.I0(Q[55]),
        .I1(gtOp_0),
        .I2(\next_switch_matrix[1][2]_i_2__2_n_0 ),
        .I3(\next_switch_matrix[1][2]_i_3__1_n_0 ),
        .I4(\next_switch_matrix[1][2]_i_4__2_n_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'h00000054FFFFFFFF)) 
    \next_switch_matrix[1][2]_i_2__2 
       (.I0(\next_switch_matrix[0][2]_i_6__0_n_0 ),
        .I1(Q[33]),
        .I2(Q[32]),
        .I3(Q[36]),
        .I4(Q[37]),
        .I5(Q[55]),
        .O(\next_switch_matrix[1][2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F888FFFFFF00)) 
    \next_switch_matrix[1][2]_i_3__1 
       (.I0(Q[55]),
        .I1(gtOp_0),
        .I2(\G0.mem_reg[37]_0 ),
        .I3(\next_switch_matrix[1][2]_i_5__1_n_0 ),
        .I4(\next_switch_matrix[1][2]_i_6__1_n_0 ),
        .I5(\next_switch_matrix[1][2]_i_4__2_n_0 ),
        .O(\next_switch_matrix[1][2]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \next_switch_matrix[1][2]_i_4__2 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(Q[55]),
        .O(\next_switch_matrix[1][2]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'h7777777770777777)) 
    \next_switch_matrix[1][2]_i_5__1 
       (.I0(Q[55]),
        .I1(gtOp_0),
        .I2(\next_switch_matrix[1][2]_i_2__2_n_0 ),
        .I3(\G0.mem_reg[55]_0 ),
        .I4(\G0.mem_reg[34]_0 ),
        .I5(gtOp),
        .O(\next_switch_matrix[1][2]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'hFF88FF80)) 
    \next_switch_matrix[1][2]_i_6__1 
       (.I0(Q[55]),
        .I1(gtOp_0),
        .I2(\G0.mem_reg[32]_0 ),
        .I3(\next_switch_matrix[1][2]_i_4__2_n_0 ),
        .I4(\next_switch_matrix[1][2]_i_2__2_n_0 ),
        .O(\next_switch_matrix[1][2]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAA222)) 
    \next_switch_matrix[2][2]_i_1 
       (.I0(\next_switch_matrix[2][2]_i_2_n_0 ),
        .I1(\port_wants_to[2][2]_17 [1]),
        .I2(\port_wants_to[2][2]_17 [0]),
        .I3(\next_switch_matrix_reg[2][2] ),
        .I4(\next_switch_matrix[0][2]_i_3_n_0 ),
        .I5(\next_switch_matrix[2][2]_i_6__0_n_0 ),
        .O(\next_switch_matrix_reg[2][2]_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \next_switch_matrix[2][2]_i_10 
       (.I0(\next_switch_matrix[0][2]_i_8__0_n_0 ),
        .I1(Q[55]),
        .I2(\next_switch_matrix[0][2]_i_6__0_n_0 ),
        .I3(\next_switch_matrix[0][2]_i_7_n_0 ),
        .I4(gtOp_0),
        .I5(\G0.mem_reg[55]_1 ),
        .O(\next_switch_matrix[2][2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h8AAAAAAA)) 
    \next_switch_matrix[2][2]_i_2 
       (.I0(\next_switch_matrix[2][2]_i_7__0_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_10__1_n_0 ),
        .I2(\next_switch_matrix[0][2]_i_6__0_n_0 ),
        .I3(gtOp_0),
        .I4(Q[55]),
        .O(\next_switch_matrix[2][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDFDDDFDDDFFFFF)) 
    \next_switch_matrix[2][2]_i_3__0 
       (.I0(Q[55]),
        .I1(gtOp_0),
        .I2(Q[34]),
        .I3(Q[35]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[2][2]_17 [1]));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFD555D)) 
    \next_switch_matrix[2][2]_i_4__0 
       (.I0(Q[55]),
        .I1(\next_switch_matrix[0][2]_i_6__0_n_0 ),
        .I2(Q[33]),
        .I3(Q[32]),
        .I4(Q[36]),
        .I5(Q[37]),
        .O(\port_wants_to[2][2]_17 [0]));
  LUT5 #(
    .INIT(32'h0700FFFF)) 
    \next_switch_matrix[2][2]_i_5__0 
       (.I0(Q[55]),
        .I1(gtOp_0),
        .I2(\next_switch_matrix[3][2]_i_2__0_n_0 ),
        .I3(\next_switch_matrix[1][2]_i_4__2_n_0 ),
        .I4(\G0.mem_reg[37]_0 ),
        .O(\next_switch_matrix_reg[2][2] ));
  LUT6 #(
    .INIT(64'h00000000FF030203)) 
    \next_switch_matrix[2][2]_i_6__0 
       (.I0(\next_switch_matrix[5][2]_i_2__1_n_0 ),
        .I1(\next_switch_matrix[2][2]_i_8_n_0 ),
        .I2(\next_switch_matrix[2][2]_i_9_n_0 ),
        .I3(\port_wants_to[2][2]_17 [0]),
        .I4(\port_wants_to[2][2]_17 [1]),
        .I5(\next_switch_matrix[2][2]_i_10_n_0 ),
        .O(\next_switch_matrix[2][2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F080)) 
    \next_switch_matrix[2][2]_i_7__0 
       (.I0(Q[55]),
        .I1(gtOp_0),
        .I2(\G0.mem_reg[55]_1 ),
        .I3(\next_switch_matrix[3][2]_i_2__0_n_0 ),
        .I4(\next_switch_matrix[1][2]_i_4__2_n_0 ),
        .I5(\next_switch_matrix[1][2]_i_2__2_n_0 ),
        .O(\next_switch_matrix[2][2]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h571F555554105555)) 
    \next_switch_matrix[2][2]_i_8 
       (.I0(\next_switch_matrix_reg[2][2] ),
        .I1(\next_switch_matrix[0][2]_i_7_n_0 ),
        .I2(\next_switch_matrix[0][2]_i_6__0_n_0 ),
        .I3(gtOp_0),
        .I4(Q[55]),
        .I5(\next_switch_matrix[2][2]_i_2_n_0 ),
        .O(\next_switch_matrix[2][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0800080008000000)) 
    \next_switch_matrix[2][2]_i_9 
       (.I0(\next_switch_matrix[0][2]_i_4_n_0 ),
        .I1(Q[55]),
        .I2(gtOp_0),
        .I3(\next_switch_matrix[0][2]_i_6__0_n_0 ),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\next_switch_matrix[2][2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFF8FFFF)) 
    \next_switch_matrix[3][2]_i_1__1 
       (.I0(Q[55]),
        .I1(gtOp_0),
        .I2(\next_switch_matrix[3][2]_i_2__0_n_0 ),
        .I3(\next_switch_matrix[1][2]_i_4__2_n_0 ),
        .I4(\next_switch_matrix[1][2]_i_2__2_n_0 ),
        .O(\next_switch_matrix_reg[3][2] ));
  LUT6 #(
    .INIT(64'h0F0F0FEFFFFFFFFF)) 
    \next_switch_matrix[3][2]_i_2__0 
       (.I0(Q[32]),
        .I1(Q[33]),
        .I2(Q[55]),
        .I3(gtOp_0),
        .I4(\next_switch_matrix[0][2]_i_6__0_n_0 ),
        .I5(\next_switch_matrix[1][2]_i_3__1_n_0 ),
        .O(\next_switch_matrix[3][2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEFFFEF)) 
    \next_switch_matrix[4][0]_i_5__0 
       (.I0(\next_switch_matrix[4][0]_i_6__0_n_0 ),
        .I1(\G0.mem_reg[55]_3 ),
        .I2(\next_switch_matrix_reg[0][2] ),
        .I3(\G0.mem_reg[33]_0 ),
        .I4(D),
        .I5(\G0.mem_reg[55]_4 ),
        .O(\next_switch_matrix_reg[4][0] ));
  LUT6 #(
    .INIT(64'hFF00470000004700)) 
    \next_switch_matrix[4][0]_i_6__0 
       (.I0(\next_switch_matrix_reg[3][2] ),
        .I1(\G0.mem_reg[33]_0 ),
        .I2(\next_switch_matrix_reg[2][2]_0 ),
        .I3(\port_wants_to[6][0]_20 ),
        .I4(\G0.mem_reg[37]_1 ),
        .I5(\next_switch_matrix_reg[2][2] ),
        .O(\next_switch_matrix[4][0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555554544454)) 
    \next_switch_matrix[5][2]_i_1__2 
       (.I0(\next_switch_matrix[5][2]_i_2__1_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_3_n_0 ),
        .I2(\port_wants_to[2][2]_17 [1]),
        .I3(\next_switch_matrix[5][2]_i_3_n_0 ),
        .I4(\next_switch_matrix_reg[2][2] ),
        .I5(\G0.mem_reg[55]_2 ),
        .O(\next_switch_matrix_reg[5][2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \next_switch_matrix[5][2]_i_2__1 
       (.I0(\next_switch_matrix[3][2]_i_2__0_n_0 ),
        .I1(\next_switch_matrix[1][2]_i_4__2_n_0 ),
        .I2(\next_switch_matrix[1][2]_i_2__2_n_0 ),
        .O(\next_switch_matrix[5][2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE1110FFFFFFFF)) 
    \next_switch_matrix[5][2]_i_3 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(Q[35]),
        .I3(Q[34]),
        .I4(gtOp_0),
        .I5(Q[55]),
        .O(\next_switch_matrix[5][2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[6][2]_i_1 
       (.I0(\next_switch_matrix_reg[2][2] ),
        .O(\next_switch_matrix_reg[6][2] ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_9
   (Q,
    \next_switch_matrix_reg[4][0] ,
    \next_switch_matrix_reg[4][0]_0 ,
    \port_wants_to[6][0]_20 ,
    D,
    \next_switch_matrix_reg[5][0] ,
    E,
    \next_switch_matrix_reg[2][0] ,
    \next_switch_matrix_reg[0][0] ,
    \next_switch_matrix_reg[6][0] ,
    \next_switch_matrix_reg[4][0]_1 ,
    \mem_reg[55] ,
    \mem_reg[55]_0 ,
    \G0.mem_reg[55]_0 ,
    \G0.mem_reg[55]_1 ,
    \G0.mem_reg[55]_2 ,
    \G0.mem_reg[55]_3 ,
    \G0.mem_reg[55]_4 ,
    \G0.mem_reg[55]_5 ,
    \ctrl_cycle_reg[1] ,
    \G0.mem_reg[55]_6 ,
    \G0.mem_reg[55]_7 ,
    \G0.mem_reg[55]_8 ,
    \pres_switch_matrix_reg[2][2] ,
    \pres_switch_matrix_reg[6][2] ,
    reset,
    To_NoC_0,
    clk);
  output [55:0]Q;
  output \next_switch_matrix_reg[4][0] ;
  output \next_switch_matrix_reg[4][0]_0 ;
  output [0:0]\port_wants_to[6][0]_20 ;
  output [0:0]D;
  output [0:0]\next_switch_matrix_reg[5][0] ;
  output [0:0]E;
  output [0:0]\next_switch_matrix_reg[2][0] ;
  output [0:0]\next_switch_matrix_reg[0][0] ;
  output [0:0]\next_switch_matrix_reg[6][0] ;
  output \next_switch_matrix_reg[4][0]_1 ;
  output [55:0]\mem_reg[55] ;
  output [55:0]\mem_reg[55]_0 ;
  input \G0.mem_reg[55]_0 ;
  input \G0.mem_reg[55]_1 ;
  input [0:0]\G0.mem_reg[55]_2 ;
  input [0:0]\G0.mem_reg[55]_3 ;
  input [0:0]\G0.mem_reg[55]_4 ;
  input [0:0]\G0.mem_reg[55]_5 ;
  input [1:0]\ctrl_cycle_reg[1] ;
  input [0:0]\G0.mem_reg[55]_6 ;
  input [55:0]\G0.mem_reg[55]_7 ;
  input [55:0]\G0.mem_reg[55]_8 ;
  input [2:0]\pres_switch_matrix_reg[2][2] ;
  input [2:0]\pres_switch_matrix_reg[6][2] ;
  input reset;
  input [55:0]To_NoC_0;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire \G0.mem_reg[55]_0 ;
  wire \G0.mem_reg[55]_1 ;
  wire [0:0]\G0.mem_reg[55]_2 ;
  wire [0:0]\G0.mem_reg[55]_3 ;
  wire [0:0]\G0.mem_reg[55]_4 ;
  wire [0:0]\G0.mem_reg[55]_5 ;
  wire [0:0]\G0.mem_reg[55]_6 ;
  wire [55:0]\G0.mem_reg[55]_7 ;
  wire [55:0]\G0.mem_reg[55]_8 ;
  wire [55:0]Q;
  wire [55:0]To_NoC_0;
  wire clk;
  wire [1:0]\ctrl_cycle_reg[1] ;
  wire gtOp;
  wire [55:0]\mem_reg[55] ;
  wire [55:0]\mem_reg[55]_0 ;
  wire \next_switch_matrix[0][0]_i_11__0_n_0 ;
  wire \next_switch_matrix[0][0]_i_12_n_0 ;
  wire \next_switch_matrix[0][0]_i_13__2_n_0 ;
  wire \next_switch_matrix[0][0]_i_2_n_0 ;
  wire \next_switch_matrix[0][0]_i_3__2_n_0 ;
  wire \next_switch_matrix[0][0]_i_5__0_n_0 ;
  wire \next_switch_matrix[0][0]_i_6__0_n_0 ;
  wire \next_switch_matrix[0][0]_i_7__0_n_0 ;
  wire \next_switch_matrix[0][0]_i_8_n_0 ;
  wire \next_switch_matrix[2][0]_i_4_n_0 ;
  wire \next_switch_matrix[2][0]_i_5_n_0 ;
  wire \next_switch_matrix[2][0]_i_6__0_n_0 ;
  wire \next_switch_matrix[4][0]_i_3_n_0 ;
  wire \next_switch_matrix[5][0]_i_2_n_0 ;
  wire \next_switch_matrix[6][0]_i_2__1_n_0 ;
  wire [0:0]\next_switch_matrix_reg[0][0] ;
  wire [0:0]\next_switch_matrix_reg[2][0] ;
  wire \next_switch_matrix_reg[4][0] ;
  wire \next_switch_matrix_reg[4][0]_0 ;
  wire \next_switch_matrix_reg[4][0]_1 ;
  wire [0:0]\next_switch_matrix_reg[5][0] ;
  wire [0:0]\next_switch_matrix_reg[6][0] ;
  wire [0:0]\port_wants_to[6][0]_20 ;
  wire [2:1]\port_wants_to[6][1]_18 ;
  wire [2:1]\port_wants_to[6][2]_19 ;
  wire [2:0]\pres_switch_matrix_reg[2][2] ;
  wire [2:0]\pres_switch_matrix_reg[6][2] ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_0[9]),
        .Q(Q[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\G0.mem_reg[55]_7 [0]),
        .I2(\G0.mem_reg[55]_8 [0]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [0]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[0]_i_1__1 
       (.I0(Q[0]),
        .I1(\G0.mem_reg[55]_7 [0]),
        .I2(\G0.mem_reg[55]_8 [0]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [0]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[10]_i_1__0 
       (.I0(Q[10]),
        .I1(\G0.mem_reg[55]_7 [10]),
        .I2(\G0.mem_reg[55]_8 [10]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [10]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[10]_i_1__1 
       (.I0(Q[10]),
        .I1(\G0.mem_reg[55]_7 [10]),
        .I2(\G0.mem_reg[55]_8 [10]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [10]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[11]_i_1__0 
       (.I0(Q[11]),
        .I1(\G0.mem_reg[55]_7 [11]),
        .I2(\G0.mem_reg[55]_8 [11]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [11]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[11]_i_1__1 
       (.I0(Q[11]),
        .I1(\G0.mem_reg[55]_7 [11]),
        .I2(\G0.mem_reg[55]_8 [11]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [11]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[12]_i_1__0 
       (.I0(Q[12]),
        .I1(\G0.mem_reg[55]_7 [12]),
        .I2(\G0.mem_reg[55]_8 [12]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [12]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[12]_i_1__1 
       (.I0(Q[12]),
        .I1(\G0.mem_reg[55]_7 [12]),
        .I2(\G0.mem_reg[55]_8 [12]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [12]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[13]_i_1__0 
       (.I0(Q[13]),
        .I1(\G0.mem_reg[55]_7 [13]),
        .I2(\G0.mem_reg[55]_8 [13]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [13]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[13]_i_1__1 
       (.I0(Q[13]),
        .I1(\G0.mem_reg[55]_7 [13]),
        .I2(\G0.mem_reg[55]_8 [13]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [13]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[14]_i_1__0 
       (.I0(Q[14]),
        .I1(\G0.mem_reg[55]_7 [14]),
        .I2(\G0.mem_reg[55]_8 [14]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [14]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[14]_i_1__1 
       (.I0(Q[14]),
        .I1(\G0.mem_reg[55]_7 [14]),
        .I2(\G0.mem_reg[55]_8 [14]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [14]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[15]_i_1__0 
       (.I0(Q[15]),
        .I1(\G0.mem_reg[55]_7 [15]),
        .I2(\G0.mem_reg[55]_8 [15]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [15]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[15]_i_1__1 
       (.I0(Q[15]),
        .I1(\G0.mem_reg[55]_7 [15]),
        .I2(\G0.mem_reg[55]_8 [15]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [15]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[16]_i_1__0 
       (.I0(Q[16]),
        .I1(\G0.mem_reg[55]_7 [16]),
        .I2(\G0.mem_reg[55]_8 [16]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [16]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[16]_i_1__1 
       (.I0(Q[16]),
        .I1(\G0.mem_reg[55]_7 [16]),
        .I2(\G0.mem_reg[55]_8 [16]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [16]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[17]_i_1__0 
       (.I0(Q[17]),
        .I1(\G0.mem_reg[55]_7 [17]),
        .I2(\G0.mem_reg[55]_8 [17]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [17]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[17]_i_1__1 
       (.I0(Q[17]),
        .I1(\G0.mem_reg[55]_7 [17]),
        .I2(\G0.mem_reg[55]_8 [17]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [17]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[18]_i_1__0 
       (.I0(Q[18]),
        .I1(\G0.mem_reg[55]_7 [18]),
        .I2(\G0.mem_reg[55]_8 [18]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [18]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[18]_i_1__1 
       (.I0(Q[18]),
        .I1(\G0.mem_reg[55]_7 [18]),
        .I2(\G0.mem_reg[55]_8 [18]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [18]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[19]_i_1__0 
       (.I0(Q[19]),
        .I1(\G0.mem_reg[55]_7 [19]),
        .I2(\G0.mem_reg[55]_8 [19]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [19]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[19]_i_1__1 
       (.I0(Q[19]),
        .I1(\G0.mem_reg[55]_7 [19]),
        .I2(\G0.mem_reg[55]_8 [19]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [19]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[1]_i_1__0 
       (.I0(Q[1]),
        .I1(\G0.mem_reg[55]_7 [1]),
        .I2(\G0.mem_reg[55]_8 [1]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [1]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[1]_i_1__1 
       (.I0(Q[1]),
        .I1(\G0.mem_reg[55]_7 [1]),
        .I2(\G0.mem_reg[55]_8 [1]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [1]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[20]_i_1__0 
       (.I0(Q[20]),
        .I1(\G0.mem_reg[55]_7 [20]),
        .I2(\G0.mem_reg[55]_8 [20]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [20]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[20]_i_1__1 
       (.I0(Q[20]),
        .I1(\G0.mem_reg[55]_7 [20]),
        .I2(\G0.mem_reg[55]_8 [20]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [20]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[21]_i_1__0 
       (.I0(Q[21]),
        .I1(\G0.mem_reg[55]_7 [21]),
        .I2(\G0.mem_reg[55]_8 [21]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [21]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[21]_i_1__1 
       (.I0(Q[21]),
        .I1(\G0.mem_reg[55]_7 [21]),
        .I2(\G0.mem_reg[55]_8 [21]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [21]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[22]_i_1__0 
       (.I0(Q[22]),
        .I1(\G0.mem_reg[55]_7 [22]),
        .I2(\G0.mem_reg[55]_8 [22]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [22]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[22]_i_1__1 
       (.I0(Q[22]),
        .I1(\G0.mem_reg[55]_7 [22]),
        .I2(\G0.mem_reg[55]_8 [22]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [22]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[23]_i_1__0 
       (.I0(Q[23]),
        .I1(\G0.mem_reg[55]_7 [23]),
        .I2(\G0.mem_reg[55]_8 [23]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [23]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[23]_i_1__1 
       (.I0(Q[23]),
        .I1(\G0.mem_reg[55]_7 [23]),
        .I2(\G0.mem_reg[55]_8 [23]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [23]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[24]_i_1__0 
       (.I0(Q[24]),
        .I1(\G0.mem_reg[55]_7 [24]),
        .I2(\G0.mem_reg[55]_8 [24]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [24]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[24]_i_1__1 
       (.I0(Q[24]),
        .I1(\G0.mem_reg[55]_7 [24]),
        .I2(\G0.mem_reg[55]_8 [24]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [24]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[25]_i_1__0 
       (.I0(Q[25]),
        .I1(\G0.mem_reg[55]_7 [25]),
        .I2(\G0.mem_reg[55]_8 [25]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [25]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[25]_i_1__1 
       (.I0(Q[25]),
        .I1(\G0.mem_reg[55]_7 [25]),
        .I2(\G0.mem_reg[55]_8 [25]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [25]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[26]_i_1__0 
       (.I0(Q[26]),
        .I1(\G0.mem_reg[55]_7 [26]),
        .I2(\G0.mem_reg[55]_8 [26]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [26]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[26]_i_1__1 
       (.I0(Q[26]),
        .I1(\G0.mem_reg[55]_7 [26]),
        .I2(\G0.mem_reg[55]_8 [26]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [26]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[27]_i_1__0 
       (.I0(Q[27]),
        .I1(\G0.mem_reg[55]_7 [27]),
        .I2(\G0.mem_reg[55]_8 [27]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [27]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[27]_i_1__1 
       (.I0(Q[27]),
        .I1(\G0.mem_reg[55]_7 [27]),
        .I2(\G0.mem_reg[55]_8 [27]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [27]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[28]_i_1__0 
       (.I0(Q[28]),
        .I1(\G0.mem_reg[55]_7 [28]),
        .I2(\G0.mem_reg[55]_8 [28]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [28]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[28]_i_1__1 
       (.I0(Q[28]),
        .I1(\G0.mem_reg[55]_7 [28]),
        .I2(\G0.mem_reg[55]_8 [28]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [28]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[29]_i_1__0 
       (.I0(Q[29]),
        .I1(\G0.mem_reg[55]_7 [29]),
        .I2(\G0.mem_reg[55]_8 [29]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [29]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[29]_i_1__1 
       (.I0(Q[29]),
        .I1(\G0.mem_reg[55]_7 [29]),
        .I2(\G0.mem_reg[55]_8 [29]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [29]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[2]_i_1__0 
       (.I0(Q[2]),
        .I1(\G0.mem_reg[55]_7 [2]),
        .I2(\G0.mem_reg[55]_8 [2]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [2]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[2]_i_1__1 
       (.I0(Q[2]),
        .I1(\G0.mem_reg[55]_7 [2]),
        .I2(\G0.mem_reg[55]_8 [2]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [2]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[30]_i_1__0 
       (.I0(Q[30]),
        .I1(\G0.mem_reg[55]_7 [30]),
        .I2(\G0.mem_reg[55]_8 [30]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [30]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[30]_i_1__1 
       (.I0(Q[30]),
        .I1(\G0.mem_reg[55]_7 [30]),
        .I2(\G0.mem_reg[55]_8 [30]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [30]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[31]_i_1__0 
       (.I0(Q[31]),
        .I1(\G0.mem_reg[55]_7 [31]),
        .I2(\G0.mem_reg[55]_8 [31]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [31]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[31]_i_1__1 
       (.I0(Q[31]),
        .I1(\G0.mem_reg[55]_7 [31]),
        .I2(\G0.mem_reg[55]_8 [31]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [31]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[32]_i_1__0 
       (.I0(Q[32]),
        .I1(\G0.mem_reg[55]_7 [32]),
        .I2(\G0.mem_reg[55]_8 [32]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [32]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[32]_i_1__1 
       (.I0(Q[32]),
        .I1(\G0.mem_reg[55]_7 [32]),
        .I2(\G0.mem_reg[55]_8 [32]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [32]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[33]_i_1__0 
       (.I0(Q[33]),
        .I1(\G0.mem_reg[55]_7 [33]),
        .I2(\G0.mem_reg[55]_8 [33]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [33]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[33]_i_1__1 
       (.I0(Q[33]),
        .I1(\G0.mem_reg[55]_7 [33]),
        .I2(\G0.mem_reg[55]_8 [33]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [33]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[34]_i_1__0 
       (.I0(Q[34]),
        .I1(\G0.mem_reg[55]_7 [34]),
        .I2(\G0.mem_reg[55]_8 [34]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [34]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[34]_i_1__1 
       (.I0(Q[34]),
        .I1(\G0.mem_reg[55]_7 [34]),
        .I2(\G0.mem_reg[55]_8 [34]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [34]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[35]_i_1__0 
       (.I0(Q[35]),
        .I1(\G0.mem_reg[55]_7 [35]),
        .I2(\G0.mem_reg[55]_8 [35]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [35]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[35]_i_1__1 
       (.I0(Q[35]),
        .I1(\G0.mem_reg[55]_7 [35]),
        .I2(\G0.mem_reg[55]_8 [35]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [35]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[36]_i_1__0 
       (.I0(Q[36]),
        .I1(\G0.mem_reg[55]_7 [36]),
        .I2(\G0.mem_reg[55]_8 [36]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [36]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[36]_i_1__1 
       (.I0(Q[36]),
        .I1(\G0.mem_reg[55]_7 [36]),
        .I2(\G0.mem_reg[55]_8 [36]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [36]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[37]_i_1__0 
       (.I0(Q[37]),
        .I1(\G0.mem_reg[55]_7 [37]),
        .I2(\G0.mem_reg[55]_8 [37]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [37]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[37]_i_1__1 
       (.I0(Q[37]),
        .I1(\G0.mem_reg[55]_7 [37]),
        .I2(\G0.mem_reg[55]_8 [37]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [37]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[38]_i_1__0 
       (.I0(Q[38]),
        .I1(\G0.mem_reg[55]_7 [38]),
        .I2(\G0.mem_reg[55]_8 [38]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [38]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[38]_i_1__1 
       (.I0(Q[38]),
        .I1(\G0.mem_reg[55]_7 [38]),
        .I2(\G0.mem_reg[55]_8 [38]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [38]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[39]_i_1__0 
       (.I0(Q[39]),
        .I1(\G0.mem_reg[55]_7 [39]),
        .I2(\G0.mem_reg[55]_8 [39]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [39]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[39]_i_1__1 
       (.I0(Q[39]),
        .I1(\G0.mem_reg[55]_7 [39]),
        .I2(\G0.mem_reg[55]_8 [39]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [39]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[3]_i_1__0 
       (.I0(Q[3]),
        .I1(\G0.mem_reg[55]_7 [3]),
        .I2(\G0.mem_reg[55]_8 [3]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [3]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[3]_i_1__1 
       (.I0(Q[3]),
        .I1(\G0.mem_reg[55]_7 [3]),
        .I2(\G0.mem_reg[55]_8 [3]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [3]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[40]_i_1__0 
       (.I0(Q[40]),
        .I1(\G0.mem_reg[55]_7 [40]),
        .I2(\G0.mem_reg[55]_8 [40]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [40]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[40]_i_1__1 
       (.I0(Q[40]),
        .I1(\G0.mem_reg[55]_7 [40]),
        .I2(\G0.mem_reg[55]_8 [40]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [40]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[41]_i_1__0 
       (.I0(Q[41]),
        .I1(\G0.mem_reg[55]_7 [41]),
        .I2(\G0.mem_reg[55]_8 [41]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [41]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[41]_i_1__1 
       (.I0(Q[41]),
        .I1(\G0.mem_reg[55]_7 [41]),
        .I2(\G0.mem_reg[55]_8 [41]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [41]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[42]_i_1__0 
       (.I0(Q[42]),
        .I1(\G0.mem_reg[55]_7 [42]),
        .I2(\G0.mem_reg[55]_8 [42]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [42]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[42]_i_1__1 
       (.I0(Q[42]),
        .I1(\G0.mem_reg[55]_7 [42]),
        .I2(\G0.mem_reg[55]_8 [42]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [42]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[43]_i_1__0 
       (.I0(Q[43]),
        .I1(\G0.mem_reg[55]_7 [43]),
        .I2(\G0.mem_reg[55]_8 [43]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [43]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[43]_i_1__1 
       (.I0(Q[43]),
        .I1(\G0.mem_reg[55]_7 [43]),
        .I2(\G0.mem_reg[55]_8 [43]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [43]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[44]_i_1__0 
       (.I0(Q[44]),
        .I1(\G0.mem_reg[55]_7 [44]),
        .I2(\G0.mem_reg[55]_8 [44]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [44]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[44]_i_1__1 
       (.I0(Q[44]),
        .I1(\G0.mem_reg[55]_7 [44]),
        .I2(\G0.mem_reg[55]_8 [44]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [44]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[45]_i_1__0 
       (.I0(Q[45]),
        .I1(\G0.mem_reg[55]_7 [45]),
        .I2(\G0.mem_reg[55]_8 [45]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [45]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[45]_i_1__1 
       (.I0(Q[45]),
        .I1(\G0.mem_reg[55]_7 [45]),
        .I2(\G0.mem_reg[55]_8 [45]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [45]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[46]_i_1__0 
       (.I0(Q[46]),
        .I1(\G0.mem_reg[55]_7 [46]),
        .I2(\G0.mem_reg[55]_8 [46]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [46]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[46]_i_1__1 
       (.I0(Q[46]),
        .I1(\G0.mem_reg[55]_7 [46]),
        .I2(\G0.mem_reg[55]_8 [46]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [46]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[47]_i_1__0 
       (.I0(Q[47]),
        .I1(\G0.mem_reg[55]_7 [47]),
        .I2(\G0.mem_reg[55]_8 [47]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [47]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[47]_i_1__1 
       (.I0(Q[47]),
        .I1(\G0.mem_reg[55]_7 [47]),
        .I2(\G0.mem_reg[55]_8 [47]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [47]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[48]_i_1__0 
       (.I0(Q[48]),
        .I1(\G0.mem_reg[55]_7 [48]),
        .I2(\G0.mem_reg[55]_8 [48]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [48]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[48]_i_1__1 
       (.I0(Q[48]),
        .I1(\G0.mem_reg[55]_7 [48]),
        .I2(\G0.mem_reg[55]_8 [48]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [48]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[49]_i_1__0 
       (.I0(Q[49]),
        .I1(\G0.mem_reg[55]_7 [49]),
        .I2(\G0.mem_reg[55]_8 [49]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [49]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[49]_i_1__1 
       (.I0(Q[49]),
        .I1(\G0.mem_reg[55]_7 [49]),
        .I2(\G0.mem_reg[55]_8 [49]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [49]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[4]_i_1__0 
       (.I0(Q[4]),
        .I1(\G0.mem_reg[55]_7 [4]),
        .I2(\G0.mem_reg[55]_8 [4]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [4]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[4]_i_1__1 
       (.I0(Q[4]),
        .I1(\G0.mem_reg[55]_7 [4]),
        .I2(\G0.mem_reg[55]_8 [4]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [4]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[50]_i_1__0 
       (.I0(Q[50]),
        .I1(\G0.mem_reg[55]_7 [50]),
        .I2(\G0.mem_reg[55]_8 [50]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [50]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[50]_i_1__1 
       (.I0(Q[50]),
        .I1(\G0.mem_reg[55]_7 [50]),
        .I2(\G0.mem_reg[55]_8 [50]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [50]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[51]_i_1__0 
       (.I0(Q[51]),
        .I1(\G0.mem_reg[55]_7 [51]),
        .I2(\G0.mem_reg[55]_8 [51]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [51]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[51]_i_1__1 
       (.I0(Q[51]),
        .I1(\G0.mem_reg[55]_7 [51]),
        .I2(\G0.mem_reg[55]_8 [51]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [51]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[52]_i_1__0 
       (.I0(Q[52]),
        .I1(\G0.mem_reg[55]_7 [52]),
        .I2(\G0.mem_reg[55]_8 [52]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [52]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[52]_i_1__1 
       (.I0(Q[52]),
        .I1(\G0.mem_reg[55]_7 [52]),
        .I2(\G0.mem_reg[55]_8 [52]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [52]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[53]_i_1__0 
       (.I0(Q[53]),
        .I1(\G0.mem_reg[55]_7 [53]),
        .I2(\G0.mem_reg[55]_8 [53]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [53]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[53]_i_1__1 
       (.I0(Q[53]),
        .I1(\G0.mem_reg[55]_7 [53]),
        .I2(\G0.mem_reg[55]_8 [53]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [53]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[54]_i_1__0 
       (.I0(Q[54]),
        .I1(\G0.mem_reg[55]_7 [54]),
        .I2(\G0.mem_reg[55]_8 [54]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [54]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[54]_i_1__1 
       (.I0(Q[54]),
        .I1(\G0.mem_reg[55]_7 [54]),
        .I2(\G0.mem_reg[55]_8 [54]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [54]));
  LUT2 #(
    .INIT(4'h8)) 
    \mem[55]_i_1 
       (.I0(\ctrl_cycle_reg[1] [0]),
        .I1(\ctrl_cycle_reg[1] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[55]_i_1__1 
       (.I0(Q[55]),
        .I1(\G0.mem_reg[55]_7 [55]),
        .I2(\G0.mem_reg[55]_8 [55]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [55]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[55]_i_2 
       (.I0(Q[55]),
        .I1(\G0.mem_reg[55]_7 [55]),
        .I2(\G0.mem_reg[55]_8 [55]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [55]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[5]_i_1__0 
       (.I0(Q[5]),
        .I1(\G0.mem_reg[55]_7 [5]),
        .I2(\G0.mem_reg[55]_8 [5]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [5]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[5]_i_1__1 
       (.I0(Q[5]),
        .I1(\G0.mem_reg[55]_7 [5]),
        .I2(\G0.mem_reg[55]_8 [5]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [5]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[6]_i_1__0 
       (.I0(Q[6]),
        .I1(\G0.mem_reg[55]_7 [6]),
        .I2(\G0.mem_reg[55]_8 [6]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [6]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[6]_i_1__1 
       (.I0(Q[6]),
        .I1(\G0.mem_reg[55]_7 [6]),
        .I2(\G0.mem_reg[55]_8 [6]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [6]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[7]_i_1__0 
       (.I0(Q[7]),
        .I1(\G0.mem_reg[55]_7 [7]),
        .I2(\G0.mem_reg[55]_8 [7]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [7]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[7]_i_1__1 
       (.I0(Q[7]),
        .I1(\G0.mem_reg[55]_7 [7]),
        .I2(\G0.mem_reg[55]_8 [7]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [7]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[8]_i_1__0 
       (.I0(Q[8]),
        .I1(\G0.mem_reg[55]_7 [8]),
        .I2(\G0.mem_reg[55]_8 [8]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [8]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[8]_i_1__1 
       (.I0(Q[8]),
        .I1(\G0.mem_reg[55]_7 [8]),
        .I2(\G0.mem_reg[55]_8 [8]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [8]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[9]_i_1__0 
       (.I0(Q[9]),
        .I1(\G0.mem_reg[55]_7 [9]),
        .I2(\G0.mem_reg[55]_8 [9]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [9]));
  LUT6 #(
    .INIT(64'h00AA000000F000CC)) 
    \mem[9]_i_1__1 
       (.I0(Q[9]),
        .I1(\G0.mem_reg[55]_7 [9]),
        .I2(\G0.mem_reg[55]_8 [9]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [9]));
  LUT6 #(
    .INIT(64'hA8AAAAAAAAAAAAAA)) 
    \next_switch_matrix[0][0]_i_1 
       (.I0(\next_switch_matrix[0][0]_i_2_n_0 ),
        .I1(\next_switch_matrix[0][0]_i_3__2_n_0 ),
        .I2(gtOp),
        .I3(\next_switch_matrix[0][0]_i_5__0_n_0 ),
        .I4(\next_switch_matrix[0][0]_i_6__0_n_0 ),
        .I5(Q[55]),
        .O(\next_switch_matrix_reg[0][0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEE0FFFF)) 
    \next_switch_matrix[0][0]_i_10 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(Q[33]),
        .I3(Q[32]),
        .I4(Q[55]),
        .I5(gtOp),
        .O(\port_wants_to[6][1]_18 [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hABABABEF)) 
    \next_switch_matrix[0][0]_i_11__0 
       (.I0(\next_switch_matrix[0][0]_i_12_n_0 ),
        .I1(\port_wants_to[6][1]_18 [2]),
        .I2(\next_switch_matrix[0][0]_i_13__2_n_0 ),
        .I3(\port_wants_to[6][1]_18 [1]),
        .I4(\next_switch_matrix[5][0]_i_2_n_0 ),
        .O(\next_switch_matrix[0][0]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440404044)) 
    \next_switch_matrix[0][0]_i_12 
       (.I0(\G0.mem_reg[55]_0 ),
        .I1(Q[55]),
        .I2(gtOp),
        .I3(Q[32]),
        .I4(Q[33]),
        .I5(\next_switch_matrix[0][0]_i_5__0_n_0 ),
        .O(\next_switch_matrix[0][0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5533F0FF5533F000)) 
    \next_switch_matrix[0][0]_i_13__2 
       (.I0(\G0.mem_reg[55]_4 ),
        .I1(\G0.mem_reg[55]_5 ),
        .I2(\next_switch_matrix[2][0]_i_6__0_n_0 ),
        .I3(\port_wants_to[6][1]_18 [1]),
        .I4(\port_wants_to[6][1]_18 [2]),
        .I5(\next_switch_matrix[0][0]_i_7__0_n_0 ),
        .O(\next_switch_matrix[0][0]_i_13__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \next_switch_matrix[0][0]_i_2 
       (.I0(\next_switch_matrix[0][0]_i_7__0_n_0 ),
        .I1(\next_switch_matrix[0][0]_i_8_n_0 ),
        .I2(\port_wants_to[6][1]_18 [2]),
        .I3(\port_wants_to[6][1]_18 [1]),
        .O(\next_switch_matrix[0][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0BCB3BF)) 
    \next_switch_matrix[0][0]_i_3__2 
       (.I0(\next_switch_matrix[6][0]_i_2__1_n_0 ),
        .I1(\port_wants_to[6][2]_19 [1]),
        .I2(\port_wants_to[6][2]_19 [2]),
        .I3(\next_switch_matrix[2][0]_i_4_n_0 ),
        .I4(\next_switch_matrix[0][0]_i_2_n_0 ),
        .I5(\next_switch_matrix[0][0]_i_11__0_n_0 ),
        .O(\next_switch_matrix[0][0]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][0]_i_4 
       (.I0(Q[36]),
        .I1(Q[37]),
        .O(gtOp));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][0]_i_5__0 
       (.I0(Q[34]),
        .I1(Q[35]),
        .O(\next_switch_matrix[0][0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][0]_i_6__0 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\next_switch_matrix[0][0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000E0FFFFFFFF)) 
    \next_switch_matrix[0][0]_i_7__0 
       (.I0(\next_switch_matrix[0][0]_i_5__0_n_0 ),
        .I1(gtOp),
        .I2(Q[55]),
        .I3(\G0.mem_reg[55]_0 ),
        .I4(\port_wants_to[6][0]_20 ),
        .I5(\G0.mem_reg[55]_3 ),
        .O(\next_switch_matrix[0][0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFEEEEFAAAEEEE)) 
    \next_switch_matrix[0][0]_i_8 
       (.I0(\next_switch_matrix[0][0]_i_12_n_0 ),
        .I1(\next_switch_matrix[0][0]_i_13__2_n_0 ),
        .I2(\next_switch_matrix[6][0]_i_2__1_n_0 ),
        .I3(\port_wants_to[6][1]_18 [1]),
        .I4(\port_wants_to[6][1]_18 [2]),
        .I5(\next_switch_matrix[5][0]_i_2_n_0 ),
        .O(\next_switch_matrix[0][0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h57FD57FD57FD55FD)) 
    \next_switch_matrix[0][0]_i_9 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(\next_switch_matrix[0][0]_i_5__0_n_0 ),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[6][1]_18 [2]));
  LUT6 #(
    .INIT(64'hFB000000FB00FB00)) 
    \next_switch_matrix[2][0]_i_1 
       (.I0(\port_wants_to[6][2]_19 [2]),
        .I1(\port_wants_to[6][2]_19 [1]),
        .I2(\next_switch_matrix[0][0]_i_3__2_n_0 ),
        .I3(\next_switch_matrix[2][0]_i_4_n_0 ),
        .I4(\next_switch_matrix[2][0]_i_5_n_0 ),
        .I5(\G0.mem_reg[55]_2 ),
        .O(\next_switch_matrix_reg[2][0] ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFD5755)) 
    \next_switch_matrix[2][0]_i_2__0 
       (.I0(Q[55]),
        .I1(Q[33]),
        .I2(Q[32]),
        .I3(\next_switch_matrix[0][0]_i_5__0_n_0 ),
        .I4(Q[36]),
        .I5(Q[37]),
        .O(\port_wants_to[6][2]_19 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF575757FF)) 
    \next_switch_matrix[2][0]_i_3 
       (.I0(Q[55]),
        .I1(Q[33]),
        .I2(Q[32]),
        .I3(Q[34]),
        .I4(Q[35]),
        .I5(gtOp),
        .O(\port_wants_to[6][2]_19 [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    \next_switch_matrix[2][0]_i_4 
       (.I0(\next_switch_matrix[2][0]_i_6__0_n_0 ),
        .I1(\next_switch_matrix[0][0]_i_8_n_0 ),
        .I2(\port_wants_to[6][1]_18 [1]),
        .I3(\port_wants_to[6][1]_18 [2]),
        .O(\next_switch_matrix[2][0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \next_switch_matrix[2][0]_i_5 
       (.I0(\next_switch_matrix[0][0]_i_11__0_n_0 ),
        .I1(Q[55]),
        .I2(\next_switch_matrix[0][0]_i_5__0_n_0 ),
        .I3(gtOp),
        .I4(\next_switch_matrix[0][0]_i_6__0_n_0 ),
        .O(\next_switch_matrix[2][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E00000FFFFFFFF)) 
    \next_switch_matrix[2][0]_i_6__0 
       (.I0(\next_switch_matrix[0][0]_i_5__0_n_0 ),
        .I1(gtOp),
        .I2(Q[55]),
        .I3(\G0.mem_reg[55]_0 ),
        .I4(\port_wants_to[6][0]_20 ),
        .I5(\G0.mem_reg[55]_2 ),
        .O(\next_switch_matrix[2][0]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hF0E0)) 
    \next_switch_matrix[4][0]_i_1__2 
       (.I0(\next_switch_matrix_reg[4][0] ),
        .I1(\next_switch_matrix[4][0]_i_3_n_0 ),
        .I2(1'b1),
        .I3(\port_wants_to[6][0]_20 ),
        .O(D));
  LUT6 #(
    .INIT(64'h00000054FFFFFFFF)) 
    \next_switch_matrix[4][0]_i_2__0 
       (.I0(\next_switch_matrix[0][0]_i_5__0_n_0 ),
        .I1(Q[33]),
        .I2(Q[32]),
        .I3(Q[36]),
        .I4(Q[37]),
        .I5(Q[55]),
        .O(\next_switch_matrix_reg[4][0] ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    \next_switch_matrix[4][0]_i_3 
       (.I0(\G0.mem_reg[55]_0 ),
        .I1(Q[55]),
        .I2(Q[34]),
        .I3(Q[35]),
        .I4(Q[36]),
        .I5(Q[37]),
        .O(\next_switch_matrix[4][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \next_switch_matrix[4][0]_i_4 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .O(\port_wants_to[6][0]_20 ));
  LUT5 #(
    .INIT(32'hFECCCECC)) 
    \next_switch_matrix[4][0]_i_8 
       (.I0(1'b1),
        .I1(\port_wants_to[6][0]_20 ),
        .I2(\next_switch_matrix_reg[4][0] ),
        .I3(\next_switch_matrix_reg[4][0]_0 ),
        .I4(\G0.mem_reg[55]_6 ),
        .O(\next_switch_matrix_reg[4][0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \next_switch_matrix[4][0]_i_9 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(Q[35]),
        .I3(Q[34]),
        .I4(Q[55]),
        .O(\next_switch_matrix_reg[4][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[5][0]_i_1 
       (.I0(\next_switch_matrix[5][0]_i_2_n_0 ),
        .O(\next_switch_matrix_reg[5][0] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    \next_switch_matrix[5][0]_i_2 
       (.I0(\next_switch_matrix[4][0]_i_3_n_0 ),
        .I1(\next_switch_matrix_reg[4][0] ),
        .I2(\port_wants_to[6][0]_20 ),
        .I3(\G0.mem_reg[55]_6 ),
        .O(\next_switch_matrix[5][0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[6][0]_i_1 
       (.I0(\next_switch_matrix[6][0]_i_2__1_n_0 ),
        .O(\next_switch_matrix_reg[6][0] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF1F0)) 
    \next_switch_matrix[6][0]_i_2__1 
       (.I0(\next_switch_matrix_reg[4][0] ),
        .I1(\next_switch_matrix[4][0]_i_3_n_0 ),
        .I2(\G0.mem_reg[55]_1 ),
        .I3(\port_wants_to[6][0]_20 ),
        .O(\next_switch_matrix[6][0]_i_2__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized1
   (\next_switch_matrix_reg[4][2] ,
    Q,
    \next_switch_matrix_reg[2][1] ,
    \next_switch_matrix_reg[6][1] ,
    D,
    \next_switch_matrix_reg[1][0] ,
    \next_switch_matrix_reg[0][2] ,
    \mem_reg[55] ,
    \G0.mem_reg[37]_0 ,
    \port_wants_to[2][2]_29 ,
    \G0.mem_reg[55]_0 ,
    \G0.mem_reg[55]_1 ,
    \pres_switch_matrix_reg[1][2] ,
    reset,
    E,
    \Inport[1] ,
    clk);
  output \next_switch_matrix_reg[4][2] ;
  output [55:0]Q;
  output \next_switch_matrix_reg[2][1] ;
  output \next_switch_matrix_reg[6][1] ;
  output [0:0]D;
  output \next_switch_matrix_reg[1][0] ;
  output \next_switch_matrix_reg[0][2] ;
  output [55:0]\mem_reg[55] ;
  input \G0.mem_reg[37]_0 ;
  input [0:0]\port_wants_to[2][2]_29 ;
  input [55:0]\G0.mem_reg[55]_0 ;
  input [55:0]\G0.mem_reg[55]_1 ;
  input [2:0]\pres_switch_matrix_reg[1][2] ;
  input reset;
  input [0:0]E;
  input [55:0]\Inport[1] ;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire \G0.mem_reg[37]_0 ;
  wire [55:0]\G0.mem_reg[55]_0 ;
  wire [55:0]\G0.mem_reg[55]_1 ;
  wire [55:0]\Inport[1] ;
  wire [55:0]Q;
  wire clk;
  wire [55:0]\mem_reg[55] ;
  wire \next_switch_matrix[1][1]_i_2_n_0 ;
  wire \next_switch_matrix[4][2]_i_29_n_0 ;
  wire \next_switch_matrix_reg[0][2] ;
  wire \next_switch_matrix_reg[1][0] ;
  wire \next_switch_matrix_reg[2][1] ;
  wire \next_switch_matrix_reg[4][2] ;
  wire \next_switch_matrix_reg[6][1] ;
  wire [0:0]\port_wants_to[2][2]_29 ;
  wire [2:0]\pres_switch_matrix_reg[1][2] ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [9]),
        .Q(Q[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[0]_i_1__2 
       (.I0(Q[0]),
        .I1(\G0.mem_reg[55]_0 [0]),
        .I2(\G0.mem_reg[55]_1 [0]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [0]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[10]_i_1__2 
       (.I0(Q[10]),
        .I1(\G0.mem_reg[55]_0 [10]),
        .I2(\G0.mem_reg[55]_1 [10]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [10]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[11]_i_1__2 
       (.I0(Q[11]),
        .I1(\G0.mem_reg[55]_0 [11]),
        .I2(\G0.mem_reg[55]_1 [11]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [11]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[12]_i_1__2 
       (.I0(Q[12]),
        .I1(\G0.mem_reg[55]_0 [12]),
        .I2(\G0.mem_reg[55]_1 [12]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [12]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[13]_i_1__2 
       (.I0(Q[13]),
        .I1(\G0.mem_reg[55]_0 [13]),
        .I2(\G0.mem_reg[55]_1 [13]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [13]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[14]_i_1__2 
       (.I0(Q[14]),
        .I1(\G0.mem_reg[55]_0 [14]),
        .I2(\G0.mem_reg[55]_1 [14]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [14]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[15]_i_1__2 
       (.I0(Q[15]),
        .I1(\G0.mem_reg[55]_0 [15]),
        .I2(\G0.mem_reg[55]_1 [15]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [15]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[16]_i_1__2 
       (.I0(Q[16]),
        .I1(\G0.mem_reg[55]_0 [16]),
        .I2(\G0.mem_reg[55]_1 [16]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [16]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[17]_i_1__2 
       (.I0(Q[17]),
        .I1(\G0.mem_reg[55]_0 [17]),
        .I2(\G0.mem_reg[55]_1 [17]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [17]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[18]_i_1__2 
       (.I0(Q[18]),
        .I1(\G0.mem_reg[55]_0 [18]),
        .I2(\G0.mem_reg[55]_1 [18]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [18]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[19]_i_1__2 
       (.I0(Q[19]),
        .I1(\G0.mem_reg[55]_0 [19]),
        .I2(\G0.mem_reg[55]_1 [19]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [19]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[1]_i_1__2 
       (.I0(Q[1]),
        .I1(\G0.mem_reg[55]_0 [1]),
        .I2(\G0.mem_reg[55]_1 [1]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [1]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[20]_i_1__2 
       (.I0(Q[20]),
        .I1(\G0.mem_reg[55]_0 [20]),
        .I2(\G0.mem_reg[55]_1 [20]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [20]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[21]_i_1__2 
       (.I0(Q[21]),
        .I1(\G0.mem_reg[55]_0 [21]),
        .I2(\G0.mem_reg[55]_1 [21]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [21]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[22]_i_1__2 
       (.I0(Q[22]),
        .I1(\G0.mem_reg[55]_0 [22]),
        .I2(\G0.mem_reg[55]_1 [22]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [22]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[23]_i_1__2 
       (.I0(Q[23]),
        .I1(\G0.mem_reg[55]_0 [23]),
        .I2(\G0.mem_reg[55]_1 [23]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [23]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[24]_i_1__2 
       (.I0(Q[24]),
        .I1(\G0.mem_reg[55]_0 [24]),
        .I2(\G0.mem_reg[55]_1 [24]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [24]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[25]_i_1__2 
       (.I0(Q[25]),
        .I1(\G0.mem_reg[55]_0 [25]),
        .I2(\G0.mem_reg[55]_1 [25]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [25]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[26]_i_1__2 
       (.I0(Q[26]),
        .I1(\G0.mem_reg[55]_0 [26]),
        .I2(\G0.mem_reg[55]_1 [26]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [26]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[27]_i_1__2 
       (.I0(Q[27]),
        .I1(\G0.mem_reg[55]_0 [27]),
        .I2(\G0.mem_reg[55]_1 [27]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [27]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[28]_i_1__2 
       (.I0(Q[28]),
        .I1(\G0.mem_reg[55]_0 [28]),
        .I2(\G0.mem_reg[55]_1 [28]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [28]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[29]_i_1__2 
       (.I0(Q[29]),
        .I1(\G0.mem_reg[55]_0 [29]),
        .I2(\G0.mem_reg[55]_1 [29]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [29]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[2]_i_1__2 
       (.I0(Q[2]),
        .I1(\G0.mem_reg[55]_0 [2]),
        .I2(\G0.mem_reg[55]_1 [2]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [2]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[30]_i_1__2 
       (.I0(Q[30]),
        .I1(\G0.mem_reg[55]_0 [30]),
        .I2(\G0.mem_reg[55]_1 [30]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [30]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[31]_i_1__2 
       (.I0(Q[31]),
        .I1(\G0.mem_reg[55]_0 [31]),
        .I2(\G0.mem_reg[55]_1 [31]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [31]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[32]_i_1__2 
       (.I0(Q[32]),
        .I1(\G0.mem_reg[55]_0 [32]),
        .I2(\G0.mem_reg[55]_1 [32]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [32]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[33]_i_1__2 
       (.I0(Q[33]),
        .I1(\G0.mem_reg[55]_0 [33]),
        .I2(\G0.mem_reg[55]_1 [33]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [33]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[34]_i_1__2 
       (.I0(Q[34]),
        .I1(\G0.mem_reg[55]_0 [34]),
        .I2(\G0.mem_reg[55]_1 [34]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [34]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[35]_i_1__2 
       (.I0(Q[35]),
        .I1(\G0.mem_reg[55]_0 [35]),
        .I2(\G0.mem_reg[55]_1 [35]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [35]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[36]_i_1__2 
       (.I0(Q[36]),
        .I1(\G0.mem_reg[55]_0 [36]),
        .I2(\G0.mem_reg[55]_1 [36]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [36]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[37]_i_1__2 
       (.I0(Q[37]),
        .I1(\G0.mem_reg[55]_0 [37]),
        .I2(\G0.mem_reg[55]_1 [37]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [37]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[38]_i_1__2 
       (.I0(Q[38]),
        .I1(\G0.mem_reg[55]_0 [38]),
        .I2(\G0.mem_reg[55]_1 [38]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [38]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[39]_i_1__2 
       (.I0(Q[39]),
        .I1(\G0.mem_reg[55]_0 [39]),
        .I2(\G0.mem_reg[55]_1 [39]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [39]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[3]_i_1__2 
       (.I0(Q[3]),
        .I1(\G0.mem_reg[55]_0 [3]),
        .I2(\G0.mem_reg[55]_1 [3]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [3]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[40]_i_1__2 
       (.I0(Q[40]),
        .I1(\G0.mem_reg[55]_0 [40]),
        .I2(\G0.mem_reg[55]_1 [40]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [40]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[41]_i_1__2 
       (.I0(Q[41]),
        .I1(\G0.mem_reg[55]_0 [41]),
        .I2(\G0.mem_reg[55]_1 [41]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [41]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[42]_i_1__2 
       (.I0(Q[42]),
        .I1(\G0.mem_reg[55]_0 [42]),
        .I2(\G0.mem_reg[55]_1 [42]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [42]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[43]_i_1__2 
       (.I0(Q[43]),
        .I1(\G0.mem_reg[55]_0 [43]),
        .I2(\G0.mem_reg[55]_1 [43]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [43]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[44]_i_1__2 
       (.I0(Q[44]),
        .I1(\G0.mem_reg[55]_0 [44]),
        .I2(\G0.mem_reg[55]_1 [44]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [44]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[45]_i_1__2 
       (.I0(Q[45]),
        .I1(\G0.mem_reg[55]_0 [45]),
        .I2(\G0.mem_reg[55]_1 [45]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [45]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[46]_i_1__2 
       (.I0(Q[46]),
        .I1(\G0.mem_reg[55]_0 [46]),
        .I2(\G0.mem_reg[55]_1 [46]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [46]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[47]_i_1__2 
       (.I0(Q[47]),
        .I1(\G0.mem_reg[55]_0 [47]),
        .I2(\G0.mem_reg[55]_1 [47]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [47]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[48]_i_1__2 
       (.I0(Q[48]),
        .I1(\G0.mem_reg[55]_0 [48]),
        .I2(\G0.mem_reg[55]_1 [48]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [48]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[49]_i_1__2 
       (.I0(Q[49]),
        .I1(\G0.mem_reg[55]_0 [49]),
        .I2(\G0.mem_reg[55]_1 [49]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [49]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[4]_i_1__2 
       (.I0(Q[4]),
        .I1(\G0.mem_reg[55]_0 [4]),
        .I2(\G0.mem_reg[55]_1 [4]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [4]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[50]_i_1__2 
       (.I0(Q[50]),
        .I1(\G0.mem_reg[55]_0 [50]),
        .I2(\G0.mem_reg[55]_1 [50]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [50]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[51]_i_1__2 
       (.I0(Q[51]),
        .I1(\G0.mem_reg[55]_0 [51]),
        .I2(\G0.mem_reg[55]_1 [51]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [51]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[52]_i_1__2 
       (.I0(Q[52]),
        .I1(\G0.mem_reg[55]_0 [52]),
        .I2(\G0.mem_reg[55]_1 [52]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [52]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[53]_i_1__2 
       (.I0(Q[53]),
        .I1(\G0.mem_reg[55]_0 [53]),
        .I2(\G0.mem_reg[55]_1 [53]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [53]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[54]_i_1__2 
       (.I0(Q[54]),
        .I1(\G0.mem_reg[55]_0 [54]),
        .I2(\G0.mem_reg[55]_1 [54]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [54]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[55]_i_1__3 
       (.I0(Q[55]),
        .I1(\G0.mem_reg[55]_0 [55]),
        .I2(\G0.mem_reg[55]_1 [55]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [55]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[5]_i_1__2 
       (.I0(Q[5]),
        .I1(\G0.mem_reg[55]_0 [5]),
        .I2(\G0.mem_reg[55]_1 [5]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [5]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[6]_i_1__2 
       (.I0(Q[6]),
        .I1(\G0.mem_reg[55]_0 [6]),
        .I2(\G0.mem_reg[55]_1 [6]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [6]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[7]_i_1__2 
       (.I0(Q[7]),
        .I1(\G0.mem_reg[55]_0 [7]),
        .I2(\G0.mem_reg[55]_1 [7]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [7]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[8]_i_1__2 
       (.I0(Q[8]),
        .I1(\G0.mem_reg[55]_0 [8]),
        .I2(\G0.mem_reg[55]_1 [8]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [8]));
  LUT6 #(
    .INIT(64'h00F0000000CCAA00)) 
    \mem[9]_i_1__2 
       (.I0(Q[9]),
        .I1(\G0.mem_reg[55]_0 [9]),
        .I2(\G0.mem_reg[55]_1 [9]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [9]));
  LUT4 #(
    .INIT(16'h3044)) 
    \next_switch_matrix[0][2]_i_14__0 
       (.I0(\next_switch_matrix_reg[2][1] ),
        .I1(\port_wants_to[2][2]_29 ),
        .I2(\next_switch_matrix_reg[1][0] ),
        .I3(\G0.mem_reg[37]_0 ),
        .O(\next_switch_matrix_reg[0][2] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \next_switch_matrix[1][0]_i_2__0 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(\next_switch_matrix[1][1]_i_2_n_0 ),
        .O(\next_switch_matrix_reg[1][0] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB8FF)) 
    \next_switch_matrix[1][1]_i_1 
       (.I0(\next_switch_matrix[1][1]_i_2_n_0 ),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(Q[55]),
        .O(D));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[1][1]_i_2 
       (.I0(Q[34]),
        .I1(Q[35]),
        .O(\next_switch_matrix[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5F5F7777777F)) 
    \next_switch_matrix[2][1]_i_1__0 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(\next_switch_matrix[1][1]_i_2_n_0 ),
        .I3(Q[33]),
        .I4(Q[32]),
        .I5(Q[37]),
        .O(\next_switch_matrix_reg[2][1] ));
  LUT6 #(
    .INIT(64'h5550004000000000)) 
    \next_switch_matrix[4][2]_i_28 
       (.I0(\G0.mem_reg[37]_0 ),
        .I1(\next_switch_matrix[4][2]_i_29_n_0 ),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(\next_switch_matrix[1][1]_i_2_n_0 ),
        .I5(Q[55]),
        .O(\next_switch_matrix_reg[4][2] ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[4][2]_i_29 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\next_switch_matrix[4][2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \next_switch_matrix[6][1]_i_1__0 
       (.I0(Q[55]),
        .I1(Q[33]),
        .I2(Q[32]),
        .I3(\next_switch_matrix[1][1]_i_2_n_0 ),
        .I4(Q[36]),
        .I5(Q[37]),
        .O(\next_switch_matrix_reg[6][1] ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized10
   (D,
    Q,
    \port_wants_to[3][0]_4 ,
    \next_switch_matrix_reg[5][2] ,
    \next_switch_matrix_reg[0][0] ,
    \next_switch_matrix_reg[4][2] ,
    \next_switch_matrix_reg[3][2] ,
    \port_wants_to[3][2]_1 ,
    \next_switch_matrix_reg[2][2] ,
    \port_wants_to[3][3]_0 ,
    \port_wants_to[3][1]_2 ,
    \port_wants_to[3][4]_3 ,
    \next_switch_matrix_reg[2][2]_0 ,
    \G0.mem_reg[55]_0 ,
    \G0.mem_reg[34]_0 ,
    \G0.mem_reg[35]_0 ,
    \G0.mem_reg[55]_1 ,
    \port_wants_to[6][2]_6 ,
    \G0.mem_reg[35]_1 ,
    \G0.mem_reg[55]_2 ,
    \G0.mem_reg[35]_2 ,
    \G0.mem_reg[35]_3 ,
    reset,
    E,
    \mem_reg[55] ,
    clk);
  output [0:0]D;
  output [55:0]Q;
  output [2:0]\port_wants_to[3][0]_4 ;
  output [0:0]\next_switch_matrix_reg[5][2] ;
  output \next_switch_matrix_reg[0][0] ;
  output [0:0]\next_switch_matrix_reg[4][2] ;
  output \next_switch_matrix_reg[3][2] ;
  output [1:0]\port_wants_to[3][2]_1 ;
  output \next_switch_matrix_reg[2][2] ;
  output [0:0]\port_wants_to[3][3]_0 ;
  output [1:0]\port_wants_to[3][1]_2 ;
  output [0:0]\port_wants_to[3][4]_3 ;
  output \next_switch_matrix_reg[2][2]_0 ;
  input \G0.mem_reg[55]_0 ;
  input \G0.mem_reg[34]_0 ;
  input \G0.mem_reg[35]_0 ;
  input \G0.mem_reg[55]_1 ;
  input [1:0]\port_wants_to[6][2]_6 ;
  input \G0.mem_reg[35]_1 ;
  input \G0.mem_reg[55]_2 ;
  input \G0.mem_reg[35]_2 ;
  input \G0.mem_reg[35]_3 ;
  input reset;
  input [0:0]E;
  input [55:0]\mem_reg[55] ;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire \G0.mem_reg[34]_0 ;
  wire \G0.mem_reg[35]_0 ;
  wire \G0.mem_reg[35]_1 ;
  wire \G0.mem_reg[35]_2 ;
  wire \G0.mem_reg[35]_3 ;
  wire \G0.mem_reg[55]_0 ;
  wire \G0.mem_reg[55]_1 ;
  wire \G0.mem_reg[55]_2 ;
  wire [55:0]Q;
  wire clk;
  wire [55:0]\mem_reg[55] ;
  wire \next_switch_matrix_reg[0][0] ;
  wire \next_switch_matrix_reg[2][2] ;
  wire \next_switch_matrix_reg[2][2]_0 ;
  wire \next_switch_matrix_reg[3][2] ;
  wire [0:0]\next_switch_matrix_reg[4][2] ;
  wire [0:0]\next_switch_matrix_reg[5][2] ;
  wire [2:0]\port_wants_to[3][0]_4 ;
  wire [1:0]\port_wants_to[3][1]_2 ;
  wire [1:0]\port_wants_to[3][2]_1 ;
  wire [0:0]\port_wants_to[3][3]_0 ;
  wire [0:0]\port_wants_to[3][4]_3 ;
  wire [1:0]\port_wants_to[6][2]_6 ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [9]),
        .Q(Q[9]),
        .R(reset));
  LUT5 #(
    .INIT(32'hF0FF55CC)) 
    \next_switch_matrix[0][0]_i_9__2 
       (.I0(\G0.mem_reg[34]_0 ),
        .I1(\G0.mem_reg[35]_0 ),
        .I2(\G0.mem_reg[55]_1 ),
        .I3(\port_wants_to[6][2]_6 [0]),
        .I4(\port_wants_to[6][2]_6 [1]),
        .O(\next_switch_matrix_reg[0][0] ));
  LUT6 #(
    .INIT(64'hF4FFF4FFF4FFFFFF)) 
    \next_switch_matrix[0][2]_i_5 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(\next_switch_matrix_reg[2][2] ),
        .I3(Q[55]),
        .I4(Q[33]),
        .I5(Q[32]),
        .O(\port_wants_to[3][2]_1 [0]));
  LUT6 #(
    .INIT(64'hCFEFCFEFCFEFCFFF)) 
    \next_switch_matrix[0][2]_i_6 
       (.I0(Q[34]),
        .I1(\next_switch_matrix_reg[2][2] ),
        .I2(Q[55]),
        .I3(Q[35]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[3][2]_1 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF1FFFFFFF)) 
    \next_switch_matrix[1][2]_i_1__1 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(Q[55]),
        .I3(\port_wants_to[3][0]_4 [0]),
        .I4(\G0.mem_reg[55]_0 ),
        .I5(\port_wants_to[3][0]_4 [2]),
        .O(D));
  LUT6 #(
    .INIT(64'h55FF55FF55FF45FF)) 
    \next_switch_matrix[1][2]_i_2 
       (.I0(\next_switch_matrix_reg[2][2] ),
        .I1(Q[35]),
        .I2(Q[34]),
        .I3(Q[55]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[3][0]_4 [0]));
  LUT4 #(
    .INIT(16'h55FD)) 
    \next_switch_matrix[1][2]_i_4__1 
       (.I0(Q[55]),
        .I1(Q[34]),
        .I2(Q[35]),
        .I3(\next_switch_matrix_reg[2][2] ),
        .O(\port_wants_to[3][0]_4 [2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \next_switch_matrix[1][2]_i_6 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(Q[55]),
        .O(\port_wants_to[3][0]_4 [1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[2][2]_i_3 
       (.I0(Q[36]),
        .I1(Q[37]),
        .O(\next_switch_matrix_reg[2][2] ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[2][2]_i_4 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\next_switch_matrix_reg[2][2]_0 ));
  LUT6 #(
    .INIT(64'h1113FFFFFFFFFFFF)) 
    \next_switch_matrix[3][2]_i_2 
       (.I0(Q[34]),
        .I1(Q[35]),
        .I2(Q[33]),
        .I3(Q[32]),
        .I4(Q[55]),
        .I5(\next_switch_matrix_reg[2][2] ),
        .O(\port_wants_to[3][4]_3 ));
  LUT6 #(
    .INIT(64'hFFFF5055FFFFF2FF)) 
    \next_switch_matrix[3][2]_i_4__1 
       (.I0(\port_wants_to[3][2]_1 [1]),
        .I1(\G0.mem_reg[55]_1 ),
        .I2(\G0.mem_reg[55]_2 ),
        .I3(\G0.mem_reg[35]_2 ),
        .I4(\G0.mem_reg[35]_3 ),
        .I5(\port_wants_to[3][2]_1 [0]),
        .O(\next_switch_matrix_reg[3][2] ));
  LUT6 #(
    .INIT(64'hF1FFF1FFE0FFFFFF)) 
    \next_switch_matrix[3][2]_i_5 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(\next_switch_matrix_reg[2][2] ),
        .I3(Q[55]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(\port_wants_to[3][3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[4][2]_i_1__0 
       (.I0(\G0.mem_reg[35]_1 ),
        .O(\next_switch_matrix_reg[4][2] ));
  LUT6 #(
    .INIT(64'hFFFFFF0FEF0FEFEF)) 
    \next_switch_matrix[4][2]_i_4 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(Q[55]),
        .I3(Q[35]),
        .I4(Q[34]),
        .I5(\next_switch_matrix_reg[2][2] ),
        .O(\port_wants_to[3][1]_2 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0EEFFFF)) 
    \next_switch_matrix[4][2]_i_5 
       (.I0(Q[32]),
        .I1(Q[33]),
        .I2(Q[35]),
        .I3(Q[34]),
        .I4(Q[55]),
        .I5(\next_switch_matrix_reg[2][2] ),
        .O(\port_wants_to[3][1]_2 [0]));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    \next_switch_matrix[5][2]_i_1__1 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(Q[55]),
        .I3(\port_wants_to[3][0]_4 [0]),
        .I4(\G0.mem_reg[55]_0 ),
        .I5(\port_wants_to[3][0]_4 [2]),
        .O(\next_switch_matrix_reg[5][2] ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized13
   (\next_switch_matrix_reg[1][0] ,
    \port_wants_to[6][0]_9 ,
    \next_switch_matrix_reg[6][0] ,
    Q,
    D,
    \next_switch_matrix_reg[0][0] ,
    \next_switch_matrix_reg[0][0]_0 ,
    \next_switch_matrix_reg[0][0]_1 ,
    \port_wants_to[6][2]_6 ,
    \next_switch_matrix_reg[4][0] ,
    \port_wants_to[6][1]_7 ,
    \next_switch_matrix_reg[3][0] ,
    \next_switch_matrix_reg[3][0]_0 ,
    \next_switch_matrix_reg[1][0]_0 ,
    \next_switch_matrix_reg[0][0]_2 ,
    \next_switch_matrix_reg[3][0]_1 ,
    \G0.mem_reg[55]_0 ,
    \G0.mem_reg[55]_1 ,
    \G0.mem_reg[33]_0 ,
    \G0.mem_reg[32]_0 ,
    \G0.mem_reg[55]_2 ,
    \G0.mem_reg[55]_3 ,
    \G0.mem_reg[32]_1 ,
    \G0.mem_reg[55]_4 ,
    \G0.mem_reg[34]_0 ,
    \G0.mem_reg[35]_0 ,
    \G0.mem_reg[34]_1 ,
    \G0.mem_reg[35]_1 ,
    \G0.mem_reg[37]_0 ,
    \G0.mem_reg[35]_2 ,
    \G0.mem_reg[37]_1 ,
    \G0.mem_reg[37]_2 ,
    \G0.mem_reg[55]_5 ,
    \G0.mem_reg[32]_2 ,
    reset,
    E,
    To_NoC_1,
    clk);
  output \next_switch_matrix_reg[1][0] ;
  output [2:0]\port_wants_to[6][0]_9 ;
  output \next_switch_matrix_reg[6][0] ;
  output [55:0]Q;
  output [0:0]D;
  output [0:0]\next_switch_matrix_reg[0][0] ;
  output \next_switch_matrix_reg[0][0]_0 ;
  output \next_switch_matrix_reg[0][0]_1 ;
  output [1:0]\port_wants_to[6][2]_6 ;
  output [0:0]\next_switch_matrix_reg[4][0] ;
  output [1:0]\port_wants_to[6][1]_7 ;
  output \next_switch_matrix_reg[3][0] ;
  output \next_switch_matrix_reg[3][0]_0 ;
  output \next_switch_matrix_reg[1][0]_0 ;
  output \next_switch_matrix_reg[0][0]_2 ;
  output \next_switch_matrix_reg[3][0]_1 ;
  input \G0.mem_reg[55]_0 ;
  input \G0.mem_reg[55]_1 ;
  input \G0.mem_reg[33]_0 ;
  input \G0.mem_reg[32]_0 ;
  input \G0.mem_reg[55]_2 ;
  input \G0.mem_reg[55]_3 ;
  input \G0.mem_reg[32]_1 ;
  input \G0.mem_reg[55]_4 ;
  input \G0.mem_reg[34]_0 ;
  input \G0.mem_reg[35]_0 ;
  input \G0.mem_reg[34]_1 ;
  input \G0.mem_reg[35]_1 ;
  input [0:0]\G0.mem_reg[37]_0 ;
  input \G0.mem_reg[35]_2 ;
  input [0:0]\G0.mem_reg[37]_1 ;
  input \G0.mem_reg[37]_2 ;
  input \G0.mem_reg[55]_5 ;
  input \G0.mem_reg[32]_2 ;
  input reset;
  input [0:0]E;
  input [55:0]To_NoC_1;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire \G0.mem_reg[32]_0 ;
  wire \G0.mem_reg[32]_1 ;
  wire \G0.mem_reg[32]_2 ;
  wire \G0.mem_reg[33]_0 ;
  wire \G0.mem_reg[34]_0 ;
  wire \G0.mem_reg[34]_1 ;
  wire \G0.mem_reg[35]_0 ;
  wire \G0.mem_reg[35]_1 ;
  wire \G0.mem_reg[35]_2 ;
  wire [0:0]\G0.mem_reg[37]_0 ;
  wire [0:0]\G0.mem_reg[37]_1 ;
  wire \G0.mem_reg[37]_2 ;
  wire \G0.mem_reg[55]_0 ;
  wire \G0.mem_reg[55]_1 ;
  wire \G0.mem_reg[55]_2 ;
  wire \G0.mem_reg[55]_3 ;
  wire \G0.mem_reg[55]_4 ;
  wire \G0.mem_reg[55]_5 ;
  wire [55:0]Q;
  wire [55:0]To_NoC_1;
  wire clk;
  wire \next_switch_matrix[0][0]_i_14__0_n_0 ;
  wire \next_switch_matrix[4][0]_i_2__2_n_0 ;
  wire [0:0]\next_switch_matrix_reg[0][0] ;
  wire \next_switch_matrix_reg[0][0]_0 ;
  wire \next_switch_matrix_reg[0][0]_1 ;
  wire \next_switch_matrix_reg[0][0]_2 ;
  wire \next_switch_matrix_reg[1][0] ;
  wire \next_switch_matrix_reg[1][0]_0 ;
  wire \next_switch_matrix_reg[3][0] ;
  wire \next_switch_matrix_reg[3][0]_0 ;
  wire \next_switch_matrix_reg[3][0]_1 ;
  wire [0:0]\next_switch_matrix_reg[4][0] ;
  wire \next_switch_matrix_reg[6][0] ;
  wire [2:0]\port_wants_to[6][0]_9 ;
  wire [1:0]\port_wants_to[6][1]_7 ;
  wire [1:0]\port_wants_to[6][2]_6 ;
  wire [2:2]\port_wants_to[6][3]_5 ;
  wire [2:2]\port_wants_to[6][4]_8 ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_1[9]),
        .Q(Q[9]),
        .R(reset));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][0]_i_11 
       (.I0(Q[36]),
        .I1(Q[37]),
        .O(\next_switch_matrix_reg[0][0]_2 ));
  LUT5 #(
    .INIT(32'h0000CEFE)) 
    \next_switch_matrix[0][0]_i_13__1 
       (.I0(\G0.mem_reg[35]_1 ),
        .I1(\port_wants_to[6][0]_9 [2]),
        .I2(\port_wants_to[6][0]_9 [0]),
        .I3(\G0.mem_reg[37]_0 ),
        .I4(\next_switch_matrix[0][0]_i_14__0_n_0 ),
        .O(\next_switch_matrix_reg[1][0]_0 ));
  LUT6 #(
    .INIT(64'hC444444404444444)) 
    \next_switch_matrix[0][0]_i_14__0 
       (.I0(\G0.mem_reg[35]_2 ),
        .I1(\port_wants_to[6][0]_9 [2]),
        .I2(Q[55]),
        .I3(\next_switch_matrix_reg[0][0]_2 ),
        .I4(\port_wants_to[6][0]_9 [0]),
        .I5(\G0.mem_reg[37]_1 ),
        .O(\next_switch_matrix[0][0]_i_14__0_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    \next_switch_matrix[0][0]_i_1__2 
       (.I0(\next_switch_matrix_reg[0][0]_0 ),
        .I1(\next_switch_matrix_reg[0][0]_1 ),
        .I2(\G0.mem_reg[32]_0 ),
        .I3(\port_wants_to[6][2]_6 [1]),
        .I4(\port_wants_to[6][2]_6 [0]),
        .O(\next_switch_matrix_reg[0][0] ));
  LUT4 #(
    .INIT(16'h0DFF)) 
    \next_switch_matrix[0][0]_i_2__1 
       (.I0(\next_switch_matrix[4][0]_i_2__2_n_0 ),
        .I1(\G0.mem_reg[55]_2 ),
        .I2(\G0.mem_reg[55]_3 ),
        .I3(\G0.mem_reg[55]_1 ),
        .O(\next_switch_matrix_reg[0][0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB8BB888B)) 
    \next_switch_matrix[0][0]_i_3__1 
       (.I0(\next_switch_matrix_reg[6][0] ),
        .I1(\port_wants_to[6][2]_6 [1]),
        .I2(\port_wants_to[6][2]_6 [0]),
        .I3(\G0.mem_reg[32]_0 ),
        .I4(\G0.mem_reg[32]_1 ),
        .I5(\G0.mem_reg[55]_4 ),
        .O(\next_switch_matrix_reg[0][0]_1 ));
  LUT6 #(
    .INIT(64'hCFEFCFEFCFEFCFFF)) 
    \next_switch_matrix[0][0]_i_5 
       (.I0(Q[34]),
        .I1(\next_switch_matrix_reg[0][0]_2 ),
        .I2(Q[55]),
        .I3(Q[35]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[6][2]_6 [1]));
  LUT6 #(
    .INIT(64'hF4FFF4FFF4FFFFFF)) 
    \next_switch_matrix[0][0]_i_6 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(\next_switch_matrix_reg[0][0]_2 ),
        .I3(Q[55]),
        .I4(Q[33]),
        .I5(Q[32]),
        .O(\port_wants_to[6][2]_6 [0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hEEEFFFFF)) 
    \next_switch_matrix[1][0]_i_1__1 
       (.I0(\port_wants_to[6][0]_9 [2]),
        .I1(\next_switch_matrix_reg[1][0] ),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(Q[55]),
        .O(D));
  LUT4 #(
    .INIT(16'h55FD)) 
    \next_switch_matrix[1][0]_i_2 
       (.I0(Q[55]),
        .I1(Q[34]),
        .I2(Q[35]),
        .I3(\next_switch_matrix_reg[0][0]_2 ),
        .O(\port_wants_to[6][0]_9 [2]));
  LUT2 #(
    .INIT(4'hB)) 
    \next_switch_matrix[1][0]_i_3__1 
       (.I0(\G0.mem_reg[55]_0 ),
        .I1(\port_wants_to[6][0]_9 [0]),
        .O(\next_switch_matrix_reg[1][0] ));
  LUT6 #(
    .INIT(64'h55FF55FF55FF45FF)) 
    \next_switch_matrix[2][0]_i_2 
       (.I0(\next_switch_matrix_reg[0][0]_2 ),
        .I1(Q[35]),
        .I2(Q[34]),
        .I3(Q[55]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[6][0]_9 [0]));
  LUT6 #(
    .INIT(64'h1113FFFFFFFFFFFF)) 
    \next_switch_matrix[3][0]_i_10 
       (.I0(Q[34]),
        .I1(Q[35]),
        .I2(Q[33]),
        .I3(Q[32]),
        .I4(Q[55]),
        .I5(\next_switch_matrix_reg[0][0]_2 ),
        .O(\port_wants_to[6][4]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h3133)) 
    \next_switch_matrix[3][0]_i_3__1 
       (.I0(\G0.mem_reg[34]_0 ),
        .I1(\G0.mem_reg[35]_0 ),
        .I2(\port_wants_to[6][3]_5 ),
        .I3(\G0.mem_reg[34]_1 ),
        .O(\next_switch_matrix_reg[3][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFF02FF)) 
    \next_switch_matrix[3][0]_i_4__1 
       (.I0(\G0.mem_reg[34]_0 ),
        .I1(\port_wants_to[6][3]_5 ),
        .I2(\G0.mem_reg[35]_0 ),
        .I3(\G0.mem_reg[34]_1 ),
        .I4(\port_wants_to[6][4]_8 ),
        .O(\next_switch_matrix_reg[3][0] ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[3][0]_i_5 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\next_switch_matrix_reg[3][0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \next_switch_matrix[3][0]_i_6 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(Q[55]),
        .O(\port_wants_to[6][0]_9 [1]));
  LUT6 #(
    .INIT(64'hF1FFF1FFE0FFFFFF)) 
    \next_switch_matrix[3][0]_i_8 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(\next_switch_matrix_reg[0][0]_2 ),
        .I3(Q[55]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(\port_wants_to[6][3]_5 ));
  LUT5 #(
    .INIT(32'hFF2FFFFF)) 
    \next_switch_matrix[4][0]_i_1__1 
       (.I0(\next_switch_matrix[4][0]_i_2__2_n_0 ),
        .I1(\G0.mem_reg[55]_2 ),
        .I2(\G0.mem_reg[55]_1 ),
        .I3(\port_wants_to[6][1]_7 [0]),
        .I4(\port_wants_to[6][1]_7 [1]),
        .O(\next_switch_matrix_reg[4][0] ));
  LUT6 #(
    .INIT(64'h00000000FCAAFFFF)) 
    \next_switch_matrix[4][0]_i_2__2 
       (.I0(\G0.mem_reg[35]_2 ),
        .I1(\G0.mem_reg[37]_2 ),
        .I2(\G0.mem_reg[55]_5 ),
        .I3(\port_wants_to[6][1]_7 [0]),
        .I4(\port_wants_to[6][1]_7 [1]),
        .I5(\G0.mem_reg[32]_2 ),
        .O(\next_switch_matrix[4][0]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0EEFFFF)) 
    \next_switch_matrix[4][0]_i_5 
       (.I0(Q[32]),
        .I1(Q[33]),
        .I2(Q[35]),
        .I3(Q[34]),
        .I4(Q[55]),
        .I5(\next_switch_matrix_reg[0][0]_2 ),
        .O(\port_wants_to[6][1]_7 [0]));
  LUT6 #(
    .INIT(64'hFFFFFF0FEF0FEFEF)) 
    \next_switch_matrix[4][0]_i_6 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(Q[55]),
        .I3(Q[35]),
        .I4(Q[34]),
        .I5(\next_switch_matrix_reg[0][0]_2 ),
        .O(\port_wants_to[6][1]_7 [1]));
  LUT6 #(
    .INIT(64'h04040444FFFFFFFF)) 
    \next_switch_matrix[6][0]_i_2__0 
       (.I0(\G0.mem_reg[55]_1 ),
        .I1(\port_wants_to[6][0]_9 [2]),
        .I2(Q[55]),
        .I3(Q[36]),
        .I4(Q[37]),
        .I5(\G0.mem_reg[33]_0 ),
        .O(\next_switch_matrix_reg[6][0] ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized15
   (\next_switch_matrix_reg[6][2] ,
    Q,
    \next_switch_matrix_reg[3][0] ,
    \next_switch_matrix_reg[3][0]_0 ,
    \next_switch_matrix_reg[3][0]_1 ,
    D,
    \next_switch_matrix_reg[6][1] ,
    \next_switch_matrix_reg[1][1] ,
    \mem_reg[55] ,
    \port_wants_to[6][4]_48 ,
    \G0.mem_reg[55]_0 ,
    \G0.mem_reg[55]_1 ,
    \pres_switch_matrix_reg[1][2] ,
    reset,
    E,
    \Inport[1] ,
    clk);
  output \next_switch_matrix_reg[6][2] ;
  output [55:0]Q;
  output \next_switch_matrix_reg[3][0] ;
  output \next_switch_matrix_reg[3][0]_0 ;
  output \next_switch_matrix_reg[3][0]_1 ;
  output [0:0]D;
  output [0:0]\next_switch_matrix_reg[6][1] ;
  output [0:0]\next_switch_matrix_reg[1][1] ;
  output [55:0]\mem_reg[55] ;
  input [1:0]\port_wants_to[6][4]_48 ;
  input [55:0]\G0.mem_reg[55]_0 ;
  input [55:0]\G0.mem_reg[55]_1 ;
  input [2:0]\pres_switch_matrix_reg[1][2] ;
  input reset;
  input [0:0]E;
  input [55:0]\Inport[1] ;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire [55:0]\G0.mem_reg[55]_0 ;
  wire [55:0]\G0.mem_reg[55]_1 ;
  wire [55:0]\Inport[1] ;
  wire [55:0]Q;
  wire clk;
  wire [55:0]\mem_reg[55] ;
  wire \next_switch_matrix[3][1]_i_2_n_0 ;
  wire [0:0]\next_switch_matrix_reg[1][1] ;
  wire \next_switch_matrix_reg[3][0] ;
  wire \next_switch_matrix_reg[3][0]_0 ;
  wire \next_switch_matrix_reg[3][0]_1 ;
  wire [0:0]\next_switch_matrix_reg[6][1] ;
  wire \next_switch_matrix_reg[6][2] ;
  wire [1:0]\port_wants_to[6][4]_48 ;
  wire [2:0]\pres_switch_matrix_reg[1][2] ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\Inport[1] [9]),
        .Q(Q[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[0]_i_1__5 
       (.I0(Q[0]),
        .I1(\G0.mem_reg[55]_0 [0]),
        .I2(\G0.mem_reg[55]_1 [0]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [0]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[10]_i_1__5 
       (.I0(Q[10]),
        .I1(\G0.mem_reg[55]_0 [10]),
        .I2(\G0.mem_reg[55]_1 [10]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [10]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[11]_i_1__5 
       (.I0(Q[11]),
        .I1(\G0.mem_reg[55]_0 [11]),
        .I2(\G0.mem_reg[55]_1 [11]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [11]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[12]_i_1__5 
       (.I0(Q[12]),
        .I1(\G0.mem_reg[55]_0 [12]),
        .I2(\G0.mem_reg[55]_1 [12]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [12]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[13]_i_1__5 
       (.I0(Q[13]),
        .I1(\G0.mem_reg[55]_0 [13]),
        .I2(\G0.mem_reg[55]_1 [13]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [13]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[14]_i_1__5 
       (.I0(Q[14]),
        .I1(\G0.mem_reg[55]_0 [14]),
        .I2(\G0.mem_reg[55]_1 [14]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [14]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[15]_i_1__5 
       (.I0(Q[15]),
        .I1(\G0.mem_reg[55]_0 [15]),
        .I2(\G0.mem_reg[55]_1 [15]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [15]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[16]_i_1__5 
       (.I0(Q[16]),
        .I1(\G0.mem_reg[55]_0 [16]),
        .I2(\G0.mem_reg[55]_1 [16]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [16]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[17]_i_1__5 
       (.I0(Q[17]),
        .I1(\G0.mem_reg[55]_0 [17]),
        .I2(\G0.mem_reg[55]_1 [17]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [17]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[18]_i_1__5 
       (.I0(Q[18]),
        .I1(\G0.mem_reg[55]_0 [18]),
        .I2(\G0.mem_reg[55]_1 [18]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [18]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[19]_i_1__5 
       (.I0(Q[19]),
        .I1(\G0.mem_reg[55]_0 [19]),
        .I2(\G0.mem_reg[55]_1 [19]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [19]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[1]_i_1__5 
       (.I0(Q[1]),
        .I1(\G0.mem_reg[55]_0 [1]),
        .I2(\G0.mem_reg[55]_1 [1]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [1]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[20]_i_1__5 
       (.I0(Q[20]),
        .I1(\G0.mem_reg[55]_0 [20]),
        .I2(\G0.mem_reg[55]_1 [20]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [20]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[21]_i_1__5 
       (.I0(Q[21]),
        .I1(\G0.mem_reg[55]_0 [21]),
        .I2(\G0.mem_reg[55]_1 [21]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [21]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[22]_i_1__5 
       (.I0(Q[22]),
        .I1(\G0.mem_reg[55]_0 [22]),
        .I2(\G0.mem_reg[55]_1 [22]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [22]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[23]_i_1__5 
       (.I0(Q[23]),
        .I1(\G0.mem_reg[55]_0 [23]),
        .I2(\G0.mem_reg[55]_1 [23]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [23]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[24]_i_1__5 
       (.I0(Q[24]),
        .I1(\G0.mem_reg[55]_0 [24]),
        .I2(\G0.mem_reg[55]_1 [24]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [24]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[25]_i_1__5 
       (.I0(Q[25]),
        .I1(\G0.mem_reg[55]_0 [25]),
        .I2(\G0.mem_reg[55]_1 [25]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [25]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[26]_i_1__5 
       (.I0(Q[26]),
        .I1(\G0.mem_reg[55]_0 [26]),
        .I2(\G0.mem_reg[55]_1 [26]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [26]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[27]_i_1__5 
       (.I0(Q[27]),
        .I1(\G0.mem_reg[55]_0 [27]),
        .I2(\G0.mem_reg[55]_1 [27]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [27]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[28]_i_1__5 
       (.I0(Q[28]),
        .I1(\G0.mem_reg[55]_0 [28]),
        .I2(\G0.mem_reg[55]_1 [28]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [28]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[29]_i_1__5 
       (.I0(Q[29]),
        .I1(\G0.mem_reg[55]_0 [29]),
        .I2(\G0.mem_reg[55]_1 [29]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [29]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[2]_i_1__5 
       (.I0(Q[2]),
        .I1(\G0.mem_reg[55]_0 [2]),
        .I2(\G0.mem_reg[55]_1 [2]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [2]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[30]_i_1__5 
       (.I0(Q[30]),
        .I1(\G0.mem_reg[55]_0 [30]),
        .I2(\G0.mem_reg[55]_1 [30]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [30]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[31]_i_1__5 
       (.I0(Q[31]),
        .I1(\G0.mem_reg[55]_0 [31]),
        .I2(\G0.mem_reg[55]_1 [31]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [31]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[32]_i_1__5 
       (.I0(Q[32]),
        .I1(\G0.mem_reg[55]_0 [32]),
        .I2(\G0.mem_reg[55]_1 [32]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [32]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[33]_i_1__5 
       (.I0(Q[33]),
        .I1(\G0.mem_reg[55]_0 [33]),
        .I2(\G0.mem_reg[55]_1 [33]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [33]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[34]_i_1__5 
       (.I0(Q[34]),
        .I1(\G0.mem_reg[55]_0 [34]),
        .I2(\G0.mem_reg[55]_1 [34]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [34]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[35]_i_1__5 
       (.I0(Q[35]),
        .I1(\G0.mem_reg[55]_0 [35]),
        .I2(\G0.mem_reg[55]_1 [35]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [35]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[36]_i_1__5 
       (.I0(Q[36]),
        .I1(\G0.mem_reg[55]_0 [36]),
        .I2(\G0.mem_reg[55]_1 [36]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [36]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[37]_i_1__5 
       (.I0(Q[37]),
        .I1(\G0.mem_reg[55]_0 [37]),
        .I2(\G0.mem_reg[55]_1 [37]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [37]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[38]_i_1__5 
       (.I0(Q[38]),
        .I1(\G0.mem_reg[55]_0 [38]),
        .I2(\G0.mem_reg[55]_1 [38]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [38]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[39]_i_1__5 
       (.I0(Q[39]),
        .I1(\G0.mem_reg[55]_0 [39]),
        .I2(\G0.mem_reg[55]_1 [39]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [39]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[3]_i_1__5 
       (.I0(Q[3]),
        .I1(\G0.mem_reg[55]_0 [3]),
        .I2(\G0.mem_reg[55]_1 [3]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [3]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[40]_i_1__5 
       (.I0(Q[40]),
        .I1(\G0.mem_reg[55]_0 [40]),
        .I2(\G0.mem_reg[55]_1 [40]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [40]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[41]_i_1__5 
       (.I0(Q[41]),
        .I1(\G0.mem_reg[55]_0 [41]),
        .I2(\G0.mem_reg[55]_1 [41]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [41]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[42]_i_1__5 
       (.I0(Q[42]),
        .I1(\G0.mem_reg[55]_0 [42]),
        .I2(\G0.mem_reg[55]_1 [42]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [42]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[43]_i_1__5 
       (.I0(Q[43]),
        .I1(\G0.mem_reg[55]_0 [43]),
        .I2(\G0.mem_reg[55]_1 [43]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [43]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[44]_i_1__5 
       (.I0(Q[44]),
        .I1(\G0.mem_reg[55]_0 [44]),
        .I2(\G0.mem_reg[55]_1 [44]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [44]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[45]_i_1__5 
       (.I0(Q[45]),
        .I1(\G0.mem_reg[55]_0 [45]),
        .I2(\G0.mem_reg[55]_1 [45]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [45]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[46]_i_1__5 
       (.I0(Q[46]),
        .I1(\G0.mem_reg[55]_0 [46]),
        .I2(\G0.mem_reg[55]_1 [46]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [46]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[47]_i_1__5 
       (.I0(Q[47]),
        .I1(\G0.mem_reg[55]_0 [47]),
        .I2(\G0.mem_reg[55]_1 [47]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [47]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[48]_i_1__5 
       (.I0(Q[48]),
        .I1(\G0.mem_reg[55]_0 [48]),
        .I2(\G0.mem_reg[55]_1 [48]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [48]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[49]_i_1__5 
       (.I0(Q[49]),
        .I1(\G0.mem_reg[55]_0 [49]),
        .I2(\G0.mem_reg[55]_1 [49]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [49]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[4]_i_1__5 
       (.I0(Q[4]),
        .I1(\G0.mem_reg[55]_0 [4]),
        .I2(\G0.mem_reg[55]_1 [4]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [4]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[50]_i_1__5 
       (.I0(Q[50]),
        .I1(\G0.mem_reg[55]_0 [50]),
        .I2(\G0.mem_reg[55]_1 [50]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [50]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[51]_i_1__5 
       (.I0(Q[51]),
        .I1(\G0.mem_reg[55]_0 [51]),
        .I2(\G0.mem_reg[55]_1 [51]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [51]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[52]_i_1__5 
       (.I0(Q[52]),
        .I1(\G0.mem_reg[55]_0 [52]),
        .I2(\G0.mem_reg[55]_1 [52]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [52]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[53]_i_1__5 
       (.I0(Q[53]),
        .I1(\G0.mem_reg[55]_0 [53]),
        .I2(\G0.mem_reg[55]_1 [53]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [53]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[54]_i_1__5 
       (.I0(Q[54]),
        .I1(\G0.mem_reg[55]_0 [54]),
        .I2(\G0.mem_reg[55]_1 [54]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [54]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[55]_i_1__6 
       (.I0(Q[55]),
        .I1(\G0.mem_reg[55]_0 [55]),
        .I2(\G0.mem_reg[55]_1 [55]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [55]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[5]_i_1__5 
       (.I0(Q[5]),
        .I1(\G0.mem_reg[55]_0 [5]),
        .I2(\G0.mem_reg[55]_1 [5]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [5]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[6]_i_1__5 
       (.I0(Q[6]),
        .I1(\G0.mem_reg[55]_0 [6]),
        .I2(\G0.mem_reg[55]_1 [6]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [6]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[7]_i_1__5 
       (.I0(Q[7]),
        .I1(\G0.mem_reg[55]_0 [7]),
        .I2(\G0.mem_reg[55]_1 [7]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [7]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[8]_i_1__5 
       (.I0(Q[8]),
        .I1(\G0.mem_reg[55]_0 [8]),
        .I2(\G0.mem_reg[55]_1 [8]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [8]));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \mem[9]_i_1__5 
       (.I0(Q[9]),
        .I1(\G0.mem_reg[55]_0 [9]),
        .I2(\G0.mem_reg[55]_1 [9]),
        .I3(\pres_switch_matrix_reg[1][2] [0]),
        .I4(\pres_switch_matrix_reg[1][2] [1]),
        .I5(\pres_switch_matrix_reg[1][2] [2]),
        .O(\mem_reg[55] [9]));
  LUT6 #(
    .INIT(64'h500050004000F0A0)) 
    \next_switch_matrix[0][2]_i_10__0 
       (.I0(Q[37]),
        .I1(\next_switch_matrix[3][1]_i_2_n_0 ),
        .I2(Q[55]),
        .I3(Q[36]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(\next_switch_matrix_reg[3][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hE0EF0000)) 
    \next_switch_matrix[0][2]_i_11__1 
       (.I0(Q[34]),
        .I1(Q[35]),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(Q[55]),
        .O(\next_switch_matrix_reg[3][0]_1 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \next_switch_matrix[0][2]_i_6__2 
       (.I0(\next_switch_matrix[3][1]_i_2_n_0 ),
        .I1(Q[55]),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(\next_switch_matrix_reg[6][2] ));
  LUT5 #(
    .INIT(32'hFCAC0CAC)) 
    \next_switch_matrix[1][0]_i_9 
       (.I0(\next_switch_matrix_reg[3][0]_0 ),
        .I1(\next_switch_matrix_reg[3][0]_1 ),
        .I2(\port_wants_to[6][4]_48 [0]),
        .I3(\port_wants_to[6][4]_48 [1]),
        .I4(\next_switch_matrix_reg[6][2] ),
        .O(\next_switch_matrix_reg[3][0] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h5D5D5DFD)) 
    \next_switch_matrix[1][1]_i_1__0 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(Q[35]),
        .I4(Q[34]),
        .O(\next_switch_matrix_reg[1][1] ));
  LUT6 #(
    .INIT(64'hEEFFEEFF0FFF4FFF)) 
    \next_switch_matrix[3][1]_i_1 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(Q[36]),
        .I3(Q[55]),
        .I4(\next_switch_matrix[3][1]_i_2_n_0 ),
        .I5(Q[37]),
        .O(D));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[3][1]_i_2 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\next_switch_matrix[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    \next_switch_matrix[6][1]_i_1__1 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(Q[55]),
        .I5(\next_switch_matrix[3][1]_i_2_n_0 ),
        .O(\next_switch_matrix_reg[6][1] ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized17
   (\next_switch_matrix_reg[3][0] ,
    \next_switch_matrix_reg[6][2] ,
    \next_switch_matrix_reg[3][2] ,
    \next_switch_matrix_reg[1][2] ,
    Q,
    \next_switch_matrix_reg[2][2] ,
    D,
    \next_switch_matrix_reg[3][0]_0 ,
    \next_switch_matrix_reg[5][2] ,
    \next_switch_matrix_reg[5][0] ,
    \next_switch_matrix_reg[0][0] ,
    \next_switch_matrix_reg[5][0]_0 ,
    \next_switch_matrix_reg[1][2]_0 ,
    \next_switch_matrix_reg[5][0]_1 ,
    \next_switch_matrix_reg[5][0]_2 ,
    \next_switch_matrix_reg[6][2]_0 ,
    \next_switch_matrix_reg[4][2] ,
    \port_wants_to[6][4]_48 ,
    \G0.mem_reg[37]_0 ,
    \G0.mem_reg[55]_0 ,
    \G0.mem_reg[34]_0 ,
    \port_wants_to[6][3]_49 ,
    \port_wants_to[6][2]_51 ,
    \port_wants_to[6][0]_50 ,
    \port_wants_to[6][1]_52 ,
    \G0.mem_reg[35]_0 ,
    \G0.mem_reg[35]_1 ,
    reset,
    E,
    \Inport[3] ,
    clk);
  output \next_switch_matrix_reg[3][0] ;
  output \next_switch_matrix_reg[6][2] ;
  output \next_switch_matrix_reg[3][2] ;
  output \next_switch_matrix_reg[1][2] ;
  output [55:0]Q;
  output \next_switch_matrix_reg[2][2] ;
  output [0:0]D;
  output \next_switch_matrix_reg[3][0]_0 ;
  output \next_switch_matrix_reg[5][2] ;
  output \next_switch_matrix_reg[5][0] ;
  output \next_switch_matrix_reg[0][0] ;
  output \next_switch_matrix_reg[5][0]_0 ;
  output [0:0]\next_switch_matrix_reg[1][2]_0 ;
  output \next_switch_matrix_reg[5][0]_1 ;
  output \next_switch_matrix_reg[5][0]_2 ;
  output [0:0]\next_switch_matrix_reg[6][2]_0 ;
  output [0:0]\next_switch_matrix_reg[4][2] ;
  input [1:0]\port_wants_to[6][4]_48 ;
  input \G0.mem_reg[37]_0 ;
  input \G0.mem_reg[55]_0 ;
  input \G0.mem_reg[34]_0 ;
  input [1:0]\port_wants_to[6][3]_49 ;
  input [1:0]\port_wants_to[6][2]_51 ;
  input [1:0]\port_wants_to[6][0]_50 ;
  input [1:0]\port_wants_to[6][1]_52 ;
  input \G0.mem_reg[35]_0 ;
  input \G0.mem_reg[35]_1 ;
  input reset;
  input [0:0]E;
  input [55:0]\Inport[3] ;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire \G0.mem_reg[34]_0 ;
  wire \G0.mem_reg[35]_0 ;
  wire \G0.mem_reg[35]_1 ;
  wire \G0.mem_reg[37]_0 ;
  wire \G0.mem_reg[55]_0 ;
  wire [55:0]\Inport[3] ;
  wire [55:0]Q;
  wire clk;
  wire \next_switch_matrix[0][0]_i_11__2_n_0 ;
  wire \next_switch_matrix[0][2]_i_3__1_n_0 ;
  wire \next_switch_matrix[0][2]_i_7__1_n_0 ;
  wire \next_switch_matrix[0][2]_i_8__1_n_0 ;
  wire \next_switch_matrix[0][2]_i_9_n_0 ;
  wire \next_switch_matrix[1][2]_i_3__0_n_0 ;
  wire \next_switch_matrix[2][2]_i_2__1_n_0 ;
  wire \next_switch_matrix[2][2]_i_3__2_n_0 ;
  wire \next_switch_matrix[3][2]_i_12_n_0 ;
  wire \next_switch_matrix[3][2]_i_13_n_0 ;
  wire \next_switch_matrix[3][2]_i_14_n_0 ;
  wire \next_switch_matrix[3][2]_i_15_n_0 ;
  wire \next_switch_matrix[3][2]_i_16_n_0 ;
  wire \next_switch_matrix[3][2]_i_17_n_0 ;
  wire \next_switch_matrix[3][2]_i_18_n_0 ;
  wire \next_switch_matrix[3][2]_i_21_n_0 ;
  wire \next_switch_matrix[3][2]_i_22_n_0 ;
  wire \next_switch_matrix[3][2]_i_23_n_0 ;
  wire \next_switch_matrix[3][2]_i_24_n_0 ;
  wire \next_switch_matrix[3][2]_i_2__2_n_0 ;
  wire \next_switch_matrix[3][2]_i_3__0_n_0 ;
  wire \next_switch_matrix[3][2]_i_4__0_n_0 ;
  wire \next_switch_matrix[3][2]_i_5__1_n_0 ;
  wire \next_switch_matrix[3][2]_i_6__0_n_0 ;
  wire \next_switch_matrix[3][2]_i_7__0_n_0 ;
  wire \next_switch_matrix[3][2]_i_8__0_n_0 ;
  wire \next_switch_matrix[3][2]_i_9__0_n_0 ;
  wire \next_switch_matrix[5][0]_i_30_n_0 ;
  wire \next_switch_matrix[5][2]_i_2__0_n_0 ;
  wire \next_switch_matrix[5][2]_i_3__1_n_0 ;
  wire \next_switch_matrix[5][2]_i_6__0_n_0 ;
  wire \next_switch_matrix[5][2]_i_7_n_0 ;
  wire \next_switch_matrix[5][2]_i_8_n_0 ;
  wire \next_switch_matrix_reg[0][0] ;
  wire \next_switch_matrix_reg[1][2] ;
  wire [0:0]\next_switch_matrix_reg[1][2]_0 ;
  wire \next_switch_matrix_reg[2][2] ;
  wire \next_switch_matrix_reg[3][0] ;
  wire \next_switch_matrix_reg[3][0]_0 ;
  wire \next_switch_matrix_reg[3][2] ;
  wire [0:0]\next_switch_matrix_reg[4][2] ;
  wire \next_switch_matrix_reg[5][0] ;
  wire \next_switch_matrix_reg[5][0]_0 ;
  wire \next_switch_matrix_reg[5][0]_1 ;
  wire \next_switch_matrix_reg[5][0]_2 ;
  wire \next_switch_matrix_reg[5][2] ;
  wire \next_switch_matrix_reg[6][2] ;
  wire [0:0]\next_switch_matrix_reg[6][2]_0 ;
  wire [2:0]\port_wants_to[3][0]_45 ;
  wire [2:1]\port_wants_to[3][1]_47 ;
  wire [2:1]\port_wants_to[3][2]_46 ;
  wire [2:1]\port_wants_to[3][3]_44 ;
  wire [2:1]\port_wants_to[3][4]_43 ;
  wire [1:0]\port_wants_to[6][0]_50 ;
  wire [1:0]\port_wants_to[6][1]_52 ;
  wire [1:0]\port_wants_to[6][2]_51 ;
  wire [1:0]\port_wants_to[6][3]_49 ;
  wire [1:0]\port_wants_to[6][4]_48 ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\Inport[3] [9]),
        .Q(Q[9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFFFFAEEE)) 
    \next_switch_matrix[0][0]_i_11__2 
       (.I0(\next_switch_matrix[3][2]_i_5__1_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_2__2_n_0 ),
        .I2(\port_wants_to[3][3]_44 [2]),
        .I3(\port_wants_to[3][3]_44 [1]),
        .I4(\next_switch_matrix[5][2]_i_2__0_n_0 ),
        .O(\next_switch_matrix[0][0]_i_11__2_n_0 ));
  LUT6 #(
    .INIT(64'hABABFBABFBFBFBFB)) 
    \next_switch_matrix[0][0]_i_7__1 
       (.I0(\port_wants_to[6][0]_50 [1]),
        .I1(\next_switch_matrix_reg[2][2] ),
        .I2(\port_wants_to[6][0]_50 [0]),
        .I3(\next_switch_matrix[3][2]_i_7__0_n_0 ),
        .I4(\next_switch_matrix[0][0]_i_11__2_n_0 ),
        .I5(\next_switch_matrix[3][2]_i_14_n_0 ),
        .O(\next_switch_matrix_reg[0][0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \next_switch_matrix[0][2]_i_2__1 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(\next_switch_matrix[0][2]_i_3__1_n_0 ),
        .I4(\port_wants_to[3][0]_45 [2]),
        .I5(\port_wants_to[3][0]_45 [0]),
        .O(D));
  LUT3 #(
    .INIT(8'hB8)) 
    \next_switch_matrix[0][2]_i_3__1 
       (.I0(\G0.mem_reg[55]_0 ),
        .I1(\next_switch_matrix[0][2]_i_7__1_n_0 ),
        .I2(\next_switch_matrix[0][2]_i_8__1_n_0 ),
        .O(\next_switch_matrix[0][2]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFDFDFDDD)) 
    \next_switch_matrix[0][2]_i_4__1 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(Q[34]),
        .I4(Q[35]),
        .O(\port_wants_to[3][0]_45 [2]));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \next_switch_matrix[0][2]_i_5__2 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(\next_switch_matrix[0][2]_i_9_n_0 ),
        .I3(Q[55]),
        .I4(Q[37]),
        .I5(Q[36]),
        .O(\port_wants_to[3][0]_45 [0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFDFDFDDD)) 
    \next_switch_matrix[0][2]_i_7__1 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(Q[35]),
        .I4(Q[34]),
        .O(\next_switch_matrix[0][2]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF02FD0000000000)) 
    \next_switch_matrix[0][2]_i_8__1 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(\G0.mem_reg[37]_0 ),
        .I4(\G0.mem_reg[34]_0 ),
        .I5(\port_wants_to[3][0]_45 [0]),
        .O(\next_switch_matrix[0][2]_i_8__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][2]_i_9 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\next_switch_matrix[0][2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h4C404F43)) 
    \next_switch_matrix[1][0]_i_10__0 
       (.I0(\next_switch_matrix_reg[6][2] ),
        .I1(\port_wants_to[6][4]_48 [0]),
        .I2(\port_wants_to[6][4]_48 [1]),
        .I3(\next_switch_matrix_reg[3][2] ),
        .I4(\next_switch_matrix_reg[1][2] ),
        .O(\next_switch_matrix_reg[3][0] ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[1][2]_i_1__0 
       (.I0(\next_switch_matrix_reg[1][2] ),
        .O(\next_switch_matrix_reg[1][2]_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \next_switch_matrix[1][2]_i_2__1 
       (.I0(\next_switch_matrix[1][2]_i_3__0_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_6__0_n_0 ),
        .I2(\port_wants_to[3][4]_43 [2]),
        .I3(\port_wants_to[3][4]_43 [1]),
        .I4(\next_switch_matrix[3][2]_i_7__0_n_0 ),
        .O(\next_switch_matrix_reg[1][2] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \next_switch_matrix[1][2]_i_3__0 
       (.I0(\next_switch_matrix[5][2]_i_2__0_n_0 ),
        .I1(\port_wants_to[3][3]_44 [2]),
        .I2(\port_wants_to[3][3]_44 [1]),
        .I3(\next_switch_matrix[3][2]_i_8__0_n_0 ),
        .O(\next_switch_matrix[1][2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h555555F75FF75FFF)) 
    \next_switch_matrix[1][2]_i_4__0 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(Q[35]),
        .I4(Q[34]),
        .I5(\next_switch_matrix[0][2]_i_9_n_0 ),
        .O(\port_wants_to[3][4]_43 [2]));
  LUT6 #(
    .INIT(64'hDFFFDFDFDFFFDFFF)) 
    \next_switch_matrix[1][2]_i_5__0 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(\next_switch_matrix[0][2]_i_9_n_0 ),
        .I4(Q[35]),
        .I5(Q[34]),
        .O(\port_wants_to[3][4]_43 [1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[2][2]_i_1__1 
       (.I0(\next_switch_matrix[2][2]_i_2__1_n_0 ),
        .I1(\port_wants_to[3][0]_45 [0]),
        .O(\next_switch_matrix_reg[2][2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \next_switch_matrix[2][2]_i_2__1 
       (.I0(\next_switch_matrix[2][2]_i_3__2_n_0 ),
        .I1(Q[55]),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(\next_switch_matrix[2][2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEEAAAAAAAA)) 
    \next_switch_matrix[2][2]_i_3__2 
       (.I0(\next_switch_matrix[0][2]_i_3__1_n_0 ),
        .I1(\port_wants_to[3][0]_45 [0]),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(Q[55]),
        .I5(\port_wants_to[3][0]_45 [2]),
        .O(\next_switch_matrix[2][2]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF550FCC00550FCC)) 
    \next_switch_matrix[3][0]_i_8__1 
       (.I0(\next_switch_matrix_reg[5][2] ),
        .I1(\next_switch_matrix_reg[1][2] ),
        .I2(\next_switch_matrix_reg[3][2] ),
        .I3(\port_wants_to[6][3]_49 [0]),
        .I4(\port_wants_to[6][3]_49 [1]),
        .I5(\next_switch_matrix_reg[6][2] ),
        .O(\next_switch_matrix_reg[3][0]_0 ));
  LUT6 #(
    .INIT(64'hFFFF3CFFF5FFFFFF)) 
    \next_switch_matrix[3][2]_i_10 
       (.I0(Q[36]),
        .I1(Q[34]),
        .I2(\next_switch_matrix[0][2]_i_9_n_0 ),
        .I3(Q[55]),
        .I4(Q[35]),
        .I5(Q[37]),
        .O(\port_wants_to[3][2]_46 [2]));
  LUT6 #(
    .INIT(64'hBFFFBFFFBFFFFFBF)) 
    \next_switch_matrix[3][2]_i_11__0 
       (.I0(Q[35]),
        .I1(Q[37]),
        .I2(Q[55]),
        .I3(Q[34]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[3][2]_46 [1]));
  LUT3 #(
    .INIT(8'h57)) 
    \next_switch_matrix[3][2]_i_12 
       (.I0(\next_switch_matrix[2][2]_i_3__2_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_16_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_17_n_0 ),
        .O(\next_switch_matrix[3][2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FB00FF)) 
    \next_switch_matrix[3][2]_i_13 
       (.I0(\next_switch_matrix[3][2]_i_16_n_0 ),
        .I1(\next_switch_matrix[2][2]_i_3__2_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_17_n_0 ),
        .I3(\next_switch_matrix[3][2]_i_18_n_0 ),
        .I4(\port_wants_to[3][1]_47 [1]),
        .I5(\port_wants_to[3][1]_47 [2]),
        .O(\next_switch_matrix[3][2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \next_switch_matrix[3][2]_i_14 
       (.I0(\next_switch_matrix[3][2]_i_4__0_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_3__0_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_21_n_0 ),
        .I3(\next_switch_matrix[3][2]_i_22_n_0 ),
        .O(\next_switch_matrix[3][2]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \next_switch_matrix[3][2]_i_15 
       (.I0(\next_switch_matrix[3][2]_i_23_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_16_n_0 ),
        .I2(\next_switch_matrix[2][2]_i_3__2_n_0 ),
        .I3(\port_wants_to[3][1]_47 [2]),
        .I4(\port_wants_to[3][1]_47 [1]),
        .O(\next_switch_matrix[3][2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF7C7F4C437073404)) 
    \next_switch_matrix[3][2]_i_16 
       (.I0(\next_switch_matrix[5][2]_i_7_n_0 ),
        .I1(\port_wants_to[3][1]_47 [2]),
        .I2(\port_wants_to[3][1]_47 [1]),
        .I3(\next_switch_matrix[3][2]_i_18_n_0 ),
        .I4(\next_switch_matrix[3][2]_i_23_n_0 ),
        .I5(\next_switch_matrix_reg[6][2] ),
        .O(\next_switch_matrix[3][2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD5FFFFFFD0FF)) 
    \next_switch_matrix[3][2]_i_17 
       (.I0(Q[37]),
        .I1(\next_switch_matrix[0][2]_i_9_n_0 ),
        .I2(Q[34]),
        .I3(Q[55]),
        .I4(Q[35]),
        .I5(Q[36]),
        .O(\next_switch_matrix[3][2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \next_switch_matrix[3][2]_i_18 
       (.I0(\next_switch_matrix[2][2]_i_2__1_n_0 ),
        .I1(\port_wants_to[3][0]_45 [0]),
        .I2(\G0.mem_reg[37]_0 ),
        .O(\next_switch_matrix[3][2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \next_switch_matrix[3][2]_i_19 
       (.I0(Q[55]),
        .I1(Q[35]),
        .I2(Q[34]),
        .I3(Q[37]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[3][1]_47 [1]));
  LUT6 #(
    .INIT(64'hD0D0D000D0D0D0D0)) 
    \next_switch_matrix[3][2]_i_1__0 
       (.I0(\next_switch_matrix[3][2]_i_2__2_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_3__0_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_4__0_n_0 ),
        .I3(\next_switch_matrix[3][2]_i_5__1_n_0 ),
        .I4(\next_switch_matrix[3][2]_i_6__0_n_0 ),
        .I5(\next_switch_matrix[3][2]_i_7__0_n_0 ),
        .O(\next_switch_matrix_reg[3][2] ));
  LUT6 #(
    .INIT(64'hFFCFCFCFFFEFFFEF)) 
    \next_switch_matrix[3][2]_i_20 
       (.I0(Q[36]),
        .I1(Q[35]),
        .I2(Q[55]),
        .I3(Q[34]),
        .I4(\next_switch_matrix[0][2]_i_9_n_0 ),
        .I5(Q[37]),
        .O(\port_wants_to[3][1]_47 [2]));
  LUT6 #(
    .INIT(64'h00FF00008A8A0000)) 
    \next_switch_matrix[3][2]_i_21 
       (.I0(\next_switch_matrix[3][2]_i_13_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_24_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_9__0_n_0 ),
        .I3(\next_switch_matrix_reg[6][2] ),
        .I4(\port_wants_to[3][3]_44 [1]),
        .I5(\port_wants_to[3][3]_44 [2]),
        .O(\next_switch_matrix[3][2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAE)) 
    \next_switch_matrix[3][2]_i_22 
       (.I0(\port_wants_to[3][3]_44 [1]),
        .I1(\next_switch_matrix[3][2]_i_9__0_n_0 ),
        .I2(\port_wants_to[3][2]_46 [1]),
        .I3(\port_wants_to[3][2]_46 [2]),
        .I4(\next_switch_matrix[3][2]_i_12_n_0 ),
        .I5(\next_switch_matrix[3][2]_i_15_n_0 ),
        .O(\next_switch_matrix[3][2]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \next_switch_matrix[3][2]_i_23 
       (.I0(\G0.mem_reg[34]_0 ),
        .I1(\next_switch_matrix[5][2]_i_8_n_0 ),
        .I2(\port_wants_to[3][0]_45 [2]),
        .O(\next_switch_matrix[3][2]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \next_switch_matrix[3][2]_i_24 
       (.I0(\port_wants_to[3][2]_46 [1]),
        .I1(\port_wants_to[3][2]_46 [2]),
        .I2(\next_switch_matrix[3][2]_i_12_n_0 ),
        .O(\next_switch_matrix[3][2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h38F808C83BFB0BCB)) 
    \next_switch_matrix[3][2]_i_2__2 
       (.I0(\next_switch_matrix[5][2]_i_3__1_n_0 ),
        .I1(\port_wants_to[3][3]_44 [2]),
        .I2(\port_wants_to[3][3]_44 [1]),
        .I3(\next_switch_matrix_reg[6][2] ),
        .I4(\next_switch_matrix[3][2]_i_4__0_n_0 ),
        .I5(\next_switch_matrix[3][2]_i_8__0_n_0 ),
        .O(\next_switch_matrix[3][2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDFDFDFD)) 
    \next_switch_matrix[3][2]_i_3__0 
       (.I0(\port_wants_to[3][3]_44 [1]),
        .I1(\port_wants_to[3][3]_44 [2]),
        .I2(\next_switch_matrix[3][2]_i_9__0_n_0 ),
        .I3(\port_wants_to[3][2]_46 [2]),
        .I4(\port_wants_to[3][2]_46 [1]),
        .I5(\next_switch_matrix[3][2]_i_12_n_0 ),
        .O(\next_switch_matrix[3][2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hAAA2AAAA)) 
    \next_switch_matrix[3][2]_i_4__0 
       (.I0(\next_switch_matrix[3][2]_i_13_n_0 ),
        .I1(\port_wants_to[3][2]_46 [1]),
        .I2(\port_wants_to[3][2]_46 [2]),
        .I3(\next_switch_matrix[3][2]_i_12_n_0 ),
        .I4(\next_switch_matrix[3][2]_i_9__0_n_0 ),
        .O(\next_switch_matrix[3][2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h1313FF1FFFFFFFFF)) 
    \next_switch_matrix[3][2]_i_5__1 
       (.I0(Q[34]),
        .I1(Q[35]),
        .I2(\next_switch_matrix[0][2]_i_9_n_0 ),
        .I3(Q[36]),
        .I4(Q[37]),
        .I5(Q[55]),
        .O(\next_switch_matrix[3][2]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    \next_switch_matrix[3][2]_i_6__0 
       (.I0(\next_switch_matrix[5][2]_i_2__0_n_0 ),
        .I1(\port_wants_to[3][3]_44 [1]),
        .I2(\port_wants_to[3][3]_44 [2]),
        .I3(\next_switch_matrix[3][2]_i_2__2_n_0 ),
        .O(\next_switch_matrix[3][2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h3808F8C83B0BFBCB)) 
    \next_switch_matrix[3][2]_i_7__0 
       (.I0(\next_switch_matrix_reg[5][2] ),
        .I1(\port_wants_to[3][4]_43 [2]),
        .I2(\port_wants_to[3][4]_43 [1]),
        .I3(\next_switch_matrix[3][2]_i_14_n_0 ),
        .I4(\next_switch_matrix_reg[6][2] ),
        .I5(\next_switch_matrix[1][2]_i_3__0_n_0 ),
        .O(\next_switch_matrix[3][2]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \next_switch_matrix[3][2]_i_8__0 
       (.I0(\next_switch_matrix[3][2]_i_15_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_12_n_0 ),
        .I2(\port_wants_to[3][2]_46 [2]),
        .I3(\port_wants_to[3][2]_46 [1]),
        .I4(\next_switch_matrix[3][2]_i_9__0_n_0 ),
        .O(\next_switch_matrix[3][2]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h383BF8FB080BC8CB)) 
    \next_switch_matrix[3][2]_i_9__0 
       (.I0(\next_switch_matrix[5][2]_i_6__0_n_0 ),
        .I1(\port_wants_to[3][2]_46 [2]),
        .I2(\port_wants_to[3][2]_46 [1]),
        .I3(\next_switch_matrix[3][2]_i_15_n_0 ),
        .I4(\next_switch_matrix_reg[6][2] ),
        .I5(\next_switch_matrix[3][2]_i_13_n_0 ),
        .O(\next_switch_matrix[3][2]_i_9__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \next_switch_matrix[4][2]_i_1 
       (.I0(\port_wants_to[3][0]_45 [0]),
        .I1(\port_wants_to[3][0]_45 [2]),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(Q[55]),
        .O(\next_switch_matrix_reg[4][2] ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h000FFEFE)) 
    \next_switch_matrix[5][0]_i_22 
       (.I0(\G0.mem_reg[34]_0 ),
        .I1(\next_switch_matrix_reg[1][2] ),
        .I2(\port_wants_to[6][1]_52 [1]),
        .I3(\next_switch_matrix_reg[3][2] ),
        .I4(\port_wants_to[6][1]_52 [0]),
        .O(\next_switch_matrix_reg[5][0]_0 ));
  LUT6 #(
    .INIT(64'h888A8888AAAAAAAA)) 
    \next_switch_matrix[5][0]_i_26 
       (.I0(\G0.mem_reg[35]_0 ),
        .I1(\next_switch_matrix[1][2]_i_3__0_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_6__0_n_0 ),
        .I3(\next_switch_matrix[5][0]_i_30_n_0 ),
        .I4(\next_switch_matrix[3][2]_i_7__0_n_0 ),
        .I5(\G0.mem_reg[35]_1 ),
        .O(\next_switch_matrix_reg[5][0]_1 ));
  LUT6 #(
    .INIT(64'hA8AAFFFFA8AA0000)) 
    \next_switch_matrix[5][0]_i_28 
       (.I0(\next_switch_matrix[3][2]_i_14_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_5__1_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_6__0_n_0 ),
        .I3(\next_switch_matrix[3][2]_i_7__0_n_0 ),
        .I4(\port_wants_to[6][0]_50 [0]),
        .I5(\next_switch_matrix_reg[2][2] ),
        .O(\next_switch_matrix_reg[5][0]_2 ));
  LUT6 #(
    .INIT(64'hFF51FFFFFFFFFFFF)) 
    \next_switch_matrix[5][0]_i_30 
       (.I0(\next_switch_matrix[0][2]_i_9_n_0 ),
        .I1(Q[34]),
        .I2(Q[35]),
        .I3(Q[37]),
        .I4(Q[36]),
        .I5(Q[55]),
        .O(\next_switch_matrix[5][0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hF53F053FF5300530)) 
    \next_switch_matrix[5][0]_i_8 
       (.I0(\next_switch_matrix_reg[5][2] ),
        .I1(\next_switch_matrix_reg[3][2] ),
        .I2(\port_wants_to[6][2]_51 [0]),
        .I3(\port_wants_to[6][2]_51 [1]),
        .I4(\next_switch_matrix_reg[6][2] ),
        .I5(\next_switch_matrix_reg[1][2] ),
        .O(\next_switch_matrix_reg[5][0] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hC8CC)) 
    \next_switch_matrix[5][2]_i_1__0 
       (.I0(\next_switch_matrix[5][2]_i_2__0_n_0 ),
        .I1(\next_switch_matrix[5][2]_i_3__1_n_0 ),
        .I2(\port_wants_to[3][3]_44 [1]),
        .I3(\port_wants_to[3][3]_44 [2]),
        .O(\next_switch_matrix_reg[5][2] ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    \next_switch_matrix[5][2]_i_2__0 
       (.I0(\next_switch_matrix[3][2]_i_12_n_0 ),
        .I1(\port_wants_to[3][2]_46 [1]),
        .I2(\port_wants_to[3][2]_46 [2]),
        .I3(\next_switch_matrix[3][2]_i_9__0_n_0 ),
        .O(\next_switch_matrix[5][2]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hC8CC)) 
    \next_switch_matrix[5][2]_i_3__1 
       (.I0(\next_switch_matrix[3][2]_i_12_n_0 ),
        .I1(\next_switch_matrix[5][2]_i_6__0_n_0 ),
        .I2(\port_wants_to[3][2]_46 [1]),
        .I3(\port_wants_to[3][2]_46 [2]),
        .O(\next_switch_matrix[5][2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h4F5F4F5FFFFF6F7F)) 
    \next_switch_matrix[5][2]_i_4__1 
       (.I0(Q[37]),
        .I1(\next_switch_matrix[0][2]_i_9_n_0 ),
        .I2(Q[55]),
        .I3(Q[36]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(\port_wants_to[3][3]_44 [1]));
  LUT6 #(
    .INIT(64'h212F1011FFFFFFFF)) 
    \next_switch_matrix[5][2]_i_5__1 
       (.I0(Q[34]),
        .I1(Q[35]),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(\next_switch_matrix[0][2]_i_9_n_0 ),
        .I5(Q[55]),
        .O(\port_wants_to[3][3]_44 [2]));
  LUT6 #(
    .INIT(64'hFF00FF00FB00FF00)) 
    \next_switch_matrix[5][2]_i_6__0 
       (.I0(\next_switch_matrix[3][2]_i_16_n_0 ),
        .I1(\next_switch_matrix[2][2]_i_3__2_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_17_n_0 ),
        .I3(\next_switch_matrix[5][2]_i_7_n_0 ),
        .I4(\port_wants_to[3][1]_47 [2]),
        .I5(\port_wants_to[3][1]_47 [1]),
        .O(\next_switch_matrix[5][2]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \next_switch_matrix[5][2]_i_7 
       (.I0(\next_switch_matrix[5][2]_i_8_n_0 ),
        .I1(\port_wants_to[3][0]_45 [2]),
        .O(\next_switch_matrix[5][2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \next_switch_matrix[5][2]_i_8 
       (.I0(\next_switch_matrix[0][2]_i_3__1_n_0 ),
        .I1(Q[55]),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(\port_wants_to[3][0]_45 [0]),
        .O(\next_switch_matrix[5][2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[6][2]_i_1__1 
       (.I0(\next_switch_matrix_reg[6][2] ),
        .O(\next_switch_matrix_reg[6][2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF54550000)) 
    \next_switch_matrix[6][2]_i_2__0 
       (.I0(\next_switch_matrix[2][2]_i_3__2_n_0 ),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(Q[55]),
        .I4(\port_wants_to[3][0]_45 [2]),
        .I5(\G0.mem_reg[55]_0 ),
        .O(\next_switch_matrix_reg[6][2] ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized2
   (Q,
    \next_switch_matrix_reg[4][2] ,
    \next_switch_matrix_reg[1][0] ,
    \next_switch_matrix_reg[0][2] ,
    \next_switch_matrix_reg[4][2]_0 ,
    \next_switch_matrix_reg[4][2]_1 ,
    \next_switch_matrix_reg[4][0] ,
    \next_switch_matrix_reg[2][2] ,
    \next_switch_matrix_reg[3][2] ,
    \next_switch_matrix_reg[5][0] ,
    \next_switch_matrix_reg[3][0] ,
    \next_switch_matrix_reg[4][0]_0 ,
    \next_switch_matrix_reg[0][0] ,
    \next_switch_matrix_reg[3][0]_0 ,
    \next_switch_matrix_reg[2][0] ,
    \next_switch_matrix_reg[0][0]_0 ,
    \next_switch_matrix_reg[4][0]_1 ,
    \next_switch_matrix_reg[0][0]_1 ,
    \next_switch_matrix_reg[0][0]_2 ,
    \next_switch_matrix_reg[0][0]_3 ,
    \next_switch_matrix_reg[5][2] ,
    \next_switch_matrix_reg[5][0]_0 ,
    D,
    \next_switch_matrix_reg[1][2] ,
    \next_switch_matrix_reg[0][0]_4 ,
    \next_switch_matrix_reg[6][0] ,
    \next_switch_matrix_reg[6][2] ,
    \next_switch_matrix_reg[6][2]_0 ,
    \next_switch_matrix_reg[3][2]_0 ,
    \next_switch_matrix_reg[0][0]_5 ,
    \port_wants_to[6][1]_32 ,
    \G0.mem_reg[55]_0 ,
    \G0.mem_reg[55]_1 ,
    \G0.mem_reg[36]_0 ,
    \port_wants_to[6][3]_33 ,
    \port_wants_to[6][2]_34 ,
    \G0.mem_reg[37]_0 ,
    \G0.mem_reg[55]_2 ,
    \G0.mem_reg[37]_1 ,
    \G0.mem_reg[55]_3 ,
    \G0.mem_reg[32]_0 ,
    \G0.mem_reg[55]_4 ,
    \port_wants_to[6][0]_36 ,
    \G0.mem_reg[37]_2 ,
    \G0.mem_reg[55]_5 ,
    \G0.mem_reg[55]_6 ,
    \G0.mem_reg[55]_7 ,
    reset,
    E,
    \mem_reg[55] ,
    clk);
  output [55:0]Q;
  output \next_switch_matrix_reg[4][2] ;
  output \next_switch_matrix_reg[1][0] ;
  output \next_switch_matrix_reg[0][2] ;
  output [0:0]\next_switch_matrix_reg[4][2]_0 ;
  output \next_switch_matrix_reg[4][2]_1 ;
  output \next_switch_matrix_reg[4][0] ;
  output \next_switch_matrix_reg[2][2] ;
  output \next_switch_matrix_reg[3][2] ;
  output \next_switch_matrix_reg[5][0] ;
  output \next_switch_matrix_reg[3][0] ;
  output \next_switch_matrix_reg[4][0]_0 ;
  output \next_switch_matrix_reg[0][0] ;
  output \next_switch_matrix_reg[3][0]_0 ;
  output \next_switch_matrix_reg[2][0] ;
  output \next_switch_matrix_reg[0][0]_0 ;
  output \next_switch_matrix_reg[4][0]_1 ;
  output \next_switch_matrix_reg[0][0]_1 ;
  output \next_switch_matrix_reg[0][0]_2 ;
  output \next_switch_matrix_reg[0][0]_3 ;
  output \next_switch_matrix_reg[5][2] ;
  output \next_switch_matrix_reg[5][0]_0 ;
  output [0:0]D;
  output [0:0]\next_switch_matrix_reg[1][2] ;
  output \next_switch_matrix_reg[0][0]_4 ;
  output \next_switch_matrix_reg[6][0] ;
  output [0:0]\next_switch_matrix_reg[6][2] ;
  output \next_switch_matrix_reg[6][2]_0 ;
  output [0:0]\next_switch_matrix_reg[3][2]_0 ;
  output \next_switch_matrix_reg[0][0]_5 ;
  input [0:0]\port_wants_to[6][1]_32 ;
  input \G0.mem_reg[55]_0 ;
  input \G0.mem_reg[55]_1 ;
  input \G0.mem_reg[36]_0 ;
  input [2:0]\port_wants_to[6][3]_33 ;
  input [0:0]\port_wants_to[6][2]_34 ;
  input \G0.mem_reg[37]_0 ;
  input \G0.mem_reg[55]_2 ;
  input \G0.mem_reg[37]_1 ;
  input \G0.mem_reg[55]_3 ;
  input \G0.mem_reg[32]_0 ;
  input \G0.mem_reg[55]_4 ;
  input [0:0]\port_wants_to[6][0]_36 ;
  input \G0.mem_reg[37]_2 ;
  input \G0.mem_reg[55]_5 ;
  input \G0.mem_reg[55]_6 ;
  input \G0.mem_reg[55]_7 ;
  input reset;
  input [0:0]E;
  input [55:0]\mem_reg[55] ;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire \G0.mem_reg[32]_0 ;
  wire \G0.mem_reg[36]_0 ;
  wire \G0.mem_reg[37]_0 ;
  wire \G0.mem_reg[37]_1 ;
  wire \G0.mem_reg[37]_2 ;
  wire \G0.mem_reg[55]_0 ;
  wire \G0.mem_reg[55]_1 ;
  wire \G0.mem_reg[55]_2 ;
  wire \G0.mem_reg[55]_3 ;
  wire \G0.mem_reg[55]_4 ;
  wire \G0.mem_reg[55]_5 ;
  wire \G0.mem_reg[55]_6 ;
  wire \G0.mem_reg[55]_7 ;
  wire [55:0]Q;
  wire clk;
  wire [55:0]\mem_reg[55] ;
  wire \next_switch_matrix[0][0]_i_25_n_0 ;
  wire \next_switch_matrix[0][0]_i_26_n_0 ;
  wire \next_switch_matrix[0][0]_i_27_n_0 ;
  wire \next_switch_matrix[0][0]_i_32_n_0 ;
  wire \next_switch_matrix[0][0]_i_33_n_0 ;
  wire \next_switch_matrix[0][0]_i_34_n_0 ;
  wire \next_switch_matrix[0][0]_i_35_n_0 ;
  wire \next_switch_matrix[0][0]_i_36_n_0 ;
  wire \next_switch_matrix[0][0]_i_37_n_0 ;
  wire \next_switch_matrix[0][0]_i_38_n_0 ;
  wire \next_switch_matrix[0][0]_i_39_n_0 ;
  wire \next_switch_matrix[0][0]_i_40_n_0 ;
  wire \next_switch_matrix[0][0]_i_41_n_0 ;
  wire \next_switch_matrix[0][0]_i_5__1_n_0 ;
  wire \next_switch_matrix[0][0]_i_6__1_n_0 ;
  wire \next_switch_matrix[0][2]_i_12__0_n_0 ;
  wire \next_switch_matrix[0][2]_i_13__0_n_0 ;
  wire \next_switch_matrix[0][2]_i_15__0_n_0 ;
  wire \next_switch_matrix[0][2]_i_16_n_0 ;
  wire \next_switch_matrix[0][2]_i_17_n_0 ;
  wire \next_switch_matrix[0][2]_i_18_n_0 ;
  wire \next_switch_matrix[0][2]_i_19_n_0 ;
  wire \next_switch_matrix[0][2]_i_20_n_0 ;
  wire \next_switch_matrix[0][2]_i_21_n_0 ;
  wire \next_switch_matrix[0][2]_i_22_n_0 ;
  wire \next_switch_matrix[0][2]_i_23_n_0 ;
  wire \next_switch_matrix[0][2]_i_24_n_0 ;
  wire \next_switch_matrix[0][2]_i_25_n_0 ;
  wire \next_switch_matrix[0][2]_i_26_n_0 ;
  wire \next_switch_matrix[0][2]_i_27_n_0 ;
  wire \next_switch_matrix[0][2]_i_28_n_0 ;
  wire \next_switch_matrix[0][2]_i_5__1_n_0 ;
  wire \next_switch_matrix[0][2]_i_6__1_n_0 ;
  wire \next_switch_matrix[0][2]_i_7__0_n_0 ;
  wire \next_switch_matrix[0][2]_i_8_n_0 ;
  wire \next_switch_matrix[1][0]_i_13__0_n_0 ;
  wire \next_switch_matrix[1][2]_i_10_n_0 ;
  wire \next_switch_matrix[1][2]_i_11_n_0 ;
  wire \next_switch_matrix[1][2]_i_2__0_n_0 ;
  wire \next_switch_matrix[1][2]_i_3_n_0 ;
  wire \next_switch_matrix[1][2]_i_4_n_0 ;
  wire \next_switch_matrix[1][2]_i_5_n_0 ;
  wire \next_switch_matrix[1][2]_i_6__0_n_0 ;
  wire \next_switch_matrix[1][2]_i_8_n_0 ;
  wire \next_switch_matrix[1][2]_i_9_n_0 ;
  wire \next_switch_matrix[2][0]_i_16_n_0 ;
  wire \next_switch_matrix[2][0]_i_20_n_0 ;
  wire \next_switch_matrix[2][0]_i_25_n_0 ;
  wire \next_switch_matrix[2][0]_i_26_n_0 ;
  wire \next_switch_matrix[2][0]_i_35_n_0 ;
  wire \next_switch_matrix[2][2]_i_10__0_n_0 ;
  wire \next_switch_matrix[2][2]_i_11_n_0 ;
  wire \next_switch_matrix[2][2]_i_12_n_0 ;
  wire \next_switch_matrix[2][2]_i_13_n_0 ;
  wire \next_switch_matrix[2][2]_i_14_n_0 ;
  wire \next_switch_matrix[2][2]_i_15_n_0 ;
  wire \next_switch_matrix[2][2]_i_16_n_0 ;
  wire \next_switch_matrix[2][2]_i_17_n_0 ;
  wire \next_switch_matrix[2][2]_i_18_n_0 ;
  wire \next_switch_matrix[2][2]_i_19_n_0 ;
  wire \next_switch_matrix[2][2]_i_20_n_0 ;
  wire \next_switch_matrix[2][2]_i_2__0_n_0 ;
  wire \next_switch_matrix[2][2]_i_3__1_n_0 ;
  wire \next_switch_matrix[2][2]_i_4__1_n_0 ;
  wire \next_switch_matrix[2][2]_i_5_n_0 ;
  wire \next_switch_matrix[2][2]_i_6_n_0 ;
  wire \next_switch_matrix[2][2]_i_7_n_0 ;
  wire \next_switch_matrix[2][2]_i_8__0_n_0 ;
  wire \next_switch_matrix[2][2]_i_9__0_n_0 ;
  wire \next_switch_matrix[3][2]_i_10__0_n_0 ;
  wire \next_switch_matrix[3][2]_i_11_n_0 ;
  wire \next_switch_matrix[3][2]_i_3_n_0 ;
  wire \next_switch_matrix[3][2]_i_4_n_0 ;
  wire \next_switch_matrix[3][2]_i_5__0_n_0 ;
  wire \next_switch_matrix[3][2]_i_6_n_0 ;
  wire \next_switch_matrix[3][2]_i_7_n_0 ;
  wire \next_switch_matrix[3][2]_i_8_n_0 ;
  wire \next_switch_matrix[3][2]_i_9_n_0 ;
  wire \next_switch_matrix[4][2]_i_11_n_0 ;
  wire \next_switch_matrix[4][2]_i_13_n_0 ;
  wire \next_switch_matrix[4][2]_i_14_n_0 ;
  wire \next_switch_matrix[4][2]_i_15_n_0 ;
  wire \next_switch_matrix[4][2]_i_16_n_0 ;
  wire \next_switch_matrix[4][2]_i_17_n_0 ;
  wire \next_switch_matrix[4][2]_i_18_n_0 ;
  wire \next_switch_matrix[4][2]_i_20_n_0 ;
  wire \next_switch_matrix[4][2]_i_21_n_0 ;
  wire \next_switch_matrix[4][2]_i_22_n_0 ;
  wire \next_switch_matrix[4][2]_i_23_n_0 ;
  wire \next_switch_matrix[4][2]_i_24_n_0 ;
  wire \next_switch_matrix[4][2]_i_25_n_0 ;
  wire \next_switch_matrix[4][2]_i_26_n_0 ;
  wire \next_switch_matrix[4][2]_i_27_n_0 ;
  wire \next_switch_matrix[4][2]_i_2_n_0 ;
  wire \next_switch_matrix[4][2]_i_3_n_0 ;
  wire \next_switch_matrix[4][2]_i_5__0_n_0 ;
  wire \next_switch_matrix[4][2]_i_6_n_0 ;
  wire \next_switch_matrix[4][2]_i_7_n_0 ;
  wire \next_switch_matrix[5][2]_i_3__0_n_0 ;
  wire \next_switch_matrix[5][2]_i_4__0_n_0 ;
  wire \next_switch_matrix[5][2]_i_5__0_n_0 ;
  wire \next_switch_matrix[6][0]_i_9_n_0 ;
  wire \next_switch_matrix_reg[0][0] ;
  wire \next_switch_matrix_reg[0][0]_0 ;
  wire \next_switch_matrix_reg[0][0]_1 ;
  wire \next_switch_matrix_reg[0][0]_2 ;
  wire \next_switch_matrix_reg[0][0]_3 ;
  wire \next_switch_matrix_reg[0][0]_4 ;
  wire \next_switch_matrix_reg[0][0]_5 ;
  wire \next_switch_matrix_reg[0][2] ;
  wire \next_switch_matrix_reg[1][0] ;
  wire [0:0]\next_switch_matrix_reg[1][2] ;
  wire \next_switch_matrix_reg[2][0] ;
  wire \next_switch_matrix_reg[2][2] ;
  wire \next_switch_matrix_reg[3][0] ;
  wire \next_switch_matrix_reg[3][0]_0 ;
  wire \next_switch_matrix_reg[3][2] ;
  wire [0:0]\next_switch_matrix_reg[3][2]_0 ;
  wire \next_switch_matrix_reg[4][0] ;
  wire \next_switch_matrix_reg[4][0]_0 ;
  wire \next_switch_matrix_reg[4][0]_1 ;
  wire \next_switch_matrix_reg[4][2] ;
  wire [0:0]\next_switch_matrix_reg[4][2]_0 ;
  wire \next_switch_matrix_reg[4][2]_1 ;
  wire \next_switch_matrix_reg[4][2]_i_8_n_0 ;
  wire \next_switch_matrix_reg[5][0] ;
  wire \next_switch_matrix_reg[5][0]_0 ;
  wire \next_switch_matrix_reg[5][2] ;
  wire \next_switch_matrix_reg[6][0] ;
  wire [0:0]\next_switch_matrix_reg[6][2] ;
  wire \next_switch_matrix_reg[6][2]_0 ;
  wire [1:1]\port_wants_to[2][0]_31 ;
  wire [2:0]\port_wants_to[2][1]_27 ;
  wire [2:2]\port_wants_to[2][2]_29 ;
  wire [2:0]\port_wants_to[2][3]_28 ;
  wire [1:1]\port_wants_to[2][4]_30 ;
  wire [0:0]\port_wants_to[6][0]_36 ;
  wire [0:0]\port_wants_to[6][1]_32 ;
  wire [0:0]\port_wants_to[6][2]_34 ;
  wire [2:0]\port_wants_to[6][3]_33 ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [9]),
        .Q(Q[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hAAAAFFFFCFAAFFFF)) 
    \next_switch_matrix[0][0]_i_14 
       (.I0(\next_switch_matrix_reg[4][0] ),
        .I1(\next_switch_matrix[0][0]_i_25_n_0 ),
        .I2(\next_switch_matrix[0][0]_i_26_n_0 ),
        .I3(\G0.mem_reg[32]_0 ),
        .I4(\G0.mem_reg[55]_4 ),
        .I5(\port_wants_to[6][0]_36 ),
        .O(\next_switch_matrix_reg[0][0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDDDDD1)) 
    \next_switch_matrix[0][0]_i_16 
       (.I0(\next_switch_matrix_reg[0][2] ),
        .I1(\G0.mem_reg[32]_0 ),
        .I2(\next_switch_matrix[0][0]_i_27_n_0 ),
        .I3(\next_switch_matrix[1][2]_i_4_n_0 ),
        .I4(\next_switch_matrix[1][2]_i_3_n_0 ),
        .I5(\G0.mem_reg[55]_5 ),
        .O(\next_switch_matrix_reg[0][0]_3 ));
  LUT6 #(
    .INIT(64'h01FF000001FFFFFF)) 
    \next_switch_matrix[0][0]_i_23 
       (.I0(\next_switch_matrix[0][0]_i_32_n_0 ),
        .I1(\port_wants_to[2][4]_30 ),
        .I2(\next_switch_matrix[1][2]_i_5_n_0 ),
        .I3(\next_switch_matrix[0][0]_i_33_n_0 ),
        .I4(\G0.mem_reg[37]_2 ),
        .I5(\next_switch_matrix_reg[4][2]_1 ),
        .O(\next_switch_matrix_reg[0][0]_2 ));
  LUT4 #(
    .INIT(16'h000D)) 
    \next_switch_matrix[0][0]_i_25 
       (.I0(\next_switch_matrix[0][0]_i_34_n_0 ),
        .I1(\next_switch_matrix[0][0]_i_35_n_0 ),
        .I2(\port_wants_to[2][4]_30 ),
        .I3(\next_switch_matrix[0][0]_i_32_n_0 ),
        .O(\next_switch_matrix[0][0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \next_switch_matrix[0][0]_i_26 
       (.I0(\next_switch_matrix[0][0]_i_36_n_0 ),
        .I1(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I2(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I3(\port_wants_to[2][3]_28 [2]),
        .I4(\port_wants_to[2][3]_28 [0]),
        .I5(\port_wants_to[2][3]_28 [1]),
        .O(\next_switch_matrix[0][0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2202)) 
    \next_switch_matrix[0][0]_i_27 
       (.I0(\next_switch_matrix[1][2]_i_10_n_0 ),
        .I1(\next_switch_matrix[1][2]_i_6__0_n_0 ),
        .I2(\next_switch_matrix[0][0]_i_34_n_0 ),
        .I3(\next_switch_matrix[0][0]_i_35_n_0 ),
        .O(\next_switch_matrix[0][0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \next_switch_matrix[0][0]_i_29 
       (.I0(\next_switch_matrix[2][0]_i_20_n_0 ),
        .I1(\port_wants_to[2][3]_28 [2]),
        .I2(\port_wants_to[2][3]_28 [1]),
        .I3(\port_wants_to[2][3]_28 [0]),
        .I4(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I5(\next_switch_matrix[4][2]_i_3_n_0 ),
        .O(\next_switch_matrix_reg[0][0]_4 ));
  LUT5 #(
    .INIT(32'h8A8A8A00)) 
    \next_switch_matrix[0][0]_i_2__2 
       (.I0(\next_switch_matrix[0][2]_i_13__0_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_5__1_n_0 ),
        .I2(\next_switch_matrix[0][0]_i_5__1_n_0 ),
        .I3(\next_switch_matrix[0][0]_i_6__1_n_0 ),
        .I4(\G0.mem_reg[55]_2 ),
        .O(\next_switch_matrix_reg[0][0] ));
  LUT5 #(
    .INIT(32'hA2A0AAAA)) 
    \next_switch_matrix[0][0]_i_31 
       (.I0(\next_switch_matrix[0][0]_i_37_n_0 ),
        .I1(\next_switch_matrix[1][0]_i_13__0_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_3_n_0 ),
        .I3(\next_switch_matrix[0][0]_i_35_n_0 ),
        .I4(\G0.mem_reg[37]_1 ),
        .O(\next_switch_matrix_reg[0][0]_5 ));
  LUT6 #(
    .INIT(64'hFFFF1555FFFFFFFF)) 
    \next_switch_matrix[0][0]_i_32 
       (.I0(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I1(\port_wants_to[2][3]_28 [0]),
        .I2(\port_wants_to[2][3]_28 [1]),
        .I3(\port_wants_to[2][3]_28 [2]),
        .I4(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I5(\next_switch_matrix[1][2]_i_8_n_0 ),
        .O(\next_switch_matrix[0][0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \next_switch_matrix[0][0]_i_33 
       (.I0(\next_switch_matrix[5][2]_i_4__0_n_0 ),
        .I1(\next_switch_matrix[5][2]_i_3__0_n_0 ),
        .O(\next_switch_matrix[0][0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAE)) 
    \next_switch_matrix[0][0]_i_34 
       (.I0(\next_switch_matrix[1][2]_i_10_n_0 ),
        .I1(\next_switch_matrix[0][0]_i_38_n_0 ),
        .I2(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I3(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I4(\port_wants_to[2][3]_28 [0]),
        .I5(\next_switch_matrix[4][2]_i_6_n_0 ),
        .O(\next_switch_matrix[0][0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FD000000)) 
    \next_switch_matrix[0][0]_i_35 
       (.I0(\next_switch_matrix[0][0]_i_5__1_n_0 ),
        .I1(\next_switch_matrix[0][0]_i_39_n_0 ),
        .I2(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I3(\next_switch_matrix[3][2]_i_7_n_0 ),
        .I4(\next_switch_matrix[1][2]_i_10_n_0 ),
        .I5(\G0.mem_reg[55]_1 ),
        .O(\next_switch_matrix[0][0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h5551555555555555)) 
    \next_switch_matrix[0][0]_i_36 
       (.I0(\next_switch_matrix[0][0]_i_40_n_0 ),
        .I1(\next_switch_matrix_reg[4][2] ),
        .I2(\next_switch_matrix[0][2]_i_8_n_0 ),
        .I3(\next_switch_matrix_reg[4][2]_0 ),
        .I4(\port_wants_to[2][2]_29 ),
        .I5(\next_switch_matrix[2][2]_i_4__1_n_0 ),
        .O(\next_switch_matrix[0][0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAB)) 
    \next_switch_matrix[0][0]_i_37 
       (.I0(\G0.mem_reg[55]_2 ),
        .I1(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I2(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I3(\port_wants_to[2][3]_28 [0]),
        .I4(\next_switch_matrix[0][0]_i_41_n_0 ),
        .I5(\next_switch_matrix[2][0]_i_20_n_0 ),
        .O(\next_switch_matrix[0][0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h5454541FFFFFFFFF)) 
    \next_switch_matrix[0][0]_i_38 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I3(Q[32]),
        .I4(Q[33]),
        .I5(Q[55]),
        .O(\next_switch_matrix[0][0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFFFFFAFBFFFFF)) 
    \next_switch_matrix[0][0]_i_39 
       (.I0(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I1(Q[37]),
        .I2(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I3(Q[36]),
        .I4(Q[55]),
        .I5(\next_switch_matrix[0][2]_i_18_n_0 ),
        .O(\next_switch_matrix[0][0]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \next_switch_matrix[0][0]_i_40 
       (.I0(\next_switch_matrix[0][2]_i_28_n_0 ),
        .I1(\next_switch_matrix[2][2]_i_20_n_0 ),
        .I2(\next_switch_matrix[4][2]_i_21_n_0 ),
        .O(\next_switch_matrix[0][0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFF57FF03FFFFFFFF)) 
    \next_switch_matrix[0][0]_i_41 
       (.I0(Q[37]),
        .I1(Q[32]),
        .I2(Q[33]),
        .I3(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I4(Q[36]),
        .I5(Q[55]),
        .O(\next_switch_matrix[0][0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0E000000000)) 
    \next_switch_matrix[0][0]_i_5__1 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I3(Q[32]),
        .I4(Q[33]),
        .I5(Q[55]),
        .O(\next_switch_matrix[0][0]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFEEEFAAAAAAAA)) 
    \next_switch_matrix[0][0]_i_6__1 
       (.I0(\port_wants_to[6][0]_36 ),
        .I1(\next_switch_matrix_reg[0][0]_1 ),
        .I2(\next_switch_matrix_reg[4][2]_1 ),
        .I3(\G0.mem_reg[37]_2 ),
        .I4(\next_switch_matrix_reg[5][2] ),
        .I5(\next_switch_matrix_reg[0][0]_3 ),
        .O(\next_switch_matrix[0][0]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B8BCFBB)) 
    \next_switch_matrix[0][0]_i_8__0 
       (.I0(\next_switch_matrix[1][2]_i_2__0_n_0 ),
        .I1(\port_wants_to[6][1]_32 ),
        .I2(\next_switch_matrix_reg[0][2] ),
        .I3(\G0.mem_reg[32]_0 ),
        .I4(\G0.mem_reg[55]_4 ),
        .I5(\next_switch_matrix[0][0]_i_6__1_n_0 ),
        .O(\next_switch_matrix_reg[0][0]_0 ));
  LUT6 #(
    .INIT(64'hDDDFDDDFDDDFDDDD)) 
    \next_switch_matrix[0][2]_i_10 
       (.I0(Q[55]),
        .I1(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[2][2]_29 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF7F7F7FF)) 
    \next_switch_matrix[0][2]_i_11__0 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I3(Q[32]),
        .I4(Q[33]),
        .O(\next_switch_matrix_reg[4][2]_0 ));
  LUT6 #(
    .INIT(64'h2222202200000000)) 
    \next_switch_matrix[0][2]_i_12__0 
       (.I0(\next_switch_matrix[2][2]_i_4__1_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I2(Q[37]),
        .I3(\next_switch_matrix[0][2]_i_18_n_0 ),
        .I4(Q[36]),
        .I5(Q[55]),
        .O(\next_switch_matrix[0][2]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \next_switch_matrix[0][2]_i_13__0 
       (.I0(\port_wants_to[2][1]_27 [0]),
        .I1(\next_switch_matrix[4][2]_i_11_n_0 ),
        .I2(\next_switch_matrix[0][2]_i_19_n_0 ),
        .O(\next_switch_matrix[0][2]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \next_switch_matrix[0][2]_i_15__0 
       (.I0(\next_switch_matrix[0][2]_i_20_n_0 ),
        .I1(\next_switch_matrix[2][2]_i_3__1_n_0 ),
        .I2(\next_switch_matrix_reg[4][2]_0 ),
        .I3(\next_switch_matrix[1][2]_i_9_n_0 ),
        .I4(\next_switch_matrix_reg[4][2] ),
        .I5(\next_switch_matrix[0][2]_i_21_n_0 ),
        .O(\next_switch_matrix[0][2]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \next_switch_matrix[0][2]_i_16 
       (.I0(\next_switch_matrix[4][2]_i_15_n_0 ),
        .I1(\G0.mem_reg[55]_0 ),
        .I2(\next_switch_matrix[0][2]_i_22_n_0 ),
        .O(\next_switch_matrix[0][2]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \next_switch_matrix[0][2]_i_17 
       (.I0(\next_switch_matrix[0][2]_i_23_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_24_n_0 ),
        .I2(\next_switch_matrix[0][2]_i_25_n_0 ),
        .O(\next_switch_matrix[0][2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][2]_i_18 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\next_switch_matrix[0][2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \next_switch_matrix[0][2]_i_19 
       (.I0(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I1(Q[32]),
        .I2(Q[33]),
        .I3(Q[37]),
        .I4(Q[55]),
        .O(\next_switch_matrix[0][2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00002000FFFFFFFF)) 
    \next_switch_matrix[0][2]_i_20 
       (.I0(\port_wants_to[2][1]_27 [1]),
        .I1(\port_wants_to[2][1]_27 [2]),
        .I2(\port_wants_to[2][1]_27 [0]),
        .I3(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I4(\next_switch_matrix[2][2]_i_5_n_0 ),
        .I5(\next_switch_matrix[0][2]_i_26_n_0 ),
        .O(\next_switch_matrix[0][2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000010FFFFFFFF)) 
    \next_switch_matrix[0][2]_i_21 
       (.I0(\port_wants_to[2][1]_27 [0]),
        .I1(\next_switch_matrix[2][2]_i_5_n_0 ),
        .I2(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I3(\port_wants_to[2][1]_27 [1]),
        .I4(\port_wants_to[2][1]_27 [2]),
        .I5(\next_switch_matrix[0][2]_i_27_n_0 ),
        .O(\next_switch_matrix[0][2]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0000DDFD)) 
    \next_switch_matrix[0][2]_i_22 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I4(\next_switch_matrix[2][2]_i_6_n_0 ),
        .O(\next_switch_matrix[0][2]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \next_switch_matrix[0][2]_i_23 
       (.I0(\next_switch_matrix[0][2]_i_28_n_0 ),
        .I1(\port_wants_to[2][0]_31 ),
        .I2(\next_switch_matrix[4][2]_i_20_n_0 ),
        .I3(\next_switch_matrix[4][2]_i_21_n_0 ),
        .O(\next_switch_matrix[0][2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFF100000000)) 
    \next_switch_matrix[0][2]_i_24 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I5(Q[55]),
        .O(\next_switch_matrix[0][2]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \next_switch_matrix[0][2]_i_25 
       (.I0(\next_switch_matrix[4][2]_i_21_n_0 ),
        .I1(\next_switch_matrix[4][2]_i_20_n_0 ),
        .I2(\port_wants_to[2][0]_31 ),
        .O(\next_switch_matrix[0][2]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \next_switch_matrix[0][2]_i_26 
       (.I0(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I1(\port_wants_to[2][0]_31 ),
        .I2(\next_switch_matrix[4][2]_i_21_n_0 ),
        .I3(\next_switch_matrix[4][2]_i_20_n_0 ),
        .O(\next_switch_matrix[0][2]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_switch_matrix[0][2]_i_27 
       (.I0(\next_switch_matrix[4][2]_i_20_n_0 ),
        .I1(\port_wants_to[2][0]_31 ),
        .I2(\next_switch_matrix[0][2]_i_28_n_0 ),
        .I3(\next_switch_matrix[4][2]_i_21_n_0 ),
        .O(\next_switch_matrix[0][2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h2A002A002A00AAAA)) 
    \next_switch_matrix[0][2]_i_28 
       (.I0(\next_switch_matrix[2][2]_i_15_n_0 ),
        .I1(\port_wants_to[2][0]_31 ),
        .I2(\G0.mem_reg[55]_0 ),
        .I3(\next_switch_matrix[4][2]_i_21_n_0 ),
        .I4(\next_switch_matrix[2][2]_i_13_n_0 ),
        .I5(\next_switch_matrix[2][2]_i_12_n_0 ),
        .O(\next_switch_matrix[0][2]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \next_switch_matrix[0][2]_i_2__0 
       (.I0(\port_wants_to[2][3]_28 [2]),
        .I1(\port_wants_to[2][3]_28 [1]),
        .I2(\next_switch_matrix[0][2]_i_5__1_n_0 ),
        .I3(\next_switch_matrix[0][2]_i_6__1_n_0 ),
        .O(\next_switch_matrix_reg[0][2] ));
  LUT6 #(
    .INIT(64'h55575557FDFFFF57)) 
    \next_switch_matrix[0][2]_i_3__0 
       (.I0(Q[55]),
        .I1(Q[33]),
        .I2(Q[32]),
        .I3(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I4(Q[36]),
        .I5(Q[37]),
        .O(\port_wants_to[2][3]_28 [2]));
  LUT6 #(
    .INIT(64'h5F5F5F5FFFFFFF7F)) 
    \next_switch_matrix[0][2]_i_4__0 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I3(Q[33]),
        .I4(Q[32]),
        .I5(Q[37]),
        .O(\port_wants_to[2][3]_28 [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \next_switch_matrix[0][2]_i_5__1 
       (.I0(\port_wants_to[2][3]_28 [0]),
        .I1(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I2(\next_switch_matrix[4][2]_i_3_n_0 ),
        .O(\next_switch_matrix[0][2]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \next_switch_matrix[0][2]_i_6__1 
       (.I0(\next_switch_matrix[0][2]_i_8_n_0 ),
        .I1(\next_switch_matrix_reg[4][2] ),
        .I2(\port_wants_to[2][2]_29 ),
        .I3(\next_switch_matrix_reg[4][2]_0 ),
        .I4(\next_switch_matrix[0][2]_i_12__0_n_0 ),
        .I5(\next_switch_matrix[0][2]_i_13__0_n_0 ),
        .O(\next_switch_matrix[0][2]_i_6__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][2]_i_7__0 
       (.I0(Q[34]),
        .I1(Q[35]),
        .O(\next_switch_matrix[0][2]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F000F0E0E0E0E)) 
    \next_switch_matrix[0][2]_i_8 
       (.I0(\G0.mem_reg[55]_6 ),
        .I1(\next_switch_matrix[0][2]_i_15__0_n_0 ),
        .I2(\next_switch_matrix[0][2]_i_16_n_0 ),
        .I3(\next_switch_matrix[0][2]_i_17_n_0 ),
        .I4(\next_switch_matrix_reg[4][2]_0 ),
        .I5(\port_wants_to[2][2]_29 ),
        .O(\next_switch_matrix[0][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAFFFAFFFFFFFF)) 
    \next_switch_matrix[0][2]_i_9__0 
       (.I0(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I1(Q[37]),
        .I2(Q[33]),
        .I3(Q[32]),
        .I4(Q[36]),
        .I5(Q[55]),
        .O(\next_switch_matrix_reg[4][2] ));
  LUT6 #(
    .INIT(64'h555DFFFF555D555D)) 
    \next_switch_matrix[1][0]_i_10 
       (.I0(\next_switch_matrix[3][2]_i_5__0_n_0 ),
        .I1(\next_switch_matrix[1][2]_i_10_n_0 ),
        .I2(\next_switch_matrix[1][2]_i_6__0_n_0 ),
        .I3(\next_switch_matrix[1][2]_i_5_n_0 ),
        .I4(\next_switch_matrix[0][0]_i_6__1_n_0 ),
        .I5(\G0.mem_reg[37]_1 ),
        .O(\next_switch_matrix_reg[3][0]_0 ));
  LUT6 #(
    .INIT(64'hFFFF1555FFFFFFFF)) 
    \next_switch_matrix[1][0]_i_13__0 
       (.I0(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I1(\port_wants_to[2][3]_28 [0]),
        .I2(\port_wants_to[2][3]_28 [1]),
        .I3(\port_wants_to[2][3]_28 [2]),
        .I4(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I5(\port_wants_to[2][4]_30 ),
        .O(\next_switch_matrix[1][0]_i_13__0_n_0 ));
  LUT4 #(
    .INIT(16'hF0F2)) 
    \next_switch_matrix[1][0]_i_9__0 
       (.I0(\next_switch_matrix[3][2]_i_5__0_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_4_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_3_n_0 ),
        .I3(\next_switch_matrix[1][0]_i_13__0_n_0 ),
        .O(\next_switch_matrix_reg[1][0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[1][2]_i_1 
       (.I0(\next_switch_matrix[1][2]_i_2__0_n_0 ),
        .O(\next_switch_matrix_reg[1][2] ));
  LUT6 #(
    .INIT(64'h0808080808080008)) 
    \next_switch_matrix[1][2]_i_10 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\next_switch_matrix[1][2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h55555455)) 
    \next_switch_matrix[1][2]_i_11 
       (.I0(\G0.mem_reg[55]_1 ),
        .I1(\next_switch_matrix[0][2]_i_28_n_0 ),
        .I2(\port_wants_to[2][0]_31 ),
        .I3(\next_switch_matrix[4][2]_i_20_n_0 ),
        .I4(\next_switch_matrix[4][2]_i_21_n_0 ),
        .O(\next_switch_matrix[1][2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEF)) 
    \next_switch_matrix[1][2]_i_2__0 
       (.I0(\next_switch_matrix[1][2]_i_3_n_0 ),
        .I1(\next_switch_matrix[1][2]_i_4_n_0 ),
        .I2(\next_switch_matrix[1][2]_i_5_n_0 ),
        .I3(\next_switch_matrix[1][2]_i_6__0_n_0 ),
        .I4(\port_wants_to[2][4]_30 ),
        .I5(\next_switch_matrix[1][2]_i_8_n_0 ),
        .O(\next_switch_matrix[1][2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \next_switch_matrix[1][2]_i_3 
       (.I0(\port_wants_to[2][3]_28 [2]),
        .I1(\port_wants_to[2][3]_28 [1]),
        .I2(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I3(\port_wants_to[2][3]_28 [0]),
        .I4(\next_switch_matrix[4][2]_i_2_n_0 ),
        .O(\next_switch_matrix[1][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEAA)) 
    \next_switch_matrix[1][2]_i_4 
       (.I0(\next_switch_matrix[1][2]_i_9_n_0 ),
        .I1(\next_switch_matrix_reg[4][2] ),
        .I2(\next_switch_matrix[0][2]_i_8_n_0 ),
        .I3(\next_switch_matrix[0][2]_i_12__0_n_0 ),
        .I4(\next_switch_matrix_reg[4][2]_0 ),
        .I5(\port_wants_to[2][2]_29 ),
        .O(\next_switch_matrix[1][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE0EE)) 
    \next_switch_matrix[1][2]_i_5 
       (.I0(\next_switch_matrix_reg[6][2]_0 ),
        .I1(\next_switch_matrix[1][2]_i_10_n_0 ),
        .I2(\next_switch_matrix[3][2]_i_4_n_0 ),
        .I3(\next_switch_matrix[3][2]_i_5__0_n_0 ),
        .O(\next_switch_matrix[1][2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAAABFFF)) 
    \next_switch_matrix[1][2]_i_6__0 
       (.I0(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I1(\port_wants_to[2][3]_28 [2]),
        .I2(\port_wants_to[2][3]_28 [1]),
        .I3(\port_wants_to[2][3]_28 [0]),
        .I4(\next_switch_matrix[4][2]_i_2_n_0 ),
        .O(\next_switch_matrix[1][2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hF5FFF5FFF5FFFDFF)) 
    \next_switch_matrix[1][2]_i_7 
       (.I0(Q[55]),
        .I1(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(Q[33]),
        .I5(Q[32]),
        .O(\port_wants_to[2][4]_30 ));
  LUT6 #(
    .INIT(64'hFF10FFFFFFFFFFFF)) 
    \next_switch_matrix[1][2]_i_8 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I3(Q[37]),
        .I4(Q[36]),
        .I5(Q[55]),
        .O(\next_switch_matrix[1][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00040000FFFFFFFF)) 
    \next_switch_matrix[1][2]_i_9 
       (.I0(\next_switch_matrix[2][2]_i_5_n_0 ),
        .I1(\port_wants_to[2][1]_27 [0]),
        .I2(\port_wants_to[2][1]_27 [1]),
        .I3(\port_wants_to[2][1]_27 [2]),
        .I4(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I5(\next_switch_matrix[1][2]_i_11_n_0 ),
        .O(\next_switch_matrix[1][2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF04)) 
    \next_switch_matrix[2][0]_i_13 
       (.I0(\next_switch_matrix[0][2]_i_5__1_n_0 ),
        .I1(\port_wants_to[2][3]_28 [1]),
        .I2(\port_wants_to[2][3]_28 [2]),
        .I3(\next_switch_matrix[2][0]_i_20_n_0 ),
        .I4(\G0.mem_reg[55]_3 ),
        .O(\next_switch_matrix_reg[2][0] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \next_switch_matrix[2][0]_i_16 
       (.I0(\next_switch_matrix_reg[2][2] ),
        .I1(\next_switch_matrix_reg[3][2] ),
        .I2(\port_wants_to[6][3]_33 [0]),
        .O(\next_switch_matrix[2][0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0020)) 
    \next_switch_matrix[2][0]_i_20 
       (.I0(\next_switch_matrix[4][2]_i_11_n_0 ),
        .I1(\port_wants_to[2][1]_27 [0]),
        .I2(\port_wants_to[2][1]_27 [1]),
        .I3(\port_wants_to[2][1]_27 [2]),
        .I4(\next_switch_matrix[2][0]_i_25_n_0 ),
        .I5(\next_switch_matrix[2][0]_i_26_n_0 ),
        .O(\next_switch_matrix[2][0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h5533F0FF5533F000)) 
    \next_switch_matrix[2][0]_i_23 
       (.I0(\next_switch_matrix_reg[3][2] ),
        .I1(\next_switch_matrix[1][2]_i_2__0_n_0 ),
        .I2(\next_switch_matrix_reg[2][2] ),
        .I3(\port_wants_to[6][2]_34 ),
        .I4(\G0.mem_reg[37]_0 ),
        .I5(\next_switch_matrix_reg[0][2] ),
        .O(\next_switch_matrix_reg[4][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \next_switch_matrix[2][0]_i_25 
       (.I0(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(Q[55]),
        .I4(\next_switch_matrix[2][2]_i_6_n_0 ),
        .O(\next_switch_matrix[2][0]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \next_switch_matrix[2][0]_i_26 
       (.I0(\next_switch_matrix[0][2]_i_8_n_0 ),
        .I1(\next_switch_matrix[2][2]_i_4__1_n_0 ),
        .I2(\next_switch_matrix_reg[4][2] ),
        .I3(\next_switch_matrix_reg[4][2]_0 ),
        .I4(\port_wants_to[2][2]_29 ),
        .O(\next_switch_matrix[2][0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAAAAAAA)) 
    \next_switch_matrix[2][0]_i_33 
       (.I0(\next_switch_matrix[2][0]_i_35_n_0 ),
        .I1(\port_wants_to[6][0]_36 ),
        .I2(\next_switch_matrix_reg[0][0]_1 ),
        .I3(\next_switch_matrix_reg[0][0]_2 ),
        .I4(\next_switch_matrix_reg[0][0]_3 ),
        .I5(\G0.mem_reg[37]_1 ),
        .O(\next_switch_matrix_reg[4][0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFF02FFFFFFFF)) 
    \next_switch_matrix[2][0]_i_35 
       (.I0(\next_switch_matrix[1][2]_i_10_n_0 ),
        .I1(\next_switch_matrix[1][2]_i_6__0_n_0 ),
        .I2(\next_switch_matrix[1][2]_i_5_n_0 ),
        .I3(\next_switch_matrix[1][2]_i_4_n_0 ),
        .I4(\next_switch_matrix[1][2]_i_3_n_0 ),
        .I5(\port_wants_to[6][1]_32 ),
        .O(\next_switch_matrix[2][0]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hCFC0C5C5)) 
    \next_switch_matrix[2][0]_i_8 
       (.I0(\next_switch_matrix_reg[0][2] ),
        .I1(\next_switch_matrix[2][0]_i_16_n_0 ),
        .I2(\port_wants_to[6][3]_33 [1]),
        .I3(\next_switch_matrix[1][2]_i_2__0_n_0 ),
        .I4(\port_wants_to[6][3]_33 [0]),
        .O(\next_switch_matrix_reg[5][0] ));
  LUT5 #(
    .INIT(32'hEEE4EEEA)) 
    \next_switch_matrix[2][2]_i_10__0 
       (.I0(\port_wants_to[2][1]_27 [0]),
        .I1(\G0.mem_reg[55]_7 ),
        .I2(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I3(\next_switch_matrix[2][2]_i_18_n_0 ),
        .I4(\next_switch_matrix[4][2]_i_20_n_0 ),
        .O(\next_switch_matrix[2][2]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \next_switch_matrix[2][2]_i_11 
       (.I0(\G0.mem_reg[55]_1 ),
        .I1(\next_switch_matrix[2][2]_i_19_n_0 ),
        .I2(\next_switch_matrix[4][2]_i_21_n_0 ),
        .I3(\port_wants_to[2][1]_27 [0]),
        .O(\next_switch_matrix[2][2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hDF13)) 
    \next_switch_matrix[2][2]_i_12 
       (.I0(\G0.mem_reg[55]_1 ),
        .I1(\port_wants_to[2][0]_31 ),
        .I2(\next_switch_matrix[4][2]_i_20_n_0 ),
        .I3(\next_switch_matrix[4][2]_i_21_n_0 ),
        .O(\next_switch_matrix[2][2]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \next_switch_matrix[2][2]_i_13 
       (.I0(\next_switch_matrix[4][2]_i_20_n_0 ),
        .I1(\G0.mem_reg[55]_7 ),
        .I2(\port_wants_to[2][0]_31 ),
        .O(\next_switch_matrix[2][2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h51515551)) 
    \next_switch_matrix[2][2]_i_14 
       (.I0(\G0.mem_reg[55]_0 ),
        .I1(Q[55]),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .O(\next_switch_matrix[2][2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \next_switch_matrix[2][2]_i_15 
       (.I0(\next_switch_matrix[4][2]_i_21_n_0 ),
        .I1(\port_wants_to[2][0]_31 ),
        .O(\next_switch_matrix[2][2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF4FF)) 
    \next_switch_matrix[2][2]_i_16 
       (.I0(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(Q[55]),
        .O(\next_switch_matrix[2][2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0888088808880808)) 
    \next_switch_matrix[2][2]_i_17 
       (.I0(\next_switch_matrix[4][2]_i_21_n_0 ),
        .I1(\next_switch_matrix[2][2]_i_20_n_0 ),
        .I2(\next_switch_matrix[2][2]_i_15_n_0 ),
        .I3(\next_switch_matrix[2][2]_i_14_n_0 ),
        .I4(\next_switch_matrix[2][2]_i_13_n_0 ),
        .I5(\next_switch_matrix[2][2]_i_12_n_0 ),
        .O(\next_switch_matrix[2][2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \next_switch_matrix[2][2]_i_18 
       (.I0(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(Q[55]),
        .O(\next_switch_matrix[2][2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF020000FFFFFFFF)) 
    \next_switch_matrix[2][2]_i_19 
       (.I0(\G0.mem_reg[55]_1 ),
        .I1(\next_switch_matrix[4][2]_i_21_n_0 ),
        .I2(\next_switch_matrix[2][2]_i_13_n_0 ),
        .I3(\next_switch_matrix[2][2]_i_14_n_0 ),
        .I4(\next_switch_matrix[2][2]_i_15_n_0 ),
        .I5(\next_switch_matrix[2][2]_i_20_n_0 ),
        .O(\next_switch_matrix[2][2]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h5545)) 
    \next_switch_matrix[2][2]_i_1__0 
       (.I0(\next_switch_matrix[2][2]_i_2__0_n_0 ),
        .I1(\port_wants_to[2][3]_28 [2]),
        .I2(\port_wants_to[2][3]_28 [1]),
        .I3(\next_switch_matrix[0][2]_i_5__1_n_0 ),
        .O(\next_switch_matrix_reg[2][2] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \next_switch_matrix[2][2]_i_20 
       (.I0(Q[36]),
        .I1(Q[37]),
        .I2(Q[55]),
        .O(\next_switch_matrix[2][2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \next_switch_matrix[2][2]_i_2__0 
       (.I0(\next_switch_matrix[2][2]_i_3__1_n_0 ),
        .I1(\port_wants_to[2][2]_29 ),
        .I2(\next_switch_matrix_reg[4][2]_0 ),
        .I3(\next_switch_matrix_reg[4][2] ),
        .I4(\next_switch_matrix[2][2]_i_4__1_n_0 ),
        .I5(\next_switch_matrix[0][2]_i_8_n_0 ),
        .O(\next_switch_matrix[2][2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00040000FFFFFFFF)) 
    \next_switch_matrix[2][2]_i_3__1 
       (.I0(\port_wants_to[2][1]_27 [2]),
        .I1(\port_wants_to[2][1]_27 [1]),
        .I2(\port_wants_to[2][1]_27 [0]),
        .I3(\next_switch_matrix[2][2]_i_5_n_0 ),
        .I4(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I5(\next_switch_matrix[2][2]_i_7_n_0 ),
        .O(\next_switch_matrix[2][2]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    \next_switch_matrix[2][2]_i_4__1 
       (.I0(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I1(\port_wants_to[2][1]_27 [2]),
        .I2(\port_wants_to[2][1]_27 [1]),
        .I3(\port_wants_to[2][1]_27 [0]),
        .I4(\next_switch_matrix[2][2]_i_5_n_0 ),
        .O(\next_switch_matrix[2][2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h444444440F000FFF)) 
    \next_switch_matrix[2][2]_i_5 
       (.I0(\next_switch_matrix[2][2]_i_8__0_n_0 ),
        .I1(\next_switch_matrix[2][2]_i_9__0_n_0 ),
        .I2(\next_switch_matrix[2][2]_i_10__0_n_0 ),
        .I3(\port_wants_to[2][1]_27 [1]),
        .I4(\next_switch_matrix[2][2]_i_11_n_0 ),
        .I5(\port_wants_to[2][1]_27 [2]),
        .O(\next_switch_matrix[2][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF100F100F100)) 
    \next_switch_matrix[2][2]_i_6 
       (.I0(\next_switch_matrix[2][2]_i_12_n_0 ),
        .I1(\next_switch_matrix[2][2]_i_13_n_0 ),
        .I2(\next_switch_matrix[2][2]_i_14_n_0 ),
        .I3(\next_switch_matrix[2][2]_i_15_n_0 ),
        .I4(\next_switch_matrix[4][2]_i_20_n_0 ),
        .I5(\next_switch_matrix[2][2]_i_16_n_0 ),
        .O(\next_switch_matrix[2][2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \next_switch_matrix[2][2]_i_7 
       (.I0(\G0.mem_reg[55]_7 ),
        .I1(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I2(\port_wants_to[2][0]_31 ),
        .I3(\next_switch_matrix[4][2]_i_21_n_0 ),
        .I4(\next_switch_matrix[4][2]_i_20_n_0 ),
        .O(\next_switch_matrix[2][2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h80888888)) 
    \next_switch_matrix[2][2]_i_8__0 
       (.I0(\port_wants_to[2][1]_27 [1]),
        .I1(\G0.mem_reg[55]_0 ),
        .I2(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I3(\port_wants_to[2][0]_31 ),
        .I4(\next_switch_matrix[4][2]_i_21_n_0 ),
        .O(\next_switch_matrix[2][2]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFC4CF)) 
    \next_switch_matrix[2][2]_i_9__0 
       (.I0(\port_wants_to[2][1]_27 [2]),
        .I1(\next_switch_matrix[2][2]_i_17_n_0 ),
        .I2(\port_wants_to[2][1]_27 [0]),
        .I3(\next_switch_matrix[0][2]_i_25_n_0 ),
        .I4(\port_wants_to[2][1]_27 [1]),
        .O(\next_switch_matrix[2][2]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDCDCCCCFDCD)) 
    \next_switch_matrix[3][0]_i_13__0 
       (.I0(\next_switch_matrix_reg[0][2] ),
        .I1(\port_wants_to[6][3]_33 [2]),
        .I2(\port_wants_to[6][3]_33 [0]),
        .I3(\next_switch_matrix[1][2]_i_2__0_n_0 ),
        .I4(\port_wants_to[6][3]_33 [1]),
        .I5(\next_switch_matrix[2][0]_i_16_n_0 ),
        .O(\next_switch_matrix_reg[3][0] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[3][2]_i_1 
       (.I0(\next_switch_matrix_reg[3][2] ),
        .O(\next_switch_matrix_reg[3][2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \next_switch_matrix[3][2]_i_10__0 
       (.I0(Q[36]),
        .I1(Q[37]),
        .I2(Q[55]),
        .I3(\next_switch_matrix[0][2]_i_28_n_0 ),
        .O(\next_switch_matrix[3][2]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00E00000)) 
    \next_switch_matrix[3][2]_i_11 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(Q[37]),
        .I3(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I4(Q[55]),
        .O(\next_switch_matrix[3][2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0F4F0F0)) 
    \next_switch_matrix[3][2]_i_2__1 
       (.I0(\next_switch_matrix[1][2]_i_6__0_n_0 ),
        .I1(\port_wants_to[2][4]_30 ),
        .I2(\next_switch_matrix[3][2]_i_3_n_0 ),
        .I3(\next_switch_matrix[3][2]_i_4_n_0 ),
        .I4(\next_switch_matrix[3][2]_i_5__0_n_0 ),
        .O(\next_switch_matrix_reg[3][2] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEAA)) 
    \next_switch_matrix[3][2]_i_3 
       (.I0(\next_switch_matrix[3][2]_i_6_n_0 ),
        .I1(\port_wants_to[2][3]_28 [1]),
        .I2(\port_wants_to[2][3]_28 [2]),
        .I3(\port_wants_to[2][3]_28 [0]),
        .I4(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I5(\next_switch_matrix[4][2]_i_2_n_0 ),
        .O(\next_switch_matrix[3][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFFFFFFFFFFF)) 
    \next_switch_matrix[3][2]_i_4 
       (.I0(\G0.mem_reg[55]_1 ),
        .I1(\next_switch_matrix[0][2]_i_18_n_0 ),
        .I2(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I3(Q[37]),
        .I4(Q[36]),
        .I5(Q[55]),
        .O(\next_switch_matrix[3][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    \next_switch_matrix[3][2]_i_5__0 
       (.I0(\next_switch_matrix[3][2]_i_7_n_0 ),
        .I1(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I2(\port_wants_to[2][3]_28 [0]),
        .I3(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I4(\port_wants_to[2][3]_28 [1]),
        .I5(\port_wants_to[2][3]_28 [2]),
        .O(\next_switch_matrix[3][2]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    \next_switch_matrix[3][2]_i_6 
       (.I0(\next_switch_matrix[4][2]_i_11_n_0 ),
        .I1(\port_wants_to[2][1]_27 [0]),
        .I2(\port_wants_to[2][1]_27 [2]),
        .I3(\port_wants_to[2][1]_27 [1]),
        .I4(\next_switch_matrix[3][2]_i_8_n_0 ),
        .O(\next_switch_matrix[3][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1101111111111111)) 
    \next_switch_matrix[3][2]_i_7 
       (.I0(\next_switch_matrix[3][2]_i_9_n_0 ),
        .I1(\next_switch_matrix[3][2]_i_10__0_n_0 ),
        .I2(\next_switch_matrix_reg[4][2] ),
        .I3(\next_switch_matrix[0][2]_i_8_n_0 ),
        .I4(\next_switch_matrix[0][2]_i_12__0_n_0 ),
        .I5(\next_switch_matrix[3][2]_i_11_n_0 ),
        .O(\next_switch_matrix[3][2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \next_switch_matrix[3][2]_i_8 
       (.I0(\port_wants_to[2][2]_29 ),
        .I1(\next_switch_matrix_reg[4][2]_0 ),
        .I2(\next_switch_matrix_reg[4][2] ),
        .I3(\next_switch_matrix[2][2]_i_4__1_n_0 ),
        .I4(\next_switch_matrix[0][2]_i_8_n_0 ),
        .O(\next_switch_matrix[3][2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \next_switch_matrix[3][2]_i_9 
       (.I0(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I1(\port_wants_to[2][1]_27 [2]),
        .I2(\port_wants_to[2][1]_27 [1]),
        .I3(\port_wants_to[2][1]_27 [0]),
        .I4(\next_switch_matrix[2][2]_i_5_n_0 ),
        .O(\next_switch_matrix[3][2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF00FF10)) 
    \next_switch_matrix[4][0]_i_4__0 
       (.I0(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I1(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I2(\port_wants_to[2][3]_28 [2]),
        .I3(\next_switch_matrix[4][2]_i_5__0_n_0 ),
        .I4(\port_wants_to[2][3]_28 [0]),
        .I5(\port_wants_to[2][3]_28 [1]),
        .O(\next_switch_matrix_reg[4][0] ));
  LUT6 #(
    .INIT(64'h5D5D5D5DFFFFFF5F)) 
    \next_switch_matrix[4][2]_i_10 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(Q[33]),
        .I4(Q[32]),
        .I5(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .O(\port_wants_to[2][1]_27 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    \next_switch_matrix[4][2]_i_11 
       (.I0(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I1(\next_switch_matrix[2][2]_i_5_n_0 ),
        .O(\next_switch_matrix[4][2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h222FFFFF)) 
    \next_switch_matrix[4][2]_i_12 
       (.I0(Q[36]),
        .I1(Q[37]),
        .I2(Q[34]),
        .I3(Q[35]),
        .I4(Q[55]),
        .O(\port_wants_to[2][1]_27 [0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \next_switch_matrix[4][2]_i_13 
       (.I0(\port_wants_to[2][0]_31 ),
        .I1(\next_switch_matrix[4][2]_i_20_n_0 ),
        .I2(\next_switch_matrix[4][2]_i_21_n_0 ),
        .O(\next_switch_matrix[4][2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \next_switch_matrix[4][2]_i_14 
       (.I0(\next_switch_matrix_reg[4][2]_0 ),
        .I1(\port_wants_to[2][2]_29 ),
        .I2(\next_switch_matrix[0][2]_i_8_n_0 ),
        .I3(\next_switch_matrix[2][2]_i_4__1_n_0 ),
        .I4(\next_switch_matrix_reg[4][2] ),
        .O(\next_switch_matrix[4][2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000EFFFFFFFF)) 
    \next_switch_matrix[4][2]_i_15 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I5(Q[55]),
        .O(\next_switch_matrix[4][2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA0C00AAAA)) 
    \next_switch_matrix[4][2]_i_16 
       (.I0(\next_switch_matrix[2][2]_i_16_n_0 ),
        .I1(\port_wants_to[2][1]_27 [1]),
        .I2(\port_wants_to[2][1]_27 [0]),
        .I3(\port_wants_to[2][1]_27 [2]),
        .I4(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I5(\next_switch_matrix[2][2]_i_5_n_0 ),
        .O(\next_switch_matrix[4][2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \next_switch_matrix[4][2]_i_17 
       (.I0(\next_switch_matrix[1][2]_i_9_n_0 ),
        .I1(\next_switch_matrix[4][2]_i_22_n_0 ),
        .I2(\port_wants_to[2][3]_28 [0]),
        .I3(\next_switch_matrix[0][2]_i_21_n_0 ),
        .O(\next_switch_matrix[4][2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8FCB8BB)) 
    \next_switch_matrix[4][2]_i_18 
       (.I0(\next_switch_matrix[0][2]_i_20_n_0 ),
        .I1(\port_wants_to[2][3]_28 [0]),
        .I2(\next_switch_matrix[2][2]_i_3__1_n_0 ),
        .I3(\next_switch_matrix[4][2]_i_23_n_0 ),
        .I4(\next_switch_matrix_reg[4][2] ),
        .I5(\next_switch_matrix[4][2]_i_24_n_0 ),
        .O(\next_switch_matrix[4][2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \next_switch_matrix[4][2]_i_19 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .O(\port_wants_to[2][0]_31 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFEF)) 
    \next_switch_matrix[4][2]_i_1__1 
       (.I0(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I1(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I2(\port_wants_to[2][3]_28 [2]),
        .I3(\port_wants_to[2][3]_28 [1]),
        .I4(\port_wants_to[2][3]_28 [0]),
        .I5(\next_switch_matrix[4][2]_i_5__0_n_0 ),
        .O(\next_switch_matrix_reg[4][2]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \next_switch_matrix[4][2]_i_2 
       (.I0(\next_switch_matrix[4][2]_i_6_n_0 ),
        .I1(\next_switch_matrix[4][2]_i_7_n_0 ),
        .I2(\next_switch_matrix_reg[4][2]_i_8_n_0 ),
        .O(\next_switch_matrix[4][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF54FFFFFFFFFF)) 
    \next_switch_matrix[4][2]_i_20 
       (.I0(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I1(Q[32]),
        .I2(Q[33]),
        .I3(Q[36]),
        .I4(Q[37]),
        .I5(Q[55]),
        .O(\next_switch_matrix[4][2]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hDDFD)) 
    \next_switch_matrix[4][2]_i_21 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .O(\next_switch_matrix[4][2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8088808000000000)) 
    \next_switch_matrix[4][2]_i_22 
       (.I0(\next_switch_matrix[3][2]_i_11_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_12__0_n_0 ),
        .I2(\next_switch_matrix[4][2]_i_25_n_0 ),
        .I3(\next_switch_matrix[0][2]_i_15__0_n_0 ),
        .I4(\next_switch_matrix[4][2]_i_26_n_0 ),
        .I5(\next_switch_matrix_reg[4][2] ),
        .O(\next_switch_matrix[4][2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFF54FFFFFFFF)) 
    \next_switch_matrix[4][2]_i_23 
       (.I0(Q[36]),
        .I1(Q[33]),
        .I2(Q[32]),
        .I3(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I4(Q[37]),
        .I5(Q[55]),
        .O(\next_switch_matrix[4][2]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h45FF)) 
    \next_switch_matrix[4][2]_i_24 
       (.I0(\next_switch_matrix[0][2]_i_16_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_15__0_n_0 ),
        .I2(\next_switch_matrix[4][2]_i_26_n_0 ),
        .I3(\next_switch_matrix[2][2]_i_4__1_n_0 ),
        .O(\next_switch_matrix[4][2]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \next_switch_matrix[4][2]_i_25 
       (.I0(\next_switch_matrix[4][2]_i_16_n_0 ),
        .I1(\next_switch_matrix[4][2]_i_27_n_0 ),
        .O(\next_switch_matrix[4][2]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00155515)) 
    \next_switch_matrix[4][2]_i_26 
       (.I0(\port_wants_to[2][2]_29 ),
        .I1(\next_switch_matrix_reg[4][2] ),
        .I2(\G0.mem_reg[55]_1 ),
        .I3(\next_switch_matrix_reg[4][2]_0 ),
        .I4(\G0.mem_reg[36]_0 ),
        .O(\next_switch_matrix[4][2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2AAA2A2A2A2)) 
    \next_switch_matrix[4][2]_i_27 
       (.I0(\G0.mem_reg[55]_0 ),
        .I1(Q[55]),
        .I2(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I3(Q[36]),
        .I4(Q[37]),
        .I5(\next_switch_matrix[0][2]_i_18_n_0 ),
        .O(\next_switch_matrix[4][2]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h007FFFFF)) 
    \next_switch_matrix[4][2]_i_3 
       (.I0(\port_wants_to[2][2]_29 ),
        .I1(\next_switch_matrix_reg[4][2]_0 ),
        .I2(\next_switch_matrix_reg[4][2] ),
        .I3(\next_switch_matrix[0][2]_i_8_n_0 ),
        .I4(\next_switch_matrix[2][2]_i_4__1_n_0 ),
        .O(\next_switch_matrix[4][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1F1FFFFFFF1F)) 
    \next_switch_matrix[4][2]_i_4__0 
       (.I0(Q[32]),
        .I1(Q[33]),
        .I2(Q[55]),
        .I3(Q[36]),
        .I4(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I5(Q[37]),
        .O(\port_wants_to[2][3]_28 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0040)) 
    \next_switch_matrix[4][2]_i_5__0 
       (.I0(\port_wants_to[2][1]_27 [1]),
        .I1(\port_wants_to[2][1]_27 [2]),
        .I2(\next_switch_matrix[4][2]_i_11_n_0 ),
        .I3(\port_wants_to[2][1]_27 [0]),
        .I4(\next_switch_matrix[4][2]_i_13_n_0 ),
        .I5(\next_switch_matrix[4][2]_i_14_n_0 ),
        .O(\next_switch_matrix[4][2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0020FFFFFFFF)) 
    \next_switch_matrix[4][2]_i_6 
       (.I0(\next_switch_matrix[4][2]_i_15_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_8_n_0 ),
        .I2(\next_switch_matrix[2][2]_i_4__1_n_0 ),
        .I3(\next_switch_matrix_reg[4][2] ),
        .I4(\next_switch_matrix[4][2]_i_16_n_0 ),
        .I5(\G0.mem_reg[55]_0 ),
        .O(\next_switch_matrix[4][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555555FFDFDFD7F)) 
    \next_switch_matrix[4][2]_i_7 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(\next_switch_matrix[0][2]_i_7__0_n_0 ),
        .I3(Q[33]),
        .I4(Q[32]),
        .I5(Q[37]),
        .O(\next_switch_matrix[4][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \next_switch_matrix[4][2]_i_9 
       (.I0(Q[55]),
        .I1(Q[34]),
        .I2(Q[35]),
        .I3(Q[37]),
        .I4(Q[33]),
        .I5(Q[32]),
        .O(\port_wants_to[2][1]_27 [1]));
  LUT5 #(
    .INIT(32'h0004FFFF)) 
    \next_switch_matrix[5][0]_i_4 
       (.I0(\next_switch_matrix[1][2]_i_6__0_n_0 ),
        .I1(\next_switch_matrix[1][2]_i_8_n_0 ),
        .I2(\port_wants_to[2][4]_30 ),
        .I3(\next_switch_matrix[1][2]_i_5_n_0 ),
        .I4(\next_switch_matrix[0][0]_i_26_n_0 ),
        .O(\next_switch_matrix_reg[5][0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[5][2]_i_1 
       (.I0(\next_switch_matrix_reg[5][2] ),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0004)) 
    \next_switch_matrix[5][2]_i_2 
       (.I0(\next_switch_matrix[1][2]_i_6__0_n_0 ),
        .I1(\next_switch_matrix[1][2]_i_8_n_0 ),
        .I2(\port_wants_to[2][4]_30 ),
        .I3(\next_switch_matrix[1][2]_i_5_n_0 ),
        .I4(\next_switch_matrix[5][2]_i_3__0_n_0 ),
        .I5(\next_switch_matrix[5][2]_i_4__0_n_0 ),
        .O(\next_switch_matrix_reg[5][2] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \next_switch_matrix[5][2]_i_3__0 
       (.I0(\port_wants_to[2][3]_28 [1]),
        .I1(\port_wants_to[2][3]_28 [0]),
        .I2(\port_wants_to[2][3]_28 [2]),
        .I3(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I4(\next_switch_matrix[4][2]_i_2_n_0 ),
        .O(\next_switch_matrix[5][2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h02000000FFFFFFFF)) 
    \next_switch_matrix[5][2]_i_4__0 
       (.I0(\next_switch_matrix_reg[4][2] ),
        .I1(\next_switch_matrix[0][2]_i_8_n_0 ),
        .I2(\next_switch_matrix_reg[4][2]_0 ),
        .I3(\port_wants_to[2][2]_29 ),
        .I4(\next_switch_matrix[2][2]_i_4__1_n_0 ),
        .I5(\next_switch_matrix[5][2]_i_5__0_n_0 ),
        .O(\next_switch_matrix[5][2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555551555555)) 
    \next_switch_matrix[5][2]_i_5__0 
       (.I0(\next_switch_matrix[0][2]_i_23_n_0 ),
        .I1(\port_wants_to[2][1]_27 [0]),
        .I2(\port_wants_to[2][1]_27 [1]),
        .I3(\port_wants_to[2][1]_27 [2]),
        .I4(\next_switch_matrix[2][2]_i_6_n_0 ),
        .I5(\next_switch_matrix[2][2]_i_5_n_0 ),
        .O(\next_switch_matrix[5][2]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \next_switch_matrix[6][0]_i_8 
       (.I0(\next_switch_matrix[6][0]_i_9_n_0 ),
        .I1(\next_switch_matrix[0][2]_i_5__1_n_0 ),
        .I2(\port_wants_to[2][3]_28 [1]),
        .I3(\port_wants_to[2][3]_28 [2]),
        .O(\next_switch_matrix_reg[6][0] ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \next_switch_matrix[6][0]_i_9 
       (.I0(\next_switch_matrix[4][2]_i_16_n_0 ),
        .I1(\next_switch_matrix_reg[4][2] ),
        .I2(\next_switch_matrix[2][2]_i_4__1_n_0 ),
        .I3(\next_switch_matrix[0][2]_i_8_n_0 ),
        .I4(\next_switch_matrix_reg[4][2]_0 ),
        .I5(\port_wants_to[2][2]_29 ),
        .O(\next_switch_matrix[6][0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[6][2]_i_1__0 
       (.I0(\next_switch_matrix_reg[6][2]_0 ),
        .O(\next_switch_matrix_reg[6][2] ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \next_switch_matrix[6][2]_i_2 
       (.I0(\next_switch_matrix[4][2]_i_6_n_0 ),
        .I1(\port_wants_to[2][3]_28 [0]),
        .I2(\next_switch_matrix[4][2]_i_2_n_0 ),
        .I3(\next_switch_matrix[4][2]_i_3_n_0 ),
        .I4(\port_wants_to[2][3]_28 [1]),
        .I5(\port_wants_to[2][3]_28 [2]),
        .O(\next_switch_matrix_reg[6][2]_0 ));
  MUXF7 \next_switch_matrix_reg[4][2]_i_8 
       (.I0(\next_switch_matrix[4][2]_i_17_n_0 ),
        .I1(\next_switch_matrix[4][2]_i_18_n_0 ),
        .O(\next_switch_matrix_reg[4][2]_i_8_n_0 ),
        .S(\port_wants_to[2][3]_28 [1]));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized20
   (Q,
    \next_switch_matrix_reg[0][0] ,
    \port_wants_to[6][1]_52 ,
    D,
    \next_switch_matrix_reg[5][0] ,
    \port_wants_to[6][2]_51 ,
    E,
    \next_switch_matrix_reg[1][0] ,
    \port_wants_to[6][4]_48 ,
    \port_wants_to[6][3]_49 ,
    \next_switch_matrix_reg[0][0]_0 ,
    \next_switch_matrix_reg[0][0]_1 ,
    \next_switch_matrix_reg[4][0] ,
    \next_switch_matrix_reg[0][0]_2 ,
    \next_switch_matrix_reg[2][0] ,
    \next_switch_matrix_reg[6][0] ,
    \mem_reg[55] ,
    \mem_reg[55]_0 ,
    \G0.mem_reg[36]_0 ,
    \G0.mem_reg[37]_0 ,
    \G0.mem_reg[34]_0 ,
    \G0.mem_reg[34]_1 ,
    \ctrl_cycle_reg[1] ,
    \G0.mem_reg[37]_1 ,
    \G0.mem_reg[35]_0 ,
    \G0.mem_reg[34]_2 ,
    \G0.mem_reg[55]_0 ,
    \G0.mem_reg[55]_1 ,
    \G0.mem_reg[55]_2 ,
    \G0.mem_reg[36]_1 ,
    \G0.mem_reg[34]_3 ,
    \G0.mem_reg[55]_3 ,
    \G0.mem_reg[37]_2 ,
    \G0.mem_reg[36]_2 ,
    \G0.mem_reg[55]_4 ,
    \G0.mem_reg[55]_5 ,
    \pres_switch_matrix_reg[3][2] ,
    \pres_switch_matrix_reg[6][2] ,
    reset,
    To_NoC_3,
    clk);
  output [55:0]Q;
  output [1:0]\next_switch_matrix_reg[0][0] ;
  output [1:0]\port_wants_to[6][1]_52 ;
  output [0:0]D;
  output [0:0]\next_switch_matrix_reg[5][0] ;
  output [1:0]\port_wants_to[6][2]_51 ;
  output [0:0]E;
  output [0:0]\next_switch_matrix_reg[1][0] ;
  output [1:0]\port_wants_to[6][4]_48 ;
  output [1:0]\port_wants_to[6][3]_49 ;
  output \next_switch_matrix_reg[0][0]_0 ;
  output \next_switch_matrix_reg[0][0]_1 ;
  output [0:0]\next_switch_matrix_reg[4][0] ;
  output [0:0]\next_switch_matrix_reg[0][0]_2 ;
  output [0:0]\next_switch_matrix_reg[2][0] ;
  output [0:0]\next_switch_matrix_reg[6][0] ;
  output [55:0]\mem_reg[55] ;
  output [55:0]\mem_reg[55]_0 ;
  input \G0.mem_reg[36]_0 ;
  input \G0.mem_reg[37]_0 ;
  input \G0.mem_reg[34]_0 ;
  input \G0.mem_reg[34]_1 ;
  input [1:0]\ctrl_cycle_reg[1] ;
  input \G0.mem_reg[37]_1 ;
  input \G0.mem_reg[35]_0 ;
  input \G0.mem_reg[34]_2 ;
  input \G0.mem_reg[55]_0 ;
  input \G0.mem_reg[55]_1 ;
  input [0:0]\G0.mem_reg[55]_2 ;
  input [0:0]\G0.mem_reg[36]_1 ;
  input [0:0]\G0.mem_reg[34]_3 ;
  input [0:0]\G0.mem_reg[55]_3 ;
  input \G0.mem_reg[37]_2 ;
  input \G0.mem_reg[36]_2 ;
  input [55:0]\G0.mem_reg[55]_4 ;
  input [55:0]\G0.mem_reg[55]_5 ;
  input [2:0]\pres_switch_matrix_reg[3][2] ;
  input [2:0]\pres_switch_matrix_reg[6][2] ;
  input reset;
  input [55:0]To_NoC_3;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire \G0.mem_reg[34]_0 ;
  wire \G0.mem_reg[34]_1 ;
  wire \G0.mem_reg[34]_2 ;
  wire [0:0]\G0.mem_reg[34]_3 ;
  wire \G0.mem_reg[35]_0 ;
  wire \G0.mem_reg[36]_0 ;
  wire [0:0]\G0.mem_reg[36]_1 ;
  wire \G0.mem_reg[36]_2 ;
  wire \G0.mem_reg[37]_0 ;
  wire \G0.mem_reg[37]_1 ;
  wire \G0.mem_reg[37]_2 ;
  wire \G0.mem_reg[55]_0 ;
  wire \G0.mem_reg[55]_1 ;
  wire [0:0]\G0.mem_reg[55]_2 ;
  wire [0:0]\G0.mem_reg[55]_3 ;
  wire [55:0]\G0.mem_reg[55]_4 ;
  wire [55:0]\G0.mem_reg[55]_5 ;
  wire [55:0]Q;
  wire [55:0]To_NoC_3;
  wire clk;
  wire [1:0]\ctrl_cycle_reg[1] ;
  wire [55:0]\mem_reg[55] ;
  wire [55:0]\mem_reg[55]_0 ;
  wire \next_switch_matrix[0][0]_i_12__1_n_0 ;
  wire \next_switch_matrix[0][0]_i_13__0_n_0 ;
  wire \next_switch_matrix[0][0]_i_4__1_n_0 ;
  wire \next_switch_matrix[0][0]_i_5__2_n_0 ;
  wire \next_switch_matrix[0][0]_i_6__2_n_0 ;
  wire \next_switch_matrix[0][0]_i_8__1_n_0 ;
  wire \next_switch_matrix[1][0]_i_11__0_n_0 ;
  wire \next_switch_matrix[1][0]_i_14__0_n_0 ;
  wire \next_switch_matrix[1][0]_i_15_n_0 ;
  wire \next_switch_matrix[1][0]_i_16_n_0 ;
  wire \next_switch_matrix[1][0]_i_17_n_0 ;
  wire \next_switch_matrix[1][0]_i_18_n_0 ;
  wire \next_switch_matrix[1][0]_i_4__0_n_0 ;
  wire \next_switch_matrix[1][0]_i_5_n_0 ;
  wire \next_switch_matrix[1][0]_i_6__0_n_0 ;
  wire \next_switch_matrix[1][0]_i_7__0_n_0 ;
  wire \next_switch_matrix[1][0]_i_8__0_n_0 ;
  wire \next_switch_matrix[2][0]_i_2__2_n_0 ;
  wire \next_switch_matrix[3][0]_i_10__1_n_0 ;
  wire \next_switch_matrix[3][0]_i_11__0_n_0 ;
  wire \next_switch_matrix[3][0]_i_12_n_0 ;
  wire \next_switch_matrix[3][0]_i_13_n_0 ;
  wire \next_switch_matrix[3][0]_i_14_n_0 ;
  wire \next_switch_matrix[3][0]_i_15_n_0 ;
  wire \next_switch_matrix[3][0]_i_2__0_n_0 ;
  wire \next_switch_matrix[3][0]_i_3__0_n_0 ;
  wire \next_switch_matrix[3][0]_i_4_n_0 ;
  wire \next_switch_matrix[3][0]_i_5__1_n_0 ;
  wire \next_switch_matrix[3][0]_i_6__0_n_0 ;
  wire \next_switch_matrix[3][0]_i_7_n_0 ;
  wire \next_switch_matrix[3][0]_i_9__0_n_0 ;
  wire \next_switch_matrix[4][0]_i_2_n_0 ;
  wire \next_switch_matrix[5][0]_i_10_n_0 ;
  wire \next_switch_matrix[5][0]_i_11_n_0 ;
  wire \next_switch_matrix[5][0]_i_12_n_0 ;
  wire \next_switch_matrix[5][0]_i_13_n_0 ;
  wire \next_switch_matrix[5][0]_i_16_n_0 ;
  wire \next_switch_matrix[5][0]_i_17_n_0 ;
  wire \next_switch_matrix[5][0]_i_18_n_0 ;
  wire \next_switch_matrix[5][0]_i_19_n_0 ;
  wire \next_switch_matrix[5][0]_i_20_n_0 ;
  wire \next_switch_matrix[5][0]_i_21_n_0 ;
  wire \next_switch_matrix[5][0]_i_23_n_0 ;
  wire \next_switch_matrix[5][0]_i_24_n_0 ;
  wire \next_switch_matrix[5][0]_i_25_n_0 ;
  wire \next_switch_matrix[5][0]_i_27_n_0 ;
  wire \next_switch_matrix[5][0]_i_29_n_0 ;
  wire \next_switch_matrix[5][0]_i_2__1_n_0 ;
  wire \next_switch_matrix[5][0]_i_3_n_0 ;
  wire \next_switch_matrix[5][0]_i_4__0_n_0 ;
  wire \next_switch_matrix[5][0]_i_9_n_0 ;
  wire [1:0]\next_switch_matrix_reg[0][0] ;
  wire \next_switch_matrix_reg[0][0]_0 ;
  wire \next_switch_matrix_reg[0][0]_1 ;
  wire [0:0]\next_switch_matrix_reg[0][0]_2 ;
  wire [0:0]\next_switch_matrix_reg[1][0] ;
  wire [0:0]\next_switch_matrix_reg[2][0] ;
  wire [0:0]\next_switch_matrix_reg[4][0] ;
  wire [0:0]\next_switch_matrix_reg[5][0] ;
  wire [0:0]\next_switch_matrix_reg[6][0] ;
  wire [1:1]\port_wants_to[6][0]_50 ;
  wire [1:0]\port_wants_to[6][1]_52 ;
  wire [1:0]\port_wants_to[6][2]_51 ;
  wire [1:0]\port_wants_to[6][3]_49 ;
  wire [1:0]\port_wants_to[6][4]_48 ;
  wire [2:0]\pres_switch_matrix_reg[3][2] ;
  wire [2:0]\pres_switch_matrix_reg[6][2] ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_3[9]),
        .Q(Q[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[0]_i_1__6 
       (.I0(Q[0]),
        .I1(\G0.mem_reg[55]_4 [0]),
        .I2(\G0.mem_reg[55]_5 [0]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [0]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[0]_i_1__7 
       (.I0(Q[0]),
        .I1(\G0.mem_reg[55]_4 [0]),
        .I2(\G0.mem_reg[55]_5 [0]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [0]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[10]_i_1__6 
       (.I0(Q[10]),
        .I1(\G0.mem_reg[55]_4 [10]),
        .I2(\G0.mem_reg[55]_5 [10]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [10]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[10]_i_1__7 
       (.I0(Q[10]),
        .I1(\G0.mem_reg[55]_4 [10]),
        .I2(\G0.mem_reg[55]_5 [10]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [10]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[11]_i_1__6 
       (.I0(Q[11]),
        .I1(\G0.mem_reg[55]_4 [11]),
        .I2(\G0.mem_reg[55]_5 [11]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [11]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[11]_i_1__7 
       (.I0(Q[11]),
        .I1(\G0.mem_reg[55]_4 [11]),
        .I2(\G0.mem_reg[55]_5 [11]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [11]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[12]_i_1__6 
       (.I0(Q[12]),
        .I1(\G0.mem_reg[55]_4 [12]),
        .I2(\G0.mem_reg[55]_5 [12]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [12]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[12]_i_1__7 
       (.I0(Q[12]),
        .I1(\G0.mem_reg[55]_4 [12]),
        .I2(\G0.mem_reg[55]_5 [12]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [12]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[13]_i_1__6 
       (.I0(Q[13]),
        .I1(\G0.mem_reg[55]_4 [13]),
        .I2(\G0.mem_reg[55]_5 [13]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [13]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[13]_i_1__7 
       (.I0(Q[13]),
        .I1(\G0.mem_reg[55]_4 [13]),
        .I2(\G0.mem_reg[55]_5 [13]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [13]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[14]_i_1__6 
       (.I0(Q[14]),
        .I1(\G0.mem_reg[55]_4 [14]),
        .I2(\G0.mem_reg[55]_5 [14]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [14]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[14]_i_1__7 
       (.I0(Q[14]),
        .I1(\G0.mem_reg[55]_4 [14]),
        .I2(\G0.mem_reg[55]_5 [14]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [14]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[15]_i_1__6 
       (.I0(Q[15]),
        .I1(\G0.mem_reg[55]_4 [15]),
        .I2(\G0.mem_reg[55]_5 [15]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [15]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[15]_i_1__7 
       (.I0(Q[15]),
        .I1(\G0.mem_reg[55]_4 [15]),
        .I2(\G0.mem_reg[55]_5 [15]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [15]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[16]_i_1__6 
       (.I0(Q[16]),
        .I1(\G0.mem_reg[55]_4 [16]),
        .I2(\G0.mem_reg[55]_5 [16]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [16]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[16]_i_1__7 
       (.I0(Q[16]),
        .I1(\G0.mem_reg[55]_4 [16]),
        .I2(\G0.mem_reg[55]_5 [16]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [16]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[17]_i_1__6 
       (.I0(Q[17]),
        .I1(\G0.mem_reg[55]_4 [17]),
        .I2(\G0.mem_reg[55]_5 [17]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [17]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[17]_i_1__7 
       (.I0(Q[17]),
        .I1(\G0.mem_reg[55]_4 [17]),
        .I2(\G0.mem_reg[55]_5 [17]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [17]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[18]_i_1__6 
       (.I0(Q[18]),
        .I1(\G0.mem_reg[55]_4 [18]),
        .I2(\G0.mem_reg[55]_5 [18]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [18]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[18]_i_1__7 
       (.I0(Q[18]),
        .I1(\G0.mem_reg[55]_4 [18]),
        .I2(\G0.mem_reg[55]_5 [18]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [18]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[19]_i_1__6 
       (.I0(Q[19]),
        .I1(\G0.mem_reg[55]_4 [19]),
        .I2(\G0.mem_reg[55]_5 [19]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [19]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[19]_i_1__7 
       (.I0(Q[19]),
        .I1(\G0.mem_reg[55]_4 [19]),
        .I2(\G0.mem_reg[55]_5 [19]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [19]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[1]_i_1__6 
       (.I0(Q[1]),
        .I1(\G0.mem_reg[55]_4 [1]),
        .I2(\G0.mem_reg[55]_5 [1]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [1]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[1]_i_1__7 
       (.I0(Q[1]),
        .I1(\G0.mem_reg[55]_4 [1]),
        .I2(\G0.mem_reg[55]_5 [1]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [1]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[20]_i_1__6 
       (.I0(Q[20]),
        .I1(\G0.mem_reg[55]_4 [20]),
        .I2(\G0.mem_reg[55]_5 [20]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [20]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[20]_i_1__7 
       (.I0(Q[20]),
        .I1(\G0.mem_reg[55]_4 [20]),
        .I2(\G0.mem_reg[55]_5 [20]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [20]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[21]_i_1__6 
       (.I0(Q[21]),
        .I1(\G0.mem_reg[55]_4 [21]),
        .I2(\G0.mem_reg[55]_5 [21]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [21]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[21]_i_1__7 
       (.I0(Q[21]),
        .I1(\G0.mem_reg[55]_4 [21]),
        .I2(\G0.mem_reg[55]_5 [21]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [21]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[22]_i_1__6 
       (.I0(Q[22]),
        .I1(\G0.mem_reg[55]_4 [22]),
        .I2(\G0.mem_reg[55]_5 [22]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [22]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[22]_i_1__7 
       (.I0(Q[22]),
        .I1(\G0.mem_reg[55]_4 [22]),
        .I2(\G0.mem_reg[55]_5 [22]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [22]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[23]_i_1__6 
       (.I0(Q[23]),
        .I1(\G0.mem_reg[55]_4 [23]),
        .I2(\G0.mem_reg[55]_5 [23]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [23]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[23]_i_1__7 
       (.I0(Q[23]),
        .I1(\G0.mem_reg[55]_4 [23]),
        .I2(\G0.mem_reg[55]_5 [23]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [23]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[24]_i_1__6 
       (.I0(Q[24]),
        .I1(\G0.mem_reg[55]_4 [24]),
        .I2(\G0.mem_reg[55]_5 [24]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [24]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[24]_i_1__7 
       (.I0(Q[24]),
        .I1(\G0.mem_reg[55]_4 [24]),
        .I2(\G0.mem_reg[55]_5 [24]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [24]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[25]_i_1__6 
       (.I0(Q[25]),
        .I1(\G0.mem_reg[55]_4 [25]),
        .I2(\G0.mem_reg[55]_5 [25]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [25]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[25]_i_1__7 
       (.I0(Q[25]),
        .I1(\G0.mem_reg[55]_4 [25]),
        .I2(\G0.mem_reg[55]_5 [25]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [25]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[26]_i_1__6 
       (.I0(Q[26]),
        .I1(\G0.mem_reg[55]_4 [26]),
        .I2(\G0.mem_reg[55]_5 [26]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [26]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[26]_i_1__7 
       (.I0(Q[26]),
        .I1(\G0.mem_reg[55]_4 [26]),
        .I2(\G0.mem_reg[55]_5 [26]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [26]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[27]_i_1__6 
       (.I0(Q[27]),
        .I1(\G0.mem_reg[55]_4 [27]),
        .I2(\G0.mem_reg[55]_5 [27]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [27]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[27]_i_1__7 
       (.I0(Q[27]),
        .I1(\G0.mem_reg[55]_4 [27]),
        .I2(\G0.mem_reg[55]_5 [27]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [27]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[28]_i_1__6 
       (.I0(Q[28]),
        .I1(\G0.mem_reg[55]_4 [28]),
        .I2(\G0.mem_reg[55]_5 [28]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [28]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[28]_i_1__7 
       (.I0(Q[28]),
        .I1(\G0.mem_reg[55]_4 [28]),
        .I2(\G0.mem_reg[55]_5 [28]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [28]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[29]_i_1__6 
       (.I0(Q[29]),
        .I1(\G0.mem_reg[55]_4 [29]),
        .I2(\G0.mem_reg[55]_5 [29]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [29]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[29]_i_1__7 
       (.I0(Q[29]),
        .I1(\G0.mem_reg[55]_4 [29]),
        .I2(\G0.mem_reg[55]_5 [29]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [29]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[2]_i_1__6 
       (.I0(Q[2]),
        .I1(\G0.mem_reg[55]_4 [2]),
        .I2(\G0.mem_reg[55]_5 [2]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [2]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[2]_i_1__7 
       (.I0(Q[2]),
        .I1(\G0.mem_reg[55]_4 [2]),
        .I2(\G0.mem_reg[55]_5 [2]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [2]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[30]_i_1__6 
       (.I0(Q[30]),
        .I1(\G0.mem_reg[55]_4 [30]),
        .I2(\G0.mem_reg[55]_5 [30]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [30]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[30]_i_1__7 
       (.I0(Q[30]),
        .I1(\G0.mem_reg[55]_4 [30]),
        .I2(\G0.mem_reg[55]_5 [30]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [30]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[31]_i_1__6 
       (.I0(Q[31]),
        .I1(\G0.mem_reg[55]_4 [31]),
        .I2(\G0.mem_reg[55]_5 [31]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [31]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[31]_i_1__7 
       (.I0(Q[31]),
        .I1(\G0.mem_reg[55]_4 [31]),
        .I2(\G0.mem_reg[55]_5 [31]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [31]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[32]_i_1__6 
       (.I0(Q[32]),
        .I1(\G0.mem_reg[55]_4 [32]),
        .I2(\G0.mem_reg[55]_5 [32]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [32]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[32]_i_1__7 
       (.I0(Q[32]),
        .I1(\G0.mem_reg[55]_4 [32]),
        .I2(\G0.mem_reg[55]_5 [32]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [32]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[33]_i_1__6 
       (.I0(Q[33]),
        .I1(\G0.mem_reg[55]_4 [33]),
        .I2(\G0.mem_reg[55]_5 [33]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [33]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[33]_i_1__7 
       (.I0(Q[33]),
        .I1(\G0.mem_reg[55]_4 [33]),
        .I2(\G0.mem_reg[55]_5 [33]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [33]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[34]_i_1__6 
       (.I0(Q[34]),
        .I1(\G0.mem_reg[55]_4 [34]),
        .I2(\G0.mem_reg[55]_5 [34]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [34]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[34]_i_1__7 
       (.I0(Q[34]),
        .I1(\G0.mem_reg[55]_4 [34]),
        .I2(\G0.mem_reg[55]_5 [34]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [34]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[35]_i_1__6 
       (.I0(Q[35]),
        .I1(\G0.mem_reg[55]_4 [35]),
        .I2(\G0.mem_reg[55]_5 [35]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [35]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[35]_i_1__7 
       (.I0(Q[35]),
        .I1(\G0.mem_reg[55]_4 [35]),
        .I2(\G0.mem_reg[55]_5 [35]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [35]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[36]_i_1__6 
       (.I0(Q[36]),
        .I1(\G0.mem_reg[55]_4 [36]),
        .I2(\G0.mem_reg[55]_5 [36]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [36]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[36]_i_1__7 
       (.I0(Q[36]),
        .I1(\G0.mem_reg[55]_4 [36]),
        .I2(\G0.mem_reg[55]_5 [36]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [36]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[37]_i_1__6 
       (.I0(Q[37]),
        .I1(\G0.mem_reg[55]_4 [37]),
        .I2(\G0.mem_reg[55]_5 [37]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [37]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[37]_i_1__7 
       (.I0(Q[37]),
        .I1(\G0.mem_reg[55]_4 [37]),
        .I2(\G0.mem_reg[55]_5 [37]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [37]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[38]_i_1__6 
       (.I0(Q[38]),
        .I1(\G0.mem_reg[55]_4 [38]),
        .I2(\G0.mem_reg[55]_5 [38]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [38]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[38]_i_1__7 
       (.I0(Q[38]),
        .I1(\G0.mem_reg[55]_4 [38]),
        .I2(\G0.mem_reg[55]_5 [38]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [38]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[39]_i_1__6 
       (.I0(Q[39]),
        .I1(\G0.mem_reg[55]_4 [39]),
        .I2(\G0.mem_reg[55]_5 [39]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [39]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[39]_i_1__7 
       (.I0(Q[39]),
        .I1(\G0.mem_reg[55]_4 [39]),
        .I2(\G0.mem_reg[55]_5 [39]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [39]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[3]_i_1__6 
       (.I0(Q[3]),
        .I1(\G0.mem_reg[55]_4 [3]),
        .I2(\G0.mem_reg[55]_5 [3]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [3]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[3]_i_1__7 
       (.I0(Q[3]),
        .I1(\G0.mem_reg[55]_4 [3]),
        .I2(\G0.mem_reg[55]_5 [3]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [3]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[40]_i_1__6 
       (.I0(Q[40]),
        .I1(\G0.mem_reg[55]_4 [40]),
        .I2(\G0.mem_reg[55]_5 [40]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [40]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[40]_i_1__7 
       (.I0(Q[40]),
        .I1(\G0.mem_reg[55]_4 [40]),
        .I2(\G0.mem_reg[55]_5 [40]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [40]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[41]_i_1__6 
       (.I0(Q[41]),
        .I1(\G0.mem_reg[55]_4 [41]),
        .I2(\G0.mem_reg[55]_5 [41]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [41]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[41]_i_1__7 
       (.I0(Q[41]),
        .I1(\G0.mem_reg[55]_4 [41]),
        .I2(\G0.mem_reg[55]_5 [41]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [41]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[42]_i_1__6 
       (.I0(Q[42]),
        .I1(\G0.mem_reg[55]_4 [42]),
        .I2(\G0.mem_reg[55]_5 [42]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [42]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[42]_i_1__7 
       (.I0(Q[42]),
        .I1(\G0.mem_reg[55]_4 [42]),
        .I2(\G0.mem_reg[55]_5 [42]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [42]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[43]_i_1__6 
       (.I0(Q[43]),
        .I1(\G0.mem_reg[55]_4 [43]),
        .I2(\G0.mem_reg[55]_5 [43]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [43]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[43]_i_1__7 
       (.I0(Q[43]),
        .I1(\G0.mem_reg[55]_4 [43]),
        .I2(\G0.mem_reg[55]_5 [43]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [43]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[44]_i_1__6 
       (.I0(Q[44]),
        .I1(\G0.mem_reg[55]_4 [44]),
        .I2(\G0.mem_reg[55]_5 [44]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [44]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[44]_i_1__7 
       (.I0(Q[44]),
        .I1(\G0.mem_reg[55]_4 [44]),
        .I2(\G0.mem_reg[55]_5 [44]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [44]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[45]_i_1__6 
       (.I0(Q[45]),
        .I1(\G0.mem_reg[55]_4 [45]),
        .I2(\G0.mem_reg[55]_5 [45]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [45]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[45]_i_1__7 
       (.I0(Q[45]),
        .I1(\G0.mem_reg[55]_4 [45]),
        .I2(\G0.mem_reg[55]_5 [45]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [45]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[46]_i_1__6 
       (.I0(Q[46]),
        .I1(\G0.mem_reg[55]_4 [46]),
        .I2(\G0.mem_reg[55]_5 [46]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [46]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[46]_i_1__7 
       (.I0(Q[46]),
        .I1(\G0.mem_reg[55]_4 [46]),
        .I2(\G0.mem_reg[55]_5 [46]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [46]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[47]_i_1__6 
       (.I0(Q[47]),
        .I1(\G0.mem_reg[55]_4 [47]),
        .I2(\G0.mem_reg[55]_5 [47]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [47]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[47]_i_1__7 
       (.I0(Q[47]),
        .I1(\G0.mem_reg[55]_4 [47]),
        .I2(\G0.mem_reg[55]_5 [47]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [47]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[48]_i_1__6 
       (.I0(Q[48]),
        .I1(\G0.mem_reg[55]_4 [48]),
        .I2(\G0.mem_reg[55]_5 [48]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [48]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[48]_i_1__7 
       (.I0(Q[48]),
        .I1(\G0.mem_reg[55]_4 [48]),
        .I2(\G0.mem_reg[55]_5 [48]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [48]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[49]_i_1__6 
       (.I0(Q[49]),
        .I1(\G0.mem_reg[55]_4 [49]),
        .I2(\G0.mem_reg[55]_5 [49]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [49]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[49]_i_1__7 
       (.I0(Q[49]),
        .I1(\G0.mem_reg[55]_4 [49]),
        .I2(\G0.mem_reg[55]_5 [49]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [49]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[4]_i_1__6 
       (.I0(Q[4]),
        .I1(\G0.mem_reg[55]_4 [4]),
        .I2(\G0.mem_reg[55]_5 [4]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [4]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[4]_i_1__7 
       (.I0(Q[4]),
        .I1(\G0.mem_reg[55]_4 [4]),
        .I2(\G0.mem_reg[55]_5 [4]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [4]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[50]_i_1__6 
       (.I0(Q[50]),
        .I1(\G0.mem_reg[55]_4 [50]),
        .I2(\G0.mem_reg[55]_5 [50]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [50]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[50]_i_1__7 
       (.I0(Q[50]),
        .I1(\G0.mem_reg[55]_4 [50]),
        .I2(\G0.mem_reg[55]_5 [50]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [50]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[51]_i_1__6 
       (.I0(Q[51]),
        .I1(\G0.mem_reg[55]_4 [51]),
        .I2(\G0.mem_reg[55]_5 [51]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [51]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[51]_i_1__7 
       (.I0(Q[51]),
        .I1(\G0.mem_reg[55]_4 [51]),
        .I2(\G0.mem_reg[55]_5 [51]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [51]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[52]_i_1__6 
       (.I0(Q[52]),
        .I1(\G0.mem_reg[55]_4 [52]),
        .I2(\G0.mem_reg[55]_5 [52]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [52]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[52]_i_1__7 
       (.I0(Q[52]),
        .I1(\G0.mem_reg[55]_4 [52]),
        .I2(\G0.mem_reg[55]_5 [52]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [52]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[53]_i_1__6 
       (.I0(Q[53]),
        .I1(\G0.mem_reg[55]_4 [53]),
        .I2(\G0.mem_reg[55]_5 [53]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [53]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[53]_i_1__7 
       (.I0(Q[53]),
        .I1(\G0.mem_reg[55]_4 [53]),
        .I2(\G0.mem_reg[55]_5 [53]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [53]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[54]_i_1__6 
       (.I0(Q[54]),
        .I1(\G0.mem_reg[55]_4 [54]),
        .I2(\G0.mem_reg[55]_5 [54]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [54]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[54]_i_1__7 
       (.I0(Q[54]),
        .I1(\G0.mem_reg[55]_4 [54]),
        .I2(\G0.mem_reg[55]_5 [54]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [54]));
  LUT2 #(
    .INIT(4'h8)) 
    \mem[55]_i_1__5 
       (.I0(\ctrl_cycle_reg[1] [0]),
        .I1(\ctrl_cycle_reg[1] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[55]_i_1__7 
       (.I0(Q[55]),
        .I1(\G0.mem_reg[55]_4 [55]),
        .I2(\G0.mem_reg[55]_5 [55]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [55]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[55]_i_2__1 
       (.I0(Q[55]),
        .I1(\G0.mem_reg[55]_4 [55]),
        .I2(\G0.mem_reg[55]_5 [55]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [55]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[5]_i_1__6 
       (.I0(Q[5]),
        .I1(\G0.mem_reg[55]_4 [5]),
        .I2(\G0.mem_reg[55]_5 [5]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [5]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[5]_i_1__7 
       (.I0(Q[5]),
        .I1(\G0.mem_reg[55]_4 [5]),
        .I2(\G0.mem_reg[55]_5 [5]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [5]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[6]_i_1__6 
       (.I0(Q[6]),
        .I1(\G0.mem_reg[55]_4 [6]),
        .I2(\G0.mem_reg[55]_5 [6]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [6]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[6]_i_1__7 
       (.I0(Q[6]),
        .I1(\G0.mem_reg[55]_4 [6]),
        .I2(\G0.mem_reg[55]_5 [6]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [6]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[7]_i_1__6 
       (.I0(Q[7]),
        .I1(\G0.mem_reg[55]_4 [7]),
        .I2(\G0.mem_reg[55]_5 [7]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [7]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[7]_i_1__7 
       (.I0(Q[7]),
        .I1(\G0.mem_reg[55]_4 [7]),
        .I2(\G0.mem_reg[55]_5 [7]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [7]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[8]_i_1__6 
       (.I0(Q[8]),
        .I1(\G0.mem_reg[55]_4 [8]),
        .I2(\G0.mem_reg[55]_5 [8]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [8]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[8]_i_1__7 
       (.I0(Q[8]),
        .I1(\G0.mem_reg[55]_4 [8]),
        .I2(\G0.mem_reg[55]_5 [8]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [8]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[9]_i_1__6 
       (.I0(Q[9]),
        .I1(\G0.mem_reg[55]_4 [9]),
        .I2(\G0.mem_reg[55]_5 [9]),
        .I3(\pres_switch_matrix_reg[3][2] [2]),
        .I4(\pres_switch_matrix_reg[3][2] [0]),
        .I5(\pres_switch_matrix_reg[3][2] [1]),
        .O(\mem_reg[55] [9]));
  LUT6 #(
    .INIT(64'h00F0AA0000CC0000)) 
    \mem[9]_i_1__7 
       (.I0(Q[9]),
        .I1(\G0.mem_reg[55]_4 [9]),
        .I2(\G0.mem_reg[55]_5 [9]),
        .I3(\pres_switch_matrix_reg[6][2] [2]),
        .I4(\pres_switch_matrix_reg[6][2] [0]),
        .I5(\pres_switch_matrix_reg[6][2] [1]),
        .O(\mem_reg[55]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h001F0000)) 
    \next_switch_matrix[0][0]_i_10__1 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(Q[55]),
        .O(\next_switch_matrix_reg[0][0]_1 ));
  LUT6 #(
    .INIT(64'h0000FFFFFDFFFFFF)) 
    \next_switch_matrix[0][0]_i_12__1 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(\next_switch_matrix_reg[0][0] [0]),
        .I4(\next_switch_matrix_reg[0][0] [1]),
        .I5(\G0.mem_reg[36]_1 ),
        .O(\next_switch_matrix[0][0]_i_12__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h001000F0)) 
    \next_switch_matrix[0][0]_i_13__0 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(Q[55]),
        .I3(Q[37]),
        .I4(Q[36]),
        .O(\next_switch_matrix[0][0]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \next_switch_matrix[0][0]_i_1__1 
       (.I0(\next_switch_matrix_reg[0][0] [0]),
        .I1(\next_switch_matrix_reg[0][0] [1]),
        .I2(\next_switch_matrix[0][0]_i_4__1_n_0 ),
        .I3(Q[55]),
        .I4(Q[37]),
        .I5(Q[36]),
        .O(\next_switch_matrix_reg[0][0]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \next_switch_matrix[0][0]_i_2__0 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I3(Q[55]),
        .I4(Q[37]),
        .I5(Q[36]),
        .O(\next_switch_matrix_reg[0][0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFDFDFDDD)) 
    \next_switch_matrix[0][0]_i_3__0 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(Q[34]),
        .I4(Q[35]),
        .O(\next_switch_matrix_reg[0][0] [1]));
  LUT6 #(
    .INIT(64'h4F4444444F444F44)) 
    \next_switch_matrix[0][0]_i_4__1 
       (.I0(\next_switch_matrix[0][0]_i_6__2_n_0 ),
        .I1(\G0.mem_reg[55]_1 ),
        .I2(\next_switch_matrix[0][0]_i_8__1_n_0 ),
        .I3(\next_switch_matrix_reg[0][0]_0 ),
        .I4(\G0.mem_reg[55]_0 ),
        .I5(\next_switch_matrix_reg[0][0]_1 ),
        .O(\next_switch_matrix[0][0]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[0][0]_i_5__2 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\next_switch_matrix[0][0]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'h555554FF55555555)) 
    \next_switch_matrix[0][0]_i_6__2 
       (.I0(\G0.mem_reg[36]_0 ),
        .I1(Q[34]),
        .I2(Q[35]),
        .I3(Q[36]),
        .I4(Q[37]),
        .I5(Q[55]),
        .O(\next_switch_matrix[0][0]_i_6__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hBABB)) 
    \next_switch_matrix[0][0]_i_8__1 
       (.I0(\port_wants_to[6][0]_50 ),
        .I1(\next_switch_matrix[0][0]_i_12__1_n_0 ),
        .I2(\G0.mem_reg[37]_0 ),
        .I3(\next_switch_matrix[0][0]_i_13__0_n_0 ),
        .O(\next_switch_matrix[0][0]_i_8__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \next_switch_matrix[0][0]_i_9__1 
       (.I0(\next_switch_matrix_reg[0][0] [0]),
        .I1(\next_switch_matrix_reg[0][0] [1]),
        .I2(\G0.mem_reg[55]_2 ),
        .O(\next_switch_matrix_reg[0][0]_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \next_switch_matrix[1][0]_i_11__0 
       (.I0(\next_switch_matrix[1][0]_i_16_n_0 ),
        .I1(\next_switch_matrix[5][0]_i_3_n_0 ),
        .I2(\next_switch_matrix[5][0]_i_4__0_n_0 ),
        .I3(\port_wants_to[6][2]_51 [0]),
        .I4(\port_wants_to[6][2]_51 [1]),
        .O(\next_switch_matrix[1][0]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h212F1011FFFFFFFF)) 
    \next_switch_matrix[1][0]_i_12__0 
       (.I0(Q[34]),
        .I1(Q[35]),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I5(Q[55]),
        .O(\port_wants_to[6][3]_49 [1]));
  LUT6 #(
    .INIT(64'h4F5F4F5FFFFF6F7F)) 
    \next_switch_matrix[1][0]_i_13 
       (.I0(Q[37]),
        .I1(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I2(Q[55]),
        .I3(Q[36]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(\port_wants_to[6][3]_49 [0]));
  LUT6 #(
    .INIT(64'h44FF11FF1FFF01FF)) 
    \next_switch_matrix[1][0]_i_14__0 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(Q[36]),
        .I3(Q[55]),
        .I4(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I5(Q[37]),
        .O(\next_switch_matrix[1][0]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'h888A8888AAAAAAAA)) 
    \next_switch_matrix[1][0]_i_15 
       (.I0(\port_wants_to[6][4]_48 [1]),
        .I1(\next_switch_matrix[2][0]_i_2__2_n_0 ),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(Q[55]),
        .I5(\next_switch_matrix[1][0]_i_17_n_0 ),
        .O(\next_switch_matrix[1][0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0002FF8200020002)) 
    \next_switch_matrix[1][0]_i_16 
       (.I0(\next_switch_matrix_reg[0][0] [0]),
        .I1(\port_wants_to[6][0]_50 ),
        .I2(\next_switch_matrix_reg[0][0] [1]),
        .I3(\next_switch_matrix[0][0]_i_4__1_n_0 ),
        .I4(\next_switch_matrix[1][0]_i_18_n_0 ),
        .I5(\next_switch_matrix[5][0]_i_13_n_0 ),
        .O(\next_switch_matrix[1][0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \next_switch_matrix[1][0]_i_17 
       (.I0(Q[36]),
        .I1(Q[37]),
        .I2(Q[55]),
        .I3(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(\next_switch_matrix[1][0]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \next_switch_matrix[1][0]_i_18 
       (.I0(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I1(Q[37]),
        .I2(Q[34]),
        .I3(Q[35]),
        .I4(Q[55]),
        .O(\next_switch_matrix[1][0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \next_switch_matrix[1][0]_i_1__0 
       (.I0(\port_wants_to[6][4]_48 [0]),
        .I1(\port_wants_to[6][4]_48 [1]),
        .I2(\next_switch_matrix[1][0]_i_4__0_n_0 ),
        .I3(\next_switch_matrix[1][0]_i_5_n_0 ),
        .O(\next_switch_matrix_reg[1][0] ));
  LUT6 #(
    .INIT(64'hDFFFDFDFDFFFDFFF)) 
    \next_switch_matrix[1][0]_i_2__1 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I4(Q[35]),
        .I5(Q[34]),
        .O(\port_wants_to[6][4]_48 [0]));
  LUT6 #(
    .INIT(64'h555555F75FF75FFF)) 
    \next_switch_matrix[1][0]_i_3__0 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(Q[35]),
        .I4(Q[34]),
        .I5(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .O(\port_wants_to[6][4]_48 [1]));
  LUT5 #(
    .INIT(32'hFFAEFFFF)) 
    \next_switch_matrix[1][0]_i_4__0 
       (.I0(\next_switch_matrix[1][0]_i_6__0_n_0 ),
        .I1(\next_switch_matrix[1][0]_i_7__0_n_0 ),
        .I2(\next_switch_matrix[1][0]_i_8__0_n_0 ),
        .I3(\G0.mem_reg[37]_2 ),
        .I4(\G0.mem_reg[36]_2 ),
        .O(\next_switch_matrix[1][0]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \next_switch_matrix[1][0]_i_5 
       (.I0(\next_switch_matrix[1][0]_i_11__0_n_0 ),
        .I1(\next_switch_matrix[3][0]_i_3__0_n_0 ),
        .I2(\next_switch_matrix[3][0]_i_5__1_n_0 ),
        .I3(\port_wants_to[6][3]_49 [1]),
        .I4(\port_wants_to[6][3]_49 [0]),
        .O(\next_switch_matrix[1][0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \next_switch_matrix[1][0]_i_6__0 
       (.I0(\next_switch_matrix[3][0]_i_5__1_n_0 ),
        .I1(\next_switch_matrix[3][0]_i_3__0_n_0 ),
        .I2(\next_switch_matrix[1][0]_i_14__0_n_0 ),
        .O(\next_switch_matrix[1][0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAB)) 
    \next_switch_matrix[1][0]_i_7__0 
       (.I0(\port_wants_to[6][4]_48 [0]),
        .I1(\port_wants_to[6][3]_49 [0]),
        .I2(\port_wants_to[6][3]_49 [1]),
        .I3(\next_switch_matrix[3][0]_i_5__1_n_0 ),
        .I4(\next_switch_matrix[3][0]_i_3__0_n_0 ),
        .I5(\next_switch_matrix[1][0]_i_11__0_n_0 ),
        .O(\next_switch_matrix[1][0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55540000)) 
    \next_switch_matrix[1][0]_i_8__0 
       (.I0(\next_switch_matrix[3][0]_i_2__0_n_0 ),
        .I1(\next_switch_matrix[3][0]_i_3__0_n_0 ),
        .I2(\next_switch_matrix[3][0]_i_4_n_0 ),
        .I3(\next_switch_matrix[3][0]_i_5__1_n_0 ),
        .I4(\next_switch_matrix[3][0]_i_6__0_n_0 ),
        .I5(\next_switch_matrix[1][0]_i_15_n_0 ),
        .O(\next_switch_matrix[1][0]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEFE)) 
    \next_switch_matrix[2][0]_i_1__1 
       (.I0(\next_switch_matrix_reg[0][0] [0]),
        .I1(\next_switch_matrix_reg[0][0] [1]),
        .I2(Q[55]),
        .I3(Q[37]),
        .I4(Q[36]),
        .I5(\next_switch_matrix[2][0]_i_2__2_n_0 ),
        .O(\next_switch_matrix_reg[2][0] ));
  LUT5 #(
    .INIT(32'h0000FF47)) 
    \next_switch_matrix[2][0]_i_2__2 
       (.I0(\G0.mem_reg[34]_3 ),
        .I1(\next_switch_matrix_reg[0][0] [0]),
        .I2(\G0.mem_reg[55]_3 ),
        .I3(\next_switch_matrix_reg[0][0] [1]),
        .I4(\next_switch_matrix[0][0]_i_6__2_n_0 ),
        .O(\next_switch_matrix[2][0]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8B8B8B8B8B8)) 
    \next_switch_matrix[3][0]_i_10__1 
       (.I0(\next_switch_matrix[4][0]_i_2_n_0 ),
        .I1(\next_switch_matrix[1][0]_i_14__0_n_0 ),
        .I2(\next_switch_matrix[5][0]_i_2__1_n_0 ),
        .I3(\next_switch_matrix[5][0]_i_3_n_0 ),
        .I4(\next_switch_matrix[3][0]_i_15_n_0 ),
        .I5(\port_wants_to[6][2]_51 [1]),
        .O(\next_switch_matrix[3][0]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDDFF3CFFFFFF)) 
    \next_switch_matrix[3][0]_i_11__0 
       (.I0(Q[36]),
        .I1(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I2(Q[34]),
        .I3(Q[55]),
        .I4(Q[37]),
        .I5(Q[35]),
        .O(\next_switch_matrix[3][0]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFFF2FFFF)) 
    \next_switch_matrix[3][0]_i_12 
       (.I0(Q[36]),
        .I1(Q[37]),
        .I2(Q[34]),
        .I3(Q[35]),
        .I4(Q[55]),
        .O(\next_switch_matrix[3][0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \next_switch_matrix[3][0]_i_13 
       (.I0(Q[36]),
        .I1(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I2(Q[55]),
        .I3(Q[37]),
        .I4(Q[35]),
        .O(\next_switch_matrix[3][0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h888A8888AAAAAAAA)) 
    \next_switch_matrix[3][0]_i_14 
       (.I0(\port_wants_to[6][3]_49 [1]),
        .I1(\next_switch_matrix[2][0]_i_2__2_n_0 ),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(Q[55]),
        .I5(\next_switch_matrix[1][0]_i_17_n_0 ),
        .O(\next_switch_matrix[3][0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009000)) 
    \next_switch_matrix[3][0]_i_15 
       (.I0(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I1(Q[34]),
        .I2(Q[55]),
        .I3(Q[37]),
        .I4(Q[35]),
        .I5(\next_switch_matrix[5][0]_i_4__0_n_0 ),
        .O(\next_switch_matrix[3][0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5554555400005554)) 
    \next_switch_matrix[3][0]_i_1__0 
       (.I0(\next_switch_matrix[3][0]_i_2__0_n_0 ),
        .I1(\next_switch_matrix[3][0]_i_3__0_n_0 ),
        .I2(\next_switch_matrix[3][0]_i_4_n_0 ),
        .I3(\next_switch_matrix[3][0]_i_5__1_n_0 ),
        .I4(\next_switch_matrix[3][0]_i_6__0_n_0 ),
        .I5(\next_switch_matrix[1][0]_i_4__0_n_0 ),
        .O(D));
  LUT5 #(
    .INIT(32'hAAAEAAAA)) 
    \next_switch_matrix[3][0]_i_2__0 
       (.I0(\next_switch_matrix[3][0]_i_7_n_0 ),
        .I1(\port_wants_to[6][2]_51 [0]),
        .I2(\port_wants_to[6][2]_51 [1]),
        .I3(\next_switch_matrix[5][0]_i_4__0_n_0 ),
        .I4(\next_switch_matrix[5][0]_i_3_n_0 ),
        .O(\next_switch_matrix[3][0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBFFBBBABBAABBBA)) 
    \next_switch_matrix[3][0]_i_3__0 
       (.I0(\G0.mem_reg[37]_1 ),
        .I1(\next_switch_matrix[3][0]_i_9__0_n_0 ),
        .I2(\next_switch_matrix[1][0]_i_11__0_n_0 ),
        .I3(\port_wants_to[6][3]_49 [0]),
        .I4(\port_wants_to[6][3]_49 [1]),
        .I5(\next_switch_matrix[3][0]_i_10__1_n_0 ),
        .O(\next_switch_matrix[3][0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBFF1FFFB1FF)) 
    \next_switch_matrix[3][0]_i_4 
       (.I0(Q[35]),
        .I1(Q[34]),
        .I2(Q[36]),
        .I3(Q[55]),
        .I4(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I5(Q[37]),
        .O(\next_switch_matrix[3][0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \next_switch_matrix[3][0]_i_5__1 
       (.I0(\next_switch_matrix[5][0]_i_4__0_n_0 ),
        .I1(\next_switch_matrix[3][0]_i_11__0_n_0 ),
        .I2(\next_switch_matrix[5][0]_i_3_n_0 ),
        .O(\next_switch_matrix[3][0]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hF800F8A800000000)) 
    \next_switch_matrix[3][0]_i_6__0 
       (.I0(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I1(Q[34]),
        .I2(Q[35]),
        .I3(Q[37]),
        .I4(Q[36]),
        .I5(Q[55]),
        .O(\next_switch_matrix[3][0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h0008FF8800080008)) 
    \next_switch_matrix[3][0]_i_7 
       (.I0(\next_switch_matrix_reg[0][0] [0]),
        .I1(\port_wants_to[6][0]_50 ),
        .I2(\next_switch_matrix_reg[0][0] [1]),
        .I3(\next_switch_matrix[0][0]_i_4__1_n_0 ),
        .I4(\next_switch_matrix[3][0]_i_12_n_0 ),
        .I5(\next_switch_matrix[5][0]_i_13_n_0 ),
        .O(\next_switch_matrix[3][0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00005455)) 
    \next_switch_matrix[3][0]_i_9__0 
       (.I0(\next_switch_matrix[3][0]_i_7_n_0 ),
        .I1(\next_switch_matrix[3][0]_i_13_n_0 ),
        .I2(\next_switch_matrix[5][0]_i_4__0_n_0 ),
        .I3(\next_switch_matrix[5][0]_i_3_n_0 ),
        .I4(\next_switch_matrix[3][0]_i_4_n_0 ),
        .I5(\next_switch_matrix[3][0]_i_14_n_0 ),
        .O(\next_switch_matrix[3][0]_i_9__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[4][0]_i_1__0 
       (.I0(\next_switch_matrix[4][0]_i_2_n_0 ),
        .O(\next_switch_matrix_reg[4][0] ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \next_switch_matrix[4][0]_i_2 
       (.I0(\next_switch_matrix_reg[0][0] [0]),
        .I1(\next_switch_matrix_reg[0][0] [1]),
        .I2(\next_switch_matrix[0][0]_i_4__1_n_0 ),
        .I3(Q[55]),
        .I4(Q[37]),
        .I5(Q[36]),
        .O(\next_switch_matrix[4][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \next_switch_matrix[5][0]_i_10 
       (.I0(\port_wants_to[6][0]_50 ),
        .I1(\next_switch_matrix_reg[0][0] [0]),
        .I2(\next_switch_matrix_reg[0][0] [1]),
        .I3(\G0.mem_reg[36]_0 ),
        .O(\next_switch_matrix[5][0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0048555D00480048)) 
    \next_switch_matrix[5][0]_i_11 
       (.I0(\next_switch_matrix[3][0]_i_11__0_n_0 ),
        .I1(\next_switch_matrix_reg[0][0] [1]),
        .I2(\next_switch_matrix_reg[0][0] [0]),
        .I3(\next_switch_matrix[5][0]_i_19_n_0 ),
        .I4(\next_switch_matrix[5][0]_i_20_n_0 ),
        .I5(\next_switch_matrix[5][0]_i_13_n_0 ),
        .O(\next_switch_matrix[5][0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1115111155555555)) 
    \next_switch_matrix[5][0]_i_12 
       (.I0(\next_switch_matrix[0][0]_i_4__1_n_0 ),
        .I1(\next_switch_matrix_reg[0][0] [1]),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(Q[55]),
        .I5(\next_switch_matrix_reg[0][0] [0]),
        .O(\next_switch_matrix[5][0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0E00FFFF0E000E00)) 
    \next_switch_matrix[5][0]_i_13 
       (.I0(\next_switch_matrix[5][0]_i_21_n_0 ),
        .I1(\next_switch_matrix[5][0]_i_17_n_0 ),
        .I2(\G0.mem_reg[34]_2 ),
        .I3(\next_switch_matrix[5][0]_i_23_n_0 ),
        .I4(\next_switch_matrix[5][0]_i_24_n_0 ),
        .I5(\next_switch_matrix[5][0]_i_25_n_0 ),
        .O(\next_switch_matrix[5][0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFCFCFFFEFFFEF)) 
    \next_switch_matrix[5][0]_i_14 
       (.I0(Q[36]),
        .I1(Q[35]),
        .I2(Q[55]),
        .I3(Q[34]),
        .I4(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I5(Q[37]),
        .O(\port_wants_to[6][1]_52 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \next_switch_matrix[5][0]_i_15 
       (.I0(Q[55]),
        .I1(Q[35]),
        .I2(Q[34]),
        .I3(Q[37]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[6][1]_52 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF007FFFFF)) 
    \next_switch_matrix[5][0]_i_16 
       (.I0(\next_switch_matrix_reg[0][0] [0]),
        .I1(\port_wants_to[6][0]_50 ),
        .I2(\next_switch_matrix_reg[0][0] [1]),
        .I3(\next_switch_matrix[0][0]_i_4__1_n_0 ),
        .I4(\port_wants_to[6][1]_52 [0]),
        .I5(\port_wants_to[6][1]_52 [1]),
        .O(\next_switch_matrix[5][0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0808FF08FFFFFFFF)) 
    \next_switch_matrix[5][0]_i_17 
       (.I0(\G0.mem_reg[55]_0 ),
        .I1(\next_switch_matrix_reg[0][0]_0 ),
        .I2(\next_switch_matrix[0][0]_i_8__1_n_0 ),
        .I3(\G0.mem_reg[55]_1 ),
        .I4(\next_switch_matrix[0][0]_i_6__2_n_0 ),
        .I5(\next_switch_matrix_reg[0][0]_1 ),
        .O(\next_switch_matrix[5][0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF007F)) 
    \next_switch_matrix[5][0]_i_18 
       (.I0(\next_switch_matrix_reg[0][0] [0]),
        .I1(\port_wants_to[6][0]_50 ),
        .I2(\next_switch_matrix_reg[0][0] [1]),
        .I3(\next_switch_matrix[0][0]_i_4__1_n_0 ),
        .I4(\port_wants_to[6][1]_52 [0]),
        .I5(\port_wants_to[6][1]_52 [1]),
        .O(\next_switch_matrix[5][0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF0CFFAEFFFF)) 
    \next_switch_matrix[5][0]_i_19 
       (.I0(\next_switch_matrix_reg[0][0] [1]),
        .I1(\G0.mem_reg[34]_0 ),
        .I2(\next_switch_matrix[5][0]_i_27_n_0 ),
        .I3(\port_wants_to[6][0]_50 ),
        .I4(\G0.mem_reg[34]_1 ),
        .I5(\next_switch_matrix[0][0]_i_6__2_n_0 ),
        .O(\next_switch_matrix[5][0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h55515555)) 
    \next_switch_matrix[5][0]_i_1__1 
       (.I0(\next_switch_matrix[5][0]_i_2__1_n_0 ),
        .I1(\next_switch_matrix[5][0]_i_3_n_0 ),
        .I2(\next_switch_matrix[5][0]_i_4__0_n_0 ),
        .I3(\port_wants_to[6][2]_51 [0]),
        .I4(\port_wants_to[6][2]_51 [1]),
        .O(\next_switch_matrix_reg[5][0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF007FFFFF)) 
    \next_switch_matrix[5][0]_i_20 
       (.I0(\next_switch_matrix_reg[0][0] [0]),
        .I1(\port_wants_to[6][0]_50 ),
        .I2(\next_switch_matrix_reg[0][0] [1]),
        .I3(\next_switch_matrix[0][0]_i_4__1_n_0 ),
        .I4(\port_wants_to[6][1]_52 [1]),
        .I5(\port_wants_to[6][1]_52 [0]),
        .O(\next_switch_matrix[5][0]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \next_switch_matrix[5][0]_i_21 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[35]),
        .I3(Q[34]),
        .O(\next_switch_matrix[5][0]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00BFFFFF)) 
    \next_switch_matrix[5][0]_i_23 
       (.I0(\next_switch_matrix_reg[0][0] [0]),
        .I1(\port_wants_to[6][0]_50 ),
        .I2(\next_switch_matrix_reg[0][0] [1]),
        .I3(\G0.mem_reg[36]_0 ),
        .I4(\port_wants_to[6][1]_52 [1]),
        .O(\next_switch_matrix[5][0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000B0B)) 
    \next_switch_matrix[5][0]_i_24 
       (.I0(\next_switch_matrix[0][0]_i_6__2_n_0 ),
        .I1(\G0.mem_reg[55]_1 ),
        .I2(\port_wants_to[6][0]_50 ),
        .I3(\next_switch_matrix[5][0]_i_27_n_0 ),
        .I4(\G0.mem_reg[34]_0 ),
        .I5(\next_switch_matrix[5][0]_i_29_n_0 ),
        .O(\next_switch_matrix[5][0]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \next_switch_matrix[5][0]_i_25 
       (.I0(\G0.mem_reg[37]_0 ),
        .I1(\port_wants_to[6][1]_52 [1]),
        .I2(\port_wants_to[6][1]_52 [0]),
        .O(\next_switch_matrix[5][0]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \next_switch_matrix[5][0]_i_27 
       (.I0(\next_switch_matrix[0][0]_i_13__0_n_0 ),
        .I1(\G0.mem_reg[37]_0 ),
        .I2(\next_switch_matrix[0][0]_i_12__1_n_0 ),
        .O(\next_switch_matrix[5][0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h1010101010303030)) 
    \next_switch_matrix[5][0]_i_29 
       (.I0(Q[36]),
        .I1(Q[37]),
        .I2(Q[55]),
        .I3(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(\next_switch_matrix[5][0]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \next_switch_matrix[5][0]_i_2__1 
       (.I0(\next_switch_matrix_reg[0][0] [0]),
        .I1(\port_wants_to[6][0]_50 ),
        .I2(\next_switch_matrix_reg[0][0] [1]),
        .I3(\next_switch_matrix[0][0]_i_4__1_n_0 ),
        .O(\next_switch_matrix[5][0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0500111105551111)) 
    \next_switch_matrix[5][0]_i_3 
       (.I0(\G0.mem_reg[35]_0 ),
        .I1(\next_switch_matrix[5][0]_i_9_n_0 ),
        .I2(\next_switch_matrix[5][0]_i_10_n_0 ),
        .I3(\port_wants_to[6][2]_51 [0]),
        .I4(\port_wants_to[6][2]_51 [1]),
        .I5(\next_switch_matrix[5][0]_i_11_n_0 ),
        .O(\next_switch_matrix[5][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hAEEE)) 
    \next_switch_matrix[5][0]_i_4__0 
       (.I0(\next_switch_matrix[5][0]_i_12_n_0 ),
        .I1(\next_switch_matrix[5][0]_i_13_n_0 ),
        .I2(\port_wants_to[6][1]_52 [1]),
        .I3(\port_wants_to[6][1]_52 [0]),
        .O(\next_switch_matrix[5][0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBFFFBFFFFFBF)) 
    \next_switch_matrix[5][0]_i_5 
       (.I0(Q[35]),
        .I1(Q[37]),
        .I2(Q[55]),
        .I3(Q[34]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[6][2]_51 [0]));
  LUT6 #(
    .INIT(64'hFFFF3CFFF5FFFFFF)) 
    \next_switch_matrix[5][0]_i_6 
       (.I0(Q[36]),
        .I1(Q[34]),
        .I2(\next_switch_matrix[0][0]_i_5__2_n_0 ),
        .I3(Q[55]),
        .I4(Q[35]),
        .I5(Q[37]),
        .O(\port_wants_to[6][2]_51 [1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \next_switch_matrix[5][0]_i_7 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .O(\port_wants_to[6][0]_50 ));
  LUT6 #(
    .INIT(64'h4C477F770C030C03)) 
    \next_switch_matrix[5][0]_i_9 
       (.I0(\next_switch_matrix[5][0]_i_16_n_0 ),
        .I1(\port_wants_to[6][2]_51 [0]),
        .I2(\next_switch_matrix[5][0]_i_17_n_0 ),
        .I3(\port_wants_to[6][0]_50 ),
        .I4(\next_switch_matrix[5][0]_i_18_n_0 ),
        .I5(\next_switch_matrix[5][0]_i_13_n_0 ),
        .O(\next_switch_matrix[5][0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFABAAFFFF)) 
    \next_switch_matrix[6][0]_i_1__1 
       (.I0(\next_switch_matrix[2][0]_i_2__2_n_0 ),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(Q[55]),
        .I4(\next_switch_matrix_reg[0][0] [1]),
        .I5(\next_switch_matrix_reg[0][0] [0]),
        .O(\next_switch_matrix_reg[6][0] ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized6
   (\port_wants_to[6][3]_33 ,
    Q,
    \next_switch_matrix_reg[4][0] ,
    \next_switch_matrix_reg[6][0] ,
    \next_switch_matrix_reg[0][0] ,
    \port_wants_to[6][0]_36 ,
    \next_switch_matrix_reg[5][0] ,
    \next_switch_matrix_reg[3][0] ,
    \next_switch_matrix_reg[6][0]_0 ,
    \next_switch_matrix_reg[0][0]_0 ,
    E,
    \next_switch_matrix_reg[6][0]_1 ,
    \next_switch_matrix_reg[2][0] ,
    \next_switch_matrix_reg[0][0]_1 ,
    \port_wants_to[6][1]_32 ,
    \next_switch_matrix_reg[6][0]_2 ,
    \next_switch_matrix_reg[0][0]_2 ,
    \next_switch_matrix_reg[3][0]_0 ,
    \next_switch_matrix_reg[4][0]_0 ,
    \next_switch_matrix_reg[0][0]_3 ,
    \next_switch_matrix_reg[1][0] ,
    \mem_reg[55] ,
    \mem_reg[55]_0 ,
    \G0.mem_reg[32]_0 ,
    D,
    \G0.mem_reg[55]_0 ,
    \G0.mem_reg[33]_0 ,
    \G0.mem_reg[33]_1 ,
    \G0.mem_reg[55]_1 ,
    \G0.mem_reg[37]_0 ,
    \G0.mem_reg[55]_2 ,
    \G0.mem_reg[55]_3 ,
    \G0.mem_reg[55]_4 ,
    \G0.mem_reg[55]_5 ,
    \G0.mem_reg[55]_6 ,
    \ctrl_cycle_reg[1] ,
    \G0.mem_reg[55]_7 ,
    \G0.mem_reg[55]_8 ,
    \G0.mem_reg[55]_9 ,
    \G0.mem_reg[55]_10 ,
    \G0.mem_reg[55]_11 ,
    \G0.mem_reg[55]_12 ,
    \G0.mem_reg[32]_1 ,
    \G0.mem_reg[55]_13 ,
    \G0.mem_reg[32]_2 ,
    \G0.mem_reg[37]_1 ,
    \G0.mem_reg[55]_14 ,
    \G0.mem_reg[37]_2 ,
    \G0.mem_reg[55]_15 ,
    \G0.mem_reg[36]_0 ,
    \G0.mem_reg[55]_16 ,
    \G0.mem_reg[55]_17 ,
    \pres_switch_matrix_reg[2][2] ,
    \pres_switch_matrix_reg[6][2] ,
    reset,
    To_NoC_2,
    clk);
  output [2:0]\port_wants_to[6][3]_33 ;
  output [55:0]Q;
  output \next_switch_matrix_reg[4][0] ;
  output \next_switch_matrix_reg[6][0] ;
  output \next_switch_matrix_reg[0][0] ;
  output [0:0]\port_wants_to[6][0]_36 ;
  output [0:0]\next_switch_matrix_reg[5][0] ;
  output [0:0]\next_switch_matrix_reg[3][0] ;
  output [0:0]\next_switch_matrix_reg[6][0]_0 ;
  output \next_switch_matrix_reg[0][0]_0 ;
  output [0:0]E;
  output [0:0]\next_switch_matrix_reg[6][0]_1 ;
  output [0:0]\next_switch_matrix_reg[2][0] ;
  output [0:0]\next_switch_matrix_reg[0][0]_1 ;
  output [0:0]\port_wants_to[6][1]_32 ;
  output \next_switch_matrix_reg[6][0]_2 ;
  output \next_switch_matrix_reg[0][0]_2 ;
  output \next_switch_matrix_reg[3][0]_0 ;
  output [0:0]\next_switch_matrix_reg[4][0]_0 ;
  output \next_switch_matrix_reg[0][0]_3 ;
  output [0:0]\next_switch_matrix_reg[1][0] ;
  output [55:0]\mem_reg[55] ;
  output [55:0]\mem_reg[55]_0 ;
  input \G0.mem_reg[32]_0 ;
  input [0:0]D;
  input [0:0]\G0.mem_reg[55]_0 ;
  input \G0.mem_reg[33]_0 ;
  input \G0.mem_reg[33]_1 ;
  input \G0.mem_reg[55]_1 ;
  input \G0.mem_reg[37]_0 ;
  input \G0.mem_reg[55]_2 ;
  input \G0.mem_reg[55]_3 ;
  input \G0.mem_reg[55]_4 ;
  input \G0.mem_reg[55]_5 ;
  input \G0.mem_reg[55]_6 ;
  input [1:0]\ctrl_cycle_reg[1] ;
  input \G0.mem_reg[55]_7 ;
  input \G0.mem_reg[55]_8 ;
  input \G0.mem_reg[55]_9 ;
  input \G0.mem_reg[55]_10 ;
  input \G0.mem_reg[55]_11 ;
  input \G0.mem_reg[55]_12 ;
  input \G0.mem_reg[32]_1 ;
  input \G0.mem_reg[55]_13 ;
  input \G0.mem_reg[32]_2 ;
  input \G0.mem_reg[37]_1 ;
  input \G0.mem_reg[55]_14 ;
  input \G0.mem_reg[37]_2 ;
  input [0:0]\G0.mem_reg[55]_15 ;
  input \G0.mem_reg[36]_0 ;
  input [55:0]\G0.mem_reg[55]_16 ;
  input [55:0]\G0.mem_reg[55]_17 ;
  input [2:0]\pres_switch_matrix_reg[2][2] ;
  input [2:0]\pres_switch_matrix_reg[6][2] ;
  input reset;
  input [55:0]To_NoC_2;
  input clk;

  wire [0:0]D;
  wire [0:0]E;
  wire \G0.mem_reg[32]_0 ;
  wire \G0.mem_reg[32]_1 ;
  wire \G0.mem_reg[32]_2 ;
  wire \G0.mem_reg[33]_0 ;
  wire \G0.mem_reg[33]_1 ;
  wire \G0.mem_reg[36]_0 ;
  wire \G0.mem_reg[37]_0 ;
  wire \G0.mem_reg[37]_1 ;
  wire \G0.mem_reg[37]_2 ;
  wire [0:0]\G0.mem_reg[55]_0 ;
  wire \G0.mem_reg[55]_1 ;
  wire \G0.mem_reg[55]_10 ;
  wire \G0.mem_reg[55]_11 ;
  wire \G0.mem_reg[55]_12 ;
  wire \G0.mem_reg[55]_13 ;
  wire \G0.mem_reg[55]_14 ;
  wire [0:0]\G0.mem_reg[55]_15 ;
  wire [55:0]\G0.mem_reg[55]_16 ;
  wire [55:0]\G0.mem_reg[55]_17 ;
  wire \G0.mem_reg[55]_2 ;
  wire \G0.mem_reg[55]_3 ;
  wire \G0.mem_reg[55]_4 ;
  wire \G0.mem_reg[55]_5 ;
  wire \G0.mem_reg[55]_6 ;
  wire \G0.mem_reg[55]_7 ;
  wire \G0.mem_reg[55]_8 ;
  wire \G0.mem_reg[55]_9 ;
  wire [55:0]Q;
  wire [55:0]To_NoC_2;
  wire clk;
  wire [1:0]\ctrl_cycle_reg[1] ;
  wire [55:0]\mem_reg[55] ;
  wire [55:0]\mem_reg[55]_0 ;
  wire \next_switch_matrix[0][0]_i_10__0_n_0 ;
  wire \next_switch_matrix[0][0]_i_11__1_n_0 ;
  wire \next_switch_matrix[0][0]_i_12__0_n_0 ;
  wire \next_switch_matrix[0][0]_i_19_n_0 ;
  wire \next_switch_matrix[0][0]_i_21_n_0 ;
  wire \next_switch_matrix[0][0]_i_22_n_0 ;
  wire \next_switch_matrix[0][0]_i_24_n_0 ;
  wire \next_switch_matrix[0][0]_i_30_n_0 ;
  wire \next_switch_matrix[0][0]_i_4__0_n_0 ;
  wire \next_switch_matrix[0][0]_i_9__0_n_0 ;
  wire \next_switch_matrix[1][0]_i_11_n_0 ;
  wire \next_switch_matrix[1][0]_i_12_n_0 ;
  wire \next_switch_matrix[1][0]_i_3_n_0 ;
  wire \next_switch_matrix[1][0]_i_4_n_0 ;
  wire \next_switch_matrix[1][0]_i_5__0_n_0 ;
  wire \next_switch_matrix[1][0]_i_6_n_0 ;
  wire \next_switch_matrix[1][0]_i_7_n_0 ;
  wire \next_switch_matrix[1][0]_i_8_n_0 ;
  wire \next_switch_matrix[2][0]_i_10_n_0 ;
  wire \next_switch_matrix[2][0]_i_11_n_0 ;
  wire \next_switch_matrix[2][0]_i_12_n_0 ;
  wire \next_switch_matrix[2][0]_i_14_n_0 ;
  wire \next_switch_matrix[2][0]_i_15_n_0 ;
  wire \next_switch_matrix[2][0]_i_17_n_0 ;
  wire \next_switch_matrix[2][0]_i_18_n_0 ;
  wire \next_switch_matrix[2][0]_i_19_n_0 ;
  wire \next_switch_matrix[2][0]_i_21_n_0 ;
  wire \next_switch_matrix[2][0]_i_22_n_0 ;
  wire \next_switch_matrix[2][0]_i_24_n_0 ;
  wire \next_switch_matrix[2][0]_i_27_n_0 ;
  wire \next_switch_matrix[2][0]_i_28_n_0 ;
  wire \next_switch_matrix[2][0]_i_29_n_0 ;
  wire \next_switch_matrix[2][0]_i_30_n_0 ;
  wire \next_switch_matrix[2][0]_i_31_n_0 ;
  wire \next_switch_matrix[2][0]_i_32_n_0 ;
  wire \next_switch_matrix[2][0]_i_34_n_0 ;
  wire \next_switch_matrix[2][0]_i_36_n_0 ;
  wire \next_switch_matrix[2][0]_i_5__0_n_0 ;
  wire \next_switch_matrix[2][0]_i_6_n_0 ;
  wire \next_switch_matrix[2][0]_i_7_n_0 ;
  wire \next_switch_matrix[2][0]_i_9_n_0 ;
  wire \next_switch_matrix[3][0]_i_10__0_n_0 ;
  wire \next_switch_matrix[3][0]_i_11_n_0 ;
  wire \next_switch_matrix[3][0]_i_12__0_n_0 ;
  wire \next_switch_matrix[3][0]_i_2_n_0 ;
  wire \next_switch_matrix[3][0]_i_4__0_n_0 ;
  wire \next_switch_matrix[3][0]_i_5__0_n_0 ;
  wire \next_switch_matrix[3][0]_i_6__1_n_0 ;
  wire \next_switch_matrix[3][0]_i_7__0_n_0 ;
  wire \next_switch_matrix[3][0]_i_8__0_n_0 ;
  wire \next_switch_matrix[3][0]_i_9_n_0 ;
  wire \next_switch_matrix[4][0]_i_2__1_n_0 ;
  wire \next_switch_matrix[4][0]_i_3__0_n_0 ;
  wire \next_switch_matrix[4][0]_i_5__1_n_0 ;
  wire \next_switch_matrix[5][0]_i_2__0_n_0 ;
  wire \next_switch_matrix[5][0]_i_3__0_n_0 ;
  wire \next_switch_matrix[6][0]_i_2_n_0 ;
  wire \next_switch_matrix[6][0]_i_3_n_0 ;
  wire \next_switch_matrix[6][0]_i_4_n_0 ;
  wire \next_switch_matrix[6][0]_i_5_n_0 ;
  wire \next_switch_matrix[6][0]_i_7_n_0 ;
  wire \next_switch_matrix_reg[0][0] ;
  wire \next_switch_matrix_reg[0][0]_0 ;
  wire [0:0]\next_switch_matrix_reg[0][0]_1 ;
  wire \next_switch_matrix_reg[0][0]_2 ;
  wire \next_switch_matrix_reg[0][0]_3 ;
  wire [0:0]\next_switch_matrix_reg[1][0] ;
  wire [0:0]\next_switch_matrix_reg[2][0] ;
  wire [0:0]\next_switch_matrix_reg[3][0] ;
  wire \next_switch_matrix_reg[3][0]_0 ;
  wire \next_switch_matrix_reg[4][0] ;
  wire [0:0]\next_switch_matrix_reg[4][0]_0 ;
  wire [0:0]\next_switch_matrix_reg[5][0] ;
  wire \next_switch_matrix_reg[6][0] ;
  wire [0:0]\next_switch_matrix_reg[6][0]_0 ;
  wire [0:0]\next_switch_matrix_reg[6][0]_1 ;
  wire \next_switch_matrix_reg[6][0]_2 ;
  wire [0:0]\port_wants_to[6][0]_36 ;
  wire [0:0]\port_wants_to[6][1]_32 ;
  wire [2:2]\port_wants_to[6][2]_34 ;
  wire [2:0]\port_wants_to[6][3]_33 ;
  wire [1:1]\port_wants_to[6][4]_35 ;
  wire [2:0]\pres_switch_matrix_reg[2][2] ;
  wire [2:0]\pres_switch_matrix_reg[6][2] ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(To_NoC_2[9]),
        .Q(Q[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[0]_i_1__3 
       (.I0(Q[0]),
        .I1(\G0.mem_reg[55]_16 [0]),
        .I2(\G0.mem_reg[55]_17 [0]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [0]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[0]_i_1__4 
       (.I0(Q[0]),
        .I1(\G0.mem_reg[55]_16 [0]),
        .I2(\G0.mem_reg[55]_17 [0]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [0]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[10]_i_1__3 
       (.I0(Q[10]),
        .I1(\G0.mem_reg[55]_16 [10]),
        .I2(\G0.mem_reg[55]_17 [10]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [10]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[10]_i_1__4 
       (.I0(Q[10]),
        .I1(\G0.mem_reg[55]_16 [10]),
        .I2(\G0.mem_reg[55]_17 [10]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [10]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[11]_i_1__3 
       (.I0(Q[11]),
        .I1(\G0.mem_reg[55]_16 [11]),
        .I2(\G0.mem_reg[55]_17 [11]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [11]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[11]_i_1__4 
       (.I0(Q[11]),
        .I1(\G0.mem_reg[55]_16 [11]),
        .I2(\G0.mem_reg[55]_17 [11]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [11]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[12]_i_1__3 
       (.I0(Q[12]),
        .I1(\G0.mem_reg[55]_16 [12]),
        .I2(\G0.mem_reg[55]_17 [12]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [12]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[12]_i_1__4 
       (.I0(Q[12]),
        .I1(\G0.mem_reg[55]_16 [12]),
        .I2(\G0.mem_reg[55]_17 [12]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [12]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[13]_i_1__3 
       (.I0(Q[13]),
        .I1(\G0.mem_reg[55]_16 [13]),
        .I2(\G0.mem_reg[55]_17 [13]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [13]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[13]_i_1__4 
       (.I0(Q[13]),
        .I1(\G0.mem_reg[55]_16 [13]),
        .I2(\G0.mem_reg[55]_17 [13]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [13]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[14]_i_1__3 
       (.I0(Q[14]),
        .I1(\G0.mem_reg[55]_16 [14]),
        .I2(\G0.mem_reg[55]_17 [14]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [14]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[14]_i_1__4 
       (.I0(Q[14]),
        .I1(\G0.mem_reg[55]_16 [14]),
        .I2(\G0.mem_reg[55]_17 [14]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [14]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[15]_i_1__3 
       (.I0(Q[15]),
        .I1(\G0.mem_reg[55]_16 [15]),
        .I2(\G0.mem_reg[55]_17 [15]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [15]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[15]_i_1__4 
       (.I0(Q[15]),
        .I1(\G0.mem_reg[55]_16 [15]),
        .I2(\G0.mem_reg[55]_17 [15]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [15]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[16]_i_1__3 
       (.I0(Q[16]),
        .I1(\G0.mem_reg[55]_16 [16]),
        .I2(\G0.mem_reg[55]_17 [16]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [16]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[16]_i_1__4 
       (.I0(Q[16]),
        .I1(\G0.mem_reg[55]_16 [16]),
        .I2(\G0.mem_reg[55]_17 [16]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [16]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[17]_i_1__3 
       (.I0(Q[17]),
        .I1(\G0.mem_reg[55]_16 [17]),
        .I2(\G0.mem_reg[55]_17 [17]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [17]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[17]_i_1__4 
       (.I0(Q[17]),
        .I1(\G0.mem_reg[55]_16 [17]),
        .I2(\G0.mem_reg[55]_17 [17]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [17]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[18]_i_1__3 
       (.I0(Q[18]),
        .I1(\G0.mem_reg[55]_16 [18]),
        .I2(\G0.mem_reg[55]_17 [18]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [18]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[18]_i_1__4 
       (.I0(Q[18]),
        .I1(\G0.mem_reg[55]_16 [18]),
        .I2(\G0.mem_reg[55]_17 [18]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [18]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[19]_i_1__3 
       (.I0(Q[19]),
        .I1(\G0.mem_reg[55]_16 [19]),
        .I2(\G0.mem_reg[55]_17 [19]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [19]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[19]_i_1__4 
       (.I0(Q[19]),
        .I1(\G0.mem_reg[55]_16 [19]),
        .I2(\G0.mem_reg[55]_17 [19]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [19]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[1]_i_1__3 
       (.I0(Q[1]),
        .I1(\G0.mem_reg[55]_16 [1]),
        .I2(\G0.mem_reg[55]_17 [1]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [1]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[1]_i_1__4 
       (.I0(Q[1]),
        .I1(\G0.mem_reg[55]_16 [1]),
        .I2(\G0.mem_reg[55]_17 [1]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [1]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[20]_i_1__3 
       (.I0(Q[20]),
        .I1(\G0.mem_reg[55]_16 [20]),
        .I2(\G0.mem_reg[55]_17 [20]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [20]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[20]_i_1__4 
       (.I0(Q[20]),
        .I1(\G0.mem_reg[55]_16 [20]),
        .I2(\G0.mem_reg[55]_17 [20]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [20]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[21]_i_1__3 
       (.I0(Q[21]),
        .I1(\G0.mem_reg[55]_16 [21]),
        .I2(\G0.mem_reg[55]_17 [21]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [21]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[21]_i_1__4 
       (.I0(Q[21]),
        .I1(\G0.mem_reg[55]_16 [21]),
        .I2(\G0.mem_reg[55]_17 [21]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [21]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[22]_i_1__3 
       (.I0(Q[22]),
        .I1(\G0.mem_reg[55]_16 [22]),
        .I2(\G0.mem_reg[55]_17 [22]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [22]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[22]_i_1__4 
       (.I0(Q[22]),
        .I1(\G0.mem_reg[55]_16 [22]),
        .I2(\G0.mem_reg[55]_17 [22]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [22]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[23]_i_1__3 
       (.I0(Q[23]),
        .I1(\G0.mem_reg[55]_16 [23]),
        .I2(\G0.mem_reg[55]_17 [23]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [23]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[23]_i_1__4 
       (.I0(Q[23]),
        .I1(\G0.mem_reg[55]_16 [23]),
        .I2(\G0.mem_reg[55]_17 [23]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [23]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[24]_i_1__3 
       (.I0(Q[24]),
        .I1(\G0.mem_reg[55]_16 [24]),
        .I2(\G0.mem_reg[55]_17 [24]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [24]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[24]_i_1__4 
       (.I0(Q[24]),
        .I1(\G0.mem_reg[55]_16 [24]),
        .I2(\G0.mem_reg[55]_17 [24]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [24]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[25]_i_1__3 
       (.I0(Q[25]),
        .I1(\G0.mem_reg[55]_16 [25]),
        .I2(\G0.mem_reg[55]_17 [25]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [25]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[25]_i_1__4 
       (.I0(Q[25]),
        .I1(\G0.mem_reg[55]_16 [25]),
        .I2(\G0.mem_reg[55]_17 [25]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [25]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[26]_i_1__3 
       (.I0(Q[26]),
        .I1(\G0.mem_reg[55]_16 [26]),
        .I2(\G0.mem_reg[55]_17 [26]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [26]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[26]_i_1__4 
       (.I0(Q[26]),
        .I1(\G0.mem_reg[55]_16 [26]),
        .I2(\G0.mem_reg[55]_17 [26]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [26]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[27]_i_1__3 
       (.I0(Q[27]),
        .I1(\G0.mem_reg[55]_16 [27]),
        .I2(\G0.mem_reg[55]_17 [27]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [27]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[27]_i_1__4 
       (.I0(Q[27]),
        .I1(\G0.mem_reg[55]_16 [27]),
        .I2(\G0.mem_reg[55]_17 [27]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [27]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[28]_i_1__3 
       (.I0(Q[28]),
        .I1(\G0.mem_reg[55]_16 [28]),
        .I2(\G0.mem_reg[55]_17 [28]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [28]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[28]_i_1__4 
       (.I0(Q[28]),
        .I1(\G0.mem_reg[55]_16 [28]),
        .I2(\G0.mem_reg[55]_17 [28]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [28]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[29]_i_1__3 
       (.I0(Q[29]),
        .I1(\G0.mem_reg[55]_16 [29]),
        .I2(\G0.mem_reg[55]_17 [29]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [29]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[29]_i_1__4 
       (.I0(Q[29]),
        .I1(\G0.mem_reg[55]_16 [29]),
        .I2(\G0.mem_reg[55]_17 [29]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [29]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[2]_i_1__3 
       (.I0(Q[2]),
        .I1(\G0.mem_reg[55]_16 [2]),
        .I2(\G0.mem_reg[55]_17 [2]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [2]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[2]_i_1__4 
       (.I0(Q[2]),
        .I1(\G0.mem_reg[55]_16 [2]),
        .I2(\G0.mem_reg[55]_17 [2]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [2]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[30]_i_1__3 
       (.I0(Q[30]),
        .I1(\G0.mem_reg[55]_16 [30]),
        .I2(\G0.mem_reg[55]_17 [30]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [30]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[30]_i_1__4 
       (.I0(Q[30]),
        .I1(\G0.mem_reg[55]_16 [30]),
        .I2(\G0.mem_reg[55]_17 [30]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [30]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[31]_i_1__3 
       (.I0(Q[31]),
        .I1(\G0.mem_reg[55]_16 [31]),
        .I2(\G0.mem_reg[55]_17 [31]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [31]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[31]_i_1__4 
       (.I0(Q[31]),
        .I1(\G0.mem_reg[55]_16 [31]),
        .I2(\G0.mem_reg[55]_17 [31]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [31]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[32]_i_1__3 
       (.I0(Q[32]),
        .I1(\G0.mem_reg[55]_16 [32]),
        .I2(\G0.mem_reg[55]_17 [32]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [32]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[32]_i_1__4 
       (.I0(Q[32]),
        .I1(\G0.mem_reg[55]_16 [32]),
        .I2(\G0.mem_reg[55]_17 [32]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [32]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[33]_i_1__3 
       (.I0(Q[33]),
        .I1(\G0.mem_reg[55]_16 [33]),
        .I2(\G0.mem_reg[55]_17 [33]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [33]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[33]_i_1__4 
       (.I0(Q[33]),
        .I1(\G0.mem_reg[55]_16 [33]),
        .I2(\G0.mem_reg[55]_17 [33]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [33]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[34]_i_1__3 
       (.I0(Q[34]),
        .I1(\G0.mem_reg[55]_16 [34]),
        .I2(\G0.mem_reg[55]_17 [34]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [34]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[34]_i_1__4 
       (.I0(Q[34]),
        .I1(\G0.mem_reg[55]_16 [34]),
        .I2(\G0.mem_reg[55]_17 [34]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [34]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[35]_i_1__3 
       (.I0(Q[35]),
        .I1(\G0.mem_reg[55]_16 [35]),
        .I2(\G0.mem_reg[55]_17 [35]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [35]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[35]_i_1__4 
       (.I0(Q[35]),
        .I1(\G0.mem_reg[55]_16 [35]),
        .I2(\G0.mem_reg[55]_17 [35]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [35]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[36]_i_1__3 
       (.I0(Q[36]),
        .I1(\G0.mem_reg[55]_16 [36]),
        .I2(\G0.mem_reg[55]_17 [36]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [36]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[36]_i_1__4 
       (.I0(Q[36]),
        .I1(\G0.mem_reg[55]_16 [36]),
        .I2(\G0.mem_reg[55]_17 [36]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [36]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[37]_i_1__3 
       (.I0(Q[37]),
        .I1(\G0.mem_reg[55]_16 [37]),
        .I2(\G0.mem_reg[55]_17 [37]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [37]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[37]_i_1__4 
       (.I0(Q[37]),
        .I1(\G0.mem_reg[55]_16 [37]),
        .I2(\G0.mem_reg[55]_17 [37]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [37]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[38]_i_1__3 
       (.I0(Q[38]),
        .I1(\G0.mem_reg[55]_16 [38]),
        .I2(\G0.mem_reg[55]_17 [38]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [38]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[38]_i_1__4 
       (.I0(Q[38]),
        .I1(\G0.mem_reg[55]_16 [38]),
        .I2(\G0.mem_reg[55]_17 [38]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [38]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[39]_i_1__3 
       (.I0(Q[39]),
        .I1(\G0.mem_reg[55]_16 [39]),
        .I2(\G0.mem_reg[55]_17 [39]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [39]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[39]_i_1__4 
       (.I0(Q[39]),
        .I1(\G0.mem_reg[55]_16 [39]),
        .I2(\G0.mem_reg[55]_17 [39]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [39]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[3]_i_1__3 
       (.I0(Q[3]),
        .I1(\G0.mem_reg[55]_16 [3]),
        .I2(\G0.mem_reg[55]_17 [3]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [3]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[3]_i_1__4 
       (.I0(Q[3]),
        .I1(\G0.mem_reg[55]_16 [3]),
        .I2(\G0.mem_reg[55]_17 [3]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [3]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[40]_i_1__3 
       (.I0(Q[40]),
        .I1(\G0.mem_reg[55]_16 [40]),
        .I2(\G0.mem_reg[55]_17 [40]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [40]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[40]_i_1__4 
       (.I0(Q[40]),
        .I1(\G0.mem_reg[55]_16 [40]),
        .I2(\G0.mem_reg[55]_17 [40]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [40]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[41]_i_1__3 
       (.I0(Q[41]),
        .I1(\G0.mem_reg[55]_16 [41]),
        .I2(\G0.mem_reg[55]_17 [41]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [41]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[41]_i_1__4 
       (.I0(Q[41]),
        .I1(\G0.mem_reg[55]_16 [41]),
        .I2(\G0.mem_reg[55]_17 [41]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [41]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[42]_i_1__3 
       (.I0(Q[42]),
        .I1(\G0.mem_reg[55]_16 [42]),
        .I2(\G0.mem_reg[55]_17 [42]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [42]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[42]_i_1__4 
       (.I0(Q[42]),
        .I1(\G0.mem_reg[55]_16 [42]),
        .I2(\G0.mem_reg[55]_17 [42]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [42]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[43]_i_1__3 
       (.I0(Q[43]),
        .I1(\G0.mem_reg[55]_16 [43]),
        .I2(\G0.mem_reg[55]_17 [43]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [43]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[43]_i_1__4 
       (.I0(Q[43]),
        .I1(\G0.mem_reg[55]_16 [43]),
        .I2(\G0.mem_reg[55]_17 [43]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [43]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[44]_i_1__3 
       (.I0(Q[44]),
        .I1(\G0.mem_reg[55]_16 [44]),
        .I2(\G0.mem_reg[55]_17 [44]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [44]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[44]_i_1__4 
       (.I0(Q[44]),
        .I1(\G0.mem_reg[55]_16 [44]),
        .I2(\G0.mem_reg[55]_17 [44]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [44]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[45]_i_1__3 
       (.I0(Q[45]),
        .I1(\G0.mem_reg[55]_16 [45]),
        .I2(\G0.mem_reg[55]_17 [45]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [45]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[45]_i_1__4 
       (.I0(Q[45]),
        .I1(\G0.mem_reg[55]_16 [45]),
        .I2(\G0.mem_reg[55]_17 [45]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [45]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[46]_i_1__3 
       (.I0(Q[46]),
        .I1(\G0.mem_reg[55]_16 [46]),
        .I2(\G0.mem_reg[55]_17 [46]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [46]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[46]_i_1__4 
       (.I0(Q[46]),
        .I1(\G0.mem_reg[55]_16 [46]),
        .I2(\G0.mem_reg[55]_17 [46]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [46]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[47]_i_1__3 
       (.I0(Q[47]),
        .I1(\G0.mem_reg[55]_16 [47]),
        .I2(\G0.mem_reg[55]_17 [47]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [47]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[47]_i_1__4 
       (.I0(Q[47]),
        .I1(\G0.mem_reg[55]_16 [47]),
        .I2(\G0.mem_reg[55]_17 [47]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [47]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[48]_i_1__3 
       (.I0(Q[48]),
        .I1(\G0.mem_reg[55]_16 [48]),
        .I2(\G0.mem_reg[55]_17 [48]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [48]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[48]_i_1__4 
       (.I0(Q[48]),
        .I1(\G0.mem_reg[55]_16 [48]),
        .I2(\G0.mem_reg[55]_17 [48]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [48]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[49]_i_1__3 
       (.I0(Q[49]),
        .I1(\G0.mem_reg[55]_16 [49]),
        .I2(\G0.mem_reg[55]_17 [49]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [49]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[49]_i_1__4 
       (.I0(Q[49]),
        .I1(\G0.mem_reg[55]_16 [49]),
        .I2(\G0.mem_reg[55]_17 [49]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [49]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[4]_i_1__3 
       (.I0(Q[4]),
        .I1(\G0.mem_reg[55]_16 [4]),
        .I2(\G0.mem_reg[55]_17 [4]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [4]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[4]_i_1__4 
       (.I0(Q[4]),
        .I1(\G0.mem_reg[55]_16 [4]),
        .I2(\G0.mem_reg[55]_17 [4]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [4]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[50]_i_1__3 
       (.I0(Q[50]),
        .I1(\G0.mem_reg[55]_16 [50]),
        .I2(\G0.mem_reg[55]_17 [50]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [50]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[50]_i_1__4 
       (.I0(Q[50]),
        .I1(\G0.mem_reg[55]_16 [50]),
        .I2(\G0.mem_reg[55]_17 [50]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [50]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[51]_i_1__3 
       (.I0(Q[51]),
        .I1(\G0.mem_reg[55]_16 [51]),
        .I2(\G0.mem_reg[55]_17 [51]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [51]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[51]_i_1__4 
       (.I0(Q[51]),
        .I1(\G0.mem_reg[55]_16 [51]),
        .I2(\G0.mem_reg[55]_17 [51]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [51]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[52]_i_1__3 
       (.I0(Q[52]),
        .I1(\G0.mem_reg[55]_16 [52]),
        .I2(\G0.mem_reg[55]_17 [52]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [52]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[52]_i_1__4 
       (.I0(Q[52]),
        .I1(\G0.mem_reg[55]_16 [52]),
        .I2(\G0.mem_reg[55]_17 [52]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [52]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[53]_i_1__3 
       (.I0(Q[53]),
        .I1(\G0.mem_reg[55]_16 [53]),
        .I2(\G0.mem_reg[55]_17 [53]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [53]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[53]_i_1__4 
       (.I0(Q[53]),
        .I1(\G0.mem_reg[55]_16 [53]),
        .I2(\G0.mem_reg[55]_17 [53]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [53]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[54]_i_1__3 
       (.I0(Q[54]),
        .I1(\G0.mem_reg[55]_16 [54]),
        .I2(\G0.mem_reg[55]_17 [54]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [54]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[54]_i_1__4 
       (.I0(Q[54]),
        .I1(\G0.mem_reg[55]_16 [54]),
        .I2(\G0.mem_reg[55]_17 [54]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [54]));
  LUT2 #(
    .INIT(4'h8)) 
    \mem[55]_i_1__2 
       (.I0(\ctrl_cycle_reg[1] [0]),
        .I1(\ctrl_cycle_reg[1] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[55]_i_1__4 
       (.I0(Q[55]),
        .I1(\G0.mem_reg[55]_16 [55]),
        .I2(\G0.mem_reg[55]_17 [55]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [55]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[55]_i_2__0 
       (.I0(Q[55]),
        .I1(\G0.mem_reg[55]_16 [55]),
        .I2(\G0.mem_reg[55]_17 [55]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [55]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[5]_i_1__3 
       (.I0(Q[5]),
        .I1(\G0.mem_reg[55]_16 [5]),
        .I2(\G0.mem_reg[55]_17 [5]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [5]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[5]_i_1__4 
       (.I0(Q[5]),
        .I1(\G0.mem_reg[55]_16 [5]),
        .I2(\G0.mem_reg[55]_17 [5]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [5]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[6]_i_1__3 
       (.I0(Q[6]),
        .I1(\G0.mem_reg[55]_16 [6]),
        .I2(\G0.mem_reg[55]_17 [6]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [6]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[6]_i_1__4 
       (.I0(Q[6]),
        .I1(\G0.mem_reg[55]_16 [6]),
        .I2(\G0.mem_reg[55]_17 [6]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [6]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[7]_i_1__3 
       (.I0(Q[7]),
        .I1(\G0.mem_reg[55]_16 [7]),
        .I2(\G0.mem_reg[55]_17 [7]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [7]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[7]_i_1__4 
       (.I0(Q[7]),
        .I1(\G0.mem_reg[55]_16 [7]),
        .I2(\G0.mem_reg[55]_17 [7]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [7]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[8]_i_1__3 
       (.I0(Q[8]),
        .I1(\G0.mem_reg[55]_16 [8]),
        .I2(\G0.mem_reg[55]_17 [8]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [8]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[8]_i_1__4 
       (.I0(Q[8]),
        .I1(\G0.mem_reg[55]_16 [8]),
        .I2(\G0.mem_reg[55]_17 [8]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [8]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[9]_i_1__3 
       (.I0(Q[9]),
        .I1(\G0.mem_reg[55]_16 [9]),
        .I2(\G0.mem_reg[55]_17 [9]),
        .I3(\pres_switch_matrix_reg[2][2] [0]),
        .I4(\pres_switch_matrix_reg[2][2] [1]),
        .I5(\pres_switch_matrix_reg[2][2] [2]),
        .O(\mem_reg[55] [9]));
  LUT6 #(
    .INIT(64'h00AA000000F0CC00)) 
    \mem[9]_i_1__4 
       (.I0(Q[9]),
        .I1(\G0.mem_reg[55]_16 [9]),
        .I2(\G0.mem_reg[55]_17 [9]),
        .I3(\pres_switch_matrix_reg[6][2] [0]),
        .I4(\pres_switch_matrix_reg[6][2] [1]),
        .I5(\pres_switch_matrix_reg[6][2] [2]),
        .O(\mem_reg[55]_0 [9]));
  LUT5 #(
    .INIT(32'hFFFFFB51)) 
    \next_switch_matrix[0][0]_i_10__0 
       (.I0(\port_wants_to[6][1]_32 ),
        .I1(\G0.mem_reg[55]_5 ),
        .I2(\next_switch_matrix_reg[0][0]_0 ),
        .I3(\next_switch_matrix[3][0]_i_7__0_n_0 ),
        .I4(\next_switch_matrix[0][0]_i_21_n_0 ),
        .O(\next_switch_matrix[0][0]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \next_switch_matrix[0][0]_i_11__1 
       (.I0(Q[32]),
        .I1(Q[33]),
        .I2(Q[37]),
        .I3(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I4(Q[55]),
        .O(\next_switch_matrix[0][0]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055577777)) 
    \next_switch_matrix[0][0]_i_12__0 
       (.I0(\next_switch_matrix[0][0]_i_22_n_0 ),
        .I1(\port_wants_to[6][0]_36 ),
        .I2(\G0.mem_reg[32]_1 ),
        .I3(\G0.mem_reg[55]_13 ),
        .I4(\G0.mem_reg[32]_2 ),
        .I5(\next_switch_matrix[0][0]_i_24_n_0 ),
        .O(\next_switch_matrix[0][0]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \next_switch_matrix[0][0]_i_13 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .O(\port_wants_to[6][0]_36 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h2300)) 
    \next_switch_matrix[0][0]_i_15 
       (.I0(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(Q[55]),
        .O(\next_switch_matrix_reg[6][0]_2 ));
  LUT6 #(
    .INIT(64'hFF54FFFFFFFFFFFF)) 
    \next_switch_matrix[0][0]_i_17 
       (.I0(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I1(Q[32]),
        .I2(Q[33]),
        .I3(Q[37]),
        .I4(Q[36]),
        .I5(Q[55]),
        .O(\next_switch_matrix_reg[4][0] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF5FD)) 
    \next_switch_matrix[0][0]_i_18 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(\next_switch_matrix[1][0]_i_7_n_0 ),
        .O(\next_switch_matrix_reg[0][0] ));
  LUT6 #(
    .INIT(64'hFF55030000000000)) 
    \next_switch_matrix[0][0]_i_19 
       (.I0(Q[36]),
        .I1(Q[32]),
        .I2(Q[33]),
        .I3(Q[37]),
        .I4(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I5(Q[55]),
        .O(\next_switch_matrix[0][0]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \next_switch_matrix[0][0]_i_1__0 
       (.I0(\G0.mem_reg[37]_2 ),
        .I1(\port_wants_to[6][1]_32 ),
        .I2(\next_switch_matrix[0][0]_i_4__0_n_0 ),
        .O(\next_switch_matrix_reg[0][0]_1 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \next_switch_matrix[0][0]_i_20 
       (.I0(\next_switch_matrix_reg[0][0] ),
        .I1(\G0.mem_reg[55]_4 ),
        .I2(\G0.mem_reg[55]_5 ),
        .I3(\next_switch_matrix_reg[4][0] ),
        .I4(\next_switch_matrix[3][0]_i_10__0_n_0 ),
        .O(\next_switch_matrix_reg[0][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h2FFF)) 
    \next_switch_matrix[0][0]_i_21 
       (.I0(Q[36]),
        .I1(Q[37]),
        .I2(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I3(Q[55]),
        .O(\next_switch_matrix[0][0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55454445)) 
    \next_switch_matrix[0][0]_i_22 
       (.I0(\next_switch_matrix[0][0]_i_30_n_0 ),
        .I1(\G0.mem_reg[37]_1 ),
        .I2(\G0.mem_reg[55]_5 ),
        .I3(\next_switch_matrix_reg[4][0] ),
        .I4(\G0.mem_reg[37]_0 ),
        .I5(\next_switch_matrix[3][0]_i_10__0_n_0 ),
        .O(\next_switch_matrix[0][0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF5FDF5FDF5FDF5F5)) 
    \next_switch_matrix[0][0]_i_24 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I4(Q[33]),
        .I5(Q[32]),
        .O(\next_switch_matrix[0][0]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \next_switch_matrix[0][0]_i_28 
       (.I0(\G0.mem_reg[55]_14 ),
        .I1(\next_switch_matrix_reg[4][0] ),
        .I2(\next_switch_matrix_reg[0][0] ),
        .O(\next_switch_matrix_reg[0][0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h222FFFFF)) 
    \next_switch_matrix[0][0]_i_3 
       (.I0(Q[36]),
        .I1(Q[37]),
        .I2(Q[34]),
        .I3(Q[35]),
        .I4(Q[55]),
        .O(\port_wants_to[6][1]_32 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h0000DCFF)) 
    \next_switch_matrix[0][0]_i_30 
       (.I0(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(Q[55]),
        .I4(\G0.mem_reg[32]_0 ),
        .O(\next_switch_matrix[0][0]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF20FF)) 
    \next_switch_matrix[0][0]_i_4__0 
       (.I0(\G0.mem_reg[36]_0 ),
        .I1(\next_switch_matrix[0][0]_i_9__0_n_0 ),
        .I2(\next_switch_matrix[0][0]_i_10__0_n_0 ),
        .I3(\next_switch_matrix[0][0]_i_11__1_n_0 ),
        .I4(\next_switch_matrix[0][0]_i_12__0_n_0 ),
        .O(\next_switch_matrix[0][0]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \next_switch_matrix[0][0]_i_7 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(Q[37]),
        .I3(\next_switch_matrix[1][0]_i_7_n_0 ),
        .O(\next_switch_matrix_reg[0][0]_2 ));
  LUT5 #(
    .INIT(32'h0000007F)) 
    \next_switch_matrix[0][0]_i_9__0 
       (.I0(\next_switch_matrix_reg[0][0] ),
        .I1(\port_wants_to[6][0]_36 ),
        .I2(\next_switch_matrix[0][0]_i_12__0_n_0 ),
        .I3(\next_switch_matrix[0][0]_i_19_n_0 ),
        .I4(\G0.mem_reg[32]_0 ),
        .O(\next_switch_matrix[0][0]_i_9__0_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0E0C0)) 
    \next_switch_matrix[1][0]_i_1 
       (.I0(\G0.mem_reg[55]_14 ),
        .I1(\next_switch_matrix[1][0]_i_3_n_0 ),
        .I2(\next_switch_matrix[1][0]_i_4_n_0 ),
        .I3(\next_switch_matrix[1][0]_i_5__0_n_0 ),
        .I4(\next_switch_matrix[1][0]_i_6_n_0 ),
        .O(\next_switch_matrix_reg[1][0] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h0E000000)) 
    \next_switch_matrix[1][0]_i_11 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I3(Q[37]),
        .I4(Q[55]),
        .O(\next_switch_matrix[1][0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FD0000)) 
    \next_switch_matrix[1][0]_i_12 
       (.I0(\next_switch_matrix[2][0]_i_21_n_0 ),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I4(Q[55]),
        .I5(\next_switch_matrix[6][0]_i_5_n_0 ),
        .O(\next_switch_matrix[1][0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \next_switch_matrix[1][0]_i_14 
       (.I0(Q[37]),
        .I1(Q[36]),
        .I2(Q[55]),
        .O(\next_switch_matrix_reg[3][0]_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFDFDFDFFFDF)) 
    \next_switch_matrix[1][0]_i_3 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\next_switch_matrix[1][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \next_switch_matrix[1][0]_i_4 
       (.I0(\port_wants_to[6][3]_33 [1]),
        .I1(\port_wants_to[6][3]_33 [0]),
        .I2(\next_switch_matrix[2][0]_i_5__0_n_0 ),
        .I3(\port_wants_to[6][3]_33 [2]),
        .I4(\next_switch_matrix[1][0]_i_8_n_0 ),
        .O(\next_switch_matrix[1][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFFFFFFFCFAFFFAF)) 
    \next_switch_matrix[1][0]_i_5__0 
       (.I0(\next_switch_matrix[3][0]_i_2_n_0 ),
        .I1(\next_switch_matrix[6][0]_i_4_n_0 ),
        .I2(\port_wants_to[6][4]_35 ),
        .I3(\next_switch_matrix[3][0]_i_4__0_n_0 ),
        .I4(\G0.mem_reg[55]_1 ),
        .I5(\G0.mem_reg[37]_0 ),
        .O(\next_switch_matrix[1][0]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABFFF)) 
    \next_switch_matrix[1][0]_i_6 
       (.I0(\next_switch_matrix[6][0]_i_3_n_0 ),
        .I1(\port_wants_to[6][3]_33 [0]),
        .I2(\port_wants_to[6][3]_33 [1]),
        .I3(\port_wants_to[6][3]_33 [2]),
        .I4(\next_switch_matrix[6][0]_i_2_n_0 ),
        .O(\next_switch_matrix[1][0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[1][0]_i_7 
       (.I0(Q[34]),
        .I1(Q[35]),
        .O(\next_switch_matrix[1][0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2FFF2F2F2F2F2)) 
    \next_switch_matrix[1][0]_i_8 
       (.I0(\port_wants_to[6][1]_32 ),
        .I1(\next_switch_matrix[0][0]_i_4__0_n_0 ),
        .I2(\G0.mem_reg[55]_10 ),
        .I3(\next_switch_matrix[1][0]_i_11_n_0 ),
        .I4(\next_switch_matrix[2][0]_i_15_n_0 ),
        .I5(\next_switch_matrix[1][0]_i_12_n_0 ),
        .O(\next_switch_matrix[1][0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \next_switch_matrix[2][0]_i_10 
       (.I0(\port_wants_to[6][3]_33 [1]),
        .I1(\next_switch_matrix[6][0]_i_4_n_0 ),
        .I2(\G0.mem_reg[32]_0 ),
        .O(\next_switch_matrix[2][0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hA800A8A8)) 
    \next_switch_matrix[2][0]_i_11 
       (.I0(\next_switch_matrix[0][0]_i_10__0_n_0 ),
        .I1(\next_switch_matrix[2][0]_i_18_n_0 ),
        .I2(\next_switch_matrix[2][0]_i_19_n_0 ),
        .I3(\G0.mem_reg[36]_0 ),
        .I4(\next_switch_matrix[0][0]_i_11__1_n_0 ),
        .O(\next_switch_matrix[2][0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h40004040)) 
    \next_switch_matrix[2][0]_i_12 
       (.I0(\next_switch_matrix[0][0]_i_12__0_n_0 ),
        .I1(Q[55]),
        .I2(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I3(Q[37]),
        .I4(Q[36]),
        .O(\next_switch_matrix[2][0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF8AFFFF)) 
    \next_switch_matrix[2][0]_i_14 
       (.I0(\next_switch_matrix[2][0]_i_21_n_0 ),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I4(Q[55]),
        .I5(\next_switch_matrix[6][0]_i_5_n_0 ),
        .O(\next_switch_matrix[2][0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFCFBB8B)) 
    \next_switch_matrix[2][0]_i_15 
       (.I0(\G0.mem_reg[32]_0 ),
        .I1(\next_switch_matrix[2][0]_i_22_n_0 ),
        .I2(\G0.mem_reg[55]_6 ),
        .I3(\next_switch_matrix[2][0]_i_24_n_0 ),
        .I4(\next_switch_matrix[6][0]_i_7_n_0 ),
        .O(\next_switch_matrix[2][0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5555555FFDFDFD7F)) 
    \next_switch_matrix[2][0]_i_17 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I3(Q[33]),
        .I4(Q[32]),
        .I5(Q[37]),
        .O(\next_switch_matrix[2][0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEEAAEAEAEEEA)) 
    \next_switch_matrix[2][0]_i_18 
       (.I0(\G0.mem_reg[32]_0 ),
        .I1(Q[55]),
        .I2(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I3(Q[37]),
        .I4(\next_switch_matrix[2][0]_i_21_n_0 ),
        .I5(Q[36]),
        .O(\next_switch_matrix[2][0]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hAA22AAA2)) 
    \next_switch_matrix[2][0]_i_19 
       (.I0(\next_switch_matrix[0][0]_i_12__0_n_0 ),
        .I1(Q[55]),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(\next_switch_matrix[1][0]_i_7_n_0 ),
        .O(\next_switch_matrix[2][0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \next_switch_matrix[2][0]_i_1__0 
       (.I0(\port_wants_to[6][3]_33 [0]),
        .I1(\port_wants_to[6][3]_33 [1]),
        .I2(\port_wants_to[6][3]_33 [2]),
        .I3(\next_switch_matrix[2][0]_i_5__0_n_0 ),
        .I4(\next_switch_matrix[2][0]_i_6_n_0 ),
        .O(\next_switch_matrix_reg[2][0] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \next_switch_matrix[2][0]_i_21 
       (.I0(Q[32]),
        .I1(Q[33]),
        .O(\next_switch_matrix[2][0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5F5F7F7F7F5)) 
    \next_switch_matrix[2][0]_i_22 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I3(Q[32]),
        .I4(Q[33]),
        .I5(Q[36]),
        .O(\next_switch_matrix[2][0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \next_switch_matrix[2][0]_i_24 
       (.I0(\next_switch_matrix[2][0]_i_27_n_0 ),
        .I1(\next_switch_matrix[2][0]_i_28_n_0 ),
        .I2(\next_switch_matrix_reg[6][0]_0 ),
        .I3(\next_switch_matrix[2][0]_i_29_n_0 ),
        .I4(\next_switch_matrix_reg[6][0] ),
        .I5(\next_switch_matrix[2][0]_i_30_n_0 ),
        .O(\next_switch_matrix[2][0]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEAAAA)) 
    \next_switch_matrix[2][0]_i_27 
       (.I0(\next_switch_matrix[3][0]_i_7__0_n_0 ),
        .I1(\port_wants_to[6][1]_32 ),
        .I2(\next_switch_matrix[2][0]_i_31_n_0 ),
        .I3(\next_switch_matrix[0][0]_i_10__0_n_0 ),
        .I4(\next_switch_matrix[2][0]_i_12_n_0 ),
        .O(\next_switch_matrix[2][0]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAAEAE)) 
    \next_switch_matrix[2][0]_i_28 
       (.I0(\G0.mem_reg[55]_9 ),
        .I1(\next_switch_matrix[2][0]_i_12_n_0 ),
        .I2(\port_wants_to[6][1]_32 ),
        .I3(\next_switch_matrix[2][0]_i_31_n_0 ),
        .I4(\next_switch_matrix[0][0]_i_10__0_n_0 ),
        .O(\next_switch_matrix[2][0]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hAAEFAAAA)) 
    \next_switch_matrix[2][0]_i_29 
       (.I0(\G0.mem_reg[55]_10 ),
        .I1(\next_switch_matrix[2][0]_i_31_n_0 ),
        .I2(\next_switch_matrix[0][0]_i_10__0_n_0 ),
        .I3(\next_switch_matrix[2][0]_i_32_n_0 ),
        .I4(\port_wants_to[6][1]_32 ),
        .O(\next_switch_matrix[2][0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1F1FFFFFFF1F)) 
    \next_switch_matrix[2][0]_i_2__1 
       (.I0(Q[32]),
        .I1(Q[33]),
        .I2(Q[55]),
        .I3(Q[36]),
        .I4(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I5(Q[37]),
        .O(\port_wants_to[6][3]_33 [0]));
  LUT5 #(
    .INIT(32'h000BFFFF)) 
    \next_switch_matrix[2][0]_i_30 
       (.I0(\next_switch_matrix[2][0]_i_31_n_0 ),
        .I1(\next_switch_matrix[0][0]_i_10__0_n_0 ),
        .I2(\next_switch_matrix[2][0]_i_32_n_0 ),
        .I3(\port_wants_to[6][1]_32 ),
        .I4(\G0.mem_reg[37]_2 ),
        .O(\next_switch_matrix[2][0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF51FF51515151)) 
    \next_switch_matrix[2][0]_i_31 
       (.I0(\next_switch_matrix[2][0]_i_18_n_0 ),
        .I1(\next_switch_matrix[0][0]_i_12__0_n_0 ),
        .I2(\next_switch_matrix_reg[6][0]_2 ),
        .I3(\G0.mem_reg[55]_12 ),
        .I4(\next_switch_matrix[2][0]_i_34_n_0 ),
        .I5(\next_switch_matrix[0][0]_i_11__1_n_0 ),
        .O(\next_switch_matrix[2][0]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \next_switch_matrix[2][0]_i_32 
       (.I0(\next_switch_matrix[0][0]_i_12__0_n_0 ),
        .I1(Q[55]),
        .I2(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I3(Q[37]),
        .I4(\next_switch_matrix[2][0]_i_21_n_0 ),
        .O(\next_switch_matrix[2][0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEAA)) 
    \next_switch_matrix[2][0]_i_34 
       (.I0(\port_wants_to[6][0]_36 ),
        .I1(\G0.mem_reg[32]_1 ),
        .I2(\G0.mem_reg[55]_13 ),
        .I3(\G0.mem_reg[32]_2 ),
        .I4(\next_switch_matrix_reg[0][0]_2 ),
        .I5(\next_switch_matrix[2][0]_i_36_n_0 ),
        .O(\next_switch_matrix[2][0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h57FF5757FFFFFFFF)) 
    \next_switch_matrix[2][0]_i_36 
       (.I0(Q[55]),
        .I1(Q[35]),
        .I2(Q[34]),
        .I3(Q[37]),
        .I4(Q[36]),
        .I5(D),
        .O(\next_switch_matrix[2][0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5F5FFFFFFF7F)) 
    \next_switch_matrix[2][0]_i_3__0 
       (.I0(Q[55]),
        .I1(Q[36]),
        .I2(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I3(Q[33]),
        .I4(Q[32]),
        .I5(Q[37]),
        .O(\port_wants_to[6][3]_33 [1]));
  LUT6 #(
    .INIT(64'h55575557FDFFFF57)) 
    \next_switch_matrix[2][0]_i_4__0 
       (.I0(Q[55]),
        .I1(Q[33]),
        .I2(Q[32]),
        .I3(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I4(Q[36]),
        .I5(Q[37]),
        .O(\port_wants_to[6][3]_33 [2]));
  LUT6 #(
    .INIT(64'h0004000400045504)) 
    \next_switch_matrix[2][0]_i_5__0 
       (.I0(\next_switch_matrix[6][0]_i_3_n_0 ),
        .I1(\next_switch_matrix[2][0]_i_7_n_0 ),
        .I2(\G0.mem_reg[55]_8 ),
        .I3(\port_wants_to[6][3]_33 [2]),
        .I4(\next_switch_matrix[2][0]_i_9_n_0 ),
        .I5(\next_switch_matrix[2][0]_i_10_n_0 ),
        .O(\next_switch_matrix[2][0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF10FF10FF10FFFF)) 
    \next_switch_matrix[2][0]_i_6 
       (.I0(\next_switch_matrix[2][0]_i_11_n_0 ),
        .I1(\port_wants_to[6][1]_32 ),
        .I2(\next_switch_matrix[2][0]_i_12_n_0 ),
        .I3(\G0.mem_reg[55]_9 ),
        .I4(\next_switch_matrix[2][0]_i_14_n_0 ),
        .I5(\next_switch_matrix[2][0]_i_15_n_0 ),
        .O(\next_switch_matrix[2][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h02320E3EC2F2CEFE)) 
    \next_switch_matrix[2][0]_i_7 
       (.I0(\next_switch_matrix_reg[0][0]_1 ),
        .I1(\port_wants_to[6][3]_33 [1]),
        .I2(\port_wants_to[6][3]_33 [0]),
        .I3(\next_switch_matrix[1][0]_i_8_n_0 ),
        .I4(\next_switch_matrix[2][0]_i_6_n_0 ),
        .I5(\next_switch_matrix[3][0]_i_2_n_0 ),
        .O(\next_switch_matrix[2][0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDFFF0)) 
    \next_switch_matrix[2][0]_i_9 
       (.I0(\G0.mem_reg[55]_0 ),
        .I1(\next_switch_matrix[4][0]_i_2__1_n_0 ),
        .I2(\G0.mem_reg[33]_1 ),
        .I3(\next_switch_matrix[5][0]_i_2__0_n_0 ),
        .I4(\next_switch_matrix[2][0]_i_17_n_0 ),
        .I5(\port_wants_to[6][3]_33 [1]),
        .O(\next_switch_matrix[2][0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5555555551515155)) 
    \next_switch_matrix[3][0]_i_1 
       (.I0(\next_switch_matrix[3][0]_i_2_n_0 ),
        .I1(\port_wants_to[6][4]_35 ),
        .I2(\next_switch_matrix[3][0]_i_4__0_n_0 ),
        .I3(\next_switch_matrix[3][0]_i_5__0_n_0 ),
        .I4(\next_switch_matrix[3][0]_i_6__1_n_0 ),
        .I5(\next_switch_matrix[1][0]_i_6_n_0 ),
        .O(\next_switch_matrix_reg[3][0] ));
  LUT5 #(
    .INIT(32'h5557DDDF)) 
    \next_switch_matrix[3][0]_i_10__0 
       (.I0(\port_wants_to[6][0]_36 ),
        .I1(\next_switch_matrix_reg[0][0] ),
        .I2(\next_switch_matrix_reg[4][0] ),
        .I3(\G0.mem_reg[55]_15 ),
        .I4(\G0.mem_reg[55]_1 ),
        .O(\next_switch_matrix[3][0]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hAB00AA0000000000)) 
    \next_switch_matrix[3][0]_i_11 
       (.I0(Q[37]),
        .I1(Q[32]),
        .I2(Q[33]),
        .I3(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I4(Q[36]),
        .I5(Q[55]),
        .O(\next_switch_matrix[3][0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hE0FF)) 
    \next_switch_matrix[3][0]_i_12__0 
       (.I0(\G0.mem_reg[32]_0 ),
        .I1(\next_switch_matrix[6][0]_i_4_n_0 ),
        .I2(\port_wants_to[6][3]_33 [1]),
        .I3(\port_wants_to[6][3]_33 [2]),
        .O(\next_switch_matrix[3][0]_i_12__0_n_0 ));
  LUT4 #(
    .INIT(16'hFF20)) 
    \next_switch_matrix[3][0]_i_2 
       (.I0(\next_switch_matrix[2][0]_i_12_n_0 ),
        .I1(\next_switch_matrix[2][0]_i_11_n_0 ),
        .I2(\port_wants_to[6][1]_32 ),
        .I3(\next_switch_matrix[3][0]_i_7__0_n_0 ),
        .O(\next_switch_matrix[3][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF5FFF5FFF5FFFDFF)) 
    \next_switch_matrix[3][0]_i_3 
       (.I0(Q[55]),
        .I1(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I2(Q[37]),
        .I3(Q[36]),
        .I4(Q[33]),
        .I5(Q[32]),
        .O(\port_wants_to[6][4]_35 ));
  LUT6 #(
    .INIT(64'hFFFF10FFFFFFFFFF)) 
    \next_switch_matrix[3][0]_i_4__0 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I3(Q[36]),
        .I4(Q[37]),
        .I5(Q[55]),
        .O(\next_switch_matrix[3][0]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \next_switch_matrix[3][0]_i_5__0 
       (.I0(\next_switch_matrix[3][0]_i_8__0_n_0 ),
        .I1(\next_switch_matrix[3][0]_i_9_n_0 ),
        .I2(\port_wants_to[6][3]_33 [2]),
        .I3(\next_switch_matrix[1][0]_i_8_n_0 ),
        .O(\next_switch_matrix[3][0]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h33000505)) 
    \next_switch_matrix[3][0]_i_6__1 
       (.I0(\next_switch_matrix[3][0]_i_2_n_0 ),
        .I1(\next_switch_matrix[6][0]_i_4_n_0 ),
        .I2(\G0.mem_reg[55]_2 ),
        .I3(\G0.mem_reg[55]_1 ),
        .I4(\next_switch_matrix[3][0]_i_4__0_n_0 ),
        .O(\next_switch_matrix[3][0]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hF0F4)) 
    \next_switch_matrix[3][0]_i_7__0 
       (.I0(\next_switch_matrix_reg[0][0] ),
        .I1(\next_switch_matrix_reg[4][0] ),
        .I2(\G0.mem_reg[55]_2 ),
        .I3(\next_switch_matrix[3][0]_i_10__0_n_0 ),
        .O(\next_switch_matrix[3][0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAFFFFFFFFFF)) 
    \next_switch_matrix[3][0]_i_8__0 
       (.I0(\G0.mem_reg[55]_14 ),
        .I1(\next_switch_matrix[2][0]_i_21_n_0 ),
        .I2(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I3(Q[36]),
        .I4(Q[37]),
        .I5(Q[55]),
        .O(\next_switch_matrix[3][0]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD55FDFD)) 
    \next_switch_matrix[3][0]_i_9 
       (.I0(\next_switch_matrix[3][0]_i_11_n_0 ),
        .I1(\next_switch_matrix[3][0]_i_12__0_n_0 ),
        .I2(\next_switch_matrix[2][0]_i_9_n_0 ),
        .I3(\G0.mem_reg[55]_7 ),
        .I4(\next_switch_matrix[2][0]_i_7_n_0 ),
        .I5(\next_switch_matrix[6][0]_i_3_n_0 ),
        .O(\next_switch_matrix[3][0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \next_switch_matrix[4][0]_i_1 
       (.I0(\next_switch_matrix[4][0]_i_2__1_n_0 ),
        .O(\next_switch_matrix_reg[4][0]_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEFE)) 
    \next_switch_matrix[4][0]_i_2__1 
       (.I0(\next_switch_matrix[4][0]_i_3__0_n_0 ),
        .I1(\G0.mem_reg[55]_3 ),
        .I2(\next_switch_matrix[4][0]_i_5__1_n_0 ),
        .I3(\next_switch_matrix_reg[6][0] ),
        .I4(\next_switch_matrix_reg[6][0]_0 ),
        .I5(\next_switch_matrix[2][0]_i_15_n_0 ),
        .O(\next_switch_matrix[4][0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \next_switch_matrix[4][0]_i_3__0 
       (.I0(\next_switch_matrix_reg[0][0] ),
        .I1(\next_switch_matrix_reg[4][0] ),
        .I2(\port_wants_to[6][0]_36 ),
        .I3(\G0.mem_reg[55]_0 ),
        .O(\next_switch_matrix[4][0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF02FFFF)) 
    \next_switch_matrix[4][0]_i_5__1 
       (.I0(\next_switch_matrix[2][0]_i_21_n_0 ),
        .I1(Q[37]),
        .I2(Q[36]),
        .I3(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I4(Q[55]),
        .I5(\next_switch_matrix[6][0]_i_5_n_0 ),
        .O(\next_switch_matrix[4][0]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAFFFAFFFFFFFF)) 
    \next_switch_matrix[4][0]_i_6__1 
       (.I0(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I1(Q[37]),
        .I2(Q[33]),
        .I3(Q[32]),
        .I4(Q[36]),
        .I5(Q[55]),
        .O(\next_switch_matrix_reg[6][0] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hF7F7F7FF)) 
    \next_switch_matrix[4][0]_i_7__0 
       (.I0(Q[55]),
        .I1(Q[37]),
        .I2(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I3(Q[32]),
        .I4(Q[33]),
        .O(\next_switch_matrix_reg[6][0]_0 ));
  LUT5 #(
    .INIT(32'h0000DFFF)) 
    \next_switch_matrix[5][0]_i_1__0 
       (.I0(\port_wants_to[6][3]_33 [2]),
        .I1(\port_wants_to[6][3]_33 [1]),
        .I2(\port_wants_to[6][3]_33 [0]),
        .I3(\next_switch_matrix[2][0]_i_5__0_n_0 ),
        .I4(\next_switch_matrix[5][0]_i_2__0_n_0 ),
        .O(\next_switch_matrix_reg[5][0] ));
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \next_switch_matrix[5][0]_i_2__0 
       (.I0(\next_switch_matrix[5][0]_i_3__0_n_0 ),
        .I1(\next_switch_matrix[4][0]_i_5__1_n_0 ),
        .I2(\next_switch_matrix_reg[6][0]_0 ),
        .I3(\next_switch_matrix_reg[6][0] ),
        .I4(\next_switch_matrix[2][0]_i_15_n_0 ),
        .O(\next_switch_matrix[5][0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAEA)) 
    \next_switch_matrix[5][0]_i_3__0 
       (.I0(\G0.mem_reg[33]_0 ),
        .I1(\next_switch_matrix_reg[4][0] ),
        .I2(\next_switch_matrix_reg[0][0] ),
        .I3(\port_wants_to[6][0]_36 ),
        .I4(\G0.mem_reg[33]_1 ),
        .O(\next_switch_matrix[5][0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFBFF)) 
    \next_switch_matrix[6][0]_i_1__0 
       (.I0(\next_switch_matrix[6][0]_i_2_n_0 ),
        .I1(\port_wants_to[6][3]_33 [2]),
        .I2(\port_wants_to[6][3]_33 [0]),
        .I3(\port_wants_to[6][3]_33 [1]),
        .I4(\next_switch_matrix[6][0]_i_3_n_0 ),
        .I5(\next_switch_matrix[6][0]_i_4_n_0 ),
        .O(\next_switch_matrix_reg[6][0]_1 ));
  LUT5 #(
    .INIT(32'hEFE0EFEF)) 
    \next_switch_matrix[6][0]_i_2 
       (.I0(\next_switch_matrix[2][0]_i_10_n_0 ),
        .I1(\next_switch_matrix[2][0]_i_9_n_0 ),
        .I2(\port_wants_to[6][3]_33 [2]),
        .I3(\G0.mem_reg[55]_8 ),
        .I4(\next_switch_matrix[2][0]_i_7_n_0 ),
        .O(\next_switch_matrix[6][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hABBBBBBB)) 
    \next_switch_matrix[6][0]_i_3 
       (.I0(\next_switch_matrix[6][0]_i_5_n_0 ),
        .I1(\next_switch_matrix[2][0]_i_15_n_0 ),
        .I2(\next_switch_matrix_reg[6][0] ),
        .I3(\port_wants_to[6][2]_34 ),
        .I4(\next_switch_matrix_reg[6][0]_0 ),
        .O(\next_switch_matrix[6][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \next_switch_matrix[6][0]_i_4 
       (.I0(\next_switch_matrix[6][0]_i_7_n_0 ),
        .I1(\next_switch_matrix[2][0]_i_15_n_0 ),
        .I2(\next_switch_matrix[4][0]_i_5__1_n_0 ),
        .I3(\next_switch_matrix_reg[6][0] ),
        .I4(\next_switch_matrix_reg[6][0]_0 ),
        .O(\next_switch_matrix[6][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAAFB)) 
    \next_switch_matrix[6][0]_i_5 
       (.I0(\next_switch_matrix[0][0]_i_12__0_n_0 ),
        .I1(\port_wants_to[6][1]_32 ),
        .I2(\next_switch_matrix[0][0]_i_19_n_0 ),
        .I3(\next_switch_matrix[2][0]_i_11_n_0 ),
        .O(\next_switch_matrix[6][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDDDFDDDFDDDFDDDD)) 
    \next_switch_matrix[6][0]_i_6 
       (.I0(Q[55]),
        .I1(\next_switch_matrix[1][0]_i_7_n_0 ),
        .I2(Q[36]),
        .I3(Q[37]),
        .I4(Q[32]),
        .I5(Q[33]),
        .O(\port_wants_to[6][2]_34 ));
  LUT6 #(
    .INIT(64'hDCDCDCDCDCDCDCDF)) 
    \next_switch_matrix[6][0]_i_7 
       (.I0(\next_switch_matrix_reg[6][0]_2 ),
        .I1(\G0.mem_reg[55]_11 ),
        .I2(\next_switch_matrix[0][0]_i_12__0_n_0 ),
        .I3(\next_switch_matrix[0][0]_i_19_n_0 ),
        .I4(\port_wants_to[6][1]_32 ),
        .I5(\next_switch_matrix[2][0]_i_11_n_0 ),
        .O(\next_switch_matrix[6][0]_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_recv" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized7
   (\next_switch_matrix_reg[6][1] ,
    Q,
    \G0.mem_reg[36]_0 ,
    reset,
    E,
    \mem_reg[55] ,
    clk);
  output \next_switch_matrix_reg[6][1] ;
  output [55:0]Q;
  input \G0.mem_reg[36]_0 ;
  input reset;
  input [0:0]E;
  input [55:0]\mem_reg[55] ;
  input clk;

  wire [0:0]E;
  wire \G0.mem_reg[36]_0 ;
  wire [55:0]Q;
  wire clk;
  wire [55:0]\mem_reg[55] ;
  wire \next_switch_matrix_reg[6][1] ;
  wire reset;

  FDRE \G0.mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \G0.mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \G0.mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \G0.mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \G0.mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \G0.mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \G0.mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \G0.mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \G0.mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \G0.mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \G0.mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \G0.mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \G0.mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \G0.mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \G0.mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \G0.mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \G0.mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \G0.mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \G0.mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \G0.mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \G0.mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \G0.mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \G0.mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \G0.mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \G0.mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \G0.mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \G0.mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \G0.mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \G0.mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \G0.mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \G0.mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \G0.mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \G0.mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \G0.mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \G0.mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \G0.mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \G0.mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \G0.mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \G0.mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \G0.mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \G0.mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \G0.mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \G0.mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \G0.mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \G0.mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \G0.mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \G0.mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \G0.mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \G0.mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \G0.mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \G0.mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \G0.mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \G0.mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \G0.mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \G0.mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [8]),
        .Q(Q[8]),
        .R(reset));
  FDRE \G0.mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(\mem_reg[55] [9]),
        .Q(Q[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \next_switch_matrix[6][1]_i_1__2 
       (.I0(Q[33]),
        .I1(Q[32]),
        .I2(\G0.mem_reg[36]_0 ),
        .I3(Q[35]),
        .I4(Q[34]),
        .I5(Q[55]),
        .O(\next_switch_matrix_reg[6][1] ));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter
   (\Outport[1] ,
    reset,
    E,
    D,
    clk);
  output [55:0]\Outport[1] ;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]\Outport[1] ;
  wire clk;
  wire reset;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\Outport[1] [0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\Outport[1] [10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\Outport[1] [11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\Outport[1] [12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\Outport[1] [13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\Outport[1] [14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(\Outport[1] [15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(\Outport[1] [16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(\Outport[1] [17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(\Outport[1] [18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(\Outport[1] [19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\Outport[1] [1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(\Outport[1] [20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(\Outport[1] [21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(\Outport[1] [22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(\Outport[1] [23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(\Outport[1] [24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(\Outport[1] [25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(\Outport[1] [26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(\Outport[1] [27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(\Outport[1] [28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(\Outport[1] [29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\Outport[1] [2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(\Outport[1] [30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(\Outport[1] [31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(\Outport[1] [32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(\Outport[1] [33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(\Outport[1] [34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(\Outport[1] [35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(\Outport[1] [36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(\Outport[1] [37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(\Outport[1] [38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(\Outport[1] [39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\Outport[1] [3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(\Outport[1] [40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(\Outport[1] [41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(\Outport[1] [42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(\Outport[1] [43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(\Outport[1] [44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(\Outport[1] [45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(\Outport[1] [46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(\Outport[1] [47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(\Outport[1] [48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(\Outport[1] [49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\Outport[1] [4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(\Outport[1] [50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(\Outport[1] [51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(\Outport[1] [52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(\Outport[1] [53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(\Outport[1] [54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(\Outport[1] [55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\Outport[1] [5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\Outport[1] [6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(\Outport[1] [7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\Outport[1] [8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\Outport[1] [9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_0
   (\Outport[3] ,
    reset,
    E,
    D,
    clk);
  output [55:0]\Outport[3] ;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]\Outport[3] ;
  wire clk;
  wire reset;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\Outport[3] [0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\Outport[3] [10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\Outport[3] [11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\Outport[3] [12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\Outport[3] [13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\Outport[3] [14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(\Outport[3] [15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(\Outport[3] [16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(\Outport[3] [17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(\Outport[3] [18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(\Outport[3] [19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\Outport[3] [1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(\Outport[3] [20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(\Outport[3] [21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(\Outport[3] [22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(\Outport[3] [23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(\Outport[3] [24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(\Outport[3] [25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(\Outport[3] [26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(\Outport[3] [27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(\Outport[3] [28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(\Outport[3] [29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\Outport[3] [2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(\Outport[3] [30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(\Outport[3] [31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(\Outport[3] [32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(\Outport[3] [33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(\Outport[3] [34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(\Outport[3] [35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(\Outport[3] [36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(\Outport[3] [37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(\Outport[3] [38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(\Outport[3] [39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\Outport[3] [3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(\Outport[3] [40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(\Outport[3] [41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(\Outport[3] [42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(\Outport[3] [43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(\Outport[3] [44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(\Outport[3] [45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(\Outport[3] [46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(\Outport[3] [47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(\Outport[3] [48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(\Outport[3] [49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\Outport[3] [4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(\Outport[3] [50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(\Outport[3] [51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(\Outport[3] [52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(\Outport[3] [53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(\Outport[3] [54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(\Outport[3] [55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\Outport[3] [5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\Outport[3] [6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(\Outport[3] [7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\Outport[3] [8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\Outport[3] [9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_1
   (write_R_reg,
    From_NoC_3,
    Q,
    reset,
    E,
    D,
    clk);
  output write_R_reg;
  output [55:0]From_NoC_3;
  input [1:0]Q;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]From_NoC_3;
  wire [1:0]Q;
  wire clk;
  wire reset;
  wire write_R_reg;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(From_NoC_3[0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(From_NoC_3[10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(From_NoC_3[11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(From_NoC_3[12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(From_NoC_3[13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(From_NoC_3[14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(From_NoC_3[15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(From_NoC_3[16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(From_NoC_3[17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(From_NoC_3[18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(From_NoC_3[19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(From_NoC_3[1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(From_NoC_3[20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(From_NoC_3[21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(From_NoC_3[22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(From_NoC_3[23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(From_NoC_3[24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(From_NoC_3[25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(From_NoC_3[26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(From_NoC_3[27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(From_NoC_3[28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(From_NoC_3[29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(From_NoC_3[2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(From_NoC_3[30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(From_NoC_3[31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(From_NoC_3[32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(From_NoC_3[33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(From_NoC_3[34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(From_NoC_3[35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(From_NoC_3[36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(From_NoC_3[37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(From_NoC_3[38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(From_NoC_3[39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(From_NoC_3[3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(From_NoC_3[40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(From_NoC_3[41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(From_NoC_3[42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(From_NoC_3[43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(From_NoC_3[44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(From_NoC_3[45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(From_NoC_3[46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(From_NoC_3[47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(From_NoC_3[48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(From_NoC_3[49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(From_NoC_3[4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(From_NoC_3[50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(From_NoC_3[51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(From_NoC_3[52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(From_NoC_3[53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(From_NoC_3[54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(From_NoC_3[55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(From_NoC_3[5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(From_NoC_3[6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(From_NoC_3[7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(From_NoC_3[8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(From_NoC_3[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'h28)) 
    write_R_i_1__1
       (.I0(From_NoC_3[55]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(write_R_reg));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_10
   (\Outport[0] ,
    reset,
    E,
    D,
    clk);
  output [55:0]\Outport[0] ;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]\Outport[0] ;
  wire clk;
  wire reset;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\Outport[0] [0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\Outport[0] [10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\Outport[0] [11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\Outport[0] [12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\Outport[0] [13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\Outport[0] [14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(\Outport[0] [15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(\Outport[0] [16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(\Outport[0] [17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(\Outport[0] [18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(\Outport[0] [19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\Outport[0] [1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(\Outport[0] [20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(\Outport[0] [21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(\Outport[0] [22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(\Outport[0] [23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(\Outport[0] [24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(\Outport[0] [25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(\Outport[0] [26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(\Outport[0] [27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(\Outport[0] [28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(\Outport[0] [29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\Outport[0] [2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(\Outport[0] [30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(\Outport[0] [31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(\Outport[0] [32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(\Outport[0] [33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(\Outport[0] [34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(\Outport[0] [35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(\Outport[0] [36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(\Outport[0] [37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(\Outport[0] [38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(\Outport[0] [39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\Outport[0] [3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(\Outport[0] [40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(\Outport[0] [41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(\Outport[0] [42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(\Outport[0] [43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(\Outport[0] [44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(\Outport[0] [45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(\Outport[0] [46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(\Outport[0] [47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(\Outport[0] [48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(\Outport[0] [49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\Outport[0] [4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(\Outport[0] [50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(\Outport[0] [51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(\Outport[0] [52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(\Outport[0] [53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(\Outport[0] [54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(\Outport[0] [55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\Outport[0] [5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\Outport[0] [6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(\Outport[0] [7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\Outport[0] [8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\Outport[0] [9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_11
   (\Outport[2] ,
    reset,
    E,
    D,
    clk);
  output [55:0]\Outport[2] ;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]\Outport[2] ;
  wire clk;
  wire reset;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\Outport[2] [0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\Outport[2] [10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\Outport[2] [11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\Outport[2] [12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\Outport[2] [13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\Outport[2] [14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(\Outport[2] [15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(\Outport[2] [16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(\Outport[2] [17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(\Outport[2] [18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(\Outport[2] [19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\Outport[2] [1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(\Outport[2] [20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(\Outport[2] [21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(\Outport[2] [22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(\Outport[2] [23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(\Outport[2] [24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(\Outport[2] [25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(\Outport[2] [26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(\Outport[2] [27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(\Outport[2] [28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(\Outport[2] [29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\Outport[2] [2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(\Outport[2] [30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(\Outport[2] [31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(\Outport[2] [32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(\Outport[2] [33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(\Outport[2] [34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(\Outport[2] [35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(\Outport[2] [36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(\Outport[2] [37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(\Outport[2] [38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(\Outport[2] [39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\Outport[2] [3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(\Outport[2] [40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(\Outport[2] [41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(\Outport[2] [42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(\Outport[2] [43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(\Outport[2] [44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(\Outport[2] [45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(\Outport[2] [46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(\Outport[2] [47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(\Outport[2] [48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(\Outport[2] [49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\Outport[2] [4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(\Outport[2] [50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(\Outport[2] [51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(\Outport[2] [52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(\Outport[2] [53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(\Outport[2] [54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(\Outport[2] [55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\Outport[2] [5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\Outport[2] [6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(\Outport[2] [7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\Outport[2] [8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\Outport[2] [9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_12
   (write_R_reg,
    From_NoC_0,
    Q,
    reset,
    E,
    D,
    clk);
  output write_R_reg;
  output [55:0]From_NoC_0;
  input [1:0]Q;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]From_NoC_0;
  wire [1:0]Q;
  wire clk;
  wire reset;
  wire write_R_reg;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(From_NoC_0[0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(From_NoC_0[10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(From_NoC_0[11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(From_NoC_0[12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(From_NoC_0[13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(From_NoC_0[14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(From_NoC_0[15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(From_NoC_0[16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(From_NoC_0[17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(From_NoC_0[18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(From_NoC_0[19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(From_NoC_0[1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(From_NoC_0[20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(From_NoC_0[21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(From_NoC_0[22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(From_NoC_0[23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(From_NoC_0[24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(From_NoC_0[25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(From_NoC_0[26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(From_NoC_0[27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(From_NoC_0[28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(From_NoC_0[29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(From_NoC_0[2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(From_NoC_0[30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(From_NoC_0[31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(From_NoC_0[32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(From_NoC_0[33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(From_NoC_0[34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(From_NoC_0[35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(From_NoC_0[36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(From_NoC_0[37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(From_NoC_0[38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(From_NoC_0[39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(From_NoC_0[3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(From_NoC_0[40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(From_NoC_0[41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(From_NoC_0[42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(From_NoC_0[43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(From_NoC_0[44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(From_NoC_0[45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(From_NoC_0[46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(From_NoC_0[47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(From_NoC_0[48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(From_NoC_0[49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(From_NoC_0[4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(From_NoC_0[50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(From_NoC_0[51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(From_NoC_0[52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(From_NoC_0[53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(From_NoC_0[54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(From_NoC_0[55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(From_NoC_0[5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(From_NoC_0[6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(From_NoC_0[7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(From_NoC_0[8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(From_NoC_0[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'h28)) 
    write_R_i_1
       (.I0(From_NoC_0[55]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(write_R_reg));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_2
   (\G0.mem_reg[55] ,
    reset,
    E,
    D,
    clk);
  output [55:0]\G0.mem_reg[55] ;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]\G0.mem_reg[55] ;
  wire clk;
  wire reset;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\G0.mem_reg[55] [0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\G0.mem_reg[55] [10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\G0.mem_reg[55] [11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\G0.mem_reg[55] [12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\G0.mem_reg[55] [13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\G0.mem_reg[55] [14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(\G0.mem_reg[55] [15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(\G0.mem_reg[55] [16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(\G0.mem_reg[55] [17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(\G0.mem_reg[55] [18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(\G0.mem_reg[55] [19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\G0.mem_reg[55] [1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(\G0.mem_reg[55] [20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(\G0.mem_reg[55] [21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(\G0.mem_reg[55] [22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(\G0.mem_reg[55] [23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(\G0.mem_reg[55] [24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(\G0.mem_reg[55] [25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(\G0.mem_reg[55] [26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(\G0.mem_reg[55] [27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(\G0.mem_reg[55] [28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(\G0.mem_reg[55] [29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\G0.mem_reg[55] [2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(\G0.mem_reg[55] [30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(\G0.mem_reg[55] [31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(\G0.mem_reg[55] [32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(\G0.mem_reg[55] [33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(\G0.mem_reg[55] [34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(\G0.mem_reg[55] [35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(\G0.mem_reg[55] [36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(\G0.mem_reg[55] [37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(\G0.mem_reg[55] [38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(\G0.mem_reg[55] [39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\G0.mem_reg[55] [3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(\G0.mem_reg[55] [40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(\G0.mem_reg[55] [41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(\G0.mem_reg[55] [42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(\G0.mem_reg[55] [43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(\G0.mem_reg[55] [44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(\G0.mem_reg[55] [45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(\G0.mem_reg[55] [46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(\G0.mem_reg[55] [47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(\G0.mem_reg[55] [48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(\G0.mem_reg[55] [49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\G0.mem_reg[55] [4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(\G0.mem_reg[55] [50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(\G0.mem_reg[55] [51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(\G0.mem_reg[55] [52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(\G0.mem_reg[55] [53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(\G0.mem_reg[55] [54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(\G0.mem_reg[55] [55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\G0.mem_reg[55] [5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\G0.mem_reg[55] [6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(\G0.mem_reg[55] [7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\G0.mem_reg[55] [8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\G0.mem_reg[55] [9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_3
   (\G0.mem_reg[55] ,
    reset,
    E,
    D,
    clk);
  output [55:0]\G0.mem_reg[55] ;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]\G0.mem_reg[55] ;
  wire clk;
  wire reset;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\G0.mem_reg[55] [0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\G0.mem_reg[55] [10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\G0.mem_reg[55] [11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\G0.mem_reg[55] [12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\G0.mem_reg[55] [13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\G0.mem_reg[55] [14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(\G0.mem_reg[55] [15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(\G0.mem_reg[55] [16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(\G0.mem_reg[55] [17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(\G0.mem_reg[55] [18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(\G0.mem_reg[55] [19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\G0.mem_reg[55] [1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(\G0.mem_reg[55] [20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(\G0.mem_reg[55] [21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(\G0.mem_reg[55] [22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(\G0.mem_reg[55] [23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(\G0.mem_reg[55] [24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(\G0.mem_reg[55] [25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(\G0.mem_reg[55] [26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(\G0.mem_reg[55] [27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(\G0.mem_reg[55] [28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(\G0.mem_reg[55] [29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\G0.mem_reg[55] [2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(\G0.mem_reg[55] [30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(\G0.mem_reg[55] [31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(\G0.mem_reg[55] [32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(\G0.mem_reg[55] [33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(\G0.mem_reg[55] [34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(\G0.mem_reg[55] [35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(\G0.mem_reg[55] [36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(\G0.mem_reg[55] [37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(\G0.mem_reg[55] [38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(\G0.mem_reg[55] [39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\G0.mem_reg[55] [3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(\G0.mem_reg[55] [40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(\G0.mem_reg[55] [41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(\G0.mem_reg[55] [42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(\G0.mem_reg[55] [43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(\G0.mem_reg[55] [44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(\G0.mem_reg[55] [45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(\G0.mem_reg[55] [46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(\G0.mem_reg[55] [47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(\G0.mem_reg[55] [48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(\G0.mem_reg[55] [49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\G0.mem_reg[55] [4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(\G0.mem_reg[55] [50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(\G0.mem_reg[55] [51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(\G0.mem_reg[55] [52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(\G0.mem_reg[55] [53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(\G0.mem_reg[55] [54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(\G0.mem_reg[55] [55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\G0.mem_reg[55] [5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\G0.mem_reg[55] [6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(\G0.mem_reg[55] [7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\G0.mem_reg[55] [8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\G0.mem_reg[55] [9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_4
   (From_NoC_1,
    reset,
    E,
    D,
    clk);
  output [55:0]From_NoC_1;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]From_NoC_1;
  wire clk;
  wire reset;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(From_NoC_1[0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(From_NoC_1[10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(From_NoC_1[11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(From_NoC_1[12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(From_NoC_1[13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(From_NoC_1[14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(From_NoC_1[15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(From_NoC_1[16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(From_NoC_1[17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(From_NoC_1[18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(From_NoC_1[19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(From_NoC_1[1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(From_NoC_1[20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(From_NoC_1[21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(From_NoC_1[22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(From_NoC_1[23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(From_NoC_1[24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(From_NoC_1[25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(From_NoC_1[26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(From_NoC_1[27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(From_NoC_1[28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(From_NoC_1[29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(From_NoC_1[2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(From_NoC_1[30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(From_NoC_1[31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(From_NoC_1[32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(From_NoC_1[33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(From_NoC_1[34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(From_NoC_1[35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(From_NoC_1[36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(From_NoC_1[37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(From_NoC_1[38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(From_NoC_1[39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(From_NoC_1[3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(From_NoC_1[40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(From_NoC_1[41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(From_NoC_1[42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(From_NoC_1[43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(From_NoC_1[44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(From_NoC_1[45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(From_NoC_1[46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(From_NoC_1[47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(From_NoC_1[48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(From_NoC_1[49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(From_NoC_1[4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(From_NoC_1[50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(From_NoC_1[51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(From_NoC_1[52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(From_NoC_1[53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(From_NoC_1[54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(From_NoC_1[55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(From_NoC_1[5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(From_NoC_1[6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(From_NoC_1[7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(From_NoC_1[8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(From_NoC_1[9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_5
   (\Outport[1] ,
    reset,
    E,
    D,
    clk);
  output [55:0]\Outport[1] ;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]\Outport[1] ;
  wire clk;
  wire reset;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\Outport[1] [0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\Outport[1] [10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\Outport[1] [11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\Outport[1] [12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\Outport[1] [13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\Outport[1] [14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(\Outport[1] [15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(\Outport[1] [16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(\Outport[1] [17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(\Outport[1] [18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(\Outport[1] [19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\Outport[1] [1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(\Outport[1] [20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(\Outport[1] [21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(\Outport[1] [22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(\Outport[1] [23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(\Outport[1] [24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(\Outport[1] [25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(\Outport[1] [26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(\Outport[1] [27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(\Outport[1] [28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(\Outport[1] [29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\Outport[1] [2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(\Outport[1] [30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(\Outport[1] [31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(\Outport[1] [32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(\Outport[1] [33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(\Outport[1] [34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(\Outport[1] [35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(\Outport[1] [36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(\Outport[1] [37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(\Outport[1] [38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(\Outport[1] [39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\Outport[1] [3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(\Outport[1] [40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(\Outport[1] [41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(\Outport[1] [42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(\Outport[1] [43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(\Outport[1] [44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(\Outport[1] [45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(\Outport[1] [46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(\Outport[1] [47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(\Outport[1] [48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(\Outport[1] [49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\Outport[1] [4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(\Outport[1] [50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(\Outport[1] [51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(\Outport[1] [52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(\Outport[1] [53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(\Outport[1] [54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(\Outport[1] [55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\Outport[1] [5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\Outport[1] [6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(\Outport[1] [7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\Outport[1] [8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\Outport[1] [9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_6
   (\Outport[2] ,
    reset,
    E,
    D,
    clk);
  output [55:0]\Outport[2] ;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]\Outport[2] ;
  wire clk;
  wire reset;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(\Outport[2] [0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\Outport[2] [10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\Outport[2] [11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\Outport[2] [12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\Outport[2] [13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\Outport[2] [14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(\Outport[2] [15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(\Outport[2] [16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(\Outport[2] [17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(\Outport[2] [18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(\Outport[2] [19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(\Outport[2] [1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(\Outport[2] [20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(\Outport[2] [21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(\Outport[2] [22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(\Outport[2] [23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(\Outport[2] [24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(\Outport[2] [25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(\Outport[2] [26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(\Outport[2] [27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(\Outport[2] [28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(\Outport[2] [29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(\Outport[2] [2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(\Outport[2] [30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(\Outport[2] [31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(\Outport[2] [32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(\Outport[2] [33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(\Outport[2] [34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(\Outport[2] [35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(\Outport[2] [36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(\Outport[2] [37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(\Outport[2] [38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(\Outport[2] [39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(\Outport[2] [3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(\Outport[2] [40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(\Outport[2] [41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(\Outport[2] [42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(\Outport[2] [43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(\Outport[2] [44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(\Outport[2] [45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(\Outport[2] [46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(\Outport[2] [47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(\Outport[2] [48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(\Outport[2] [49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(\Outport[2] [4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(\Outport[2] [50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(\Outport[2] [51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(\Outport[2] [52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(\Outport[2] [53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(\Outport[2] [54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(\Outport[2] [55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(\Outport[2] [5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(\Outport[2] [6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(\Outport[2] [7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\Outport[2] [8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\Outport[2] [9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "NoC_3D_Parallel_xmitter" *) 
module BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_7
   (write_R_reg,
    From_NoC_2,
    Q,
    reset,
    E,
    D,
    clk);
  output write_R_reg;
  output [55:0]From_NoC_2;
  input [1:0]Q;
  input reset;
  input [0:0]E;
  input [55:0]D;
  input clk;

  wire [55:0]D;
  wire [0:0]E;
  wire [55:0]From_NoC_2;
  wire [1:0]Q;
  wire clk;
  wire reset;
  wire write_R_reg;

  FDRE \mem_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(From_NoC_2[0]),
        .R(reset));
  FDRE \mem_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(From_NoC_2[10]),
        .R(reset));
  FDRE \mem_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(From_NoC_2[11]),
        .R(reset));
  FDRE \mem_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(From_NoC_2[12]),
        .R(reset));
  FDRE \mem_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(From_NoC_2[13]),
        .R(reset));
  FDRE \mem_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(From_NoC_2[14]),
        .R(reset));
  FDRE \mem_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(From_NoC_2[15]),
        .R(reset));
  FDRE \mem_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(From_NoC_2[16]),
        .R(reset));
  FDRE \mem_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(From_NoC_2[17]),
        .R(reset));
  FDRE \mem_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(From_NoC_2[18]),
        .R(reset));
  FDRE \mem_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(From_NoC_2[19]),
        .R(reset));
  FDRE \mem_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(From_NoC_2[1]),
        .R(reset));
  FDRE \mem_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(From_NoC_2[20]),
        .R(reset));
  FDRE \mem_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(From_NoC_2[21]),
        .R(reset));
  FDRE \mem_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(From_NoC_2[22]),
        .R(reset));
  FDRE \mem_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(From_NoC_2[23]),
        .R(reset));
  FDRE \mem_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(From_NoC_2[24]),
        .R(reset));
  FDRE \mem_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(From_NoC_2[25]),
        .R(reset));
  FDRE \mem_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(From_NoC_2[26]),
        .R(reset));
  FDRE \mem_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(From_NoC_2[27]),
        .R(reset));
  FDRE \mem_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(From_NoC_2[28]),
        .R(reset));
  FDRE \mem_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(From_NoC_2[29]),
        .R(reset));
  FDRE \mem_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(From_NoC_2[2]),
        .R(reset));
  FDRE \mem_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(From_NoC_2[30]),
        .R(reset));
  FDRE \mem_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(From_NoC_2[31]),
        .R(reset));
  FDRE \mem_reg[32] 
       (.C(clk),
        .CE(E),
        .D(D[32]),
        .Q(From_NoC_2[32]),
        .R(reset));
  FDRE \mem_reg[33] 
       (.C(clk),
        .CE(E),
        .D(D[33]),
        .Q(From_NoC_2[33]),
        .R(reset));
  FDRE \mem_reg[34] 
       (.C(clk),
        .CE(E),
        .D(D[34]),
        .Q(From_NoC_2[34]),
        .R(reset));
  FDRE \mem_reg[35] 
       (.C(clk),
        .CE(E),
        .D(D[35]),
        .Q(From_NoC_2[35]),
        .R(reset));
  FDRE \mem_reg[36] 
       (.C(clk),
        .CE(E),
        .D(D[36]),
        .Q(From_NoC_2[36]),
        .R(reset));
  FDRE \mem_reg[37] 
       (.C(clk),
        .CE(E),
        .D(D[37]),
        .Q(From_NoC_2[37]),
        .R(reset));
  FDRE \mem_reg[38] 
       (.C(clk),
        .CE(E),
        .D(D[38]),
        .Q(From_NoC_2[38]),
        .R(reset));
  FDRE \mem_reg[39] 
       (.C(clk),
        .CE(E),
        .D(D[39]),
        .Q(From_NoC_2[39]),
        .R(reset));
  FDRE \mem_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(From_NoC_2[3]),
        .R(reset));
  FDRE \mem_reg[40] 
       (.C(clk),
        .CE(E),
        .D(D[40]),
        .Q(From_NoC_2[40]),
        .R(reset));
  FDRE \mem_reg[41] 
       (.C(clk),
        .CE(E),
        .D(D[41]),
        .Q(From_NoC_2[41]),
        .R(reset));
  FDRE \mem_reg[42] 
       (.C(clk),
        .CE(E),
        .D(D[42]),
        .Q(From_NoC_2[42]),
        .R(reset));
  FDRE \mem_reg[43] 
       (.C(clk),
        .CE(E),
        .D(D[43]),
        .Q(From_NoC_2[43]),
        .R(reset));
  FDRE \mem_reg[44] 
       (.C(clk),
        .CE(E),
        .D(D[44]),
        .Q(From_NoC_2[44]),
        .R(reset));
  FDRE \mem_reg[45] 
       (.C(clk),
        .CE(E),
        .D(D[45]),
        .Q(From_NoC_2[45]),
        .R(reset));
  FDRE \mem_reg[46] 
       (.C(clk),
        .CE(E),
        .D(D[46]),
        .Q(From_NoC_2[46]),
        .R(reset));
  FDRE \mem_reg[47] 
       (.C(clk),
        .CE(E),
        .D(D[47]),
        .Q(From_NoC_2[47]),
        .R(reset));
  FDRE \mem_reg[48] 
       (.C(clk),
        .CE(E),
        .D(D[48]),
        .Q(From_NoC_2[48]),
        .R(reset));
  FDRE \mem_reg[49] 
       (.C(clk),
        .CE(E),
        .D(D[49]),
        .Q(From_NoC_2[49]),
        .R(reset));
  FDRE \mem_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(From_NoC_2[4]),
        .R(reset));
  FDRE \mem_reg[50] 
       (.C(clk),
        .CE(E),
        .D(D[50]),
        .Q(From_NoC_2[50]),
        .R(reset));
  FDRE \mem_reg[51] 
       (.C(clk),
        .CE(E),
        .D(D[51]),
        .Q(From_NoC_2[51]),
        .R(reset));
  FDRE \mem_reg[52] 
       (.C(clk),
        .CE(E),
        .D(D[52]),
        .Q(From_NoC_2[52]),
        .R(reset));
  FDRE \mem_reg[53] 
       (.C(clk),
        .CE(E),
        .D(D[53]),
        .Q(From_NoC_2[53]),
        .R(reset));
  FDRE \mem_reg[54] 
       (.C(clk),
        .CE(E),
        .D(D[54]),
        .Q(From_NoC_2[54]),
        .R(reset));
  FDRE \mem_reg[55] 
       (.C(clk),
        .CE(E),
        .D(D[55]),
        .Q(From_NoC_2[55]),
        .R(reset));
  FDRE \mem_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(From_NoC_2[5]),
        .R(reset));
  FDRE \mem_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(From_NoC_2[6]),
        .R(reset));
  FDRE \mem_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(From_NoC_2[7]),
        .R(reset));
  FDRE \mem_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(From_NoC_2[8]),
        .R(reset));
  FDRE \mem_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(From_NoC_2[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'h28)) 
    write_R_i_1__0
       (.I0(From_NoC_2[55]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(write_R_reg));
endmodule

(* ORIG_REF_NAME = "kth_2DNoC_2x2x1_c1_v1_0" *) 
module BD_kth_2DNoC_2x2x1_0_0_kth_2DNoC_2x2x1_c1_v1_0
   (From_NoC_1,
    read_R,
    write_R,
    From_NoC_0,
    From_NoC_2,
    From_NoC_3,
    HeartBeat_0,
    reset,
    clk,
    To_NoC_1,
    To_NoC_0,
    To_NoC_2,
    To_NoC_3);
  output [55:0]From_NoC_1;
  output [3:0]read_R;
  output [3:0]write_R;
  output [55:0]From_NoC_0;
  output [55:0]From_NoC_2;
  output [55:0]From_NoC_3;
  output HeartBeat_0;
  input reset;
  input clk;
  input [55:0]To_NoC_1;
  input [55:0]To_NoC_0;
  input [55:0]To_NoC_2;
  input [55:0]To_NoC_3;

  wire [55:0]From_NoC_0;
  wire [55:0]From_NoC_1;
  wire [55:0]From_NoC_2;
  wire [55:0]From_NoC_3;
  wire GlobalSync_i_1_n_0;
  wire GlobalSync_i_3_n_0;
  wire GlobalSync_i_4_n_0;
  wire GlobalSync_i_5_n_0;
  wire GlobalSync_i_6_n_0;
  wire GlobalSync_i_7_n_0;
  wire GlobalSync_i_8_n_0;
  wire GlobalSync_i_9_n_0;
  wire HeartBeat_0;
  wire [55:0]To_NoC_0;
  wire [55:0]To_NoC_1;
  wire [55:0]To_NoC_2;
  wire [55:0]To_NoC_3;
  wire clk;
  wire p_0_in;
  wire [3:0]read_R;
  wire reset;
  wire [30:1]timer0;
  wire \timer[0]_i_10_n_0 ;
  wire \timer[0]_i_11_n_0 ;
  wire \timer[0]_i_12_n_0 ;
  wire \timer[0]_i_13_n_0 ;
  wire \timer[0]_i_2_n_0 ;
  wire \timer[0]_i_3_n_0 ;
  wire \timer[0]_i_4_n_0 ;
  wire \timer[0]_i_5_n_0 ;
  wire \timer[0]_i_7_n_0 ;
  wire \timer[0]_i_8_n_0 ;
  wire \timer[0]_i_9_n_0 ;
  wire \timer[12]_i_10_n_0 ;
  wire \timer[12]_i_2_n_0 ;
  wire \timer[12]_i_3_n_0 ;
  wire \timer[12]_i_4_n_0 ;
  wire \timer[12]_i_5_n_0 ;
  wire \timer[12]_i_7_n_0 ;
  wire \timer[12]_i_8_n_0 ;
  wire \timer[12]_i_9_n_0 ;
  wire \timer[16]_i_10_n_0 ;
  wire \timer[16]_i_2_n_0 ;
  wire \timer[16]_i_3_n_0 ;
  wire \timer[16]_i_4_n_0 ;
  wire \timer[16]_i_5_n_0 ;
  wire \timer[16]_i_7_n_0 ;
  wire \timer[16]_i_8_n_0 ;
  wire \timer[16]_i_9_n_0 ;
  wire \timer[20]_i_10_n_0 ;
  wire \timer[20]_i_2_n_0 ;
  wire \timer[20]_i_3_n_0 ;
  wire \timer[20]_i_4_n_0 ;
  wire \timer[20]_i_5_n_0 ;
  wire \timer[20]_i_7_n_0 ;
  wire \timer[20]_i_8_n_0 ;
  wire \timer[20]_i_9_n_0 ;
  wire \timer[24]_i_10_n_0 ;
  wire \timer[24]_i_2_n_0 ;
  wire \timer[24]_i_3_n_0 ;
  wire \timer[24]_i_4_n_0 ;
  wire \timer[24]_i_5_n_0 ;
  wire \timer[24]_i_7_n_0 ;
  wire \timer[24]_i_8_n_0 ;
  wire \timer[24]_i_9_n_0 ;
  wire \timer[28]_i_2_n_0 ;
  wire \timer[28]_i_3_n_0 ;
  wire \timer[28]_i_4_n_0 ;
  wire \timer[28]_i_6_n_0 ;
  wire \timer[28]_i_7_n_0 ;
  wire \timer[4]_i_10_n_0 ;
  wire \timer[4]_i_2_n_0 ;
  wire \timer[4]_i_3_n_0 ;
  wire \timer[4]_i_4_n_0 ;
  wire \timer[4]_i_5_n_0 ;
  wire \timer[4]_i_7_n_0 ;
  wire \timer[4]_i_8_n_0 ;
  wire \timer[4]_i_9_n_0 ;
  wire \timer[8]_i_10_n_0 ;
  wire \timer[8]_i_2_n_0 ;
  wire \timer[8]_i_3_n_0 ;
  wire \timer[8]_i_4_n_0 ;
  wire \timer[8]_i_5_n_0 ;
  wire \timer[8]_i_7_n_0 ;
  wire \timer[8]_i_8_n_0 ;
  wire \timer[8]_i_9_n_0 ;
  wire [30:0]timer_reg;
  wire \timer_reg[0]_i_1_n_0 ;
  wire \timer_reg[0]_i_1_n_1 ;
  wire \timer_reg[0]_i_1_n_2 ;
  wire \timer_reg[0]_i_1_n_3 ;
  wire \timer_reg[0]_i_1_n_4 ;
  wire \timer_reg[0]_i_1_n_5 ;
  wire \timer_reg[0]_i_1_n_6 ;
  wire \timer_reg[0]_i_1_n_7 ;
  wire \timer_reg[0]_i_6_n_0 ;
  wire \timer_reg[0]_i_6_n_1 ;
  wire \timer_reg[0]_i_6_n_2 ;
  wire \timer_reg[0]_i_6_n_3 ;
  wire \timer_reg[12]_i_1_n_0 ;
  wire \timer_reg[12]_i_1_n_1 ;
  wire \timer_reg[12]_i_1_n_2 ;
  wire \timer_reg[12]_i_1_n_3 ;
  wire \timer_reg[12]_i_1_n_4 ;
  wire \timer_reg[12]_i_1_n_5 ;
  wire \timer_reg[12]_i_1_n_6 ;
  wire \timer_reg[12]_i_1_n_7 ;
  wire \timer_reg[12]_i_6_n_0 ;
  wire \timer_reg[12]_i_6_n_1 ;
  wire \timer_reg[12]_i_6_n_2 ;
  wire \timer_reg[12]_i_6_n_3 ;
  wire \timer_reg[16]_i_1_n_0 ;
  wire \timer_reg[16]_i_1_n_1 ;
  wire \timer_reg[16]_i_1_n_2 ;
  wire \timer_reg[16]_i_1_n_3 ;
  wire \timer_reg[16]_i_1_n_4 ;
  wire \timer_reg[16]_i_1_n_5 ;
  wire \timer_reg[16]_i_1_n_6 ;
  wire \timer_reg[16]_i_1_n_7 ;
  wire \timer_reg[16]_i_6_n_0 ;
  wire \timer_reg[16]_i_6_n_1 ;
  wire \timer_reg[16]_i_6_n_2 ;
  wire \timer_reg[16]_i_6_n_3 ;
  wire \timer_reg[20]_i_1_n_0 ;
  wire \timer_reg[20]_i_1_n_1 ;
  wire \timer_reg[20]_i_1_n_2 ;
  wire \timer_reg[20]_i_1_n_3 ;
  wire \timer_reg[20]_i_1_n_4 ;
  wire \timer_reg[20]_i_1_n_5 ;
  wire \timer_reg[20]_i_1_n_6 ;
  wire \timer_reg[20]_i_1_n_7 ;
  wire \timer_reg[20]_i_6_n_0 ;
  wire \timer_reg[20]_i_6_n_1 ;
  wire \timer_reg[20]_i_6_n_2 ;
  wire \timer_reg[20]_i_6_n_3 ;
  wire \timer_reg[24]_i_1_n_0 ;
  wire \timer_reg[24]_i_1_n_1 ;
  wire \timer_reg[24]_i_1_n_2 ;
  wire \timer_reg[24]_i_1_n_3 ;
  wire \timer_reg[24]_i_1_n_4 ;
  wire \timer_reg[24]_i_1_n_5 ;
  wire \timer_reg[24]_i_1_n_6 ;
  wire \timer_reg[24]_i_1_n_7 ;
  wire \timer_reg[24]_i_6_n_0 ;
  wire \timer_reg[24]_i_6_n_1 ;
  wire \timer_reg[24]_i_6_n_2 ;
  wire \timer_reg[24]_i_6_n_3 ;
  wire \timer_reg[28]_i_1_n_2 ;
  wire \timer_reg[28]_i_1_n_3 ;
  wire \timer_reg[28]_i_1_n_5 ;
  wire \timer_reg[28]_i_1_n_6 ;
  wire \timer_reg[28]_i_1_n_7 ;
  wire \timer_reg[28]_i_5_n_3 ;
  wire \timer_reg[4]_i_1_n_0 ;
  wire \timer_reg[4]_i_1_n_1 ;
  wire \timer_reg[4]_i_1_n_2 ;
  wire \timer_reg[4]_i_1_n_3 ;
  wire \timer_reg[4]_i_1_n_4 ;
  wire \timer_reg[4]_i_1_n_5 ;
  wire \timer_reg[4]_i_1_n_6 ;
  wire \timer_reg[4]_i_1_n_7 ;
  wire \timer_reg[4]_i_6_n_0 ;
  wire \timer_reg[4]_i_6_n_1 ;
  wire \timer_reg[4]_i_6_n_2 ;
  wire \timer_reg[4]_i_6_n_3 ;
  wire \timer_reg[8]_i_1_n_0 ;
  wire \timer_reg[8]_i_1_n_1 ;
  wire \timer_reg[8]_i_1_n_2 ;
  wire \timer_reg[8]_i_1_n_3 ;
  wire \timer_reg[8]_i_1_n_4 ;
  wire \timer_reg[8]_i_1_n_5 ;
  wire \timer_reg[8]_i_1_n_6 ;
  wire \timer_reg[8]_i_1_n_7 ;
  wire \timer_reg[8]_i_6_n_0 ;
  wire \timer_reg[8]_i_6_n_1 ;
  wire \timer_reg[8]_i_6_n_2 ;
  wire \timer_reg[8]_i_6_n_3 ;
  wire [3:0]write_R;
  wire [3:2]\NLW_timer_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_timer_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_timer_reg[28]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_timer_reg[28]_i_5_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    GlobalSync_i_1
       (.I0(p_0_in),
        .O(GlobalSync_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000007F0000)) 
    GlobalSync_i_2
       (.I0(timer_reg[3]),
        .I1(timer_reg[4]),
        .I2(GlobalSync_i_3_n_0),
        .I3(GlobalSync_i_4_n_0),
        .I4(GlobalSync_i_5_n_0),
        .I5(GlobalSync_i_6_n_0),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'hE)) 
    GlobalSync_i_3
       (.I0(timer_reg[1]),
        .I1(timer_reg[2]),
        .O(GlobalSync_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    GlobalSync_i_4
       (.I0(timer_reg[23]),
        .I1(timer_reg[18]),
        .I2(timer_reg[21]),
        .I3(timer_reg[20]),
        .O(GlobalSync_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    GlobalSync_i_5
       (.I0(timer_reg[30]),
        .I1(timer_reg[9]),
        .I2(timer_reg[5]),
        .I3(timer_reg[29]),
        .I4(timer_reg[10]),
        .I5(timer_reg[11]),
        .O(GlobalSync_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    GlobalSync_i_6
       (.I0(GlobalSync_i_7_n_0),
        .I1(timer_reg[28]),
        .I2(timer_reg[27]),
        .I3(timer_reg[7]),
        .I4(timer_reg[6]),
        .I5(GlobalSync_i_8_n_0),
        .O(GlobalSync_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    GlobalSync_i_7
       (.I0(timer_reg[17]),
        .I1(timer_reg[16]),
        .I2(timer_reg[25]),
        .I3(timer_reg[24]),
        .O(GlobalSync_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    GlobalSync_i_8
       (.I0(timer_reg[13]),
        .I1(timer_reg[14]),
        .I2(timer_reg[12]),
        .I3(timer_reg[15]),
        .I4(GlobalSync_i_9_n_0),
        .O(GlobalSync_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    GlobalSync_i_9
       (.I0(timer_reg[26]),
        .I1(timer_reg[8]),
        .I2(timer_reg[22]),
        .I3(timer_reg[19]),
        .O(GlobalSync_i_9_n_0));
  FDRE GlobalSync_reg
       (.C(clk),
        .CE(1'b1),
        .D(GlobalSync_i_1_n_0),
        .Q(HeartBeat_0),
        .R(1'b0));
  BD_kth_2DNoC_2x2x1_0_0_NoC_2D_Parallel NOC
       (.From_NoC_0(From_NoC_0),
        .From_NoC_1(From_NoC_1),
        .From_NoC_2(From_NoC_2),
        .From_NoC_3(From_NoC_3),
        .To_NoC_0(To_NoC_0),
        .To_NoC_1(To_NoC_1),
        .To_NoC_2(To_NoC_2),
        .To_NoC_3(To_NoC_3),
        .clk(clk),
        .read_R(read_R),
        .reset(reset),
        .write_R(write_R));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[0]_i_10 
       (.I0(timer_reg[2]),
        .O(\timer[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[0]_i_11 
       (.I0(timer_reg[1]),
        .O(\timer[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \timer[0]_i_12 
       (.I0(timer_reg[3]),
        .I1(timer_reg[5]),
        .I2(timer_reg[10]),
        .I3(timer_reg[11]),
        .I4(\timer[0]_i_13_n_0 ),
        .O(\timer[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[0]_i_13 
       (.I0(timer_reg[30]),
        .I1(timer_reg[9]),
        .I2(timer_reg[2]),
        .I3(timer_reg[1]),
        .O(\timer[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timer[0]_i_2 
       (.I0(timer_reg[3]),
        .I1(p_0_in),
        .I2(timer0[3]),
        .I3(\timer[0]_i_7_n_0 ),
        .O(\timer[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timer[0]_i_3 
       (.I0(timer_reg[2]),
        .I1(p_0_in),
        .I2(timer0[2]),
        .I3(\timer[0]_i_7_n_0 ),
        .O(\timer[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timer[0]_i_4 
       (.I0(timer_reg[1]),
        .I1(p_0_in),
        .I2(timer0[1]),
        .I3(\timer[0]_i_7_n_0 ),
        .O(\timer[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_5 
       (.I0(timer_reg[0]),
        .O(\timer[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \timer[0]_i_7 
       (.I0(GlobalSync_i_6_n_0),
        .I1(GlobalSync_i_4_n_0),
        .I2(timer_reg[0]),
        .I3(timer_reg[4]),
        .I4(timer_reg[29]),
        .I5(\timer[0]_i_12_n_0 ),
        .O(\timer[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[0]_i_8 
       (.I0(timer_reg[4]),
        .O(\timer[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[0]_i_9 
       (.I0(timer_reg[3]),
        .O(\timer[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[12]_i_10 
       (.I0(timer_reg[13]),
        .O(\timer[12]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[12]_i_2 
       (.I0(p_0_in),
        .I1(timer0[15]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[12]_i_3 
       (.I0(p_0_in),
        .I1(timer0[14]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[12]_i_4 
       (.I0(p_0_in),
        .I1(timer0[13]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[12]_i_5 
       (.I0(p_0_in),
        .I1(timer0[12]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[12]_i_7 
       (.I0(timer_reg[16]),
        .O(\timer[12]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[12]_i_8 
       (.I0(timer_reg[15]),
        .O(\timer[12]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[12]_i_9 
       (.I0(timer_reg[14]),
        .O(\timer[12]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[16]_i_10 
       (.I0(timer_reg[17]),
        .O(\timer[16]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[16]_i_2 
       (.I0(p_0_in),
        .I1(timer0[19]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[16]_i_3 
       (.I0(p_0_in),
        .I1(timer0[18]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[16]_i_4 
       (.I0(p_0_in),
        .I1(timer0[17]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[16]_i_5 
       (.I0(p_0_in),
        .I1(timer0[16]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[16]_i_7 
       (.I0(timer_reg[20]),
        .O(\timer[16]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[16]_i_8 
       (.I0(timer_reg[19]),
        .O(\timer[16]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[16]_i_9 
       (.I0(timer_reg[18]),
        .O(\timer[16]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[20]_i_10 
       (.I0(timer_reg[21]),
        .O(\timer[20]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[20]_i_2 
       (.I0(p_0_in),
        .I1(timer0[23]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[20]_i_3 
       (.I0(p_0_in),
        .I1(timer0[22]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[20]_i_4 
       (.I0(p_0_in),
        .I1(timer0[21]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[20]_i_5 
       (.I0(p_0_in),
        .I1(timer0[20]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[20]_i_7 
       (.I0(timer_reg[24]),
        .O(\timer[20]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[20]_i_8 
       (.I0(timer_reg[23]),
        .O(\timer[20]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[20]_i_9 
       (.I0(timer_reg[22]),
        .O(\timer[20]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[24]_i_10 
       (.I0(timer_reg[25]),
        .O(\timer[24]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[24]_i_2 
       (.I0(p_0_in),
        .I1(timer0[27]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[24]_i_3 
       (.I0(p_0_in),
        .I1(timer0[26]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[24]_i_4 
       (.I0(p_0_in),
        .I1(timer0[25]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[24]_i_5 
       (.I0(p_0_in),
        .I1(timer0[24]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[24]_i_7 
       (.I0(timer_reg[28]),
        .O(\timer[24]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[24]_i_8 
       (.I0(timer_reg[27]),
        .O(\timer[24]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[24]_i_9 
       (.I0(timer_reg[26]),
        .O(\timer[24]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[28]_i_2 
       (.I0(p_0_in),
        .I1(timer0[30]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[28]_i_3 
       (.I0(p_0_in),
        .I1(timer0[29]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[28]_i_4 
       (.I0(p_0_in),
        .I1(timer0[28]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[28]_i_6 
       (.I0(timer_reg[30]),
        .O(\timer[28]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[28]_i_7 
       (.I0(timer_reg[29]),
        .O(\timer[28]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[4]_i_10 
       (.I0(timer_reg[5]),
        .O(\timer[4]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[4]_i_2 
       (.I0(p_0_in),
        .I1(timer0[7]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[4]_i_3 
       (.I0(p_0_in),
        .I1(timer0[6]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[4]_i_4 
       (.I0(p_0_in),
        .I1(timer0[5]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \timer[4]_i_5 
       (.I0(timer_reg[4]),
        .I1(p_0_in),
        .I2(timer0[4]),
        .I3(\timer[0]_i_7_n_0 ),
        .O(\timer[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[4]_i_7 
       (.I0(timer_reg[8]),
        .O(\timer[4]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[4]_i_8 
       (.I0(timer_reg[7]),
        .O(\timer[4]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[4]_i_9 
       (.I0(timer_reg[6]),
        .O(\timer[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[8]_i_10 
       (.I0(timer_reg[9]),
        .O(\timer[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[8]_i_2 
       (.I0(p_0_in),
        .I1(timer0[11]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[8]_i_3 
       (.I0(p_0_in),
        .I1(timer0[10]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[8]_i_4 
       (.I0(p_0_in),
        .I1(timer0[9]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \timer[8]_i_5 
       (.I0(p_0_in),
        .I1(timer0[8]),
        .I2(\timer[0]_i_7_n_0 ),
        .O(\timer[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[8]_i_7 
       (.I0(timer_reg[12]),
        .O(\timer[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[8]_i_8 
       (.I0(timer_reg[11]),
        .O(\timer[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \timer[8]_i_9 
       (.I0(timer_reg[10]),
        .O(\timer[8]_i_9_n_0 ));
  FDRE \timer_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_7 ),
        .Q(timer_reg[0]),
        .R(1'b0));
  CARRY4 \timer_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\timer_reg[0]_i_1_n_0 ,\timer_reg[0]_i_1_n_1 ,\timer_reg[0]_i_1_n_2 ,\timer_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in}),
        .O({\timer_reg[0]_i_1_n_4 ,\timer_reg[0]_i_1_n_5 ,\timer_reg[0]_i_1_n_6 ,\timer_reg[0]_i_1_n_7 }),
        .S({\timer[0]_i_2_n_0 ,\timer[0]_i_3_n_0 ,\timer[0]_i_4_n_0 ,\timer[0]_i_5_n_0 }));
  CARRY4 \timer_reg[0]_i_6 
       (.CI(1'b0),
        .CO({\timer_reg[0]_i_6_n_0 ,\timer_reg[0]_i_6_n_1 ,\timer_reg[0]_i_6_n_2 ,\timer_reg[0]_i_6_n_3 }),
        .CYINIT(timer_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer0[4:1]),
        .S({\timer[0]_i_8_n_0 ,\timer[0]_i_9_n_0 ,\timer[0]_i_10_n_0 ,\timer[0]_i_11_n_0 }));
  FDRE \timer_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_5 ),
        .Q(timer_reg[10]),
        .R(1'b0));
  FDRE \timer_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_4 ),
        .Q(timer_reg[11]),
        .R(1'b0));
  FDRE \timer_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_7 ),
        .Q(timer_reg[12]),
        .R(1'b0));
  CARRY4 \timer_reg[12]_i_1 
       (.CI(\timer_reg[8]_i_1_n_0 ),
        .CO({\timer_reg[12]_i_1_n_0 ,\timer_reg[12]_i_1_n_1 ,\timer_reg[12]_i_1_n_2 ,\timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[12]_i_1_n_4 ,\timer_reg[12]_i_1_n_5 ,\timer_reg[12]_i_1_n_6 ,\timer_reg[12]_i_1_n_7 }),
        .S({\timer[12]_i_2_n_0 ,\timer[12]_i_3_n_0 ,\timer[12]_i_4_n_0 ,\timer[12]_i_5_n_0 }));
  CARRY4 \timer_reg[12]_i_6 
       (.CI(\timer_reg[8]_i_6_n_0 ),
        .CO({\timer_reg[12]_i_6_n_0 ,\timer_reg[12]_i_6_n_1 ,\timer_reg[12]_i_6_n_2 ,\timer_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer0[16:13]),
        .S({\timer[12]_i_7_n_0 ,\timer[12]_i_8_n_0 ,\timer[12]_i_9_n_0 ,\timer[12]_i_10_n_0 }));
  FDRE \timer_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_6 ),
        .Q(timer_reg[13]),
        .R(1'b0));
  FDRE \timer_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_5 ),
        .Q(timer_reg[14]),
        .R(1'b0));
  FDRE \timer_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_4 ),
        .Q(timer_reg[15]),
        .R(1'b0));
  FDRE \timer_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_7 ),
        .Q(timer_reg[16]),
        .R(1'b0));
  CARRY4 \timer_reg[16]_i_1 
       (.CI(\timer_reg[12]_i_1_n_0 ),
        .CO({\timer_reg[16]_i_1_n_0 ,\timer_reg[16]_i_1_n_1 ,\timer_reg[16]_i_1_n_2 ,\timer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[16]_i_1_n_4 ,\timer_reg[16]_i_1_n_5 ,\timer_reg[16]_i_1_n_6 ,\timer_reg[16]_i_1_n_7 }),
        .S({\timer[16]_i_2_n_0 ,\timer[16]_i_3_n_0 ,\timer[16]_i_4_n_0 ,\timer[16]_i_5_n_0 }));
  CARRY4 \timer_reg[16]_i_6 
       (.CI(\timer_reg[12]_i_6_n_0 ),
        .CO({\timer_reg[16]_i_6_n_0 ,\timer_reg[16]_i_6_n_1 ,\timer_reg[16]_i_6_n_2 ,\timer_reg[16]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer0[20:17]),
        .S({\timer[16]_i_7_n_0 ,\timer[16]_i_8_n_0 ,\timer[16]_i_9_n_0 ,\timer[16]_i_10_n_0 }));
  FDRE \timer_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_6 ),
        .Q(timer_reg[17]),
        .R(1'b0));
  FDRE \timer_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_5 ),
        .Q(timer_reg[18]),
        .R(1'b0));
  FDRE \timer_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_4 ),
        .Q(timer_reg[19]),
        .R(1'b0));
  FDRE \timer_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_6 ),
        .Q(timer_reg[1]),
        .R(1'b0));
  FDRE \timer_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_7 ),
        .Q(timer_reg[20]),
        .R(1'b0));
  CARRY4 \timer_reg[20]_i_1 
       (.CI(\timer_reg[16]_i_1_n_0 ),
        .CO({\timer_reg[20]_i_1_n_0 ,\timer_reg[20]_i_1_n_1 ,\timer_reg[20]_i_1_n_2 ,\timer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[20]_i_1_n_4 ,\timer_reg[20]_i_1_n_5 ,\timer_reg[20]_i_1_n_6 ,\timer_reg[20]_i_1_n_7 }),
        .S({\timer[20]_i_2_n_0 ,\timer[20]_i_3_n_0 ,\timer[20]_i_4_n_0 ,\timer[20]_i_5_n_0 }));
  CARRY4 \timer_reg[20]_i_6 
       (.CI(\timer_reg[16]_i_6_n_0 ),
        .CO({\timer_reg[20]_i_6_n_0 ,\timer_reg[20]_i_6_n_1 ,\timer_reg[20]_i_6_n_2 ,\timer_reg[20]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer0[24:21]),
        .S({\timer[20]_i_7_n_0 ,\timer[20]_i_8_n_0 ,\timer[20]_i_9_n_0 ,\timer[20]_i_10_n_0 }));
  FDRE \timer_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_6 ),
        .Q(timer_reg[21]),
        .R(1'b0));
  FDRE \timer_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_5 ),
        .Q(timer_reg[22]),
        .R(1'b0));
  FDRE \timer_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_4 ),
        .Q(timer_reg[23]),
        .R(1'b0));
  FDRE \timer_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_7 ),
        .Q(timer_reg[24]),
        .R(1'b0));
  CARRY4 \timer_reg[24]_i_1 
       (.CI(\timer_reg[20]_i_1_n_0 ),
        .CO({\timer_reg[24]_i_1_n_0 ,\timer_reg[24]_i_1_n_1 ,\timer_reg[24]_i_1_n_2 ,\timer_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[24]_i_1_n_4 ,\timer_reg[24]_i_1_n_5 ,\timer_reg[24]_i_1_n_6 ,\timer_reg[24]_i_1_n_7 }),
        .S({\timer[24]_i_2_n_0 ,\timer[24]_i_3_n_0 ,\timer[24]_i_4_n_0 ,\timer[24]_i_5_n_0 }));
  CARRY4 \timer_reg[24]_i_6 
       (.CI(\timer_reg[20]_i_6_n_0 ),
        .CO({\timer_reg[24]_i_6_n_0 ,\timer_reg[24]_i_6_n_1 ,\timer_reg[24]_i_6_n_2 ,\timer_reg[24]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer0[28:25]),
        .S({\timer[24]_i_7_n_0 ,\timer[24]_i_8_n_0 ,\timer[24]_i_9_n_0 ,\timer[24]_i_10_n_0 }));
  FDRE \timer_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_6 ),
        .Q(timer_reg[25]),
        .R(1'b0));
  FDRE \timer_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_5 ),
        .Q(timer_reg[26]),
        .R(1'b0));
  FDRE \timer_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_4 ),
        .Q(timer_reg[27]),
        .R(1'b0));
  FDRE \timer_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_7 ),
        .Q(timer_reg[28]),
        .R(1'b0));
  CARRY4 \timer_reg[28]_i_1 
       (.CI(\timer_reg[24]_i_1_n_0 ),
        .CO({\NLW_timer_reg[28]_i_1_CO_UNCONNECTED [3:2],\timer_reg[28]_i_1_n_2 ,\timer_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_timer_reg[28]_i_1_O_UNCONNECTED [3],\timer_reg[28]_i_1_n_5 ,\timer_reg[28]_i_1_n_6 ,\timer_reg[28]_i_1_n_7 }),
        .S({1'b0,\timer[28]_i_2_n_0 ,\timer[28]_i_3_n_0 ,\timer[28]_i_4_n_0 }));
  CARRY4 \timer_reg[28]_i_5 
       (.CI(\timer_reg[24]_i_6_n_0 ),
        .CO({\NLW_timer_reg[28]_i_5_CO_UNCONNECTED [3:1],\timer_reg[28]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_timer_reg[28]_i_5_O_UNCONNECTED [3:2],timer0[30:29]}),
        .S({1'b0,1'b0,\timer[28]_i_6_n_0 ,\timer[28]_i_7_n_0 }));
  FDRE \timer_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_6 ),
        .Q(timer_reg[29]),
        .R(1'b0));
  FDRE \timer_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_5 ),
        .Q(timer_reg[2]),
        .R(1'b0));
  FDRE \timer_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_5 ),
        .Q(timer_reg[30]),
        .R(1'b0));
  FDRE \timer_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_1_n_4 ),
        .Q(timer_reg[3]),
        .R(1'b0));
  FDRE \timer_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_7 ),
        .Q(timer_reg[4]),
        .R(1'b0));
  CARRY4 \timer_reg[4]_i_1 
       (.CI(\timer_reg[0]_i_1_n_0 ),
        .CO({\timer_reg[4]_i_1_n_0 ,\timer_reg[4]_i_1_n_1 ,\timer_reg[4]_i_1_n_2 ,\timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[4]_i_1_n_4 ,\timer_reg[4]_i_1_n_5 ,\timer_reg[4]_i_1_n_6 ,\timer_reg[4]_i_1_n_7 }),
        .S({\timer[4]_i_2_n_0 ,\timer[4]_i_3_n_0 ,\timer[4]_i_4_n_0 ,\timer[4]_i_5_n_0 }));
  CARRY4 \timer_reg[4]_i_6 
       (.CI(\timer_reg[0]_i_6_n_0 ),
        .CO({\timer_reg[4]_i_6_n_0 ,\timer_reg[4]_i_6_n_1 ,\timer_reg[4]_i_6_n_2 ,\timer_reg[4]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer0[8:5]),
        .S({\timer[4]_i_7_n_0 ,\timer[4]_i_8_n_0 ,\timer[4]_i_9_n_0 ,\timer[4]_i_10_n_0 }));
  FDRE \timer_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_6 ),
        .Q(timer_reg[5]),
        .R(1'b0));
  FDRE \timer_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_5 ),
        .Q(timer_reg[6]),
        .R(1'b0));
  FDRE \timer_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_4 ),
        .Q(timer_reg[7]),
        .R(1'b0));
  FDRE \timer_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_7 ),
        .Q(timer_reg[8]),
        .R(1'b0));
  CARRY4 \timer_reg[8]_i_1 
       (.CI(\timer_reg[4]_i_1_n_0 ),
        .CO({\timer_reg[8]_i_1_n_0 ,\timer_reg[8]_i_1_n_1 ,\timer_reg[8]_i_1_n_2 ,\timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[8]_i_1_n_4 ,\timer_reg[8]_i_1_n_5 ,\timer_reg[8]_i_1_n_6 ,\timer_reg[8]_i_1_n_7 }),
        .S({\timer[8]_i_2_n_0 ,\timer[8]_i_3_n_0 ,\timer[8]_i_4_n_0 ,\timer[8]_i_5_n_0 }));
  CARRY4 \timer_reg[8]_i_6 
       (.CI(\timer_reg[4]_i_6_n_0 ),
        .CO({\timer_reg[8]_i_6_n_0 ,\timer_reg[8]_i_6_n_1 ,\timer_reg[8]_i_6_n_2 ,\timer_reg[8]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(timer0[12:9]),
        .S({\timer[8]_i_7_n_0 ,\timer[8]_i_8_n_0 ,\timer[8]_i_9_n_0 ,\timer[8]_i_10_n_0 }));
  FDRE \timer_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_6 ),
        .Q(timer_reg[9]),
        .R(1'b0));
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
