-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
-- Date        : Mon Oct 31 17:12:17 2016
-- Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_kth_axi_rni_static_1_0_sim_netlist.vhdl
-- Design      : BD_kth_axi_rni_static_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  port (
    D : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \rni_readdata_delayed_reg[10]\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    dap_rni_select_reg : out STD_LOGIC;
    ipif_Bus2IP_RdCE : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    RAM_reg : out STD_LOGIC;
    RAM_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_in : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \command_reg_reg[0]\ : out STD_LOGIC;
    synchronize_flag_reg : out STD_LOGIC;
    \interrupt_reg_reg[0]\ : out STD_LOGIC;
    RAM_reg_1 : out STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    p_7_in : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    old_slave_read : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_AWVALID_0 : in STD_LOGIC;
    s_axi_rvalid_i_reg_0 : in STD_LOGIC;
    \S_AXI_AWADDR[2]\ : in STD_LOGIC;
    dap_read : in STD_LOGIC;
    dap_write : in STD_LOGIC;
    \S_AXI_AWADDR[8]\ : in STD_LOGIC;
    send_buffer_address1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dap_address : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dap_read_0 : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_1_out : in STD_LOGIC_VECTOR ( 21 downto 0 );
    p_3_out : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \dap_address[13]\ : in STD_LOGIC;
    \S_AXI_AWADDR[16]\ : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_RVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_BVALID : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  signal Bus_RNW_reg : STD_LOGIC;
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \^ram_reg\ : STD_LOGIC;
  signal \^ram_reg_1\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal ce_out_i : STD_LOGIC;
  signal \^command_reg_reg[0]\ : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \^dap_rni_select_reg\ : STD_LOGIC;
  signal ipif_Bus2IP_CS : STD_LOGIC;
  signal \^p_8_in\ : STD_LOGIC;
  signal \^rni_readdata_delayed_reg[10]\ : STD_LOGIC;
  signal s_axi_rvalid_i0 : STD_LOGIC;
  signal start : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].cs_out_i[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of S_AXI_ARREADY_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of S_AXI_WREADY_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \command_reg[13]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \interrupt_reg[3]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of old_slave_read_i_1 : label is "soft_lutpair2";
begin
  D(21 downto 0) <= \^d\(21 downto 0);
  RAM_reg <= \^ram_reg\;
  RAM_reg_1 <= \^ram_reg_1\;
  S_AXI_WREADY <= \^s_axi_wready\;
  \command_reg_reg[0]\ <= \^command_reg_reg[0]\;
  dap_rni_select_reg <= \^dap_rni_select_reg\;
  p_8_in <= \^p_8_in\;
  \rni_readdata_delayed_reg[10]\ <= \^rni_readdata_delayed_reg[10]\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF11110000"
    )
        port map (
      I0 => \state_reg[1]_0\(1),
      I1 => \state_reg[1]_0\(0),
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_ARVALID,
      I5 => Bus_RNW_reg,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => Bus_RNW_reg,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A000000CA0000"
    )
        port map (
      I0 => start,
      I1 => Bus_RNW_reg,
      I2 => ce_out_i,
      I3 => Q(0),
      I4 => S_AXI_ARESETN,
      I5 => old_slave_read,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\,
      Q => ce_out_i,
      R => '0'
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => ipif_Bus2IP_CS,
      I1 => start,
      I2 => cs_ce_clr,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111000"
    )
        port map (
      I0 => \state_reg[1]_0\(1),
      I1 => \state_reg[1]_0\(0),
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_ARVALID,
      O => start
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBF3FFF3"
    )
        port map (
      I0 => old_slave_read,
      I1 => S_AXI_ARESETN,
      I2 => Q(0),
      I3 => ce_out_i,
      I4 => Bus_RNW_reg,
      O => cs_ce_clr
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => ipif_Bus2IP_CS,
      R => '0'
    );
\RAM_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => dap_address(0),
      I1 => dap_read_0,
      I2 => S_AXI_AWADDR(0),
      I3 => S_AXI_ARVALID,
      I4 => S_AXI_ARADDR(0),
      I5 => \^ram_reg_1\,
      O => \^p_8_in\
    );
\RAM_reg_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB88888888888"
    )
        port map (
      I0 => dap_address(1),
      I1 => dap_read_0,
      I2 => S_AXI_ARADDR(1),
      I3 => S_AXI_ARVALID,
      I4 => S_AXI_AWADDR(1),
      I5 => ipif_Bus2IP_CS,
      O => p_7_in
    );
RAM_reg_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888A88"
    )
        port map (
      I0 => \^p_8_in\,
      I1 => dap_write,
      I2 => dap_read,
      I3 => ce_out_i,
      I4 => Bus_RNW_reg,
      O => RAM_reg_0(0)
    );
RAM_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AABA"
    )
        port map (
      I0 => dap_write,
      I1 => dap_read,
      I2 => ce_out_i,
      I3 => Bus_RNW_reg,
      I4 => \^ram_reg\,
      O => WEA(0)
    );
S_AXI_ARREADY_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => Q(0),
      I1 => Bus_RNW_reg,
      I2 => ce_out_i,
      I3 => old_slave_read,
      O => S_AXI_ARREADY
    );
S_AXI_WREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => Q(0),
      I1 => ce_out_i,
      I2 => Bus_RNW_reg,
      O => \^s_axi_wready\
    );
\command_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \S_AXI_AWADDR[8]\,
      I1 => \^dap_rni_select_reg\,
      I2 => \^command_reg_reg[0]\,
      I3 => send_buffer_address1(1),
      I4 => send_buffer_address1(0),
      O => E(0)
    );
\command_reg[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => ce_out_i,
      I2 => dap_read,
      I3 => dap_write,
      O => \^command_reg_reg[0]\
    );
dap_rni_select_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111110"
    )
        port map (
      I0 => \dap_address[13]\,
      I1 => \S_AXI_AWADDR[16]\,
      I2 => ipif_Bus2IP_CS,
      I3 => dap_read,
      I4 => dap_write,
      O => \^dap_rni_select_reg\
    );
\interrupt_reg[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888A88"
    )
        port map (
      I0 => \^dap_rni_select_reg\,
      I1 => dap_write,
      I2 => dap_read,
      I3 => ce_out_i,
      I4 => Bus_RNW_reg,
      O => \interrupt_reg_reg[0]\
    );
old_slave_read_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => ce_out_i,
      O => ipif_Bus2IP_RdCE
    );
\rni_readdata_delayed[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(0)
    );
\rni_readdata_delayed[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(1)
    );
\rni_readdata_delayed[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(2)
    );
\rni_readdata_delayed[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(3)
    );
\rni_readdata_delayed[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(4)
    );
\rni_readdata_delayed[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(5)
    );
\rni_readdata_delayed[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(6)
    );
\rni_readdata_delayed[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(7)
    );
\rni_readdata_delayed[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(8)
    );
\rni_readdata_delayed[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(9)
    );
\rni_readdata_delayed[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(10)
    );
\rni_readdata_delayed[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(11)
    );
\rni_readdata_delayed[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(12)
    );
\rni_readdata_delayed[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(13)
    );
\rni_readdata_delayed[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(14)
    );
\rni_readdata_delayed[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(15)
    );
\rni_readdata_delayed[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(16)
    );
\rni_readdata_delayed[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(17)
    );
\rni_readdata_delayed[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(18)
    );
\rni_readdata_delayed[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(19)
    );
\rni_readdata_delayed[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(20)
    );
\rni_readdata_delayed[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => \^rni_readdata_delayed_reg[10]\,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => \^d\(21)
    );
\rni_readdata_delayed[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888800000000"
    )
        port map (
      I0 => \S_AXI_AWADDR[2]\,
      I1 => dap_read,
      I2 => dap_write,
      I3 => Bus_RNW_reg,
      I4 => ce_out_i,
      I5 => \^dap_rni_select_reg\,
      O => \^rni_readdata_delayed_reg[10]\
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550C00"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \state_reg[1]_0\(1),
      I2 => \state_reg[1]_0\(0),
      I3 => \^s_axi_wready\,
      I4 => S_AXI_BVALID,
      O => s_axi_bvalid_i_reg
    );
\s_axi_rdata_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(0),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(0),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(0),
      O => \s_axi_rdata_i_reg[31]\(0)
    );
\s_axi_rdata_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(1),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(1),
      O => \s_axi_rdata_i_reg[31]\(1)
    );
\s_axi_rdata_i[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(2),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(2),
      O => \s_axi_rdata_i_reg[31]\(2)
    );
\s_axi_rdata_i[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(3),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(3),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(3),
      O => \s_axi_rdata_i_reg[31]\(3)
    );
\s_axi_rdata_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(4),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(4),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(4),
      O => \s_axi_rdata_i_reg[31]\(4)
    );
\s_axi_rdata_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(5),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(5),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(5),
      O => \s_axi_rdata_i_reg[31]\(5)
    );
\s_axi_rdata_i[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(6),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(6),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(6),
      O => \s_axi_rdata_i_reg[31]\(6)
    );
\s_axi_rdata_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(7),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(7),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(7),
      O => \s_axi_rdata_i_reg[31]\(7)
    );
\s_axi_rdata_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(8),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(8),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(8),
      O => \s_axi_rdata_i_reg[31]\(8)
    );
\s_axi_rdata_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(9),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(9),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(9),
      O => \s_axi_rdata_i_reg[31]\(9)
    );
\s_axi_rdata_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(10),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(10),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(10),
      O => \s_axi_rdata_i_reg[31]\(10)
    );
\s_axi_rdata_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(11),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(11),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(11),
      O => \s_axi_rdata_i_reg[31]\(11)
    );
\s_axi_rdata_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(12),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(12),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(12),
      O => \s_axi_rdata_i_reg[31]\(12)
    );
\s_axi_rdata_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(13),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(13),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(13),
      O => \s_axi_rdata_i_reg[31]\(13)
    );
\s_axi_rdata_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(14),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(14),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(14),
      O => \s_axi_rdata_i_reg[31]\(14)
    );
\s_axi_rdata_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(15),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(15),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(15),
      O => \s_axi_rdata_i_reg[31]\(15)
    );
\s_axi_rdata_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(16),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(16),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(16),
      O => \s_axi_rdata_i_reg[31]\(16)
    );
\s_axi_rdata_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(17),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(17),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(17),
      O => \s_axi_rdata_i_reg[31]\(17)
    );
\s_axi_rdata_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(18),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(18),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(18),
      O => \s_axi_rdata_i_reg[31]\(18)
    );
\s_axi_rdata_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(19),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(19),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(19),
      O => \s_axi_rdata_i_reg[31]\(19)
    );
\s_axi_rdata_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(20),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(20),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(20),
      O => \s_axi_rdata_i_reg[31]\(20)
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(21),
      I1 => \^dap_rni_select_reg\,
      I2 => \^ram_reg\,
      I3 => p_1_out(21),
      I4 => \^ram_reg_1\,
      I5 => p_3_out(21),
      O => \s_axi_rdata_i_reg[31]\(21)
    );
\s_axi_rdata_i[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000057F7FFFF57F7"
    )
        port map (
      I0 => ipif_Bus2IP_CS,
      I1 => S_AXI_AWADDR(1),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_ARADDR(1),
      I4 => dap_read_0,
      I5 => dap_address(1),
      O => \^ram_reg\
    );
\s_axi_rdata_i[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD5D0000FD5D"
    )
        port map (
      I0 => ipif_Bus2IP_CS,
      I1 => S_AXI_AWADDR(1),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_ARADDR(1),
      I4 => dap_read_0,
      I5 => dap_address(1),
      O => \^ram_reg_1\
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => s_axi_rvalid_i0,
      I2 => S_AXI_RVALID,
      O => s_axi_rvalid_i_reg
    );
