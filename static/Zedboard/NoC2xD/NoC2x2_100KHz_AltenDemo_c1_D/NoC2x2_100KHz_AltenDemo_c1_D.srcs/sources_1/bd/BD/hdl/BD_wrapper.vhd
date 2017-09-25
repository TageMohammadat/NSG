--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4.2 (lin64) Build 1494164 Fri Feb 26 04:18:54 MST 2016
--Date        : Mon Oct 31 17:00:29 2016
--Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
--Command     : generate_target BD_wrapper.bd
--Design      : BD_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_wrapper is
  port (
    BTNC : in STD_LOGIC;
    GCLK : in STD_LOGIC;
    LD0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    LD1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    LD2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    LD3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    LD7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SW0 : in STD_LOGIC;
    SW1 : in STD_LOGIC;
    SW2 : in STD_LOGIC;
    SW3 : in STD_LOGIC;
    SW7 : in STD_LOGIC
  );
end BD_wrapper;

architecture STRUCTURE of BD_wrapper is
  component BD is
  port (
    GCLK : in STD_LOGIC;
    LD0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SW0 : in STD_LOGIC;
    LD1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SW1 : in STD_LOGIC;
    LD2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SW2 : in STD_LOGIC;
    SW7 : in STD_LOGIC;
    LD7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    LD3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SW3 : in STD_LOGIC;
    BTNC : in STD_LOGIC
  );
  end component BD;
begin
BD_i: component BD
     port map (
      BTNC => BTNC,
      GCLK => GCLK,
      LD0(0) => LD0(0),
      LD1(0) => LD1(0),
      LD2(0) => LD2(0),
      LD3(0) => LD3(0),
      LD7(0) => LD7(0),
      SW0 => SW0,
      SW1 => SW1,
      SW2 => SW2,
      SW3 => SW3,
      SW7 => SW7
    );
end STRUCTURE;
