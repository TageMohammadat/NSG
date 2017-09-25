// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
// Date        : Mon Oct 31 17:12:48 2016
// Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_kth_2DNoC_2x2x1_0_0_stub.v
// Design      : BD_kth_2DNoC_2x2x1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "kth_2DNoC_2x2x1_c1_v1_0,Vivado 2016.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, To_NoC_0, From_NoC_0, Sync_0, 
  HeartBeat_0, To_NoC_1, From_NoC_1, Sync_1, HeartBeat_1, To_NoC_2, From_NoC_2, Sync_2, 
  HeartBeat_2, To_NoC_3, From_NoC_3, Sync_3, HeartBeat_3)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,To_NoC_0[55:0],From_NoC_0[55:0],Sync_0[1:0],HeartBeat_0,To_NoC_1[55:0],From_NoC_1[55:0],Sync_1[1:0],HeartBeat_1,To_NoC_2[55:0],From_NoC_2[55:0],Sync_2[1:0],HeartBeat_2,To_NoC_3[55:0],From_NoC_3[55:0],Sync_3[1:0],HeartBeat_3" */;
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
endmodule