s_axi_rvalid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF8000000000"
    )
        port map (
      I0 => old_slave_read,
      I1 => ce_out_i,
      I2 => Bus_RNW_reg,
      I3 => Q(0),
      I4 => \state_reg[1]_0\(1),
      I5 => \state_reg[1]_0\(0),
      O => s_axi_rvalid_i0
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBF83B38"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \state_reg[1]_0\(1),
      I2 => \state_reg[1]_0\(0),
      I3 => S_AXI_ARVALID,
      I4 => s_axi_rvalid_i_reg_0,
      O => \state_reg[1]\(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEAAEFAAEE"
    )
        port map (
      I0 => s_axi_rvalid_i0,
      I1 => \state_reg[1]_0\(1),
      I2 => S_AXI_ARVALID,
      I3 => \state_reg[1]_0\(0),
      I4 => S_AXI_AWVALID_0,
      I5 => s_axi_rvalid_i_reg_0,
      O => \state_reg[1]\(1)
    );
synchronize_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF040000"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => ce_out_i,
      I2 => dap_read,
      I3 => dap_write,
      I4 => \^dap_rni_select_reg\,
      I5 => \S_AXI_AWADDR[8]\,
      O => synchronize_flag_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generic_nios_to_3D_noc is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \channel_nr_reg[2]_0\ : out STD_LOGIC;
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    NoC_IRQ : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \s_axi_rdata_i_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \command_reg_reg[0]_0\ : out STD_LOGIC;
    \command_reg_reg[0]_1\ : out STD_LOGIC;
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RAM_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TO_NOC : out STD_LOGIC_VECTOR ( 47 downto 0 );
    HeartBeat : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    \S_AXI_AWADDR[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dap_read_0 : in STD_LOGIC;
    dap_address : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Sync : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \S_AXI_AWADDR[8]\ : in STD_LOGIC;
    \S_AXI_AWADDR[7]\ : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dap_write : in STD_LOGIC;
    dap_read : in STD_LOGIC;
    dap_writedata : in STD_LOGIC_VECTOR ( 13 downto 0 );
    rni_chipselect : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : in STD_LOGIC;
    RAM_reg_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \S_AXI_AWADDR[8]_0\ : in STD_LOGIC;
    dap_read_1 : in STD_LOGIC;
    FROM_NOC : in STD_LOGIC_VECTOR ( 43 downto 0 );
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC;
    Bus_RNW_reg_reg_1 : in STD_LOGIC;
    dap_read_2 : in STD_LOGIC;
    p_2_out : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generic_nios_to_3D_noc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generic_nios_to_3D_noc is
  signal \^addrardaddr\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CONV_INTEGER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \FSM_sequential_xmit_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_xmit_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_xmit_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_xmit_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_xmit_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_xmit_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \Flit_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \Flit_id[1]_i_1_n_0\ : STD_LOGIC;
  signal \Flit_id[1]_i_2_n_0\ : STD_LOGIC;
  signal \Flit_id_reg_n_0_[0]\ : STD_LOGIC;
  signal \Flit_id_reg_n_0_[1]\ : STD_LOGIC;
  signal \^noc_irq\ : STD_LOGIC;
  signal \^webwe\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \__6/i__n_0\ : STD_LOGIC;
  signal channel_nr : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^channel_nr_reg[2]_0\ : STD_LOGIC;
  signal \channel_status[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \channel_status[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \channel_status[0][1]_i_3_n_0\ : STD_LOGIC;
  signal \channel_status[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \channel_status[1][1]_i_3_n_0\ : STD_LOGIC;
  signal \channel_status[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[2][1]_i_2_n_0\ : STD_LOGIC;
  signal \channel_status[2][1]_i_3_n_0\ : STD_LOGIC;
  signal \channel_status[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[3][1]_i_2_n_0\ : STD_LOGIC;
  signal \channel_status[3][1]_i_3_n_0\ : STD_LOGIC;
  signal \channel_status[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[4][1]_i_2_n_0\ : STD_LOGIC;
  signal \channel_status[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[6][1]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status[7][1]_i_1_n_0\ : STD_LOGIC;
  signal \channel_status_reg[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \channel_status_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \channel_status_reg[2]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \channel_status_reg[3]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \channel_status_reg[4]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \channel_status_reg[5]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \channel_status_reg[6]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \channel_status_reg[7]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^command_reg_reg[0]_0\ : STD_LOGIC;
  signal \^command_reg_reg[0]_1\ : STD_LOGIC;
  signal \command_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \command_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \d_pid_reg[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \d_pid_reg[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \d_pid_reg[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \d_pid_reg[4]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \d_pid_reg[5]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \d_pid_reg[6]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_reg : STD_LOGIC;
  signal \data_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \delay[4]_i_3_n_0\ : STD_LOGIC;
  signal \delay_reg_n_0_[0]\ : STD_LOGIC;
  signal \delay_reg_n_0_[1]\ : STD_LOGIC;
  signal \delay_reg_n_0_[2]\ : STD_LOGIC;
  signal \delay_reg_n_0_[3]\ : STD_LOGIC;
  signal \delay_reg_n_0_[4]\ : STD_LOGIC;
  signal dest_col : STD_LOGIC;
  signal \dest_col_reg_n_0_[0]\ : STD_LOGIC;
  signal \dest_pid_reg_n_0_[0]\ : STD_LOGIC;
  signal \dest_pid_reg_n_0_[1]\ : STD_LOGIC;
  signal \dest_pid_reg_n_0_[2]\ : STD_LOGIC;
  signal \dest_pid_reg_n_0_[3]\ : STD_LOGIC;
  signal \dest_row_reg_n_0_[0]\ : STD_LOGIC;
  signal \global_clock[0]_i_2_n_0\ : STD_LOGIC;
  signal \global_clock[0]_i_3_n_0\ : STD_LOGIC;
  signal \global_clock[0]_i_4_n_0\ : STD_LOGIC;
  signal \global_clock[0]_i_5_n_0\ : STD_LOGIC;
  signal \global_clock[12]_i_2_n_0\ : STD_LOGIC;
  signal \global_clock[12]_i_3_n_0\ : STD_LOGIC;
  signal \global_clock[12]_i_4_n_0\ : STD_LOGIC;
  signal \global_clock[12]_i_5_n_0\ : STD_LOGIC;
  signal \global_clock[16]_i_2_n_0\ : STD_LOGIC;
  signal \global_clock[16]_i_3_n_0\ : STD_LOGIC;
  signal \global_clock[16]_i_4_n_0\ : STD_LOGIC;
  signal \global_clock[16]_i_5_n_0\ : STD_LOGIC;
  signal \global_clock[20]_i_2_n_0\ : STD_LOGIC;
  signal \global_clock[20]_i_3_n_0\ : STD_LOGIC;
  signal \global_clock[20]_i_4_n_0\ : STD_LOGIC;
  signal \global_clock[20]_i_5_n_0\ : STD_LOGIC;
  signal \global_clock[24]_i_2_n_0\ : STD_LOGIC;
  signal \global_clock[24]_i_3_n_0\ : STD_LOGIC;
  signal \global_clock[24]_i_4_n_0\ : STD_LOGIC;
  signal \global_clock[24]_i_5_n_0\ : STD_LOGIC;
  signal \global_clock[28]_i_2_n_0\ : STD_LOGIC;
  signal \global_clock[28]_i_3_n_0\ : STD_LOGIC;
  signal \global_clock[28]_i_4_n_0\ : STD_LOGIC;
  signal \global_clock[28]_i_5_n_0\ : STD_LOGIC;
  signal \global_clock[32]_i_2_n_0\ : STD_LOGIC;
  signal \global_clock[32]_i_3_n_0\ : STD_LOGIC;
  signal \global_clock[32]_i_4_n_0\ : STD_LOGIC;
  signal \global_clock[32]_i_5_n_0\ : STD_LOGIC;
  signal \global_clock[36]_i_2_n_0\ : STD_LOGIC;
  signal \global_clock[36]_i_3_n_0\ : STD_LOGIC;
  signal \global_clock[36]_i_4_n_0\ : STD_LOGIC;
  signal \global_clock[36]_i_5_n_0\ : STD_LOGIC;
  signal \global_clock[4]_i_2_n_0\ : STD_LOGIC;
  signal \global_clock[4]_i_3_n_0\ : STD_LOGIC;
  signal \global_clock[4]_i_4_n_0\ : STD_LOGIC;
  signal \global_clock[4]_i_5_n_0\ : STD_LOGIC;
  signal \global_clock[8]_i_2_n_0\ : STD_LOGIC;
  signal \global_clock[8]_i_3_n_0\ : STD_LOGIC;
  signal \global_clock[8]_i_4_n_0\ : STD_LOGIC;
  signal \global_clock[8]_i_5_n_0\ : STD_LOGIC;
  signal global_clock_reg : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal \global_clock_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \global_clock_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \global_clock_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \global_clock_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \global_clock_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \global_clock_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \global_clock_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \global_clock_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \global_clock_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \global_clock_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \global_clock_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \global_clock_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \global_clock_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \global_clock_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \global_clock_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \global_clock_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \global_clock_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \global_clock_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \global_clock_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \global_clock_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \global_clock_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \global_clock_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \global_clock_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \global_clock_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \global_clock_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \global_clock_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \global_clock_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \global_clock_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \global_clock_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \global_clock_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \global_clock_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \global_clock_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \global_clock_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \global_clock_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \global_clock_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \global_clock_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \global_clock_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \global_clock_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \global_clock_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \global_clock_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \global_clock_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \global_clock_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \global_clock_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \global_clock_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \global_clock_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \global_clock_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \global_clock_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \global_clock_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \global_clock_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \global_clock_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \global_clock_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \global_clock_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \global_clock_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \global_clock_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \global_clock_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \global_clock_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \global_clock_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \global_clock_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \global_clock_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \global_clock_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \global_clock_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \global_clock_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \global_clock_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \global_clock_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \global_clock_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \global_clock_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \global_clock_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \global_clock_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \global_clock_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \global_clock_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \global_clock_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \global_clock_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \global_clock_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \global_clock_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \global_clock_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \global_clock_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \global_clock_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \global_clock_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \global_clock_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \global_clock_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \interrupt[0]_i_1_n_0\ : STD_LOGIC;
  signal \interrupt[1]_i_1_n_0\ : STD_LOGIC;
  signal \interrupt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \interrupt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \interrupt_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \interrupt_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \interrupt_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \interrupt_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \interrupt_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \interrupt_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \interrupt_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \interrupt_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \interrupt_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \interrupt_reg_fifo_reg_n_0_[0]\ : STD_LOGIC;
  signal \interrupt_reg_n_0_[0]\ : STD_LOGIC;
  signal \interrupt_reg_n_0_[1]\ : STD_LOGIC;
  signal \interrupt_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \interrupt_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \interrupt_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal interrupt_request : STD_LOGIC;
  signal interrupt_request_i_1_n_0 : STD_LOGIC;
  signal \mem_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_address[1]_i_2_n_0\ : STD_LOGIC;
  signal \mem_address[1]_i_3_n_0\ : STD_LOGIC;
  signal \mem_address[1]_i_4_n_0\ : STD_LOGIC;
  signal \mem_address_reg_n_0_[0]\ : STD_LOGIC;
  signal \mem_address_reg_n_0_[1]\ : STD_LOGIC;
  signal \mem_address_reg_n_0_[2]\ : STD_LOGIC;
  signal \mem_address_reg_n_0_[3]\ : STD_LOGIC;
  signal \msg_length_reg[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \msg_length_reg[1]_2\ : STD_LOGIC;
  signal \msg_length_reg[2]_0\ : STD_LOGIC;
  signal \msg_length_reg[4]_1\ : STD_LOGIC;
  signal \msg_length_reg[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \msg_length_reg[6][1]_i_1_n_0\ : STD_LOGIC;
  signal \msg_length_reg_reg[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \msg_length_reg_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \msg_length_reg_reg[2]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \msg_length_reg_reg[4]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \msg_length_reg_reg[5]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \msg_length_reg_reg[6]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal old_heartbeat : STD_LOGIC;
  signal old_toggle_bit : STD_LOGIC;
  signal \outport[0]_i_1_n_0\ : STD_LOGIC;
  signal \outport[0]_i_2_n_0\ : STD_LOGIC;
  signal \outport[10]_i_1_n_0\ : STD_LOGIC;
  signal \outport[10]_i_2_n_0\ : STD_LOGIC;
  signal \outport[11]_i_1_n_0\ : STD_LOGIC;
  signal \outport[11]_i_2_n_0\ : STD_LOGIC;
  signal \outport[12]_i_1_n_0\ : STD_LOGIC;
  signal \outport[12]_i_2_n_0\ : STD_LOGIC;
  signal \outport[13]_i_1_n_0\ : STD_LOGIC;
  signal \outport[13]_i_2_n_0\ : STD_LOGIC;
  signal \outport[14]_i_1_n_0\ : STD_LOGIC;
  signal \outport[15]_i_1_n_0\ : STD_LOGIC;
  signal \outport[16]_i_1_n_0\ : STD_LOGIC;
  signal \outport[17]_i_1_n_0\ : STD_LOGIC;
  signal \outport[18]_i_1_n_0\ : STD_LOGIC;
  signal \outport[19]_i_1_n_0\ : STD_LOGIC;
  signal \outport[1]_i_1_n_0\ : STD_LOGIC;
  signal \outport[1]_i_2_n_0\ : STD_LOGIC;
  signal \outport[20]_i_1_n_0\ : STD_LOGIC;
  signal \outport[21]_i_1_n_0\ : STD_LOGIC;
  signal \outport[22]_i_1_n_0\ : STD_LOGIC;
  signal \outport[23]_i_1_n_0\ : STD_LOGIC;
  signal \outport[24]_i_1_n_0\ : STD_LOGIC;
  signal \outport[25]_i_1_n_0\ : STD_LOGIC;
  signal \outport[26]_i_1_n_0\ : STD_LOGIC;
  signal \outport[27]_i_1_n_0\ : STD_LOGIC;
  signal \outport[28]_i_1_n_0\ : STD_LOGIC;
  signal \outport[29]_i_1_n_0\ : STD_LOGIC;
  signal \outport[2]_i_1_n_0\ : STD_LOGIC;
  signal \outport[2]_i_2_n_0\ : STD_LOGIC;
  signal \outport[30]_i_1_n_0\ : STD_LOGIC;
  signal \outport[31]_i_1_n_0\ : STD_LOGIC;
  signal \outport[34]_i_1_n_0\ : STD_LOGIC;
  signal \outport[36]_i_1_n_0\ : STD_LOGIC;
  signal \outport[3]_i_1_n_0\ : STD_LOGIC;
  signal \outport[3]_i_2_n_0\ : STD_LOGIC;
  signal \outport[42]_i_1_n_0\ : STD_LOGIC;
  signal \outport[43]_i_1_n_0\ : STD_LOGIC;
  signal \outport[44]_i_1_n_0\ : STD_LOGIC;
  signal \outport[45]_i_1_n_0\ : STD_LOGIC;
  signal \outport[46]_i_1_n_0\ : STD_LOGIC;
  signal \outport[47]_i_1_n_0\ : STD_LOGIC;
  signal \outport[48]_i_1_n_0\ : STD_LOGIC;
  signal \outport[49]_i_1_n_0\ : STD_LOGIC;
  signal \outport[4]_i_1_n_0\ : STD_LOGIC;
  signal \outport[4]_i_2_n_0\ : STD_LOGIC;
  signal \outport[50]_i_1_n_0\ : STD_LOGIC;
  signal \outport[51]_i_1_n_0\ : STD_LOGIC;
  signal \outport[52]_i_1_n_0\ : STD_LOGIC;
  signal \outport[53]_i_1_n_0\ : STD_LOGIC;
  signal \outport[54]_i_1_n_0\ : STD_LOGIC;
  signal \outport[55]_i_2_n_0\ : STD_LOGIC;
  signal \outport[55]_i_3_n_0\ : STD_LOGIC;
  signal \outport[5]_i_1_n_0\ : STD_LOGIC;
  signal \outport[5]_i_2_n_0\ : STD_LOGIC;
  signal \outport[6]_i_1_n_0\ : STD_LOGIC;
  signal \outport[6]_i_2_n_0\ : STD_LOGIC;
  signal \outport[7]_i_1_n_0\ : STD_LOGIC;
  signal \outport[7]_i_2_n_0\ : STD_LOGIC;
  signal \outport[8]_i_1_n_0\ : STD_LOGIC;
  signal \outport[8]_i_2_n_0\ : STD_LOGIC;
  signal \outport[9]_i_1_n_0\ : STD_LOGIC;
  signal \outport[9]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in3_in : STD_LOGIC;
  signal p_1_in4_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \priority_reg_n_0_[4]\ : STD_LOGIC;
  signal \priority_reg_n_0_[5]\ : STD_LOGIC;
  signal \process_map[0][EW]__0\ : STD_LOGIC;
  signal \process_map[0][NS]__0\ : STD_LOGIC;
  signal \recv_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \recv_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \recv_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \recv_address[2]_i_2_n_0\ : STD_LOGIC;
  signal \recv_address[3]_i_2_n_0\ : STD_LOGIC;
  signal \recv_address[3]_i_3_n_0\ : STD_LOGIC;
  signal recv_buffer_write_i_1_n_0 : STD_LOGIC;
  signal \recv_counter[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \recv_counter[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \recv_counter[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \recv_counter[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \recv_counter[0][1]_i_3_n_0\ : STD_LOGIC;
  signal \recv_counter[0][1]_i_4_n_0\ : STD_LOGIC;
  signal \recv_counter[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \recv_counter[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \recv_counter[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \recv_counter[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \recv_counter[1][1]_i_3_n_0\ : STD_LOGIC;
  signal \recv_counter[1][1]_i_4_n_0\ : STD_LOGIC;
  signal \recv_counter[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \recv_counter[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \recv_counter[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \recv_counter[2][1]_i_2_n_0\ : STD_LOGIC;
  signal \recv_counter[2][1]_i_3_n_0\ : STD_LOGIC;
  signal \recv_counter[2][1]_i_4_n_0\ : STD_LOGIC;
  signal \recv_counter[2][1]_i_5_n_0\ : STD_LOGIC;
  signal \recv_counter[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \recv_counter[3][0]_i_2_n_0\ : STD_LOGIC;
  signal \recv_counter_reg[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \recv_counter_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \recv_counter_reg[2]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \recv_counter_reg[3]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal recv_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \recv_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \recv_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[0]_i_10_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[0]_i_2_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[0]_i_3_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[0]_i_4_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[0]_i_5_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[0]_i_6_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[0]_i_7_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[0]_i_8_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[0]_i_9_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[1]_i_2_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[1]_i_3_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[1]_i_4_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[1]_i_5_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[2]_i_2_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[2]_i_3_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[2]_i_4_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[2]_i_5_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[3]_i_2_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[3]_i_3_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[3]_i_4_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[3]_i_5_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[4]_i_2_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[4]_i_3_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[4]_i_4_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[5]_i_2_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[5]_i_3_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[5]_i_4_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[6]_i_2_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[6]_i_3_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[6]_i_4_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[7]_i_2_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[7]_i_3_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[7]_i_4_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[8]_i_2_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[8]_i_3_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[8]_i_4_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[9]_i_2_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[9]_i_3_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[9]_i_5_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[9]_i_6_n_0\ : STD_LOGIC;
  signal rni_writedata : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \s_pid_reg[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \s_pid_reg[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \s_pid_reg[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \s_pid_reg[4]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \s_pid_reg[5]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \s_pid_reg[6]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal send_clock_i_1_n_0 : STD_LOGIC;
  signal send_clock_reg_n_0 : STD_LOGIC;
  signal send_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \send_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal slave_irq0 : STD_LOGIC;
  signal slave_irq_i_1_n_0 : STD_LOGIC;
  signal src_buffer : STD_LOGIC;
  signal \src_pid_reg_n_0_[0]\ : STD_LOGIC;
  signal \src_pid_reg_n_0_[1]\ : STD_LOGIC;
  signal \src_pid_reg_n_0_[2]\ : STD_LOGIC;
  signal \src_pid_reg_n_0_[3]\ : STD_LOGIC;
  signal synchronize_flag : STD_LOGIC;
  signal synchronize_flag_i_1_n_0 : STD_LOGIC;
  signal toggle_address : STD_LOGIC;
  signal \write_status_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xmit_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of xmit_state : signal is "yes";
  signal \NLW_global_clock_reg[36]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_xmit_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_xmit_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_xmit_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \channel_status[0][0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \channel_status[0][1]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \channel_status[1][1]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \channel_status[2][1]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \channel_status[3][1]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \channel_status[4][1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \command_reg[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \command_reg[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_reg[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_reg[11]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_reg[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_reg[13]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_reg[14]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_reg[15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_reg[16]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_reg[17]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_reg[18]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_reg[19]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_reg[20]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_reg[21]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_reg[22]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_reg[23]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_reg[24]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_reg[25]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_reg[26]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_reg[27]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_reg[28]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data_reg[29]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \data_reg[30]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_reg[31]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_reg[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_reg[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \interrupt[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \interrupt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \interrupt_reg[0]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \interrupt_reg[1]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \interrupt_reg[2]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \interrupt_reg[3]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \interrupt_reg[3]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \interrupt_reg[3]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of interrupt_request_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \process_map[0][EW]\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \process_map[0][NS]\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \recv_address[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \recv_address[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of recv_buffer_write_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \recv_counter[0][0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \recv_counter[0][1]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \recv_counter[0][1]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \recv_counter[1][0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \recv_counter[1][1]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \recv_counter[2][0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \recv_counter[2][1]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \recv_counter[2][1]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \recv_counter[2][1]_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \recv_counter[3][0]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \recv_state[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \recv_state[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[2]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[3]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[5]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[8]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rni_readdata_delayed[9]_i_1\ : label is "soft_lutpair39";
begin
  ADDRARDADDR(2 downto 0) <= \^addrardaddr\(2 downto 0);
  ADDRBWRADDR(3 downto 0) <= \^addrbwraddr\(3 downto 0);
  AR(0) <= \^ar\(0);
  D(9 downto 0) <= \^d\(9 downto 0);
  NoC_IRQ <= \^noc_irq\;
  WEBWE(0) <= \^webwe\(0);
  \channel_nr_reg[2]_0\ <= \^channel_nr_reg[2]_0\;
  \command_reg_reg[0]_0\ <= \^command_reg_reg[0]_0\;
  \command_reg_reg[0]_1\ <= \^command_reg_reg[0]_1\;
\FSM_sequential_xmit_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222E0000"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \FSM_sequential_xmit_state[2]_i_2_n_0\,
      I2 => xmit_state(2),
      I3 => xmit_state(0),
      I4 => S_AXI_ARESETN,
      O => \FSM_sequential_xmit_state[0]_i_1_n_0\
    );
\FSM_sequential_xmit_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222E2EE200000000"
    )
        port map (
      I0 => xmit_state(1),
      I1 => \FSM_sequential_xmit_state[2]_i_2_n_0\,
      I2 => xmit_state(2),
      I3 => xmit_state(1),
      I4 => xmit_state(0),
      I5 => S_AXI_ARESETN,
      O => \FSM_sequential_xmit_state[1]_i_1_n_0\
    );
\FSM_sequential_xmit_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => xmit_state(2),
      I1 => \FSM_sequential_xmit_state[2]_i_2_n_0\,
      I2 => \__6/i__n_0\,
      I3 => S_AXI_ARESETN,
      O => \FSM_sequential_xmit_state[2]_i_1_n_0\
    );
\FSM_sequential_xmit_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
        port map (
      I0 => \FSM_sequential_xmit_state[2]_i_3_n_0\,
      I1 => \^command_reg_reg[0]_1\,
      I2 => rni_chipselect,
      I3 => Bus_RNW_reg_reg_1,
      I4 => dap_read_2,
      I5 => \FSM_sequential_xmit_state[2]_i_5_n_0\,
      O => \FSM_sequential_xmit_state[2]_i_2_n_0\
    );
\FSM_sequential_xmit_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => xmit_state(1),
      I1 => xmit_state(0),
      O => \FSM_sequential_xmit_state[2]_i_3_n_0\
    );
\FSM_sequential_xmit_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0033B8CC"
    )
        port map (
      I0 => \delay[4]_i_3_n_0\,
      I1 => xmit_state(0),
      I2 => Sync(0),
      I3 => xmit_state(1),
      I4 => xmit_state(2),
      O => \FSM_sequential_xmit_state[2]_i_5_n_0\
    );
\FSM_sequential_xmit_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_xmit_state[0]_i_1_n_0\,
      Q => xmit_state(0),
      R => '0'
    );
\FSM_sequential_xmit_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_xmit_state[1]_i_1_n_0\,
      Q => xmit_state(1),
      R => '0'
    );
\FSM_sequential_xmit_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_sequential_xmit_state[2]_i_1_n_0\,
      Q => xmit_state(2),
      R => '0'
    );
\Flit_id[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0D00"
    )
        port map (
      I0 => \command_reg_reg_n_0_[0]\,
      I1 => xmit_state(1),
      I2 => xmit_state(2),
      I3 => \Flit_id[1]_i_2_n_0\,
      I4 => \Flit_id_reg_n_0_[0]\,
      O => \Flit_id[0]_i_1_n_0\
    );
\Flit_id[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF002E0000"
    )
        port map (
      I0 => \plusOp__0\(1),
      I1 => xmit_state(1),
      I2 => \Flit_id_reg_n_0_[0]\,
      I3 => xmit_state(2),
      I4 => \Flit_id[1]_i_2_n_0\,
      I5 => \Flit_id_reg_n_0_[1]\,
      O => \Flit_id[1]_i_1_n_0\
    );
\Flit_id[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002808"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => xmit_state(0),
      I2 => xmit_state(1),
      I3 => Sync(0),
      I4 => xmit_state(2),
      O => \Flit_id[1]_i_2_n_0\
    );
\Flit_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \Flit_id[0]_i_1_n_0\,
      Q => \Flit_id_reg_n_0_[0]\,
      R => '0'
    );
\Flit_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \Flit_id[1]_i_1_n_0\,
      Q => \Flit_id_reg_n_0_[1]\,
      R => '0'
    );
\RAM_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => dap_address(1),
      I1 => dap_write,
      I2 => dap_read,
      I3 => S_AXI_ARADDR(1),
      I4 => S_AXI_ARVALID,
      I5 => S_AXI_AWADDR(1),
      O => \^addrardaddr\(1)
    );
\RAM_reg_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA9595555A959"
    )
        port map (
      I0 => \^channel_nr_reg[2]_0\,
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_ARADDR(2),
      I4 => dap_read_0,
      I5 => dap_address(2),
      O => \^addrardaddr\(2)
    );
\RAM_reg_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => dap_address(0),
      I1 => dap_write,
      I2 => dap_read,
      I3 => S_AXI_ARADDR(0),
      I4 => S_AXI_ARVALID,
      I5 => S_AXI_AWADDR(0),
      O => \^addrardaddr\(0)
    );
\__6/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15000000"
    )
        port map (
      I0 => xmit_state(2),
      I1 => \^addrbwraddr\(0),
      I2 => \^addrbwraddr\(1),
      I3 => xmit_state(0),
      I4 => xmit_state(1),
      O => \__6/i__n_0\
    );
\channel_nr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \mem_address[1]_i_1_n_0\,
      D => \^channel_nr_reg[2]_0\,
      Q => channel_nr(2),
      R => '0'
    );
\channel_status[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => \channel_status[0][0]_i_2_n_0\,
      I1 => channel_nr(2),
      I2 => \mem_address_reg_n_0_[2]\,
      I3 => \mem_address_reg_n_0_[3]\,
      I4 => \channel_status[0][1]_i_2_n_0\,
      I5 => \channel_status_reg[0]\(0),
      O => \channel_status[0][0]_i_1_n_0\
    );
\channel_status[0][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => recv_state(1),
      I1 => recv_state(0),
      O => \channel_status[0][0]_i_2_n_0\
    );
\channel_status[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => interrupt_request_i_1_n_0,
      I1 => channel_nr(2),
      I2 => \mem_address_reg_n_0_[2]\,
      I3 => \mem_address_reg_n_0_[3]\,
      I4 => \channel_status[0][1]_i_2_n_0\,
      I5 => \channel_status_reg[0]\(1),
      O => \channel_status[0][1]_i_1_n_0\
    );
\channel_status[0][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => old_toggle_bit,
      I1 => \^channel_nr_reg[2]_0\,
      I2 => \interrupt_reg_fifo_reg_n_0_[0]\,
      I3 => \interrupt_reg_reg_n_0_[0]\,
      I4 => \channel_status[4][1]_i_2_n_0\,
      I5 => \channel_status[0][1]_i_3_n_0\,
      O => \channel_status[0][1]_i_2_n_0\
    );
\channel_status[0][1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \mem_address_reg_n_0_[3]\,
      I1 => \mem_address_reg_n_0_[2]\,
      I2 => channel_nr(2),
      O => \channel_status[0][1]_i_3_n_0\
    );
\channel_status[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => \channel_status[0][0]_i_2_n_0\,
      I1 => \mem_address_reg_n_0_[2]\,
      I2 => \mem_address_reg_n_0_[3]\,
      I3 => channel_nr(2),
      I4 => \channel_status[1][1]_i_2_n_0\,
      I5 => \channel_status_reg[1]\(0),
      O => \channel_status[1][0]_i_1_n_0\
    );
\channel_status[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => interrupt_request_i_1_n_0,
      I1 => \mem_address_reg_n_0_[2]\,
      I2 => \mem_address_reg_n_0_[3]\,
      I3 => channel_nr(2),
      I4 => \channel_status[1][1]_i_2_n_0\,
      I5 => \channel_status_reg[1]\(1),
      O => \channel_status[1][1]_i_1_n_0\
    );
\channel_status[1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F222F222F2FFFF"
    )
        port map (
      I0 => p_1_in2_in,
      I1 => \interrupt_reg_reg_n_0_[1]\,
      I2 => old_toggle_bit,
      I3 => \^channel_nr_reg[2]_0\,
      I4 => \channel_status[1][1]_i_3_n_0\,
      I5 => \channel_status[4][1]_i_2_n_0\,
      O => \channel_status[1][1]_i_2_n_0\
    );
\channel_status[1][1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => channel_nr(2),
      I1 => \mem_address_reg_n_0_[3]\,
      I2 => \mem_address_reg_n_0_[2]\,
      O => \channel_status[1][1]_i_3_n_0\
    );
\channel_status[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => \channel_status[0][0]_i_2_n_0\,
      I1 => \mem_address_reg_n_0_[3]\,
      I2 => \mem_address_reg_n_0_[2]\,
      I3 => channel_nr(2),
      I4 => \channel_status[2][1]_i_2_n_0\,
      I5 => \channel_status_reg[2]\(0),
      O => \channel_status[2][0]_i_1_n_0\
    );
\channel_status[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => interrupt_request_i_1_n_0,
      I1 => \mem_address_reg_n_0_[3]\,
      I2 => \mem_address_reg_n_0_[2]\,
      I3 => channel_nr(2),
      I4 => \channel_status[2][1]_i_2_n_0\,
      I5 => \channel_status_reg[2]\(1),
      O => \channel_status[2][1]_i_1_n_0\
    );
\channel_status[2][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F222F222F2FFFF"
    )
        port map (
      I0 => p_1_in3_in,
      I1 => \interrupt_reg_reg_n_0_[2]\,
      I2 => old_toggle_bit,
      I3 => \^channel_nr_reg[2]_0\,
      I4 => \channel_status[2][1]_i_3_n_0\,
      I5 => \channel_status[4][1]_i_2_n_0\,
      O => \channel_status[2][1]_i_2_n_0\
    );
\channel_status[2][1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => channel_nr(2),
      I1 => \mem_address_reg_n_0_[2]\,
      I2 => \mem_address_reg_n_0_[3]\,
      O => \channel_status[2][1]_i_3_n_0\
    );
\channel_status[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \channel_status[0][0]_i_2_n_0\,
      I1 => \mem_address_reg_n_0_[2]\,
      I2 => \mem_address_reg_n_0_[3]\,
      I3 => channel_nr(2),
      I4 => \channel_status[3][1]_i_2_n_0\,
      I5 => \channel_status_reg[3]\(0),
      O => \channel_status[3][0]_i_1_n_0\
    );
\channel_status[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => interrupt_request_i_1_n_0,
      I1 => \mem_address_reg_n_0_[2]\,
      I2 => \mem_address_reg_n_0_[3]\,
      I3 => channel_nr(2),
      I4 => \channel_status[3][1]_i_2_n_0\,
      I5 => \channel_status_reg[3]\(1),
      O => \channel_status[3][1]_i_1_n_0\
    );
\channel_status[3][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F222F222F2FFFF"
    )
        port map (
      I0 => p_1_in4_in,
      I1 => p_0_in_0,
      I2 => old_toggle_bit,
      I3 => \^channel_nr_reg[2]_0\,
      I4 => \channel_status[3][1]_i_3_n_0\,
      I5 => \channel_status[4][1]_i_2_n_0\,
      O => \channel_status[3][1]_i_2_n_0\
    );
\channel_status[3][1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => channel_nr(2),
      I1 => \mem_address_reg_n_0_[3]\,
      I2 => \mem_address_reg_n_0_[2]\,
      O => \channel_status[3][1]_i_3_n_0\
    );
\channel_status[4][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => recv_state(1),
      I1 => \mem_address_reg_n_0_[3]\,
      I2 => \mem_address_reg_n_0_[2]\,
      I3 => channel_nr(2),
      I4 => \channel_status[4][1]_i_2_n_0\,
      I5 => \channel_status_reg[4]\(0),
      O => \channel_status[4][0]_i_1_n_0\
    );
\channel_status[4][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF00000100"
    )
        port map (
      I0 => recv_state(1),
      I1 => \mem_address_reg_n_0_[3]\,
      I2 => \mem_address_reg_n_0_[2]\,
      I3 => channel_nr(2),
      I4 => \channel_status[4][1]_i_2_n_0\,
      I5 => \channel_status_reg[4]\(1),
      O => \channel_status[4][1]_i_1_n_0\
    );
\channel_status[4][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0EF"
    )
        port map (
      I0 => \mem_address_reg_n_0_[0]\,
      I1 => \mem_address_reg_n_0_[1]\,
      I2 => recv_state(0),
      I3 => recv_state(1),
      O => \channel_status[4][1]_i_2_n_0\
    );
\channel_status[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => recv_state(1),
      I1 => \mem_address_reg_n_0_[3]\,
      I2 => \mem_address_reg_n_0_[2]\,
      I3 => channel_nr(2),
      I4 => \channel_status[4][1]_i_2_n_0\,
      I5 => \channel_status_reg[5]\(0),
      O => \channel_status[5][0]_i_1_n_0\
    );
\channel_status[5][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00001000"
    )
        port map (
      I0 => recv_state(1),
      I1 => \mem_address_reg_n_0_[3]\,
      I2 => \mem_address_reg_n_0_[2]\,
      I3 => channel_nr(2),
      I4 => \channel_status[4][1]_i_2_n_0\,
      I5 => \channel_status_reg[5]\(1),
      O => \channel_status[5][1]_i_1_n_0\
    );
\channel_status[6][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => recv_state(1),
      I1 => \mem_address_reg_n_0_[2]\,
      I2 => \mem_address_reg_n_0_[3]\,
      I3 => channel_nr(2),
      I4 => \channel_status[4][1]_i_2_n_0\,
      I5 => \channel_status_reg[6]\(0),
      O => \channel_status[6][0]_i_1_n_0\
    );
\channel_status[6][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00001000"
    )
        port map (
      I0 => recv_state(1),
      I1 => \mem_address_reg_n_0_[2]\,
      I2 => \mem_address_reg_n_0_[3]\,
      I3 => channel_nr(2),
      I4 => \channel_status[4][1]_i_2_n_0\,
      I5 => \channel_status_reg[6]\(1),
      O => \channel_status[6][1]_i_1_n_0\
    );
\channel_status[7][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => recv_state(1),
      I1 => \mem_address_reg_n_0_[3]\,
      I2 => \mem_address_reg_n_0_[2]\,
      I3 => channel_nr(2),
      I4 => \channel_status[4][1]_i_2_n_0\,
      I5 => \channel_status_reg[7]\(0),
      O => \channel_status[7][0]_i_1_n_0\
    );
\channel_status[7][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00004000"
    )
        port map (
      I0 => recv_state(1),
      I1 => \mem_address_reg_n_0_[3]\,
      I2 => \mem_address_reg_n_0_[2]\,
      I3 => channel_nr(2),
      I4 => \channel_status[4][1]_i_2_n_0\,
      I5 => \channel_status_reg[7]\(1),
      O => \channel_status[7][1]_i_1_n_0\
    );
\channel_status_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[0][0]_i_1_n_0\,
      Q => \channel_status_reg[0]\(0)
    );
\channel_status_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[0][1]_i_1_n_0\,
      Q => \channel_status_reg[0]\(1)
    );
\channel_status_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[1][0]_i_1_n_0\,
      Q => \channel_status_reg[1]\(0)
    );
\channel_status_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[1][1]_i_1_n_0\,
      Q => \channel_status_reg[1]\(1)
    );
\channel_status_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[2][0]_i_1_n_0\,
      Q => \channel_status_reg[2]\(0)
    );
\channel_status_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[2][1]_i_1_n_0\,
      Q => \channel_status_reg[2]\(1)
    );
\channel_status_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[3][0]_i_1_n_0\,
      Q => \channel_status_reg[3]\(0)
    );
\channel_status_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[3][1]_i_1_n_0\,
      Q => \channel_status_reg[3]\(1)
    );
\channel_status_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[4][0]_i_1_n_0\,
      Q => \channel_status_reg[4]\(0)
    );
\channel_status_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[4][1]_i_1_n_0\,
      Q => \channel_status_reg[4]\(1)
    );
\channel_status_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[5][0]_i_1_n_0\,
      Q => \channel_status_reg[5]\(0)
    );
\channel_status_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[5][1]_i_1_n_0\,
      Q => \channel_status_reg[5]\(1)
    );
\channel_status_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[6][0]_i_1_n_0\,
      Q => \channel_status_reg[6]\(0)
    );
\channel_status_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[6][1]_i_1_n_0\,
      Q => \channel_status_reg[6]\(1)
    );
\channel_status_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[7][0]_i_1_n_0\,
      Q => \channel_status_reg[7]\(0)
    );
\channel_status_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \channel_status[7][1]_i_1_n_0\,
      Q => \channel_status_reg[7]\(1)
    );
\command_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => dap_writedata(0),
      I1 => dap_read,
      I2 => dap_write,
      I3 => S_AXI_WDATA(0),
      O => rni_writedata(0)
    );
\command_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(10),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(10),
      O => rni_writedata(10)
    );
\command_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(11),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(11),
      O => rni_writedata(11)
    );
\command_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(12),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(12),
      O => rni_writedata(12)
    );
\command_reg[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(13),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(13),
      O => rni_writedata(13)
    );
\command_reg[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^addrardaddr\(0),
      I1 => \^command_reg_reg[0]_0\,
      I2 => \^addrardaddr\(1),
      I3 => \S_AXI_AWADDR[7]\,
      I4 => \S_AXI_AWADDR[8]\,
      O => \^command_reg_reg[0]_1\
    );
\command_reg[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => dap_address(2),
      I1 => dap_write,
      I2 => dap_read,
      I3 => S_AXI_ARADDR(2),
      I4 => S_AXI_ARVALID,
      I5 => S_AXI_AWADDR(2),
      O => \^command_reg_reg[0]_0\
    );
\command_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => dap_writedata(1),
      I1 => dap_read,
      I2 => dap_write,
      I3 => S_AXI_WDATA(1),
      O => rni_writedata(1)
    );
\command_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(2),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(2),
      O => rni_writedata(2)
    );
\command_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(3),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(3),
      O => rni_writedata(3)
    );
\command_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(4),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(4),
      O => rni_writedata(4)
    );
\command_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(5),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(5),
      O => rni_writedata(5)
    );
\command_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(6),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(6),
      O => rni_writedata(6)
    );
\command_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(7),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(7),
      O => rni_writedata(7)
    );
\command_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(8),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(8),
      O => rni_writedata(8)
    );
\command_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => S_AXI_WDATA(9),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(9),
      O => rni_writedata(9)
    );
\command_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(0),
      Q => \command_reg_reg_n_0_[0]\
    );
\command_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(10),
      Q => p_2_in(2)
    );
\command_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(11),
      Q => p_2_in(3)
    );
\command_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(12),
      Q => p_1_in(0)
    );
\command_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(13),
      Q => p_1_in(1)
    );
