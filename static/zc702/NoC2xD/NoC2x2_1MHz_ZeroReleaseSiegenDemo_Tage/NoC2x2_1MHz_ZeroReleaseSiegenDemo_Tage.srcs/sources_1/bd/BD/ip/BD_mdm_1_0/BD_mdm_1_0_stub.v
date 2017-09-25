// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
// Date        : Mon Oct 31 17:11:33 2016
// Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tage/DegreeProject/zc702/NoC2xD/NoC2x2_1MHz_ZeroReleaseSiegenDemo_Tage/NoC2x2_1MHz_ZeroReleaseSiegenDemo_Tage.srcs/sources_1/bd/BD/ip/BD_mdm_1_0/BD_mdm_1_0_stub.v
// Design      : BD_mdm_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MDM,Vivado 2016.3" *)
module BD_mdm_1_0(Debug_SYS_Rst, Dbg_Clk_0, Dbg_TDI_0, Dbg_TDO_0, 
  Dbg_Reg_En_0, Dbg_Capture_0, Dbg_Shift_0, Dbg_Update_0, Dbg_Rst_0, Dbg_Disable_0, Dbg_Clk_1, 
  Dbg_TDI_1, Dbg_TDO_1, Dbg_Reg_En_1, Dbg_Capture_1, Dbg_Shift_1, Dbg_Update_1, Dbg_Rst_1, 
  Dbg_Disable_1, Dbg_Clk_2, Dbg_TDI_2, Dbg_TDO_2, Dbg_Reg_En_2, Dbg_Capture_2, Dbg_Shift_2, 
  Dbg_Update_2, Dbg_Rst_2, Dbg_Disable_2, Dbg_Clk_3, Dbg_TDI_3, Dbg_TDO_3, Dbg_Reg_En_3, 
  Dbg_Capture_3, Dbg_Shift_3, Dbg_Update_3, Dbg_Rst_3, Dbg_Disable_3, Dbg_Clk_4, Dbg_TDI_4, 
  Dbg_TDO_4, Dbg_Reg_En_4, Dbg_Capture_4, Dbg_Shift_4, Dbg_Update_4, Dbg_Rst_4, Dbg_Disable_4, 
  Dbg_Clk_5, Dbg_TDI_5, Dbg_TDO_5, Dbg_Reg_En_5, Dbg_Capture_5, Dbg_Shift_5, Dbg_Update_5, 
  Dbg_Rst_5, Dbg_Disable_5)
/* synthesis syn_black_box black_box_pad_pin="Debug_SYS_Rst,Dbg_Clk_0,Dbg_TDI_0,Dbg_TDO_0,Dbg_Reg_En_0[0:7],Dbg_Capture_0,Dbg_Shift_0,Dbg_Update_0,Dbg_Rst_0,Dbg_Disable_0,Dbg_Clk_1,Dbg_TDI_1,Dbg_TDO_1,Dbg_Reg_En_1[0:7],Dbg_Capture_1,Dbg_Shift_1,Dbg_Update_1,Dbg_Rst_1,Dbg_Disable_1,Dbg_Clk_2,Dbg_TDI_2,Dbg_TDO_2,Dbg_Reg_En_2[0:7],Dbg_Capture_2,Dbg_Shift_2,Dbg_Update_2,Dbg_Rst_2,Dbg_Disable_2,Dbg_Clk_3,Dbg_TDI_3,Dbg_TDO_3,Dbg_Reg_En_3[0:7],Dbg_Capture_3,Dbg_Shift_3,Dbg_Update_3,Dbg_Rst_3,Dbg_Disable_3,Dbg_Clk_4,Dbg_TDI_4,Dbg_TDO_4,Dbg_Reg_En_4[0:7],Dbg_Capture_4,Dbg_Shift_4,Dbg_Update_4,Dbg_Rst_4,Dbg_Disable_4,Dbg_Clk_5,Dbg_TDI_5,Dbg_TDO_5,Dbg_Reg_En_5[0:7],Dbg_Capture_5,Dbg_Shift_5,Dbg_Update_5,Dbg_Rst_5,Dbg_Disable_5" */;
  output Debug_SYS_Rst;
  output Dbg_Clk_0;
  output Dbg_TDI_0;
  input Dbg_TDO_0;
  output [0:7]Dbg_Reg_En_0;
  output Dbg_Capture_0;
  output Dbg_Shift_0;
  output Dbg_Update_0;
  output Dbg_Rst_0;
  output Dbg_Disable_0;
  output Dbg_Clk_1;
  output Dbg_TDI_1;
  input Dbg_TDO_1;
  output [0:7]Dbg_Reg_En_1;
  output Dbg_Capture_1;
  output Dbg_Shift_1;
  output Dbg_Update_1;
  output Dbg_Rst_1;
  output Dbg_Disable_1;
  output Dbg_Clk_2;
  output Dbg_TDI_2;
  input Dbg_TDO_2;
  output [0:7]Dbg_Reg_En_2;
  output Dbg_Capture_2;
  output Dbg_Shift_2;
  output Dbg_Update_2;
  output Dbg_Rst_2;
  output Dbg_Disable_2;
  output Dbg_Clk_3;
  output Dbg_TDI_3;
  input Dbg_TDO_3;
  output [0:7]Dbg_Reg_En_3;
  output Dbg_Capture_3;
  output Dbg_Shift_3;
  output Dbg_Update_3;
  output Dbg_Rst_3;
  output Dbg_Disable_3;
  output Dbg_Clk_4;
  output Dbg_TDI_4;
  input Dbg_TDO_4;
  output [0:7]Dbg_Reg_En_4;
  output Dbg_Capture_4;
  output Dbg_Shift_4;
  output Dbg_Update_4;
  output Dbg_Rst_4;
  output Dbg_Disable_4;
  output Dbg_Clk_5;
  output Dbg_TDI_5;
  input Dbg_TDO_5;
  output [0:7]Dbg_Reg_En_5;
  output Dbg_Capture_5;
  output Dbg_Shift_5;
  output Dbg_Update_5;
  output Dbg_Rst_5;
  output Dbg_Disable_5;
endmodule
