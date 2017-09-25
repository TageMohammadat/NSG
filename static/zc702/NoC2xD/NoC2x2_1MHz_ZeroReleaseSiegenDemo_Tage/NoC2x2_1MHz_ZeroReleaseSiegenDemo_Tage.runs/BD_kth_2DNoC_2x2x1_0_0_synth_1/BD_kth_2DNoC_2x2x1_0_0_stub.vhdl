-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
-- Date        : Mon Oct 31 17:12:48 2016
-- Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_kth_2DNoC_2x2x1_0_0_stub.vhdl
-- Design      : BD_kth_2DNoC_2x2x1_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    To_NoC_0 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_0 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    Sync_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    HeartBeat_0 : out STD_LOGIC;
    To_NoC_1 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_1 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    Sync_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    HeartBeat_1 : out STD_LOGIC;
    To_NoC_2 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_2 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    Sync_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    HeartBeat_2 : out STD_LOGIC;
    To_NoC_3 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_3 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    Sync_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    HeartBeat_3 : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,To_NoC_0[55:0],From_NoC_0[55:0],Sync_0[1:0],HeartBeat_0,To_NoC_1[55:0],From_NoC_1[55:0],Sync_1[1:0],HeartBeat_1,To_NoC_2[55:0],From_NoC_2[55:0],Sync_2[1:0],HeartBeat_2,To_NoC_3[55:0],From_NoC_3[55:0],Sync_3[1:0],HeartBeat_3";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "kth_2DNoC_2x2x1_c1_v1_0,Vivado 2016.3";
begin
end;