\command_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(1),
      Q => \command_reg_reg_n_0_[1]\
    );
\command_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(2),
      Q => p_0_in(0)
    );
\command_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(3),
      Q => p_0_in(1)
    );
\command_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(4),
      Q => CONV_INTEGER(0)
    );
\command_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(5),
      Q => CONV_INTEGER(1)
    );
\command_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(6),
      Q => CONV_INTEGER(2)
    );
\command_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(7),
      Q => CONV_INTEGER(3)
    );
\command_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(8),
      Q => p_2_in(0)
    );
\command_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => E(0),
      CLR => \^ar\(0),
      D => rni_writedata(9),
      Q => p_2_in(1)
    );
\d_pid_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[0][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(10),
      Q => \d_pid_reg[0]\(0)
    );
\d_pid_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[0][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(11),
      Q => \d_pid_reg[0]\(1)
    );
\d_pid_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[0][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(12),
      Q => \d_pid_reg[0]\(2)
    );
\d_pid_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[0][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(13),
      Q => \d_pid_reg[0]\(3)
    );
\d_pid_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[1]_2\,
      CLR => \^ar\(0),
      D => FROM_NOC(10),
      Q => \d_pid_reg[1]\(0)
    );
\d_pid_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[1]_2\,
      CLR => \^ar\(0),
      D => FROM_NOC(11),
      Q => \d_pid_reg[1]\(1)
    );
\d_pid_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[1]_2\,
      CLR => \^ar\(0),
      D => FROM_NOC(12),
      Q => \d_pid_reg[1]\(2)
    );
\d_pid_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[1]_2\,
      CLR => \^ar\(0),
      D => FROM_NOC(13),
      Q => \d_pid_reg[1]\(3)
    );
\d_pid_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[2]_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(10),
      Q => \d_pid_reg[2]\(0)
    );
\d_pid_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[2]_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(11),
      Q => \d_pid_reg[2]\(1)
    );
\d_pid_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[2]_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(12),
      Q => \d_pid_reg[2]\(2)
    );
\d_pid_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[2]_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(13),
      Q => \d_pid_reg[2]\(3)
    );
\d_pid_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[4]_1\,
      CLR => \^ar\(0),
      D => FROM_NOC(10),
      Q => \d_pid_reg[4]\(0)
    );
\d_pid_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[4]_1\,
      CLR => \^ar\(0),
      D => FROM_NOC(11),
      Q => \d_pid_reg[4]\(1)
    );
\d_pid_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[4]_1\,
      CLR => \^ar\(0),
      D => FROM_NOC(12),
      Q => \d_pid_reg[4]\(2)
    );
\d_pid_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[4]_1\,
      CLR => \^ar\(0),
      D => FROM_NOC(13),
      Q => \d_pid_reg[4]\(3)
    );
\d_pid_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[5][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(10),
      Q => \d_pid_reg[5]\(0)
    );
\d_pid_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[5][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(11),
      Q => \d_pid_reg[5]\(1)
    );
\d_pid_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[5][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(12),
      Q => \d_pid_reg[5]\(2)
    );
\d_pid_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[5][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(13),
      Q => \d_pid_reg[5]\(3)
    );
\d_pid_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[6][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(10),
      Q => \d_pid_reg[6]\(0)
    );
\d_pid_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[6][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(11),
      Q => \d_pid_reg[6]\(1)
    );
\d_pid_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[6][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(12),
      Q => \d_pid_reg[6]\(2)
    );
\d_pid_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[6][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(13),
      Q => \d_pid_reg[6]\(3)
    );
\data_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(10),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[10]_i_1_n_0\
    );
\data_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(11),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[11]_i_1_n_0\
    );
\data_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(12),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[12]_i_1_n_0\
    );
\data_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(13),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[13]_i_1_n_0\
    );
\data_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(14),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[14]_i_1_n_0\
    );
\data_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(15),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[15]_i_1_n_0\
    );
\data_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(16),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[16]_i_1_n_0\
    );
\data_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(17),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[17]_i_1_n_0\
    );
\data_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(18),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[18]_i_1_n_0\
    );
\data_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(19),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[19]_i_1_n_0\
    );
\data_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(20),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[20]_i_1_n_0\
    );
\data_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(21),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[21]_i_1_n_0\
    );
\data_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(22),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[22]_i_1_n_0\
    );
\data_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(23),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[23]_i_1_n_0\
    );
\data_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(24),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[24]_i_1_n_0\
    );
\data_reg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(25),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[25]_i_1_n_0\
    );
\data_reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(26),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[26]_i_1_n_0\
    );
\data_reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(27),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[27]_i_1_n_0\
    );
\data_reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(28),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[28]_i_1_n_0\
    );
\data_reg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(29),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[29]_i_1_n_0\
    );
\data_reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(30),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[30]_i_1_n_0\
    );
\data_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(31),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[31]_i_1_n_0\
    );
\data_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(8),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[8]_i_1_n_0\
    );
\data_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => FROM_NOC(9),
      I1 => FROM_NOC(42),
      I2 => FROM_NOC(43),
      O => \data_reg[9]_i_1_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => FROM_NOC(0),
      Q => RAM_reg(0)
    );
\data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[10]_i_1_n_0\,
      Q => RAM_reg(10)
    );
\data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[11]_i_1_n_0\,
      Q => RAM_reg(11)
    );
\data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[12]_i_1_n_0\,
      Q => RAM_reg(12)
    );
\data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[13]_i_1_n_0\,
      Q => RAM_reg(13)
    );
\data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[14]_i_1_n_0\,
      Q => RAM_reg(14)
    );
\data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[15]_i_1_n_0\,
      Q => RAM_reg(15)
    );
\data_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[16]_i_1_n_0\,
      Q => RAM_reg(16)
    );
\data_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[17]_i_1_n_0\,
      Q => RAM_reg(17)
    );
\data_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[18]_i_1_n_0\,
      Q => RAM_reg(18)
    );
\data_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[19]_i_1_n_0\,
      Q => RAM_reg(19)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => FROM_NOC(1),
      Q => RAM_reg(1)
    );
\data_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[20]_i_1_n_0\,
      Q => RAM_reg(20)
    );
\data_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[21]_i_1_n_0\,
      Q => RAM_reg(21)
    );
\data_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[22]_i_1_n_0\,
      Q => RAM_reg(22)
    );
\data_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[23]_i_1_n_0\,
      Q => RAM_reg(23)
    );
\data_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[24]_i_1_n_0\,
      Q => RAM_reg(24)
    );
\data_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[25]_i_1_n_0\,
      Q => RAM_reg(25)
    );
\data_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[26]_i_1_n_0\,
      Q => RAM_reg(26)
    );
\data_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[27]_i_1_n_0\,
      Q => RAM_reg(27)
    );
\data_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[28]_i_1_n_0\,
      Q => RAM_reg(28)
    );
\data_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[29]_i_1_n_0\,
      Q => RAM_reg(29)
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => FROM_NOC(2),
      Q => RAM_reg(2)
    );
\data_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[30]_i_1_n_0\,
      Q => RAM_reg(30)
    );
\data_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[31]_i_1_n_0\,
      Q => RAM_reg(31)
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => FROM_NOC(3),
      Q => RAM_reg(3)
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => FROM_NOC(4),
      Q => RAM_reg(4)
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => FROM_NOC(5),
      Q => RAM_reg(5)
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => FROM_NOC(6),
      Q => RAM_reg(6)
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => FROM_NOC(7),
      Q => RAM_reg(7)
    );
\data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[8]_i_1_n_0\,
      Q => RAM_reg(8)
    );
\data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \data_reg[9]_i_1_n_0\,
      Q => RAM_reg(9)
    );
\delay[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \delay_reg_n_0_[0]\,
      O => \delay[0]_i_1_n_0\
    );
\delay[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \delay_reg_n_0_[1]\,
      I2 => \delay_reg_n_0_[0]\,
      O => \delay[1]_i_1_n_0\
    );
\delay[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8882"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \delay_reg_n_0_[2]\,
      I2 => \delay_reg_n_0_[0]\,
      I3 => \delay_reg_n_0_[1]\,
      O => \delay[2]_i_1_n_0\
    );
\delay[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD7"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \delay_reg_n_0_[3]\,
      I2 => \delay_reg_n_0_[1]\,
      I3 => \delay_reg_n_0_[0]\,
      I4 => \delay_reg_n_0_[2]\,
      O => \delay[3]_i_1_n_0\
    );
\delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000740000000000"
    )
        port map (
      I0 => \delay[4]_i_3_n_0\,
      I1 => xmit_state(0),
      I2 => Sync(0),
      I3 => xmit_state(1),
      I4 => xmit_state(2),
      I5 => S_AXI_ARESETN,
      O => \delay[4]_i_1_n_0\
    );
\delay[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888882"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \delay_reg_n_0_[4]\,
      I2 => \delay_reg_n_0_[2]\,
      I3 => \delay_reg_n_0_[0]\,
      I4 => \delay_reg_n_0_[1]\,
      I5 => \delay_reg_n_0_[3]\,
      O => \delay[4]_i_2_n_0\
    );
\delay[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \delay_reg_n_0_[3]\,
      I1 => \delay_reg_n_0_[1]\,
      I2 => \delay_reg_n_0_[0]\,
      I3 => \delay_reg_n_0_[4]\,
      I4 => \delay_reg_n_0_[2]\,
      O => \delay[4]_i_3_n_0\
    );
\delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \delay[4]_i_1_n_0\,
      D => \delay[0]_i_1_n_0\,
      Q => \delay_reg_n_0_[0]\,
      R => '0'
    );
\delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \delay[4]_i_1_n_0\,
      D => \delay[1]_i_1_n_0\,
      Q => \delay_reg_n_0_[1]\,
      R => '0'
    );
\delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \delay[4]_i_1_n_0\,
      D => \delay[2]_i_1_n_0\,
      Q => \delay_reg_n_0_[2]\,
      R => '0'
    );
\delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \delay[4]_i_1_n_0\,
      D => \delay[3]_i_1_n_0\,
      Q => \delay_reg_n_0_[3]\,
      R => '0'
    );
\delay_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \delay[4]_i_1_n_0\,
      D => \delay[4]_i_2_n_0\,
      Q => \delay_reg_n_0_[4]\,
      R => '0'
    );
\dest_col[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => xmit_state(1),
      I2 => xmit_state(2),
      I3 => xmit_state(0),
      O => dest_col
    );
\dest_col_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => \process_map[0][NS]__0\,
      Q => \dest_col_reg_n_0_[0]\,
      R => '0'
    );
\dest_pid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => CONV_INTEGER(0),
      Q => \dest_pid_reg_n_0_[0]\,
      R => '0'
    );
\dest_pid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => CONV_INTEGER(1),
      Q => \dest_pid_reg_n_0_[1]\,
      R => '0'
    );
\dest_pid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => CONV_INTEGER(2),
      Q => \dest_pid_reg_n_0_[2]\,
      R => '0'
    );
\dest_pid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => CONV_INTEGER(3),
      Q => \dest_pid_reg_n_0_[3]\,
      R => '0'
    );
\dest_row_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => \process_map[0][EW]__0\,
      Q => \dest_row_reg_n_0_[0]\,
      R => '0'
    );
\global_clock[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(3),
      O => \global_clock[0]_i_2_n_0\
    );
\global_clock[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(2),
      O => \global_clock[0]_i_3_n_0\
    );
\global_clock[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(1),
      O => \global_clock[0]_i_4_n_0\
    );
\global_clock[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \global_clock_reg__0\(0),
      O => \global_clock[0]_i_5_n_0\
    );
\global_clock[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(15),
      O => \global_clock[12]_i_2_n_0\
    );
\global_clock[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(14),
      O => \global_clock[12]_i_3_n_0\
    );
\global_clock[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(13),
      O => \global_clock[12]_i_4_n_0\
    );
\global_clock[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(12),
      O => \global_clock[12]_i_5_n_0\
    );
\global_clock[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(19),
      O => \global_clock[16]_i_2_n_0\
    );
\global_clock[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(18),
      O => \global_clock[16]_i_3_n_0\
    );
\global_clock[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(17),
      O => \global_clock[16]_i_4_n_0\
    );
\global_clock[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(16),
      O => \global_clock[16]_i_5_n_0\
    );
\global_clock[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(23),
      O => \global_clock[20]_i_2_n_0\
    );
\global_clock[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(22),
      O => \global_clock[20]_i_3_n_0\
    );
\global_clock[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(21),
      O => \global_clock[20]_i_4_n_0\
    );
\global_clock[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(20),
      O => \global_clock[20]_i_5_n_0\
    );
\global_clock[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(27),
      O => \global_clock[24]_i_2_n_0\
    );
\global_clock[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(26),
      O => \global_clock[24]_i_3_n_0\
    );
\global_clock[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(25),
      O => \global_clock[24]_i_4_n_0\
    );
\global_clock[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(24),
      O => \global_clock[24]_i_5_n_0\
    );
\global_clock[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(31),
      O => \global_clock[28]_i_2_n_0\
    );
\global_clock[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(30),
      O => \global_clock[28]_i_3_n_0\
    );
\global_clock[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(29),
      O => \global_clock[28]_i_4_n_0\
    );
\global_clock[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(28),
      O => \global_clock[28]_i_5_n_0\
    );
\global_clock[32]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => global_clock_reg(35),
      O => \global_clock[32]_i_2_n_0\
    );
\global_clock[32]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => global_clock_reg(34),
      O => \global_clock[32]_i_3_n_0\
    );
\global_clock[32]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => global_clock_reg(33),
      O => \global_clock[32]_i_4_n_0\
    );
\global_clock[32]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => global_clock_reg(32),
      O => \global_clock[32]_i_5_n_0\
    );
\global_clock[36]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => global_clock_reg(39),
      O => \global_clock[36]_i_2_n_0\
    );
\global_clock[36]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => global_clock_reg(38),
      O => \global_clock[36]_i_3_n_0\
    );
\global_clock[36]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => global_clock_reg(37),
      O => \global_clock[36]_i_4_n_0\
    );
\global_clock[36]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => global_clock_reg(36),
      O => \global_clock[36]_i_5_n_0\
    );
\global_clock[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(7),
      O => \global_clock[4]_i_2_n_0\
    );
\global_clock[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(6),
      O => \global_clock[4]_i_3_n_0\
    );
\global_clock[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(5),
      O => \global_clock[4]_i_4_n_0\
    );
\global_clock[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(4),
      O => \global_clock[4]_i_5_n_0\
    );
\global_clock[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(11),
      O => \global_clock[8]_i_2_n_0\
    );
\global_clock[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(10),
      O => \global_clock[8]_i_3_n_0\
    );
\global_clock[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(9),
      O => \global_clock[8]_i_4_n_0\
    );
\global_clock[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \global_clock_reg__0\(8),
      O => \global_clock[8]_i_5_n_0\
    );
\global_clock_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[0]_i_1_n_7\,
      Q => \global_clock_reg__0\(0)
    );
\global_clock_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \global_clock_reg[0]_i_1_n_0\,
      CO(2) => \global_clock_reg[0]_i_1_n_1\,
      CO(1) => \global_clock_reg[0]_i_1_n_2\,
      CO(0) => \global_clock_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \global_clock_reg[0]_i_1_n_4\,
      O(2) => \global_clock_reg[0]_i_1_n_5\,
      O(1) => \global_clock_reg[0]_i_1_n_6\,
      O(0) => \global_clock_reg[0]_i_1_n_7\,
      S(3) => \global_clock[0]_i_2_n_0\,
      S(2) => \global_clock[0]_i_3_n_0\,
      S(1) => \global_clock[0]_i_4_n_0\,
      S(0) => \global_clock[0]_i_5_n_0\
    );
\global_clock_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[8]_i_1_n_5\,
      Q => \global_clock_reg__0\(10)
    );
\global_clock_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[8]_i_1_n_4\,
      Q => \global_clock_reg__0\(11)
    );
\global_clock_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[12]_i_1_n_7\,
      Q => \global_clock_reg__0\(12)
    );
\global_clock_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_clock_reg[8]_i_1_n_0\,
      CO(3) => \global_clock_reg[12]_i_1_n_0\,
      CO(2) => \global_clock_reg[12]_i_1_n_1\,
      CO(1) => \global_clock_reg[12]_i_1_n_2\,
      CO(0) => \global_clock_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_clock_reg[12]_i_1_n_4\,
      O(2) => \global_clock_reg[12]_i_1_n_5\,
      O(1) => \global_clock_reg[12]_i_1_n_6\,
      O(0) => \global_clock_reg[12]_i_1_n_7\,
      S(3) => \global_clock[12]_i_2_n_0\,
      S(2) => \global_clock[12]_i_3_n_0\,
      S(1) => \global_clock[12]_i_4_n_0\,
      S(0) => \global_clock[12]_i_5_n_0\
    );
\global_clock_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[12]_i_1_n_6\,
      Q => \global_clock_reg__0\(13)
    );
\global_clock_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[12]_i_1_n_5\,
      Q => \global_clock_reg__0\(14)
    );
\global_clock_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[12]_i_1_n_4\,
      Q => \global_clock_reg__0\(15)
    );
\global_clock_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[16]_i_1_n_7\,
      Q => \global_clock_reg__0\(16)
    );
\global_clock_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_clock_reg[12]_i_1_n_0\,
      CO(3) => \global_clock_reg[16]_i_1_n_0\,
      CO(2) => \global_clock_reg[16]_i_1_n_1\,
      CO(1) => \global_clock_reg[16]_i_1_n_2\,
      CO(0) => \global_clock_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_clock_reg[16]_i_1_n_4\,
      O(2) => \global_clock_reg[16]_i_1_n_5\,
      O(1) => \global_clock_reg[16]_i_1_n_6\,
      O(0) => \global_clock_reg[16]_i_1_n_7\,
      S(3) => \global_clock[16]_i_2_n_0\,
      S(2) => \global_clock[16]_i_3_n_0\,
      S(1) => \global_clock[16]_i_4_n_0\,
      S(0) => \global_clock[16]_i_5_n_0\
    );
\global_clock_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[16]_i_1_n_6\,
      Q => \global_clock_reg__0\(17)
    );
\global_clock_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[16]_i_1_n_5\,
      Q => \global_clock_reg__0\(18)
    );
\global_clock_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[16]_i_1_n_4\,
      Q => \global_clock_reg__0\(19)
    );
\global_clock_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[0]_i_1_n_6\,
      Q => \global_clock_reg__0\(1)
    );
\global_clock_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[20]_i_1_n_7\,
      Q => \global_clock_reg__0\(20)
    );
\global_clock_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_clock_reg[16]_i_1_n_0\,
      CO(3) => \global_clock_reg[20]_i_1_n_0\,
      CO(2) => \global_clock_reg[20]_i_1_n_1\,
      CO(1) => \global_clock_reg[20]_i_1_n_2\,
      CO(0) => \global_clock_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_clock_reg[20]_i_1_n_4\,
      O(2) => \global_clock_reg[20]_i_1_n_5\,
      O(1) => \global_clock_reg[20]_i_1_n_6\,
      O(0) => \global_clock_reg[20]_i_1_n_7\,
      S(3) => \global_clock[20]_i_2_n_0\,
      S(2) => \global_clock[20]_i_3_n_0\,
      S(1) => \global_clock[20]_i_4_n_0\,
      S(0) => \global_clock[20]_i_5_n_0\
    );
\global_clock_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[20]_i_1_n_6\,
      Q => \global_clock_reg__0\(21)
    );
\global_clock_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[20]_i_1_n_5\,
      Q => \global_clock_reg__0\(22)
    );
\global_clock_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[20]_i_1_n_4\,
      Q => \global_clock_reg__0\(23)
    );
\global_clock_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[24]_i_1_n_7\,
      Q => \global_clock_reg__0\(24)
    );
\global_clock_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_clock_reg[20]_i_1_n_0\,
      CO(3) => \global_clock_reg[24]_i_1_n_0\,
      CO(2) => \global_clock_reg[24]_i_1_n_1\,
      CO(1) => \global_clock_reg[24]_i_1_n_2\,
      CO(0) => \global_clock_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_clock_reg[24]_i_1_n_4\,
      O(2) => \global_clock_reg[24]_i_1_n_5\,
      O(1) => \global_clock_reg[24]_i_1_n_6\,
      O(0) => \global_clock_reg[24]_i_1_n_7\,
      S(3) => \global_clock[24]_i_2_n_0\,
      S(2) => \global_clock[24]_i_3_n_0\,
      S(1) => \global_clock[24]_i_4_n_0\,
      S(0) => \global_clock[24]_i_5_n_0\
    );
\global_clock_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[24]_i_1_n_6\,
      Q => \global_clock_reg__0\(25)
    );
\global_clock_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[24]_i_1_n_5\,
      Q => \global_clock_reg__0\(26)
    );
\global_clock_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[24]_i_1_n_4\,
      Q => \global_clock_reg__0\(27)
    );
\global_clock_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[28]_i_1_n_7\,
      Q => \global_clock_reg__0\(28)
    );
\global_clock_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_clock_reg[24]_i_1_n_0\,
      CO(3) => \global_clock_reg[28]_i_1_n_0\,
      CO(2) => \global_clock_reg[28]_i_1_n_1\,
      CO(1) => \global_clock_reg[28]_i_1_n_2\,
      CO(0) => \global_clock_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_clock_reg[28]_i_1_n_4\,
      O(2) => \global_clock_reg[28]_i_1_n_5\,
      O(1) => \global_clock_reg[28]_i_1_n_6\,
      O(0) => \global_clock_reg[28]_i_1_n_7\,
      S(3) => \global_clock[28]_i_2_n_0\,
      S(2) => \global_clock[28]_i_3_n_0\,
      S(1) => \global_clock[28]_i_4_n_0\,
      S(0) => \global_clock[28]_i_5_n_0\
    );
\global_clock_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[28]_i_1_n_6\,
      Q => \global_clock_reg__0\(29)
    );
\global_clock_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[0]_i_1_n_5\,
      Q => \global_clock_reg__0\(2)
    );
\global_clock_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[28]_i_1_n_5\,
      Q => \global_clock_reg__0\(30)
    );
\global_clock_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[28]_i_1_n_4\,
      Q => \global_clock_reg__0\(31)
    );
\global_clock_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[32]_i_1_n_7\,
      Q => global_clock_reg(32)
    );
\global_clock_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_clock_reg[28]_i_1_n_0\,
      CO(3) => \global_clock_reg[32]_i_1_n_0\,
      CO(2) => \global_clock_reg[32]_i_1_n_1\,
      CO(1) => \global_clock_reg[32]_i_1_n_2\,
      CO(0) => \global_clock_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_clock_reg[32]_i_1_n_4\,
      O(2) => \global_clock_reg[32]_i_1_n_5\,
      O(1) => \global_clock_reg[32]_i_1_n_6\,
      O(0) => \global_clock_reg[32]_i_1_n_7\,
      S(3) => \global_clock[32]_i_2_n_0\,
      S(2) => \global_clock[32]_i_3_n_0\,
      S(1) => \global_clock[32]_i_4_n_0\,
      S(0) => \global_clock[32]_i_5_n_0\
    );
