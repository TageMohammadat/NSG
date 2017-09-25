--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
--Date        : Mon Oct 31 17:09:10 2016
--Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
--Command     : generate_target BD.bd
--Design      : BD
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_0_0_local_memory_imp_KVYVOM is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end cpu_0_0_local_memory_imp_KVYVOM;

architecture STRUCTURE of cpu_0_0_local_memory_imp_KVYVOM is
  component BD_dlmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_dlmb_v10_0;
  component BD_ilmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_ilmb_v10_0;
  component BD_dlmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_dlmb_bram_if_cntlr_0;
  component BD_ilmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_ilmb_bram_if_cntlr_0;
  component BD_lmb_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component BD_lmb_bram_0;
  signal SYS_Rst_1 : STD_LOGIC;
  signal cpu_0_0_Clk : STD_LOGIC;
  signal cpu_0_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_0_0_dlmb_CE : STD_LOGIC;
  signal cpu_0_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_dlmb_READSTROBE : STD_LOGIC;
  signal cpu_0_0_dlmb_READY : STD_LOGIC;
  signal cpu_0_0_dlmb_UE : STD_LOGIC;
  signal cpu_0_0_dlmb_WAIT : STD_LOGIC;
  signal cpu_0_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal cpu_0_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_0_0_dlmb_bus_CE : STD_LOGIC;
  signal cpu_0_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_0_0_dlmb_bus_READY : STD_LOGIC;
  signal cpu_0_0_dlmb_bus_UE : STD_LOGIC;
  signal cpu_0_0_dlmb_bus_WAIT : STD_LOGIC;
  signal cpu_0_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_0_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal cpu_0_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_dlmb_cntlr_EN : STD_LOGIC;
  signal cpu_0_0_dlmb_cntlr_RST : STD_LOGIC;
  signal cpu_0_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_0_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_0_ilmb_CE : STD_LOGIC;
  signal cpu_0_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_ilmb_READSTROBE : STD_LOGIC;
  signal cpu_0_0_ilmb_READY : STD_LOGIC;
  signal cpu_0_0_ilmb_UE : STD_LOGIC;
  signal cpu_0_0_ilmb_WAIT : STD_LOGIC;
  signal cpu_0_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_0_0_ilmb_bus_CE : STD_LOGIC;
  signal cpu_0_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_0_0_ilmb_bus_READY : STD_LOGIC;
  signal cpu_0_0_ilmb_bus_UE : STD_LOGIC;
  signal cpu_0_0_ilmb_bus_WAIT : STD_LOGIC;
  signal cpu_0_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_0_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal cpu_0_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_ilmb_cntlr_EN : STD_LOGIC;
  signal cpu_0_0_ilmb_cntlr_RST : STD_LOGIC;
  signal cpu_0_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > BD cpu_0_0_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= cpu_0_0_dlmb_CE;
  DLMB_readdbus(0 to 31) <= cpu_0_0_dlmb_READDBUS(0 to 31);
  DLMB_ready <= cpu_0_0_dlmb_READY;
  DLMB_ue <= cpu_0_0_dlmb_UE;
  DLMB_wait <= cpu_0_0_dlmb_WAIT;
  ILMB_ce <= cpu_0_0_ilmb_CE;
  ILMB_readdbus(0 to 31) <= cpu_0_0_ilmb_READDBUS(0 to 31);
  ILMB_ready <= cpu_0_0_ilmb_READY;
  ILMB_ue <= cpu_0_0_ilmb_UE;
  ILMB_wait <= cpu_0_0_ilmb_WAIT;
  SYS_Rst_1 <= SYS_Rst;
  cpu_0_0_Clk <= LMB_Clk;
  cpu_0_0_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  cpu_0_0_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  cpu_0_0_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  cpu_0_0_dlmb_READSTROBE <= DLMB_readstrobe;
  cpu_0_0_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  cpu_0_0_dlmb_WRITESTROBE <= DLMB_writestrobe;
  cpu_0_0_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  cpu_0_0_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  cpu_0_0_ilmb_READSTROBE <= ILMB_readstrobe;
dlmb_bram_if_cntlr: component BD_dlmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => cpu_0_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_0_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_0_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_0_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_0_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_0_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_0_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_0_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_0_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_0_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_0_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_0_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_0_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_0_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_0_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_0_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_0_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_0_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_0_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_0_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_0_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_0_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_0_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_0_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_0_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_0_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_0_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_0_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_0_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_0_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_0_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_0_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_0_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_0_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_0_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_0_0_dlmb_cntlr_EN,
      BRAM_Rst_A => cpu_0_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_0_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_0_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_0_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_0_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => cpu_0_0_Clk,
      LMB_ReadStrobe => cpu_0_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_0_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_0_0_dlmb_bus_WRITESTROBE,
      Sl_CE => cpu_0_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_0_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_0_0_dlmb_bus_READY,
      Sl_UE => cpu_0_0_dlmb_bus_UE,
      Sl_Wait => cpu_0_0_dlmb_bus_WAIT
    );
dlmb_v10: component BD_dlmb_v10_0
     port map (
      LMB_ABus(0 to 31) => cpu_0_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_0_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_0_0_dlmb_bus_BE(0 to 3),
      LMB_CE => cpu_0_0_dlmb_CE,
      LMB_Clk => cpu_0_0_Clk,
      LMB_ReadDBus(0 to 31) => cpu_0_0_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_0_0_dlmb_bus_READSTROBE,
      LMB_Ready => cpu_0_0_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_0_0_dlmb_UE,
      LMB_Wait => cpu_0_0_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_0_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_0_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_0_0_dlmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_0_0_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => cpu_0_0_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => cpu_0_0_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => cpu_0_0_dlmb_READSTROBE,
      M_WriteStrobe => cpu_0_0_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_0_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_0_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_0_0_dlmb_bus_READY,
      Sl_UE(0) => cpu_0_0_dlmb_bus_UE,
      Sl_Wait(0) => cpu_0_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component BD_ilmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => cpu_0_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_0_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_0_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_0_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_0_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_0_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_0_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_0_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_0_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_0_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_0_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_0_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_0_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_0_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_0_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_0_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_0_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_0_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_0_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_0_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_0_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_0_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_0_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_0_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_0_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_0_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_0_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_0_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_0_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_0_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_0_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_0_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_0_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_0_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_0_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_0_0_ilmb_cntlr_EN,
      BRAM_Rst_A => cpu_0_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_0_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_0_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_0_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_0_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => cpu_0_0_Clk,
      LMB_ReadStrobe => cpu_0_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_0_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_0_0_ilmb_bus_WRITESTROBE,
      Sl_CE => cpu_0_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_0_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_0_0_ilmb_bus_READY,
      Sl_UE => cpu_0_0_ilmb_bus_UE,
      Sl_Wait => cpu_0_0_ilmb_bus_WAIT
    );
ilmb_v10: component BD_ilmb_v10_0
     port map (
      LMB_ABus(0 to 31) => cpu_0_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_0_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_0_0_ilmb_bus_BE(0 to 3),
      LMB_CE => cpu_0_0_ilmb_CE,
      LMB_Clk => cpu_0_0_Clk,
      LMB_ReadDBus(0 to 31) => cpu_0_0_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_0_0_ilmb_bus_READSTROBE,
      LMB_Ready => cpu_0_0_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_0_0_ilmb_UE,
      LMB_Wait => cpu_0_0_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_0_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_0_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_0_0_ilmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_0_0_ilmb_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => cpu_0_0_ilmb_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_0_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_0_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_0_0_ilmb_bus_READY,
      Sl_UE(0) => cpu_0_0_ilmb_bus_UE,
      Sl_Wait(0) => cpu_0_0_ilmb_bus_WAIT
    );
