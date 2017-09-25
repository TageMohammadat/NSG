-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
-- Date        : Mon Oct 31 17:10:25 2016
-- Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tage/DegreeProject/zc702/NoC2xD/NoC2x2_1MHz_ZeroReleaseSiegenDemo_Tage/NoC2x2_1MHz_ZeroReleaseSiegenDemo_Tage.srcs/sources_1/bd/BD/ip/BD_clk_wiz_0/BD_clk_wiz_0_stub.vhdl
-- Design      : BD_clk_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BD_clk_wiz_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end BD_clk_wiz_0;

architecture stub of BD_clk_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_in1_p,clk_in1_n";
begin
end;