\global_clock_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[32]_i_1_n_6\,
      Q => global_clock_reg(33)
    );
\global_clock_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[32]_i_1_n_5\,
      Q => global_clock_reg(34)
    );
\global_clock_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[32]_i_1_n_4\,
      Q => global_clock_reg(35)
    );
\global_clock_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[36]_i_1_n_7\,
      Q => global_clock_reg(36)
    );
\global_clock_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_clock_reg[32]_i_1_n_0\,
      CO(3) => \NLW_global_clock_reg[36]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \global_clock_reg[36]_i_1_n_1\,
      CO(1) => \global_clock_reg[36]_i_1_n_2\,
      CO(0) => \global_clock_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_clock_reg[36]_i_1_n_4\,
      O(2) => \global_clock_reg[36]_i_1_n_5\,
      O(1) => \global_clock_reg[36]_i_1_n_6\,
      O(0) => \global_clock_reg[36]_i_1_n_7\,
      S(3) => \global_clock[36]_i_2_n_0\,
      S(2) => \global_clock[36]_i_3_n_0\,
      S(1) => \global_clock[36]_i_4_n_0\,
      S(0) => \global_clock[36]_i_5_n_0\
    );
\global_clock_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[36]_i_1_n_6\,
      Q => global_clock_reg(37)
    );
\global_clock_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[36]_i_1_n_5\,
      Q => global_clock_reg(38)
    );
\global_clock_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[36]_i_1_n_4\,
      Q => global_clock_reg(39)
    );
\global_clock_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[0]_i_1_n_4\,
      Q => \global_clock_reg__0\(3)
    );
\global_clock_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[4]_i_1_n_7\,
      Q => \global_clock_reg__0\(4)
    );
\global_clock_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_clock_reg[0]_i_1_n_0\,
      CO(3) => \global_clock_reg[4]_i_1_n_0\,
      CO(2) => \global_clock_reg[4]_i_1_n_1\,
      CO(1) => \global_clock_reg[4]_i_1_n_2\,
      CO(0) => \global_clock_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_clock_reg[4]_i_1_n_4\,
      O(2) => \global_clock_reg[4]_i_1_n_5\,
      O(1) => \global_clock_reg[4]_i_1_n_6\,
      O(0) => \global_clock_reg[4]_i_1_n_7\,
      S(3) => \global_clock[4]_i_2_n_0\,
      S(2) => \global_clock[4]_i_3_n_0\,
      S(1) => \global_clock[4]_i_4_n_0\,
      S(0) => \global_clock[4]_i_5_n_0\
    );
\global_clock_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[4]_i_1_n_6\,
      Q => \global_clock_reg__0\(5)
    );
\global_clock_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[4]_i_1_n_5\,
      Q => \global_clock_reg__0\(6)
    );
\global_clock_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[4]_i_1_n_4\,
      Q => \global_clock_reg__0\(7)
    );
\global_clock_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[8]_i_1_n_7\,
      Q => \global_clock_reg__0\(8)
    );
\global_clock_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_clock_reg[4]_i_1_n_0\,
      CO(3) => \global_clock_reg[8]_i_1_n_0\,
      CO(2) => \global_clock_reg[8]_i_1_n_1\,
      CO(1) => \global_clock_reg[8]_i_1_n_2\,
      CO(0) => \global_clock_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_clock_reg[8]_i_1_n_4\,
      O(2) => \global_clock_reg[8]_i_1_n_5\,
      O(1) => \global_clock_reg[8]_i_1_n_6\,
      O(0) => \global_clock_reg[8]_i_1_n_7\,
      S(3) => \global_clock[8]_i_2_n_0\,
      S(2) => \global_clock[8]_i_3_n_0\,
      S(1) => \global_clock[8]_i_4_n_0\,
      S(0) => \global_clock[8]_i_5_n_0\
    );
\global_clock_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => \global_clock_reg[8]_i_1_n_6\,
      Q => \global_clock_reg__0\(9)
    );
\interrupt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \mem_address_reg_n_0_[2]\,
      I1 => \mem_address_reg_n_0_[0]\,
      I2 => \mem_address_reg_n_0_[1]\,
      I3 => recv_state(0),
      I4 => recv_state(1),
      O => \interrupt[0]_i_1_n_0\
    );
\interrupt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \mem_address_reg_n_0_[3]\,
      I1 => \mem_address_reg_n_0_[0]\,
      I2 => \mem_address_reg_n_0_[1]\,
      I3 => recv_state(0),
      I4 => recv_state(1),
      O => \interrupt[1]_i_1_n_0\
    );
\interrupt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \interrupt[0]_i_1_n_0\,
      Q => \interrupt_reg_n_0_[0]\
    );
\interrupt_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFAAAAAAAA"
    )
        port map (
      I0 => \interrupt_reg[0]_i_2_n_0\,
      I1 => \interrupt_reg[3]_i_4_n_0\,
      I2 => \interrupt_reg[3]_i_3_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I4 => \interrupt_reg[3]_i_6_n_0\,
      I5 => \interrupt_reg_reg_n_0_[0]\,
      O => \interrupt_reg[0]_i_1_n_0\
    );
\interrupt_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \interrupt_reg_n_0_[0]\,
      I1 => interrupt_request,
      I2 => \interrupt_reg_n_0_[1]\,
      O => \interrupt_reg[0]_i_2_n_0\
    );
\interrupt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \interrupt[1]_i_1_n_0\,
      Q => \interrupt_reg_n_0_[1]\
    );
\interrupt_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFAAAAAAAA"
    )
        port map (
      I0 => \interrupt_reg[1]_i_2_n_0\,
      I1 => \interrupt_reg[3]_i_4_n_0\,
      I2 => \interrupt_reg[3]_i_3_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I4 => \interrupt_reg[3]_i_6_n_0\,
      I5 => \interrupt_reg_reg_n_0_[1]\,
      O => \interrupt_reg[1]_i_1_n_0\
    );
\interrupt_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \interrupt_reg_n_0_[0]\,
      I1 => interrupt_request,
      I2 => \interrupt_reg_n_0_[1]\,
      O => \interrupt_reg[1]_i_2_n_0\
    );
\interrupt_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBFAAAAAAAA"
    )
        port map (
      I0 => \interrupt_reg[2]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I2 => \interrupt_reg[3]_i_6_n_0\,
      I3 => \interrupt_reg[3]_i_3_n_0\,
      I4 => \interrupt_reg[3]_i_4_n_0\,
      I5 => \interrupt_reg_reg_n_0_[2]\,
      O => \interrupt_reg[2]_i_1_n_0\
    );
\interrupt_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \interrupt_reg_n_0_[0]\,
      I1 => \interrupt_reg_n_0_[1]\,
      I2 => interrupt_request,
      O => \interrupt_reg[2]_i_2_n_0\
    );
\interrupt_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFAAAAAAAA"
    )
        port map (
      I0 => \interrupt_reg[3]_i_2_n_0\,
      I1 => \interrupt_reg[3]_i_3_n_0\,
      I2 => \interrupt_reg[3]_i_4_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I4 => \interrupt_reg[3]_i_6_n_0\,
      I5 => p_0_in_0,
      O => \interrupt_reg[3]_i_1_n_0\
    );
\interrupt_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \interrupt_reg_n_0_[0]\,
      I1 => \interrupt_reg_n_0_[1]\,
      I2 => interrupt_request,
      O => \interrupt_reg[3]_i_2_n_0\
    );
\interrupt_reg[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FD"
    )
        port map (
      I0 => S_AXI_WDATA(1),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(1),
      O => \interrupt_reg[3]_i_3_n_0\
    );
\interrupt_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \S_AXI_AWADDR[8]_0\,
      I1 => \^addrardaddr\(1),
      I2 => \^command_reg_reg[0]_0\,
      I3 => \^addrardaddr\(0),
      I4 => \S_AXI_AWADDR[3]\(0),
      I5 => \S_AXI_AWADDR[3]\(1),
      O => \interrupt_reg[3]_i_4_n_0\
    );
\interrupt_reg[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FD"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => dap_write,
      I2 => dap_read,
      I3 => dap_writedata(0),
      O => \interrupt_reg[3]_i_6_n_0\
    );
\interrupt_reg_fifo_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \interrupt_reg_reg_n_0_[0]\,
      Q => \interrupt_reg_fifo_reg_n_0_[0]\
    );
\interrupt_reg_fifo_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \interrupt_reg_reg_n_0_[1]\,
      Q => p_1_in2_in
    );
\interrupt_reg_fifo_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \interrupt_reg_reg_n_0_[2]\,
      Q => p_1_in3_in
    );
\interrupt_reg_fifo_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in_0,
      Q => p_1_in4_in
    );
\interrupt_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \interrupt_reg[0]_i_1_n_0\,
      Q => \interrupt_reg_reg_n_0_[0]\
    );
\interrupt_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \interrupt_reg[1]_i_1_n_0\,
      Q => \interrupt_reg_reg_n_0_[1]\
    );
\interrupt_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \interrupt_reg[2]_i_1_n_0\,
      Q => \interrupt_reg_reg_n_0_[2]\
    );
\interrupt_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \interrupt_reg[3]_i_1_n_0\,
      Q => p_0_in_0
    );
interrupt_request_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => recv_state(1),
      I1 => recv_state(0),
      I2 => \mem_address_reg_n_0_[1]\,
      I3 => \mem_address_reg_n_0_[0]\,
      O => interrupt_request_i_1_n_0
    );
interrupt_request_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => interrupt_request_i_1_n_0,
      Q => interrupt_request
    );
\mem_address[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \recv_counter_reg[3]\(0),
      I1 => \recv_counter_reg[2]\(0),
      I2 => \recv_address[3]_i_2_n_0\,
      I3 => \recv_counter_reg[1]\(0),
      I4 => \mem_address[1]_i_3_n_0\,
      I5 => \recv_counter_reg[0]\(0),
      O => \mem_address[0]_i_1_n_0\
    );
\mem_address[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => recv_state(1),
      I1 => recv_state(0),
      I2 => Sync(1),
      I3 => S_AXI_ARESETN,
      O => \mem_address[1]_i_1_n_0\
    );
\mem_address[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEFEFE0E0E0"
    )
        port map (
      I0 => \recv_counter_reg[2]\(1),
      I1 => \recv_address[2]_i_1_n_0\,
      I2 => \recv_address[3]_i_2_n_0\,
      I3 => \recv_counter_reg[1]\(1),
      I4 => \mem_address[1]_i_3_n_0\,
      I5 => \recv_counter_reg[0]\(1),
      O => \mem_address[1]_i_2_n_0\
    );
\mem_address[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => FROM_NOC(36),
      I1 => FROM_NOC(39),
      I2 => FROM_NOC(37),
      I3 => FROM_NOC(38),
      I4 => \mem_address[1]_i_4_n_0\,
      O => \mem_address[1]_i_3_n_0\
    );
\mem_address[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => FROM_NOC(34),
      I1 => FROM_NOC(35),
      I2 => FROM_NOC(33),
      I3 => FROM_NOC(32),
      O => \mem_address[1]_i_4_n_0\
    );
\mem_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \mem_address[1]_i_1_n_0\,
      D => \mem_address[0]_i_1_n_0\,
      Q => \mem_address_reg_n_0_[0]\,
      R => '0'
    );
\mem_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \mem_address[1]_i_1_n_0\,
      D => \mem_address[1]_i_2_n_0\,
      Q => \mem_address_reg_n_0_[1]\,
      R => '0'
    );
\mem_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \mem_address[1]_i_1_n_0\,
      D => \recv_address[2]_i_1_n_0\,
      Q => \mem_address_reg_n_0_[2]\,
      R => '0'
    );
\mem_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \mem_address[1]_i_1_n_0\,
      D => \recv_address[3]_i_2_n_0\,
      Q => \mem_address_reg_n_0_[3]\,
      R => '0'
    );
\msg_length_reg[0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^channel_nr_reg[2]_0\,
      I1 => \recv_counter[0][1]_i_4_n_0\,
      O => \msg_length_reg[0][1]_i_1_n_0\
    );
\msg_length_reg[1][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \recv_counter[1][1]_i_3_n_0\,
      I1 => \^channel_nr_reg[2]_0\,
      O => \msg_length_reg[1]_2\
    );
\msg_length_reg[2][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \recv_counter[2][1]_i_3_n_0\,
      I1 => \^channel_nr_reg[2]_0\,
      O => \msg_length_reg[2]_0\
    );
\msg_length_reg[4][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^channel_nr_reg[2]_0\,
      I1 => \recv_counter[0][1]_i_4_n_0\,
      O => \msg_length_reg[4]_1\
    );
\msg_length_reg[5][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \recv_counter[1][1]_i_3_n_0\,
      I1 => \^channel_nr_reg[2]_0\,
      O => \msg_length_reg[5][1]_i_1_n_0\
    );
\msg_length_reg[6][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \recv_counter[2][1]_i_3_n_0\,
      I1 => \^channel_nr_reg[2]_0\,
      O => \msg_length_reg[6][1]_i_1_n_0\
    );
\msg_length_reg_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[0][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(8),
      Q => \msg_length_reg_reg[0]\(0)
    );
\msg_length_reg_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[0][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(9),
      Q => \msg_length_reg_reg[0]\(1)
    );
\msg_length_reg_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[1]_2\,
      CLR => \^ar\(0),
      D => FROM_NOC(8),
      Q => \msg_length_reg_reg[1]\(0)
    );
\msg_length_reg_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[1]_2\,
      CLR => \^ar\(0),
      D => FROM_NOC(9),
      Q => \msg_length_reg_reg[1]\(1)
    );
\msg_length_reg_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[2]_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(8),
      Q => \msg_length_reg_reg[2]\(0)
    );
\msg_length_reg_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[2]_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(9),
      Q => \msg_length_reg_reg[2]\(1)
    );
\msg_length_reg_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[4]_1\,
      CLR => \^ar\(0),
      D => FROM_NOC(8),
      Q => \msg_length_reg_reg[4]\(0)
    );
\msg_length_reg_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[4]_1\,
      CLR => \^ar\(0),
      D => FROM_NOC(9),
      Q => \msg_length_reg_reg[4]\(1)
    );
\msg_length_reg_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[5][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(8),
      Q => \msg_length_reg_reg[5]\(0)
    );
\msg_length_reg_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[5][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(9),
      Q => \msg_length_reg_reg[5]\(1)
    );
\msg_length_reg_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[6][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(8),
      Q => \msg_length_reg_reg[6]\(0)
    );
\msg_length_reg_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[6][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(9),
      Q => \msg_length_reg_reg[6]\(1)
    );
old_GlobalSync_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => HeartBeat,
      Q => old_heartbeat
    );
\old_toggle_bit_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \^channel_nr_reg[2]_0\,
      Q => old_toggle_bit
    );
\outport[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(0),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(0),
      I4 => \outport[0]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[0]_i_1_n_0\
    );
\outport[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => global_clock_reg(32),
      O => \outport[0]_i_2_n_0\
    );
\outport[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(10),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(10),
      I4 => \outport[10]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[10]_i_1_n_0\
    );
\outport[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => CONV_INTEGER(0),
      O => \outport[10]_i_2_n_0\
    );
\outport[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(11),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(11),
      I4 => \outport[11]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[11]_i_1_n_0\
    );
\outport[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => CONV_INTEGER(1),
      O => \outport[11]_i_2_n_0\
    );
\outport[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(12),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(12),
      I4 => \outport[12]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[12]_i_1_n_0\
    );
\outport[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => CONV_INTEGER(2),
      O => \outport[12]_i_2_n_0\
    );
\outport[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(13),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(13),
      I4 => \outport[13]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[13]_i_1_n_0\
    );
\outport[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => CONV_INTEGER(3),
      O => \outport[13]_i_2_n_0\
    );
\outport[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(14),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(14),
      I4 => xmit_state(1),
      O => \outport[14]_i_1_n_0\
    );
\outport[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(15),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(15),
      I4 => xmit_state(1),
      O => \outport[15]_i_1_n_0\
    );
\outport[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(16),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(16),
      I4 => xmit_state(1),
      O => \outport[16]_i_1_n_0\
    );
\outport[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(17),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(17),
      I4 => xmit_state(1),
      O => \outport[17]_i_1_n_0\
    );
\outport[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(18),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(18),
      I4 => xmit_state(1),
      O => \outport[18]_i_1_n_0\
    );
\outport[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(19),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(19),
      I4 => xmit_state(1),
      O => \outport[19]_i_1_n_0\
    );
\outport[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(1),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(1),
      I4 => \outport[1]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[1]_i_1_n_0\
    );
\outport[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => global_clock_reg(33),
      O => \outport[1]_i_2_n_0\
    );
\outport[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(20),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(20),
      I4 => xmit_state(1),
      O => \outport[20]_i_1_n_0\
    );
\outport[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(21),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(21),
      I4 => xmit_state(1),
      O => \outport[21]_i_1_n_0\
    );
\outport[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(22),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(22),
      I4 => xmit_state(1),
      O => \outport[22]_i_1_n_0\
    );
\outport[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(23),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(23),
      I4 => xmit_state(1),
      O => \outport[23]_i_1_n_0\
    );
\outport[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(24),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(24),
      I4 => xmit_state(1),
      O => \outport[24]_i_1_n_0\
    );
\outport[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(25),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(25),
      I4 => xmit_state(1),
      O => \outport[25]_i_1_n_0\
    );
\outport[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(26),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(26),
      I4 => xmit_state(1),
      O => \outport[26]_i_1_n_0\
    );
\outport[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(27),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(27),
      I4 => xmit_state(1),
      O => \outport[27]_i_1_n_0\
    );
\outport[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(28),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(28),
      I4 => xmit_state(1),
      O => \outport[28]_i_1_n_0\
    );
\outport[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(29),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(29),
      I4 => xmit_state(1),
      O => \outport[29]_i_1_n_0\
    );
\outport[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(2),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(2),
      I4 => \outport[2]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[2]_i_1_n_0\
    );
\outport[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => global_clock_reg(34),
      O => \outport[2]_i_2_n_0\
    );
\outport[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(30),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(30),
      I4 => xmit_state(1),
      O => \outport[30]_i_1_n_0\
    );
\outport[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \global_clock_reg__0\(31),
      I2 => send_clock_reg_n_0,
      I3 => p_2_out(31),
      I4 => xmit_state(1),
      O => \outport[31]_i_1_n_0\
    );
\outport[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \dest_col_reg_n_0_[0]\,
      I2 => xmit_state(2),
      I3 => \process_map[0][NS]__0\,
      I4 => xmit_state(1),
      O => \outport[34]_i_1_n_0\
    );
\outport[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \dest_row_reg_n_0_[0]\,
      I2 => xmit_state(2),
      I3 => \process_map[0][EW]__0\,
      I4 => xmit_state(1),
      O => \outport[36]_i_1_n_0\
    );
\outport[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(3),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(3),
      I4 => \outport[3]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[3]_i_1_n_0\
    );
\outport[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => global_clock_reg(35),
      O => \outport[3]_i_2_n_0\
    );
\outport[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \priority_reg_n_0_[4]\,
      I2 => xmit_state(2),
      I3 => p_1_in(0),
      I4 => xmit_state(1),
      O => \outport[42]_i_1_n_0\
    );
\outport[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \priority_reg_n_0_[5]\,
      I2 => xmit_state(2),
      I3 => p_1_in(1),
      I4 => xmit_state(1),
      O => \outport[43]_i_1_n_0\
    );
\outport[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \dest_pid_reg_n_0_[0]\,
      I2 => xmit_state(2),
      I3 => CONV_INTEGER(0),
      I4 => xmit_state(1),
      O => \outport[44]_i_1_n_0\
    );
\outport[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \dest_pid_reg_n_0_[1]\,
      I2 => xmit_state(2),
      I3 => CONV_INTEGER(1),
      I4 => xmit_state(1),
      O => \outport[45]_i_1_n_0\
    );
\outport[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \dest_pid_reg_n_0_[2]\,
      I2 => xmit_state(2),
      I3 => CONV_INTEGER(2),
      I4 => xmit_state(1),
      O => \outport[46]_i_1_n_0\
    );
\outport[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \dest_pid_reg_n_0_[3]\,
      I2 => xmit_state(2),
      I3 => CONV_INTEGER(3),
      I4 => xmit_state(1),
      O => \outport[47]_i_1_n_0\
    );
\outport[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \src_pid_reg_n_0_[0]\,
      I2 => xmit_state(2),
      I3 => p_2_in(0),
      I4 => xmit_state(1),
      O => \outport[48]_i_1_n_0\
    );
\outport[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \src_pid_reg_n_0_[1]\,
      I2 => xmit_state(2),
      I3 => p_2_in(1),
      I4 => xmit_state(1),
      O => \outport[49]_i_1_n_0\
    );
\outport[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(4),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(4),
      I4 => \outport[4]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[4]_i_1_n_0\
    );
\outport[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => global_clock_reg(36),
      O => \outport[4]_i_2_n_0\
    );
\outport[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \src_pid_reg_n_0_[2]\,
      I2 => xmit_state(2),
      I3 => p_2_in(2),
      I4 => xmit_state(1),
      O => \outport[50]_i_1_n_0\
    );
\outport[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \src_pid_reg_n_0_[3]\,
      I2 => xmit_state(2),
      I3 => p_2_in(3),
      I4 => xmit_state(1),
      O => \outport[51]_i_1_n_0\
    );
\outport[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000444F"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \Flit_id_reg_n_0_[0]\,
      I2 => xmit_state(2),
      I3 => \command_reg_reg_n_0_[0]\,
      I4 => xmit_state(1),
      O => \outport[52]_i_1_n_0\
    );
\outport[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000444F4F44"
    )
        port map (
      I0 => xmit_state(0),
      I1 => \Flit_id_reg_n_0_[1]\,
      I2 => xmit_state(2),
      I3 => \command_reg_reg_n_0_[1]\,
      I4 => \command_reg_reg_n_0_[0]\,
      I5 => xmit_state(1),
      O => \outport[53]_i_1_n_0\
    );
\outport[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => xmit_state(2),
      I1 => xmit_state(1),
      O => \outport[54]_i_1_n_0\
    );
\outport[55]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^ar\(0)
    );
\outport[55]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"054A"
    )
        port map (
      I0 => xmit_state(0),
      I1 => Sync(0),
      I2 => xmit_state(1),
      I3 => xmit_state(2),
      O => \outport[55]_i_2_n_0\
    );
\outport[55]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => xmit_state(0),
      I1 => xmit_state(2),
      I2 => xmit_state(1),
      O => \outport[55]_i_3_n_0\
    );
\outport[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(5),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(5),
      I4 => \outport[5]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[5]_i_1_n_0\
    );
\outport[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => global_clock_reg(37),
      O => \outport[5]_i_2_n_0\
    );
\outport[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(6),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(6),
      I4 => \outport[6]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[6]_i_1_n_0\
    );
\outport[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => global_clock_reg(38),
      O => \outport[6]_i_2_n_0\
    );
\outport[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(7),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(7),
      I4 => \outport[7]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[7]_i_1_n_0\
    );
\outport[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => xmit_state(2),
      I1 => global_clock_reg(39),
      O => \outport[7]_i_2_n_0\
    );
\outport[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(8),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(8),
      I4 => \outport[8]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[8]_i_1_n_0\
    );
\outport[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => xmit_state(2),
      I1 => \command_reg_reg_n_0_[0]\,
      O => \outport[8]_i_2_n_0\
    );
\outport[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005404FFFF"
    )
        port map (
      I0 => xmit_state(0),
      I1 => p_2_out(9),
      I2 => send_clock_reg_n_0,
      I3 => \global_clock_reg__0\(9),
      I4 => \outport[9]_i_2_n_0\,
      I5 => xmit_state(1),
      O => \outport[9]_i_1_n_0\
    );
\outport[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => xmit_state(2),
      I1 => \command_reg_reg_n_0_[1]\,
      I2 => \command_reg_reg_n_0_[0]\,
      O => \outport[9]_i_2_n_0\
    );
\outport_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[0]_i_1_n_0\,
      Q => TO_NOC(0),
      R => \^ar\(0)
    );
\outport_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[10]_i_1_n_0\,
      Q => TO_NOC(10),
      R => \^ar\(0)
    );
\outport_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[11]_i_1_n_0\,
      Q => TO_NOC(11),
      R => \^ar\(0)
    );
\outport_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[12]_i_1_n_0\,
      Q => TO_NOC(12),
      R => \^ar\(0)
    );
\outport_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[13]_i_1_n_0\,
      Q => TO_NOC(13),
      R => \^ar\(0)
    );
\outport_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[14]_i_1_n_0\,
      Q => TO_NOC(14),
      R => \^ar\(0)
    );
\outport_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[15]_i_1_n_0\,
      Q => TO_NOC(15),
      R => \^ar\(0)
    );
\outport_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[16]_i_1_n_0\,
      Q => TO_NOC(16),
      R => \^ar\(0)
    );