lmb_bram: component BD_lmb_bram_0
     port map (
      addra(31) => cpu_0_0_dlmb_cntlr_ADDR(0),
      addra(30) => cpu_0_0_dlmb_cntlr_ADDR(1),
      addra(29) => cpu_0_0_dlmb_cntlr_ADDR(2),
      addra(28) => cpu_0_0_dlmb_cntlr_ADDR(3),
      addra(27) => cpu_0_0_dlmb_cntlr_ADDR(4),
      addra(26) => cpu_0_0_dlmb_cntlr_ADDR(5),
      addra(25) => cpu_0_0_dlmb_cntlr_ADDR(6),
      addra(24) => cpu_0_0_dlmb_cntlr_ADDR(7),
      addra(23) => cpu_0_0_dlmb_cntlr_ADDR(8),
      addra(22) => cpu_0_0_dlmb_cntlr_ADDR(9),
      addra(21) => cpu_0_0_dlmb_cntlr_ADDR(10),
      addra(20) => cpu_0_0_dlmb_cntlr_ADDR(11),
      addra(19) => cpu_0_0_dlmb_cntlr_ADDR(12),
      addra(18) => cpu_0_0_dlmb_cntlr_ADDR(13),
      addra(17) => cpu_0_0_dlmb_cntlr_ADDR(14),
      addra(16) => cpu_0_0_dlmb_cntlr_ADDR(15),
      addra(15) => cpu_0_0_dlmb_cntlr_ADDR(16),
      addra(14) => cpu_0_0_dlmb_cntlr_ADDR(17),
      addra(13) => cpu_0_0_dlmb_cntlr_ADDR(18),
      addra(12) => cpu_0_0_dlmb_cntlr_ADDR(19),
      addra(11) => cpu_0_0_dlmb_cntlr_ADDR(20),
      addra(10) => cpu_0_0_dlmb_cntlr_ADDR(21),
      addra(9) => cpu_0_0_dlmb_cntlr_ADDR(22),
      addra(8) => cpu_0_0_dlmb_cntlr_ADDR(23),
      addra(7) => cpu_0_0_dlmb_cntlr_ADDR(24),
      addra(6) => cpu_0_0_dlmb_cntlr_ADDR(25),
      addra(5) => cpu_0_0_dlmb_cntlr_ADDR(26),
      addra(4) => cpu_0_0_dlmb_cntlr_ADDR(27),
      addra(3) => cpu_0_0_dlmb_cntlr_ADDR(28),
      addra(2) => cpu_0_0_dlmb_cntlr_ADDR(29),
      addra(1) => cpu_0_0_dlmb_cntlr_ADDR(30),
      addra(0) => cpu_0_0_dlmb_cntlr_ADDR(31),
      addrb(31) => cpu_0_0_ilmb_cntlr_ADDR(0),
      addrb(30) => cpu_0_0_ilmb_cntlr_ADDR(1),
      addrb(29) => cpu_0_0_ilmb_cntlr_ADDR(2),
      addrb(28) => cpu_0_0_ilmb_cntlr_ADDR(3),
      addrb(27) => cpu_0_0_ilmb_cntlr_ADDR(4),
      addrb(26) => cpu_0_0_ilmb_cntlr_ADDR(5),
      addrb(25) => cpu_0_0_ilmb_cntlr_ADDR(6),
      addrb(24) => cpu_0_0_ilmb_cntlr_ADDR(7),
      addrb(23) => cpu_0_0_ilmb_cntlr_ADDR(8),
      addrb(22) => cpu_0_0_ilmb_cntlr_ADDR(9),
      addrb(21) => cpu_0_0_ilmb_cntlr_ADDR(10),
      addrb(20) => cpu_0_0_ilmb_cntlr_ADDR(11),
      addrb(19) => cpu_0_0_ilmb_cntlr_ADDR(12),
      addrb(18) => cpu_0_0_ilmb_cntlr_ADDR(13),
      addrb(17) => cpu_0_0_ilmb_cntlr_ADDR(14),
      addrb(16) => cpu_0_0_ilmb_cntlr_ADDR(15),
      addrb(15) => cpu_0_0_ilmb_cntlr_ADDR(16),
      addrb(14) => cpu_0_0_ilmb_cntlr_ADDR(17),
      addrb(13) => cpu_0_0_ilmb_cntlr_ADDR(18),
      addrb(12) => cpu_0_0_ilmb_cntlr_ADDR(19),
      addrb(11) => cpu_0_0_ilmb_cntlr_ADDR(20),
      addrb(10) => cpu_0_0_ilmb_cntlr_ADDR(21),
      addrb(9) => cpu_0_0_ilmb_cntlr_ADDR(22),
      addrb(8) => cpu_0_0_ilmb_cntlr_ADDR(23),
      addrb(7) => cpu_0_0_ilmb_cntlr_ADDR(24),
      addrb(6) => cpu_0_0_ilmb_cntlr_ADDR(25),
      addrb(5) => cpu_0_0_ilmb_cntlr_ADDR(26),
      addrb(4) => cpu_0_0_ilmb_cntlr_ADDR(27),
      addrb(3) => cpu_0_0_ilmb_cntlr_ADDR(28),
      addrb(2) => cpu_0_0_ilmb_cntlr_ADDR(29),
      addrb(1) => cpu_0_0_ilmb_cntlr_ADDR(30),
      addrb(0) => cpu_0_0_ilmb_cntlr_ADDR(31),
      clka => cpu_0_0_dlmb_cntlr_CLK,
      clkb => cpu_0_0_ilmb_cntlr_CLK,
      dina(31) => cpu_0_0_dlmb_cntlr_DIN(0),
      dina(30) => cpu_0_0_dlmb_cntlr_DIN(1),
      dina(29) => cpu_0_0_dlmb_cntlr_DIN(2),
      dina(28) => cpu_0_0_dlmb_cntlr_DIN(3),
      dina(27) => cpu_0_0_dlmb_cntlr_DIN(4),
      dina(26) => cpu_0_0_dlmb_cntlr_DIN(5),
      dina(25) => cpu_0_0_dlmb_cntlr_DIN(6),
      dina(24) => cpu_0_0_dlmb_cntlr_DIN(7),
      dina(23) => cpu_0_0_dlmb_cntlr_DIN(8),
      dina(22) => cpu_0_0_dlmb_cntlr_DIN(9),
      dina(21) => cpu_0_0_dlmb_cntlr_DIN(10),
      dina(20) => cpu_0_0_dlmb_cntlr_DIN(11),
      dina(19) => cpu_0_0_dlmb_cntlr_DIN(12),
      dina(18) => cpu_0_0_dlmb_cntlr_DIN(13),
      dina(17) => cpu_0_0_dlmb_cntlr_DIN(14),
      dina(16) => cpu_0_0_dlmb_cntlr_DIN(15),
      dina(15) => cpu_0_0_dlmb_cntlr_DIN(16),
      dina(14) => cpu_0_0_dlmb_cntlr_DIN(17),
      dina(13) => cpu_0_0_dlmb_cntlr_DIN(18),
      dina(12) => cpu_0_0_dlmb_cntlr_DIN(19),
      dina(11) => cpu_0_0_dlmb_cntlr_DIN(20),
      dina(10) => cpu_0_0_dlmb_cntlr_DIN(21),
      dina(9) => cpu_0_0_dlmb_cntlr_DIN(22),
      dina(8) => cpu_0_0_dlmb_cntlr_DIN(23),
      dina(7) => cpu_0_0_dlmb_cntlr_DIN(24),
      dina(6) => cpu_0_0_dlmb_cntlr_DIN(25),
      dina(5) => cpu_0_0_dlmb_cntlr_DIN(26),
      dina(4) => cpu_0_0_dlmb_cntlr_DIN(27),
      dina(3) => cpu_0_0_dlmb_cntlr_DIN(28),
      dina(2) => cpu_0_0_dlmb_cntlr_DIN(29),
      dina(1) => cpu_0_0_dlmb_cntlr_DIN(30),
      dina(0) => cpu_0_0_dlmb_cntlr_DIN(31),
      dinb(31) => cpu_0_0_ilmb_cntlr_DIN(0),
      dinb(30) => cpu_0_0_ilmb_cntlr_DIN(1),
      dinb(29) => cpu_0_0_ilmb_cntlr_DIN(2),
      dinb(28) => cpu_0_0_ilmb_cntlr_DIN(3),
      dinb(27) => cpu_0_0_ilmb_cntlr_DIN(4),
      dinb(26) => cpu_0_0_ilmb_cntlr_DIN(5),
      dinb(25) => cpu_0_0_ilmb_cntlr_DIN(6),
      dinb(24) => cpu_0_0_ilmb_cntlr_DIN(7),
      dinb(23) => cpu_0_0_ilmb_cntlr_DIN(8),
      dinb(22) => cpu_0_0_ilmb_cntlr_DIN(9),
      dinb(21) => cpu_0_0_ilmb_cntlr_DIN(10),
      dinb(20) => cpu_0_0_ilmb_cntlr_DIN(11),
      dinb(19) => cpu_0_0_ilmb_cntlr_DIN(12),
      dinb(18) => cpu_0_0_ilmb_cntlr_DIN(13),
      dinb(17) => cpu_0_0_ilmb_cntlr_DIN(14),
      dinb(16) => cpu_0_0_ilmb_cntlr_DIN(15),
      dinb(15) => cpu_0_0_ilmb_cntlr_DIN(16),
      dinb(14) => cpu_0_0_ilmb_cntlr_DIN(17),
      dinb(13) => cpu_0_0_ilmb_cntlr_DIN(18),
      dinb(12) => cpu_0_0_ilmb_cntlr_DIN(19),
      dinb(11) => cpu_0_0_ilmb_cntlr_DIN(20),
      dinb(10) => cpu_0_0_ilmb_cntlr_DIN(21),
      dinb(9) => cpu_0_0_ilmb_cntlr_DIN(22),
      dinb(8) => cpu_0_0_ilmb_cntlr_DIN(23),
      dinb(7) => cpu_0_0_ilmb_cntlr_DIN(24),
      dinb(6) => cpu_0_0_ilmb_cntlr_DIN(25),
      dinb(5) => cpu_0_0_ilmb_cntlr_DIN(26),
      dinb(4) => cpu_0_0_ilmb_cntlr_DIN(27),
      dinb(3) => cpu_0_0_ilmb_cntlr_DIN(28),
      dinb(2) => cpu_0_0_ilmb_cntlr_DIN(29),
      dinb(1) => cpu_0_0_ilmb_cntlr_DIN(30),
      dinb(0) => cpu_0_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => cpu_0_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => cpu_0_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => cpu_0_0_dlmb_cntlr_EN,
      enb => cpu_0_0_ilmb_cntlr_EN,
      rsta => cpu_0_0_dlmb_cntlr_RST,
      rstb => cpu_0_0_ilmb_cntlr_RST,
      wea(3) => cpu_0_0_dlmb_cntlr_WE(0),
      wea(2) => cpu_0_0_dlmb_cntlr_WE(1),
      wea(1) => cpu_0_0_dlmb_cntlr_WE(2),
      wea(0) => cpu_0_0_dlmb_cntlr_WE(3),
      web(3) => cpu_0_0_ilmb_cntlr_WE(0),
      web(2) => cpu_0_0_ilmb_cntlr_WE(1),
      web(1) => cpu_0_0_ilmb_cntlr_WE(2),
      web(0) => cpu_0_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_0_1_local_memory_imp_1RKOY2F is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end cpu_0_1_local_memory_imp_1RKOY2F;

architecture STRUCTURE of cpu_0_1_local_memory_imp_1RKOY2F is
  component BD_dlmb_v10_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_dlmb_v10_1;
  component BD_ilmb_v10_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_ilmb_v10_1;
  component BD_dlmb_bram_if_cntlr_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_dlmb_bram_if_cntlr_1;
  component BD_ilmb_bram_if_cntlr_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_ilmb_bram_if_cntlr_1;
  component BD_lmb_bram_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component BD_lmb_bram_1;
  signal SYS_Rst_1 : STD_LOGIC;
  signal cpu_0_1_Clk : STD_LOGIC;
  signal cpu_0_1_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_dlmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_1_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_0_1_dlmb_CE : STD_LOGIC;
  signal cpu_0_1_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_dlmb_READSTROBE : STD_LOGIC;
  signal cpu_0_1_dlmb_READY : STD_LOGIC;
  signal cpu_0_1_dlmb_UE : STD_LOGIC;
  signal cpu_0_1_dlmb_WAIT : STD_LOGIC;
  signal cpu_0_1_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_dlmb_WRITESTROBE : STD_LOGIC;
  signal cpu_0_1_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_1_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_0_1_dlmb_bus_CE : STD_LOGIC;
  signal cpu_0_1_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_dlmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_0_1_dlmb_bus_READY : STD_LOGIC;
  signal cpu_0_1_dlmb_bus_UE : STD_LOGIC;
  signal cpu_0_1_dlmb_bus_WAIT : STD_LOGIC;
  signal cpu_0_1_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_0_1_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_dlmb_cntlr_CLK : STD_LOGIC;
  signal cpu_0_1_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_dlmb_cntlr_EN : STD_LOGIC;
  signal cpu_0_1_dlmb_cntlr_RST : STD_LOGIC;
  signal cpu_0_1_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_0_1_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_ilmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_1_ilmb_CE : STD_LOGIC;
  signal cpu_0_1_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_ilmb_READSTROBE : STD_LOGIC;
  signal cpu_0_1_ilmb_READY : STD_LOGIC;
  signal cpu_0_1_ilmb_UE : STD_LOGIC;
  signal cpu_0_1_ilmb_WAIT : STD_LOGIC;
  signal cpu_0_1_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_1_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_0_1_ilmb_bus_CE : STD_LOGIC;
  signal cpu_0_1_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_ilmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_0_1_ilmb_bus_READY : STD_LOGIC;
  signal cpu_0_1_ilmb_bus_UE : STD_LOGIC;
  signal cpu_0_1_ilmb_bus_WAIT : STD_LOGIC;
  signal cpu_0_1_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_0_1_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_ilmb_cntlr_CLK : STD_LOGIC;
  signal cpu_0_1_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_ilmb_cntlr_EN : STD_LOGIC;
  signal cpu_0_1_ilmb_cntlr_RST : STD_LOGIC;
  signal cpu_0_1_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > BD cpu_0_1_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= cpu_0_1_dlmb_CE;
  DLMB_readdbus(0 to 31) <= cpu_0_1_dlmb_READDBUS(0 to 31);
  DLMB_ready <= cpu_0_1_dlmb_READY;
  DLMB_ue <= cpu_0_1_dlmb_UE;
  DLMB_wait <= cpu_0_1_dlmb_WAIT;
  ILMB_ce <= cpu_0_1_ilmb_CE;
  ILMB_readdbus(0 to 31) <= cpu_0_1_ilmb_READDBUS(0 to 31);
  ILMB_ready <= cpu_0_1_ilmb_READY;
  ILMB_ue <= cpu_0_1_ilmb_UE;
  ILMB_wait <= cpu_0_1_ilmb_WAIT;
  SYS_Rst_1 <= SYS_Rst;
  cpu_0_1_Clk <= LMB_Clk;
  cpu_0_1_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  cpu_0_1_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  cpu_0_1_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  cpu_0_1_dlmb_READSTROBE <= DLMB_readstrobe;
  cpu_0_1_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  cpu_0_1_dlmb_WRITESTROBE <= DLMB_writestrobe;
  cpu_0_1_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  cpu_0_1_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  cpu_0_1_ilmb_READSTROBE <= ILMB_readstrobe;
dlmb_bram_if_cntlr: component BD_dlmb_bram_if_cntlr_1
     port map (
      BRAM_Addr_A(0 to 31) => cpu_0_1_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_0_1_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_0_1_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_0_1_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_0_1_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_0_1_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_0_1_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_0_1_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_0_1_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_0_1_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_0_1_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_0_1_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_0_1_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_0_1_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_0_1_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_0_1_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_0_1_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_0_1_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_0_1_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_0_1_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_0_1_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_0_1_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_0_1_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_0_1_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_0_1_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_0_1_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_0_1_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_0_1_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_0_1_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_0_1_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_0_1_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_0_1_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_0_1_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_0_1_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_0_1_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_0_1_dlmb_cntlr_EN,
      BRAM_Rst_A => cpu_0_1_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_0_1_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_0_1_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_0_1_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_0_1_dlmb_bus_BE(0 to 3),
      LMB_Clk => cpu_0_1_Clk,
      LMB_ReadStrobe => cpu_0_1_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_0_1_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_0_1_dlmb_bus_WRITESTROBE,
      Sl_CE => cpu_0_1_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_0_1_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_0_1_dlmb_bus_READY,
      Sl_UE => cpu_0_1_dlmb_bus_UE,
      Sl_Wait => cpu_0_1_dlmb_bus_WAIT
    );
dlmb_v10: component BD_dlmb_v10_1
     port map (
      LMB_ABus(0 to 31) => cpu_0_1_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_0_1_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_0_1_dlmb_bus_BE(0 to 3),
      LMB_CE => cpu_0_1_dlmb_CE,
      LMB_Clk => cpu_0_1_Clk,
      LMB_ReadDBus(0 to 31) => cpu_0_1_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_0_1_dlmb_bus_READSTROBE,
      LMB_Ready => cpu_0_1_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_0_1_dlmb_UE,
      LMB_Wait => cpu_0_1_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_0_1_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_0_1_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_0_1_dlmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_0_1_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => cpu_0_1_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => cpu_0_1_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => cpu_0_1_dlmb_READSTROBE,
      M_WriteStrobe => cpu_0_1_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_0_1_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_0_1_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_0_1_dlmb_bus_READY,
      Sl_UE(0) => cpu_0_1_dlmb_bus_UE,
      Sl_Wait(0) => cpu_0_1_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component BD_ilmb_bram_if_cntlr_1
     port map (
      BRAM_Addr_A(0 to 31) => cpu_0_1_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_0_1_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_0_1_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_0_1_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_0_1_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_0_1_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_0_1_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_0_1_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_0_1_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_0_1_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_0_1_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_0_1_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_0_1_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_0_1_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_0_1_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_0_1_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_0_1_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_0_1_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_0_1_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_0_1_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_0_1_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_0_1_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_0_1_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_0_1_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_0_1_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_0_1_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_0_1_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_0_1_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_0_1_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_0_1_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_0_1_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_0_1_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_0_1_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_0_1_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_0_1_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_0_1_ilmb_cntlr_EN,
      BRAM_Rst_A => cpu_0_1_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_0_1_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_0_1_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_0_1_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_0_1_ilmb_bus_BE(0 to 3),
      LMB_Clk => cpu_0_1_Clk,
      LMB_ReadStrobe => cpu_0_1_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_0_1_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_0_1_ilmb_bus_WRITESTROBE,
      Sl_CE => cpu_0_1_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_0_1_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_0_1_ilmb_bus_READY,
      Sl_UE => cpu_0_1_ilmb_bus_UE,
      Sl_Wait => cpu_0_1_ilmb_bus_WAIT
    );
ilmb_v10: component BD_ilmb_v10_1
     port map (
      LMB_ABus(0 to 31) => cpu_0_1_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_0_1_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_0_1_ilmb_bus_BE(0 to 3),
      LMB_CE => cpu_0_1_ilmb_CE,
      LMB_Clk => cpu_0_1_Clk,
      LMB_ReadDBus(0 to 31) => cpu_0_1_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_0_1_ilmb_bus_READSTROBE,
      LMB_Ready => cpu_0_1_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_0_1_ilmb_UE,
      LMB_Wait => cpu_0_1_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_0_1_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_0_1_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_0_1_ilmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_0_1_ilmb_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => cpu_0_1_ilmb_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_0_1_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_0_1_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_0_1_ilmb_bus_READY,
      Sl_UE(0) => cpu_0_1_ilmb_bus_UE,
      Sl_Wait(0) => cpu_0_1_ilmb_bus_WAIT
    );
lmb_bram: component BD_lmb_bram_1
     port map (
      addra(31) => cpu_0_1_dlmb_cntlr_ADDR(0),
      addra(30) => cpu_0_1_dlmb_cntlr_ADDR(1),
      addra(29) => cpu_0_1_dlmb_cntlr_ADDR(2),
      addra(28) => cpu_0_1_dlmb_cntlr_ADDR(3),
      addra(27) => cpu_0_1_dlmb_cntlr_ADDR(4),
      addra(26) => cpu_0_1_dlmb_cntlr_ADDR(5),
      addra(25) => cpu_0_1_dlmb_cntlr_ADDR(6),
      addra(24) => cpu_0_1_dlmb_cntlr_ADDR(7),
      addra(23) => cpu_0_1_dlmb_cntlr_ADDR(8),
      addra(22) => cpu_0_1_dlmb_cntlr_ADDR(9),
      addra(21) => cpu_0_1_dlmb_cntlr_ADDR(10),
      addra(20) => cpu_0_1_dlmb_cntlr_ADDR(11),
      addra(19) => cpu_0_1_dlmb_cntlr_ADDR(12),
      addra(18) => cpu_0_1_dlmb_cntlr_ADDR(13),
      addra(17) => cpu_0_1_dlmb_cntlr_ADDR(14),
      addra(16) => cpu_0_1_dlmb_cntlr_ADDR(15),
      addra(15) => cpu_0_1_dlmb_cntlr_ADDR(16),
      addra(14) => cpu_0_1_dlmb_cntlr_ADDR(17),
      addra(13) => cpu_0_1_dlmb_cntlr_ADDR(18),
      addra(12) => cpu_0_1_dlmb_cntlr_ADDR(19),
      addra(11) => cpu_0_1_dlmb_cntlr_ADDR(20),
      addra(10) => cpu_0_1_dlmb_cntlr_ADDR(21),
      addra(9) => cpu_0_1_dlmb_cntlr_ADDR(22),
      addra(8) => cpu_0_1_dlmb_cntlr_ADDR(23),
      addra(7) => cpu_0_1_dlmb_cntlr_ADDR(24),
      addra(6) => cpu_0_1_dlmb_cntlr_ADDR(25),
      addra(5) => cpu_0_1_dlmb_cntlr_ADDR(26),
      addra(4) => cpu_0_1_dlmb_cntlr_ADDR(27),
      addra(3) => cpu_0_1_dlmb_cntlr_ADDR(28),
      addra(2) => cpu_0_1_dlmb_cntlr_ADDR(29),
      addra(1) => cpu_0_1_dlmb_cntlr_ADDR(30),
      addra(0) => cpu_0_1_dlmb_cntlr_ADDR(31),
      addrb(31) => cpu_0_1_ilmb_cntlr_ADDR(0),
      addrb(30) => cpu_0_1_ilmb_cntlr_ADDR(1),
      addrb(29) => cpu_0_1_ilmb_cntlr_ADDR(2),
      addrb(28) => cpu_0_1_ilmb_cntlr_ADDR(3),
      addrb(27) => cpu_0_1_ilmb_cntlr_ADDR(4),
      addrb(26) => cpu_0_1_ilmb_cntlr_ADDR(5),
      addrb(25) => cpu_0_1_ilmb_cntlr_ADDR(6),
      addrb(24) => cpu_0_1_ilmb_cntlr_ADDR(7),
      addrb(23) => cpu_0_1_ilmb_cntlr_ADDR(8),
      addrb(22) => cpu_0_1_ilmb_cntlr_ADDR(9),
      addrb(21) => cpu_0_1_ilmb_cntlr_ADDR(10),
      addrb(20) => cpu_0_1_ilmb_cntlr_ADDR(11),
      addrb(19) => cpu_0_1_ilmb_cntlr_ADDR(12),
      addrb(18) => cpu_0_1_ilmb_cntlr_ADDR(13),
      addrb(17) => cpu_0_1_ilmb_cntlr_ADDR(14),
      addrb(16) => cpu_0_1_ilmb_cntlr_ADDR(15),
      addrb(15) => cpu_0_1_ilmb_cntlr_ADDR(16),
      addrb(14) => cpu_0_1_ilmb_cntlr_ADDR(17),
      addrb(13) => cpu_0_1_ilmb_cntlr_ADDR(18),
      addrb(12) => cpu_0_1_ilmb_cntlr_ADDR(19),
      addrb(11) => cpu_0_1_ilmb_cntlr_ADDR(20),
      addrb(10) => cpu_0_1_ilmb_cntlr_ADDR(21),
      addrb(9) => cpu_0_1_ilmb_cntlr_ADDR(22),
      addrb(8) => cpu_0_1_ilmb_cntlr_ADDR(23),
      addrb(7) => cpu_0_1_ilmb_cntlr_ADDR(24),
      addrb(6) => cpu_0_1_ilmb_cntlr_ADDR(25),
      addrb(5) => cpu_0_1_ilmb_cntlr_ADDR(26),
      addrb(4) => cpu_0_1_ilmb_cntlr_ADDR(27),
      addrb(3) => cpu_0_1_ilmb_cntlr_ADDR(28),
      addrb(2) => cpu_0_1_ilmb_cntlr_ADDR(29),
      addrb(1) => cpu_0_1_ilmb_cntlr_ADDR(30),
      addrb(0) => cpu_0_1_ilmb_cntlr_ADDR(31),
      clka => cpu_0_1_dlmb_cntlr_CLK,
      clkb => cpu_0_1_ilmb_cntlr_CLK,
      dina(31) => cpu_0_1_dlmb_cntlr_DIN(0),
      dina(30) => cpu_0_1_dlmb_cntlr_DIN(1),
      dina(29) => cpu_0_1_dlmb_cntlr_DIN(2),
      dina(28) => cpu_0_1_dlmb_cntlr_DIN(3),
      dina(27) => cpu_0_1_dlmb_cntlr_DIN(4),
      dina(26) => cpu_0_1_dlmb_cntlr_DIN(5),
      dina(25) => cpu_0_1_dlmb_cntlr_DIN(6),
      dina(24) => cpu_0_1_dlmb_cntlr_DIN(7),
      dina(23) => cpu_0_1_dlmb_cntlr_DIN(8),
      dina(22) => cpu_0_1_dlmb_cntlr_DIN(9),
      dina(21) => cpu_0_1_dlmb_cntlr_DIN(10),
      dina(20) => cpu_0_1_dlmb_cntlr_DIN(11),
      dina(19) => cpu_0_1_dlmb_cntlr_DIN(12),
      dina(18) => cpu_0_1_dlmb_cntlr_DIN(13),
      dina(17) => cpu_0_1_dlmb_cntlr_DIN(14),
      dina(16) => cpu_0_1_dlmb_cntlr_DIN(15),
      dina(15) => cpu_0_1_dlmb_cntlr_DIN(16),
      dina(14) => cpu_0_1_dlmb_cntlr_DIN(17),
      dina(13) => cpu_0_1_dlmb_cntlr_DIN(18),
      dina(12) => cpu_0_1_dlmb_cntlr_DIN(19),
      dina(11) => cpu_0_1_dlmb_cntlr_DIN(20),
      dina(10) => cpu_0_1_dlmb_cntlr_DIN(21),
      dina(9) => cpu_0_1_dlmb_cntlr_DIN(22),
      dina(8) => cpu_0_1_dlmb_cntlr_DIN(23),
      dina(7) => cpu_0_1_dlmb_cntlr_DIN(24),
      dina(6) => cpu_0_1_dlmb_cntlr_DIN(25),
      dina(5) => cpu_0_1_dlmb_cntlr_DIN(26),
      dina(4) => cpu_0_1_dlmb_cntlr_DIN(27),
      dina(3) => cpu_0_1_dlmb_cntlr_DIN(28),
      dina(2) => cpu_0_1_dlmb_cntlr_DIN(29),
      dina(1) => cpu_0_1_dlmb_cntlr_DIN(30),
      dina(0) => cpu_0_1_dlmb_cntlr_DIN(31),
      dinb(31) => cpu_0_1_ilmb_cntlr_DIN(0),
      dinb(30) => cpu_0_1_ilmb_cntlr_DIN(1),
      dinb(29) => cpu_0_1_ilmb_cntlr_DIN(2),
      dinb(28) => cpu_0_1_ilmb_cntlr_DIN(3),
      dinb(27) => cpu_0_1_ilmb_cntlr_DIN(4),
      dinb(26) => cpu_0_1_ilmb_cntlr_DIN(5),
      dinb(25) => cpu_0_1_ilmb_cntlr_DIN(6),
      dinb(24) => cpu_0_1_ilmb_cntlr_DIN(7),
      dinb(23) => cpu_0_1_ilmb_cntlr_DIN(8),
      dinb(22) => cpu_0_1_ilmb_cntlr_DIN(9),
      dinb(21) => cpu_0_1_ilmb_cntlr_DIN(10),
      dinb(20) => cpu_0_1_ilmb_cntlr_DIN(11),
      dinb(19) => cpu_0_1_ilmb_cntlr_DIN(12),
      dinb(18) => cpu_0_1_ilmb_cntlr_DIN(13),
      dinb(17) => cpu_0_1_ilmb_cntlr_DIN(14),
      dinb(16) => cpu_0_1_ilmb_cntlr_DIN(15),
      dinb(15) => cpu_0_1_ilmb_cntlr_DIN(16),
      dinb(14) => cpu_0_1_ilmb_cntlr_DIN(17),
      dinb(13) => cpu_0_1_ilmb_cntlr_DIN(18),
      dinb(12) => cpu_0_1_ilmb_cntlr_DIN(19),
      dinb(11) => cpu_0_1_ilmb_cntlr_DIN(20),
      dinb(10) => cpu_0_1_ilmb_cntlr_DIN(21),
      dinb(9) => cpu_0_1_ilmb_cntlr_DIN(22),
      dinb(8) => cpu_0_1_ilmb_cntlr_DIN(23),
      dinb(7) => cpu_0_1_ilmb_cntlr_DIN(24),
      dinb(6) => cpu_0_1_ilmb_cntlr_DIN(25),
      dinb(5) => cpu_0_1_ilmb_cntlr_DIN(26),
      dinb(4) => cpu_0_1_ilmb_cntlr_DIN(27),
      dinb(3) => cpu_0_1_ilmb_cntlr_DIN(28),
      dinb(2) => cpu_0_1_ilmb_cntlr_DIN(29),
      dinb(1) => cpu_0_1_ilmb_cntlr_DIN(30),
      dinb(0) => cpu_0_1_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => cpu_0_1_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => cpu_0_1_ilmb_cntlr_DOUT(31 downto 0),
      ena => cpu_0_1_dlmb_cntlr_EN,
      enb => cpu_0_1_ilmb_cntlr_EN,
      rsta => cpu_0_1_dlmb_cntlr_RST,
      rstb => cpu_0_1_ilmb_cntlr_RST,
      wea(3) => cpu_0_1_dlmb_cntlr_WE(0),
      wea(2) => cpu_0_1_dlmb_cntlr_WE(1),
      wea(1) => cpu_0_1_dlmb_cntlr_WE(2),
      wea(0) => cpu_0_1_dlmb_cntlr_WE(3),
      web(3) => cpu_0_1_ilmb_cntlr_WE(0),
      web(2) => cpu_0_1_ilmb_cntlr_WE(1),
      web(1) => cpu_0_1_ilmb_cntlr_WE(2),
      web(0) => cpu_0_1_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_1_0_local_memory_imp_19J6QYV is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end cpu_1_0_local_memory_imp_19J6QYV;

architecture STRUCTURE of cpu_1_0_local_memory_imp_19J6QYV is
  component BD_dlmb_v10_2 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_dlmb_v10_2;
  component BD_ilmb_v10_2 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_ilmb_v10_2;
  component BD_dlmb_bram_if_cntlr_2 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_dlmb_bram_if_cntlr_2;
  component BD_ilmb_bram_if_cntlr_2 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_ilmb_bram_if_cntlr_2;
  component BD_lmb_bram_2 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component BD_lmb_bram_2;
  signal SYS_Rst_1 : STD_LOGIC;
  signal cpu_1_0_Clk : STD_LOGIC;
  signal cpu_1_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_0_dlmb_CE : STD_LOGIC;
  signal cpu_1_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_dlmb_READSTROBE : STD_LOGIC;
  signal cpu_1_0_dlmb_READY : STD_LOGIC;
  signal cpu_1_0_dlmb_UE : STD_LOGIC;
  signal cpu_1_0_dlmb_WAIT : STD_LOGIC;
  signal cpu_1_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal cpu_1_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_0_dlmb_bus_CE : STD_LOGIC;
  signal cpu_1_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_1_0_dlmb_bus_READY : STD_LOGIC;
  signal cpu_1_0_dlmb_bus_UE : STD_LOGIC;
  signal cpu_1_0_dlmb_bus_WAIT : STD_LOGIC;
  signal cpu_1_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_1_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal cpu_1_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_dlmb_cntlr_EN : STD_LOGIC;
  signal cpu_1_0_dlmb_cntlr_RST : STD_LOGIC;
  signal cpu_1_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_ilmb_CE : STD_LOGIC;
  signal cpu_1_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_ilmb_READSTROBE : STD_LOGIC;
  signal cpu_1_0_ilmb_READY : STD_LOGIC;
  signal cpu_1_0_ilmb_UE : STD_LOGIC;
  signal cpu_1_0_ilmb_WAIT : STD_LOGIC;
  signal cpu_1_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_0_ilmb_bus_CE : STD_LOGIC;
  signal cpu_1_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_1_0_ilmb_bus_READY : STD_LOGIC;
  signal cpu_1_0_ilmb_bus_UE : STD_LOGIC;
  signal cpu_1_0_ilmb_bus_WAIT : STD_LOGIC;
  signal cpu_1_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_1_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal cpu_1_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_ilmb_cntlr_EN : STD_LOGIC;
  signal cpu_1_0_ilmb_cntlr_RST : STD_LOGIC;
  signal cpu_1_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > BD cpu_1_0_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= cpu_1_0_dlmb_CE;
  DLMB_readdbus(0 to 31) <= cpu_1_0_dlmb_READDBUS(0 to 31);
  DLMB_ready <= cpu_1_0_dlmb_READY;
  DLMB_ue <= cpu_1_0_dlmb_UE;
  DLMB_wait <= cpu_1_0_dlmb_WAIT;
  ILMB_ce <= cpu_1_0_ilmb_CE;
  ILMB_readdbus(0 to 31) <= cpu_1_0_ilmb_READDBUS(0 to 31);
  ILMB_ready <= cpu_1_0_ilmb_READY;
  ILMB_ue <= cpu_1_0_ilmb_UE;
  ILMB_wait <= cpu_1_0_ilmb_WAIT;
  SYS_Rst_1 <= SYS_Rst;
  cpu_1_0_Clk <= LMB_Clk;
  cpu_1_0_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  cpu_1_0_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  cpu_1_0_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  cpu_1_0_dlmb_READSTROBE <= DLMB_readstrobe;
  cpu_1_0_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  cpu_1_0_dlmb_WRITESTROBE <= DLMB_writestrobe;
  cpu_1_0_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  cpu_1_0_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  cpu_1_0_ilmb_READSTROBE <= ILMB_readstrobe;
dlmb_bram_if_cntlr: component BD_dlmb_bram_if_cntlr_2
     port map (
      BRAM_Addr_A(0 to 31) => cpu_1_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_1_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_1_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_1_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_1_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_1_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_1_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_1_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_1_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_1_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_1_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_1_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_1_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_1_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_1_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_1_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_1_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_1_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_1_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_1_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_1_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_1_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_1_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_1_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_1_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_1_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_1_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_1_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_1_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_1_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_1_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_1_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_1_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_1_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_1_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_1_0_dlmb_cntlr_EN,
      BRAM_Rst_A => cpu_1_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_1_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_1_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => cpu_1_0_Clk,
      LMB_ReadStrobe => cpu_1_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_1_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_0_dlmb_bus_WRITESTROBE,
      Sl_CE => cpu_1_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_1_0_dlmb_bus_READY,
      Sl_UE => cpu_1_0_dlmb_bus_UE,
      Sl_Wait => cpu_1_0_dlmb_bus_WAIT
    );
dlmb_v10: component BD_dlmb_v10_2
     port map (
      LMB_ABus(0 to 31) => cpu_1_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_0_dlmb_bus_BE(0 to 3),
      LMB_CE => cpu_1_0_dlmb_CE,
      LMB_Clk => cpu_1_0_Clk,
      LMB_ReadDBus(0 to 31) => cpu_1_0_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_1_0_dlmb_bus_READSTROBE,
      LMB_Ready => cpu_1_0_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_1_0_dlmb_UE,
      LMB_Wait => cpu_1_0_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_1_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_1_0_dlmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_1_0_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => cpu_1_0_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => cpu_1_0_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => cpu_1_0_dlmb_READSTROBE,
      M_WriteStrobe => cpu_1_0_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_1_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_1_0_dlmb_bus_READY,
      Sl_UE(0) => cpu_1_0_dlmb_bus_UE,
      Sl_Wait(0) => cpu_1_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component BD_ilmb_bram_if_cntlr_2
     port map (
      BRAM_Addr_A(0 to 31) => cpu_1_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_1_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_1_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_1_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_1_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_1_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_1_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_1_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_1_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_1_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_1_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_1_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_1_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_1_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_1_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_1_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_1_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_1_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_1_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_1_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_1_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_1_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_1_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_1_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_1_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_1_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_1_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_1_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_1_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_1_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_1_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_1_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_1_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_1_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_1_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_1_0_ilmb_cntlr_EN,
      BRAM_Rst_A => cpu_1_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_1_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_1_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => cpu_1_0_Clk,
      LMB_ReadStrobe => cpu_1_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_1_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_0_ilmb_bus_WRITESTROBE,
      Sl_CE => cpu_1_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_1_0_ilmb_bus_READY,
      Sl_UE => cpu_1_0_ilmb_bus_UE,
      Sl_Wait => cpu_1_0_ilmb_bus_WAIT
    );
ilmb_v10: component BD_ilmb_v10_2
     port map (
      LMB_ABus(0 to 31) => cpu_1_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_0_ilmb_bus_BE(0 to 3),
      LMB_CE => cpu_1_0_ilmb_CE,
      LMB_Clk => cpu_1_0_Clk,
      LMB_ReadDBus(0 to 31) => cpu_1_0_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_1_0_ilmb_bus_READSTROBE,
      LMB_Ready => cpu_1_0_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_1_0_ilmb_UE,
      LMB_Wait => cpu_1_0_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_1_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_1_0_ilmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_1_0_ilmb_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => cpu_1_0_ilmb_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_1_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_1_0_ilmb_bus_READY,
      Sl_UE(0) => cpu_1_0_ilmb_bus_UE,
      Sl_Wait(0) => cpu_1_0_ilmb_bus_WAIT
    );
lmb_bram: component BD_lmb_bram_2
     port map (
      addra(31) => cpu_1_0_dlmb_cntlr_ADDR(0),
      addra(30) => cpu_1_0_dlmb_cntlr_ADDR(1),
      addra(29) => cpu_1_0_dlmb_cntlr_ADDR(2),
      addra(28) => cpu_1_0_dlmb_cntlr_ADDR(3),
      addra(27) => cpu_1_0_dlmb_cntlr_ADDR(4),
      addra(26) => cpu_1_0_dlmb_cntlr_ADDR(5),
      addra(25) => cpu_1_0_dlmb_cntlr_ADDR(6),
      addra(24) => cpu_1_0_dlmb_cntlr_ADDR(7),
      addra(23) => cpu_1_0_dlmb_cntlr_ADDR(8),
      addra(22) => cpu_1_0_dlmb_cntlr_ADDR(9),
      addra(21) => cpu_1_0_dlmb_cntlr_ADDR(10),
      addra(20) => cpu_1_0_dlmb_cntlr_ADDR(11),
      addra(19) => cpu_1_0_dlmb_cntlr_ADDR(12),
      addra(18) => cpu_1_0_dlmb_cntlr_ADDR(13),
      addra(17) => cpu_1_0_dlmb_cntlr_ADDR(14),
      addra(16) => cpu_1_0_dlmb_cntlr_ADDR(15),
      addra(15) => cpu_1_0_dlmb_cntlr_ADDR(16),
      addra(14) => cpu_1_0_dlmb_cntlr_ADDR(17),
      addra(13) => cpu_1_0_dlmb_cntlr_ADDR(18),
      addra(12) => cpu_1_0_dlmb_cntlr_ADDR(19),
      addra(11) => cpu_1_0_dlmb_cntlr_ADDR(20),
      addra(10) => cpu_1_0_dlmb_cntlr_ADDR(21),
      addra(9) => cpu_1_0_dlmb_cntlr_ADDR(22),
      addra(8) => cpu_1_0_dlmb_cntlr_ADDR(23),
      addra(7) => cpu_1_0_dlmb_cntlr_ADDR(24),
      addra(6) => cpu_1_0_dlmb_cntlr_ADDR(25),
      addra(5) => cpu_1_0_dlmb_cntlr_ADDR(26),
      addra(4) => cpu_1_0_dlmb_cntlr_ADDR(27),
      addra(3) => cpu_1_0_dlmb_cntlr_ADDR(28),
      addra(2) => cpu_1_0_dlmb_cntlr_ADDR(29),
      addra(1) => cpu_1_0_dlmb_cntlr_ADDR(30),
      addra(0) => cpu_1_0_dlmb_cntlr_ADDR(31),
      addrb(31) => cpu_1_0_ilmb_cntlr_ADDR(0),
      addrb(30) => cpu_1_0_ilmb_cntlr_ADDR(1),
      addrb(29) => cpu_1_0_ilmb_cntlr_ADDR(2),
      addrb(28) => cpu_1_0_ilmb_cntlr_ADDR(3),
      addrb(27) => cpu_1_0_ilmb_cntlr_ADDR(4),
      addrb(26) => cpu_1_0_ilmb_cntlr_ADDR(5),
      addrb(25) => cpu_1_0_ilmb_cntlr_ADDR(6),
      addrb(24) => cpu_1_0_ilmb_cntlr_ADDR(7),
      addrb(23) => cpu_1_0_ilmb_cntlr_ADDR(8),
      addrb(22) => cpu_1_0_ilmb_cntlr_ADDR(9),
      addrb(21) => cpu_1_0_ilmb_cntlr_ADDR(10),
      addrb(20) => cpu_1_0_ilmb_cntlr_ADDR(11),
      addrb(19) => cpu_1_0_ilmb_cntlr_ADDR(12),
      addrb(18) => cpu_1_0_ilmb_cntlr_ADDR(13),
      addrb(17) => cpu_1_0_ilmb_cntlr_ADDR(14),
      addrb(16) => cpu_1_0_ilmb_cntlr_ADDR(15),
      addrb(15) => cpu_1_0_ilmb_cntlr_ADDR(16),
      addrb(14) => cpu_1_0_ilmb_cntlr_ADDR(17),
      addrb(13) => cpu_1_0_ilmb_cntlr_ADDR(18),
      addrb(12) => cpu_1_0_ilmb_cntlr_ADDR(19),
      addrb(11) => cpu_1_0_ilmb_cntlr_ADDR(20),
      addrb(10) => cpu_1_0_ilmb_cntlr_ADDR(21),
      addrb(9) => cpu_1_0_ilmb_cntlr_ADDR(22),
      addrb(8) => cpu_1_0_ilmb_cntlr_ADDR(23),
      addrb(7) => cpu_1_0_ilmb_cntlr_ADDR(24),
      addrb(6) => cpu_1_0_ilmb_cntlr_ADDR(25),
      addrb(5) => cpu_1_0_ilmb_cntlr_ADDR(26),
      addrb(4) => cpu_1_0_ilmb_cntlr_ADDR(27),
      addrb(3) => cpu_1_0_ilmb_cntlr_ADDR(28),
      addrb(2) => cpu_1_0_ilmb_cntlr_ADDR(29),
      addrb(1) => cpu_1_0_ilmb_cntlr_ADDR(30),
      addrb(0) => cpu_1_0_ilmb_cntlr_ADDR(31),
      clka => cpu_1_0_dlmb_cntlr_CLK,
      clkb => cpu_1_0_ilmb_cntlr_CLK,
      dina(31) => cpu_1_0_dlmb_cntlr_DIN(0),
      dina(30) => cpu_1_0_dlmb_cntlr_DIN(1),
      dina(29) => cpu_1_0_dlmb_cntlr_DIN(2),
      dina(28) => cpu_1_0_dlmb_cntlr_DIN(3),
      dina(27) => cpu_1_0_dlmb_cntlr_DIN(4),
      dina(26) => cpu_1_0_dlmb_cntlr_DIN(5),
      dina(25) => cpu_1_0_dlmb_cntlr_DIN(6),
      dina(24) => cpu_1_0_dlmb_cntlr_DIN(7),
      dina(23) => cpu_1_0_dlmb_cntlr_DIN(8),
      dina(22) => cpu_1_0_dlmb_cntlr_DIN(9),
      dina(21) => cpu_1_0_dlmb_cntlr_DIN(10),
      dina(20) => cpu_1_0_dlmb_cntlr_DIN(11),
      dina(19) => cpu_1_0_dlmb_cntlr_DIN(12),
      dina(18) => cpu_1_0_dlmb_cntlr_DIN(13),
      dina(17) => cpu_1_0_dlmb_cntlr_DIN(14),
      dina(16) => cpu_1_0_dlmb_cntlr_DIN(15),
      dina(15) => cpu_1_0_dlmb_cntlr_DIN(16),
      dina(14) => cpu_1_0_dlmb_cntlr_DIN(17),
      dina(13) => cpu_1_0_dlmb_cntlr_DIN(18),
      dina(12) => cpu_1_0_dlmb_cntlr_DIN(19),
      dina(11) => cpu_1_0_dlmb_cntlr_DIN(20),
      dina(10) => cpu_1_0_dlmb_cntlr_DIN(21),
      dina(9) => cpu_1_0_dlmb_cntlr_DIN(22),
      dina(8) => cpu_1_0_dlmb_cntlr_DIN(23),
      dina(7) => cpu_1_0_dlmb_cntlr_DIN(24),
      dina(6) => cpu_1_0_dlmb_cntlr_DIN(25),
      dina(5) => cpu_1_0_dlmb_cntlr_DIN(26),
      dina(4) => cpu_1_0_dlmb_cntlr_DIN(27),
      dina(3) => cpu_1_0_dlmb_cntlr_DIN(28),
      dina(2) => cpu_1_0_dlmb_cntlr_DIN(29),
      dina(1) => cpu_1_0_dlmb_cntlr_DIN(30),
      dina(0) => cpu_1_0_dlmb_cntlr_DIN(31),
      dinb(31) => cpu_1_0_ilmb_cntlr_DIN(0),
      dinb(30) => cpu_1_0_ilmb_cntlr_DIN(1),
      dinb(29) => cpu_1_0_ilmb_cntlr_DIN(2),
      dinb(28) => cpu_1_0_ilmb_cntlr_DIN(3),
      dinb(27) => cpu_1_0_ilmb_cntlr_DIN(4),
      dinb(26) => cpu_1_0_ilmb_cntlr_DIN(5),
      dinb(25) => cpu_1_0_ilmb_cntlr_DIN(6),
      dinb(24) => cpu_1_0_ilmb_cntlr_DIN(7),
      dinb(23) => cpu_1_0_ilmb_cntlr_DIN(8),
      dinb(22) => cpu_1_0_ilmb_cntlr_DIN(9),
      dinb(21) => cpu_1_0_ilmb_cntlr_DIN(10),
      dinb(20) => cpu_1_0_ilmb_cntlr_DIN(11),
      dinb(19) => cpu_1_0_ilmb_cntlr_DIN(12),
      dinb(18) => cpu_1_0_ilmb_cntlr_DIN(13),
      dinb(17) => cpu_1_0_ilmb_cntlr_DIN(14),
      dinb(16) => cpu_1_0_ilmb_cntlr_DIN(15),
      dinb(15) => cpu_1_0_ilmb_cntlr_DIN(16),
      dinb(14) => cpu_1_0_ilmb_cntlr_DIN(17),
      dinb(13) => cpu_1_0_ilmb_cntlr_DIN(18),
      dinb(12) => cpu_1_0_ilmb_cntlr_DIN(19),
      dinb(11) => cpu_1_0_ilmb_cntlr_DIN(20),
      dinb(10) => cpu_1_0_ilmb_cntlr_DIN(21),
      dinb(9) => cpu_1_0_ilmb_cntlr_DIN(22),
      dinb(8) => cpu_1_0_ilmb_cntlr_DIN(23),
      dinb(7) => cpu_1_0_ilmb_cntlr_DIN(24),
      dinb(6) => cpu_1_0_ilmb_cntlr_DIN(25),
      dinb(5) => cpu_1_0_ilmb_cntlr_DIN(26),
      dinb(4) => cpu_1_0_ilmb_cntlr_DIN(27),
      dinb(3) => cpu_1_0_ilmb_cntlr_DIN(28),
      dinb(2) => cpu_1_0_ilmb_cntlr_DIN(29),
      dinb(1) => cpu_1_0_ilmb_cntlr_DIN(30),
      dinb(0) => cpu_1_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => cpu_1_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => cpu_1_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => cpu_1_0_dlmb_cntlr_EN,
      enb => cpu_1_0_ilmb_cntlr_EN,
      rsta => cpu_1_0_dlmb_cntlr_RST,
      rstb => cpu_1_0_ilmb_cntlr_RST,
      wea(3) => cpu_1_0_dlmb_cntlr_WE(0),
      wea(2) => cpu_1_0_dlmb_cntlr_WE(1),
      wea(1) => cpu_1_0_dlmb_cntlr_WE(2),
      wea(0) => cpu_1_0_dlmb_cntlr_WE(3),
      web(3) => cpu_1_0_ilmb_cntlr_WE(0),
      web(2) => cpu_1_0_ilmb_cntlr_WE(1),
      web(1) => cpu_1_0_ilmb_cntlr_WE(2),
      web(0) => cpu_1_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_1_0_x_local_memory_imp_NYO7CG is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end cpu_1_0_x_local_memory_imp_NYO7CG;

architecture STRUCTURE of cpu_1_0_x_local_memory_imp_NYO7CG is
  component BD_dlmb_v10_4 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_dlmb_v10_4;
  component BD_ilmb_v10_4 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_ilmb_v10_4;
  component BD_dlmb_bram_if_cntlr_4 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_dlmb_bram_if_cntlr_4;
  component BD_ilmb_bram_if_cntlr_4 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_ilmb_bram_if_cntlr_4;
  component BD_lmb_bram_4 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component BD_lmb_bram_4;
  signal SYS_Rst_1 : STD_LOGIC;
  signal cpu_1_0_x_Clk : STD_LOGIC;
  signal cpu_1_0_x_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_dlmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_0_x_dlmb_CE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_dlmb_READSTROBE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_READY : STD_LOGIC;
  signal cpu_1_0_x_dlmb_UE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_WAIT : STD_LOGIC;
  signal cpu_1_0_x_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_dlmb_WRITESTROBE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_0_x_dlmb_bus_CE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_dlmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_bus_READY : STD_LOGIC;
  signal cpu_1_0_x_dlmb_bus_UE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_bus_WAIT : STD_LOGIC;
  signal cpu_1_0_x_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_dlmb_cntlr_CLK : STD_LOGIC;
  signal cpu_1_0_x_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_x_dlmb_cntlr_EN : STD_LOGIC;
  signal cpu_1_0_x_dlmb_cntlr_RST : STD_LOGIC;
  signal cpu_1_0_x_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_0_x_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_ilmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_CE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_ilmb_READSTROBE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_READY : STD_LOGIC;
  signal cpu_1_0_x_ilmb_UE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_WAIT : STD_LOGIC;
  signal cpu_1_0_x_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_0_x_ilmb_bus_CE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_ilmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_bus_READY : STD_LOGIC;
  signal cpu_1_0_x_ilmb_bus_UE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_bus_WAIT : STD_LOGIC;
  signal cpu_1_0_x_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_ilmb_cntlr_CLK : STD_LOGIC;
  signal cpu_1_0_x_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_x_ilmb_cntlr_EN : STD_LOGIC;
  signal cpu_1_0_x_ilmb_cntlr_RST : STD_LOGIC;
  signal cpu_1_0_x_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > BD cpu_1_0_x_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= cpu_1_0_x_dlmb_CE;
  DLMB_readdbus(0 to 31) <= cpu_1_0_x_dlmb_READDBUS(0 to 31);
  DLMB_ready <= cpu_1_0_x_dlmb_READY;
  DLMB_ue <= cpu_1_0_x_dlmb_UE;
  DLMB_wait <= cpu_1_0_x_dlmb_WAIT;
  ILMB_ce <= cpu_1_0_x_ilmb_CE;
  ILMB_readdbus(0 to 31) <= cpu_1_0_x_ilmb_READDBUS(0 to 31);
  ILMB_ready <= cpu_1_0_x_ilmb_READY;
  ILMB_ue <= cpu_1_0_x_ilmb_UE;
  ILMB_wait <= cpu_1_0_x_ilmb_WAIT;
  SYS_Rst_1 <= SYS_Rst;
  cpu_1_0_x_Clk <= LMB_Clk;
  cpu_1_0_x_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  cpu_1_0_x_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  cpu_1_0_x_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  cpu_1_0_x_dlmb_READSTROBE <= DLMB_readstrobe;
  cpu_1_0_x_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  cpu_1_0_x_dlmb_WRITESTROBE <= DLMB_writestrobe;
  cpu_1_0_x_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  cpu_1_0_x_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  cpu_1_0_x_ilmb_READSTROBE <= ILMB_readstrobe;
dlmb_bram_if_cntlr: component BD_dlmb_bram_if_cntlr_4
     port map (
      BRAM_Addr_A(0 to 31) => cpu_1_0_x_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_1_0_x_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_1_0_x_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_1_0_x_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_1_0_x_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_1_0_x_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_1_0_x_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_1_0_x_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_1_0_x_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_1_0_x_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_1_0_x_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_1_0_x_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_1_0_x_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_1_0_x_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_1_0_x_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_1_0_x_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_1_0_x_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_1_0_x_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_1_0_x_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_1_0_x_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_1_0_x_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_1_0_x_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_1_0_x_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_1_0_x_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_1_0_x_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_1_0_x_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_1_0_x_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_1_0_x_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_1_0_x_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_1_0_x_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_1_0_x_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_1_0_x_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_1_0_x_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_1_0_x_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_1_0_x_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_1_0_x_dlmb_cntlr_EN,
      BRAM_Rst_A => cpu_1_0_x_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_1_0_x_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_1_0_x_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_0_x_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_0_x_dlmb_bus_BE(0 to 3),
      LMB_Clk => cpu_1_0_x_Clk,
      LMB_ReadStrobe => cpu_1_0_x_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_1_0_x_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_0_x_dlmb_bus_WRITESTROBE,
      Sl_CE => cpu_1_0_x_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_0_x_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_1_0_x_dlmb_bus_READY,
      Sl_UE => cpu_1_0_x_dlmb_bus_UE,
      Sl_Wait => cpu_1_0_x_dlmb_bus_WAIT
    );
dlmb_v10: component BD_dlmb_v10_4
     port map (
      LMB_ABus(0 to 31) => cpu_1_0_x_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_0_x_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_0_x_dlmb_bus_BE(0 to 3),
      LMB_CE => cpu_1_0_x_dlmb_CE,
      LMB_Clk => cpu_1_0_x_Clk,
      LMB_ReadDBus(0 to 31) => cpu_1_0_x_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_1_0_x_dlmb_bus_READSTROBE,
      LMB_Ready => cpu_1_0_x_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_1_0_x_dlmb_UE,
      LMB_Wait => cpu_1_0_x_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_1_0_x_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_0_x_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_1_0_x_dlmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_1_0_x_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => cpu_1_0_x_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => cpu_1_0_x_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => cpu_1_0_x_dlmb_READSTROBE,
      M_WriteStrobe => cpu_1_0_x_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_1_0_x_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_0_x_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_1_0_x_dlmb_bus_READY,
      Sl_UE(0) => cpu_1_0_x_dlmb_bus_UE,
      Sl_Wait(0) => cpu_1_0_x_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component BD_ilmb_bram_if_cntlr_4
     port map (
      BRAM_Addr_A(0 to 31) => cpu_1_0_x_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_1_0_x_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_1_0_x_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_1_0_x_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_1_0_x_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_1_0_x_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_1_0_x_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_1_0_x_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_1_0_x_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_1_0_x_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_1_0_x_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_1_0_x_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_1_0_x_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_1_0_x_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_1_0_x_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_1_0_x_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_1_0_x_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_1_0_x_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_1_0_x_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_1_0_x_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_1_0_x_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_1_0_x_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_1_0_x_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_1_0_x_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_1_0_x_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_1_0_x_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_1_0_x_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_1_0_x_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_1_0_x_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_1_0_x_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_1_0_x_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_1_0_x_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_1_0_x_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_1_0_x_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_1_0_x_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_1_0_x_ilmb_cntlr_EN,
      BRAM_Rst_A => cpu_1_0_x_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_1_0_x_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_1_0_x_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_0_x_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_0_x_ilmb_bus_BE(0 to 3),
      LMB_Clk => cpu_1_0_x_Clk,
      LMB_ReadStrobe => cpu_1_0_x_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_1_0_x_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_0_x_ilmb_bus_WRITESTROBE,
      Sl_CE => cpu_1_0_x_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_0_x_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_1_0_x_ilmb_bus_READY,
      Sl_UE => cpu_1_0_x_ilmb_bus_UE,
      Sl_Wait => cpu_1_0_x_ilmb_bus_WAIT
    );
ilmb_v10: component BD_ilmb_v10_4
     port map (
      LMB_ABus(0 to 31) => cpu_1_0_x_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_0_x_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_0_x_ilmb_bus_BE(0 to 3),
      LMB_CE => cpu_1_0_x_ilmb_CE,
      LMB_Clk => cpu_1_0_x_Clk,
      LMB_ReadDBus(0 to 31) => cpu_1_0_x_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_1_0_x_ilmb_bus_READSTROBE,
      LMB_Ready => cpu_1_0_x_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_1_0_x_ilmb_UE,
      LMB_Wait => cpu_1_0_x_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_1_0_x_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_0_x_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_1_0_x_ilmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_1_0_x_ilmb_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => cpu_1_0_x_ilmb_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_1_0_x_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_0_x_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_1_0_x_ilmb_bus_READY,
      Sl_UE(0) => cpu_1_0_x_ilmb_bus_UE,
      Sl_Wait(0) => cpu_1_0_x_ilmb_bus_WAIT
    );
lmb_bram: component BD_lmb_bram_4
     port map (
      addra(31) => cpu_1_0_x_dlmb_cntlr_ADDR(0),
      addra(30) => cpu_1_0_x_dlmb_cntlr_ADDR(1),
      addra(29) => cpu_1_0_x_dlmb_cntlr_ADDR(2),
      addra(28) => cpu_1_0_x_dlmb_cntlr_ADDR(3),
      addra(27) => cpu_1_0_x_dlmb_cntlr_ADDR(4),
      addra(26) => cpu_1_0_x_dlmb_cntlr_ADDR(5),
      addra(25) => cpu_1_0_x_dlmb_cntlr_ADDR(6),
      addra(24) => cpu_1_0_x_dlmb_cntlr_ADDR(7),
      addra(23) => cpu_1_0_x_dlmb_cntlr_ADDR(8),
      addra(22) => cpu_1_0_x_dlmb_cntlr_ADDR(9),
      addra(21) => cpu_1_0_x_dlmb_cntlr_ADDR(10),
      addra(20) => cpu_1_0_x_dlmb_cntlr_ADDR(11),
      addra(19) => cpu_1_0_x_dlmb_cntlr_ADDR(12),
      addra(18) => cpu_1_0_x_dlmb_cntlr_ADDR(13),
      addra(17) => cpu_1_0_x_dlmb_cntlr_ADDR(14),
      addra(16) => cpu_1_0_x_dlmb_cntlr_ADDR(15),
      addra(15) => cpu_1_0_x_dlmb_cntlr_ADDR(16),
      addra(14) => cpu_1_0_x_dlmb_cntlr_ADDR(17),
      addra(13) => cpu_1_0_x_dlmb_cntlr_ADDR(18),
      addra(12) => cpu_1_0_x_dlmb_cntlr_ADDR(19),
      addra(11) => cpu_1_0_x_dlmb_cntlr_ADDR(20),
      addra(10) => cpu_1_0_x_dlmb_cntlr_ADDR(21),
      addra(9) => cpu_1_0_x_dlmb_cntlr_ADDR(22),
      addra(8) => cpu_1_0_x_dlmb_cntlr_ADDR(23),
      addra(7) => cpu_1_0_x_dlmb_cntlr_ADDR(24),
      addra(6) => cpu_1_0_x_dlmb_cntlr_ADDR(25),
      addra(5) => cpu_1_0_x_dlmb_cntlr_ADDR(26),
      addra(4) => cpu_1_0_x_dlmb_cntlr_ADDR(27),
      addra(3) => cpu_1_0_x_dlmb_cntlr_ADDR(28),
      addra(2) => cpu_1_0_x_dlmb_cntlr_ADDR(29),
      addra(1) => cpu_1_0_x_dlmb_cntlr_ADDR(30),
      addra(0) => cpu_1_0_x_dlmb_cntlr_ADDR(31),
      addrb(31) => cpu_1_0_x_ilmb_cntlr_ADDR(0),
      addrb(30) => cpu_1_0_x_ilmb_cntlr_ADDR(1),
      addrb(29) => cpu_1_0_x_ilmb_cntlr_ADDR(2),
      addrb(28) => cpu_1_0_x_ilmb_cntlr_ADDR(3),
      addrb(27) => cpu_1_0_x_ilmb_cntlr_ADDR(4),
      addrb(26) => cpu_1_0_x_ilmb_cntlr_ADDR(5),
      addrb(25) => cpu_1_0_x_ilmb_cntlr_ADDR(6),
      addrb(24) => cpu_1_0_x_ilmb_cntlr_ADDR(7),
      addrb(23) => cpu_1_0_x_ilmb_cntlr_ADDR(8),
      addrb(22) => cpu_1_0_x_ilmb_cntlr_ADDR(9),
      addrb(21) => cpu_1_0_x_ilmb_cntlr_ADDR(10),
      addrb(20) => cpu_1_0_x_ilmb_cntlr_ADDR(11),
      addrb(19) => cpu_1_0_x_ilmb_cntlr_ADDR(12),
      addrb(18) => cpu_1_0_x_ilmb_cntlr_ADDR(13),
      addrb(17) => cpu_1_0_x_ilmb_cntlr_ADDR(14),
      addrb(16) => cpu_1_0_x_ilmb_cntlr_ADDR(15),
      addrb(15) => cpu_1_0_x_ilmb_cntlr_ADDR(16),
      addrb(14) => cpu_1_0_x_ilmb_cntlr_ADDR(17),
      addrb(13) => cpu_1_0_x_ilmb_cntlr_ADDR(18),
      addrb(12) => cpu_1_0_x_ilmb_cntlr_ADDR(19),
      addrb(11) => cpu_1_0_x_ilmb_cntlr_ADDR(20),
      addrb(10) => cpu_1_0_x_ilmb_cntlr_ADDR(21),
      addrb(9) => cpu_1_0_x_ilmb_cntlr_ADDR(22),
      addrb(8) => cpu_1_0_x_ilmb_cntlr_ADDR(23),
      addrb(7) => cpu_1_0_x_ilmb_cntlr_ADDR(24),
      addrb(6) => cpu_1_0_x_ilmb_cntlr_ADDR(25),
      addrb(5) => cpu_1_0_x_ilmb_cntlr_ADDR(26),
      addrb(4) => cpu_1_0_x_ilmb_cntlr_ADDR(27),
      addrb(3) => cpu_1_0_x_ilmb_cntlr_ADDR(28),
      addrb(2) => cpu_1_0_x_ilmb_cntlr_ADDR(29),
      addrb(1) => cpu_1_0_x_ilmb_cntlr_ADDR(30),
      addrb(0) => cpu_1_0_x_ilmb_cntlr_ADDR(31),
      clka => cpu_1_0_x_dlmb_cntlr_CLK,
      clkb => cpu_1_0_x_ilmb_cntlr_CLK,
      dina(31) => cpu_1_0_x_dlmb_cntlr_DIN(0),
      dina(30) => cpu_1_0_x_dlmb_cntlr_DIN(1),
      dina(29) => cpu_1_0_x_dlmb_cntlr_DIN(2),
      dina(28) => cpu_1_0_x_dlmb_cntlr_DIN(3),
      dina(27) => cpu_1_0_x_dlmb_cntlr_DIN(4),
      dina(26) => cpu_1_0_x_dlmb_cntlr_DIN(5),
      dina(25) => cpu_1_0_x_dlmb_cntlr_DIN(6),
      dina(24) => cpu_1_0_x_dlmb_cntlr_DIN(7),
      dina(23) => cpu_1_0_x_dlmb_cntlr_DIN(8),
      dina(22) => cpu_1_0_x_dlmb_cntlr_DIN(9),
      dina(21) => cpu_1_0_x_dlmb_cntlr_DIN(10),
      dina(20) => cpu_1_0_x_dlmb_cntlr_DIN(11),
      dina(19) => cpu_1_0_x_dlmb_cntlr_DIN(12),
      dina(18) => cpu_1_0_x_dlmb_cntlr_DIN(13),
      dina(17) => cpu_1_0_x_dlmb_cntlr_DIN(14),
      dina(16) => cpu_1_0_x_dlmb_cntlr_DIN(15),
      dina(15) => cpu_1_0_x_dlmb_cntlr_DIN(16),
      dina(14) => cpu_1_0_x_dlmb_cntlr_DIN(17),
      dina(13) => cpu_1_0_x_dlmb_cntlr_DIN(18),
      dina(12) => cpu_1_0_x_dlmb_cntlr_DIN(19),
      dina(11) => cpu_1_0_x_dlmb_cntlr_DIN(20),
      dina(10) => cpu_1_0_x_dlmb_cntlr_DIN(21),
      dina(9) => cpu_1_0_x_dlmb_cntlr_DIN(22),
      dina(8) => cpu_1_0_x_dlmb_cntlr_DIN(23),
      dina(7) => cpu_1_0_x_dlmb_cntlr_DIN(24),
      dina(6) => cpu_1_0_x_dlmb_cntlr_DIN(25),
      dina(5) => cpu_1_0_x_dlmb_cntlr_DIN(26),
      dina(4) => cpu_1_0_x_dlmb_cntlr_DIN(27),
      dina(3) => cpu_1_0_x_dlmb_cntlr_DIN(28),
      dina(2) => cpu_1_0_x_dlmb_cntlr_DIN(29),
      dina(1) => cpu_1_0_x_dlmb_cntlr_DIN(30),
      dina(0) => cpu_1_0_x_dlmb_cntlr_DIN(31),
      dinb(31) => cpu_1_0_x_ilmb_cntlr_DIN(0),
      dinb(30) => cpu_1_0_x_ilmb_cntlr_DIN(1),
      dinb(29) => cpu_1_0_x_ilmb_cntlr_DIN(2),
      dinb(28) => cpu_1_0_x_ilmb_cntlr_DIN(3),
      dinb(27) => cpu_1_0_x_ilmb_cntlr_DIN(4),
      dinb(26) => cpu_1_0_x_ilmb_cntlr_DIN(5),
      dinb(25) => cpu_1_0_x_ilmb_cntlr_DIN(6),
      dinb(24) => cpu_1_0_x_ilmb_cntlr_DIN(7),
      dinb(23) => cpu_1_0_x_ilmb_cntlr_DIN(8),
      dinb(22) => cpu_1_0_x_ilmb_cntlr_DIN(9),
      dinb(21) => cpu_1_0_x_ilmb_cntlr_DIN(10),
      dinb(20) => cpu_1_0_x_ilmb_cntlr_DIN(11),
      dinb(19) => cpu_1_0_x_ilmb_cntlr_DIN(12),
      dinb(18) => cpu_1_0_x_ilmb_cntlr_DIN(13),
      dinb(17) => cpu_1_0_x_ilmb_cntlr_DIN(14),
      dinb(16) => cpu_1_0_x_ilmb_cntlr_DIN(15),
      dinb(15) => cpu_1_0_x_ilmb_cntlr_DIN(16),
      dinb(14) => cpu_1_0_x_ilmb_cntlr_DIN(17),
      dinb(13) => cpu_1_0_x_ilmb_cntlr_DIN(18),
      dinb(12) => cpu_1_0_x_ilmb_cntlr_DIN(19),
      dinb(11) => cpu_1_0_x_ilmb_cntlr_DIN(20),
      dinb(10) => cpu_1_0_x_ilmb_cntlr_DIN(21),
      dinb(9) => cpu_1_0_x_ilmb_cntlr_DIN(22),
      dinb(8) => cpu_1_0_x_ilmb_cntlr_DIN(23),
      dinb(7) => cpu_1_0_x_ilmb_cntlr_DIN(24),
      dinb(6) => cpu_1_0_x_ilmb_cntlr_DIN(25),
      dinb(5) => cpu_1_0_x_ilmb_cntlr_DIN(26),
      dinb(4) => cpu_1_0_x_ilmb_cntlr_DIN(27),
      dinb(3) => cpu_1_0_x_ilmb_cntlr_DIN(28),
      dinb(2) => cpu_1_0_x_ilmb_cntlr_DIN(29),
      dinb(1) => cpu_1_0_x_ilmb_cntlr_DIN(30),
      dinb(0) => cpu_1_0_x_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => cpu_1_0_x_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => cpu_1_0_x_ilmb_cntlr_DOUT(31 downto 0),
      ena => cpu_1_0_x_dlmb_cntlr_EN,
      enb => cpu_1_0_x_ilmb_cntlr_EN,
      rsta => cpu_1_0_x_dlmb_cntlr_RST,
      rstb => cpu_1_0_x_ilmb_cntlr_RST,
      wea(3) => cpu_1_0_x_dlmb_cntlr_WE(0),
      wea(2) => cpu_1_0_x_dlmb_cntlr_WE(1),
      wea(1) => cpu_1_0_x_dlmb_cntlr_WE(2),
      wea(0) => cpu_1_0_x_dlmb_cntlr_WE(3),
      web(3) => cpu_1_0_x_ilmb_cntlr_WE(0),
      web(2) => cpu_1_0_x_ilmb_cntlr_WE(1),
      web(1) => cpu_1_0_x_ilmb_cntlr_WE(2),
      web(0) => cpu_1_0_x_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_1_1_local_memory_imp_2WC3H2 is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end cpu_1_1_local_memory_imp_2WC3H2;

architecture STRUCTURE of cpu_1_1_local_memory_imp_2WC3H2 is
  component BD_dlmb_v10_3 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_dlmb_v10_3;
  component BD_ilmb_v10_3 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_ilmb_v10_3;
  component BD_dlmb_bram_if_cntlr_3 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_dlmb_bram_if_cntlr_3;
  component BD_ilmb_bram_if_cntlr_3 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_ilmb_bram_if_cntlr_3;
  component BD_lmb_bram_3 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component BD_lmb_bram_3;
  signal SYS_Rst_1 : STD_LOGIC;
  signal cpu_1_1_Clk : STD_LOGIC;
  signal cpu_1_1_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_dlmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_1_dlmb_CE : STD_LOGIC;
  signal cpu_1_1_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_dlmb_READSTROBE : STD_LOGIC;
  signal cpu_1_1_dlmb_READY : STD_LOGIC;
  signal cpu_1_1_dlmb_UE : STD_LOGIC;
  signal cpu_1_1_dlmb_WAIT : STD_LOGIC;
  signal cpu_1_1_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_dlmb_WRITESTROBE : STD_LOGIC;
  signal cpu_1_1_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_1_dlmb_bus_CE : STD_LOGIC;
  signal cpu_1_1_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_dlmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_1_1_dlmb_bus_READY : STD_LOGIC;
  signal cpu_1_1_dlmb_bus_UE : STD_LOGIC;
  signal cpu_1_1_dlmb_bus_WAIT : STD_LOGIC;
  signal cpu_1_1_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_1_1_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_dlmb_cntlr_CLK : STD_LOGIC;
  signal cpu_1_1_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_dlmb_cntlr_EN : STD_LOGIC;
  signal cpu_1_1_dlmb_cntlr_RST : STD_LOGIC;
  signal cpu_1_1_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_1_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_ilmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_ilmb_CE : STD_LOGIC;
  signal cpu_1_1_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_ilmb_READSTROBE : STD_LOGIC;
  signal cpu_1_1_ilmb_READY : STD_LOGIC;
  signal cpu_1_1_ilmb_UE : STD_LOGIC;
  signal cpu_1_1_ilmb_WAIT : STD_LOGIC;
  signal cpu_1_1_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_1_ilmb_bus_CE : STD_LOGIC;
  signal cpu_1_1_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_ilmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_1_1_ilmb_bus_READY : STD_LOGIC;
  signal cpu_1_1_ilmb_bus_UE : STD_LOGIC;
  signal cpu_1_1_ilmb_bus_WAIT : STD_LOGIC;
  signal cpu_1_1_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_1_1_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_ilmb_cntlr_CLK : STD_LOGIC;
  signal cpu_1_1_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_ilmb_cntlr_EN : STD_LOGIC;
  signal cpu_1_1_ilmb_cntlr_RST : STD_LOGIC;
  signal cpu_1_1_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > BD cpu_1_1_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= cpu_1_1_dlmb_CE;
  DLMB_readdbus(0 to 31) <= cpu_1_1_dlmb_READDBUS(0 to 31);
  DLMB_ready <= cpu_1_1_dlmb_READY;
  DLMB_ue <= cpu_1_1_dlmb_UE;
  DLMB_wait <= cpu_1_1_dlmb_WAIT;
  ILMB_ce <= cpu_1_1_ilmb_CE;
  ILMB_readdbus(0 to 31) <= cpu_1_1_ilmb_READDBUS(0 to 31);
  ILMB_ready <= cpu_1_1_ilmb_READY;
  ILMB_ue <= cpu_1_1_ilmb_UE;
  ILMB_wait <= cpu_1_1_ilmb_WAIT;
  SYS_Rst_1 <= SYS_Rst;
  cpu_1_1_Clk <= LMB_Clk;
  cpu_1_1_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  cpu_1_1_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  cpu_1_1_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  cpu_1_1_dlmb_READSTROBE <= DLMB_readstrobe;
  cpu_1_1_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  cpu_1_1_dlmb_WRITESTROBE <= DLMB_writestrobe;
  cpu_1_1_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  cpu_1_1_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  cpu_1_1_ilmb_READSTROBE <= ILMB_readstrobe;
dlmb_bram_if_cntlr: component BD_dlmb_bram_if_cntlr_3
     port map (
      BRAM_Addr_A(0 to 31) => cpu_1_1_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_1_1_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_1_1_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_1_1_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_1_1_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_1_1_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_1_1_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_1_1_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_1_1_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_1_1_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_1_1_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_1_1_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_1_1_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_1_1_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_1_1_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_1_1_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_1_1_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_1_1_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_1_1_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_1_1_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_1_1_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_1_1_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_1_1_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_1_1_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_1_1_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_1_1_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_1_1_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_1_1_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_1_1_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_1_1_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_1_1_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_1_1_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_1_1_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_1_1_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_1_1_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_1_1_dlmb_cntlr_EN,
      BRAM_Rst_A => cpu_1_1_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_1_1_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_1_1_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_1_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_1_dlmb_bus_BE(0 to 3),
      LMB_Clk => cpu_1_1_Clk,
      LMB_ReadStrobe => cpu_1_1_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_1_1_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_1_dlmb_bus_WRITESTROBE,
      Sl_CE => cpu_1_1_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_1_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_1_1_dlmb_bus_READY,
      Sl_UE => cpu_1_1_dlmb_bus_UE,
      Sl_Wait => cpu_1_1_dlmb_bus_WAIT
    );
dlmb_v10: component BD_dlmb_v10_3
     port map (
      LMB_ABus(0 to 31) => cpu_1_1_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_1_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_1_dlmb_bus_BE(0 to 3),
      LMB_CE => cpu_1_1_dlmb_CE,
      LMB_Clk => cpu_1_1_Clk,
      LMB_ReadDBus(0 to 31) => cpu_1_1_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_1_1_dlmb_bus_READSTROBE,
      LMB_Ready => cpu_1_1_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_1_1_dlmb_UE,
      LMB_Wait => cpu_1_1_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_1_1_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_1_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_1_1_dlmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_1_1_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => cpu_1_1_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => cpu_1_1_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => cpu_1_1_dlmb_READSTROBE,
      M_WriteStrobe => cpu_1_1_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_1_1_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_1_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_1_1_dlmb_bus_READY,
      Sl_UE(0) => cpu_1_1_dlmb_bus_UE,
      Sl_Wait(0) => cpu_1_1_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component BD_ilmb_bram_if_cntlr_3
     port map (
      BRAM_Addr_A(0 to 31) => cpu_1_1_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_1_1_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_1_1_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_1_1_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_1_1_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_1_1_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_1_1_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_1_1_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_1_1_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_1_1_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_1_1_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_1_1_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_1_1_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_1_1_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_1_1_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_1_1_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_1_1_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_1_1_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_1_1_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_1_1_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_1_1_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_1_1_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_1_1_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_1_1_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_1_1_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_1_1_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_1_1_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_1_1_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_1_1_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_1_1_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_1_1_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_1_1_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_1_1_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_1_1_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_1_1_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_1_1_ilmb_cntlr_EN,
      BRAM_Rst_A => cpu_1_1_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_1_1_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_1_1_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_1_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_1_ilmb_bus_BE(0 to 3),
      LMB_Clk => cpu_1_1_Clk,
      LMB_ReadStrobe => cpu_1_1_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_1_1_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_1_ilmb_bus_WRITESTROBE,
      Sl_CE => cpu_1_1_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_1_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_1_1_ilmb_bus_READY,
      Sl_UE => cpu_1_1_ilmb_bus_UE,
      Sl_Wait => cpu_1_1_ilmb_bus_WAIT
    );
ilmb_v10: component BD_ilmb_v10_3
     port map (
      LMB_ABus(0 to 31) => cpu_1_1_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_1_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_1_ilmb_bus_BE(0 to 3),
      LMB_CE => cpu_1_1_ilmb_CE,
      LMB_Clk => cpu_1_1_Clk,
      LMB_ReadDBus(0 to 31) => cpu_1_1_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_1_1_ilmb_bus_READSTROBE,
      LMB_Ready => cpu_1_1_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_1_1_ilmb_UE,
      LMB_Wait => cpu_1_1_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_1_1_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_1_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_1_1_ilmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_1_1_ilmb_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => cpu_1_1_ilmb_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_1_1_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_1_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_1_1_ilmb_bus_READY,
      Sl_UE(0) => cpu_1_1_ilmb_bus_UE,
      Sl_Wait(0) => cpu_1_1_ilmb_bus_WAIT
    );
lmb_bram: component BD_lmb_bram_3
     port map (
      addra(31) => cpu_1_1_dlmb_cntlr_ADDR(0),
      addra(30) => cpu_1_1_dlmb_cntlr_ADDR(1),
      addra(29) => cpu_1_1_dlmb_cntlr_ADDR(2),
      addra(28) => cpu_1_1_dlmb_cntlr_ADDR(3),
      addra(27) => cpu_1_1_dlmb_cntlr_ADDR(4),
      addra(26) => cpu_1_1_dlmb_cntlr_ADDR(5),
      addra(25) => cpu_1_1_dlmb_cntlr_ADDR(6),
      addra(24) => cpu_1_1_dlmb_cntlr_ADDR(7),
      addra(23) => cpu_1_1_dlmb_cntlr_ADDR(8),
      addra(22) => cpu_1_1_dlmb_cntlr_ADDR(9),
      addra(21) => cpu_1_1_dlmb_cntlr_ADDR(10),
      addra(20) => cpu_1_1_dlmb_cntlr_ADDR(11),
      addra(19) => cpu_1_1_dlmb_cntlr_ADDR(12),
      addra(18) => cpu_1_1_dlmb_cntlr_ADDR(13),
      addra(17) => cpu_1_1_dlmb_cntlr_ADDR(14),
      addra(16) => cpu_1_1_dlmb_cntlr_ADDR(15),
      addra(15) => cpu_1_1_dlmb_cntlr_ADDR(16),
      addra(14) => cpu_1_1_dlmb_cntlr_ADDR(17),
      addra(13) => cpu_1_1_dlmb_cntlr_ADDR(18),
      addra(12) => cpu_1_1_dlmb_cntlr_ADDR(19),
      addra(11) => cpu_1_1_dlmb_cntlr_ADDR(20),
      addra(10) => cpu_1_1_dlmb_cntlr_ADDR(21),
      addra(9) => cpu_1_1_dlmb_cntlr_ADDR(22),
      addra(8) => cpu_1_1_dlmb_cntlr_ADDR(23),
      addra(7) => cpu_1_1_dlmb_cntlr_ADDR(24),
      addra(6) => cpu_1_1_dlmb_cntlr_ADDR(25),
      addra(5) => cpu_1_1_dlmb_cntlr_ADDR(26),
      addra(4) => cpu_1_1_dlmb_cntlr_ADDR(27),
      addra(3) => cpu_1_1_dlmb_cntlr_ADDR(28),
      addra(2) => cpu_1_1_dlmb_cntlr_ADDR(29),
      addra(1) => cpu_1_1_dlmb_cntlr_ADDR(30),
      addra(0) => cpu_1_1_dlmb_cntlr_ADDR(31),
      addrb(31) => cpu_1_1_ilmb_cntlr_ADDR(0),
      addrb(30) => cpu_1_1_ilmb_cntlr_ADDR(1),
      addrb(29) => cpu_1_1_ilmb_cntlr_ADDR(2),
      addrb(28) => cpu_1_1_ilmb_cntlr_ADDR(3),
      addrb(27) => cpu_1_1_ilmb_cntlr_ADDR(4),
      addrb(26) => cpu_1_1_ilmb_cntlr_ADDR(5),
      addrb(25) => cpu_1_1_ilmb_cntlr_ADDR(6),
      addrb(24) => cpu_1_1_ilmb_cntlr_ADDR(7),
      addrb(23) => cpu_1_1_ilmb_cntlr_ADDR(8),
      addrb(22) => cpu_1_1_ilmb_cntlr_ADDR(9),
      addrb(21) => cpu_1_1_ilmb_cntlr_ADDR(10),
      addrb(20) => cpu_1_1_ilmb_cntlr_ADDR(11),
      addrb(19) => cpu_1_1_ilmb_cntlr_ADDR(12),
      addrb(18) => cpu_1_1_ilmb_cntlr_ADDR(13),
      addrb(17) => cpu_1_1_ilmb_cntlr_ADDR(14),
      addrb(16) => cpu_1_1_ilmb_cntlr_ADDR(15),
      addrb(15) => cpu_1_1_ilmb_cntlr_ADDR(16),
      addrb(14) => cpu_1_1_ilmb_cntlr_ADDR(17),
      addrb(13) => cpu_1_1_ilmb_cntlr_ADDR(18),
      addrb(12) => cpu_1_1_ilmb_cntlr_ADDR(19),
      addrb(11) => cpu_1_1_ilmb_cntlr_ADDR(20),
      addrb(10) => cpu_1_1_ilmb_cntlr_ADDR(21),
      addrb(9) => cpu_1_1_ilmb_cntlr_ADDR(22),
      addrb(8) => cpu_1_1_ilmb_cntlr_ADDR(23),
      addrb(7) => cpu_1_1_ilmb_cntlr_ADDR(24),
      addrb(6) => cpu_1_1_ilmb_cntlr_ADDR(25),
      addrb(5) => cpu_1_1_ilmb_cntlr_ADDR(26),
      addrb(4) => cpu_1_1_ilmb_cntlr_ADDR(27),
      addrb(3) => cpu_1_1_ilmb_cntlr_ADDR(28),
      addrb(2) => cpu_1_1_ilmb_cntlr_ADDR(29),
      addrb(1) => cpu_1_1_ilmb_cntlr_ADDR(30),
      addrb(0) => cpu_1_1_ilmb_cntlr_ADDR(31),
      clka => cpu_1_1_dlmb_cntlr_CLK,
      clkb => cpu_1_1_ilmb_cntlr_CLK,
      dina(31) => cpu_1_1_dlmb_cntlr_DIN(0),
      dina(30) => cpu_1_1_dlmb_cntlr_DIN(1),
      dina(29) => cpu_1_1_dlmb_cntlr_DIN(2),
      dina(28) => cpu_1_1_dlmb_cntlr_DIN(3),
      dina(27) => cpu_1_1_dlmb_cntlr_DIN(4),
      dina(26) => cpu_1_1_dlmb_cntlr_DIN(5),
      dina(25) => cpu_1_1_dlmb_cntlr_DIN(6),
      dina(24) => cpu_1_1_dlmb_cntlr_DIN(7),
      dina(23) => cpu_1_1_dlmb_cntlr_DIN(8),
      dina(22) => cpu_1_1_dlmb_cntlr_DIN(9),
      dina(21) => cpu_1_1_dlmb_cntlr_DIN(10),
      dina(20) => cpu_1_1_dlmb_cntlr_DIN(11),
      dina(19) => cpu_1_1_dlmb_cntlr_DIN(12),
      dina(18) => cpu_1_1_dlmb_cntlr_DIN(13),
      dina(17) => cpu_1_1_dlmb_cntlr_DIN(14),
      dina(16) => cpu_1_1_dlmb_cntlr_DIN(15),
      dina(15) => cpu_1_1_dlmb_cntlr_DIN(16),
      dina(14) => cpu_1_1_dlmb_cntlr_DIN(17),
      dina(13) => cpu_1_1_dlmb_cntlr_DIN(18),
      dina(12) => cpu_1_1_dlmb_cntlr_DIN(19),
      dina(11) => cpu_1_1_dlmb_cntlr_DIN(20),
      dina(10) => cpu_1_1_dlmb_cntlr_DIN(21),
      dina(9) => cpu_1_1_dlmb_cntlr_DIN(22),
      dina(8) => cpu_1_1_dlmb_cntlr_DIN(23),
      dina(7) => cpu_1_1_dlmb_cntlr_DIN(24),
      dina(6) => cpu_1_1_dlmb_cntlr_DIN(25),
      dina(5) => cpu_1_1_dlmb_cntlr_DIN(26),
      dina(4) => cpu_1_1_dlmb_cntlr_DIN(27),
      dina(3) => cpu_1_1_dlmb_cntlr_DIN(28),
      dina(2) => cpu_1_1_dlmb_cntlr_DIN(29),
      dina(1) => cpu_1_1_dlmb_cntlr_DIN(30),
      dina(0) => cpu_1_1_dlmb_cntlr_DIN(31),
      dinb(31) => cpu_1_1_ilmb_cntlr_DIN(0),
      dinb(30) => cpu_1_1_ilmb_cntlr_DIN(1),
      dinb(29) => cpu_1_1_ilmb_cntlr_DIN(2),
      dinb(28) => cpu_1_1_ilmb_cntlr_DIN(3),
      dinb(27) => cpu_1_1_ilmb_cntlr_DIN(4),
      dinb(26) => cpu_1_1_ilmb_cntlr_DIN(5),
      dinb(25) => cpu_1_1_ilmb_cntlr_DIN(6),
      dinb(24) => cpu_1_1_ilmb_cntlr_DIN(7),
      dinb(23) => cpu_1_1_ilmb_cntlr_DIN(8),
      dinb(22) => cpu_1_1_ilmb_cntlr_DIN(9),
      dinb(21) => cpu_1_1_ilmb_cntlr_DIN(10),
      dinb(20) => cpu_1_1_ilmb_cntlr_DIN(11),
      dinb(19) => cpu_1_1_ilmb_cntlr_DIN(12),
      dinb(18) => cpu_1_1_ilmb_cntlr_DIN(13),
      dinb(17) => cpu_1_1_ilmb_cntlr_DIN(14),
      dinb(16) => cpu_1_1_ilmb_cntlr_DIN(15),
      dinb(15) => cpu_1_1_ilmb_cntlr_DIN(16),
      dinb(14) => cpu_1_1_ilmb_cntlr_DIN(17),
      dinb(13) => cpu_1_1_ilmb_cntlr_DIN(18),
      dinb(12) => cpu_1_1_ilmb_cntlr_DIN(19),
      dinb(11) => cpu_1_1_ilmb_cntlr_DIN(20),
      dinb(10) => cpu_1_1_ilmb_cntlr_DIN(21),
      dinb(9) => cpu_1_1_ilmb_cntlr_DIN(22),
      dinb(8) => cpu_1_1_ilmb_cntlr_DIN(23),
      dinb(7) => cpu_1_1_ilmb_cntlr_DIN(24),
      dinb(6) => cpu_1_1_ilmb_cntlr_DIN(25),
      dinb(5) => cpu_1_1_ilmb_cntlr_DIN(26),
      dinb(4) => cpu_1_1_ilmb_cntlr_DIN(27),
      dinb(3) => cpu_1_1_ilmb_cntlr_DIN(28),
      dinb(2) => cpu_1_1_ilmb_cntlr_DIN(29),
      dinb(1) => cpu_1_1_ilmb_cntlr_DIN(30),
      dinb(0) => cpu_1_1_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => cpu_1_1_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => cpu_1_1_ilmb_cntlr_DOUT(31 downto 0),
      ena => cpu_1_1_dlmb_cntlr_EN,
      enb => cpu_1_1_ilmb_cntlr_EN,
      rsta => cpu_1_1_dlmb_cntlr_RST,
      rstb => cpu_1_1_ilmb_cntlr_RST,
      wea(3) => cpu_1_1_dlmb_cntlr_WE(0),
      wea(2) => cpu_1_1_dlmb_cntlr_WE(1),
      wea(1) => cpu_1_1_dlmb_cntlr_WE(2),
      wea(0) => cpu_1_1_dlmb_cntlr_WE(3),
      web(3) => cpu_1_1_ilmb_cntlr_WE(0),
      web(2) => cpu_1_1_ilmb_cntlr_WE(1),
      web(1) => cpu_1_1_ilmb_cntlr_WE(2),
      web(0) => cpu_1_1_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_1_1_x_local_memory_imp_1FCJ9OX is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end cpu_1_1_x_local_memory_imp_1FCJ9OX;

architecture STRUCTURE of cpu_1_1_x_local_memory_imp_1FCJ9OX is
  component BD_dlmb_v10_5 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_dlmb_v10_5;
  component BD_ilmb_v10_5 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component BD_ilmb_v10_5;
  component BD_dlmb_bram_if_cntlr_5 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_dlmb_bram_if_cntlr_5;
  component BD_ilmb_bram_if_cntlr_5 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component BD_ilmb_bram_if_cntlr_5;
  component BD_lmb_bram_5 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component BD_lmb_bram_5;
  signal SYS_Rst_1 : STD_LOGIC;
  signal cpu_1_1_x_Clk : STD_LOGIC;
  signal cpu_1_1_x_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_dlmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_1_x_dlmb_CE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_dlmb_READSTROBE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_READY : STD_LOGIC;
  signal cpu_1_1_x_dlmb_UE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_WAIT : STD_LOGIC;
  signal cpu_1_1_x_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_dlmb_WRITESTROBE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_1_x_dlmb_bus_CE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_dlmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_bus_READY : STD_LOGIC;
  signal cpu_1_1_x_dlmb_bus_UE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_bus_WAIT : STD_LOGIC;
  signal cpu_1_1_x_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_dlmb_cntlr_CLK : STD_LOGIC;
  signal cpu_1_1_x_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_x_dlmb_cntlr_EN : STD_LOGIC;
  signal cpu_1_1_x_dlmb_cntlr_RST : STD_LOGIC;
  signal cpu_1_1_x_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_1_x_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_ilmb_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_CE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_ilmb_READSTROBE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_READY : STD_LOGIC;
  signal cpu_1_1_x_ilmb_UE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_WAIT : STD_LOGIC;
  signal cpu_1_1_x_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_1_x_ilmb_bus_CE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_ilmb_bus_READSTROBE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_bus_READY : STD_LOGIC;
  signal cpu_1_1_x_ilmb_bus_UE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_bus_WAIT : STD_LOGIC;
  signal cpu_1_1_x_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_ilmb_cntlr_CLK : STD_LOGIC;
  signal cpu_1_1_x_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_x_ilmb_cntlr_EN : STD_LOGIC;
  signal cpu_1_1_x_ilmb_cntlr_RST : STD_LOGIC;
  signal cpu_1_1_x_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > BD cpu_1_1_x_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
  DLMB_ce <= cpu_1_1_x_dlmb_CE;
  DLMB_readdbus(0 to 31) <= cpu_1_1_x_dlmb_READDBUS(0 to 31);
  DLMB_ready <= cpu_1_1_x_dlmb_READY;
  DLMB_ue <= cpu_1_1_x_dlmb_UE;
  DLMB_wait <= cpu_1_1_x_dlmb_WAIT;
  ILMB_ce <= cpu_1_1_x_ilmb_CE;
  ILMB_readdbus(0 to 31) <= cpu_1_1_x_ilmb_READDBUS(0 to 31);
  ILMB_ready <= cpu_1_1_x_ilmb_READY;
  ILMB_ue <= cpu_1_1_x_ilmb_UE;
  ILMB_wait <= cpu_1_1_x_ilmb_WAIT;
  SYS_Rst_1 <= SYS_Rst;
  cpu_1_1_x_Clk <= LMB_Clk;
  cpu_1_1_x_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  cpu_1_1_x_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  cpu_1_1_x_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  cpu_1_1_x_dlmb_READSTROBE <= DLMB_readstrobe;
  cpu_1_1_x_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  cpu_1_1_x_dlmb_WRITESTROBE <= DLMB_writestrobe;
  cpu_1_1_x_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  cpu_1_1_x_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  cpu_1_1_x_ilmb_READSTROBE <= ILMB_readstrobe;
dlmb_bram_if_cntlr: component BD_dlmb_bram_if_cntlr_5
     port map (
      BRAM_Addr_A(0 to 31) => cpu_1_1_x_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_1_1_x_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_1_1_x_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_1_1_x_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_1_1_x_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_1_1_x_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_1_1_x_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_1_1_x_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_1_1_x_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_1_1_x_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_1_1_x_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_1_1_x_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_1_1_x_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_1_1_x_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_1_1_x_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_1_1_x_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_1_1_x_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_1_1_x_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_1_1_x_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_1_1_x_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_1_1_x_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_1_1_x_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_1_1_x_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_1_1_x_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_1_1_x_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_1_1_x_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_1_1_x_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_1_1_x_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_1_1_x_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_1_1_x_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_1_1_x_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_1_1_x_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_1_1_x_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_1_1_x_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_1_1_x_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_1_1_x_dlmb_cntlr_EN,
      BRAM_Rst_A => cpu_1_1_x_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_1_1_x_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_1_1_x_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_1_x_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_1_x_dlmb_bus_BE(0 to 3),
      LMB_Clk => cpu_1_1_x_Clk,
      LMB_ReadStrobe => cpu_1_1_x_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_1_1_x_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_1_x_dlmb_bus_WRITESTROBE,
      Sl_CE => cpu_1_1_x_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_1_x_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_1_1_x_dlmb_bus_READY,
      Sl_UE => cpu_1_1_x_dlmb_bus_UE,
      Sl_Wait => cpu_1_1_x_dlmb_bus_WAIT
    );
dlmb_v10: component BD_dlmb_v10_5
     port map (
      LMB_ABus(0 to 31) => cpu_1_1_x_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_1_x_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_1_x_dlmb_bus_BE(0 to 3),
      LMB_CE => cpu_1_1_x_dlmb_CE,
      LMB_Clk => cpu_1_1_x_Clk,
      LMB_ReadDBus(0 to 31) => cpu_1_1_x_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_1_1_x_dlmb_bus_READSTROBE,
      LMB_Ready => cpu_1_1_x_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_1_1_x_dlmb_UE,
      LMB_Wait => cpu_1_1_x_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_1_1_x_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_1_x_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_1_1_x_dlmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_1_1_x_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => cpu_1_1_x_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => cpu_1_1_x_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => cpu_1_1_x_dlmb_READSTROBE,
      M_WriteStrobe => cpu_1_1_x_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_1_1_x_dlmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_1_x_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_1_1_x_dlmb_bus_READY,
      Sl_UE(0) => cpu_1_1_x_dlmb_bus_UE,
      Sl_Wait(0) => cpu_1_1_x_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component BD_ilmb_bram_if_cntlr_5
     port map (
      BRAM_Addr_A(0 to 31) => cpu_1_1_x_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => cpu_1_1_x_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => cpu_1_1_x_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => cpu_1_1_x_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => cpu_1_1_x_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => cpu_1_1_x_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => cpu_1_1_x_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => cpu_1_1_x_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => cpu_1_1_x_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => cpu_1_1_x_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => cpu_1_1_x_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => cpu_1_1_x_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => cpu_1_1_x_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => cpu_1_1_x_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => cpu_1_1_x_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => cpu_1_1_x_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => cpu_1_1_x_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => cpu_1_1_x_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => cpu_1_1_x_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => cpu_1_1_x_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => cpu_1_1_x_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => cpu_1_1_x_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => cpu_1_1_x_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => cpu_1_1_x_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => cpu_1_1_x_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => cpu_1_1_x_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => cpu_1_1_x_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => cpu_1_1_x_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => cpu_1_1_x_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => cpu_1_1_x_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => cpu_1_1_x_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => cpu_1_1_x_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => cpu_1_1_x_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => cpu_1_1_x_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => cpu_1_1_x_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => cpu_1_1_x_ilmb_cntlr_EN,
      BRAM_Rst_A => cpu_1_1_x_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => cpu_1_1_x_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => cpu_1_1_x_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_1_x_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_1_x_ilmb_bus_BE(0 to 3),
      LMB_Clk => cpu_1_1_x_Clk,
      LMB_ReadStrobe => cpu_1_1_x_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => cpu_1_1_x_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_1_x_ilmb_bus_WRITESTROBE,
      Sl_CE => cpu_1_1_x_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_1_x_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => cpu_1_1_x_ilmb_bus_READY,
      Sl_UE => cpu_1_1_x_ilmb_bus_UE,
      Sl_Wait => cpu_1_1_x_ilmb_bus_WAIT
    );
ilmb_v10: component BD_ilmb_v10_5
     port map (
      LMB_ABus(0 to 31) => cpu_1_1_x_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => cpu_1_1_x_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => cpu_1_1_x_ilmb_bus_BE(0 to 3),
      LMB_CE => cpu_1_1_x_ilmb_CE,
      LMB_Clk => cpu_1_1_x_Clk,
      LMB_ReadDBus(0 to 31) => cpu_1_1_x_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => cpu_1_1_x_ilmb_bus_READSTROBE,
      LMB_Ready => cpu_1_1_x_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => cpu_1_1_x_ilmb_UE,
      LMB_Wait => cpu_1_1_x_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => cpu_1_1_x_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => cpu_1_1_x_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => cpu_1_1_x_ilmb_ABUS(0 to 31),
      M_AddrStrobe => cpu_1_1_x_ilmb_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => cpu_1_1_x_ilmb_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => cpu_1_1_x_ilmb_bus_CE,
      Sl_DBus(0 to 31) => cpu_1_1_x_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => cpu_1_1_x_ilmb_bus_READY,
      Sl_UE(0) => cpu_1_1_x_ilmb_bus_UE,
      Sl_Wait(0) => cpu_1_1_x_ilmb_bus_WAIT
    );
lmb_bram: component BD_lmb_bram_5
     port map (
      addra(31) => cpu_1_1_x_dlmb_cntlr_ADDR(0),
      addra(30) => cpu_1_1_x_dlmb_cntlr_ADDR(1),
      addra(29) => cpu_1_1_x_dlmb_cntlr_ADDR(2),
      addra(28) => cpu_1_1_x_dlmb_cntlr_ADDR(3),
      addra(27) => cpu_1_1_x_dlmb_cntlr_ADDR(4),
      addra(26) => cpu_1_1_x_dlmb_cntlr_ADDR(5),
      addra(25) => cpu_1_1_x_dlmb_cntlr_ADDR(6),
      addra(24) => cpu_1_1_x_dlmb_cntlr_ADDR(7),
      addra(23) => cpu_1_1_x_dlmb_cntlr_ADDR(8),
      addra(22) => cpu_1_1_x_dlmb_cntlr_ADDR(9),
      addra(21) => cpu_1_1_x_dlmb_cntlr_ADDR(10),
      addra(20) => cpu_1_1_x_dlmb_cntlr_ADDR(11),
      addra(19) => cpu_1_1_x_dlmb_cntlr_ADDR(12),
      addra(18) => cpu_1_1_x_dlmb_cntlr_ADDR(13),
      addra(17) => cpu_1_1_x_dlmb_cntlr_ADDR(14),
      addra(16) => cpu_1_1_x_dlmb_cntlr_ADDR(15),
      addra(15) => cpu_1_1_x_dlmb_cntlr_ADDR(16),
      addra(14) => cpu_1_1_x_dlmb_cntlr_ADDR(17),
      addra(13) => cpu_1_1_x_dlmb_cntlr_ADDR(18),
      addra(12) => cpu_1_1_x_dlmb_cntlr_ADDR(19),
      addra(11) => cpu_1_1_x_dlmb_cntlr_ADDR(20),
      addra(10) => cpu_1_1_x_dlmb_cntlr_ADDR(21),
      addra(9) => cpu_1_1_x_dlmb_cntlr_ADDR(22),
      addra(8) => cpu_1_1_x_dlmb_cntlr_ADDR(23),
      addra(7) => cpu_1_1_x_dlmb_cntlr_ADDR(24),
      addra(6) => cpu_1_1_x_dlmb_cntlr_ADDR(25),
      addra(5) => cpu_1_1_x_dlmb_cntlr_ADDR(26),
      addra(4) => cpu_1_1_x_dlmb_cntlr_ADDR(27),
      addra(3) => cpu_1_1_x_dlmb_cntlr_ADDR(28),
      addra(2) => cpu_1_1_x_dlmb_cntlr_ADDR(29),
      addra(1) => cpu_1_1_x_dlmb_cntlr_ADDR(30),
      addra(0) => cpu_1_1_x_dlmb_cntlr_ADDR(31),
      addrb(31) => cpu_1_1_x_ilmb_cntlr_ADDR(0),
      addrb(30) => cpu_1_1_x_ilmb_cntlr_ADDR(1),
      addrb(29) => cpu_1_1_x_ilmb_cntlr_ADDR(2),
      addrb(28) => cpu_1_1_x_ilmb_cntlr_ADDR(3),
      addrb(27) => cpu_1_1_x_ilmb_cntlr_ADDR(4),
      addrb(26) => cpu_1_1_x_ilmb_cntlr_ADDR(5),
      addrb(25) => cpu_1_1_x_ilmb_cntlr_ADDR(6),
      addrb(24) => cpu_1_1_x_ilmb_cntlr_ADDR(7),
      addrb(23) => cpu_1_1_x_ilmb_cntlr_ADDR(8),
      addrb(22) => cpu_1_1_x_ilmb_cntlr_ADDR(9),
      addrb(21) => cpu_1_1_x_ilmb_cntlr_ADDR(10),
      addrb(20) => cpu_1_1_x_ilmb_cntlr_ADDR(11),
      addrb(19) => cpu_1_1_x_ilmb_cntlr_ADDR(12),
      addrb(18) => cpu_1_1_x_ilmb_cntlr_ADDR(13),
      addrb(17) => cpu_1_1_x_ilmb_cntlr_ADDR(14),
      addrb(16) => cpu_1_1_x_ilmb_cntlr_ADDR(15),
      addrb(15) => cpu_1_1_x_ilmb_cntlr_ADDR(16),
      addrb(14) => cpu_1_1_x_ilmb_cntlr_ADDR(17),
      addrb(13) => cpu_1_1_x_ilmb_cntlr_ADDR(18),
      addrb(12) => cpu_1_1_x_ilmb_cntlr_ADDR(19),
      addrb(11) => cpu_1_1_x_ilmb_cntlr_ADDR(20),
      addrb(10) => cpu_1_1_x_ilmb_cntlr_ADDR(21),
      addrb(9) => cpu_1_1_x_ilmb_cntlr_ADDR(22),
      addrb(8) => cpu_1_1_x_ilmb_cntlr_ADDR(23),
      addrb(7) => cpu_1_1_x_ilmb_cntlr_ADDR(24),
      addrb(6) => cpu_1_1_x_ilmb_cntlr_ADDR(25),
      addrb(5) => cpu_1_1_x_ilmb_cntlr_ADDR(26),
      addrb(4) => cpu_1_1_x_ilmb_cntlr_ADDR(27),
      addrb(3) => cpu_1_1_x_ilmb_cntlr_ADDR(28),
      addrb(2) => cpu_1_1_x_ilmb_cntlr_ADDR(29),
      addrb(1) => cpu_1_1_x_ilmb_cntlr_ADDR(30),
      addrb(0) => cpu_1_1_x_ilmb_cntlr_ADDR(31),
      clka => cpu_1_1_x_dlmb_cntlr_CLK,
      clkb => cpu_1_1_x_ilmb_cntlr_CLK,
      dina(31) => cpu_1_1_x_dlmb_cntlr_DIN(0),
      dina(30) => cpu_1_1_x_dlmb_cntlr_DIN(1),
      dina(29) => cpu_1_1_x_dlmb_cntlr_DIN(2),
      dina(28) => cpu_1_1_x_dlmb_cntlr_DIN(3),
      dina(27) => cpu_1_1_x_dlmb_cntlr_DIN(4),
      dina(26) => cpu_1_1_x_dlmb_cntlr_DIN(5),
      dina(25) => cpu_1_1_x_dlmb_cntlr_DIN(6),
      dina(24) => cpu_1_1_x_dlmb_cntlr_DIN(7),
      dina(23) => cpu_1_1_x_dlmb_cntlr_DIN(8),
      dina(22) => cpu_1_1_x_dlmb_cntlr_DIN(9),
      dina(21) => cpu_1_1_x_dlmb_cntlr_DIN(10),
      dina(20) => cpu_1_1_x_dlmb_cntlr_DIN(11),
      dina(19) => cpu_1_1_x_dlmb_cntlr_DIN(12),
      dina(18) => cpu_1_1_x_dlmb_cntlr_DIN(13),
      dina(17) => cpu_1_1_x_dlmb_cntlr_DIN(14),
      dina(16) => cpu_1_1_x_dlmb_cntlr_DIN(15),
      dina(15) => cpu_1_1_x_dlmb_cntlr_DIN(16),
      dina(14) => cpu_1_1_x_dlmb_cntlr_DIN(17),
      dina(13) => cpu_1_1_x_dlmb_cntlr_DIN(18),
      dina(12) => cpu_1_1_x_dlmb_cntlr_DIN(19),
      dina(11) => cpu_1_1_x_dlmb_cntlr_DIN(20),
      dina(10) => cpu_1_1_x_dlmb_cntlr_DIN(21),
      dina(9) => cpu_1_1_x_dlmb_cntlr_DIN(22),
      dina(8) => cpu_1_1_x_dlmb_cntlr_DIN(23),
      dina(7) => cpu_1_1_x_dlmb_cntlr_DIN(24),
      dina(6) => cpu_1_1_x_dlmb_cntlr_DIN(25),
      dina(5) => cpu_1_1_x_dlmb_cntlr_DIN(26),
      dina(4) => cpu_1_1_x_dlmb_cntlr_DIN(27),
      dina(3) => cpu_1_1_x_dlmb_cntlr_DIN(28),
      dina(2) => cpu_1_1_x_dlmb_cntlr_DIN(29),
      dina(1) => cpu_1_1_x_dlmb_cntlr_DIN(30),
      dina(0) => cpu_1_1_x_dlmb_cntlr_DIN(31),
      dinb(31) => cpu_1_1_x_ilmb_cntlr_DIN(0),
      dinb(30) => cpu_1_1_x_ilmb_cntlr_DIN(1),
      dinb(29) => cpu_1_1_x_ilmb_cntlr_DIN(2),
      dinb(28) => cpu_1_1_x_ilmb_cntlr_DIN(3),
      dinb(27) => cpu_1_1_x_ilmb_cntlr_DIN(4),
      dinb(26) => cpu_1_1_x_ilmb_cntlr_DIN(5),
      dinb(25) => cpu_1_1_x_ilmb_cntlr_DIN(6),
      dinb(24) => cpu_1_1_x_ilmb_cntlr_DIN(7),
      dinb(23) => cpu_1_1_x_ilmb_cntlr_DIN(8),
      dinb(22) => cpu_1_1_x_ilmb_cntlr_DIN(9),
      dinb(21) => cpu_1_1_x_ilmb_cntlr_DIN(10),
      dinb(20) => cpu_1_1_x_ilmb_cntlr_DIN(11),
      dinb(19) => cpu_1_1_x_ilmb_cntlr_DIN(12),
      dinb(18) => cpu_1_1_x_ilmb_cntlr_DIN(13),
      dinb(17) => cpu_1_1_x_ilmb_cntlr_DIN(14),
      dinb(16) => cpu_1_1_x_ilmb_cntlr_DIN(15),
      dinb(15) => cpu_1_1_x_ilmb_cntlr_DIN(16),
      dinb(14) => cpu_1_1_x_ilmb_cntlr_DIN(17),
      dinb(13) => cpu_1_1_x_ilmb_cntlr_DIN(18),
      dinb(12) => cpu_1_1_x_ilmb_cntlr_DIN(19),
      dinb(11) => cpu_1_1_x_ilmb_cntlr_DIN(20),
      dinb(10) => cpu_1_1_x_ilmb_cntlr_DIN(21),
      dinb(9) => cpu_1_1_x_ilmb_cntlr_DIN(22),
      dinb(8) => cpu_1_1_x_ilmb_cntlr_DIN(23),
      dinb(7) => cpu_1_1_x_ilmb_cntlr_DIN(24),
      dinb(6) => cpu_1_1_x_ilmb_cntlr_DIN(25),
      dinb(5) => cpu_1_1_x_ilmb_cntlr_DIN(26),
      dinb(4) => cpu_1_1_x_ilmb_cntlr_DIN(27),
      dinb(3) => cpu_1_1_x_ilmb_cntlr_DIN(28),
      dinb(2) => cpu_1_1_x_ilmb_cntlr_DIN(29),
      dinb(1) => cpu_1_1_x_ilmb_cntlr_DIN(30),
      dinb(0) => cpu_1_1_x_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => cpu_1_1_x_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => cpu_1_1_x_ilmb_cntlr_DOUT(31 downto 0),
      ena => cpu_1_1_x_dlmb_cntlr_EN,
      enb => cpu_1_1_x_ilmb_cntlr_EN,
      rsta => cpu_1_1_x_dlmb_cntlr_RST,
      rstb => cpu_1_1_x_ilmb_cntlr_RST,
      wea(3) => cpu_1_1_x_dlmb_cntlr_WE(0),
      wea(2) => cpu_1_1_x_dlmb_cntlr_WE(1),
      wea(1) => cpu_1_1_x_dlmb_cntlr_WE(2),
      wea(0) => cpu_1_1_x_dlmb_cntlr_WE(3),
      web(3) => cpu_1_1_x_ilmb_cntlr_WE(0),
      web(2) => cpu_1_1_x_ilmb_cntlr_WE(1),
      web(1) => cpu_1_1_x_ilmb_cntlr_WE(2),
      web(0) => cpu_1_1_x_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1349HKX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1349HKX;

architecture STRUCTURE of m00_couplers_imp_1349HKX is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1QTU1VK is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1QTU1VK;

architecture STRUCTURE of m00_couplers_imp_1QTU1VK is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1UL4D45 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1UL4D45;

architecture STRUCTURE of m00_couplers_imp_1UL4D45 is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_ZX7HUS is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_ZX7HUS;

architecture STRUCTURE of m00_couplers_imp_ZX7HUS is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_6H7QY6 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_6H7QY6;

architecture STRUCTURE of m01_couplers_imp_6H7QY6 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_7FXK5N is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_7FXK5N;

architecture STRUCTURE of m01_couplers_imp_7FXK5N is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_WAE3NU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_WAE3NU;

architecture STRUCTURE of m01_couplers_imp_WAE3NU is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_XSY6PB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_XSY6PB;

architecture STRUCTURE of m01_couplers_imp_XSY6PB is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_11GIKA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_11GIKA;

architecture STRUCTURE of m02_couplers_imp_11GIKA is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_3YSQSF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_3YSQSF;

architecture STRUCTURE of m02_couplers_imp_3YSQSF is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_QUPRZ2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_QUPRZ2;

architecture STRUCTURE of m02_couplers_imp_QUPRZ2 is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_UBQNQZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_UBQNQZ;

architecture STRUCTURE of m02_couplers_imp_UBQNQZ is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_9DY0ML is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_9DY0ML;

architecture STRUCTURE of s00_couplers_imp_9DY0ML is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_CB7GLK is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_CB7GLK;

architecture STRUCTURE of s00_couplers_imp_CB7GLK is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_IJHI89 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_IJHI89;

architecture STRUCTURE of s00_couplers_imp_IJHI89 is
  component BD_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component BD_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component BD_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_M0L818 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_M0L818;

architecture STRUCTURE of s00_couplers_imp_M0L818 is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1F1R6HZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s01_couplers_imp_1F1R6HZ;

architecture STRUCTURE of s01_couplers_imp_1F1R6HZ is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s01_couplers_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s01_couplers_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s01_couplers_to_s01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s01_couplers_to_s01_couplers_AWVALID(0);
  M_AXI_bready(0) <= s01_couplers_to_s01_couplers_BREADY(0);
  M_AXI_rready(0) <= s01_couplers_to_s01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s01_couplers_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s01_couplers_to_s01_couplers_WVALID(0);
  S_AXI_arready(0) <= s01_couplers_to_s01_couplers_ARREADY(0);
  S_AXI_awready(0) <= s01_couplers_to_s01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s01_couplers_to_s01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s01_couplers_to_s01_couplers_RVALID(0);
  S_AXI_wready(0) <= s01_couplers_to_s01_couplers_WREADY(0);
  s01_couplers_to_s01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_couplers_ARREADY(0) <= M_AXI_arready(0);
  s01_couplers_to_s01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWREADY(0) <= M_AXI_awready(0);
  s01_couplers_to_s01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s01_couplers_to_s01_couplers_BREADY(0) <= S_AXI_bready(0);
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s01_couplers_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s01_couplers_to_s01_couplers_RREADY(0) <= S_AXI_rready(0);
  s01_couplers_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s01_couplers_to_s01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s01_couplers_to_s01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_couplers_WREADY(0) <= M_AXI_wready(0);
  s01_couplers_to_s01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1FQACOY is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_1FQACOY;

architecture STRUCTURE of s01_couplers_imp_1FQACOY is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s01_couplers_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s01_couplers_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= s01_couplers_to_s01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= s01_couplers_to_s01_couplers_AWVALID;
  M_AXI_bready <= s01_couplers_to_s01_couplers_BREADY;
  M_AXI_rready <= s01_couplers_to_s01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s01_couplers_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s01_couplers_to_s01_couplers_WVALID;
  S_AXI_arready <= s01_couplers_to_s01_couplers_ARREADY;
  S_AXI_awready <= s01_couplers_to_s01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_s01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_s01_couplers_RVALID;
  S_AXI_wready <= s01_couplers_to_s01_couplers_WREADY;
  s01_couplers_to_s01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_couplers_ARREADY <= M_AXI_arready;
  s01_couplers_to_s01_couplers_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWREADY <= M_AXI_awready;
  s01_couplers_to_s01_couplers_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_s01_couplers_BREADY <= S_AXI_bready;
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID <= M_AXI_bvalid;
  s01_couplers_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s01_couplers_to_s01_couplers_RREADY <= S_AXI_rready;
  s01_couplers_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s01_couplers_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_s01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_s01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1N3GLFN is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_1N3GLFN;

architecture STRUCTURE of s01_couplers_imp_1N3GLFN is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s01_couplers_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s01_couplers_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= s01_couplers_to_s01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= s01_couplers_to_s01_couplers_AWVALID;
  M_AXI_bready <= s01_couplers_to_s01_couplers_BREADY;
  M_AXI_rready <= s01_couplers_to_s01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s01_couplers_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s01_couplers_to_s01_couplers_WVALID;
  S_AXI_arready <= s01_couplers_to_s01_couplers_ARREADY;
  S_AXI_awready <= s01_couplers_to_s01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_s01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_s01_couplers_RVALID;
  S_AXI_wready <= s01_couplers_to_s01_couplers_WREADY;
  s01_couplers_to_s01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_couplers_ARREADY <= M_AXI_arready;
  s01_couplers_to_s01_couplers_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWREADY <= M_AXI_awready;
  s01_couplers_to_s01_couplers_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_s01_couplers_BREADY <= S_AXI_bready;
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID <= M_AXI_bvalid;
  s01_couplers_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s01_couplers_to_s01_couplers_RREADY <= S_AXI_rready;
  s01_couplers_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s01_couplers_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_s01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_s01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_cpu_0_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end BD_cpu_0_0_axi_periph_0;

architecture STRUCTURE of BD_cpu_0_0_axi_periph_0 is
  component BD_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component BD_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal cpu_0_0_axi_periph_ACLK_net : STD_LOGIC;
  signal cpu_0_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal cpu_0_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_cpu_0_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_cpu_0_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_cpu_0_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_cpu_0_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_cpu_0_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_cpu_0_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_cpu_0_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_cpu_0_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_cpu_0_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_cpu_0_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_cpu_0_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_cpu_0_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_cpu_0_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_cpu_0_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_cpu_0_0_axi_periph_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_cpu_0_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_cpu_0_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_cpu_0_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_cpu_0_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_cpu_0_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_cpu_0_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_cpu_0_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_cpu_0_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_cpu_0_0_axi_periph_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_cpu_0_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_cpu_0_0_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_cpu_0_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_cpu_0_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_cpu_0_0_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_cpu_0_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_cpu_0_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_cpu_0_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_cpu_0_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_cpu_0_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_cpu_0_0_axi_periph_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= cpu_0_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= cpu_0_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= cpu_0_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= cpu_0_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= cpu_0_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= cpu_0_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= cpu_0_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= cpu_0_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= cpu_0_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= cpu_0_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= cpu_0_0_axi_periph_to_s00_couplers_WREADY;
  cpu_0_0_axi_periph_ACLK_net <= ACLK;
  cpu_0_0_axi_periph_ARESETN_net <= ARESETN;
  cpu_0_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  cpu_0_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  cpu_0_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  cpu_0_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  cpu_0_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  cpu_0_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  cpu_0_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_cpu_0_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_cpu_0_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_cpu_0_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_cpu_0_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_cpu_0_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_cpu_0_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_cpu_0_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_cpu_0_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_cpu_0_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_cpu_0_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_cpu_0_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_cpu_0_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_cpu_0_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_cpu_0_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_cpu_0_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_cpu_0_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_cpu_0_0_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_cpu_0_0_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_cpu_0_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_cpu_0_0_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_cpu_0_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_cpu_0_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_cpu_0_0_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_cpu_0_0_axi_periph_WREADY(0) <= M02_AXI_wready(0);
m00_couplers: entity work.m00_couplers_imp_1UL4D45
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_cpu_0_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_cpu_0_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m00_couplers_to_cpu_0_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_cpu_0_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_cpu_0_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_cpu_0_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m00_couplers_to_cpu_0_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_cpu_0_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_cpu_0_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_cpu_0_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_cpu_0_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_cpu_0_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_cpu_0_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_cpu_0_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_cpu_0_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_cpu_0_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_cpu_0_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_cpu_0_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_cpu_0_0_axi_periph_WVALID(0),
      S_ACLK => cpu_0_0_axi_periph_ACLK_net,
      S_ARESETN => cpu_0_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_WAE3NU
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_cpu_0_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_cpu_0_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_cpu_0_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_cpu_0_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_cpu_0_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_cpu_0_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_cpu_0_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_cpu_0_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_cpu_0_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_cpu_0_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_cpu_0_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_cpu_0_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_cpu_0_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_cpu_0_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_cpu_0_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_cpu_0_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_cpu_0_0_axi_periph_WVALID(0),
      S_ACLK => cpu_0_0_axi_periph_ACLK_net,
      S_ARESETN => cpu_0_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_11GIKA
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_cpu_0_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_cpu_0_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m02_couplers_to_cpu_0_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_cpu_0_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_cpu_0_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_cpu_0_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m02_couplers_to_cpu_0_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_cpu_0_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_cpu_0_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_cpu_0_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_cpu_0_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_cpu_0_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_cpu_0_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_cpu_0_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_cpu_0_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_cpu_0_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_cpu_0_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_cpu_0_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_cpu_0_0_axi_periph_WVALID(0),
      S_ACLK => cpu_0_0_axi_periph_ACLK_net,
      S_ARESETN => cpu_0_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_IJHI89
     port map (
      M_ACLK => cpu_0_0_axi_periph_ACLK_net,
      M_ARESETN => cpu_0_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => cpu_0_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => cpu_0_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => cpu_0_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => cpu_0_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => cpu_0_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => cpu_0_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => cpu_0_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => cpu_0_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => cpu_0_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => cpu_0_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => cpu_0_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => cpu_0_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => cpu_0_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component BD_xbar_0
     port map (
      aclk => cpu_0_0_axi_periph_ACLK_net,
      aresetn => cpu_0_0_axi_periph_ARESETN_net,
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_cpu_0_1_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end BD_cpu_0_1_axi_periph_0;

architecture STRUCTURE of BD_cpu_0_1_axi_periph_0 is
  component BD_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component BD_xbar_1;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal cpu_0_1_axi_periph_ACLK_net : STD_LOGIC;
  signal cpu_0_1_axi_periph_ARESETN_net : STD_LOGIC;
  signal cpu_0_1_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_1_axi_periph_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_1_axi_periph_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_cpu_0_1_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_cpu_0_1_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_cpu_0_1_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_cpu_0_1_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_cpu_0_1_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_cpu_0_1_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_cpu_0_1_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_cpu_0_1_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_cpu_0_1_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_cpu_0_1_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_cpu_0_1_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_cpu_0_1_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_cpu_0_1_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_cpu_0_1_axi_periph_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_cpu_0_1_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_cpu_0_1_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_cpu_0_1_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_cpu_0_1_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_cpu_0_1_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_cpu_0_1_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_cpu_0_1_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_cpu_0_1_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_cpu_0_1_axi_periph_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_cpu_0_1_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_cpu_0_1_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_cpu_0_1_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_cpu_0_1_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_cpu_0_1_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_cpu_0_1_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_cpu_0_1_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_cpu_0_1_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_cpu_0_1_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_cpu_0_1_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_cpu_0_1_axi_periph_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready(0) <= cpu_0_1_axi_periph_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= cpu_0_1_axi_periph_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= cpu_0_1_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= cpu_0_1_axi_periph_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= cpu_0_1_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= cpu_0_1_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= cpu_0_1_axi_periph_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= cpu_0_1_axi_periph_to_s00_couplers_WREADY(0);
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready(0) <= cpu_0_1_axi_periph_to_s01_couplers_ARREADY(0);
  S01_AXI_awready(0) <= cpu_0_1_axi_periph_to_s01_couplers_AWREADY(0);
  S01_AXI_bresp(1 downto 0) <= cpu_0_1_axi_periph_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid(0) <= cpu_0_1_axi_periph_to_s01_couplers_BVALID(0);
  S01_AXI_rdata(31 downto 0) <= cpu_0_1_axi_periph_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rresp(1 downto 0) <= cpu_0_1_axi_periph_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid(0) <= cpu_0_1_axi_periph_to_s01_couplers_RVALID(0);
  S01_AXI_wready(0) <= cpu_0_1_axi_periph_to_s01_couplers_WREADY(0);
  cpu_0_1_axi_periph_ACLK_net <= ACLK;
  cpu_0_1_axi_periph_ARESETN_net <= ARESETN;
  cpu_0_1_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  cpu_0_1_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  cpu_0_1_axi_periph_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  cpu_0_1_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  cpu_0_1_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  cpu_0_1_axi_periph_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  cpu_0_1_axi_periph_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  cpu_0_1_axi_periph_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  cpu_0_1_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  cpu_0_1_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  cpu_0_1_axi_periph_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  cpu_0_1_axi_periph_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  cpu_0_1_axi_periph_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  cpu_0_1_axi_periph_to_s01_couplers_ARVALID(0) <= S01_AXI_arvalid(0);
  cpu_0_1_axi_periph_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  cpu_0_1_axi_periph_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  cpu_0_1_axi_periph_to_s01_couplers_AWVALID(0) <= S01_AXI_awvalid(0);
  cpu_0_1_axi_periph_to_s01_couplers_BREADY(0) <= S01_AXI_bready(0);
  cpu_0_1_axi_periph_to_s01_couplers_RREADY(0) <= S01_AXI_rready(0);
  cpu_0_1_axi_periph_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  cpu_0_1_axi_periph_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  cpu_0_1_axi_periph_to_s01_couplers_WVALID(0) <= S01_AXI_wvalid(0);
  m00_couplers_to_cpu_0_1_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_cpu_0_1_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_cpu_0_1_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_cpu_0_1_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_cpu_0_1_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_cpu_0_1_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_cpu_0_1_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_cpu_0_1_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_cpu_0_1_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_cpu_0_1_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_cpu_0_1_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_cpu_0_1_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_cpu_0_1_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_cpu_0_1_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_cpu_0_1_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_cpu_0_1_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_cpu_0_1_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_cpu_0_1_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_cpu_0_1_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_cpu_0_1_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_cpu_0_1_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_cpu_0_1_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_cpu_0_1_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_cpu_0_1_axi_periph_WREADY(0) <= M02_AXI_wready(0);
m00_couplers: entity work.m00_couplers_imp_ZX7HUS
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_cpu_0_1_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_cpu_0_1_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m00_couplers_to_cpu_0_1_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_cpu_0_1_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_cpu_0_1_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_cpu_0_1_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m00_couplers_to_cpu_0_1_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_cpu_0_1_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_cpu_0_1_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_cpu_0_1_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_cpu_0_1_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_cpu_0_1_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_cpu_0_1_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_cpu_0_1_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_cpu_0_1_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_cpu_0_1_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_cpu_0_1_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_cpu_0_1_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_cpu_0_1_axi_periph_WVALID(0),
      S_ACLK => cpu_0_1_axi_periph_ACLK_net,
      S_ARESETN => cpu_0_1_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_7FXK5N
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_cpu_0_1_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_cpu_0_1_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_cpu_0_1_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_cpu_0_1_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_cpu_0_1_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_cpu_0_1_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_cpu_0_1_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_cpu_0_1_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_cpu_0_1_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_cpu_0_1_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_cpu_0_1_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_cpu_0_1_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_cpu_0_1_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_cpu_0_1_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_cpu_0_1_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_cpu_0_1_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_cpu_0_1_axi_periph_WVALID(0),
      S_ACLK => cpu_0_1_axi_periph_ACLK_net,
      S_ARESETN => cpu_0_1_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_UBQNQZ
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_cpu_0_1_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_cpu_0_1_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m02_couplers_to_cpu_0_1_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_cpu_0_1_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_cpu_0_1_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_cpu_0_1_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m02_couplers_to_cpu_0_1_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_cpu_0_1_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_cpu_0_1_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_cpu_0_1_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_cpu_0_1_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_cpu_0_1_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_cpu_0_1_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_cpu_0_1_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_cpu_0_1_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_cpu_0_1_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_cpu_0_1_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_cpu_0_1_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_cpu_0_1_axi_periph_WVALID(0),
      S_ACLK => cpu_0_1_axi_periph_ACLK_net,
      S_ARESETN => cpu_0_1_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_CB7GLK
     port map (
      M_ACLK => cpu_0_1_axi_periph_ACLK_net,
      M_ARESETN => cpu_0_1_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => cpu_0_1_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => cpu_0_1_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => cpu_0_1_axi_periph_to_s00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => cpu_0_1_axi_periph_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => cpu_0_1_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => cpu_0_1_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => cpu_0_1_axi_periph_to_s00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => cpu_0_1_axi_periph_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => cpu_0_1_axi_periph_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => cpu_0_1_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => cpu_0_1_axi_periph_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => cpu_0_1_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => cpu_0_1_axi_periph_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => cpu_0_1_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => cpu_0_1_axi_periph_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => cpu_0_1_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => cpu_0_1_axi_periph_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => cpu_0_1_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => cpu_0_1_axi_periph_to_s00_couplers_WVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_1F1R6HZ
     port map (
      M_ACLK => cpu_0_1_axi_periph_ACLK_net,
      M_ARESETN => cpu_0_1_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arvalid(0) => s01_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awvalid(0) => s01_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s01_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid(0) => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rready(0) => s01_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid(0) => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s01_couplers_to_xbar_WVALID(0),
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => cpu_0_1_axi_periph_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => cpu_0_1_axi_periph_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => cpu_0_1_axi_periph_to_s01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => cpu_0_1_axi_periph_to_s01_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => cpu_0_1_axi_periph_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => cpu_0_1_axi_periph_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => cpu_0_1_axi_periph_to_s01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => cpu_0_1_axi_periph_to_s01_couplers_AWVALID(0),
      S_AXI_bready(0) => cpu_0_1_axi_periph_to_s01_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => cpu_0_1_axi_periph_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => cpu_0_1_axi_periph_to_s01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => cpu_0_1_axi_periph_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => cpu_0_1_axi_periph_to_s01_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => cpu_0_1_axi_periph_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => cpu_0_1_axi_periph_to_s01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => cpu_0_1_axi_periph_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => cpu_0_1_axi_periph_to_s01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => cpu_0_1_axi_periph_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => cpu_0_1_axi_periph_to_s01_couplers_WVALID(0)
    );
xbar: component BD_xbar_1
     port map (
      aclk => cpu_0_1_axi_periph_ACLK_net,
      aresetn => cpu_0_1_axi_periph_ARESETN_net,
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_cpu_1_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC
  );
end BD_cpu_1_0_axi_periph_0;

architecture STRUCTURE of BD_cpu_1_0_axi_periph_0 is
  component BD_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component BD_xbar_2;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal cpu_1_0_axi_periph_ACLK_net : STD_LOGIC;
  signal cpu_1_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal cpu_1_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_axi_periph_to_s01_couplers_ARREADY : STD_LOGIC;
  signal cpu_1_0_axi_periph_to_s01_couplers_ARVALID : STD_LOGIC;
  signal cpu_1_0_axi_periph_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_axi_periph_to_s01_couplers_AWREADY : STD_LOGIC;
  signal cpu_1_0_axi_periph_to_s01_couplers_AWVALID : STD_LOGIC;
  signal cpu_1_0_axi_periph_to_s01_couplers_BREADY : STD_LOGIC;
  signal cpu_1_0_axi_periph_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_axi_periph_to_s01_couplers_BVALID : STD_LOGIC;
  signal cpu_1_0_axi_periph_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_to_s01_couplers_RREADY : STD_LOGIC;
  signal cpu_1_0_axi_periph_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_axi_periph_to_s01_couplers_RVALID : STD_LOGIC;
  signal cpu_1_0_axi_periph_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_to_s01_couplers_WREADY : STD_LOGIC;
  signal cpu_1_0_axi_periph_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_0_axi_periph_to_s01_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_cpu_1_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_cpu_1_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_cpu_1_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_cpu_1_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_cpu_1_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_cpu_1_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_cpu_1_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_cpu_1_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_cpu_1_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_cpu_1_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_cpu_1_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_cpu_1_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_cpu_1_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_cpu_1_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_cpu_1_0_axi_periph_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_cpu_1_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_cpu_1_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_cpu_1_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_cpu_1_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_cpu_1_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_cpu_1_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_cpu_1_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_cpu_1_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_cpu_1_0_axi_periph_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_cpu_1_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_cpu_1_0_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_cpu_1_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_cpu_1_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_cpu_1_0_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_cpu_1_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_cpu_1_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_cpu_1_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_cpu_1_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_cpu_1_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_cpu_1_0_axi_periph_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready(0) <= cpu_1_0_axi_periph_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= cpu_1_0_axi_periph_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= cpu_1_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= cpu_1_0_axi_periph_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= cpu_1_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= cpu_1_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= cpu_1_0_axi_periph_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= cpu_1_0_axi_periph_to_s00_couplers_WREADY(0);
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready <= cpu_1_0_axi_periph_to_s01_couplers_ARREADY;
  S01_AXI_awready <= cpu_1_0_axi_periph_to_s01_couplers_AWREADY;
  S01_AXI_bresp(1 downto 0) <= cpu_1_0_axi_periph_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid <= cpu_1_0_axi_periph_to_s01_couplers_BVALID;
  S01_AXI_rdata(31 downto 0) <= cpu_1_0_axi_periph_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rresp(1 downto 0) <= cpu_1_0_axi_periph_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= cpu_1_0_axi_periph_to_s01_couplers_RVALID;
  S01_AXI_wready <= cpu_1_0_axi_periph_to_s01_couplers_WREADY;
  cpu_1_0_axi_periph_ACLK_net <= ACLK;
  cpu_1_0_axi_periph_ARESETN_net <= ARESETN;
  cpu_1_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  cpu_1_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  cpu_1_0_axi_periph_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  cpu_1_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  cpu_1_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  cpu_1_0_axi_periph_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  cpu_1_0_axi_periph_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  cpu_1_0_axi_periph_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  cpu_1_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  cpu_1_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  cpu_1_0_axi_periph_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  cpu_1_0_axi_periph_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  cpu_1_0_axi_periph_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  cpu_1_0_axi_periph_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  cpu_1_0_axi_periph_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  cpu_1_0_axi_periph_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  cpu_1_0_axi_periph_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  cpu_1_0_axi_periph_to_s01_couplers_BREADY <= S01_AXI_bready;
  cpu_1_0_axi_periph_to_s01_couplers_RREADY <= S01_AXI_rready;
  cpu_1_0_axi_periph_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  cpu_1_0_axi_periph_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  cpu_1_0_axi_periph_to_s01_couplers_WVALID <= S01_AXI_wvalid;
  m00_couplers_to_cpu_1_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_cpu_1_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_cpu_1_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_cpu_1_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_cpu_1_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_cpu_1_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_cpu_1_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_cpu_1_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_cpu_1_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_cpu_1_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_cpu_1_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_cpu_1_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_cpu_1_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_cpu_1_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_cpu_1_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_cpu_1_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_cpu_1_0_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_cpu_1_0_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_cpu_1_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_cpu_1_0_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_cpu_1_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_cpu_1_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_cpu_1_0_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_cpu_1_0_axi_periph_WREADY(0) <= M02_AXI_wready(0);
m00_couplers: entity work.m00_couplers_imp_1349HKX
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_cpu_1_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_cpu_1_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m00_couplers_to_cpu_1_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_cpu_1_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_cpu_1_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_cpu_1_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m00_couplers_to_cpu_1_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_cpu_1_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_cpu_1_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_cpu_1_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_cpu_1_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_cpu_1_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_cpu_1_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_cpu_1_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_cpu_1_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_cpu_1_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_cpu_1_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_cpu_1_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_cpu_1_0_axi_periph_WVALID(0),
      S_ACLK => cpu_1_0_axi_periph_ACLK_net,
      S_ARESETN => cpu_1_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_6H7QY6
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_cpu_1_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_cpu_1_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_cpu_1_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_cpu_1_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_cpu_1_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_cpu_1_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_cpu_1_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_cpu_1_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_cpu_1_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_cpu_1_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_cpu_1_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_cpu_1_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_cpu_1_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_cpu_1_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_cpu_1_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_cpu_1_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_cpu_1_0_axi_periph_WVALID(0),
      S_ACLK => cpu_1_0_axi_periph_ACLK_net,
      S_ARESETN => cpu_1_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_QUPRZ2
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_cpu_1_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_cpu_1_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m02_couplers_to_cpu_1_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_cpu_1_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_cpu_1_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_cpu_1_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m02_couplers_to_cpu_1_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_cpu_1_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_cpu_1_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_cpu_1_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_cpu_1_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_cpu_1_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_cpu_1_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_cpu_1_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_cpu_1_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_cpu_1_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_cpu_1_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_cpu_1_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_cpu_1_0_axi_periph_WVALID(0),
      S_ACLK => cpu_1_0_axi_periph_ACLK_net,
      S_ARESETN => cpu_1_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_9DY0ML
     port map (
      M_ACLK => cpu_1_0_axi_periph_ACLK_net,
      M_ARESETN => cpu_1_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => cpu_1_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => cpu_1_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => cpu_1_0_axi_periph_to_s00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => cpu_1_0_axi_periph_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => cpu_1_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => cpu_1_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => cpu_1_0_axi_periph_to_s00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => cpu_1_0_axi_periph_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => cpu_1_0_axi_periph_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => cpu_1_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => cpu_1_0_axi_periph_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => cpu_1_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => cpu_1_0_axi_periph_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => cpu_1_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => cpu_1_0_axi_periph_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => cpu_1_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => cpu_1_0_axi_periph_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => cpu_1_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => cpu_1_0_axi_periph_to_s00_couplers_WVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_1FQACOY
     port map (
      M_ACLK => cpu_1_0_axi_periph_ACLK_net,
      M_ARESETN => cpu_1_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => cpu_1_0_axi_periph_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => cpu_1_0_axi_periph_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arready => cpu_1_0_axi_periph_to_s01_couplers_ARREADY,
      S_AXI_arvalid => cpu_1_0_axi_periph_to_s01_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => cpu_1_0_axi_periph_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => cpu_1_0_axi_periph_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready => cpu_1_0_axi_periph_to_s01_couplers_AWREADY,
      S_AXI_awvalid => cpu_1_0_axi_periph_to_s01_couplers_AWVALID,
      S_AXI_bready => cpu_1_0_axi_periph_to_s01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => cpu_1_0_axi_periph_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => cpu_1_0_axi_periph_to_s01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => cpu_1_0_axi_periph_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rready => cpu_1_0_axi_periph_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => cpu_1_0_axi_periph_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => cpu_1_0_axi_periph_to_s01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => cpu_1_0_axi_periph_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wready => cpu_1_0_axi_periph_to_s01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => cpu_1_0_axi_periph_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => cpu_1_0_axi_periph_to_s01_couplers_WVALID
    );
xbar: component BD_xbar_2
     port map (
      aclk => cpu_1_0_axi_periph_ACLK_net,
      aresetn => cpu_1_0_axi_periph_ARESETN_net,
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_cpu_1_1_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC
  );
end BD_cpu_1_1_axi_periph_0;

architecture STRUCTURE of BD_cpu_1_1_axi_periph_0 is
  component BD_xbar_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component BD_xbar_3;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal cpu_1_1_axi_periph_ACLK_net : STD_LOGIC;
  signal cpu_1_1_axi_periph_ARESETN_net : STD_LOGIC;
  signal cpu_1_1_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_1_axi_periph_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_axi_periph_to_s01_couplers_ARREADY : STD_LOGIC;
  signal cpu_1_1_axi_periph_to_s01_couplers_ARVALID : STD_LOGIC;
  signal cpu_1_1_axi_periph_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_axi_periph_to_s01_couplers_AWREADY : STD_LOGIC;
  signal cpu_1_1_axi_periph_to_s01_couplers_AWVALID : STD_LOGIC;
  signal cpu_1_1_axi_periph_to_s01_couplers_BREADY : STD_LOGIC;
  signal cpu_1_1_axi_periph_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_axi_periph_to_s01_couplers_BVALID : STD_LOGIC;
  signal cpu_1_1_axi_periph_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_to_s01_couplers_RREADY : STD_LOGIC;
  signal cpu_1_1_axi_periph_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_axi_periph_to_s01_couplers_RVALID : STD_LOGIC;
  signal cpu_1_1_axi_periph_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_to_s01_couplers_WREADY : STD_LOGIC;
  signal cpu_1_1_axi_periph_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_1_axi_periph_to_s01_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_cpu_1_1_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_cpu_1_1_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_cpu_1_1_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_cpu_1_1_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_cpu_1_1_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_cpu_1_1_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_cpu_1_1_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_cpu_1_1_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_cpu_1_1_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_cpu_1_1_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_cpu_1_1_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_cpu_1_1_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_cpu_1_1_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_cpu_1_1_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_cpu_1_1_axi_periph_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_cpu_1_1_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_cpu_1_1_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_cpu_1_1_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_cpu_1_1_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_cpu_1_1_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_cpu_1_1_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_cpu_1_1_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_cpu_1_1_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_cpu_1_1_axi_periph_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_cpu_1_1_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_cpu_1_1_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_cpu_1_1_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_cpu_1_1_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_cpu_1_1_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_cpu_1_1_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_cpu_1_1_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_cpu_1_1_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_cpu_1_1_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_cpu_1_1_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_cpu_1_1_axi_periph_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready(0) <= cpu_1_1_axi_periph_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= cpu_1_1_axi_periph_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= cpu_1_1_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= cpu_1_1_axi_periph_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= cpu_1_1_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= cpu_1_1_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= cpu_1_1_axi_periph_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= cpu_1_1_axi_periph_to_s00_couplers_WREADY(0);
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready <= cpu_1_1_axi_periph_to_s01_couplers_ARREADY;
  S01_AXI_awready <= cpu_1_1_axi_periph_to_s01_couplers_AWREADY;
  S01_AXI_bresp(1 downto 0) <= cpu_1_1_axi_periph_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid <= cpu_1_1_axi_periph_to_s01_couplers_BVALID;
  S01_AXI_rdata(31 downto 0) <= cpu_1_1_axi_periph_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rresp(1 downto 0) <= cpu_1_1_axi_periph_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= cpu_1_1_axi_periph_to_s01_couplers_RVALID;
  S01_AXI_wready <= cpu_1_1_axi_periph_to_s01_couplers_WREADY;
  cpu_1_1_axi_periph_ACLK_net <= ACLK;
  cpu_1_1_axi_periph_ARESETN_net <= ARESETN;
  cpu_1_1_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  cpu_1_1_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  cpu_1_1_axi_periph_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  cpu_1_1_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  cpu_1_1_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  cpu_1_1_axi_periph_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  cpu_1_1_axi_periph_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  cpu_1_1_axi_periph_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  cpu_1_1_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  cpu_1_1_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  cpu_1_1_axi_periph_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  cpu_1_1_axi_periph_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  cpu_1_1_axi_periph_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  cpu_1_1_axi_periph_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  cpu_1_1_axi_periph_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  cpu_1_1_axi_periph_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  cpu_1_1_axi_periph_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  cpu_1_1_axi_periph_to_s01_couplers_BREADY <= S01_AXI_bready;
  cpu_1_1_axi_periph_to_s01_couplers_RREADY <= S01_AXI_rready;
  cpu_1_1_axi_periph_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  cpu_1_1_axi_periph_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  cpu_1_1_axi_periph_to_s01_couplers_WVALID <= S01_AXI_wvalid;
  m00_couplers_to_cpu_1_1_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_cpu_1_1_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_cpu_1_1_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_cpu_1_1_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_cpu_1_1_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_cpu_1_1_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_cpu_1_1_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_cpu_1_1_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_cpu_1_1_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_cpu_1_1_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_cpu_1_1_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_cpu_1_1_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_cpu_1_1_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_cpu_1_1_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_cpu_1_1_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_cpu_1_1_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_cpu_1_1_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_cpu_1_1_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_cpu_1_1_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_cpu_1_1_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_cpu_1_1_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_cpu_1_1_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_cpu_1_1_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_cpu_1_1_axi_periph_WREADY(0) <= M02_AXI_wready(0);
m00_couplers: entity work.m00_couplers_imp_1QTU1VK
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_cpu_1_1_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_cpu_1_1_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m00_couplers_to_cpu_1_1_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_cpu_1_1_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_cpu_1_1_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_cpu_1_1_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m00_couplers_to_cpu_1_1_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_cpu_1_1_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_cpu_1_1_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_cpu_1_1_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_cpu_1_1_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_cpu_1_1_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_cpu_1_1_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_cpu_1_1_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_cpu_1_1_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_cpu_1_1_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_cpu_1_1_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_cpu_1_1_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_cpu_1_1_axi_periph_WVALID(0),
      S_ACLK => cpu_1_1_axi_periph_ACLK_net,
      S_ARESETN => cpu_1_1_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_XSY6PB
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_cpu_1_1_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_cpu_1_1_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_cpu_1_1_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_cpu_1_1_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_cpu_1_1_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_cpu_1_1_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_cpu_1_1_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_cpu_1_1_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_cpu_1_1_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_cpu_1_1_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_cpu_1_1_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_cpu_1_1_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_cpu_1_1_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_cpu_1_1_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_cpu_1_1_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_cpu_1_1_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_cpu_1_1_axi_periph_WVALID(0),
      S_ACLK => cpu_1_1_axi_periph_ACLK_net,
      S_ARESETN => cpu_1_1_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_3YSQSF
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_cpu_1_1_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_cpu_1_1_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m02_couplers_to_cpu_1_1_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_cpu_1_1_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_cpu_1_1_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_cpu_1_1_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m02_couplers_to_cpu_1_1_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_cpu_1_1_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_cpu_1_1_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_cpu_1_1_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_cpu_1_1_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_cpu_1_1_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_cpu_1_1_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_cpu_1_1_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_cpu_1_1_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_cpu_1_1_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_cpu_1_1_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_cpu_1_1_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_cpu_1_1_axi_periph_WVALID(0),
      S_ACLK => cpu_1_1_axi_periph_ACLK_net,
      S_ARESETN => cpu_1_1_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_M0L818
     port map (
      M_ACLK => cpu_1_1_axi_periph_ACLK_net,
      M_ARESETN => cpu_1_1_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => cpu_1_1_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => cpu_1_1_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => cpu_1_1_axi_periph_to_s00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => cpu_1_1_axi_periph_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => cpu_1_1_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => cpu_1_1_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => cpu_1_1_axi_periph_to_s00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => cpu_1_1_axi_periph_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => cpu_1_1_axi_periph_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => cpu_1_1_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => cpu_1_1_axi_periph_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => cpu_1_1_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => cpu_1_1_axi_periph_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => cpu_1_1_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => cpu_1_1_axi_periph_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => cpu_1_1_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => cpu_1_1_axi_periph_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => cpu_1_1_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => cpu_1_1_axi_periph_to_s00_couplers_WVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_1N3GLFN
     port map (
      M_ACLK => cpu_1_1_axi_periph_ACLK_net,
      M_ARESETN => cpu_1_1_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => cpu_1_1_axi_periph_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => cpu_1_1_axi_periph_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arready => cpu_1_1_axi_periph_to_s01_couplers_ARREADY,
      S_AXI_arvalid => cpu_1_1_axi_periph_to_s01_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => cpu_1_1_axi_periph_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => cpu_1_1_axi_periph_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready => cpu_1_1_axi_periph_to_s01_couplers_AWREADY,
      S_AXI_awvalid => cpu_1_1_axi_periph_to_s01_couplers_AWVALID,
      S_AXI_bready => cpu_1_1_axi_periph_to_s01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => cpu_1_1_axi_periph_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => cpu_1_1_axi_periph_to_s01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => cpu_1_1_axi_periph_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rready => cpu_1_1_axi_periph_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => cpu_1_1_axi_periph_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => cpu_1_1_axi_periph_to_s01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => cpu_1_1_axi_periph_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wready => cpu_1_1_axi_periph_to_s01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => cpu_1_1_axi_periph_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => cpu_1_1_axi_periph_to_s01_couplers_WVALID
    );
xbar: component BD_xbar_3
     port map (
      aclk => cpu_1_1_axi_periph_ACLK_net,
      aresetn => cpu_1_1_axi_periph_ARESETN_net,
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    GPIO_DIP_SW0 : in STD_LOGIC;
    GPIO_DIP_SW1 : in STD_LOGIC;
    GPIO_SW_N : in STD_LOGIC;
    GPIO_SW_S : in STD_LOGIC;
    PMOD1_0_LS : out STD_LOGIC_VECTOR ( 0 to 0 );
    PMOD1_1_LS : out STD_LOGIC_VECTOR ( 0 to 0 );
    PMOD1_2_LS : out STD_LOGIC_VECTOR ( 0 to 0 );
    PMOD1_3_LS : out STD_LOGIC_VECTOR ( 0 to 0 );
    PMOD2_3_LS : out STD_LOGIC_VECTOR ( 0 to 0 );
    SYSCLK_N : in STD_LOGIC;
    SYSCLK_P : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of BD : entity is "BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BD,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=89,numReposBlks=60,numNonXlnxBlks=5,numHierBlks=29,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=8,da_mb_cnt=6,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of BD : entity is "BD.hwdef";
end BD;

architecture STRUCTURE of BD is
  component BD_clk_wiz_0 is
  port (
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component BD_clk_wiz_0;
  component BD_cpu_0_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );
  end component BD_cpu_0_0_0;
  component BD_kth_axi_rni_static_0_0 is
  port (
    TO_NOC : out STD_LOGIC_VECTOR ( 55 downto 0 );
    FROM_NOC : in STD_LOGIC_VECTOR ( 55 downto 0 );
    Sync : in STD_LOGIC_VECTOR ( 1 downto 0 );
    HeartBeat : in STD_LOGIC;
    NoC_IRQ : out STD_LOGIC;
    dap_address : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dap_readdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dap_writedata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dap_read : in STD_LOGIC;
    dap_write : in STD_LOGIC;
    dap_byteenable : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC
  );
  end component BD_kth_axi_rni_static_0_0;
  component BD_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component BD_axi_gpio_0_0;
  component BD_mdm_1_0 is
  port (
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC;
    Dbg_Clk_1 : out STD_LOGIC;
    Dbg_TDI_1 : out STD_LOGIC;
    Dbg_TDO_1 : in STD_LOGIC;
    Dbg_Reg_En_1 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_1 : out STD_LOGIC;
    Dbg_Shift_1 : out STD_LOGIC;
    Dbg_Update_1 : out STD_LOGIC;
    Dbg_Rst_1 : out STD_LOGIC;
    Dbg_Disable_1 : out STD_LOGIC;
    Dbg_Clk_2 : out STD_LOGIC;
    Dbg_TDI_2 : out STD_LOGIC;
    Dbg_TDO_2 : in STD_LOGIC;
    Dbg_Reg_En_2 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_2 : out STD_LOGIC;
    Dbg_Shift_2 : out STD_LOGIC;
    Dbg_Update_2 : out STD_LOGIC;
    Dbg_Rst_2 : out STD_LOGIC;
    Dbg_Disable_2 : out STD_LOGIC;
    Dbg_Clk_3 : out STD_LOGIC;
    Dbg_TDI_3 : out STD_LOGIC;
    Dbg_TDO_3 : in STD_LOGIC;
    Dbg_Reg_En_3 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_3 : out STD_LOGIC;
    Dbg_Shift_3 : out STD_LOGIC;
    Dbg_Update_3 : out STD_LOGIC;
    Dbg_Rst_3 : out STD_LOGIC;
    Dbg_Disable_3 : out STD_LOGIC;
    Dbg_Clk_4 : out STD_LOGIC;
    Dbg_TDI_4 : out STD_LOGIC;
    Dbg_TDO_4 : in STD_LOGIC;
    Dbg_Reg_En_4 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_4 : out STD_LOGIC;
    Dbg_Shift_4 : out STD_LOGIC;
    Dbg_Update_4 : out STD_LOGIC;
    Dbg_Rst_4 : out STD_LOGIC;
    Dbg_Disable_4 : out STD_LOGIC;
    Dbg_Clk_5 : out STD_LOGIC;
    Dbg_TDI_5 : out STD_LOGIC;
    Dbg_TDO_5 : in STD_LOGIC;
    Dbg_Reg_En_5 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_5 : out STD_LOGIC;
    Dbg_Shift_5 : out STD_LOGIC;
    Dbg_Update_5 : out STD_LOGIC;
    Dbg_Rst_5 : out STD_LOGIC;
    Dbg_Disable_5 : out STD_LOGIC
  );
  end component BD_mdm_1_0;
  component BD_rst_clk_wiz_50M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component BD_rst_clk_wiz_50M_0;
  component BD_microblaze_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );
  end component BD_microblaze_0_0;
  component BD_kth_axi_rni_static_0_1 is
  port (
    TO_NOC : out STD_LOGIC_VECTOR ( 55 downto 0 );
    FROM_NOC : in STD_LOGIC_VECTOR ( 55 downto 0 );
    Sync : in STD_LOGIC_VECTOR ( 1 downto 0 );
    HeartBeat : in STD_LOGIC;
    NoC_IRQ : out STD_LOGIC;
    dap_address : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dap_readdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dap_writedata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dap_read : in STD_LOGIC;
    dap_write : in STD_LOGIC;
    dap_byteenable : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC
  );
  end component BD_kth_axi_rni_static_0_1;
  component BD_pio_0_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component BD_pio_0_0_0;
  component BD_cpu_0_1_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );
  end component BD_cpu_0_1_0;
  component BD_kth_axi_rni_static_1_0 is
  port (
    TO_NOC : out STD_LOGIC_VECTOR ( 55 downto 0 );
    FROM_NOC : in STD_LOGIC_VECTOR ( 55 downto 0 );
    Sync : in STD_LOGIC_VECTOR ( 1 downto 0 );
    HeartBeat : in STD_LOGIC;
    NoC_IRQ : out STD_LOGIC;
    dap_address : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dap_readdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dap_writedata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dap_read : in STD_LOGIC;
    dap_write : in STD_LOGIC;
    dap_byteenable : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC
  );
  end component BD_kth_axi_rni_static_1_0;
  component BD_pio_0_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component BD_pio_0_1_0;
  component BD_cpu_1_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );
  end component BD_cpu_1_0_0;
  component BD_kth_axi_rni_static_2_0 is
  port (
    TO_NOC : out STD_LOGIC_VECTOR ( 55 downto 0 );
    FROM_NOC : in STD_LOGIC_VECTOR ( 55 downto 0 );
    Sync : in STD_LOGIC_VECTOR ( 1 downto 0 );
    HeartBeat : in STD_LOGIC;
    NoC_IRQ : out STD_LOGIC;
    dap_address : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dap_readdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dap_writedata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dap_read : in STD_LOGIC;
    dap_write : in STD_LOGIC;
    dap_byteenable : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC
  );
  end component BD_kth_axi_rni_static_2_0;
  component BD_pio_1_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component BD_pio_1_0_0;
  component BD_kth_2DNoC_2x2x1_0_0 is
  port (
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
  end component BD_kth_2DNoC_2x2x1_0_0;
  component BD_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component BD_xlconstant_0_0;
  component BD_Ground_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component BD_Ground_1_0;
  component BD_Ground_8_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component BD_Ground_8_0;
  component BD_Ground_15_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component BD_Ground_15_0;
  component BD_processing_system7_0_0 is
  port (
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component BD_processing_system7_0_0;
  component BD_pio_dpr_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component BD_pio_dpr_0;
  component BD_cpu_1_0_x_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );
  end component BD_cpu_1_0_x_0;
  component BD_cpu_1_1_x_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );
  end component BD_cpu_1_1_x_0;
  component BD_axi_crossbar_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component BD_axi_crossbar_0_0;
  signal GPIO_DIP_SW0_1 : STD_LOGIC;
  signal GPIO_DIP_SW1_1 : STD_LOGIC;
  signal GPIO_SW_N_1 : STD_LOGIC;
  signal GPIO_SW_S_1 : STD_LOGIC;
  signal Ground_15_dout : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal Ground_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Ground_64_dout : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Ground_8_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  signal S00_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_RLAST : STD_LOGIC;
  signal S00_AXI_1_RREADY : STD_LOGIC;
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal SYSCLK_N_1 : STD_LOGIC;
  signal SYSCLK_P_1 : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_crossbar_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_crossbar_0_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_crossbar_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_crossbar_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_crossbar_0_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_0_M_AXI_DP_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_M_AXI_DP_ARVALID : STD_LOGIC;
  signal cpu_0_0_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_0_M_AXI_DP_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_M_AXI_DP_AWVALID : STD_LOGIC;
  signal cpu_0_0_M_AXI_DP_BREADY : STD_LOGIC;
  signal cpu_0_0_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_M_AXI_DP_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_M_AXI_DP_RREADY : STD_LOGIC;
  signal cpu_0_0_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_M_AXI_DP_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_M_AXI_DP_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_0_M_AXI_DP_WVALID : STD_LOGIC;
  signal cpu_0_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal cpu_0_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal cpu_0_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal cpu_0_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal cpu_0_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal cpu_0_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal cpu_0_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal cpu_0_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal cpu_0_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal cpu_0_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal cpu_0_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_M02_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_0_axi_periph_M02_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_0_axi_periph_M02_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_0_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_0_debug_CAPTURE : STD_LOGIC;
  signal cpu_0_0_debug_CLK : STD_LOGIC;
  signal cpu_0_0_debug_DISABLE : STD_LOGIC;
  signal cpu_0_0_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal cpu_0_0_debug_RST : STD_LOGIC;
  signal cpu_0_0_debug_SHIFT : STD_LOGIC;
  signal cpu_0_0_debug_TDI : STD_LOGIC;
  signal cpu_0_0_debug_TDO : STD_LOGIC;
  signal cpu_0_0_debug_UPDATE : STD_LOGIC;
  signal cpu_0_0_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_0_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_0_0_dlmb_1_CE : STD_LOGIC;
  signal cpu_0_0_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_dlmb_1_READSTROBE : STD_LOGIC;
  signal cpu_0_0_dlmb_1_READY : STD_LOGIC;
  signal cpu_0_0_dlmb_1_UE : STD_LOGIC;
  signal cpu_0_0_dlmb_1_WAIT : STD_LOGIC;
  signal cpu_0_0_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal cpu_0_0_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_0_ilmb_1_CE : STD_LOGIC;
  signal cpu_0_0_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_0_ilmb_1_READSTROBE : STD_LOGIC;
  signal cpu_0_0_ilmb_1_READY : STD_LOGIC;
  signal cpu_0_0_ilmb_1_UE : STD_LOGIC;
  signal cpu_0_0_ilmb_1_WAIT : STD_LOGIC;
  signal cpu_0_1_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_1_M_AXI_DP_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_M_AXI_DP_ARVALID : STD_LOGIC;
  signal cpu_0_1_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_1_M_AXI_DP_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_M_AXI_DP_AWVALID : STD_LOGIC;
  signal cpu_0_1_M_AXI_DP_BREADY : STD_LOGIC;
  signal cpu_0_1_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_1_M_AXI_DP_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_M_AXI_DP_RREADY : STD_LOGIC;
  signal cpu_0_1_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_1_M_AXI_DP_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_M_AXI_DP_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_1_M_AXI_DP_WVALID : STD_LOGIC;
  signal cpu_0_1_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_1_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal cpu_0_1_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_1_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal cpu_0_1_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_1_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal cpu_0_1_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_1_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal cpu_0_1_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal cpu_0_1_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_1_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal cpu_0_1_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal cpu_0_1_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_1_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal cpu_0_1_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_0_1_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal cpu_0_1_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal cpu_0_1_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_1_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_1_axi_periph_M02_AXI_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal cpu_0_1_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_0_1_axi_periph_M02_AXI_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal cpu_0_1_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal cpu_0_1_axi_periph_M02_AXI_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal cpu_0_1_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal cpu_0_1_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal cpu_0_1_axi_periph_M02_AXI_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal cpu_0_1_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_0_1_axi_periph_M02_AXI_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal cpu_0_1_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_0_1_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_0_1_debug_CAPTURE : STD_LOGIC;
  signal cpu_0_1_debug_CLK : STD_LOGIC;
  signal cpu_0_1_debug_DISABLE : STD_LOGIC;
  signal cpu_0_1_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal cpu_0_1_debug_RST : STD_LOGIC;
  signal cpu_0_1_debug_SHIFT : STD_LOGIC;
  signal cpu_0_1_debug_TDI : STD_LOGIC;
  signal cpu_0_1_debug_TDO : STD_LOGIC;
  signal cpu_0_1_debug_UPDATE : STD_LOGIC;
  signal cpu_0_1_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_1_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_0_1_dlmb_1_CE : STD_LOGIC;
  signal cpu_0_1_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_dlmb_1_READSTROBE : STD_LOGIC;
  signal cpu_0_1_dlmb_1_READY : STD_LOGIC;
  signal cpu_0_1_dlmb_1_UE : STD_LOGIC;
  signal cpu_0_1_dlmb_1_WAIT : STD_LOGIC;
  signal cpu_0_1_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal cpu_0_1_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_0_1_ilmb_1_CE : STD_LOGIC;
  signal cpu_0_1_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_0_1_ilmb_1_READSTROBE : STD_LOGIC;
  signal cpu_0_1_ilmb_1_READY : STD_LOGIC;
  signal cpu_0_1_ilmb_1_UE : STD_LOGIC;
  signal cpu_0_1_ilmb_1_WAIT : STD_LOGIC;
  signal cpu_1_0_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_M_AXI_DP_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_M_AXI_DP_ARVALID : STD_LOGIC;
  signal cpu_1_0_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_M_AXI_DP_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_M_AXI_DP_AWVALID : STD_LOGIC;
  signal cpu_1_0_M_AXI_DP_BREADY : STD_LOGIC;
  signal cpu_1_0_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_M_AXI_DP_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_M_AXI_DP_RREADY : STD_LOGIC;
  signal cpu_1_0_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_M_AXI_DP_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_M_AXI_DP_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_0_M_AXI_DP_WVALID : STD_LOGIC;
  signal cpu_1_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal cpu_1_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal cpu_1_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal cpu_1_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal cpu_1_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal cpu_1_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal cpu_1_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal cpu_1_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal cpu_1_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal cpu_1_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal cpu_1_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal cpu_1_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal cpu_1_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal cpu_1_0_axi_periph_M02_AXI_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal cpu_1_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal cpu_1_0_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal cpu_1_0_axi_periph_M02_AXI_RVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal cpu_1_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_axi_periph_M02_AXI_WREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal cpu_1_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_0_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_0_debug_CAPTURE : STD_LOGIC;
  signal cpu_1_0_debug_CLK : STD_LOGIC;
  signal cpu_1_0_debug_DISABLE : STD_LOGIC;
  signal cpu_1_0_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal cpu_1_0_debug_RST : STD_LOGIC;
  signal cpu_1_0_debug_SHIFT : STD_LOGIC;
  signal cpu_1_0_debug_TDI : STD_LOGIC;
  signal cpu_1_0_debug_TDO : STD_LOGIC;
  signal cpu_1_0_debug_UPDATE : STD_LOGIC;
  signal cpu_1_0_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_0_dlmb_1_CE : STD_LOGIC;
  signal cpu_1_0_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_dlmb_1_READSTROBE : STD_LOGIC;
  signal cpu_1_0_dlmb_1_READY : STD_LOGIC;
  signal cpu_1_0_dlmb_1_UE : STD_LOGIC;
  signal cpu_1_0_dlmb_1_WAIT : STD_LOGIC;
  signal cpu_1_0_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal cpu_1_0_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_ilmb_1_CE : STD_LOGIC;
  signal cpu_1_0_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_ilmb_1_READSTROBE : STD_LOGIC;
  signal cpu_1_0_ilmb_1_READY : STD_LOGIC;
  signal cpu_1_0_ilmb_1_UE : STD_LOGIC;
  signal cpu_1_0_ilmb_1_WAIT : STD_LOGIC;
  signal cpu_1_0_x_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_x_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_x_M_AXI_DP_ARREADY : STD_LOGIC;
  signal cpu_1_0_x_M_AXI_DP_ARVALID : STD_LOGIC;
  signal cpu_1_0_x_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_x_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_0_x_M_AXI_DP_AWREADY : STD_LOGIC;
  signal cpu_1_0_x_M_AXI_DP_AWVALID : STD_LOGIC;
  signal cpu_1_0_x_M_AXI_DP_BREADY : STD_LOGIC;
  signal cpu_1_0_x_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_x_M_AXI_DP_BVALID : STD_LOGIC;
  signal cpu_1_0_x_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_x_M_AXI_DP_RREADY : STD_LOGIC;
  signal cpu_1_0_x_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_0_x_M_AXI_DP_RVALID : STD_LOGIC;
  signal cpu_1_0_x_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_0_x_M_AXI_DP_WREADY : STD_LOGIC;
  signal cpu_1_0_x_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_0_x_M_AXI_DP_WVALID : STD_LOGIC;
  signal cpu_1_0_x_debug_CAPTURE : STD_LOGIC;
  signal cpu_1_0_x_debug_CLK : STD_LOGIC;
  signal cpu_1_0_x_debug_DISABLE : STD_LOGIC;
  signal cpu_1_0_x_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal cpu_1_0_x_debug_RST : STD_LOGIC;
  signal cpu_1_0_x_debug_SHIFT : STD_LOGIC;
  signal cpu_1_0_x_debug_TDI : STD_LOGIC;
  signal cpu_1_0_x_debug_TDO : STD_LOGIC;
  signal cpu_1_0_x_debug_UPDATE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_0_x_dlmb_1_CE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_dlmb_1_READSTROBE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_1_READY : STD_LOGIC;
  signal cpu_1_0_x_dlmb_1_UE : STD_LOGIC;
  signal cpu_1_0_x_dlmb_1_WAIT : STD_LOGIC;
  signal cpu_1_0_x_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_1_CE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_0_x_ilmb_1_READSTROBE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_1_READY : STD_LOGIC;
  signal cpu_1_0_x_ilmb_1_UE : STD_LOGIC;
  signal cpu_1_0_x_ilmb_1_WAIT : STD_LOGIC;
  signal cpu_1_1_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_M_AXI_DP_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_M_AXI_DP_ARVALID : STD_LOGIC;
  signal cpu_1_1_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_M_AXI_DP_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_M_AXI_DP_AWVALID : STD_LOGIC;
  signal cpu_1_1_M_AXI_DP_BREADY : STD_LOGIC;
  signal cpu_1_1_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_M_AXI_DP_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_M_AXI_DP_RREADY : STD_LOGIC;
  signal cpu_1_1_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_M_AXI_DP_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_M_AXI_DP_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_1_M_AXI_DP_WVALID : STD_LOGIC;
  signal cpu_1_1_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal cpu_1_1_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal cpu_1_1_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal cpu_1_1_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal cpu_1_1_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal cpu_1_1_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_1_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal cpu_1_1_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal cpu_1_1_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal cpu_1_1_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal cpu_1_1_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal cpu_1_1_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_1_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_axi_periph_M02_AXI_ARREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal cpu_1_1_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_axi_periph_M02_AXI_AWREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal cpu_1_1_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal cpu_1_1_axi_periph_M02_AXI_BVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal cpu_1_1_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal cpu_1_1_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal cpu_1_1_axi_periph_M02_AXI_RVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal cpu_1_1_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_axi_periph_M02_AXI_WREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal cpu_1_1_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_1_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cpu_1_1_debug_CAPTURE : STD_LOGIC;
  signal cpu_1_1_debug_CLK : STD_LOGIC;
  signal cpu_1_1_debug_DISABLE : STD_LOGIC;
  signal cpu_1_1_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal cpu_1_1_debug_RST : STD_LOGIC;
  signal cpu_1_1_debug_SHIFT : STD_LOGIC;
  signal cpu_1_1_debug_TDI : STD_LOGIC;
  signal cpu_1_1_debug_TDO : STD_LOGIC;
  signal cpu_1_1_debug_UPDATE : STD_LOGIC;
  signal cpu_1_1_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_1_dlmb_1_CE : STD_LOGIC;
  signal cpu_1_1_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_dlmb_1_READSTROBE : STD_LOGIC;
  signal cpu_1_1_dlmb_1_READY : STD_LOGIC;
  signal cpu_1_1_dlmb_1_UE : STD_LOGIC;
  signal cpu_1_1_dlmb_1_WAIT : STD_LOGIC;
  signal cpu_1_1_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal cpu_1_1_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_ilmb_1_CE : STD_LOGIC;
  signal cpu_1_1_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_ilmb_1_READSTROBE : STD_LOGIC;
  signal cpu_1_1_ilmb_1_READY : STD_LOGIC;
  signal cpu_1_1_ilmb_1_UE : STD_LOGIC;
  signal cpu_1_1_ilmb_1_WAIT : STD_LOGIC;
  signal cpu_1_1_x_Clk : STD_LOGIC;
  signal cpu_1_1_x_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_x_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_x_M_AXI_DP_ARREADY : STD_LOGIC;
  signal cpu_1_1_x_M_AXI_DP_ARVALID : STD_LOGIC;
  signal cpu_1_1_x_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_x_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cpu_1_1_x_M_AXI_DP_AWREADY : STD_LOGIC;
  signal cpu_1_1_x_M_AXI_DP_AWVALID : STD_LOGIC;
  signal cpu_1_1_x_M_AXI_DP_BREADY : STD_LOGIC;
  signal cpu_1_1_x_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_x_M_AXI_DP_BVALID : STD_LOGIC;
  signal cpu_1_1_x_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_x_M_AXI_DP_RREADY : STD_LOGIC;
  signal cpu_1_1_x_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cpu_1_1_x_M_AXI_DP_RVALID : STD_LOGIC;
  signal cpu_1_1_x_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cpu_1_1_x_M_AXI_DP_WREADY : STD_LOGIC;
  signal cpu_1_1_x_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cpu_1_1_x_M_AXI_DP_WVALID : STD_LOGIC;
  signal cpu_1_1_x_debug_CAPTURE : STD_LOGIC;
  signal cpu_1_1_x_debug_CLK : STD_LOGIC;
  signal cpu_1_1_x_debug_DISABLE : STD_LOGIC;
  signal cpu_1_1_x_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal cpu_1_1_x_debug_RST : STD_LOGIC;
  signal cpu_1_1_x_debug_SHIFT : STD_LOGIC;
  signal cpu_1_1_x_debug_TDI : STD_LOGIC;
  signal cpu_1_1_x_debug_TDO : STD_LOGIC;
  signal cpu_1_1_x_debug_UPDATE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal cpu_1_1_x_dlmb_1_CE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_dlmb_1_READSTROBE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_1_READY : STD_LOGIC;
  signal cpu_1_1_x_dlmb_1_UE : STD_LOGIC;
  signal cpu_1_1_x_dlmb_1_WAIT : STD_LOGIC;
  signal cpu_1_1_x_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_1_CE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal cpu_1_1_x_ilmb_1_READSTROBE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_1_READY : STD_LOGIC;
  signal cpu_1_1_x_ilmb_1_UE : STD_LOGIC;
  signal cpu_1_1_x_ilmb_1_WAIT : STD_LOGIC;
  signal kth_2DNoC_2x2x1_0_From_NoC_0 : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal kth_2DNoC_2x2x1_0_From_NoC_1 : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal kth_2DNoC_2x2x1_0_From_NoC_2 : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal kth_2DNoC_2x2x1_0_From_NoC_3 : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal kth_2DNoC_2x2x1_0_HeartBeat_0 : STD_LOGIC;
  signal kth_2DNoC_2x2x1_0_HeartBeat_1 : STD_LOGIC;
  signal kth_2DNoC_2x2x1_0_HeartBeat_2 : STD_LOGIC;
  signal kth_2DNoC_2x2x1_0_HeartBeat_3 : STD_LOGIC;
  signal kth_2DNoC_2x2x1_0_Sync_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal kth_2DNoC_2x2x1_0_Sync_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal kth_2DNoC_2x2x1_0_Sync_2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal kth_2DNoC_2x2x1_0_Sync_3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal kth_axi_rni_static_0_TO_NOC : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal kth_axi_rni_static_1_TO_NOC : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal kth_axi_rni_static_2_TO_NOC : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal kth_axi_rni_static_3_TO_NOC : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal mdm_1_debug_sys_rst : STD_LOGIC;
  signal pio_0_0_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pio_0_1_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pio_1_0_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pio_1_1_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pio_dpr_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal rst_clk_wiz_50M_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_50M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_50M_mb_reset : STD_LOGIC;
  signal rst_clk_wiz_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_rst_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_crossbar_0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_crossbar_0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_cpu_0_0_Interrupt_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_cpu_0_1_Interrupt_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_cpu_1_0_Interrupt_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_cpu_1_0_x_Interrupt_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_cpu_1_1_Interrupt_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_cpu_1_1_x_Interrupt_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_kth_axi_rni_static_0_NoC_IRQ_UNCONNECTED : STD_LOGIC;
  signal NLW_kth_axi_rni_static_0_dap_readdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_kth_axi_rni_static_1_NoC_IRQ_UNCONNECTED : STD_LOGIC;
  signal NLW_kth_axi_rni_static_1_dap_readdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_kth_axi_rni_static_2_NoC_IRQ_UNCONNECTED : STD_LOGIC;
  signal NLW_kth_axi_rni_static_2_dap_readdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_kth_axi_rni_static_3_NoC_IRQ_UNCONNECTED : STD_LOGIC;
  signal NLW_kth_axi_rni_static_3_dap_readdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_processing_system7_0_FCLK_CLK0_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_FCLK_RESET0_N_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of cpu_0_0 : label is "microblaze-le > BD cpu_0_0_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of cpu_0_0 : label is "yes";
  attribute BMM_INFO_PROCESSOR of cpu_0_1 : label is "microblaze-le > BD cpu_0_1_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY of cpu_0_1 : label is "yes";
  attribute BMM_INFO_PROCESSOR of cpu_1_0 : label is "microblaze-le > BD cpu_1_0_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY of cpu_1_0 : label is "yes";
  attribute BMM_INFO_PROCESSOR of cpu_1_0_x : label is "microblaze-le > BD cpu_1_0_x_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY of cpu_1_0_x : label is "yes";
  attribute BMM_INFO_PROCESSOR of cpu_1_1 : label is "microblaze-le > BD cpu_1_1_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY of cpu_1_1 : label is "yes";
  attribute BMM_INFO_PROCESSOR of cpu_1_1_x : label is "microblaze-le > BD cpu_1_1_x_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY of cpu_1_1_x : label is "yes";
begin
  GPIO_DIP_SW0_1 <= GPIO_DIP_SW0;
  GPIO_DIP_SW1_1 <= GPIO_DIP_SW1;
  GPIO_SW_N_1 <= GPIO_SW_N;
  GPIO_SW_S_1 <= GPIO_SW_S;
  PMOD1_0_LS(0) <= pio_0_0_gpio_io_o(0);
  PMOD1_1_LS(0) <= pio_0_1_gpio_io_o(0);
  PMOD1_2_LS(0) <= pio_1_0_gpio_io_o(0);
  PMOD1_3_LS(0) <= pio_1_1_gpio_io_o(0);
  PMOD2_3_LS(0) <= pio_dpr_gpio_io_o(0);
  SYSCLK_N_1 <= SYSCLK_N;
  SYSCLK_P_1 <= SYSCLK_P;
Ground_1: component BD_xlconstant_0_0
     port map (
      dout(0) => Ground_1_dout(0)
    );
Ground_15: component BD_Ground_8_0
     port map (
      dout(14 downto 0) => Ground_15_dout(14 downto 0)
    );
Ground_64: component BD_Ground_15_0
     port map (
      dout(63 downto 0) => Ground_64_dout(63 downto 0)
    );
Ground_8: component BD_Ground_1_0
     port map (
      dout(7 downto 0) => Ground_8_dout(7 downto 0)
    );
axi_crossbar_0: component BD_axi_crossbar_0_0
     port map (
      aclk => cpu_1_1_x_Clk,
      aresetn => rst_clk_wiz_50M_peripheral_aresetn(0),
      m_axi_araddr(31 downto 0) => axi_crossbar_0_M00_AXI_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_axi_crossbar_0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready(0) => axi_crossbar_0_M00_AXI_ARREADY,
      m_axi_arvalid(0) => axi_crossbar_0_M00_AXI_ARVALID(0),
      m_axi_awaddr(31 downto 0) => axi_crossbar_0_M00_AXI_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_axi_crossbar_0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready(0) => axi_crossbar_0_M00_AXI_AWREADY,
      m_axi_awvalid(0) => axi_crossbar_0_M00_AXI_AWVALID(0),
      m_axi_bready(0) => axi_crossbar_0_M00_AXI_BREADY(0),
      m_axi_bresp(1 downto 0) => axi_crossbar_0_M00_AXI_BRESP(1 downto 0),
      m_axi_bvalid(0) => axi_crossbar_0_M00_AXI_BVALID,
      m_axi_rdata(31 downto 0) => axi_crossbar_0_M00_AXI_RDATA(31 downto 0),
      m_axi_rready(0) => axi_crossbar_0_M00_AXI_RREADY(0),
      m_axi_rresp(1 downto 0) => axi_crossbar_0_M00_AXI_RRESP(1 downto 0),
      m_axi_rvalid(0) => axi_crossbar_0_M00_AXI_RVALID,
      m_axi_wdata(31 downto 0) => axi_crossbar_0_M00_AXI_WDATA(31 downto 0),
      m_axi_wready(0) => axi_crossbar_0_M00_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => axi_crossbar_0_M00_AXI_WSTRB(3 downto 0),
      m_axi_wvalid(0) => axi_crossbar_0_M00_AXI_WVALID(0),
      s_axi_araddr(127 downto 96) => cpu_1_1_axi_periph_M02_AXI_ARADDR(31 downto 0),
      s_axi_araddr(95 downto 64) => cpu_1_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => cpu_0_1_axi_periph_M02_AXI_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => cpu_0_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      s_axi_arprot(11 downto 9) => cpu_1_1_axi_periph_M02_AXI_ARPROT(2 downto 0),
      s_axi_arprot(8 downto 6) => cpu_1_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => cpu_0_1_axi_periph_M02_AXI_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => cpu_0_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      s_axi_arready(3) => cpu_1_1_axi_periph_M02_AXI_ARREADY(3),
      s_axi_arready(2) => cpu_1_0_axi_periph_M02_AXI_ARREADY(2),
      s_axi_arready(1) => cpu_0_1_axi_periph_M02_AXI_ARREADY(1),
      s_axi_arready(0) => cpu_0_0_axi_periph_M02_AXI_ARREADY(0),
      s_axi_arvalid(3) => cpu_1_1_axi_periph_M02_AXI_ARVALID(0),
      s_axi_arvalid(2) => cpu_1_0_axi_periph_M02_AXI_ARVALID(0),
      s_axi_arvalid(1) => cpu_0_1_axi_periph_M02_AXI_ARVALID(0),
      s_axi_arvalid(0) => cpu_0_0_axi_periph_M02_AXI_ARVALID(0),
      s_axi_awaddr(127 downto 96) => cpu_1_1_axi_periph_M02_AXI_AWADDR(31 downto 0),
      s_axi_awaddr(95 downto 64) => cpu_1_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      s_axi_awaddr(63 downto 32) => cpu_0_1_axi_periph_M02_AXI_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => cpu_0_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      s_axi_awprot(11 downto 9) => cpu_1_1_axi_periph_M02_AXI_AWPROT(2 downto 0),
      s_axi_awprot(8 downto 6) => cpu_1_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => cpu_0_1_axi_periph_M02_AXI_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => cpu_0_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      s_axi_awready(3) => cpu_1_1_axi_periph_M02_AXI_AWREADY(3),
      s_axi_awready(2) => cpu_1_0_axi_periph_M02_AXI_AWREADY(2),
      s_axi_awready(1) => cpu_0_1_axi_periph_M02_AXI_AWREADY(1),
      s_axi_awready(0) => cpu_0_0_axi_periph_M02_AXI_AWREADY(0),
      s_axi_awvalid(3) => cpu_1_1_axi_periph_M02_AXI_AWVALID(0),
      s_axi_awvalid(2) => cpu_1_0_axi_periph_M02_AXI_AWVALID(0),
      s_axi_awvalid(1) => cpu_0_1_axi_periph_M02_AXI_AWVALID(0),
      s_axi_awvalid(0) => cpu_0_0_axi_periph_M02_AXI_AWVALID(0),
      s_axi_bready(3) => cpu_1_1_axi_periph_M02_AXI_BREADY(0),
      s_axi_bready(2) => cpu_1_0_axi_periph_M02_AXI_BREADY(0),
      s_axi_bready(1) => cpu_0_1_axi_periph_M02_AXI_BREADY(0),
      s_axi_bready(0) => cpu_0_0_axi_periph_M02_AXI_BREADY(0),
      s_axi_bresp(7 downto 6) => cpu_1_1_axi_periph_M02_AXI_BRESP(7 downto 6),
      s_axi_bresp(5 downto 4) => cpu_1_0_axi_periph_M02_AXI_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => cpu_0_1_axi_periph_M02_AXI_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => cpu_0_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid(3) => cpu_1_1_axi_periph_M02_AXI_BVALID(3),
      s_axi_bvalid(2) => cpu_1_0_axi_periph_M02_AXI_BVALID(2),
      s_axi_bvalid(1) => cpu_0_1_axi_periph_M02_AXI_BVALID(1),
      s_axi_bvalid(0) => cpu_0_0_axi_periph_M02_AXI_BVALID(0),
      s_axi_rdata(127 downto 96) => cpu_1_1_axi_periph_M02_AXI_RDATA(127 downto 96),
      s_axi_rdata(95 downto 64) => cpu_1_0_axi_periph_M02_AXI_RDATA(95 downto 64),
      s_axi_rdata(63 downto 32) => cpu_0_1_axi_periph_M02_AXI_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => cpu_0_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_rready(3) => cpu_1_1_axi_periph_M02_AXI_RREADY(0),
      s_axi_rready(2) => cpu_1_0_axi_periph_M02_AXI_RREADY(0),
      s_axi_rready(1) => cpu_0_1_axi_periph_M02_AXI_RREADY(0),
      s_axi_rready(0) => cpu_0_0_axi_periph_M02_AXI_RREADY(0),
      s_axi_rresp(7 downto 6) => cpu_1_1_axi_periph_M02_AXI_RRESP(7 downto 6),
      s_axi_rresp(5 downto 4) => cpu_1_0_axi_periph_M02_AXI_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => cpu_0_1_axi_periph_M02_AXI_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => cpu_0_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid(3) => cpu_1_1_axi_periph_M02_AXI_RVALID(3),
      s_axi_rvalid(2) => cpu_1_0_axi_periph_M02_AXI_RVALID(2),
      s_axi_rvalid(1) => cpu_0_1_axi_periph_M02_AXI_RVALID(1),
      s_axi_rvalid(0) => cpu_0_0_axi_periph_M02_AXI_RVALID(0),
      s_axi_wdata(127 downto 96) => cpu_1_1_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wdata(95 downto 64) => cpu_1_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wdata(63 downto 32) => cpu_0_1_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => cpu_0_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wready(3) => cpu_1_1_axi_periph_M02_AXI_WREADY(3),
      s_axi_wready(2) => cpu_1_0_axi_periph_M02_AXI_WREADY(2),
      s_axi_wready(1) => cpu_0_1_axi_periph_M02_AXI_WREADY(1),
      s_axi_wready(0) => cpu_0_0_axi_periph_M02_AXI_WREADY(0),
      s_axi_wstrb(15 downto 12) => cpu_1_1_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wstrb(11 downto 8) => cpu_1_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wstrb(7 downto 4) => cpu_0_1_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => cpu_0_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid(3) => cpu_1_1_axi_periph_M02_AXI_WVALID(0),
      s_axi_wvalid(2) => cpu_1_0_axi_periph_M02_AXI_WVALID(0),
      s_axi_wvalid(1) => cpu_0_1_axi_periph_M02_AXI_WVALID(0),
      s_axi_wvalid(0) => cpu_0_0_axi_periph_M02_AXI_WVALID(0)
    );
clk_wiz: component BD_clk_wiz_0
     port map (
      clk_in1_n => SYSCLK_N_1,
      clk_in1_p => SYSCLK_P_1,
      clk_out1 => cpu_1_1_x_Clk
    );
cpu_0_0: component BD_cpu_0_0_0
     port map (
      Byte_Enable(0 to 3) => cpu_0_0_dlmb_1_BE(0 to 3),
      Clk => cpu_1_1_x_Clk,
      DCE => cpu_0_0_dlmb_1_CE,
      DReady => cpu_0_0_dlmb_1_READY,
      DUE => cpu_0_0_dlmb_1_UE,
      DWait => cpu_0_0_dlmb_1_WAIT,
      D_AS => cpu_0_0_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => cpu_0_0_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => cpu_0_0_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => cpu_0_0_dlmb_1_WRITEDBUS(0 to 31),
      Dbg_Capture => cpu_0_0_debug_CAPTURE,
      Dbg_Clk => cpu_0_0_debug_CLK,
      Dbg_Disable => cpu_0_0_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => cpu_0_0_debug_REG_EN(0 to 7),
      Dbg_Shift => cpu_0_0_debug_SHIFT,
      Dbg_TDI => cpu_0_0_debug_TDI,
      Dbg_TDO => cpu_0_0_debug_TDO,
      Dbg_Update => cpu_0_0_debug_UPDATE,
      Debug_Rst => cpu_0_0_debug_RST,
      ICE => cpu_0_0_ilmb_1_CE,
      IFetch => cpu_0_0_ilmb_1_READSTROBE,
      IReady => cpu_0_0_ilmb_1_READY,
      IUE => cpu_0_0_ilmb_1_UE,
      IWAIT => cpu_0_0_ilmb_1_WAIT,
      I_AS => cpu_0_0_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => cpu_0_0_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => cpu_0_0_ilmb_1_ABUS(0 to 31),
      Interrupt => '0',
      Interrupt_Ack(0 to 1) => NLW_cpu_0_0_Interrupt_Ack_UNCONNECTED(0 to 1),
      Interrupt_Address(0 to 31) => B"00000000000000000000000000000000",
      M_AXI_DP_ARADDR(31 downto 0) => cpu_0_0_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => cpu_0_0_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => cpu_0_0_M_AXI_DP_ARREADY(0),
      M_AXI_DP_ARVALID => cpu_0_0_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => cpu_0_0_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => cpu_0_0_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => cpu_0_0_M_AXI_DP_AWREADY(0),
      M_AXI_DP_AWVALID => cpu_0_0_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => cpu_0_0_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => cpu_0_0_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => cpu_0_0_M_AXI_DP_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => cpu_0_0_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => cpu_0_0_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => cpu_0_0_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => cpu_0_0_M_AXI_DP_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => cpu_0_0_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => cpu_0_0_M_AXI_DP_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => cpu_0_0_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => cpu_0_0_M_AXI_DP_WVALID,
      Read_Strobe => cpu_0_0_dlmb_1_READSTROBE,
      Reset => rst_clk_wiz_50M_mb_reset,
      Write_Strobe => cpu_0_0_dlmb_1_WRITESTROBE
    );
cpu_0_0_axi_periph: entity work.BD_cpu_0_0_axi_periph_0
     port map (
      ACLK => cpu_1_1_x_Clk,
      ARESETN => rst_clk_wiz_50M_interconnect_aresetn(0),
      M00_ACLK => cpu_1_1_x_Clk,
      M00_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => cpu_0_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => cpu_0_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready(0) => cpu_0_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => cpu_0_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => cpu_0_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => cpu_0_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready(0) => cpu_0_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => cpu_0_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => cpu_0_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => cpu_0_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => cpu_0_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => cpu_0_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => cpu_0_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => cpu_0_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => cpu_0_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => cpu_0_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => cpu_0_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => cpu_0_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => cpu_0_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => cpu_1_1_x_Clk,
      M01_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => cpu_0_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => cpu_0_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => cpu_0_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => cpu_0_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => cpu_0_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => cpu_0_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => cpu_0_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => cpu_0_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => cpu_0_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => cpu_0_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => cpu_0_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => cpu_0_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => cpu_0_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => cpu_0_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => cpu_0_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => cpu_0_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => cpu_0_0_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => cpu_1_1_x_Clk,
      M02_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => cpu_0_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => cpu_0_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready(0) => cpu_0_0_axi_periph_M02_AXI_ARREADY(0),
      M02_AXI_arvalid(0) => cpu_0_0_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => cpu_0_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => cpu_0_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready(0) => cpu_0_0_axi_periph_M02_AXI_AWREADY(0),
      M02_AXI_awvalid(0) => cpu_0_0_axi_periph_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => cpu_0_0_axi_periph_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => cpu_0_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => cpu_0_0_axi_periph_M02_AXI_BVALID(0),
      M02_AXI_rdata(31 downto 0) => cpu_0_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => cpu_0_0_axi_periph_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => cpu_0_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => cpu_0_0_axi_periph_M02_AXI_RVALID(0),
      M02_AXI_wdata(31 downto 0) => cpu_0_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => cpu_0_0_axi_periph_M02_AXI_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => cpu_0_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => cpu_0_0_axi_periph_M02_AXI_WVALID(0),
      S00_ACLK => cpu_1_1_x_Clk,
      S00_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => S00_AXI_1_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => S00_AXI_1_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => S00_AXI_1_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      S00_AXI_arready => S00_AXI_1_ARREADY,
      S00_AXI_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      S00_AXI_arvalid => S00_AXI_1_ARVALID,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => S00_AXI_1_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => S00_AXI_1_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => S00_AXI_1_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      S00_AXI_awready => S00_AXI_1_AWREADY,
      S00_AXI_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      S00_AXI_awvalid => S00_AXI_1_AWVALID,
      S00_AXI_bid(11 downto 0) => S00_AXI_1_BID(11 downto 0),
      S00_AXI_bready => S00_AXI_1_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_1_BVALID,
      S00_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => S00_AXI_1_RID(11 downto 0),
      S00_AXI_rlast => S00_AXI_1_RLAST,
      S00_AXI_rready => S00_AXI_1_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_1_RVALID,
      S00_AXI_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => S00_AXI_1_WID(11 downto 0),
      S00_AXI_wlast => S00_AXI_1_WLAST,
      S00_AXI_wready => S00_AXI_1_WREADY,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      S00_AXI_wvalid => S00_AXI_1_WVALID
    );
cpu_0_0_local_memory: entity work.cpu_0_0_local_memory_imp_KVYVOM
     port map (
      DLMB_abus(0 to 31) => cpu_0_0_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => cpu_0_0_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => cpu_0_0_dlmb_1_BE(0 to 3),
      DLMB_ce => cpu_0_0_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => cpu_0_0_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => cpu_0_0_dlmb_1_READSTROBE,
      DLMB_ready => cpu_0_0_dlmb_1_READY,
      DLMB_ue => cpu_0_0_dlmb_1_UE,
      DLMB_wait => cpu_0_0_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => cpu_0_0_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => cpu_0_0_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => cpu_0_0_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => cpu_0_0_ilmb_1_ADDRSTROBE,
      ILMB_ce => cpu_0_0_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => cpu_0_0_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => cpu_0_0_ilmb_1_READSTROBE,
      ILMB_ready => cpu_0_0_ilmb_1_READY,
      ILMB_ue => cpu_0_0_ilmb_1_UE,
      ILMB_wait => cpu_0_0_ilmb_1_WAIT,
      LMB_Clk => cpu_1_1_x_Clk,
      SYS_Rst => rst_clk_wiz_50M_bus_struct_reset(0)
    );
cpu_0_1: component BD_microblaze_0_0
     port map (
      Byte_Enable(0 to 3) => cpu_0_1_dlmb_1_BE(0 to 3),
      Clk => cpu_1_1_x_Clk,
      DCE => cpu_0_1_dlmb_1_CE,
      DReady => cpu_0_1_dlmb_1_READY,
      DUE => cpu_0_1_dlmb_1_UE,
      DWait => cpu_0_1_dlmb_1_WAIT,
      D_AS => cpu_0_1_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => cpu_0_1_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => cpu_0_1_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => cpu_0_1_dlmb_1_WRITEDBUS(0 to 31),
      Dbg_Capture => cpu_0_1_debug_CAPTURE,
      Dbg_Clk => cpu_0_1_debug_CLK,
      Dbg_Disable => cpu_0_1_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => cpu_0_1_debug_REG_EN(0 to 7),
      Dbg_Shift => cpu_0_1_debug_SHIFT,
      Dbg_TDI => cpu_0_1_debug_TDI,
      Dbg_TDO => cpu_0_1_debug_TDO,
      Dbg_Update => cpu_0_1_debug_UPDATE,
      Debug_Rst => cpu_0_1_debug_RST,
      ICE => cpu_0_1_ilmb_1_CE,
      IFetch => cpu_0_1_ilmb_1_READSTROBE,
      IReady => cpu_0_1_ilmb_1_READY,
      IUE => cpu_0_1_ilmb_1_UE,
      IWAIT => cpu_0_1_ilmb_1_WAIT,
      I_AS => cpu_0_1_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => cpu_0_1_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => cpu_0_1_ilmb_1_ABUS(0 to 31),
      Interrupt => '0',
      Interrupt_Ack(0 to 1) => NLW_cpu_0_1_Interrupt_Ack_UNCONNECTED(0 to 1),
      Interrupt_Address(0 to 31) => B"00000000000000000000000000000000",
      M_AXI_DP_ARADDR(31 downto 0) => cpu_0_1_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => cpu_0_1_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => cpu_0_1_M_AXI_DP_ARREADY(0),
      M_AXI_DP_ARVALID => cpu_0_1_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => cpu_0_1_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => cpu_0_1_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => cpu_0_1_M_AXI_DP_AWREADY(0),
      M_AXI_DP_AWVALID => cpu_0_1_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => cpu_0_1_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => cpu_0_1_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => cpu_0_1_M_AXI_DP_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => cpu_0_1_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => cpu_0_1_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => cpu_0_1_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => cpu_0_1_M_AXI_DP_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => cpu_0_1_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => cpu_0_1_M_AXI_DP_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => cpu_0_1_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => cpu_0_1_M_AXI_DP_WVALID,
      Read_Strobe => cpu_0_1_dlmb_1_READSTROBE,
      Reset => rst_clk_wiz_50M_mb_reset,
      Write_Strobe => cpu_0_1_dlmb_1_WRITESTROBE
    );
cpu_0_1_axi_periph: entity work.BD_cpu_0_1_axi_periph_0
     port map (
      ACLK => cpu_1_1_x_Clk,
      ARESETN => rst_clk_wiz_50M_interconnect_aresetn(0),
      M00_ACLK => cpu_1_1_x_Clk,
      M00_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => cpu_0_1_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => cpu_0_1_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready(0) => cpu_0_1_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => cpu_0_1_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => cpu_0_1_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => cpu_0_1_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready(0) => cpu_0_1_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => cpu_0_1_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => cpu_0_1_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => cpu_0_1_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => cpu_0_1_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => cpu_0_1_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => cpu_0_1_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => cpu_0_1_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => cpu_0_1_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => cpu_0_1_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => cpu_0_1_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => cpu_0_1_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => cpu_0_1_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => cpu_1_1_x_Clk,
      M01_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => cpu_0_1_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => cpu_0_1_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => cpu_0_1_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => cpu_0_1_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => cpu_0_1_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => cpu_0_1_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => cpu_0_1_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => cpu_0_1_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => cpu_0_1_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => cpu_0_1_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => cpu_0_1_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => cpu_0_1_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => cpu_0_1_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => cpu_0_1_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => cpu_0_1_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => cpu_0_1_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => cpu_0_1_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => cpu_1_1_x_Clk,
      M02_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => cpu_0_1_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => cpu_0_1_axi_periph_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready(0) => cpu_0_1_axi_periph_M02_AXI_ARREADY(1),
      M02_AXI_arvalid(0) => cpu_0_1_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => cpu_0_1_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => cpu_0_1_axi_periph_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready(0) => cpu_0_1_axi_periph_M02_AXI_AWREADY(1),
      M02_AXI_awvalid(0) => cpu_0_1_axi_periph_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => cpu_0_1_axi_periph_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => cpu_0_1_axi_periph_M02_AXI_BRESP(3 downto 2),
      M02_AXI_bvalid(0) => cpu_0_1_axi_periph_M02_AXI_BVALID(1),
      M02_AXI_rdata(31 downto 0) => cpu_0_1_axi_periph_M02_AXI_RDATA(63 downto 32),
      M02_AXI_rready(0) => cpu_0_1_axi_periph_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => cpu_0_1_axi_periph_M02_AXI_RRESP(3 downto 2),
      M02_AXI_rvalid(0) => cpu_0_1_axi_periph_M02_AXI_RVALID(1),
      M02_AXI_wdata(31 downto 0) => cpu_0_1_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => cpu_0_1_axi_periph_M02_AXI_WREADY(1),
      M02_AXI_wstrb(3 downto 0) => cpu_0_1_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => cpu_0_1_axi_periph_M02_AXI_WVALID(0),
      S00_ACLK => cpu_1_1_x_Clk,
      S00_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => cpu_0_1_M_AXI_DP_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => cpu_0_1_M_AXI_DP_ARPROT(2 downto 0),
      S00_AXI_arready(0) => cpu_0_1_M_AXI_DP_ARREADY(0),
      S00_AXI_arvalid(0) => cpu_0_1_M_AXI_DP_ARVALID,
      S00_AXI_awaddr(31 downto 0) => cpu_0_1_M_AXI_DP_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => cpu_0_1_M_AXI_DP_AWPROT(2 downto 0),
      S00_AXI_awready(0) => cpu_0_1_M_AXI_DP_AWREADY(0),
      S00_AXI_awvalid(0) => cpu_0_1_M_AXI_DP_AWVALID,
      S00_AXI_bready(0) => cpu_0_1_M_AXI_DP_BREADY,
      S00_AXI_bresp(1 downto 0) => cpu_0_1_M_AXI_DP_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => cpu_0_1_M_AXI_DP_BVALID(0),
      S00_AXI_rdata(31 downto 0) => cpu_0_1_M_AXI_DP_RDATA(31 downto 0),
      S00_AXI_rready(0) => cpu_0_1_M_AXI_DP_RREADY,
      S00_AXI_rresp(1 downto 0) => cpu_0_1_M_AXI_DP_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => cpu_0_1_M_AXI_DP_RVALID(0),
      S00_AXI_wdata(31 downto 0) => cpu_0_1_M_AXI_DP_WDATA(31 downto 0),
      S00_AXI_wready(0) => cpu_0_1_M_AXI_DP_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => cpu_0_1_M_AXI_DP_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => cpu_0_1_M_AXI_DP_WVALID,
      S01_ACLK => cpu_1_1_x_Clk,
      S01_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => cpu_0_0_M_AXI_DP_ARADDR(31 downto 0),
      S01_AXI_arprot(2 downto 0) => cpu_0_0_M_AXI_DP_ARPROT(2 downto 0),
      S01_AXI_arready(0) => cpu_0_0_M_AXI_DP_ARREADY(0),
      S01_AXI_arvalid(0) => cpu_0_0_M_AXI_DP_ARVALID,
      S01_AXI_awaddr(31 downto 0) => cpu_0_0_M_AXI_DP_AWADDR(31 downto 0),
      S01_AXI_awprot(2 downto 0) => cpu_0_0_M_AXI_DP_AWPROT(2 downto 0),
      S01_AXI_awready(0) => cpu_0_0_M_AXI_DP_AWREADY(0),
      S01_AXI_awvalid(0) => cpu_0_0_M_AXI_DP_AWVALID,
      S01_AXI_bready(0) => cpu_0_0_M_AXI_DP_BREADY,
      S01_AXI_bresp(1 downto 0) => cpu_0_0_M_AXI_DP_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => cpu_0_0_M_AXI_DP_BVALID(0),
      S01_AXI_rdata(31 downto 0) => cpu_0_0_M_AXI_DP_RDATA(31 downto 0),
      S01_AXI_rready(0) => cpu_0_0_M_AXI_DP_RREADY,
      S01_AXI_rresp(1 downto 0) => cpu_0_0_M_AXI_DP_RRESP(1 downto 0),
      S01_AXI_rvalid(0) => cpu_0_0_M_AXI_DP_RVALID(0),
      S01_AXI_wdata(31 downto 0) => cpu_0_0_M_AXI_DP_WDATA(31 downto 0),
      S01_AXI_wready(0) => cpu_0_0_M_AXI_DP_WREADY(0),
      S01_AXI_wstrb(3 downto 0) => cpu_0_0_M_AXI_DP_WSTRB(3 downto 0),
      S01_AXI_wvalid(0) => cpu_0_0_M_AXI_DP_WVALID
    );
cpu_0_1_local_memory: entity work.cpu_0_1_local_memory_imp_1RKOY2F
     port map (
      DLMB_abus(0 to 31) => cpu_0_1_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => cpu_0_1_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => cpu_0_1_dlmb_1_BE(0 to 3),
      DLMB_ce => cpu_0_1_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => cpu_0_1_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => cpu_0_1_dlmb_1_READSTROBE,
      DLMB_ready => cpu_0_1_dlmb_1_READY,
      DLMB_ue => cpu_0_1_dlmb_1_UE,
      DLMB_wait => cpu_0_1_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => cpu_0_1_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => cpu_0_1_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => cpu_0_1_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => cpu_0_1_ilmb_1_ADDRSTROBE,
      ILMB_ce => cpu_0_1_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => cpu_0_1_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => cpu_0_1_ilmb_1_READSTROBE,
      ILMB_ready => cpu_0_1_ilmb_1_READY,
      ILMB_ue => cpu_0_1_ilmb_1_UE,
      ILMB_wait => cpu_0_1_ilmb_1_WAIT,
      LMB_Clk => cpu_1_1_x_Clk,
      SYS_Rst => rst_clk_wiz_50M_bus_struct_reset(0)
    );
cpu_1_0: component BD_cpu_0_1_0
     port map (
      Byte_Enable(0 to 3) => cpu_1_0_dlmb_1_BE(0 to 3),
      Clk => cpu_1_1_x_Clk,
      DCE => cpu_1_0_dlmb_1_CE,
      DReady => cpu_1_0_dlmb_1_READY,
      DUE => cpu_1_0_dlmb_1_UE,
      DWait => cpu_1_0_dlmb_1_WAIT,
      D_AS => cpu_1_0_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => cpu_1_0_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => cpu_1_0_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => cpu_1_0_dlmb_1_WRITEDBUS(0 to 31),
      Dbg_Capture => cpu_1_0_debug_CAPTURE,
      Dbg_Clk => cpu_1_0_debug_CLK,
      Dbg_Disable => cpu_1_0_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => cpu_1_0_debug_REG_EN(0 to 7),
      Dbg_Shift => cpu_1_0_debug_SHIFT,
      Dbg_TDI => cpu_1_0_debug_TDI,
      Dbg_TDO => cpu_1_0_debug_TDO,
      Dbg_Update => cpu_1_0_debug_UPDATE,
      Debug_Rst => cpu_1_0_debug_RST,
      ICE => cpu_1_0_ilmb_1_CE,
      IFetch => cpu_1_0_ilmb_1_READSTROBE,
      IReady => cpu_1_0_ilmb_1_READY,
      IUE => cpu_1_0_ilmb_1_UE,
      IWAIT => cpu_1_0_ilmb_1_WAIT,
      I_AS => cpu_1_0_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => cpu_1_0_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => cpu_1_0_ilmb_1_ABUS(0 to 31),
      Interrupt => '0',
      Interrupt_Ack(0 to 1) => NLW_cpu_1_0_Interrupt_Ack_UNCONNECTED(0 to 1),
      Interrupt_Address(0 to 31) => B"00000000000000000000000000000000",
      M_AXI_DP_ARADDR(31 downto 0) => cpu_1_0_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => cpu_1_0_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => cpu_1_0_M_AXI_DP_ARREADY(0),
      M_AXI_DP_ARVALID => cpu_1_0_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => cpu_1_0_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => cpu_1_0_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => cpu_1_0_M_AXI_DP_AWREADY(0),
      M_AXI_DP_AWVALID => cpu_1_0_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => cpu_1_0_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => cpu_1_0_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => cpu_1_0_M_AXI_DP_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => cpu_1_0_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => cpu_1_0_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => cpu_1_0_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => cpu_1_0_M_AXI_DP_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => cpu_1_0_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => cpu_1_0_M_AXI_DP_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => cpu_1_0_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => cpu_1_0_M_AXI_DP_WVALID,
      Read_Strobe => cpu_1_0_dlmb_1_READSTROBE,
      Reset => rst_clk_wiz_50M_mb_reset,
      Write_Strobe => cpu_1_0_dlmb_1_WRITESTROBE
    );
cpu_1_0_axi_periph: entity work.BD_cpu_1_0_axi_periph_0
     port map (
      ACLK => cpu_1_1_x_Clk,
      ARESETN => rst_clk_wiz_50M_interconnect_aresetn(0),
      M00_ACLK => cpu_1_1_x_Clk,
      M00_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => cpu_1_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => cpu_1_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready(0) => cpu_1_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => cpu_1_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => cpu_1_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => cpu_1_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready(0) => cpu_1_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => cpu_1_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => cpu_1_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => cpu_1_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => cpu_1_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => cpu_1_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => cpu_1_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => cpu_1_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => cpu_1_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => cpu_1_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => cpu_1_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => cpu_1_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => cpu_1_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => cpu_1_1_x_Clk,
      M01_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => cpu_1_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => cpu_1_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => cpu_1_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => cpu_1_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => cpu_1_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => cpu_1_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => cpu_1_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => cpu_1_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => cpu_1_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => cpu_1_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => cpu_1_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => cpu_1_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => cpu_1_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => cpu_1_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => cpu_1_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => cpu_1_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => cpu_1_0_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => cpu_1_1_x_Clk,
      M02_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => cpu_1_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => cpu_1_0_axi_periph_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready(0) => cpu_1_0_axi_periph_M02_AXI_ARREADY(2),
      M02_AXI_arvalid(0) => cpu_1_0_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => cpu_1_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => cpu_1_0_axi_periph_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready(0) => cpu_1_0_axi_periph_M02_AXI_AWREADY(2),
      M02_AXI_awvalid(0) => cpu_1_0_axi_periph_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => cpu_1_0_axi_periph_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => cpu_1_0_axi_periph_M02_AXI_BRESP(5 downto 4),
      M02_AXI_bvalid(0) => cpu_1_0_axi_periph_M02_AXI_BVALID(2),
      M02_AXI_rdata(31 downto 0) => cpu_1_0_axi_periph_M02_AXI_RDATA(95 downto 64),
      M02_AXI_rready(0) => cpu_1_0_axi_periph_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => cpu_1_0_axi_periph_M02_AXI_RRESP(5 downto 4),
      M02_AXI_rvalid(0) => cpu_1_0_axi_periph_M02_AXI_RVALID(2),
      M02_AXI_wdata(31 downto 0) => cpu_1_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => cpu_1_0_axi_periph_M02_AXI_WREADY(2),
      M02_AXI_wstrb(3 downto 0) => cpu_1_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => cpu_1_0_axi_periph_M02_AXI_WVALID(0),
      S00_ACLK => cpu_1_1_x_Clk,
      S00_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => cpu_1_0_M_AXI_DP_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => cpu_1_0_M_AXI_DP_ARPROT(2 downto 0),
      S00_AXI_arready(0) => cpu_1_0_M_AXI_DP_ARREADY(0),
      S00_AXI_arvalid(0) => cpu_1_0_M_AXI_DP_ARVALID,
      S00_AXI_awaddr(31 downto 0) => cpu_1_0_M_AXI_DP_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => cpu_1_0_M_AXI_DP_AWPROT(2 downto 0),
      S00_AXI_awready(0) => cpu_1_0_M_AXI_DP_AWREADY(0),
      S00_AXI_awvalid(0) => cpu_1_0_M_AXI_DP_AWVALID,
      S00_AXI_bready(0) => cpu_1_0_M_AXI_DP_BREADY,
      S00_AXI_bresp(1 downto 0) => cpu_1_0_M_AXI_DP_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => cpu_1_0_M_AXI_DP_BVALID(0),
      S00_AXI_rdata(31 downto 0) => cpu_1_0_M_AXI_DP_RDATA(31 downto 0),
      S00_AXI_rready(0) => cpu_1_0_M_AXI_DP_RREADY,
      S00_AXI_rresp(1 downto 0) => cpu_1_0_M_AXI_DP_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => cpu_1_0_M_AXI_DP_RVALID(0),
      S00_AXI_wdata(31 downto 0) => cpu_1_0_M_AXI_DP_WDATA(31 downto 0),
      S00_AXI_wready(0) => cpu_1_0_M_AXI_DP_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => cpu_1_0_M_AXI_DP_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => cpu_1_0_M_AXI_DP_WVALID,
      S01_ACLK => cpu_1_1_x_Clk,
      S01_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => cpu_1_0_x_M_AXI_DP_ARADDR(31 downto 0),
      S01_AXI_arprot(2 downto 0) => cpu_1_0_x_M_AXI_DP_ARPROT(2 downto 0),
      S01_AXI_arready => cpu_1_0_x_M_AXI_DP_ARREADY,
      S01_AXI_arvalid => cpu_1_0_x_M_AXI_DP_ARVALID,
      S01_AXI_awaddr(31 downto 0) => cpu_1_0_x_M_AXI_DP_AWADDR(31 downto 0),
      S01_AXI_awprot(2 downto 0) => cpu_1_0_x_M_AXI_DP_AWPROT(2 downto 0),
      S01_AXI_awready => cpu_1_0_x_M_AXI_DP_AWREADY,
      S01_AXI_awvalid => cpu_1_0_x_M_AXI_DP_AWVALID,
      S01_AXI_bready => cpu_1_0_x_M_AXI_DP_BREADY,
      S01_AXI_bresp(1 downto 0) => cpu_1_0_x_M_AXI_DP_BRESP(1 downto 0),
      S01_AXI_bvalid => cpu_1_0_x_M_AXI_DP_BVALID,
      S01_AXI_rdata(31 downto 0) => cpu_1_0_x_M_AXI_DP_RDATA(31 downto 0),
      S01_AXI_rready => cpu_1_0_x_M_AXI_DP_RREADY,
      S01_AXI_rresp(1 downto 0) => cpu_1_0_x_M_AXI_DP_RRESP(1 downto 0),
      S01_AXI_rvalid => cpu_1_0_x_M_AXI_DP_RVALID,
      S01_AXI_wdata(31 downto 0) => cpu_1_0_x_M_AXI_DP_WDATA(31 downto 0),
      S01_AXI_wready => cpu_1_0_x_M_AXI_DP_WREADY,
      S01_AXI_wstrb(3 downto 0) => cpu_1_0_x_M_AXI_DP_WSTRB(3 downto 0),
      S01_AXI_wvalid => cpu_1_0_x_M_AXI_DP_WVALID
    );
cpu_1_0_local_memory: entity work.cpu_1_0_local_memory_imp_19J6QYV
     port map (
      DLMB_abus(0 to 31) => cpu_1_0_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => cpu_1_0_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => cpu_1_0_dlmb_1_BE(0 to 3),
      DLMB_ce => cpu_1_0_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => cpu_1_0_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => cpu_1_0_dlmb_1_READSTROBE,
      DLMB_ready => cpu_1_0_dlmb_1_READY,
      DLMB_ue => cpu_1_0_dlmb_1_UE,
      DLMB_wait => cpu_1_0_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => cpu_1_0_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => cpu_1_0_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => cpu_1_0_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => cpu_1_0_ilmb_1_ADDRSTROBE,
      ILMB_ce => cpu_1_0_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => cpu_1_0_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => cpu_1_0_ilmb_1_READSTROBE,
      ILMB_ready => cpu_1_0_ilmb_1_READY,
      ILMB_ue => cpu_1_0_ilmb_1_UE,
      ILMB_wait => cpu_1_0_ilmb_1_WAIT,
      LMB_Clk => cpu_1_1_x_Clk,
      SYS_Rst => rst_clk_wiz_50M_bus_struct_reset(0)
    );
cpu_1_0_x: component BD_cpu_1_0_x_0
     port map (
      Byte_Enable(0 to 3) => cpu_1_0_x_dlmb_1_BE(0 to 3),
      Clk => cpu_1_1_x_Clk,
      DCE => cpu_1_0_x_dlmb_1_CE,
      DReady => cpu_1_0_x_dlmb_1_READY,
      DUE => cpu_1_0_x_dlmb_1_UE,
      DWait => cpu_1_0_x_dlmb_1_WAIT,
      D_AS => cpu_1_0_x_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => cpu_1_0_x_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => cpu_1_0_x_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => cpu_1_0_x_dlmb_1_WRITEDBUS(0 to 31),
      Dbg_Capture => cpu_1_0_x_debug_CAPTURE,
      Dbg_Clk => cpu_1_0_x_debug_CLK,
      Dbg_Disable => cpu_1_0_x_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => cpu_1_0_x_debug_REG_EN(0 to 7),
      Dbg_Shift => cpu_1_0_x_debug_SHIFT,
      Dbg_TDI => cpu_1_0_x_debug_TDI,
      Dbg_TDO => cpu_1_0_x_debug_TDO,
      Dbg_Update => cpu_1_0_x_debug_UPDATE,
      Debug_Rst => cpu_1_0_x_debug_RST,
      ICE => cpu_1_0_x_ilmb_1_CE,
      IFetch => cpu_1_0_x_ilmb_1_READSTROBE,
      IReady => cpu_1_0_x_ilmb_1_READY,
      IUE => cpu_1_0_x_ilmb_1_UE,
      IWAIT => cpu_1_0_x_ilmb_1_WAIT,
      I_AS => cpu_1_0_x_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => cpu_1_0_x_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => cpu_1_0_x_ilmb_1_ABUS(0 to 31),
      Interrupt => '0',
      Interrupt_Ack(0 to 1) => NLW_cpu_1_0_x_Interrupt_Ack_UNCONNECTED(0 to 1),
      Interrupt_Address(0 to 31) => B"00000000000000000000000000000000",
      M_AXI_DP_ARADDR(31 downto 0) => cpu_1_0_x_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => cpu_1_0_x_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => cpu_1_0_x_M_AXI_DP_ARREADY,
      M_AXI_DP_ARVALID => cpu_1_0_x_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => cpu_1_0_x_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => cpu_1_0_x_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => cpu_1_0_x_M_AXI_DP_AWREADY,
      M_AXI_DP_AWVALID => cpu_1_0_x_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => cpu_1_0_x_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => cpu_1_0_x_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => cpu_1_0_x_M_AXI_DP_BVALID,
      M_AXI_DP_RDATA(31 downto 0) => cpu_1_0_x_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => cpu_1_0_x_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => cpu_1_0_x_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => cpu_1_0_x_M_AXI_DP_RVALID,
      M_AXI_DP_WDATA(31 downto 0) => cpu_1_0_x_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => cpu_1_0_x_M_AXI_DP_WREADY,
      M_AXI_DP_WSTRB(3 downto 0) => cpu_1_0_x_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => cpu_1_0_x_M_AXI_DP_WVALID,
      Read_Strobe => cpu_1_0_x_dlmb_1_READSTROBE,
      Reset => rst_clk_wiz_50M_mb_reset,
      Write_Strobe => cpu_1_0_x_dlmb_1_WRITESTROBE
    );
cpu_1_0_x_local_memory: entity work.cpu_1_0_x_local_memory_imp_NYO7CG
     port map (
      DLMB_abus(0 to 31) => cpu_1_0_x_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => cpu_1_0_x_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => cpu_1_0_x_dlmb_1_BE(0 to 3),
      DLMB_ce => cpu_1_0_x_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => cpu_1_0_x_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => cpu_1_0_x_dlmb_1_READSTROBE,
      DLMB_ready => cpu_1_0_x_dlmb_1_READY,
      DLMB_ue => cpu_1_0_x_dlmb_1_UE,
      DLMB_wait => cpu_1_0_x_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => cpu_1_0_x_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => cpu_1_0_x_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => cpu_1_0_x_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => cpu_1_0_x_ilmb_1_ADDRSTROBE,
      ILMB_ce => cpu_1_0_x_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => cpu_1_0_x_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => cpu_1_0_x_ilmb_1_READSTROBE,
      ILMB_ready => cpu_1_0_x_ilmb_1_READY,
      ILMB_ue => cpu_1_0_x_ilmb_1_UE,
      ILMB_wait => cpu_1_0_x_ilmb_1_WAIT,
      LMB_Clk => cpu_1_1_x_Clk,
      SYS_Rst => rst_clk_wiz_50M_bus_struct_reset(0)
    );
cpu_1_1: component BD_cpu_1_0_0
     port map (
      Byte_Enable(0 to 3) => cpu_1_1_dlmb_1_BE(0 to 3),
      Clk => cpu_1_1_x_Clk,
      DCE => cpu_1_1_dlmb_1_CE,
      DReady => cpu_1_1_dlmb_1_READY,
      DUE => cpu_1_1_dlmb_1_UE,
      DWait => cpu_1_1_dlmb_1_WAIT,
      D_AS => cpu_1_1_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => cpu_1_1_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => cpu_1_1_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => cpu_1_1_dlmb_1_WRITEDBUS(0 to 31),
      Dbg_Capture => cpu_1_1_debug_CAPTURE,
      Dbg_Clk => cpu_1_1_debug_CLK,
      Dbg_Disable => cpu_1_1_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => cpu_1_1_debug_REG_EN(0 to 7),
      Dbg_Shift => cpu_1_1_debug_SHIFT,
      Dbg_TDI => cpu_1_1_debug_TDI,
      Dbg_TDO => cpu_1_1_debug_TDO,
      Dbg_Update => cpu_1_1_debug_UPDATE,
      Debug_Rst => cpu_1_1_debug_RST,
      ICE => cpu_1_1_ilmb_1_CE,
      IFetch => cpu_1_1_ilmb_1_READSTROBE,
      IReady => cpu_1_1_ilmb_1_READY,
      IUE => cpu_1_1_ilmb_1_UE,
      IWAIT => cpu_1_1_ilmb_1_WAIT,
      I_AS => cpu_1_1_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => cpu_1_1_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => cpu_1_1_ilmb_1_ABUS(0 to 31),
      Interrupt => '0',
      Interrupt_Ack(0 to 1) => NLW_cpu_1_1_Interrupt_Ack_UNCONNECTED(0 to 1),
      Interrupt_Address(0 to 31) => B"00000000000000000000000000000000",
      M_AXI_DP_ARADDR(31 downto 0) => cpu_1_1_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => cpu_1_1_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => cpu_1_1_M_AXI_DP_ARREADY(0),
      M_AXI_DP_ARVALID => cpu_1_1_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => cpu_1_1_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => cpu_1_1_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => cpu_1_1_M_AXI_DP_AWREADY(0),
      M_AXI_DP_AWVALID => cpu_1_1_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => cpu_1_1_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => cpu_1_1_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => cpu_1_1_M_AXI_DP_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => cpu_1_1_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => cpu_1_1_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => cpu_1_1_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => cpu_1_1_M_AXI_DP_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => cpu_1_1_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => cpu_1_1_M_AXI_DP_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => cpu_1_1_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => cpu_1_1_M_AXI_DP_WVALID,
      Read_Strobe => cpu_1_1_dlmb_1_READSTROBE,
      Reset => rst_clk_wiz_50M_mb_reset,
      Write_Strobe => cpu_1_1_dlmb_1_WRITESTROBE
    );
cpu_1_1_axi_periph: entity work.BD_cpu_1_1_axi_periph_0
     port map (
      ACLK => cpu_1_1_x_Clk,
      ARESETN => rst_clk_wiz_50M_interconnect_aresetn(0),
      M00_ACLK => cpu_1_1_x_Clk,
      M00_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => cpu_1_1_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => cpu_1_1_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready(0) => cpu_1_1_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => cpu_1_1_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => cpu_1_1_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => cpu_1_1_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready(0) => cpu_1_1_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => cpu_1_1_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => cpu_1_1_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => cpu_1_1_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => cpu_1_1_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => cpu_1_1_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => cpu_1_1_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => cpu_1_1_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => cpu_1_1_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => cpu_1_1_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => cpu_1_1_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => cpu_1_1_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => cpu_1_1_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => cpu_1_1_x_Clk,
      M01_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => cpu_1_1_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => cpu_1_1_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => cpu_1_1_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => cpu_1_1_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => cpu_1_1_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => cpu_1_1_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => cpu_1_1_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => cpu_1_1_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => cpu_1_1_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => cpu_1_1_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => cpu_1_1_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => cpu_1_1_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => cpu_1_1_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => cpu_1_1_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => cpu_1_1_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => cpu_1_1_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => cpu_1_1_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => cpu_1_1_x_Clk,
      M02_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => cpu_1_1_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => cpu_1_1_axi_periph_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready(0) => cpu_1_1_axi_periph_M02_AXI_ARREADY(3),
      M02_AXI_arvalid(0) => cpu_1_1_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => cpu_1_1_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => cpu_1_1_axi_periph_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready(0) => cpu_1_1_axi_periph_M02_AXI_AWREADY(3),
      M02_AXI_awvalid(0) => cpu_1_1_axi_periph_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => cpu_1_1_axi_periph_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => cpu_1_1_axi_periph_M02_AXI_BRESP(7 downto 6),
      M02_AXI_bvalid(0) => cpu_1_1_axi_periph_M02_AXI_BVALID(3),
      M02_AXI_rdata(31 downto 0) => cpu_1_1_axi_periph_M02_AXI_RDATA(127 downto 96),
      M02_AXI_rready(0) => cpu_1_1_axi_periph_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => cpu_1_1_axi_periph_M02_AXI_RRESP(7 downto 6),
      M02_AXI_rvalid(0) => cpu_1_1_axi_periph_M02_AXI_RVALID(3),
      M02_AXI_wdata(31 downto 0) => cpu_1_1_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => cpu_1_1_axi_periph_M02_AXI_WREADY(3),
      M02_AXI_wstrb(3 downto 0) => cpu_1_1_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => cpu_1_1_axi_periph_M02_AXI_WVALID(0),
      S00_ACLK => cpu_1_1_x_Clk,
      S00_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => cpu_1_1_M_AXI_DP_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => cpu_1_1_M_AXI_DP_ARPROT(2 downto 0),
      S00_AXI_arready(0) => cpu_1_1_M_AXI_DP_ARREADY(0),
      S00_AXI_arvalid(0) => cpu_1_1_M_AXI_DP_ARVALID,
      S00_AXI_awaddr(31 downto 0) => cpu_1_1_M_AXI_DP_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => cpu_1_1_M_AXI_DP_AWPROT(2 downto 0),
      S00_AXI_awready(0) => cpu_1_1_M_AXI_DP_AWREADY(0),
      S00_AXI_awvalid(0) => cpu_1_1_M_AXI_DP_AWVALID,
      S00_AXI_bready(0) => cpu_1_1_M_AXI_DP_BREADY,
      S00_AXI_bresp(1 downto 0) => cpu_1_1_M_AXI_DP_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => cpu_1_1_M_AXI_DP_BVALID(0),
      S00_AXI_rdata(31 downto 0) => cpu_1_1_M_AXI_DP_RDATA(31 downto 0),
      S00_AXI_rready(0) => cpu_1_1_M_AXI_DP_RREADY,
      S00_AXI_rresp(1 downto 0) => cpu_1_1_M_AXI_DP_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => cpu_1_1_M_AXI_DP_RVALID(0),
      S00_AXI_wdata(31 downto 0) => cpu_1_1_M_AXI_DP_WDATA(31 downto 0),
      S00_AXI_wready(0) => cpu_1_1_M_AXI_DP_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => cpu_1_1_M_AXI_DP_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => cpu_1_1_M_AXI_DP_WVALID,
      S01_ACLK => cpu_1_1_x_Clk,
      S01_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => cpu_1_1_x_M_AXI_DP_ARADDR(31 downto 0),
      S01_AXI_arprot(2 downto 0) => cpu_1_1_x_M_AXI_DP_ARPROT(2 downto 0),
      S01_AXI_arready => cpu_1_1_x_M_AXI_DP_ARREADY,
      S01_AXI_arvalid => cpu_1_1_x_M_AXI_DP_ARVALID,
      S01_AXI_awaddr(31 downto 0) => cpu_1_1_x_M_AXI_DP_AWADDR(31 downto 0),
      S01_AXI_awprot(2 downto 0) => cpu_1_1_x_M_AXI_DP_AWPROT(2 downto 0),
      S01_AXI_awready => cpu_1_1_x_M_AXI_DP_AWREADY,
      S01_AXI_awvalid => cpu_1_1_x_M_AXI_DP_AWVALID,
      S01_AXI_bready => cpu_1_1_x_M_AXI_DP_BREADY,
      S01_AXI_bresp(1 downto 0) => cpu_1_1_x_M_AXI_DP_BRESP(1 downto 0),
      S01_AXI_bvalid => cpu_1_1_x_M_AXI_DP_BVALID,
      S01_AXI_rdata(31 downto 0) => cpu_1_1_x_M_AXI_DP_RDATA(31 downto 0),
      S01_AXI_rready => cpu_1_1_x_M_AXI_DP_RREADY,
      S01_AXI_rresp(1 downto 0) => cpu_1_1_x_M_AXI_DP_RRESP(1 downto 0),
      S01_AXI_rvalid => cpu_1_1_x_M_AXI_DP_RVALID,
      S01_AXI_wdata(31 downto 0) => cpu_1_1_x_M_AXI_DP_WDATA(31 downto 0),
      S01_AXI_wready => cpu_1_1_x_M_AXI_DP_WREADY,
      S01_AXI_wstrb(3 downto 0) => cpu_1_1_x_M_AXI_DP_WSTRB(3 downto 0),
      S01_AXI_wvalid => cpu_1_1_x_M_AXI_DP_WVALID
    );
cpu_1_1_local_memory: entity work.cpu_1_1_local_memory_imp_2WC3H2
     port map (
      DLMB_abus(0 to 31) => cpu_1_1_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => cpu_1_1_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => cpu_1_1_dlmb_1_BE(0 to 3),
      DLMB_ce => cpu_1_1_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => cpu_1_1_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => cpu_1_1_dlmb_1_READSTROBE,
      DLMB_ready => cpu_1_1_dlmb_1_READY,
      DLMB_ue => cpu_1_1_dlmb_1_UE,
      DLMB_wait => cpu_1_1_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => cpu_1_1_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => cpu_1_1_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => cpu_1_1_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => cpu_1_1_ilmb_1_ADDRSTROBE,
      ILMB_ce => cpu_1_1_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => cpu_1_1_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => cpu_1_1_ilmb_1_READSTROBE,
      ILMB_ready => cpu_1_1_ilmb_1_READY,
      ILMB_ue => cpu_1_1_ilmb_1_UE,
      ILMB_wait => cpu_1_1_ilmb_1_WAIT,
      LMB_Clk => cpu_1_1_x_Clk,
      SYS_Rst => rst_clk_wiz_50M_bus_struct_reset(0)
    );
cpu_1_1_x: component BD_cpu_1_1_x_0
     port map (
      Byte_Enable(0 to 3) => cpu_1_1_x_dlmb_1_BE(0 to 3),
      Clk => cpu_1_1_x_Clk,
      DCE => cpu_1_1_x_dlmb_1_CE,
      DReady => cpu_1_1_x_dlmb_1_READY,
      DUE => cpu_1_1_x_dlmb_1_UE,
      DWait => cpu_1_1_x_dlmb_1_WAIT,
      D_AS => cpu_1_1_x_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => cpu_1_1_x_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => cpu_1_1_x_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => cpu_1_1_x_dlmb_1_WRITEDBUS(0 to 31),
      Dbg_Capture => cpu_1_1_x_debug_CAPTURE,
      Dbg_Clk => cpu_1_1_x_debug_CLK,
      Dbg_Disable => cpu_1_1_x_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => cpu_1_1_x_debug_REG_EN(0 to 7),
      Dbg_Shift => cpu_1_1_x_debug_SHIFT,
      Dbg_TDI => cpu_1_1_x_debug_TDI,
      Dbg_TDO => cpu_1_1_x_debug_TDO,
      Dbg_Update => cpu_1_1_x_debug_UPDATE,
      Debug_Rst => cpu_1_1_x_debug_RST,
      ICE => cpu_1_1_x_ilmb_1_CE,
      IFetch => cpu_1_1_x_ilmb_1_READSTROBE,
      IReady => cpu_1_1_x_ilmb_1_READY,
      IUE => cpu_1_1_x_ilmb_1_UE,
      IWAIT => cpu_1_1_x_ilmb_1_WAIT,
      I_AS => cpu_1_1_x_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => cpu_1_1_x_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => cpu_1_1_x_ilmb_1_ABUS(0 to 31),
      Interrupt => '0',
      Interrupt_Ack(0 to 1) => NLW_cpu_1_1_x_Interrupt_Ack_UNCONNECTED(0 to 1),
      Interrupt_Address(0 to 31) => B"00000000000000000000000000000000",
      M_AXI_DP_ARADDR(31 downto 0) => cpu_1_1_x_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => cpu_1_1_x_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => cpu_1_1_x_M_AXI_DP_ARREADY,
      M_AXI_DP_ARVALID => cpu_1_1_x_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => cpu_1_1_x_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => cpu_1_1_x_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => cpu_1_1_x_M_AXI_DP_AWREADY,
      M_AXI_DP_AWVALID => cpu_1_1_x_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => cpu_1_1_x_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => cpu_1_1_x_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => cpu_1_1_x_M_AXI_DP_BVALID,
      M_AXI_DP_RDATA(31 downto 0) => cpu_1_1_x_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => cpu_1_1_x_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => cpu_1_1_x_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => cpu_1_1_x_M_AXI_DP_RVALID,
      M_AXI_DP_WDATA(31 downto 0) => cpu_1_1_x_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => cpu_1_1_x_M_AXI_DP_WREADY,
      M_AXI_DP_WSTRB(3 downto 0) => cpu_1_1_x_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => cpu_1_1_x_M_AXI_DP_WVALID,
      Read_Strobe => cpu_1_1_x_dlmb_1_READSTROBE,
      Reset => rst_clk_wiz_50M_mb_reset,
      Write_Strobe => cpu_1_1_x_dlmb_1_WRITESTROBE
    );
cpu_1_1_x_local_memory: entity work.cpu_1_1_x_local_memory_imp_1FCJ9OX
     port map (
      DLMB_abus(0 to 31) => cpu_1_1_x_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => cpu_1_1_x_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => cpu_1_1_x_dlmb_1_BE(0 to 3),
      DLMB_ce => cpu_1_1_x_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => cpu_1_1_x_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => cpu_1_1_x_dlmb_1_READSTROBE,
      DLMB_ready => cpu_1_1_x_dlmb_1_READY,
      DLMB_ue => cpu_1_1_x_dlmb_1_UE,
      DLMB_wait => cpu_1_1_x_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => cpu_1_1_x_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => cpu_1_1_x_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => cpu_1_1_x_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => cpu_1_1_x_ilmb_1_ADDRSTROBE,
      ILMB_ce => cpu_1_1_x_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => cpu_1_1_x_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => cpu_1_1_x_ilmb_1_READSTROBE,
      ILMB_ready => cpu_1_1_x_ilmb_1_READY,
      ILMB_ue => cpu_1_1_x_ilmb_1_UE,
      ILMB_wait => cpu_1_1_x_ilmb_1_WAIT,
      LMB_Clk => cpu_1_1_x_Clk,
      SYS_Rst => rst_clk_wiz_50M_bus_struct_reset(0)
    );
kth_2DNoC_2x2x1_0: component BD_kth_2DNoC_2x2x1_0_0
     port map (
      From_NoC_0(55 downto 0) => kth_2DNoC_2x2x1_0_From_NoC_0(55 downto 0),
      From_NoC_1(55 downto 0) => kth_2DNoC_2x2x1_0_From_NoC_1(55 downto 0),
      From_NoC_2(55 downto 0) => kth_2DNoC_2x2x1_0_From_NoC_2(55 downto 0),
      From_NoC_3(55 downto 0) => kth_2DNoC_2x2x1_0_From_NoC_3(55 downto 0),
      HeartBeat_0 => kth_2DNoC_2x2x1_0_HeartBeat_0,
      HeartBeat_1 => kth_2DNoC_2x2x1_0_HeartBeat_1,
      HeartBeat_2 => kth_2DNoC_2x2x1_0_HeartBeat_2,
      HeartBeat_3 => kth_2DNoC_2x2x1_0_HeartBeat_3,
      Sync_0(1 downto 0) => kth_2DNoC_2x2x1_0_Sync_0(1 downto 0),
      Sync_1(1 downto 0) => kth_2DNoC_2x2x1_0_Sync_1(1 downto 0),
      Sync_2(1 downto 0) => kth_2DNoC_2x2x1_0_Sync_2(1 downto 0),
      Sync_3(1 downto 0) => kth_2DNoC_2x2x1_0_Sync_3(1 downto 0),
      To_NoC_0(55 downto 0) => kth_axi_rni_static_0_TO_NOC(55 downto 0),
      To_NoC_1(55 downto 0) => kth_axi_rni_static_1_TO_NOC(55 downto 0),
      To_NoC_2(55 downto 0) => kth_axi_rni_static_2_TO_NOC(55 downto 0),
      To_NoC_3(55 downto 0) => kth_axi_rni_static_3_TO_NOC(55 downto 0),
      clk => cpu_1_1_x_Clk,
      reset => sys_rst_peripheral_reset(0)
    );
kth_axi_rni_static_0: component BD_kth_axi_rni_static_0_0
     port map (
      FROM_NOC(55 downto 0) => kth_2DNoC_2x2x1_0_From_NoC_0(55 downto 0),
      HeartBeat => kth_2DNoC_2x2x1_0_HeartBeat_0,
      NoC_IRQ => NLW_kth_axi_rni_static_0_NoC_IRQ_UNCONNECTED,
      S_AXI_ACLK => cpu_1_1_x_Clk,
      S_AXI_ARADDR(31 downto 0) => cpu_0_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      S_AXI_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => cpu_0_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => cpu_0_0_axi_periph_M00_AXI_ARREADY,
      S_AXI_ARVALID => cpu_0_0_axi_periph_M00_AXI_ARVALID(0),
      S_AXI_AWADDR(31 downto 0) => cpu_0_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      S_AXI_AWPROT(2 downto 0) => cpu_0_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => cpu_0_0_axi_periph_M00_AXI_AWREADY,
      S_AXI_AWVALID => cpu_0_0_axi_periph_M00_AXI_AWVALID(0),
      S_AXI_BREADY => cpu_0_0_axi_periph_M00_AXI_BREADY(0),
      S_AXI_BRESP(1 downto 0) => cpu_0_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => cpu_0_0_axi_periph_M00_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => cpu_0_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => cpu_0_0_axi_periph_M00_AXI_RREADY(0),
      S_AXI_RRESP(1 downto 0) => cpu_0_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => cpu_0_0_axi_periph_M00_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => cpu_0_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => cpu_0_0_axi_periph_M00_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => cpu_0_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => cpu_0_0_axi_periph_M00_AXI_WVALID(0),
      Sync(1 downto 0) => kth_2DNoC_2x2x1_0_Sync_0(1 downto 0),
      TO_NOC(55 downto 0) => kth_axi_rni_static_0_TO_NOC(55 downto 0),
      dap_address(14 downto 0) => Ground_15_dout(14 downto 0),
      dap_byteenable(7 downto 0) => Ground_8_dout(7 downto 0),
      dap_read => Ground_1_dout(0),
      dap_readdata(63 downto 0) => NLW_kth_axi_rni_static_0_dap_readdata_UNCONNECTED(63 downto 0),
      dap_write => Ground_1_dout(0),
      dap_writedata(63 downto 0) => Ground_64_dout(63 downto 0)
    );
kth_axi_rni_static_1: component BD_kth_axi_rni_static_0_1
     port map (
      FROM_NOC(55 downto 0) => kth_2DNoC_2x2x1_0_From_NoC_1(55 downto 0),
      HeartBeat => kth_2DNoC_2x2x1_0_HeartBeat_1,
      NoC_IRQ => NLW_kth_axi_rni_static_1_NoC_IRQ_UNCONNECTED,
      S_AXI_ACLK => cpu_1_1_x_Clk,
      S_AXI_ARADDR(31 downto 0) => cpu_0_1_axi_periph_M00_AXI_ARADDR(31 downto 0),
      S_AXI_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => cpu_0_1_axi_periph_M00_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => cpu_0_1_axi_periph_M00_AXI_ARREADY,
      S_AXI_ARVALID => cpu_0_1_axi_periph_M00_AXI_ARVALID(0),
      S_AXI_AWADDR(31 downto 0) => cpu_0_1_axi_periph_M00_AXI_AWADDR(31 downto 0),
      S_AXI_AWPROT(2 downto 0) => cpu_0_1_axi_periph_M00_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => cpu_0_1_axi_periph_M00_AXI_AWREADY,
      S_AXI_AWVALID => cpu_0_1_axi_periph_M00_AXI_AWVALID(0),
      S_AXI_BREADY => cpu_0_1_axi_periph_M00_AXI_BREADY(0),
      S_AXI_BRESP(1 downto 0) => cpu_0_1_axi_periph_M00_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => cpu_0_1_axi_periph_M00_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => cpu_0_1_axi_periph_M00_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => cpu_0_1_axi_periph_M00_AXI_RREADY(0),
      S_AXI_RRESP(1 downto 0) => cpu_0_1_axi_periph_M00_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => cpu_0_1_axi_periph_M00_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => cpu_0_1_axi_periph_M00_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => cpu_0_1_axi_periph_M00_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => cpu_0_1_axi_periph_M00_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => cpu_0_1_axi_periph_M00_AXI_WVALID(0),
      Sync(1 downto 0) => kth_2DNoC_2x2x1_0_Sync_1(1 downto 0),
      TO_NOC(55 downto 0) => kth_axi_rni_static_1_TO_NOC(55 downto 0),
      dap_address(14 downto 0) => Ground_15_dout(14 downto 0),
      dap_byteenable(7 downto 0) => Ground_8_dout(7 downto 0),
      dap_read => Ground_1_dout(0),
      dap_readdata(63 downto 0) => NLW_kth_axi_rni_static_1_dap_readdata_UNCONNECTED(63 downto 0),
      dap_write => Ground_1_dout(0),
      dap_writedata(63 downto 0) => Ground_64_dout(63 downto 0)
    );
kth_axi_rni_static_2: component BD_kth_axi_rni_static_1_0
     port map (
      FROM_NOC(55 downto 0) => kth_2DNoC_2x2x1_0_From_NoC_2(55 downto 0),
      HeartBeat => kth_2DNoC_2x2x1_0_HeartBeat_2,
      NoC_IRQ => NLW_kth_axi_rni_static_2_NoC_IRQ_UNCONNECTED,
      S_AXI_ACLK => cpu_1_1_x_Clk,
      S_AXI_ARADDR(31 downto 0) => cpu_1_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      S_AXI_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => cpu_1_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => cpu_1_0_axi_periph_M00_AXI_ARREADY,
      S_AXI_ARVALID => cpu_1_0_axi_periph_M00_AXI_ARVALID(0),
      S_AXI_AWADDR(31 downto 0) => cpu_1_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      S_AXI_AWPROT(2 downto 0) => cpu_1_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => cpu_1_0_axi_periph_M00_AXI_AWREADY,
      S_AXI_AWVALID => cpu_1_0_axi_periph_M00_AXI_AWVALID(0),
      S_AXI_BREADY => cpu_1_0_axi_periph_M00_AXI_BREADY(0),
      S_AXI_BRESP(1 downto 0) => cpu_1_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => cpu_1_0_axi_periph_M00_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => cpu_1_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => cpu_1_0_axi_periph_M00_AXI_RREADY(0),
      S_AXI_RRESP(1 downto 0) => cpu_1_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => cpu_1_0_axi_periph_M00_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => cpu_1_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => cpu_1_0_axi_periph_M00_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => cpu_1_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => cpu_1_0_axi_periph_M00_AXI_WVALID(0),
      Sync(1 downto 0) => kth_2DNoC_2x2x1_0_Sync_2(1 downto 0),
      TO_NOC(55 downto 0) => kth_axi_rni_static_2_TO_NOC(55 downto 0),
      dap_address(14 downto 0) => Ground_15_dout(14 downto 0),
      dap_byteenable(7 downto 0) => Ground_8_dout(7 downto 0),
      dap_read => Ground_1_dout(0),
      dap_readdata(63 downto 0) => NLW_kth_axi_rni_static_2_dap_readdata_UNCONNECTED(63 downto 0),
      dap_write => Ground_1_dout(0),
      dap_writedata(63 downto 0) => Ground_64_dout(63 downto 0)
    );
kth_axi_rni_static_3: component BD_kth_axi_rni_static_2_0
     port map (
      FROM_NOC(55 downto 0) => kth_2DNoC_2x2x1_0_From_NoC_3(55 downto 0),
      HeartBeat => kth_2DNoC_2x2x1_0_HeartBeat_3,
      NoC_IRQ => NLW_kth_axi_rni_static_3_NoC_IRQ_UNCONNECTED,
      S_AXI_ACLK => cpu_1_1_x_Clk,
      S_AXI_ARADDR(31 downto 0) => cpu_1_1_axi_periph_M00_AXI_ARADDR(31 downto 0),
      S_AXI_ARESETN => rst_clk_wiz_50M_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => cpu_1_1_axi_periph_M00_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => cpu_1_1_axi_periph_M00_AXI_ARREADY,
      S_AXI_ARVALID => cpu_1_1_axi_periph_M00_AXI_ARVALID(0),
      S_AXI_AWADDR(31 downto 0) => cpu_1_1_axi_periph_M00_AXI_AWADDR(31 downto 0),
      S_AXI_AWPROT(2 downto 0) => cpu_1_1_axi_periph_M00_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => cpu_1_1_axi_periph_M00_AXI_AWREADY,
      S_AXI_AWVALID => cpu_1_1_axi_periph_M00_AXI_AWVALID(0),
      S_AXI_BREADY => cpu_1_1_axi_periph_M00_AXI_BREADY(0),
      S_AXI_BRESP(1 downto 0) => cpu_1_1_axi_periph_M00_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => cpu_1_1_axi_periph_M00_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => cpu_1_1_axi_periph_M00_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => cpu_1_1_axi_periph_M00_AXI_RREADY(0),
      S_AXI_RRESP(1 downto 0) => cpu_1_1_axi_periph_M00_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => cpu_1_1_axi_periph_M00_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => cpu_1_1_axi_periph_M00_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => cpu_1_1_axi_periph_M00_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => cpu_1_1_axi_periph_M00_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => cpu_1_1_axi_periph_M00_AXI_WVALID(0),
      Sync(1 downto 0) => kth_2DNoC_2x2x1_0_Sync_3(1 downto 0),
      TO_NOC(55 downto 0) => kth_axi_rni_static_3_TO_NOC(55 downto 0),
      dap_address(14 downto 0) => Ground_15_dout(14 downto 0),
      dap_byteenable(7 downto 0) => Ground_8_dout(7 downto 0),
      dap_read => Ground_1_dout(0),
      dap_readdata(63 downto 0) => NLW_kth_axi_rni_static_3_dap_readdata_UNCONNECTED(63 downto 0),
      dap_write => Ground_1_dout(0),
      dap_writedata(63 downto 0) => Ground_64_dout(63 downto 0)
    );
mdm_1: component BD_mdm_1_0
     port map (
      Dbg_Capture_0 => cpu_0_0_debug_CAPTURE,
      Dbg_Capture_1 => cpu_0_1_debug_CAPTURE,
      Dbg_Capture_2 => cpu_1_0_debug_CAPTURE,
      Dbg_Capture_3 => cpu_1_1_debug_CAPTURE,
      Dbg_Capture_4 => cpu_1_0_x_debug_CAPTURE,
      Dbg_Capture_5 => cpu_1_1_x_debug_CAPTURE,
      Dbg_Clk_0 => cpu_0_0_debug_CLK,
      Dbg_Clk_1 => cpu_0_1_debug_CLK,
      Dbg_Clk_2 => cpu_1_0_debug_CLK,
      Dbg_Clk_3 => cpu_1_1_debug_CLK,
      Dbg_Clk_4 => cpu_1_0_x_debug_CLK,
      Dbg_Clk_5 => cpu_1_1_x_debug_CLK,
      Dbg_Disable_0 => cpu_0_0_debug_DISABLE,
      Dbg_Disable_1 => cpu_0_1_debug_DISABLE,
      Dbg_Disable_2 => cpu_1_0_debug_DISABLE,
      Dbg_Disable_3 => cpu_1_1_debug_DISABLE,
      Dbg_Disable_4 => cpu_1_0_x_debug_DISABLE,
      Dbg_Disable_5 => cpu_1_1_x_debug_DISABLE,
      Dbg_Reg_En_0(0 to 7) => cpu_0_0_debug_REG_EN(0 to 7),
      Dbg_Reg_En_1(0 to 7) => cpu_0_1_debug_REG_EN(0 to 7),
      Dbg_Reg_En_2(0 to 7) => cpu_1_0_debug_REG_EN(0 to 7),
      Dbg_Reg_En_3(0 to 7) => cpu_1_1_debug_REG_EN(0 to 7),
      Dbg_Reg_En_4(0 to 7) => cpu_1_0_x_debug_REG_EN(0 to 7),
      Dbg_Reg_En_5(0 to 7) => cpu_1_1_x_debug_REG_EN(0 to 7),
      Dbg_Rst_0 => cpu_0_0_debug_RST,
      Dbg_Rst_1 => cpu_0_1_debug_RST,
      Dbg_Rst_2 => cpu_1_0_debug_RST,
      Dbg_Rst_3 => cpu_1_1_debug_RST,
      Dbg_Rst_4 => cpu_1_0_x_debug_RST,
      Dbg_Rst_5 => cpu_1_1_x_debug_RST,
      Dbg_Shift_0 => cpu_0_0_debug_SHIFT,
      Dbg_Shift_1 => cpu_0_1_debug_SHIFT,
      Dbg_Shift_2 => cpu_1_0_debug_SHIFT,
      Dbg_Shift_3 => cpu_1_1_debug_SHIFT,
      Dbg_Shift_4 => cpu_1_0_x_debug_SHIFT,
      Dbg_Shift_5 => cpu_1_1_x_debug_SHIFT,
      Dbg_TDI_0 => cpu_0_0_debug_TDI,
      Dbg_TDI_1 => cpu_0_1_debug_TDI,
      Dbg_TDI_2 => cpu_1_0_debug_TDI,
      Dbg_TDI_3 => cpu_1_1_debug_TDI,
      Dbg_TDI_4 => cpu_1_0_x_debug_TDI,
      Dbg_TDI_5 => cpu_1_1_x_debug_TDI,
      Dbg_TDO_0 => cpu_0_0_debug_TDO,
      Dbg_TDO_1 => cpu_0_1_debug_TDO,
      Dbg_TDO_2 => cpu_1_0_debug_TDO,
      Dbg_TDO_3 => cpu_1_1_debug_TDO,
      Dbg_TDO_4 => cpu_1_0_x_debug_TDO,
      Dbg_TDO_5 => cpu_1_1_x_debug_TDO,
      Dbg_Update_0 => cpu_0_0_debug_UPDATE,
      Dbg_Update_1 => cpu_0_1_debug_UPDATE,
      Dbg_Update_2 => cpu_1_0_debug_UPDATE,
      Dbg_Update_3 => cpu_1_1_debug_UPDATE,
      Dbg_Update_4 => cpu_1_0_x_debug_UPDATE,
      Dbg_Update_5 => cpu_1_1_x_debug_UPDATE,
      Debug_SYS_Rst => mdm_1_debug_sys_rst
    );
pio_0_0: component BD_axi_gpio_0_0
     port map (
      gpio2_io_i(0) => GPIO_SW_S_1,
      gpio_io_o(0) => pio_0_0_gpio_io_o(0),
      s_axi_aclk => cpu_1_1_x_Clk,
      s_axi_araddr(8 downto 0) => cpu_0_0_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_50M_peripheral_aresetn(0),
      s_axi_arready => cpu_0_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => cpu_0_0_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => cpu_0_0_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => cpu_0_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => cpu_0_0_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bready => cpu_0_0_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => cpu_0_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => cpu_0_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => cpu_0_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => cpu_0_0_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => cpu_0_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => cpu_0_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => cpu_0_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => cpu_0_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => cpu_0_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => cpu_0_0_axi_periph_M01_AXI_WVALID(0)
    );
pio_0_1: component BD_pio_0_0_0
     port map (
      gpio2_io_i(0) => GPIO_SW_N_1,
      gpio_io_o(0) => pio_0_1_gpio_io_o(0),
      s_axi_aclk => cpu_1_1_x_Clk,
      s_axi_araddr(8 downto 0) => cpu_0_1_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_50M_peripheral_aresetn(0),
      s_axi_arready => cpu_0_1_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => cpu_0_1_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => cpu_0_1_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => cpu_0_1_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => cpu_0_1_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bready => cpu_0_1_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => cpu_0_1_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => cpu_0_1_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => cpu_0_1_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => cpu_0_1_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => cpu_0_1_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => cpu_0_1_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => cpu_0_1_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => cpu_0_1_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => cpu_0_1_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => cpu_0_1_axi_periph_M01_AXI_WVALID(0)
    );
pio_1_0: component BD_pio_0_1_0
     port map (
      gpio2_io_i(0) => GPIO_DIP_SW0_1,
      gpio_io_o(0) => pio_1_0_gpio_io_o(0),
      s_axi_aclk => cpu_1_1_x_Clk,
      s_axi_araddr(8 downto 0) => cpu_1_0_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_50M_peripheral_aresetn(0),
      s_axi_arready => cpu_1_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => cpu_1_0_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => cpu_1_0_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => cpu_1_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => cpu_1_0_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bready => cpu_1_0_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => cpu_1_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => cpu_1_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => cpu_1_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => cpu_1_0_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => cpu_1_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => cpu_1_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => cpu_1_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => cpu_1_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => cpu_1_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => cpu_1_0_axi_periph_M01_AXI_WVALID(0)
    );
pio_1_1: component BD_pio_1_0_0
     port map (
      gpio2_io_i(0) => GPIO_DIP_SW1_1,
      gpio_io_o(0) => pio_1_1_gpio_io_o(0),
      s_axi_aclk => cpu_1_1_x_Clk,
      s_axi_araddr(8 downto 0) => cpu_1_1_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_50M_peripheral_aresetn(0),
      s_axi_arready => cpu_1_1_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => cpu_1_1_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => cpu_1_1_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => cpu_1_1_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => cpu_1_1_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bready => cpu_1_1_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => cpu_1_1_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => cpu_1_1_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => cpu_1_1_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => cpu_1_1_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => cpu_1_1_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => cpu_1_1_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => cpu_1_1_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => cpu_1_1_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => cpu_1_1_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => cpu_1_1_axi_periph_M01_AXI_WVALID(0)
    );
pio_dpr: component BD_pio_dpr_0
     port map (
      gpio2_io_i(0) => GPIO_SW_S_1,
      gpio_io_o(0) => pio_dpr_gpio_io_o(0),
      s_axi_aclk => cpu_1_1_x_Clk,
      s_axi_araddr(8 downto 0) => axi_crossbar_0_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_50M_peripheral_aresetn(0),
      s_axi_arready => axi_crossbar_0_M00_AXI_ARREADY,
      s_axi_arvalid => axi_crossbar_0_M00_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => axi_crossbar_0_M00_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_crossbar_0_M00_AXI_AWREADY,
      s_axi_awvalid => axi_crossbar_0_M00_AXI_AWVALID(0),
      s_axi_bready => axi_crossbar_0_M00_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => axi_crossbar_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_crossbar_0_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_crossbar_0_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_crossbar_0_M00_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => axi_crossbar_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_crossbar_0_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_crossbar_0_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_crossbar_0_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_crossbar_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_crossbar_0_M00_AXI_WVALID(0)
    );
processing_system7_0: component BD_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => NLW_processing_system7_0_FCLK_CLK0_UNCONNECTED,
      FCLK_RESET0_N => NLW_processing_system7_0_FCLK_RESET0_N_UNCONNECTED,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => cpu_1_1_x_Clk,
      M_AXI_GP0_ARADDR(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => S00_AXI_1_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => S00_AXI_1_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => S00_AXI_1_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => S00_AXI_1_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => S00_AXI_1_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => S00_AXI_1_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => S00_AXI_1_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => S00_AXI_1_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => S00_AXI_1_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => S00_AXI_1_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => S00_AXI_1_BID(11 downto 0),
      M_AXI_GP0_BREADY => S00_AXI_1_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => S00_AXI_1_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => S00_AXI_1_RID(11 downto 0),
      M_AXI_GP0_RLAST => S00_AXI_1_RLAST,
      M_AXI_GP0_RREADY => S00_AXI_1_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => S00_AXI_1_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => S00_AXI_1_WID(11 downto 0),
      M_AXI_GP0_WLAST => S00_AXI_1_WLAST,
      M_AXI_GP0_WREADY => S00_AXI_1_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => S00_AXI_1_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
sys_rst: component BD_rst_clk_wiz_50M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => rst_clk_wiz_50M_bus_struct_reset(0),
      dcm_locked => '1',
      ext_reset_in => '0',
      interconnect_aresetn(0) => rst_clk_wiz_50M_interconnect_aresetn(0),
      mb_debug_sys_rst => mdm_1_debug_sys_rst,
      mb_reset => rst_clk_wiz_50M_mb_reset,
      peripheral_aresetn(0) => rst_clk_wiz_50M_peripheral_aresetn(0),
      peripheral_reset(0) => sys_rst_peripheral_reset(0),
      slowest_sync_clk => cpu_1_1_x_Clk
    );
end STRUCTURE;