\outport_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[17]_i_1_n_0\,
      Q => TO_NOC(17),
      R => \^ar\(0)
    );
\outport_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[18]_i_1_n_0\,
      Q => TO_NOC(18),
      R => \^ar\(0)
    );
\outport_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[19]_i_1_n_0\,
      Q => TO_NOC(19),
      R => \^ar\(0)
    );
\outport_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[1]_i_1_n_0\,
      Q => TO_NOC(1),
      R => \^ar\(0)
    );
\outport_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[20]_i_1_n_0\,
      Q => TO_NOC(20),
      R => \^ar\(0)
    );
\outport_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[21]_i_1_n_0\,
      Q => TO_NOC(21),
      R => \^ar\(0)
    );
\outport_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[22]_i_1_n_0\,
      Q => TO_NOC(22),
      R => \^ar\(0)
    );
\outport_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[23]_i_1_n_0\,
      Q => TO_NOC(23),
      R => \^ar\(0)
    );
\outport_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[24]_i_1_n_0\,
      Q => TO_NOC(24),
      R => \^ar\(0)
    );
\outport_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[25]_i_1_n_0\,
      Q => TO_NOC(25),
      R => \^ar\(0)
    );
\outport_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[26]_i_1_n_0\,
      Q => TO_NOC(26),
      R => \^ar\(0)
    );
\outport_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[27]_i_1_n_0\,
      Q => TO_NOC(27),
      R => \^ar\(0)
    );
\outport_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[28]_i_1_n_0\,
      Q => TO_NOC(28),
      R => \^ar\(0)
    );
\outport_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[29]_i_1_n_0\,
      Q => TO_NOC(29),
      R => \^ar\(0)
    );
\outport_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[2]_i_1_n_0\,
      Q => TO_NOC(2),
      R => \^ar\(0)
    );
\outport_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[30]_i_1_n_0\,
      Q => TO_NOC(30),
      R => \^ar\(0)
    );
\outport_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[31]_i_1_n_0\,
      Q => TO_NOC(31),
      R => \^ar\(0)
    );
\outport_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[34]_i_1_n_0\,
      Q => TO_NOC(32),
      R => \^ar\(0)
    );
\outport_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[36]_i_1_n_0\,
      Q => TO_NOC(33),
      R => \^ar\(0)
    );
\outport_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[3]_i_1_n_0\,
      Q => TO_NOC(3),
      R => \^ar\(0)
    );
\outport_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[42]_i_1_n_0\,
      Q => TO_NOC(34),
      R => \^ar\(0)
    );
\outport_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[43]_i_1_n_0\,
      Q => TO_NOC(35),
      R => \^ar\(0)
    );
\outport_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[44]_i_1_n_0\,
      Q => TO_NOC(36),
      R => \^ar\(0)
    );
\outport_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[45]_i_1_n_0\,
      Q => TO_NOC(37),
      R => \^ar\(0)
    );
\outport_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[46]_i_1_n_0\,
      Q => TO_NOC(38),
      R => \^ar\(0)
    );
\outport_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[47]_i_1_n_0\,
      Q => TO_NOC(39),
      R => \^ar\(0)
    );
\outport_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[48]_i_1_n_0\,
      Q => TO_NOC(40),
      R => \^ar\(0)
    );
\outport_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[49]_i_1_n_0\,
      Q => TO_NOC(41),
      R => \^ar\(0)
    );
\outport_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[4]_i_1_n_0\,
      Q => TO_NOC(4),
      R => \^ar\(0)
    );
\outport_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[50]_i_1_n_0\,
      Q => TO_NOC(42),
      R => \^ar\(0)
    );
\outport_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[51]_i_1_n_0\,
      Q => TO_NOC(43),
      R => \^ar\(0)
    );
\outport_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[52]_i_1_n_0\,
      Q => TO_NOC(44),
      R => \^ar\(0)
    );
\outport_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[53]_i_1_n_0\,
      Q => TO_NOC(45),
      R => \^ar\(0)
    );
\outport_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[54]_i_1_n_0\,
      Q => TO_NOC(46),
      R => \^ar\(0)
    );
\outport_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[55]_i_3_n_0\,
      Q => TO_NOC(47),
      R => \^ar\(0)
    );
\outport_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[5]_i_1_n_0\,
      Q => TO_NOC(5),
      R => \^ar\(0)
    );
\outport_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[6]_i_1_n_0\,
      Q => TO_NOC(6),
      R => \^ar\(0)
    );
\outport_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[7]_i_1_n_0\,
      Q => TO_NOC(7),
      R => \^ar\(0)
    );
\outport_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[8]_i_1_n_0\,
      Q => TO_NOC(8),
      R => \^ar\(0)
    );
\outport_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \outport[55]_i_2_n_0\,
      D => \outport[9]_i_1_n_0\,
      Q => TO_NOC(9),
      R => \^ar\(0)
    );
plusOp: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \command_reg_reg_n_0_[0]\,
      I1 => \command_reg_reg_n_0_[1]\,
      O => \plusOp__0\(1)
    );
\priority_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => p_1_in(0),
      Q => \priority_reg_n_0_[4]\,
      R => '0'
    );
\priority_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => p_1_in(1),
      Q => \priority_reg_n_0_[5]\,
      R => '0'
    );
\process_map[0][EW]\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => CONV_INTEGER(2),
      I1 => CONV_INTEGER(1),
      I2 => CONV_INTEGER(3),
      O => \process_map[0][EW]__0\
    );
\process_map[0][NS]\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7762"
    )
        port map (
      I0 => CONV_INTEGER(2),
      I1 => CONV_INTEGER(3),
      I2 => CONV_INTEGER(1),
      I3 => CONV_INTEGER(0),
      O => \process_map[0][NS]__0\
    );
\recv_address[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => FROM_NOC(40),
      I1 => FROM_NOC(43),
      I2 => FROM_NOC(42),
      I3 => \mem_address[0]_i_1_n_0\,
      O => \recv_address[0]_i_1_n_0\
    );
\recv_address[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => FROM_NOC(41),
      I1 => FROM_NOC(43),
      I2 => FROM_NOC(42),
      I3 => \mem_address[1]_i_2_n_0\,
      O => \recv_address[1]_i_1_n_0\
    );
\recv_address[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => FROM_NOC(32),
      I1 => FROM_NOC(37),
      I2 => FROM_NOC(33),
      I3 => FROM_NOC(36),
      I4 => \recv_address[2]_i_2_n_0\,
      O => \recv_address[2]_i_1_n_0\
    );
\recv_address[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => FROM_NOC(39),
      I1 => FROM_NOC(38),
      I2 => FROM_NOC(34),
      I3 => FROM_NOC(35),
      O => \recv_address[2]_i_2_n_0\
    );
\recv_address[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Sync(1),
      I1 => recv_state(0),
      I2 => recv_state(1),
      O => data_reg
    );
\recv_address[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => FROM_NOC(33),
      I1 => FROM_NOC(34),
      I2 => FROM_NOC(35),
      I3 => FROM_NOC(37),
      I4 => \recv_address[3]_i_3_n_0\,
      O => \recv_address[3]_i_2_n_0\
    );
\recv_address[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => FROM_NOC(39),
      I1 => FROM_NOC(38),
      I2 => FROM_NOC(32),
      I3 => FROM_NOC(36),
      O => \recv_address[3]_i_3_n_0\
    );
\recv_address_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \recv_address[0]_i_1_n_0\,
      Q => Q(0)
    );
\recv_address_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \recv_address[1]_i_1_n_0\,
      Q => Q(1)
    );
\recv_address_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \recv_address[2]_i_1_n_0\,
      Q => Q(2)
    );
\recv_address_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => data_reg,
      CLR => \^ar\(0),
      D => \recv_address[3]_i_2_n_0\,
      Q => Q(3)
    );
recv_buffer_write_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => recv_state(1),
      I1 => recv_state(0),
      I2 => S_AXI_ARESETN,
      I3 => \^webwe\(0),
      O => recv_buffer_write_i_1_n_0
    );
recv_buffer_write_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => recv_buffer_write_i_1_n_0,
      Q => \^webwe\(0),
      R => '0'
    );
\recv_counter[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFF2F2FE000E0E0"
    )
        port map (
      I0 => FROM_NOC(8),
      I1 => recv_state(1),
      I2 => S_AXI_ARESETN,
      I3 => \recv_counter[0][0]_i_2_n_0\,
      I4 => \recv_counter[0][1]_i_4_n_0\,
      I5 => \recv_counter_reg[0]\(0),
      O => \recv_counter[0][0]_i_1_n_0\
    );
\recv_counter[0][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => Sync(1),
      I1 => recv_state(1),
      I2 => recv_state(0),
      I3 => \mem_address_reg_n_0_[3]\,
      I4 => \mem_address_reg_n_0_[2]\,
      O => \recv_counter[0][0]_i_2_n_0\
    );
\recv_counter[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBBBB80008888"
    )
        port map (
      I0 => \recv_counter[0][1]_i_2_n_0\,
      I1 => S_AXI_ARESETN,
      I2 => \recv_counter[2][1]_i_4_n_0\,
      I3 => \recv_counter[0][1]_i_3_n_0\,
      I4 => \recv_counter[0][1]_i_4_n_0\,
      I5 => \recv_counter_reg[0]\(1),
      O => \recv_counter[0][1]_i_1_n_0\
    );
\recv_counter[0][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3AA"
    )
        port map (
      I0 => FROM_NOC(9),
      I1 => \recv_counter_reg[0]\(0),
      I2 => \recv_counter_reg[0]\(1),
      I3 => recv_state(1),
      O => \recv_counter[0][1]_i_2_n_0\
    );
\recv_counter[0][1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mem_address_reg_n_0_[2]\,
      I1 => \mem_address_reg_n_0_[3]\,
      O => \recv_counter[0][1]_i_3_n_0\
    );
\recv_counter[0][1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => FROM_NOC(43),
      I1 => FROM_NOC(42),
      I2 => \recv_address[2]_i_1_n_0\,
      I3 => data_reg,
      I4 => \recv_address[3]_i_2_n_0\,
      O => \recv_counter[0][1]_i_4_n_0\
    );
\recv_counter[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFF2F2FE000E0E0"
    )
        port map (
      I0 => FROM_NOC(8),
      I1 => recv_state(1),
      I2 => S_AXI_ARESETN,
      I3 => \recv_counter[1][1]_i_3_n_0\,
      I4 => \recv_counter[1][0]_i_2_n_0\,
      I5 => \recv_counter_reg[1]\(0),
      O => \recv_counter[1][0]_i_1_n_0\
    );
\recv_counter[1][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => Sync(1),
      I1 => recv_state(1),
      I2 => recv_state(0),
      I3 => \mem_address_reg_n_0_[3]\,
      I4 => \mem_address_reg_n_0_[2]\,
      O => \recv_counter[1][0]_i_2_n_0\
    );
\recv_counter[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBFBF88808080"
    )
        port map (
      I0 => \recv_counter[1][1]_i_2_n_0\,
      I1 => S_AXI_ARESETN,
      I2 => \recv_counter[1][1]_i_3_n_0\,
      I3 => \recv_counter[2][1]_i_4_n_0\,
      I4 => \recv_counter[1][1]_i_4_n_0\,
      I5 => \recv_counter_reg[1]\(1),
      O => \recv_counter[1][1]_i_1_n_0\
    );
\recv_counter[1][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3AA"
    )
        port map (
      I0 => FROM_NOC(9),
      I1 => \recv_counter_reg[1]\(0),
      I2 => \recv_counter_reg[1]\(1),
      I3 => recv_state(1),
      O => \recv_counter[1][1]_i_2_n_0\
    );
\recv_counter[1][1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \recv_address[2]_i_1_n_0\,
      I1 => FROM_NOC(43),
      I2 => FROM_NOC(42),
      I3 => data_reg,
      I4 => \recv_address[3]_i_2_n_0\,
      O => \recv_counter[1][1]_i_3_n_0\
    );
\recv_counter[1][1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mem_address_reg_n_0_[2]\,
      I1 => \mem_address_reg_n_0_[3]\,
      O => \recv_counter[1][1]_i_4_n_0\
    );
\recv_counter[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFF2F2FE000E0E0"
    )
        port map (
      I0 => FROM_NOC(8),
      I1 => recv_state(1),
      I2 => S_AXI_ARESETN,
      I3 => \recv_counter[2][1]_i_3_n_0\,
      I4 => \recv_counter[2][0]_i_2_n_0\,
      I5 => \recv_counter_reg[2]\(0),
      O => \recv_counter[2][0]_i_1_n_0\
    );
\recv_counter[2][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => Sync(1),
      I1 => recv_state(1),
      I2 => recv_state(0),
      I3 => \mem_address_reg_n_0_[2]\,
      I4 => \mem_address_reg_n_0_[3]\,
      O => \recv_counter[2][0]_i_2_n_0\
    );
\recv_counter[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBFBF88808080"
    )
        port map (
      I0 => \recv_counter[2][1]_i_2_n_0\,
      I1 => S_AXI_ARESETN,
      I2 => \recv_counter[2][1]_i_3_n_0\,
      I3 => \recv_counter[2][1]_i_4_n_0\,
      I4 => \recv_counter[2][1]_i_5_n_0\,
      I5 => \recv_counter_reg[2]\(1),
      O => \recv_counter[2][1]_i_1_n_0\
    );
\recv_counter[2][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3AA"
    )
        port map (
      I0 => FROM_NOC(9),
      I1 => \recv_counter_reg[2]\(0),
      I2 => \recv_counter_reg[2]\(1),
      I3 => recv_state(1),
      O => \recv_counter[2][1]_i_2_n_0\
    );
\recv_counter[2][1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \recv_address[3]_i_2_n_0\,
      I1 => data_reg,
      I2 => FROM_NOC(43),
      I3 => FROM_NOC(42),
      I4 => \recv_address[2]_i_1_n_0\,
      O => \recv_counter[2][1]_i_3_n_0\
    );
\recv_counter[2][1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => recv_state(0),
      I1 => recv_state(1),
      I2 => Sync(1),
      O => \recv_counter[2][1]_i_4_n_0\
    );
\recv_counter[2][1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mem_address_reg_n_0_[3]\,
      I1 => \mem_address_reg_n_0_[2]\,
      O => \recv_counter[2][1]_i_5_n_0\
    );
\recv_counter[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFFFFFFE0000000"
    )
        port map (
      I0 => FROM_NOC(8),
      I1 => recv_state(1),
      I2 => S_AXI_ARESETN,
      I3 => \recv_counter[3][0]_i_2_n_0\,
      I4 => \recv_counter[2][1]_i_4_n_0\,
      I5 => \recv_counter_reg[3]\(0),
      O => \recv_counter[3][0]_i_1_n_0\
    );
\recv_counter[3][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \mem_address_reg_n_0_[2]\,
      I1 => \mem_address_reg_n_0_[3]\,
      O => \recv_counter[3][0]_i_2_n_0\
    );
\recv_counter_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \recv_counter[0][0]_i_1_n_0\,
      Q => \recv_counter_reg[0]\(0),
      R => '0'
    );
\recv_counter_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \recv_counter[0][1]_i_1_n_0\,
      Q => \recv_counter_reg[0]\(1),
      R => '0'
    );
\recv_counter_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \recv_counter[1][0]_i_1_n_0\,
      Q => \recv_counter_reg[1]\(0),
      R => '0'
    );
\recv_counter_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \recv_counter[1][1]_i_1_n_0\,
      Q => \recv_counter_reg[1]\(1),
      R => '0'
    );
\recv_counter_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \recv_counter[2][0]_i_1_n_0\,
      Q => \recv_counter_reg[2]\(0),
      R => '0'
    );
\recv_counter_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \recv_counter[2][1]_i_1_n_0\,
      Q => \recv_counter_reg[2]\(1),
      R => '0'
    );
\recv_counter_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \recv_counter[3][0]_i_1_n_0\,
      Q => \recv_counter_reg[3]\(0),
      R => '0'
    );
\recv_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0FF7F0"
    )
        port map (
      I0 => FROM_NOC(43),
      I1 => FROM_NOC(42),
      I2 => recv_state(0),
      I3 => Sync(1),
      I4 => recv_state(1),
      O => \recv_state[0]_i_1_n_0\
    );
\recv_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0FF8F0"
    )
        port map (
      I0 => FROM_NOC(43),
      I1 => FROM_NOC(42),
      I2 => recv_state(0),
      I3 => Sync(1),
      I4 => recv_state(1),
      O => \recv_state[1]_i_1_n_0\
    );
\recv_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \recv_state[0]_i_1_n_0\,
      Q => recv_state(0)
    );
\recv_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \recv_state[1]_i_1_n_0\,
      Q => recv_state(1)
    );
\rni_readdata_delayed[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rni_readdata_delayed[0]_i_2_n_0\,
      I1 => Bus_RNW_reg_reg,
      O => \^d\(0)
    );
\rni_readdata_delayed[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB0BFBF"
    )
        port map (
      I0 => \channel_status_reg[5]\(0),
      I1 => \channel_status_reg[5]\(1),
      I2 => \S_AXI_AWADDR[3]\(0),
      I3 => \channel_status_reg[4]\(0),
      I4 => \channel_status_reg[4]\(1),
      O => \rni_readdata_delayed[0]_i_10_n_0\
    );
\rni_readdata_delayed[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040FF4F0F4FF"
    )
        port map (
      I0 => \rni_readdata_delayed[0]_i_3_n_0\,
      I1 => \rni_readdata_delayed[0]_i_4_n_0\,
      I2 => \S_AXI_AWADDR[8]\,
      I3 => \S_AXI_AWADDR[7]\,
      I4 => \rni_readdata_delayed[0]_i_5_n_0\,
      I5 => \rni_readdata_delayed[0]_i_6_n_0\,
      O => \rni_readdata_delayed[0]_i_2_n_0\
    );
\rni_readdata_delayed[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050015155550151"
    )
        port map (
      I0 => \rni_readdata_delayed[9]_i_5_n_0\,
      I1 => \msg_length_reg_reg[4]\(0),
      I2 => \S_AXI_AWADDR[3]\(0),
      I3 => \msg_length_reg_reg[5]\(0),
      I4 => \S_AXI_AWADDR[3]\(1),
      I5 => \msg_length_reg_reg[6]\(0),
      O => \rni_readdata_delayed[0]_i_3_n_0\
    );
\rni_readdata_delayed[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E2FFFFFFFF"
    )
        port map (
      I0 => \msg_length_reg_reg[0]\(0),
      I1 => \S_AXI_AWADDR[3]\(0),
      I2 => \msg_length_reg_reg[1]\(0),
      I3 => \S_AXI_AWADDR[3]\(1),
      I4 => \msg_length_reg_reg[2]\(0),
      I5 => \rni_readdata_delayed[9]_i_5_n_0\,
      O => \rni_readdata_delayed[0]_i_4_n_0\
    );
\rni_readdata_delayed[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDCDFDCDCDFDFDFD"
    )
        port map (
      I0 => \write_status_reg__0\(0),
      I1 => \^addrardaddr\(0),
      I2 => \S_AXI_AWADDR[3]\(1),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => synchronize_flag,
      I5 => \interrupt_reg_reg_n_0_[0]\,
      O => \rni_readdata_delayed[0]_i_5_n_0\
    );
\rni_readdata_delayed[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rni_readdata_delayed[0]_i_7_n_0\,
      I1 => \rni_readdata_delayed[0]_i_8_n_0\,
      I2 => \rni_readdata_delayed[9]_i_5_n_0\,
      I3 => \rni_readdata_delayed[0]_i_9_n_0\,
      I4 => \S_AXI_AWADDR[3]\(1),
      I5 => \rni_readdata_delayed[0]_i_10_n_0\,
      O => \rni_readdata_delayed[0]_i_6_n_0\
    );
\rni_readdata_delayed[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB0BFBF"
    )
        port map (
      I0 => \channel_status_reg[3]\(0),
      I1 => \channel_status_reg[3]\(1),
      I2 => \S_AXI_AWADDR[3]\(0),
      I3 => \channel_status_reg[2]\(0),
      I4 => \channel_status_reg[2]\(1),
      O => \rni_readdata_delayed[0]_i_7_n_0\
    );
\rni_readdata_delayed[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB0BFBF"
    )
        port map (
      I0 => \channel_status_reg[1]\(0),
      I1 => \channel_status_reg[1]\(1),
      I2 => \S_AXI_AWADDR[3]\(0),
      I3 => \channel_status_reg[0]\(0),
      I4 => \channel_status_reg[0]\(1),
      O => \rni_readdata_delayed[0]_i_8_n_0\
    );
\rni_readdata_delayed[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB0BFBF"
    )
        port map (
      I0 => \channel_status_reg[7]\(0),
      I1 => \channel_status_reg[7]\(1),
      I2 => \S_AXI_AWADDR[3]\(0),
      I3 => \channel_status_reg[6]\(0),
      I4 => \channel_status_reg[6]\(1),
      O => \rni_readdata_delayed[0]_i_9_n_0\
    );
\rni_readdata_delayed[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rni_readdata_delayed[1]_i_2_n_0\,
      I1 => Bus_RNW_reg_reg,
      O => \^d\(1)
    );
\rni_readdata_delayed[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \S_AXI_AWADDR[8]\,
      I1 => \rni_readdata_delayed[1]_i_3_n_0\,
      I2 => \rni_readdata_delayed[9]_i_5_n_0\,
      I3 => \rni_readdata_delayed[1]_i_4_n_0\,
      I4 => \S_AXI_AWADDR[8]_0\,
      I5 => \rni_readdata_delayed[1]_i_5_n_0\,
      O => \rni_readdata_delayed[1]_i_2_n_0\
    );
\rni_readdata_delayed[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \msg_length_reg_reg[6]\(1),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \msg_length_reg_reg[5]\(1),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \msg_length_reg_reg[4]\(1),
      O => \rni_readdata_delayed[1]_i_3_n_0\
    );
\rni_readdata_delayed[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \msg_length_reg_reg[2]\(1),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \msg_length_reg_reg[1]\(1),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \msg_length_reg_reg[0]\(1),
      O => \rni_readdata_delayed[1]_i_4_n_0\
    );
\rni_readdata_delayed[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => \^addrardaddr\(0),
      I1 => \S_AXI_AWADDR[3]\(0),
      I2 => \interrupt_reg_reg_n_0_[1]\,
      I3 => \S_AXI_AWADDR[3]\(1),
      O => \rni_readdata_delayed[1]_i_5_n_0\
    );
\rni_readdata_delayed[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rni_readdata_delayed[2]_i_2_n_0\,
      I1 => Bus_RNW_reg_reg,
      O => \^d\(2)
    );
\rni_readdata_delayed[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \S_AXI_AWADDR[8]\,
      I1 => \rni_readdata_delayed[2]_i_3_n_0\,
      I2 => \rni_readdata_delayed[9]_i_5_n_0\,
      I3 => \rni_readdata_delayed[2]_i_4_n_0\,
      I4 => \S_AXI_AWADDR[8]_0\,
      I5 => \rni_readdata_delayed[2]_i_5_n_0\,
      O => \rni_readdata_delayed[2]_i_2_n_0\
    );
\rni_readdata_delayed[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \d_pid_reg[6]\(0),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \d_pid_reg[5]\(0),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \d_pid_reg[4]\(0),
      O => \rni_readdata_delayed[2]_i_3_n_0\
    );
\rni_readdata_delayed[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \d_pid_reg[2]\(0),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \d_pid_reg[1]\(0),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \d_pid_reg[0]\(0),
      O => \rni_readdata_delayed[2]_i_4_n_0\
    );
\rni_readdata_delayed[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \interrupt_reg_reg_n_0_[2]\,
      I1 => \^addrardaddr\(0),
      I2 => \S_AXI_AWADDR[3]\(1),
      I3 => \S_AXI_AWADDR[3]\(0),
      O => \rni_readdata_delayed[2]_i_5_n_0\
    );
\rni_readdata_delayed[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rni_readdata_delayed[3]_i_2_n_0\,
      I1 => Bus_RNW_reg_reg,
      O => \^d\(3)
    );
\rni_readdata_delayed[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => \S_AXI_AWADDR[8]\,
      I1 => \rni_readdata_delayed[3]_i_3_n_0\,
      I2 => \rni_readdata_delayed[9]_i_5_n_0\,
      I3 => \rni_readdata_delayed[3]_i_4_n_0\,
      I4 => \S_AXI_AWADDR[8]_0\,
      I5 => \rni_readdata_delayed[3]_i_5_n_0\,
      O => \rni_readdata_delayed[3]_i_2_n_0\
    );
\rni_readdata_delayed[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \d_pid_reg[6]\(1),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \d_pid_reg[5]\(1),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \d_pid_reg[4]\(1),
      O => \rni_readdata_delayed[3]_i_3_n_0\
    );
\rni_readdata_delayed[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \d_pid_reg[2]\(1),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \d_pid_reg[1]\(1),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \d_pid_reg[0]\(1),
      O => \rni_readdata_delayed[3]_i_4_n_0\
    );
\rni_readdata_delayed[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => p_0_in_0,
      I1 => \^addrardaddr\(0),
      I2 => \S_AXI_AWADDR[3]\(1),
      I3 => \S_AXI_AWADDR[3]\(0),
      O => \rni_readdata_delayed[3]_i_5_n_0\
    );
\rni_readdata_delayed[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rni_readdata_delayed[4]_i_2_n_0\,
      I1 => Bus_RNW_reg_reg,
      O => \^d\(4)
    );
\rni_readdata_delayed[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \rni_readdata_delayed[4]_i_3_n_0\,
      I1 => \rni_readdata_delayed[9]_i_5_n_0\,
      I2 => \rni_readdata_delayed[4]_i_4_n_0\,
      I3 => dap_read_1,
      O => \rni_readdata_delayed[4]_i_2_n_0\
    );
\rni_readdata_delayed[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \d_pid_reg[2]\(2),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \d_pid_reg[1]\(2),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \d_pid_reg[0]\(2),
      O => \rni_readdata_delayed[4]_i_3_n_0\
    );
\rni_readdata_delayed[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \d_pid_reg[6]\(2),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \d_pid_reg[5]\(2),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \d_pid_reg[4]\(2),
      O => \rni_readdata_delayed[4]_i_4_n_0\
    );
\rni_readdata_delayed[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rni_readdata_delayed[5]_i_2_n_0\,
      I1 => Bus_RNW_reg_reg,
      O => \^d\(5)
    );
\rni_readdata_delayed[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \rni_readdata_delayed[5]_i_3_n_0\,
      I1 => \rni_readdata_delayed[5]_i_4_n_0\,
      I2 => dap_read_1,
      O => \rni_readdata_delayed[5]_i_2_n_0\
    );
\rni_readdata_delayed[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCEEFFFCCCEECCFC"
    )
        port map (
      I0 => \d_pid_reg[5]\(3),
      I1 => \rni_readdata_delayed[9]_i_5_n_0\,
      I2 => \d_pid_reg[4]\(3),
      I3 => \S_AXI_AWADDR[3]\(1),
      I4 => \S_AXI_AWADDR[3]\(0),
      I5 => \d_pid_reg[6]\(3),
      O => \rni_readdata_delayed[5]_i_3_n_0\
    );
\rni_readdata_delayed[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A002A2AAAA02A2"
    )
        port map (
      I0 => \rni_readdata_delayed[9]_i_5_n_0\,
      I1 => \d_pid_reg[0]\(3),
      I2 => \S_AXI_AWADDR[3]\(0),
      I3 => \d_pid_reg[1]\(3),
      I4 => \S_AXI_AWADDR[3]\(1),
      I5 => \d_pid_reg[2]\(3),
      O => \rni_readdata_delayed[5]_i_4_n_0\
    );
\rni_readdata_delayed[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rni_readdata_delayed[6]_i_2_n_0\,
      I1 => Bus_RNW_reg_reg,
      O => \^d\(6)
    );
\rni_readdata_delayed[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \rni_readdata_delayed[6]_i_3_n_0\,
      I1 => \rni_readdata_delayed[9]_i_5_n_0\,
      I2 => \rni_readdata_delayed[6]_i_4_n_0\,
      I3 => dap_read_1,
      O => \rni_readdata_delayed[6]_i_2_n_0\
    );
\rni_readdata_delayed[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_pid_reg[2]\(0),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \s_pid_reg[1]\(0),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \s_pid_reg[0]\(0),
      O => \rni_readdata_delayed[6]_i_3_n_0\
    );
\rni_readdata_delayed[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_pid_reg[6]\(0),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \s_pid_reg[5]\(0),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \s_pid_reg[4]\(0),
      O => \rni_readdata_delayed[6]_i_4_n_0\
    );
\rni_readdata_delayed[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rni_readdata_delayed[7]_i_2_n_0\,
      I1 => Bus_RNW_reg_reg,
      O => \^d\(7)
    );
\rni_readdata_delayed[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \rni_readdata_delayed[7]_i_3_n_0\,
      I1 => \rni_readdata_delayed[9]_i_5_n_0\,
      I2 => \rni_readdata_delayed[7]_i_4_n_0\,
      I3 => dap_read_1,
      O => \rni_readdata_delayed[7]_i_2_n_0\
    );
\rni_readdata_delayed[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_pid_reg[2]\(1),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \s_pid_reg[1]\(1),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \s_pid_reg[0]\(1),
      O => \rni_readdata_delayed[7]_i_3_n_0\
    );
\rni_readdata_delayed[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_pid_reg[6]\(1),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \s_pid_reg[5]\(1),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \s_pid_reg[4]\(1),
      O => \rni_readdata_delayed[7]_i_4_n_0\
    );
\rni_readdata_delayed[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rni_readdata_delayed[8]_i_2_n_0\,
      I1 => Bus_RNW_reg_reg,
      O => \^d\(8)
    );
\rni_readdata_delayed[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \rni_readdata_delayed[8]_i_3_n_0\,
      I1 => \rni_readdata_delayed[8]_i_4_n_0\,
      I2 => dap_read_1,
      O => \rni_readdata_delayed[8]_i_2_n_0\
    );
\rni_readdata_delayed[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55DDFFF555DD55F5"
    )
        port map (
      I0 => \rni_readdata_delayed[9]_i_5_n_0\,
      I1 => \s_pid_reg[1]\(2),
      I2 => \s_pid_reg[0]\(2),
      I3 => \S_AXI_AWADDR[3]\(1),
      I4 => \S_AXI_AWADDR[3]\(0),
      I5 => \s_pid_reg[2]\(2),
      O => \rni_readdata_delayed[8]_i_3_n_0\
    );
\rni_readdata_delayed[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050015155550151"
    )
        port map (
      I0 => \rni_readdata_delayed[9]_i_5_n_0\,
      I1 => \s_pid_reg[4]\(2),
      I2 => \S_AXI_AWADDR[3]\(0),
      I3 => \s_pid_reg[5]\(2),
      I4 => \S_AXI_AWADDR[3]\(1),
      I5 => \s_pid_reg[6]\(2),
      O => \rni_readdata_delayed[8]_i_4_n_0\
    );
\rni_readdata_delayed[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rni_readdata_delayed[9]_i_2_n_0\,
      I1 => Bus_RNW_reg_reg,
      O => \^d\(9)
    );
\rni_readdata_delayed[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rni_readdata_delayed[9]_i_3_n_0\,
      I1 => dap_read_1,
      I2 => \rni_readdata_delayed[9]_i_5_n_0\,
      I3 => \rni_readdata_delayed[9]_i_6_n_0\,
      O => \rni_readdata_delayed[9]_i_2_n_0\
    );
\rni_readdata_delayed[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_pid_reg[2]\(3),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \s_pid_reg[1]\(3),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \s_pid_reg[0]\(3),
      O => \rni_readdata_delayed[9]_i_3_n_0\
    );
\rni_readdata_delayed[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \^channel_nr_reg[2]_0\,
      I1 => S_AXI_AWADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_ARADDR(0),
      I4 => dap_read_0,
      I5 => dap_address(0),
      O => \rni_readdata_delayed[9]_i_5_n_0\
    );
\rni_readdata_delayed[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \s_pid_reg[6]\(3),
      I1 => \S_AXI_AWADDR[3]\(1),
      I2 => \s_pid_reg[5]\(3),
      I3 => \S_AXI_AWADDR[3]\(0),
      I4 => \s_pid_reg[4]\(3),
      O => \rni_readdata_delayed[9]_i_6_n_0\
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(0),
      I1 => rni_chipselect,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I3 => DOADO(0),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      I5 => RAM_reg_0(0),
      O => \s_axi_rdata_i_reg[9]\(0)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(1),
      I1 => rni_chipselect,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I3 => DOADO(1),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      I5 => RAM_reg_0(1),
      O => \s_axi_rdata_i_reg[9]\(1)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(2),
      I1 => rni_chipselect,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I3 => DOADO(2),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      I5 => RAM_reg_0(2),
      O => \s_axi_rdata_i_reg[9]\(2)
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(3),
      I1 => rni_chipselect,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I3 => DOADO(3),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      I5 => RAM_reg_0(3),
      O => \s_axi_rdata_i_reg[9]\(3)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(4),
      I1 => rni_chipselect,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I3 => DOADO(4),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      I5 => RAM_reg_0(4),
      O => \s_axi_rdata_i_reg[9]\(4)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(5),
      I1 => rni_chipselect,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I3 => DOADO(5),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      I5 => RAM_reg_0(5),
      O => \s_axi_rdata_i_reg[9]\(5)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(6),
      I1 => rni_chipselect,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I3 => DOADO(6),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      I5 => RAM_reg_0(6),
      O => \s_axi_rdata_i_reg[9]\(6)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(7),
      I1 => rni_chipselect,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I3 => DOADO(7),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      I5 => RAM_reg_0(7),
      O => \s_axi_rdata_i_reg[9]\(7)
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(8),
      I1 => rni_chipselect,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I3 => DOADO(8),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      I5 => RAM_reg_0(8),
      O => \s_axi_rdata_i_reg[9]\(8)
    );
\s_axi_rdata_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888B88"
    )
        port map (
      I0 => \^d\(9),
      I1 => rni_chipselect,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      I3 => DOADO(9),
      I4 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      I5 => RAM_reg_0(9),
      O => \s_axi_rdata_i_reg[9]\(9)
    );
\s_pid_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[0][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(36),
      Q => \s_pid_reg[0]\(0)
    );
\s_pid_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[0][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(37),
      Q => \s_pid_reg[0]\(1)
    );
\s_pid_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[0][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(38),
      Q => \s_pid_reg[0]\(2)
    );
\s_pid_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[0][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(39),
      Q => \s_pid_reg[0]\(3)
    );
\s_pid_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[1]_2\,
      CLR => \^ar\(0),
      D => FROM_NOC(36),
      Q => \s_pid_reg[1]\(0)
    );
\s_pid_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[1]_2\,
      CLR => \^ar\(0),
      D => FROM_NOC(37),
      Q => \s_pid_reg[1]\(1)
    );
\s_pid_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[1]_2\,
      CLR => \^ar\(0),
      D => FROM_NOC(38),
      Q => \s_pid_reg[1]\(2)
    );
\s_pid_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[1]_2\,
      CLR => \^ar\(0),
      D => FROM_NOC(39),
      Q => \s_pid_reg[1]\(3)
    );
\s_pid_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[2]_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(36),
      Q => \s_pid_reg[2]\(0)
    );
\s_pid_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[2]_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(37),
      Q => \s_pid_reg[2]\(1)
    );
\s_pid_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[2]_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(38),
      Q => \s_pid_reg[2]\(2)
    );
\s_pid_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[2]_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(39),
      Q => \s_pid_reg[2]\(3)
    );
\s_pid_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[4]_1\,
      CLR => \^ar\(0),
      D => FROM_NOC(36),
      Q => \s_pid_reg[4]\(0)
    );
\s_pid_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[4]_1\,
      CLR => \^ar\(0),
      D => FROM_NOC(37),
      Q => \s_pid_reg[4]\(1)
    );
\s_pid_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[4]_1\,
      CLR => \^ar\(0),
      D => FROM_NOC(38),
      Q => \s_pid_reg[4]\(2)
    );
\s_pid_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[4]_1\,
      CLR => \^ar\(0),
      D => FROM_NOC(39),
      Q => \s_pid_reg[4]\(3)
    );
\s_pid_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[5][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(36),
      Q => \s_pid_reg[5]\(0)
    );
\s_pid_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[5][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(37),
      Q => \s_pid_reg[5]\(1)
    );
\s_pid_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[5][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(38),
      Q => \s_pid_reg[5]\(2)
    );
\s_pid_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[5][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(39),
      Q => \s_pid_reg[5]\(3)
    );
\s_pid_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[6][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(36),
      Q => \s_pid_reg[6]\(0)
    );
\s_pid_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[6][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(37),
      Q => \s_pid_reg[6]\(1)
    );
\s_pid_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[6][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(38),
      Q => \s_pid_reg[6]\(2)
    );
\s_pid_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => \msg_length_reg[6][1]_i_1_n_0\,
      CLR => \^ar\(0),
      D => FROM_NOC(39),
      Q => \s_pid_reg[6]\(3)
    );
send_clock_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0B20000"
    )
        port map (
      I0 => xmit_state(0),
      I1 => xmit_state(2),
      I2 => send_clock_reg_n_0,
      I3 => xmit_state(1),
      I4 => S_AXI_ARESETN,
      O => send_clock_i_1_n_0
    );
send_clock_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => send_clock_i_1_n_0,
      Q => send_clock_reg_n_0,
      R => '0'
    );
\send_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444444F"
    )
        port map (
      I0 => xmit_state(2),
      I1 => \command_reg_reg_n_0_[0]\,
      I2 => \^addrbwraddr\(0),
      I3 => xmit_state(1),
      I4 => xmit_state(0),
      O => send_counter(0)
    );
\send_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => xmit_state(2),
      I1 => xmit_state(0),
      I2 => xmit_state(1),
      O => \send_counter[1]_i_1_n_0\
    );
\send_counter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444444F44F"
    )
        port map (
      I0 => xmit_state(2),
      I1 => \command_reg_reg_n_0_[1]\,
      I2 => \^addrbwraddr\(0),
      I3 => \^addrbwraddr\(1),
      I4 => xmit_state(1),
      I5 => xmit_state(0),
      O => send_counter(1)
    );
\send_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \send_counter[1]_i_1_n_0\,
      D => send_counter(0),
      Q => \^addrbwraddr\(0),
      R => \^ar\(0)
    );
\send_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \send_counter[1]_i_1_n_0\,
      D => send_counter(1),
      Q => \^addrbwraddr\(1),
      R => \^ar\(0)
    );
slave_irq_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => HeartBeat,
      I1 => old_heartbeat,
      I2 => S_AXI_ARESETN,
      I3 => \^noc_irq\,
      O => slave_irq_i_1_n_0
    );
slave_irq_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => slave_irq_i_1_n_0,
      Q => \^noc_irq\,
      R => '0'
    );
\src_buffer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => xmit_state(0),
      I1 => xmit_state(2),
      I2 => xmit_state(1),
      O => src_buffer
    );
\src_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => src_buffer,
      D => p_0_in(0),
      Q => \^addrbwraddr\(2),
      R => \^ar\(0)
    );
\src_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => src_buffer,
      D => p_0_in(1),
      Q => \^addrbwraddr\(3),
      R => \^ar\(0)
    );
\src_pid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => p_2_in(0),
      Q => \src_pid_reg_n_0_[0]\,
      R => '0'
    );
\src_pid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => p_2_in(1),
      Q => \src_pid_reg_n_0_[1]\,
      R => '0'
    );
\src_pid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => p_2_in(2),
      Q => \src_pid_reg_n_0_[2]\,
      R => '0'
    );
\src_pid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => dest_col,
      D => p_2_in(3),
      Q => \src_pid_reg_n_0_[3]\,
      R => '0'
    );
synchronize_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFFFFF04444444"
    )
        port map (
      I0 => old_heartbeat,
      I1 => HeartBeat,
      I2 => \S_AXI_AWADDR[3]\(0),
      I3 => \S_AXI_AWADDR[3]\(1),
      I4 => Bus_RNW_reg_reg_0,
      I5 => synchronize_flag,
      O => synchronize_flag_i_1_n_0
    );
synchronize_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^ar\(0),
      D => synchronize_flag_i_1_n_0,
      Q => synchronize_flag
    );
\toggle_bit[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => HeartBeat,
      I1 => old_heartbeat,
      O => slave_irq0
    );
\toggle_bit[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^channel_nr_reg[2]_0\,
      O => toggle_address
    );
\toggle_bit_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => slave_irq0,
      CLR => \^ar\(0),
      D => toggle_address,
      Q => \^channel_nr_reg[2]_0\
    );
write_status_reg: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => xmit_state(1),
      I1 => xmit_state(0),
      I2 => xmit_state(2),
      O => \write_status_reg__0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b is
  port (
    \s_axi_rdata_i_reg[31]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    p_2_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dap_readdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    send_buffer_writedata1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dap_rni_select : in STD_LOGIC;
    dap_send_buffer_select : in STD_LOGIC;
    RAM_reg_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dap_recv_buffer_select : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b is
  signal \^s_axi_rdata_i_reg[31]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_RAM_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of RAM_reg : label is "COMMON";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of RAM_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of RAM_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg : label is "RAM";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of RAM_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of RAM_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of RAM_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of RAM_reg : label is 15;
begin
  \s_axi_rdata_i_reg[31]\(15 downto 0) <= \^s_axi_rdata_i_reg[31]\(15 downto 0);
RAM_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 8) => B"111111",
      ADDRARDADDR(7 downto 4) => ADDRARDADDR(3 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 8) => B"111111",
      ADDRBWRADDR(7 downto 4) => ADDRBWRADDR(3 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => S_AXI_ACLK,
      CLKBWRCLK => S_AXI_ACLK,
      DIADI(15 downto 0) => send_buffer_writedata1(15 downto 0),
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \^s_axi_rdata_i_reg[31]\(15 downto 0),
      DOBDO(15 downto 0) => p_2_out(15 downto 0),
      DOPADOP(1 downto 0) => NLW_RAM_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_RAM_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => p_8_in,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      WEA(0) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      WEBWE(3 downto 0) => B"0000"
    );
\dap_readdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(0),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(0),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(0),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(0)
    );
\dap_readdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(1),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(1),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(1),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(1)
    );
\dap_readdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(2),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(2),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(2),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(2)
    );
\dap_readdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(3),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(3),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(3),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(3)
    );
\dap_readdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(4),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(4),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(4),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(4)
    );
\dap_readdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(5),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(5),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(5),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(5)
    );
\dap_readdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(6),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(6),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(6),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(6)
    );
\dap_readdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(7),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(7),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(7),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(7)
    );
\dap_readdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(8),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(8),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(8),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(8)
    );
\dap_readdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(9),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(9),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(9),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(9)
    );
\dap_readdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(10),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(10),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(10),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(10)
    );
\dap_readdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(11),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(11),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(11),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(11)
    );
\dap_readdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(12),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(12),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(12),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(12)
    );
\dap_readdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(13),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(13),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(13),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(13)
    );
\dap_readdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(14),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(14),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(14),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(14)
    );
\dap_readdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(15),
      I1 => dap_rni_select,
      I2 => \^s_axi_rdata_i_reg[31]\(15),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(15),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(15)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b_0 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 15 downto 0 );
    p_2_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dap_readdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    send_buffer_writedata1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dap_rni_select : in STD_LOGIC;
    dap_send_buffer_select : in STD_LOGIC;
    RAM_reg_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dap_recv_buffer_select : in STD_LOGIC;
    RAM_reg_1 : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b_0 : entity is "rams_16b";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b_0 is
  signal \^doado\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_RAM_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of RAM_reg : label is "COMMON";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of RAM_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of RAM_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg : label is "RAM";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of RAM_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of RAM_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of RAM_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of RAM_reg : label is 15;
begin
  DOADO(15 downto 0) <= \^doado\(15 downto 0);
RAM_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 8) => B"111111",
      ADDRARDADDR(7 downto 4) => ADDRARDADDR(3 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 8) => B"111111",
      ADDRBWRADDR(7 downto 4) => ADDRBWRADDR(3 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => S_AXI_ACLK,
      CLKBWRCLK => S_AXI_ACLK,
      DIADI(15 downto 0) => send_buffer_writedata1(15 downto 0),
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \^doado\(15 downto 0),
      DOBDO(15 downto 0) => p_2_out(15 downto 0),
      DOPADOP(1 downto 0) => NLW_RAM_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_RAM_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => p_8_in,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      WEA(0) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      WEBWE(3 downto 0) => B"0000"
    );
\dap_readdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(0),
      I1 => dap_rni_select,
      I2 => \^doado\(0),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_1(0),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(0)
    );
\dap_readdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(10),
      I1 => dap_rni_select,
      I2 => \^doado\(10),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(0),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(10)
    );
\dap_readdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(11),
      I1 => dap_rni_select,
      I2 => \^doado\(11),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(1),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(11)
    );
\dap_readdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(12),
      I1 => dap_rni_select,
      I2 => \^doado\(12),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(2),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(12)
    );
\dap_readdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(13),
      I1 => dap_rni_select,
      I2 => \^doado\(13),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(3),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(13)
    );
\dap_readdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(14),
      I1 => dap_rni_select,
      I2 => \^doado\(14),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(4),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(14)
    );
\dap_readdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(15),
      I1 => dap_rni_select,
      I2 => \^doado\(15),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_0(5),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(15)
    );
\dap_readdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(1),
      I1 => dap_rni_select,
      I2 => \^doado\(1),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_1(1),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(1)
    );
\dap_readdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(2),
      I1 => dap_rni_select,
      I2 => \^doado\(2),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_1(2),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(2)
    );
\dap_readdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(3),
      I1 => dap_rni_select,
      I2 => \^doado\(3),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_1(3),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(3)
    );
\dap_readdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(4),
      I1 => dap_rni_select,
      I2 => \^doado\(4),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_1(4),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(4)
    );
\dap_readdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(5),
      I1 => dap_rni_select,
      I2 => \^doado\(5),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_1(5),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(5)
    );
\dap_readdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(6),
      I1 => dap_rni_select,
      I2 => \^doado\(6),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_1(6),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(6)
    );
\dap_readdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(7),
      I1 => dap_rni_select,
      I2 => \^doado\(7),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_1(7),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(7)
    );
\dap_readdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(8),
      I1 => dap_rni_select,
      I2 => \^doado\(8),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_1(8),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(8)
    );
\dap_readdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Q(9),
      I1 => dap_rni_select,
      I2 => \^doado\(9),
      I3 => dap_send_buffer_select,
      I4 => RAM_reg_1(9),
      I5 => dap_recv_buffer_select,
      O => dap_readdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized2\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 15 downto 0 );
    send_buffer_writedata1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RAM_reg_0 : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \data_reg_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    dap_writedata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dap_write : in STD_LOGIC;
    dap_read : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized2\ : entity is "rams_16b";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized2\ is
  signal \^ram_reg_0\ : STD_LOGIC;
  signal RAM_reg_n_16 : STD_LOGIC;
  signal RAM_reg_n_17 : STD_LOGIC;
  signal RAM_reg_n_18 : STD_LOGIC;
  signal RAM_reg_n_19 : STD_LOGIC;
  signal RAM_reg_n_20 : STD_LOGIC;
  signal RAM_reg_n_21 : STD_LOGIC;
  signal RAM_reg_n_22 : STD_LOGIC;
  signal RAM_reg_n_23 : STD_LOGIC;
  signal RAM_reg_n_24 : STD_LOGIC;
  signal RAM_reg_n_25 : STD_LOGIC;
  signal RAM_reg_n_26 : STD_LOGIC;
  signal RAM_reg_n_27 : STD_LOGIC;
  signal RAM_reg_n_28 : STD_LOGIC;
  signal RAM_reg_n_29 : STD_LOGIC;
  signal RAM_reg_n_30 : STD_LOGIC;
  signal RAM_reg_n_31 : STD_LOGIC;
  signal \^send_buffer_writedata1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_RAM_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of RAM_reg : label is "COMMON";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of RAM_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of RAM_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg : label is "RAM";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of RAM_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of RAM_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of RAM_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of RAM_reg : label is 15;
begin
  RAM_reg_0 <= \^ram_reg_0\;
  send_buffer_writedata1(15 downto 0) <= \^send_buffer_writedata1\(15 downto 0);
RAM_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 9) => B"11111",
      ADDRARDADDR(8 downto 4) => ADDRARDADDR(4 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 9) => B"11111",
      ADDRBWRADDR(8 downto 4) => ADDRBWRADDR(4 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => S_AXI_ACLK,
      CLKBWRCLK => S_AXI_ACLK,
      DIADI(15 downto 0) => \^send_buffer_writedata1\(15 downto 0),
      DIBDI(15 downto 0) => \data_reg_reg[15]\(15 downto 0),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => DOADO(15 downto 0),
      DOBDO(15) => RAM_reg_n_16,
      DOBDO(14) => RAM_reg_n_17,
      DOBDO(13) => RAM_reg_n_18,
      DOBDO(12) => RAM_reg_n_19,
      DOBDO(11) => RAM_reg_n_20,
      DOBDO(10) => RAM_reg_n_21,
      DOBDO(9) => RAM_reg_n_22,
      DOBDO(8) => RAM_reg_n_23,
      DOBDO(7) => RAM_reg_n_24,
      DOBDO(6) => RAM_reg_n_25,
      DOBDO(5) => RAM_reg_n_26,
      DOBDO(4) => RAM_reg_n_27,
      DOBDO(3) => RAM_reg_n_28,
      DOBDO(2) => RAM_reg_n_29,
      DOBDO(1) => RAM_reg_n_30,
      DOBDO(0) => RAM_reg_n_31,
      DOPADOP(1 downto 0) => NLW_RAM_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_RAM_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => p_7_in,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 2) => B"00",
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
\RAM_reg_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(11),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(11),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(11)
    );
\RAM_reg_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(10),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(10),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(10)
    );
\RAM_reg_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(9),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(9),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(9)
    );
\RAM_reg_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(8),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(8),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(8)
    );
\RAM_reg_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(7),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(7),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(7)
    );
\RAM_reg_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(6),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(6),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(6)
    );
\RAM_reg_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(5),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(5),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(5)
    );
RAM_reg_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(4),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(4),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(4)
    );
RAM_reg_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(3),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(3),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(3)
    );
RAM_reg_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(2),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(2),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(2)
    );
RAM_reg_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(1),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(1),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(1)
    );
RAM_reg_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(0),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(0),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(0)
    );
RAM_reg_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dap_write,
      I1 => dap_read,
      O => \^ram_reg_0\
    );
RAM_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBB8B88888888"
    )
        port map (
      I0 => dap_writedata(15),
      I1 => \^ram_reg_0\,
      I2 => S_AXI_AWADDR(0),
      I3 => S_AXI_ARVALID,
      I4 => S_AXI_ARADDR(0),
      I5 => S_AXI_WDATA(15),
      O => \^send_buffer_writedata1\(15)
    );
RAM_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBB8B88888888"
    )
        port map (
      I0 => dap_writedata(14),
      I1 => \^ram_reg_0\,
      I2 => S_AXI_AWADDR(0),
      I3 => S_AXI_ARVALID,
      I4 => S_AXI_ARADDR(0),
      I5 => S_AXI_WDATA(14),
      O => \^send_buffer_writedata1\(14)
    );
\RAM_reg_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(13),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(13),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(13)
    );
\RAM_reg_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA303F0000"
    )
        port map (
      I0 => dap_writedata(12),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_AWADDR(0),
      I4 => S_AXI_WDATA(12),
      I5 => \^ram_reg_0\,
      O => \^send_buffer_writedata1\(12)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized4\ is
  port (
    \s_axi_rdata_i_reg[31]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    send_buffer_writedata1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \data_reg_reg[31]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    dap_writedata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dap_read : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized4\ : entity is "rams_16b";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized4\ is
  signal RAM_reg_n_16 : STD_LOGIC;
  signal RAM_reg_n_17 : STD_LOGIC;
  signal RAM_reg_n_18 : STD_LOGIC;
  signal RAM_reg_n_19 : STD_LOGIC;
  signal RAM_reg_n_20 : STD_LOGIC;
  signal RAM_reg_n_21 : STD_LOGIC;
  signal RAM_reg_n_22 : STD_LOGIC;
  signal RAM_reg_n_23 : STD_LOGIC;
  signal RAM_reg_n_24 : STD_LOGIC;
  signal RAM_reg_n_25 : STD_LOGIC;
  signal RAM_reg_n_26 : STD_LOGIC;
  signal RAM_reg_n_27 : STD_LOGIC;
  signal RAM_reg_n_28 : STD_LOGIC;
  signal RAM_reg_n_29 : STD_LOGIC;
  signal RAM_reg_n_30 : STD_LOGIC;
  signal RAM_reg_n_31 : STD_LOGIC;
  signal \^send_buffer_writedata1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_RAM_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of RAM_reg : label is "COMMON";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of RAM_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of RAM_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg : label is "RAM";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of RAM_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of RAM_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of RAM_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of RAM_reg : label is 15;
begin
  send_buffer_writedata1(15 downto 0) <= \^send_buffer_writedata1\(15 downto 0);
RAM_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 9) => B"11111",
      ADDRARDADDR(8 downto 4) => ADDRARDADDR(4 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 9) => B"11111",
      ADDRBWRADDR(8 downto 4) => ADDRBWRADDR(4 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => S_AXI_ACLK,
      CLKBWRCLK => S_AXI_ACLK,
      DIADI(15 downto 0) => \^send_buffer_writedata1\(15 downto 0),
      DIBDI(15 downto 0) => \data_reg_reg[31]\(15 downto 0),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \s_axi_rdata_i_reg[31]\(15 downto 0),
      DOBDO(15) => RAM_reg_n_16,
      DOBDO(14) => RAM_reg_n_17,
      DOBDO(13) => RAM_reg_n_18,
      DOBDO(12) => RAM_reg_n_19,
      DOBDO(11) => RAM_reg_n_20,
      DOBDO(10) => RAM_reg_n_21,
      DOBDO(9) => RAM_reg_n_22,
      DOBDO(8) => RAM_reg_n_23,
      DOBDO(7) => RAM_reg_n_24,
      DOBDO(6) => RAM_reg_n_25,
      DOBDO(5) => RAM_reg_n_26,
      DOBDO(4) => RAM_reg_n_27,
      DOBDO(3) => RAM_reg_n_28,
      DOBDO(2) => RAM_reg_n_29,
      DOBDO(1) => RAM_reg_n_30,
      DOBDO(0) => RAM_reg_n_31,
      DOPADOP(1 downto 0) => NLW_RAM_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_RAM_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => p_7_in,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 2) => B"00",
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
RAM_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(15),
      I4 => dap_read,
      I5 => dap_writedata(15),
      O => \^send_buffer_writedata1\(15)
    );
RAM_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(6),
      I4 => dap_read,
      I5 => dap_writedata(6),
      O => \^send_buffer_writedata1\(6)
    );
RAM_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(5),
      I4 => dap_read,
      I5 => dap_writedata(5),
      O => \^send_buffer_writedata1\(5)
    );
RAM_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(4),
      I4 => dap_read,
      I5 => dap_writedata(4),
      O => \^send_buffer_writedata1\(4)
    );
RAM_reg_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(3),
      I4 => dap_read,
      I5 => dap_writedata(3),
      O => \^send_buffer_writedata1\(3)
    );
RAM_reg_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(2),
      I4 => dap_read,
      I5 => dap_writedata(2),
      O => \^send_buffer_writedata1\(2)
    );
RAM_reg_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(1),
      I4 => dap_read,
      I5 => dap_writedata(1),
      O => \^send_buffer_writedata1\(1)
    );
RAM_reg_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBB8B88888888"
    )
        port map (
      I0 => dap_writedata(0),
      I1 => dap_read,
      I2 => S_AXI_AWADDR(0),
      I3 => S_AXI_ARVALID,
      I4 => S_AXI_ARADDR(0),
      I5 => S_AXI_WDATA(0),
      O => \^send_buffer_writedata1\(0)
    );
RAM_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(14),
      I4 => dap_read,
      I5 => dap_writedata(14),
      O => \^send_buffer_writedata1\(14)
    );
\RAM_reg_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(13),
      I4 => dap_read,
      I5 => dap_writedata(13),
      O => \^send_buffer_writedata1\(13)
    );
RAM_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(12),
      I4 => dap_read,
      I5 => dap_writedata(12),
      O => \^send_buffer_writedata1\(12)
    );
RAM_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(11),
      I4 => dap_read,
      I5 => dap_writedata(11),
      O => \^send_buffer_writedata1\(11)
    );
\RAM_reg_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(10),
      I4 => dap_read,
      I5 => dap_writedata(10),
      O => \^send_buffer_writedata1\(10)
    );
\RAM_reg_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(9),
      I4 => dap_read,
      I5 => dap_writedata(9),
      O => \^send_buffer_writedata1\(9)
    );
RAM_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(8),
      I4 => dap_read,
      I5 => dap_writedata(8),
      O => \^send_buffer_writedata1\(8)
    );
RAM_reg_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1D0000001D00"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(0),
      I3 => S_AXI_WDATA(7),
      I4 => dap_read,
      I5 => dap_writedata(7),
      O => \^send_buffer_writedata1\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory is
  port (
    \s_axi_rdata_i_reg[31]\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    DOADO : out STD_LOGIC_VECTOR ( 9 downto 0 );
    p_2_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dap_readdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    send_buffer_writedata1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dap_rni_select : in STD_LOGIC;
    dap_send_buffer_select : in STD_LOGIC;
    RAM_reg : in STD_LOGIC_VECTOR ( 21 downto 0 );
    dap_recv_buffer_select : in STD_LOGIC;
    RAM_reg_0 : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory is
begin
HW: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b
     port map (
      ADDRARDADDR(3 downto 0) => ADDRARDADDR(3 downto 0),
      ADDRBWRADDR(3 downto 0) => ADDRBWRADDR(3 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      Q(15 downto 0) => Q(31 downto 16),
      RAM_reg_0(15 downto 0) => RAM_reg(21 downto 6),
      S_AXI_ACLK => S_AXI_ACLK,
      dap_readdata(15 downto 0) => dap_readdata(31 downto 16),
      dap_recv_buffer_select => dap_recv_buffer_select,
      dap_rni_select => dap_rni_select,
      dap_send_buffer_select => dap_send_buffer_select,
      p_2_out(15 downto 0) => p_2_out(31 downto 16),
      p_8_in => p_8_in,
      \s_axi_rdata_i_reg[31]\(15 downto 0) => \s_axi_rdata_i_reg[31]\(21 downto 6),
      send_buffer_writedata1(15 downto 0) => send_buffer_writedata1(31 downto 16)
    );
LW: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b_0
     port map (
      ADDRARDADDR(3 downto 0) => ADDRARDADDR(3 downto 0),
      ADDRBWRADDR(3 downto 0) => ADDRBWRADDR(3 downto 0),
      DOADO(15 downto 10) => \s_axi_rdata_i_reg[31]\(5 downto 0),
      DOADO(9 downto 0) => DOADO(9 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      Q(15 downto 0) => Q(15 downto 0),
      RAM_reg_0(5 downto 0) => RAM_reg(5 downto 0),
      RAM_reg_1(9 downto 0) => RAM_reg_0(9 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      dap_readdata(15 downto 0) => dap_readdata(15 downto 0),
      dap_recv_buffer_select => dap_recv_buffer_select,
      dap_rni_select => dap_rni_select,
      dap_send_buffer_select => dap_send_buffer_select,
      p_2_out(15 downto 0) => p_2_out(15 downto 0),
      p_8_in => p_8_in,
      send_buffer_writedata1(15 downto 0) => send_buffer_writedata1(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory__parameterized0\ is
  port (
    \s_axi_rdata_i_reg[31]\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    DOADO : out STD_LOGIC_VECTOR ( 9 downto 0 );
    send_buffer_writedata1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RAM_reg : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \toggle_bit_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    dap_writedata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dap_write : in STD_LOGIC;
    dap_read : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory__parameterized0\ : entity is "rni_memory";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory__parameterized0\ is
  signal \^ram_reg\ : STD_LOGIC;
begin
  RAM_reg <= \^ram_reg\;
HW: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized4\
     port map (
      ADDRARDADDR(4 downto 0) => ADDRARDADDR(4 downto 0),
      ADDRBWRADDR(4) => \toggle_bit_reg[0]\,
      ADDRBWRADDR(3 downto 0) => Q(3 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(0) => S_AXI_ARADDR(0),
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(0) => S_AXI_AWADDR(0),
      S_AXI_WDATA(15 downto 0) => S_AXI_WDATA(31 downto 16),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      dap_read => \^ram_reg\,
      dap_writedata(15 downto 0) => dap_writedata(31 downto 16),
      \data_reg_reg[31]\(15 downto 0) => \data_reg_reg[31]\(31 downto 16),
      p_7_in => p_7_in,
      \s_axi_rdata_i_reg[31]\(15 downto 0) => \s_axi_rdata_i_reg[31]\(21 downto 6),
      send_buffer_writedata1(15 downto 0) => send_buffer_writedata1(31 downto 16)
    );
LW: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rams_16b__parameterized2\
     port map (
      ADDRARDADDR(4 downto 0) => ADDRARDADDR(4 downto 0),
      ADDRBWRADDR(4) => \toggle_bit_reg[0]\,
      ADDRBWRADDR(3 downto 0) => Q(3 downto 0),
      DOADO(15 downto 10) => \s_axi_rdata_i_reg[31]\(5 downto 0),
      DOADO(9 downto 0) => DOADO(9 downto 0),
      RAM_reg_0 => \^ram_reg\,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(0) => S_AXI_ARADDR(0),
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(0) => S_AXI_AWADDR(0),
      S_AXI_WDATA(15 downto 0) => S_AXI_WDATA(15 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => WEBWE(0),
      dap_read => dap_read,
      dap_write => dap_write,
      dap_writedata(15 downto 0) => dap_writedata(15 downto 0),
      \data_reg_reg[15]\(15 downto 0) => \data_reg_reg[31]\(15 downto 0),
      p_7_in => p_7_in,
      send_buffer_writedata1(15 downto 0) => send_buffer_writedata1(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  port (
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \rni_readdata_delayed_reg[10]\ : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    dap_rni_select_reg : out STD_LOGIC;
    ipif_Bus2IP_RdCE : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    RAM_reg : out STD_LOGIC;
    RAM_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_in : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \command_reg_reg[0]\ : out STD_LOGIC;
    send_buffer_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    synchronize_flag_reg : out STD_LOGIC;
    \interrupt_reg_reg[0]\ : out STD_LOGIC;
    RAM_reg_1 : out STD_LOGIC;
    p_7_in : out STD_LOGIC;
    \FSM_sequential_xmit_state_reg[0]\ : out STD_LOGIC;
    \rni_readdata_delayed_reg[3]\ : out STD_LOGIC;
    \command_reg_reg[0]_0\ : out STD_LOGIC;
    \rni_readdata_delayed_reg[5]\ : out STD_LOGIC;
    \rni_readdata_delayed_reg[3]_0\ : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Reset : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    old_slave_read : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    dap_read : in STD_LOGIC;
    dap_write : in STD_LOGIC;
    \S_AXI_AWADDR[8]\ : in STD_LOGIC;
    dap_address : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dap_read_0 : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    p_1_out : in STD_LOGIC_VECTOR ( 21 downto 0 );
    p_3_out : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \S_AXI_AWADDR[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \S_AXI_AWADDR_6__s_port_\ : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    RAM_reg_2 : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  signal \^fsm_sequential_xmit_state_reg[0]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal I_DECODER_n_23 : STD_LOGIC;
  signal I_DECODER_n_24 : STD_LOGIC;
  signal I_DECODER_n_61 : STD_LOGIC;
  signal I_DECODER_n_62 : STD_LOGIC;
  signal \S_AXI_AWADDR_6__s_net_1\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^command_reg_reg[0]_0\ : STD_LOGIC;
  signal dap_rni_select_i_2_n_0 : STD_LOGIC;
  signal dap_rni_select_i_3_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rni_readdata_delayed[31]_i_3_n_0\ : STD_LOGIC;
  signal \rni_readdata_delayed[31]_i_4_n_0\ : STD_LOGIC;
  signal \^rni_readdata_delayed_reg[3]\ : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal s_axi_rdata_i : STD_LOGIC;
  signal \^send_buffer_address1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal timeout : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair3";
begin
  \FSM_sequential_xmit_state_reg[0]\ <= \^fsm_sequential_xmit_state_reg[0]\;
  \S_AXI_AWADDR_6__s_net_1\ <= \S_AXI_AWADDR_6__s_port_\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  \command_reg_reg[0]_0\ <= \^command_reg_reg[0]_0\;
  \rni_readdata_delayed_reg[3]\ <= \^rni_readdata_delayed_reg[3]\;
  send_buffer_address1(1 downto 0) <= \^send_buffer_address1\(1 downto 0);
\FSM_sequential_xmit_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEAAAAFEAE"
    )
        port map (
      I0 => \^send_buffer_address1\(0),
      I1 => S_AXI_AWADDR(1),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_ARADDR(1),
      I4 => dap_read_0,
      I5 => dap_address(1),
      O => \^fsm_sequential_xmit_state_reg[0]\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => timeout,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(3),
      Q => timeout,
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1_n_0\
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
     port map (
      D(21 downto 0) => D(21 downto 0),
      E(0) => E(0),
      Q(0) => timeout,
      RAM_reg => RAM_reg,
      RAM_reg_0(0) => RAM_reg_0(0),
      RAM_reg_1 => RAM_reg_1,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(1 downto 0) => S_AXI_ARADDR(6 downto 5),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(1 downto 0) => S_AXI_AWADDR(6 downto 5),
      \S_AXI_AWADDR[16]\ => dap_rni_select_i_3_n_0,
      \S_AXI_AWADDR[2]\ => \rni_readdata_delayed[31]_i_3_n_0\,
      \S_AXI_AWADDR[8]\ => \S_AXI_AWADDR[8]\,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_AWVALID_0 => \state[1]_i_2_n_0\,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => \^s_axi_bvalid\,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => \^s_axi_rvalid\,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      WEA(0) => WEA(0),
      \command_reg_reg[0]\ => \command_reg_reg[0]\,
      dap_address(1 downto 0) => dap_address(6 downto 5),
      \dap_address[13]\ => dap_rni_select_i_2_n_0,
      dap_read => dap_read,
      dap_read_0 => dap_read_0,
      dap_rni_select_reg => dap_rni_select_reg,
      dap_write => dap_write,
      \interrupt_reg_reg[0]\ => \interrupt_reg_reg[0]\,
      ipif_Bus2IP_RdCE => ipif_Bus2IP_RdCE,
      old_slave_read => old_slave_read,
      p_1_out(21 downto 0) => p_1_out(21 downto 0),
      p_3_out(21 downto 0) => p_3_out(21 downto 0),
      p_7_in => p_7_in,
      p_8_in => p_8_in,
      \rni_readdata_delayed_reg[10]\ => \rni_readdata_delayed_reg[10]\,
      s_axi_bvalid_i_reg => I_DECODER_n_62,
      \s_axi_rdata_i_reg[31]\(21 downto 0) => IP2Bus_Data(31 downto 10),
      s_axi_rvalid_i_reg => I_DECODER_n_61,
      s_axi_rvalid_i_reg_0 => \state[1]_i_3_n_0\,
      send_buffer_address1(1 downto 0) => \^send_buffer_address1\(1 downto 0),
      \state_reg[1]\(1) => I_DECODER_n_23,
      \state_reg[1]\(0) => I_DECODER_n_24,
      \state_reg[1]_0\(1 downto 0) => state(1 downto 0),
      synchronize_flag_reg => synchronize_flag_reg
    );
\RAM_reg_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => dap_address(1),
      I1 => dap_write,
      I2 => dap_read,
      I3 => S_AXI_ARADDR(1),
      I4 => S_AXI_ARVALID,
      I5 => S_AXI_AWADDR(1),
      O => \^send_buffer_address1\(1)
    );
\RAM_reg_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => dap_address(0),
      I1 => dap_write,
      I2 => dap_read,
      I3 => S_AXI_ARADDR(0),
      I4 => S_AXI_ARVALID,
      I5 => S_AXI_AWADDR(0),
      O => \^send_buffer_address1\(0)
    );
\command_reg[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => dap_address(3),
      I1 => dap_write,
      I2 => dap_read,
      I3 => S_AXI_ARADDR(3),
      I4 => S_AXI_ARVALID,
      I5 => S_AXI_AWADDR(3),
      O => \^command_reg_reg[0]_0\
    );
\command_reg[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => dap_address(4),
      I1 => dap_write,
      I2 => dap_read,
      I3 => S_AXI_ARADDR(4),
      I4 => S_AXI_ARVALID,
      I5 => S_AXI_AWADDR(4),
      O => \^rni_readdata_delayed_reg[3]\
    );
dap_rni_select_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => S_AXI_ARADDR(5),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_AWADDR(5),
      I3 => dap_write,
      I4 => dap_read,
      I5 => dap_address(5),
      O => dap_rni_select_i_2_n_0
    );
dap_rni_select_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => dap_address(6),
      I1 => dap_write,
      I2 => dap_read,
      I3 => S_AXI_ARADDR(6),
      I4 => S_AXI_ARVALID,
      I5 => S_AXI_AWADDR(6),
      O => dap_rni_select_i_3_n_0
    );
\interrupt_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_ARADDR(3),
      I3 => dap_read_0,
      I4 => dap_address(3),
      I5 => \^rni_readdata_delayed_reg[3]\,
      O => \rni_readdata_delayed_reg[3]_0\
    );
\rni_readdata_delayed[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFF1011"
    )
        port map (
      I0 => \S_AXI_AWADDR[5]\(0),
      I1 => \S_AXI_AWADDR_6__s_net_1\,
      I2 => \rni_readdata_delayed[31]_i_4_n_0\,
      I3 => \^fsm_sequential_xmit_state_reg[0]\,
      I4 => \^rni_readdata_delayed_reg[3]\,
      I5 => \^command_reg_reg[0]_0\,
      O => \rni_readdata_delayed[31]_i_3_n_0\
    );
\rni_readdata_delayed[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => \^send_buffer_address1\(1),
      I1 => S_AXI_AWADDR(2),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_ARADDR(2),
      I4 => dap_read_0,
      I5 => dap_address(2),
      O => \rni_readdata_delayed[31]_i_4_n_0\
    );
\rni_readdata_delayed[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABFBFFFFABFB"
    )
        port map (
      I0 => \^rni_readdata_delayed_reg[3]\,
      I1 => S_AXI_AWADDR(3),
      I2 => S_AXI_ARVALID,
      I3 => S_AXI_ARADDR(3),
      I4 => dap_read_0,
      I5 => dap_address(3),
      O => \rni_readdata_delayed_reg[5]\
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => Reset,
      Q => rst,
      R => '0'
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_62,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => s_axi_rdata_i
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => RAM_reg_2(0),
      Q => S_AXI_RDATA(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(10),
      Q => S_AXI_RDATA(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(11),
      Q => S_AXI_RDATA(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(12),
      Q => S_AXI_RDATA(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(13),
      Q => S_AXI_RDATA(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(14),
      Q => S_AXI_RDATA(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(15),
      Q => S_AXI_RDATA(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(16),
      Q => S_AXI_RDATA(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(17),
      Q => S_AXI_RDATA(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(18),
      Q => S_AXI_RDATA(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(19),
      Q => S_AXI_RDATA(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => RAM_reg_2(1),
      Q => S_AXI_RDATA(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(20),
      Q => S_AXI_RDATA(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(21),
      Q => S_AXI_RDATA(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(22),
      Q => S_AXI_RDATA(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(23),
      Q => S_AXI_RDATA(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(24),
      Q => S_AXI_RDATA(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(25),
      Q => S_AXI_RDATA(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(26),
      Q => S_AXI_RDATA(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(27),
      Q => S_AXI_RDATA(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(28),
      Q => S_AXI_RDATA(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(29),
      Q => S_AXI_RDATA(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => RAM_reg_2(2),
      Q => S_AXI_RDATA(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(30),
      Q => S_AXI_RDATA(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(31),
      Q => S_AXI_RDATA(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => RAM_reg_2(3),
      Q => S_AXI_RDATA(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => RAM_reg_2(4),
      Q => S_AXI_RDATA(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => RAM_reg_2(5),
      Q => S_AXI_RDATA(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => RAM_reg_2(6),
      Q => S_AXI_RDATA(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => RAM_reg_2(7),
      Q => S_AXI_RDATA(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => RAM_reg_2(8),
      Q => S_AXI_RDATA(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rdata_i,
      D => RAM_reg_2(9),
      Q => S_AXI_RDATA(9),
      R => rst
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_61,
      Q => \^s_axi_rvalid\,
      R => rst
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => S_AXI_RREADY,
      I2 => \^s_axi_bvalid\,
      I3 => S_AXI_BREADY,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_24,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => I_DECODER_n_23,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  port (
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \rni_readdata_delayed_reg[10]\ : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    rni_chipselect : out STD_LOGIC;
    ipif_Bus2IP_RdCE : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    RAM_reg : out STD_LOGIC;
    RAM_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_in : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \command_reg_reg[0]\ : out STD_LOGIC;
    send_buffer_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    synchronize_flag_reg : out STD_LOGIC;
    \interrupt_reg_reg[0]\ : out STD_LOGIC;
    RAM_reg_1 : out STD_LOGIC;
    p_7_in : out STD_LOGIC;
    \FSM_sequential_xmit_state_reg[0]\ : out STD_LOGIC;
    \rni_readdata_delayed_reg[3]\ : out STD_LOGIC;
    \command_reg_reg[0]_0\ : out STD_LOGIC;
    \rni_readdata_delayed_reg[5]\ : out STD_LOGIC;
    \rni_readdata_delayed_reg[3]_0\ : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Reset : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    old_slave_read : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    dap_read : in STD_LOGIC;
    dap_write : in STD_LOGIC;
    \S_AXI_AWADDR[8]\ : in STD_LOGIC;
    dap_address : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dap_read_0 : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    RAM_reg_2 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    p_1_out : in STD_LOGIC_VECTOR ( 21 downto 0 );
    p_3_out : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \S_AXI_AWADDR[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \S_AXI_AWADDR_6__s_port_\ : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  signal \S_AXI_AWADDR_6__s_net_1\ : STD_LOGIC;
begin
  \S_AXI_AWADDR_6__s_net_1\ <= \S_AXI_AWADDR_6__s_port_\;
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
     port map (
      D(21 downto 0) => D(21 downto 0),
      E(0) => E(0),
      \FSM_sequential_xmit_state_reg[0]\ => \FSM_sequential_xmit_state_reg[0]\,
      RAM_reg => RAM_reg,
      RAM_reg_0(0) => RAM_reg_0(0),
      RAM_reg_1 => RAM_reg_1,
      RAM_reg_2(9 downto 0) => RAM_reg_2(9 downto 0),
      Reset => Reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(6 downto 0) => S_AXI_ARADDR(6 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(6 downto 0) => S_AXI_AWADDR(6 downto 0),
      \S_AXI_AWADDR[5]\(0) => \S_AXI_AWADDR[5]\(0),
      \S_AXI_AWADDR[8]\ => \S_AXI_AWADDR[8]\,
      \S_AXI_AWADDR_6__s_port_\ => \S_AXI_AWADDR_6__s_net_1\,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      WEA(0) => WEA(0),
      \command_reg_reg[0]\ => \command_reg_reg[0]\,
      \command_reg_reg[0]_0\ => \command_reg_reg[0]_0\,
      dap_address(6 downto 0) => dap_address(6 downto 0),
      dap_read => dap_read,
      dap_read_0 => dap_read_0,
      dap_rni_select_reg => rni_chipselect,
      dap_write => dap_write,
      \interrupt_reg_reg[0]\ => \interrupt_reg_reg[0]\,
      ipif_Bus2IP_RdCE => ipif_Bus2IP_RdCE,
      old_slave_read => old_slave_read,
      p_1_out(21 downto 0) => p_1_out(21 downto 0),
      p_3_out(21 downto 0) => p_3_out(21 downto 0),
      p_7_in => p_7_in,
      p_8_in => p_8_in,
      \rni_readdata_delayed_reg[10]\ => \rni_readdata_delayed_reg[10]\,
      \rni_readdata_delayed_reg[3]\ => \rni_readdata_delayed_reg[3]\,
      \rni_readdata_delayed_reg[3]_0\ => \rni_readdata_delayed_reg[3]_0\,
      \rni_readdata_delayed_reg[5]\ => \rni_readdata_delayed_reg[5]\,
      send_buffer_address1(1 downto 0) => send_buffer_address1(1 downto 0),
      synchronize_flag_reg => synchronize_flag_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_generic_rni_static is
  port (
    \s_axi_rdata_i_reg[31]\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    RAM_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[31]_0\ : out STD_LOGIC_VECTOR ( 21 downto 0 );
    Reset : out STD_LOGIC;
    old_slave_read : out STD_LOGIC;
    NoC_IRQ : out STD_LOGIC;
    RAM_reg_0 : out STD_LOGIC;
    \s_axi_rdata_i_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \command_reg_reg[0]\ : out STD_LOGIC;
    \command_reg_reg[0]_0\ : out STD_LOGIC;
    dap_readdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TO_NOC : out STD_LOGIC_VECTOR ( 47 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    \S_AXI_AWADDR[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_7_in : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    HeartBeat : in STD_LOGIC;
    rni_chipselect : in STD_LOGIC;
    ipif_Bus2IP_RdCE : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dap_address : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Sync : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 21 downto 0 );
    Bus_RNW_reg_reg : in STD_LOGIC;
    \S_AXI_AWADDR[8]\ : in STD_LOGIC;
    \S_AXI_AWADDR[7]\ : in STD_LOGIC;
    dap_writedata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dap_write : in STD_LOGIC;
    dap_read : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : in STD_LOGIC;
    \S_AXI_AWADDR[8]_0\ : in STD_LOGIC;
    dap_read_0 : in STD_LOGIC;
    FROM_NOC : in STD_LOGIC_VECTOR ( 43 downto 0 );
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC;
    Bus_RNW_reg_reg_1 : in STD_LOGIC;
    dap_read_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_generic_rni_static;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_generic_rni_static is
  signal \^ram_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ram_reg_0\ : STD_LOGIC;
  signal \^reset\ : STD_LOGIC;
  signal dap_recv_buffer_select : STD_LOGIC;
  signal dap_rni_select : STD_LOGIC;
  signal dap_send_buffer_select : STD_LOGIC;
  signal interface_n_1 : STD_LOGIC;
  signal interface_n_4 : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal recv_buffer_address : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal recv_buffer_write2 : STD_LOGIC;
  signal recv_buffer_writedata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rni_readdata_delayed : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rdata_i_reg[31]_0\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal send_buffer_address : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal send_buffer_address1 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal send_buffer_writedata1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slave_readdata : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  RAM_reg(0) <= \^ram_reg\(0);
  RAM_reg_0 <= \^ram_reg_0\;
  Reset <= \^reset\;
  \s_axi_rdata_i_reg[31]_0\(21 downto 0) <= \^s_axi_rdata_i_reg[31]_0\(21 downto 0);
\G0.recv_buffer\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory__parameterized0\
     port map (
      ADDRARDADDR(4) => interface_n_4,
      ADDRARDADDR(3) => \^ram_reg\(0),
      ADDRARDADDR(2) => send_buffer_address1(2),
      ADDRARDADDR(1 downto 0) => \S_AXI_AWADDR[3]\(1 downto 0),
      DOADO(9 downto 0) => p_1_out(9 downto 0),
      Q(3 downto 0) => recv_buffer_address(3 downto 0),
      RAM_reg => \^ram_reg_0\,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(0) => S_AXI_ARADDR(0),
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(0) => S_AXI_AWADDR(0),
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      WEA(0) => WEA(0),
      WEBWE(0) => recv_buffer_write2,
      dap_read => dap_read,
      dap_write => dap_write,
      dap_writedata(31 downto 0) => dap_writedata(31 downto 0),
      \data_reg_reg[31]\(31 downto 0) => recv_buffer_writedata(31 downto 0),
      p_7_in => p_7_in,
      \s_axi_rdata_i_reg[31]\(21 downto 0) => \^s_axi_rdata_i_reg[31]_0\(21 downto 0),
      send_buffer_writedata1(31 downto 0) => send_buffer_writedata1(31 downto 0),
      \toggle_bit_reg[0]\ => interface_n_1
    );
\G0.send_buffer\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rni_memory
     port map (
      ADDRARDADDR(3) => \^ram_reg\(0),
      ADDRARDADDR(2) => send_buffer_address1(2),
      ADDRARDADDR(1 downto 0) => \S_AXI_AWADDR[3]\(1 downto 0),
      ADDRBWRADDR(3 downto 0) => send_buffer_address(3 downto 0),
      DOADO(9 downto 0) => p_3_out(9 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      Q(31 downto 0) => rni_readdata_delayed(31 downto 0),
      RAM_reg(21 downto 0) => \^s_axi_rdata_i_reg[31]_0\(21 downto 0),
      RAM_reg_0(9 downto 0) => p_1_out(9 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      dap_readdata(31 downto 0) => dap_readdata(31 downto 0),
      dap_recv_buffer_select => dap_recv_buffer_select,
      dap_rni_select => dap_rni_select,
      dap_send_buffer_select => dap_send_buffer_select,
      p_2_out(31 downto 0) => p_2_out(31 downto 0),
      p_8_in => p_8_in,
      \s_axi_rdata_i_reg[31]\(21 downto 0) => \s_axi_rdata_i_reg[31]\(21 downto 0),
      send_buffer_writedata1(31 downto 0) => send_buffer_writedata1(31 downto 0)
    );
dap_recv_buffer_select_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => p_7_in,
      Q => dap_recv_buffer_select
    );
dap_rni_select_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => rni_chipselect,
      Q => dap_rni_select
    );
dap_send_buffer_select_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => p_8_in,
      Q => dap_send_buffer_select
    );
interface: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generic_nios_to_3D_noc
     port map (
      ADDRARDADDR(2) => interface_n_4,
      ADDRARDADDR(1) => \^ram_reg\(0),
      ADDRARDADDR(0) => send_buffer_address1(2),
      ADDRBWRADDR(3 downto 0) => send_buffer_address(3 downto 0),
      AR(0) => \^reset\,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg_0,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_1,
      D(9 downto 0) => slave_readdata(9 downto 0),
      DOADO(9 downto 0) => p_1_out(9 downto 0),
      E(0) => E(0),
      FROM_NOC(43 downto 0) => FROM_NOC(43 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      HeartBeat => HeartBeat,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      NoC_IRQ => NoC_IRQ,
      Q(3 downto 0) => recv_buffer_address(3 downto 0),
      RAM_reg(31 downto 0) => recv_buffer_writedata(31 downto 0),
      RAM_reg_0(9 downto 0) => p_3_out(9 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(2 downto 0) => S_AXI_ARADDR(3 downto 1),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(2 downto 0) => S_AXI_AWADDR(3 downto 1),
      \S_AXI_AWADDR[3]\(1 downto 0) => \S_AXI_AWADDR[3]\(1 downto 0),
      \S_AXI_AWADDR[7]\ => \S_AXI_AWADDR[7]\,
      \S_AXI_AWADDR[8]\ => \S_AXI_AWADDR[8]\,
      \S_AXI_AWADDR[8]_0\ => \S_AXI_AWADDR[8]_0\,
      S_AXI_WDATA(13 downto 0) => S_AXI_WDATA(13 downto 0),
      Sync(1 downto 0) => Sync(1 downto 0),
      TO_NOC(47 downto 0) => TO_NOC(47 downto 0),
      WEBWE(0) => recv_buffer_write2,
      \channel_nr_reg[2]_0\ => interface_n_1,
      \command_reg_reg[0]_0\ => \command_reg_reg[0]\,
      \command_reg_reg[0]_1\ => \command_reg_reg[0]_0\,
      dap_address(2 downto 0) => dap_address(2 downto 0),
      dap_read => dap_read,
      dap_read_0 => \^ram_reg_0\,
      dap_read_1 => dap_read_0,
      dap_read_2 => dap_read_1,
      dap_write => dap_write,
      dap_writedata(13 downto 0) => dap_writedata(13 downto 0),
      p_2_out(31 downto 0) => p_2_out(31 downto 0),
      rni_chipselect => rni_chipselect,
      \s_axi_rdata_i_reg[9]\(9 downto 0) => \s_axi_rdata_i_reg[9]\(9 downto 0)
    );
old_slave_read_reg: unisim.vcomponents.FDCE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => ipif_Bus2IP_RdCE,
      Q => old_slave_read
    );
\rni_readdata_delayed_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => slave_readdata(0),
      Q => rni_readdata_delayed(0)
    );
\rni_readdata_delayed_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(0),
      Q => rni_readdata_delayed(10)
    );
\rni_readdata_delayed_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(1),
      Q => rni_readdata_delayed(11)
    );
\rni_readdata_delayed_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(2),
      Q => rni_readdata_delayed(12)
    );
\rni_readdata_delayed_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(3),
      Q => rni_readdata_delayed(13)
    );
\rni_readdata_delayed_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(4),
      Q => rni_readdata_delayed(14)
    );
\rni_readdata_delayed_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(5),
      Q => rni_readdata_delayed(15)
    );
\rni_readdata_delayed_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(6),
      Q => rni_readdata_delayed(16)
    );
\rni_readdata_delayed_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(7),
      Q => rni_readdata_delayed(17)
    );
\rni_readdata_delayed_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(8),
      Q => rni_readdata_delayed(18)
    );
\rni_readdata_delayed_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(9),
      Q => rni_readdata_delayed(19)
    );
\rni_readdata_delayed_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => slave_readdata(1),
      Q => rni_readdata_delayed(1)
    );
\rni_readdata_delayed_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(10),
      Q => rni_readdata_delayed(20)
    );
\rni_readdata_delayed_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(11),
      Q => rni_readdata_delayed(21)
    );
\rni_readdata_delayed_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(12),
      Q => rni_readdata_delayed(22)
    );
\rni_readdata_delayed_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(13),
      Q => rni_readdata_delayed(23)
    );
\rni_readdata_delayed_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(14),
      Q => rni_readdata_delayed(24)
    );
\rni_readdata_delayed_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(15),
      Q => rni_readdata_delayed(25)
    );
\rni_readdata_delayed_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(16),
      Q => rni_readdata_delayed(26)
    );
\rni_readdata_delayed_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(17),
      Q => rni_readdata_delayed(27)
    );
\rni_readdata_delayed_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(18),
      Q => rni_readdata_delayed(28)
    );
\rni_readdata_delayed_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(19),
      Q => rni_readdata_delayed(29)
    );
\rni_readdata_delayed_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => slave_readdata(2),
      Q => rni_readdata_delayed(2)
    );
\rni_readdata_delayed_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(20),
      Q => rni_readdata_delayed(30)
    );
\rni_readdata_delayed_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => D(21),
      Q => rni_readdata_delayed(31)
    );
\rni_readdata_delayed_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => slave_readdata(3),
      Q => rni_readdata_delayed(3)
    );
\rni_readdata_delayed_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => slave_readdata(4),
      Q => rni_readdata_delayed(4)
    );
\rni_readdata_delayed_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => slave_readdata(5),
      Q => rni_readdata_delayed(5)
    );
\rni_readdata_delayed_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => slave_readdata(6),
      Q => rni_readdata_delayed(6)
    );
\rni_readdata_delayed_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => slave_readdata(7),
      Q => rni_readdata_delayed(7)
    );
\rni_readdata_delayed_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => slave_readdata(8),
      Q => rni_readdata_delayed(8)
    );
\rni_readdata_delayed_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      CLR => \^reset\,
      D => slave_readdata(9),
      Q => rni_readdata_delayed(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static is
  port (
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TO_NOC : out STD_LOGIC_VECTOR ( 47 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    dap_readdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    NoC_IRQ : out STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dap_address : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Sync : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    HeartBeat : in STD_LOGIC;
    FROM_NOC : in STD_LOGIC_VECTOR ( 43 downto 0 );
    dap_read : in STD_LOGIC;
    dap_write : in STD_LOGIC;
    dap_writedata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static is
  signal AXI_LITE_IPIF_I_n_24 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_30 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_34 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_37 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_38 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_39 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_41 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_42 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_43 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_44 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_45 : STD_LOGIC;
  signal \G0.recv_buffer/wea\ : STD_LOGIC;
  signal \G0.send_buffer/wea\ : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Reset : STD_LOGIC;
  signal USER_LOGIC_I_n_48 : STD_LOGIC;
  signal USER_LOGIC_I_n_59 : STD_LOGIC;
  signal USER_LOGIC_I_n_60 : STD_LOGIC;
  signal \interface/command_reg\ : STD_LOGIC;
  signal ipif_Bus2IP_RdCE : STD_LOGIC;
  signal old_slave_read : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal p_3_out : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal rni_chipselect : STD_LOGIC;
  signal send_buffer_address1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slave_readdata : STD_LOGIC_VECTOR ( 31 downto 10 );
begin
AXI_LITE_IPIF_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
     port map (
      D(21 downto 0) => slave_readdata(31 downto 10),
      E(0) => \interface/command_reg\,
      \FSM_sequential_xmit_state_reg[0]\ => AXI_LITE_IPIF_I_n_41,
      RAM_reg => AXI_LITE_IPIF_I_n_30,
      RAM_reg_0(0) => \G0.send_buffer/wea\,
      RAM_reg_1 => AXI_LITE_IPIF_I_n_39,
      RAM_reg_2(9 downto 0) => IP2Bus_Data(9 downto 0),
      Reset => Reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(6 downto 3) => S_AXI_ARADDR(8 downto 5),
      S_AXI_ARADDR(2 downto 0) => S_AXI_ARADDR(2 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(6 downto 3) => S_AXI_AWADDR(8 downto 5),
      S_AXI_AWADDR(2 downto 0) => S_AXI_AWADDR(2 downto 0),
      \S_AXI_AWADDR[5]\(0) => send_buffer_address1(3),
      \S_AXI_AWADDR[8]\ => USER_LOGIC_I_n_60,
      \S_AXI_AWADDR_6__s_port_\ => USER_LOGIC_I_n_59,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      WEA(0) => \G0.recv_buffer/wea\,
      \command_reg_reg[0]\ => AXI_LITE_IPIF_I_n_34,
      \command_reg_reg[0]_0\ => AXI_LITE_IPIF_I_n_43,
      dap_address(6 downto 3) => dap_address(8 downto 5),
      dap_address(2 downto 0) => dap_address(2 downto 0),
      dap_read => dap_read,
      dap_read_0 => USER_LOGIC_I_n_48,
      dap_write => dap_write,
      \interrupt_reg_reg[0]\ => AXI_LITE_IPIF_I_n_38,
      ipif_Bus2IP_RdCE => ipif_Bus2IP_RdCE,
      old_slave_read => old_slave_read,
      p_1_out(21 downto 0) => p_1_out(31 downto 10),
      p_3_out(21 downto 0) => p_3_out(31 downto 10),
      p_7_in => p_7_in,
      p_8_in => p_8_in,
      rni_chipselect => rni_chipselect,
      \rni_readdata_delayed_reg[10]\ => AXI_LITE_IPIF_I_n_24,
      \rni_readdata_delayed_reg[3]\ => AXI_LITE_IPIF_I_n_42,
      \rni_readdata_delayed_reg[3]_0\ => AXI_LITE_IPIF_I_n_45,
      \rni_readdata_delayed_reg[5]\ => AXI_LITE_IPIF_I_n_44,
      send_buffer_address1(1 downto 0) => send_buffer_address1(1 downto 0),
      synchronize_flag_reg => AXI_LITE_IPIF_I_n_37
    );
USER_LOGIC_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_generic_rni_static
     port map (
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_24,
      Bus_RNW_reg_reg_0 => AXI_LITE_IPIF_I_n_37,
      Bus_RNW_reg_reg_1 => AXI_LITE_IPIF_I_n_34,
      D(21 downto 0) => slave_readdata(31 downto 10),
      E(0) => \interface/command_reg\,
      FROM_NOC(43 downto 0) => FROM_NOC(43 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0) => \G0.send_buffer/wea\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => AXI_LITE_IPIF_I_n_38,
      HeartBeat => HeartBeat,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => AXI_LITE_IPIF_I_n_30,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => AXI_LITE_IPIF_I_n_39,
      NoC_IRQ => NoC_IRQ,
      RAM_reg(0) => send_buffer_address1(3),
      RAM_reg_0 => USER_LOGIC_I_n_48,
      Reset => Reset,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(3 downto 1) => S_AXI_ARADDR(4 downto 2),
      S_AXI_ARADDR(0) => S_AXI_ARADDR(0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 1) => S_AXI_AWADDR(4 downto 2),
      S_AXI_AWADDR(0) => S_AXI_AWADDR(0),
      \S_AXI_AWADDR[3]\(1 downto 0) => send_buffer_address1(1 downto 0),
      \S_AXI_AWADDR[7]\ => AXI_LITE_IPIF_I_n_43,
      \S_AXI_AWADDR[8]\ => AXI_LITE_IPIF_I_n_42,
      \S_AXI_AWADDR[8]_0\ => AXI_LITE_IPIF_I_n_45,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      Sync(1 downto 0) => Sync(1 downto 0),
      TO_NOC(47 downto 0) => TO_NOC(47 downto 0),
      WEA(0) => \G0.recv_buffer/wea\,
      \command_reg_reg[0]\ => USER_LOGIC_I_n_59,
      \command_reg_reg[0]_0\ => USER_LOGIC_I_n_60,
      dap_address(2 downto 0) => dap_address(4 downto 2),
      dap_read => dap_read,
      dap_read_0 => AXI_LITE_IPIF_I_n_44,
      dap_read_1 => AXI_LITE_IPIF_I_n_41,
      dap_readdata(31 downto 0) => dap_readdata(31 downto 0),
      dap_write => dap_write,
      dap_writedata(31 downto 0) => dap_writedata(31 downto 0),
      ipif_Bus2IP_RdCE => ipif_Bus2IP_RdCE,
      old_slave_read => old_slave_read,
      p_7_in => p_7_in,
      p_8_in => p_8_in,
      rni_chipselect => rni_chipselect,
      \s_axi_rdata_i_reg[31]\(21 downto 0) => p_3_out(31 downto 10),
      \s_axi_rdata_i_reg[31]_0\(21 downto 0) => p_1_out(31 downto 10),
      \s_axi_rdata_i_reg[9]\(9 downto 0) => IP2Bus_Data(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static_c1_v1_0 is
  port (
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TO_NOC : out STD_LOGIC_VECTOR ( 47 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    dap_readdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    NoC_IRQ : out STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dap_address : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Sync : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    HeartBeat : in STD_LOGIC;
    FROM_NOC : in STD_LOGIC_VECTOR ( 43 downto 0 );
    dap_read : in STD_LOGIC;
    dap_write : in STD_LOGIC;
    dap_writedata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static_c1_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static_c1_v1_0 is
begin
kth_axi_rni_static_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static
     port map (
      FROM_NOC(43 downto 0) => FROM_NOC(43 downto 0),
      HeartBeat => HeartBeat,
      NoC_IRQ => NoC_IRQ,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(8 downto 0) => S_AXI_ARADDR(8 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 0) => S_AXI_AWADDR(8 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID,
      Sync(1 downto 0) => Sync(1 downto 0),
      TO_NOC(47 downto 0) => TO_NOC(47 downto 0),
      dap_address(8 downto 0) => dap_address(8 downto 0),
      dap_read => dap_read,
      dap_readdata(31 downto 0) => dap_readdata(31 downto 0),
      dap_write => dap_write,
      dap_writedata(31 downto 0) => dap_writedata(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "BD_kth_axi_rni_static_1_0,kth_axi_rni_static_c1_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "kth_axi_rni_static_c1_v1_0,Vivado 2016.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \^to_noc\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \^dap_readdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  S_AXI_AWREADY <= \^s_axi_wready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_WREADY <= \^s_axi_wready\;
  TO_NOC(55 downto 42) <= \^to_noc\(55 downto 42);
  TO_NOC(41) <= \<const0>\;
  TO_NOC(40) <= \<const0>\;
  TO_NOC(39) <= \<const0>\;
  TO_NOC(38) <= \<const0>\;
  TO_NOC(37) <= \<const0>\;
  TO_NOC(36) <= \^to_noc\(36);
  TO_NOC(35) <= \<const0>\;
  TO_NOC(34) <= \^to_noc\(34);
  TO_NOC(33) <= \<const0>\;
  TO_NOC(32) <= \<const0>\;
  TO_NOC(31 downto 0) <= \^to_noc\(31 downto 0);
  dap_readdata(63) <= \<const0>\;
  dap_readdata(62) <= \<const0>\;
  dap_readdata(61) <= \<const0>\;
  dap_readdata(60) <= \<const0>\;
  dap_readdata(59) <= \<const0>\;
  dap_readdata(58) <= \<const0>\;
  dap_readdata(57) <= \<const0>\;
  dap_readdata(56) <= \<const0>\;
  dap_readdata(55) <= \<const0>\;
  dap_readdata(54) <= \<const0>\;
  dap_readdata(53) <= \<const0>\;
  dap_readdata(52) <= \<const0>\;
  dap_readdata(51) <= \<const0>\;
  dap_readdata(50) <= \<const0>\;
  dap_readdata(49) <= \<const0>\;
  dap_readdata(48) <= \<const0>\;
  dap_readdata(47) <= \<const0>\;
  dap_readdata(46) <= \<const0>\;
  dap_readdata(45) <= \<const0>\;
  dap_readdata(44) <= \<const0>\;
  dap_readdata(43) <= \<const0>\;
  dap_readdata(42) <= \<const0>\;
  dap_readdata(41) <= \<const0>\;
  dap_readdata(40) <= \<const0>\;
  dap_readdata(39) <= \<const0>\;
  dap_readdata(38) <= \<const0>\;
  dap_readdata(37) <= \<const0>\;
  dap_readdata(36) <= \<const0>\;
  dap_readdata(35) <= \<const0>\;
  dap_readdata(34) <= \<const0>\;
  dap_readdata(33) <= \<const0>\;
  dap_readdata(32) <= \<const0>\;
  dap_readdata(31 downto 0) <= \^dap_readdata\(31 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kth_axi_rni_static_c1_v1_0
     port map (
      FROM_NOC(43 downto 32) => FROM_NOC(55 downto 44),
      FROM_NOC(31 downto 0) => FROM_NOC(31 downto 0),
      HeartBeat => HeartBeat,
      NoC_IRQ => NoC_IRQ,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(8 downto 7) => S_AXI_ARADDR(16 downto 15),
      S_AXI_ARADDR(6 downto 0) => S_AXI_ARADDR(8 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(8 downto 7) => S_AXI_AWADDR(16 downto 15),
      S_AXI_AWADDR(6 downto 0) => S_AXI_AWADDR(8 downto 2),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => \^s_axi_wready\,
      S_AXI_WVALID => S_AXI_WVALID,
      Sync(1 downto 0) => Sync(1 downto 0),
      TO_NOC(47 downto 34) => \^to_noc\(55 downto 42),
      TO_NOC(33) => \^to_noc\(36),
      TO_NOC(32) => \^to_noc\(34),
      TO_NOC(31 downto 0) => \^to_noc\(31 downto 0),
      dap_address(8 downto 7) => dap_address(14 downto 13),
      dap_address(6 downto 0) => dap_address(6 downto 0),
      dap_read => dap_read,
      dap_readdata(31 downto 0) => \^dap_readdata\(31 downto 0),
      dap_write => dap_write,
      dap_writedata(31 downto 0) => dap_writedata(31 downto 0)
    );
end STRUCTURE;
