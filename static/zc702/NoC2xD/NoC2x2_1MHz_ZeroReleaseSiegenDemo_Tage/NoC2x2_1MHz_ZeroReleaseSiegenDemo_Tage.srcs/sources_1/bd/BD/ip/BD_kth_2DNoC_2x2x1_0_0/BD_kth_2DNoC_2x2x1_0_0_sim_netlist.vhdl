-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (lin64) Build 1682563 Mon Oct 10 19:07:26 MDT 2016
-- Date        : Mon Oct 31 17:12:50 2016
-- Host        : tagesHPZ240 running 64-bit Ubuntu 16.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/tage/DegreeProject/zc702/NoC2xD/NoC2x2_1MHz_ZeroReleaseSiegenDemo_Tage/NoC2x2_1MHz_ZeroReleaseSiegenDemo_Tage.srcs/sources_1/bd/BD/ip/BD_kth_2DNoC_2x2x1_0_0/BD_kth_2DNoC_2x2x1_0_0_sim_netlist.vhdl
-- Design      : BD_kth_2DNoC_2x2x1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv is
  port (
    \next_switch_matrix_reg[4][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][1]\ : out STD_LOGIC;
    gtOp : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[5][2]\ : out STD_LOGIC;
    \next_switch_matrix_reg[6][1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[2][1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_reg[55]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[37]_0\ : in STD_LOGIC;
    \G0.mem_reg[33]_0\ : in STD_LOGIC;
    \port_wants_to[2][2]_17\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \G0.mem_reg[55]_0\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[55]_1\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \pres_switch_matrix_reg[0][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_reg[55]_0\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv : entity is "NoC_3D_Parallel_recv";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv is
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \^gtop\ : STD_LOGIC;
  signal \next_switch_matrix[5][2]_i_5_n_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_switch_matrix[2][1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][2]_i_6\ : label is "soft_lutpair0";
begin
  Q(55 downto 0) <= \^q\(55 downto 0);
  gtOp <= \^gtop\;
  \next_switch_matrix_reg[0][1]\ <= \^next_switch_matrix_reg[0][1]\;
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]_0\(9),
      Q => \^q\(9),
      R => reset
    );
\mem[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \G0.mem_reg[55]_0\(0),
      I2 => \G0.mem_reg[55]_1\(0),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(0)
    );
\mem[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(10),
      I1 => \G0.mem_reg[55]_0\(10),
      I2 => \G0.mem_reg[55]_1\(10),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(10)
    );
\mem[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(11),
      I1 => \G0.mem_reg[55]_0\(11),
      I2 => \G0.mem_reg[55]_1\(11),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(11)
    );
\mem[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(12),
      I1 => \G0.mem_reg[55]_0\(12),
      I2 => \G0.mem_reg[55]_1\(12),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(12)
    );
\mem[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(13),
      I1 => \G0.mem_reg[55]_0\(13),
      I2 => \G0.mem_reg[55]_1\(13),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(13)
    );
\mem[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(14),
      I1 => \G0.mem_reg[55]_0\(14),
      I2 => \G0.mem_reg[55]_1\(14),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(14)
    );
\mem[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(15),
      I1 => \G0.mem_reg[55]_0\(15),
      I2 => \G0.mem_reg[55]_1\(15),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(15)
    );
\mem[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(16),
      I1 => \G0.mem_reg[55]_0\(16),
      I2 => \G0.mem_reg[55]_1\(16),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(16)
    );
\mem[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(17),
      I1 => \G0.mem_reg[55]_0\(17),
      I2 => \G0.mem_reg[55]_1\(17),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(17)
    );
\mem[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(18),
      I1 => \G0.mem_reg[55]_0\(18),
      I2 => \G0.mem_reg[55]_1\(18),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(18)
    );
\mem[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(19),
      I1 => \G0.mem_reg[55]_0\(19),
      I2 => \G0.mem_reg[55]_1\(19),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(19)
    );
\mem[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \G0.mem_reg[55]_0\(1),
      I2 => \G0.mem_reg[55]_1\(1),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(1)
    );
\mem[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(20),
      I1 => \G0.mem_reg[55]_0\(20),
      I2 => \G0.mem_reg[55]_1\(20),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(20)
    );
\mem[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(21),
      I1 => \G0.mem_reg[55]_0\(21),
      I2 => \G0.mem_reg[55]_1\(21),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(21)
    );
\mem[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(22),
      I1 => \G0.mem_reg[55]_0\(22),
      I2 => \G0.mem_reg[55]_1\(22),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(22)
    );
\mem[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(23),
      I1 => \G0.mem_reg[55]_0\(23),
      I2 => \G0.mem_reg[55]_1\(23),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(23)
    );
\mem[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(24),
      I1 => \G0.mem_reg[55]_0\(24),
      I2 => \G0.mem_reg[55]_1\(24),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(24)
    );
\mem[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(25),
      I1 => \G0.mem_reg[55]_0\(25),
      I2 => \G0.mem_reg[55]_1\(25),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(25)
    );
\mem[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(26),
      I1 => \G0.mem_reg[55]_0\(26),
      I2 => \G0.mem_reg[55]_1\(26),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(26)
    );
\mem[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(27),
      I1 => \G0.mem_reg[55]_0\(27),
      I2 => \G0.mem_reg[55]_1\(27),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(27)
    );
\mem[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(28),
      I1 => \G0.mem_reg[55]_0\(28),
      I2 => \G0.mem_reg[55]_1\(28),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(28)
    );
\mem[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(29),
      I1 => \G0.mem_reg[55]_0\(29),
      I2 => \G0.mem_reg[55]_1\(29),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(29)
    );
\mem[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \G0.mem_reg[55]_0\(2),
      I2 => \G0.mem_reg[55]_1\(2),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(2)
    );
\mem[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(30),
      I1 => \G0.mem_reg[55]_0\(30),
      I2 => \G0.mem_reg[55]_1\(30),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(30)
    );
\mem[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(31),
      I1 => \G0.mem_reg[55]_0\(31),
      I2 => \G0.mem_reg[55]_1\(31),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(31)
    );
\mem[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(32),
      I1 => \G0.mem_reg[55]_0\(32),
      I2 => \G0.mem_reg[55]_1\(32),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(32)
    );
\mem[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(33),
      I1 => \G0.mem_reg[55]_0\(33),
      I2 => \G0.mem_reg[55]_1\(33),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(33)
    );
\mem[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(34),
      I1 => \G0.mem_reg[55]_0\(34),
      I2 => \G0.mem_reg[55]_1\(34),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(34)
    );
\mem[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(35),
      I1 => \G0.mem_reg[55]_0\(35),
      I2 => \G0.mem_reg[55]_1\(35),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(35)
    );
\mem[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(36),
      I1 => \G0.mem_reg[55]_0\(36),
      I2 => \G0.mem_reg[55]_1\(36),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(36)
    );
\mem[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(37),
      I1 => \G0.mem_reg[55]_0\(37),
      I2 => \G0.mem_reg[55]_1\(37),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(37)
    );
\mem[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(38),
      I1 => \G0.mem_reg[55]_0\(38),
      I2 => \G0.mem_reg[55]_1\(38),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(38)
    );
\mem[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(39),
      I1 => \G0.mem_reg[55]_0\(39),
      I2 => \G0.mem_reg[55]_1\(39),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(39)
    );
\mem[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \G0.mem_reg[55]_0\(3),
      I2 => \G0.mem_reg[55]_1\(3),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(3)
    );
\mem[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(40),
      I1 => \G0.mem_reg[55]_0\(40),
      I2 => \G0.mem_reg[55]_1\(40),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(40)
    );
\mem[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(41),
      I1 => \G0.mem_reg[55]_0\(41),
      I2 => \G0.mem_reg[55]_1\(41),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(41)
    );
\mem[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(42),
      I1 => \G0.mem_reg[55]_0\(42),
      I2 => \G0.mem_reg[55]_1\(42),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(42)
    );
\mem[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(43),
      I1 => \G0.mem_reg[55]_0\(43),
      I2 => \G0.mem_reg[55]_1\(43),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(43)
    );
\mem[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(44),
      I1 => \G0.mem_reg[55]_0\(44),
      I2 => \G0.mem_reg[55]_1\(44),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(44)
    );
\mem[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(45),
      I1 => \G0.mem_reg[55]_0\(45),
      I2 => \G0.mem_reg[55]_1\(45),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(45)
    );
\mem[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(46),
      I1 => \G0.mem_reg[55]_0\(46),
      I2 => \G0.mem_reg[55]_1\(46),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(46)
    );
\mem[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(47),
      I1 => \G0.mem_reg[55]_0\(47),
      I2 => \G0.mem_reg[55]_1\(47),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(47)
    );
\mem[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(48),
      I1 => \G0.mem_reg[55]_0\(48),
      I2 => \G0.mem_reg[55]_1\(48),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(48)
    );
\mem[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(49),
      I1 => \G0.mem_reg[55]_0\(49),
      I2 => \G0.mem_reg[55]_1\(49),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(49)
    );
\mem[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \G0.mem_reg[55]_0\(4),
      I2 => \G0.mem_reg[55]_1\(4),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(4)
    );
\mem[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(50),
      I1 => \G0.mem_reg[55]_0\(50),
      I2 => \G0.mem_reg[55]_1\(50),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(50)
    );
\mem[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(51),
      I1 => \G0.mem_reg[55]_0\(51),
      I2 => \G0.mem_reg[55]_1\(51),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(51)
    );
\mem[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(52),
      I1 => \G0.mem_reg[55]_0\(52),
      I2 => \G0.mem_reg[55]_1\(52),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(52)
    );
\mem[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(53),
      I1 => \G0.mem_reg[55]_0\(53),
      I2 => \G0.mem_reg[55]_1\(53),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(53)
    );
\mem[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(54),
      I1 => \G0.mem_reg[55]_0\(54),
      I2 => \G0.mem_reg[55]_1\(54),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(54)
    );
\mem[55]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(55),
      I1 => \G0.mem_reg[55]_0\(55),
      I2 => \G0.mem_reg[55]_1\(55),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(55)
    );
\mem[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \G0.mem_reg[55]_0\(5),
      I2 => \G0.mem_reg[55]_1\(5),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(5)
    );
\mem[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \G0.mem_reg[55]_0\(6),
      I2 => \G0.mem_reg[55]_1\(6),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(6)
    );
\mem[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(7),
      I1 => \G0.mem_reg[55]_0\(7),
      I2 => \G0.mem_reg[55]_1\(7),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(7)
    );
\mem[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(8),
      I1 => \G0.mem_reg[55]_0\(8),
      I2 => \G0.mem_reg[55]_1\(8),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(8)
    );
\mem[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CC00AA"
    )
        port map (
      I0 => \^q\(9),
      I1 => \G0.mem_reg[55]_0\(9),
      I2 => \G0.mem_reg[55]_1\(9),
      I3 => \pres_switch_matrix_reg[0][2]\(0),
      I4 => \pres_switch_matrix_reg[0][2]\(1),
      I5 => \pres_switch_matrix_reg[0][2]\(2),
      O => \mem_reg[55]\(9)
    );
\next_switch_matrix[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F0FFF1F"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      I2 => \^q\(55),
      I3 => \^next_switch_matrix_reg[0][1]\,
      I4 => \^q\(36),
      I5 => \^q\(37),
      O => D(0)
    );
\next_switch_matrix[0][1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      O => \^next_switch_matrix_reg[0][1]\
    );
\next_switch_matrix[2][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^next_switch_matrix_reg[0][1]\,
      I2 => \^q\(36),
      I3 => \^q\(37),
      O => \next_switch_matrix_reg[2][1]\(0)
    );
\next_switch_matrix[4][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBABAAAAAAAAAA"
    )
        port map (
      I0 => \G0.mem_reg[37]_0\,
      I1 => \G0.mem_reg[33]_0\,
      I2 => \^next_switch_matrix_reg[0][1]\,
      I3 => \next_switch_matrix[5][2]_i_5_n_0\,
      I4 => \^gtop\,
      I5 => \^q\(55),
      O => \next_switch_matrix_reg[4][0]\
    );
\next_switch_matrix[5][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF0000FFFF"
    )
        port map (
      I0 => \next_switch_matrix[5][2]_i_5_n_0\,
      I1 => \^q\(55),
      I2 => \^next_switch_matrix_reg[0][1]\,
      I3 => \^gtop\,
      I4 => \port_wants_to[2][2]_17\(0),
      I5 => \port_wants_to[2][2]_17\(1),
      O => \next_switch_matrix_reg[5][2]\
    );
\next_switch_matrix[5][2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \next_switch_matrix[5][2]_i_5_n_0\
    );
\next_switch_matrix[5][2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      O => \^gtop\
    );
\next_switch_matrix[6][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(36),
      I2 => \^next_switch_matrix_reg[0][1]\,
      I3 => \^q\(55),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \next_switch_matrix_reg[6][1]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_8 is
  port (
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[3][2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[2][2]\ : out STD_LOGIC;
    \next_switch_matrix_reg[5][2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \port_wants_to[2][2]_17\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \next_switch_matrix_reg[4][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[2][2]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[6][2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[32]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[37]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[55]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[34]_0\ : in STD_LOGIC;
    gtOp : in STD_LOGIC;
    \G0.mem_reg[55]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[55]_2\ : in STD_LOGIC;
    \G0.mem_reg[55]_3\ : in STD_LOGIC;
    \G0.mem_reg[33]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_4\ : in STD_LOGIC;
    \port_wants_to[6][0]_20\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[37]_1\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_reg[55]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_8 : entity is "NoC_3D_Parallel_recv";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_8;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_8 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal gtOp_0 : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_10__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_11_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_12_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_15_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_3_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_4_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_6__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_7_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_8__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_9__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_2__2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_3__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_4__2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_5__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_6__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_10_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_6__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_7__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_8_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_9_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][0]_i_6__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][2]_i_2__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][2]_i_3_n_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][2]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^next_switch_matrix_reg[2][2]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[2][2]_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[3][2]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \port_wants_to[2][1]_16\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^port_wants_to[2][2]_17\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_10__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_6__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_8__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][2]_i_4__2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][2]_i_2__1\ : label is "soft_lutpair2";
begin
  D(0) <= \^d\(0);
  Q(55 downto 0) <= \^q\(55 downto 0);
  \next_switch_matrix_reg[0][2]\(0) <= \^next_switch_matrix_reg[0][2]\(0);
  \next_switch_matrix_reg[2][2]\ <= \^next_switch_matrix_reg[2][2]\;
  \next_switch_matrix_reg[2][2]_0\ <= \^next_switch_matrix_reg[2][2]_0\;
  \next_switch_matrix_reg[3][2]\(0) <= \^next_switch_matrix_reg[3][2]\(0);
  \port_wants_to[2][2]_17\(1 downto 0) <= \^port_wants_to[2][2]_17\(1 downto 0);
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(9),
      Q => \^q\(9),
      R => reset
    );
\next_switch_matrix[0][2]_i_10__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_11_n_0\,
      I1 => \next_switch_matrix[3][2]_i_2__0_n_0\,
      O => \next_switch_matrix[0][2]_i_10__1_n_0\
    );
\next_switch_matrix[0][2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5C0F5CF05C005C"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_7__0_n_0\,
      I1 => \next_switch_matrix[0][2]_i_9__1_n_0\,
      I2 => \port_wants_to[2][1]_16\(1),
      I3 => \port_wants_to[2][1]_16\(0),
      I4 => \^next_switch_matrix_reg[2][2]\,
      I5 => \next_switch_matrix[0][2]_i_15_n_0\,
      O => \next_switch_matrix[0][2]_i_11_n_0\
    );
\next_switch_matrix[0][2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777377737773BBBB"
    )
        port map (
      I0 => gtOp_0,
      I1 => \^q\(55),
      I2 => \^q\(32),
      I3 => \^q\(33),
      I4 => \^q\(34),
      I5 => \^q\(35),
      O => \next_switch_matrix[0][2]_i_12_n_0\
    );
\next_switch_matrix[0][2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEE0FFFF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \^q\(33),
      I3 => \^q\(32),
      I4 => \^q\(55),
      I5 => gtOp_0,
      O => \port_wants_to[2][1]_16\(1)
    );
\next_switch_matrix[0][2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FD57FD57FD55FD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \next_switch_matrix[0][2]_i_6__0_n_0\,
      I4 => \^q\(33),
      I5 => \^q\(32),
      O => \port_wants_to[2][1]_16\(0)
    );
\next_switch_matrix[0][2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => '1',
      I1 => \next_switch_matrix[0][2]_i_12_n_0\,
      I2 => \next_switch_matrix[5][2]_i_2__1_n_0\,
      O => \next_switch_matrix[0][2]_i_15_n_0\
    );
\next_switch_matrix[0][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC8CCCCCCCCCCCCC"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_3_n_0\,
      I1 => \next_switch_matrix[0][2]_i_4_n_0\,
      I2 => \^q\(55),
      I3 => gtOp_0,
      I4 => \next_switch_matrix[0][2]_i_6__0_n_0\,
      I5 => \next_switch_matrix[0][2]_i_7_n_0\,
      O => \^next_switch_matrix_reg[0][2]\(0)
    );
\next_switch_matrix[0][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBFFBB"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_8__0_n_0\,
      I1 => \^q\(55),
      I2 => gtOp_0,
      I3 => \next_switch_matrix[0][2]_i_6__0_n_0\,
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \next_switch_matrix[0][2]_i_3_n_0\
    );
\next_switch_matrix[0][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555545554555455"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_9__1_n_0\,
      I1 => \next_switch_matrix[0][2]_i_10__1_n_0\,
      I2 => gtOp_0,
      I3 => \^q\(55),
      I4 => \next_switch_matrix[0][2]_i_7_n_0\,
      I5 => \next_switch_matrix[0][2]_i_6__0_n_0\,
      O => \next_switch_matrix[0][2]_i_4_n_0\
    );
\next_switch_matrix[0][2]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      O => gtOp_0
    );
\next_switch_matrix[0][2]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      O => \next_switch_matrix[0][2]_i_6__0_n_0\
    );
\next_switch_matrix[0][2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \next_switch_matrix[0][2]_i_7_n_0\
    );
\next_switch_matrix[0][2]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_11_n_0\,
      I1 => \next_switch_matrix[0][2]_i_12_n_0\,
      I2 => \next_switch_matrix[3][2]_i_2__0_n_0\,
      O => \next_switch_matrix[0][2]_i_8__0_n_0\
    );
\next_switch_matrix[0][2]_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000800FFFFFFFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => gtOp_0,
      I2 => \next_switch_matrix[1][2]_i_2__2_n_0\,
      I3 => \next_switch_matrix[1][2]_i_3__1_n_0\,
      I4 => \next_switch_matrix[1][2]_i_4__2_n_0\,
      I5 => \G0.mem_reg[32]_0\(0),
      O => \next_switch_matrix[0][2]_i_9__1_n_0\
    );
\next_switch_matrix[1][2]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => gtOp_0,
      I2 => \next_switch_matrix[1][2]_i_2__2_n_0\,
      I3 => \next_switch_matrix[1][2]_i_3__1_n_0\,
      I4 => \next_switch_matrix[1][2]_i_4__2_n_0\,
      O => \^d\(0)
    );
\next_switch_matrix[1][2]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000054FFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_6__0_n_0\,
      I1 => \^q\(33),
      I2 => \^q\(32),
      I3 => \^q\(36),
      I4 => \^q\(37),
      I5 => \^q\(55),
      O => \next_switch_matrix[1][2]_i_2__2_n_0\
    );
\next_switch_matrix[1][2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F888FFFFFF00"
    )
        port map (
      I0 => \^q\(55),
      I1 => gtOp_0,
      I2 => \G0.mem_reg[37]_0\(0),
      I3 => \next_switch_matrix[1][2]_i_5__1_n_0\,
      I4 => \next_switch_matrix[1][2]_i_6__1_n_0\,
      I5 => \next_switch_matrix[1][2]_i_4__2_n_0\,
      O => \next_switch_matrix[1][2]_i_3__1_n_0\
    );
\next_switch_matrix[1][2]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \^q\(55),
      O => \next_switch_matrix[1][2]_i_4__2_n_0\
    );
\next_switch_matrix[1][2]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777770777777"
    )
        port map (
      I0 => \^q\(55),
      I1 => gtOp_0,
      I2 => \next_switch_matrix[1][2]_i_2__2_n_0\,
      I3 => \G0.mem_reg[55]_0\(0),
      I4 => \G0.mem_reg[34]_0\,
      I5 => gtOp,
      O => \next_switch_matrix[1][2]_i_5__1_n_0\
    );
\next_switch_matrix[1][2]_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF88FF80"
    )
        port map (
      I0 => \^q\(55),
      I1 => gtOp_0,
      I2 => \G0.mem_reg[32]_0\(0),
      I3 => \next_switch_matrix[1][2]_i_4__2_n_0\,
      I4 => \next_switch_matrix[1][2]_i_2__2_n_0\,
      O => \next_switch_matrix[1][2]_i_6__1_n_0\
    );
\next_switch_matrix[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAA222"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_2_n_0\,
      I1 => \^port_wants_to[2][2]_17\(1),
      I2 => \^port_wants_to[2][2]_17\(0),
      I3 => \^next_switch_matrix_reg[2][2]\,
      I4 => \next_switch_matrix[0][2]_i_3_n_0\,
      I5 => \next_switch_matrix[2][2]_i_6__0_n_0\,
      O => \^next_switch_matrix_reg[2][2]_0\
    );
\next_switch_matrix[2][2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_8__0_n_0\,
      I1 => \^q\(55),
      I2 => \next_switch_matrix[0][2]_i_6__0_n_0\,
      I3 => \next_switch_matrix[0][2]_i_7_n_0\,
      I4 => gtOp_0,
      I5 => \G0.mem_reg[55]_1\(0),
      O => \next_switch_matrix[2][2]_i_10_n_0\
    );
\next_switch_matrix[2][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAAAAAA"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_7__0_n_0\,
      I1 => \next_switch_matrix[0][2]_i_10__1_n_0\,
      I2 => \next_switch_matrix[0][2]_i_6__0_n_0\,
      I3 => gtOp_0,
      I4 => \^q\(55),
      O => \next_switch_matrix[2][2]_i_2_n_0\
    );
\next_switch_matrix[2][2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDDDFDDDFFFFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => gtOp_0,
      I2 => \^q\(34),
      I3 => \^q\(35),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \^port_wants_to[2][2]_17\(1)
    );
\next_switch_matrix[2][2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFD555D"
    )
        port map (
      I0 => \^q\(55),
      I1 => \next_switch_matrix[0][2]_i_6__0_n_0\,
      I2 => \^q\(33),
      I3 => \^q\(32),
      I4 => \^q\(36),
      I5 => \^q\(37),
      O => \^port_wants_to[2][2]_17\(0)
    );
\next_switch_matrix[2][2]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0700FFFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => gtOp_0,
      I2 => \next_switch_matrix[3][2]_i_2__0_n_0\,
      I3 => \next_switch_matrix[1][2]_i_4__2_n_0\,
      I4 => \G0.mem_reg[37]_0\(0),
      O => \^next_switch_matrix_reg[2][2]\
    );
\next_switch_matrix[2][2]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF030203"
    )
        port map (
      I0 => \next_switch_matrix[5][2]_i_2__1_n_0\,
      I1 => \next_switch_matrix[2][2]_i_8_n_0\,
      I2 => \next_switch_matrix[2][2]_i_9_n_0\,
      I3 => \^port_wants_to[2][2]_17\(0),
      I4 => \^port_wants_to[2][2]_17\(1),
      I5 => \next_switch_matrix[2][2]_i_10_n_0\,
      O => \next_switch_matrix[2][2]_i_6__0_n_0\
    );
\next_switch_matrix[2][2]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F080"
    )
        port map (
      I0 => \^q\(55),
      I1 => gtOp_0,
      I2 => \G0.mem_reg[55]_1\(0),
      I3 => \next_switch_matrix[3][2]_i_2__0_n_0\,
      I4 => \next_switch_matrix[1][2]_i_4__2_n_0\,
      I5 => \next_switch_matrix[1][2]_i_2__2_n_0\,
      O => \next_switch_matrix[2][2]_i_7__0_n_0\
    );
\next_switch_matrix[2][2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"571F555554105555"
    )
        port map (
      I0 => \^next_switch_matrix_reg[2][2]\,
      I1 => \next_switch_matrix[0][2]_i_7_n_0\,
      I2 => \next_switch_matrix[0][2]_i_6__0_n_0\,
      I3 => gtOp_0,
      I4 => \^q\(55),
      I5 => \next_switch_matrix[2][2]_i_2_n_0\,
      O => \next_switch_matrix[2][2]_i_8_n_0\
    );
\next_switch_matrix[2][2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080008000000"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_4_n_0\,
      I1 => \^q\(55),
      I2 => gtOp_0,
      I3 => \next_switch_matrix[0][2]_i_6__0_n_0\,
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \next_switch_matrix[2][2]_i_9_n_0\
    );
\next_switch_matrix[3][2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8FFFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => gtOp_0,
      I2 => \next_switch_matrix[3][2]_i_2__0_n_0\,
      I3 => \next_switch_matrix[1][2]_i_4__2_n_0\,
      I4 => \next_switch_matrix[1][2]_i_2__2_n_0\,
      O => \^next_switch_matrix_reg[3][2]\(0)
    );
\next_switch_matrix[3][2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0FEFFFFFFFFF"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      I2 => \^q\(55),
      I3 => gtOp_0,
      I4 => \next_switch_matrix[0][2]_i_6__0_n_0\,
      I5 => \next_switch_matrix[1][2]_i_3__1_n_0\,
      O => \next_switch_matrix[3][2]_i_2__0_n_0\
    );
\next_switch_matrix[4][0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEEEFFFEF"
    )
        port map (
      I0 => \next_switch_matrix[4][0]_i_6__0_n_0\,
      I1 => \G0.mem_reg[55]_3\,
      I2 => \^next_switch_matrix_reg[0][2]\(0),
      I3 => \G0.mem_reg[33]_0\,
      I4 => \^d\(0),
      I5 => \G0.mem_reg[55]_4\,
      O => \next_switch_matrix_reg[4][0]\
    );
\next_switch_matrix[4][0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00470000004700"
    )
        port map (
      I0 => \^next_switch_matrix_reg[3][2]\(0),
      I1 => \G0.mem_reg[33]_0\,
      I2 => \^next_switch_matrix_reg[2][2]_0\,
      I3 => \port_wants_to[6][0]_20\(0),
      I4 => \G0.mem_reg[37]_1\,
      I5 => \^next_switch_matrix_reg[2][2]\,
      O => \next_switch_matrix[4][0]_i_6__0_n_0\
    );
\next_switch_matrix[5][2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555554544454"
    )
        port map (
      I0 => \next_switch_matrix[5][2]_i_2__1_n_0\,
      I1 => \next_switch_matrix[0][2]_i_3_n_0\,
      I2 => \^port_wants_to[2][2]_17\(1),
      I3 => \next_switch_matrix[5][2]_i_3_n_0\,
      I4 => \^next_switch_matrix_reg[2][2]\,
      I5 => \G0.mem_reg[55]_2\,
      O => \next_switch_matrix_reg[5][2]\(0)
    );
\next_switch_matrix[5][2]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_2__0_n_0\,
      I1 => \next_switch_matrix[1][2]_i_4__2_n_0\,
      I2 => \next_switch_matrix[1][2]_i_2__2_n_0\,
      O => \next_switch_matrix[5][2]_i_2__1_n_0\
    );
\next_switch_matrix[5][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE1110FFFFFFFF"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \^q\(35),
      I3 => \^q\(34),
      I4 => gtOp_0,
      I5 => \^q\(55),
      O => \next_switch_matrix[5][2]_i_3_n_0\
    );
\next_switch_matrix[6][2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^next_switch_matrix_reg[2][2]\,
      O => \next_switch_matrix_reg[6][2]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_9 is
  port (
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \next_switch_matrix_reg[4][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[4][0]_0\ : out STD_LOGIC;
    \port_wants_to[6][0]_20\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[5][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[2][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[0][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[6][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[4][0]_1\ : out STD_LOGIC;
    \mem_reg[55]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \mem_reg[55]_0\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[55]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_1\ : in STD_LOGIC;
    \G0.mem_reg[55]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[55]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[55]_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[55]_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_cycle_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \G0.mem_reg[55]_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[55]_7\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[55]_8\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \pres_switch_matrix_reg[2][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \pres_switch_matrix_reg[6][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    To_NoC_0 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_9 : entity is "NoC_3D_Parallel_recv";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_9;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_9 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal gtOp : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_11__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_12_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_13__2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_3__2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_6__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_7__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_8_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_4_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_5_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_6__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][0]_i_3_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[6][0]_i_2__1_n_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[4][0]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[4][0]_0\ : STD_LOGIC;
  signal \^port_wants_to[6][0]_20\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \port_wants_to[6][1]_18\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \port_wants_to[6][2]_19\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_11__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][0]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \next_switch_matrix[4][0]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \next_switch_matrix[4][0]_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \next_switch_matrix[6][0]_i_2__1\ : label is "soft_lutpair7";
begin
  E(0) <= \^e\(0);
  Q(55 downto 0) <= \^q\(55 downto 0);
  \next_switch_matrix_reg[4][0]\ <= \^next_switch_matrix_reg[4][0]\;
  \next_switch_matrix_reg[4][0]_0\ <= \^next_switch_matrix_reg[4][0]_0\;
  \port_wants_to[6][0]_20\(0) <= \^port_wants_to[6][0]_20\(0);
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_0(9),
      Q => \^q\(9),
      R => reset
    );
\mem[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(0),
      I1 => \G0.mem_reg[55]_7\(0),
      I2 => \G0.mem_reg[55]_8\(0),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(0)
    );
\mem[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(0),
      I1 => \G0.mem_reg[55]_7\(0),
      I2 => \G0.mem_reg[55]_8\(0),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(0)
    );
\mem[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(10),
      I1 => \G0.mem_reg[55]_7\(10),
      I2 => \G0.mem_reg[55]_8\(10),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(10)
    );
\mem[10]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(10),
      I1 => \G0.mem_reg[55]_7\(10),
      I2 => \G0.mem_reg[55]_8\(10),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(10)
    );
\mem[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(11),
      I1 => \G0.mem_reg[55]_7\(11),
      I2 => \G0.mem_reg[55]_8\(11),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(11)
    );
\mem[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(11),
      I1 => \G0.mem_reg[55]_7\(11),
      I2 => \G0.mem_reg[55]_8\(11),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(11)
    );
\mem[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(12),
      I1 => \G0.mem_reg[55]_7\(12),
      I2 => \G0.mem_reg[55]_8\(12),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(12)
    );
\mem[12]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(12),
      I1 => \G0.mem_reg[55]_7\(12),
      I2 => \G0.mem_reg[55]_8\(12),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(12)
    );
\mem[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(13),
      I1 => \G0.mem_reg[55]_7\(13),
      I2 => \G0.mem_reg[55]_8\(13),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(13)
    );
\mem[13]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(13),
      I1 => \G0.mem_reg[55]_7\(13),
      I2 => \G0.mem_reg[55]_8\(13),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(13)
    );
\mem[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(14),
      I1 => \G0.mem_reg[55]_7\(14),
      I2 => \G0.mem_reg[55]_8\(14),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(14)
    );
\mem[14]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(14),
      I1 => \G0.mem_reg[55]_7\(14),
      I2 => \G0.mem_reg[55]_8\(14),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(14)
    );
\mem[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(15),
      I1 => \G0.mem_reg[55]_7\(15),
      I2 => \G0.mem_reg[55]_8\(15),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(15)
    );
\mem[15]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(15),
      I1 => \G0.mem_reg[55]_7\(15),
      I2 => \G0.mem_reg[55]_8\(15),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(15)
    );
\mem[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(16),
      I1 => \G0.mem_reg[55]_7\(16),
      I2 => \G0.mem_reg[55]_8\(16),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(16)
    );
\mem[16]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(16),
      I1 => \G0.mem_reg[55]_7\(16),
      I2 => \G0.mem_reg[55]_8\(16),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(16)
    );
\mem[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(17),
      I1 => \G0.mem_reg[55]_7\(17),
      I2 => \G0.mem_reg[55]_8\(17),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(17)
    );
\mem[17]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(17),
      I1 => \G0.mem_reg[55]_7\(17),
      I2 => \G0.mem_reg[55]_8\(17),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(17)
    );
\mem[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(18),
      I1 => \G0.mem_reg[55]_7\(18),
      I2 => \G0.mem_reg[55]_8\(18),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(18)
    );
\mem[18]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(18),
      I1 => \G0.mem_reg[55]_7\(18),
      I2 => \G0.mem_reg[55]_8\(18),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(18)
    );
\mem[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(19),
      I1 => \G0.mem_reg[55]_7\(19),
      I2 => \G0.mem_reg[55]_8\(19),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(19)
    );
\mem[19]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(19),
      I1 => \G0.mem_reg[55]_7\(19),
      I2 => \G0.mem_reg[55]_8\(19),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(19)
    );
\mem[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(1),
      I1 => \G0.mem_reg[55]_7\(1),
      I2 => \G0.mem_reg[55]_8\(1),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(1)
    );
\mem[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(1),
      I1 => \G0.mem_reg[55]_7\(1),
      I2 => \G0.mem_reg[55]_8\(1),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(1)
    );
\mem[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(20),
      I1 => \G0.mem_reg[55]_7\(20),
      I2 => \G0.mem_reg[55]_8\(20),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(20)
    );
\mem[20]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(20),
      I1 => \G0.mem_reg[55]_7\(20),
      I2 => \G0.mem_reg[55]_8\(20),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(20)
    );
\mem[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(21),
      I1 => \G0.mem_reg[55]_7\(21),
      I2 => \G0.mem_reg[55]_8\(21),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(21)
    );
\mem[21]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(21),
      I1 => \G0.mem_reg[55]_7\(21),
      I2 => \G0.mem_reg[55]_8\(21),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(21)
    );
\mem[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(22),
      I1 => \G0.mem_reg[55]_7\(22),
      I2 => \G0.mem_reg[55]_8\(22),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(22)
    );
\mem[22]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(22),
      I1 => \G0.mem_reg[55]_7\(22),
      I2 => \G0.mem_reg[55]_8\(22),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(22)
    );
\mem[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(23),
      I1 => \G0.mem_reg[55]_7\(23),
      I2 => \G0.mem_reg[55]_8\(23),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(23)
    );
\mem[23]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(23),
      I1 => \G0.mem_reg[55]_7\(23),
      I2 => \G0.mem_reg[55]_8\(23),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(23)
    );
\mem[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(24),
      I1 => \G0.mem_reg[55]_7\(24),
      I2 => \G0.mem_reg[55]_8\(24),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(24)
    );
\mem[24]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(24),
      I1 => \G0.mem_reg[55]_7\(24),
      I2 => \G0.mem_reg[55]_8\(24),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(24)
    );
\mem[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(25),
      I1 => \G0.mem_reg[55]_7\(25),
      I2 => \G0.mem_reg[55]_8\(25),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(25)
    );
\mem[25]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(25),
      I1 => \G0.mem_reg[55]_7\(25),
      I2 => \G0.mem_reg[55]_8\(25),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(25)
    );
\mem[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(26),
      I1 => \G0.mem_reg[55]_7\(26),
      I2 => \G0.mem_reg[55]_8\(26),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(26)
    );
\mem[26]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(26),
      I1 => \G0.mem_reg[55]_7\(26),
      I2 => \G0.mem_reg[55]_8\(26),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(26)
    );
\mem[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(27),
      I1 => \G0.mem_reg[55]_7\(27),
      I2 => \G0.mem_reg[55]_8\(27),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(27)
    );
\mem[27]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(27),
      I1 => \G0.mem_reg[55]_7\(27),
      I2 => \G0.mem_reg[55]_8\(27),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(27)
    );
\mem[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(28),
      I1 => \G0.mem_reg[55]_7\(28),
      I2 => \G0.mem_reg[55]_8\(28),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(28)
    );
\mem[28]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(28),
      I1 => \G0.mem_reg[55]_7\(28),
      I2 => \G0.mem_reg[55]_8\(28),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(28)
    );
\mem[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(29),
      I1 => \G0.mem_reg[55]_7\(29),
      I2 => \G0.mem_reg[55]_8\(29),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(29)
    );
\mem[29]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(29),
      I1 => \G0.mem_reg[55]_7\(29),
      I2 => \G0.mem_reg[55]_8\(29),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(29)
    );
\mem[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(2),
      I1 => \G0.mem_reg[55]_7\(2),
      I2 => \G0.mem_reg[55]_8\(2),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(2)
    );
\mem[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(2),
      I1 => \G0.mem_reg[55]_7\(2),
      I2 => \G0.mem_reg[55]_8\(2),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(2)
    );
\mem[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(30),
      I1 => \G0.mem_reg[55]_7\(30),
      I2 => \G0.mem_reg[55]_8\(30),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(30)
    );
\mem[30]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(30),
      I1 => \G0.mem_reg[55]_7\(30),
      I2 => \G0.mem_reg[55]_8\(30),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(30)
    );
\mem[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(31),
      I1 => \G0.mem_reg[55]_7\(31),
      I2 => \G0.mem_reg[55]_8\(31),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(31)
    );
\mem[31]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(31),
      I1 => \G0.mem_reg[55]_7\(31),
      I2 => \G0.mem_reg[55]_8\(31),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(31)
    );
\mem[32]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(32),
      I1 => \G0.mem_reg[55]_7\(32),
      I2 => \G0.mem_reg[55]_8\(32),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(32)
    );
\mem[32]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(32),
      I1 => \G0.mem_reg[55]_7\(32),
      I2 => \G0.mem_reg[55]_8\(32),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(32)
    );
\mem[33]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(33),
      I1 => \G0.mem_reg[55]_7\(33),
      I2 => \G0.mem_reg[55]_8\(33),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(33)
    );
\mem[33]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(33),
      I1 => \G0.mem_reg[55]_7\(33),
      I2 => \G0.mem_reg[55]_8\(33),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(33)
    );
\mem[34]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(34),
      I1 => \G0.mem_reg[55]_7\(34),
      I2 => \G0.mem_reg[55]_8\(34),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(34)
    );
\mem[34]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(34),
      I1 => \G0.mem_reg[55]_7\(34),
      I2 => \G0.mem_reg[55]_8\(34),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(34)
    );
\mem[35]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(35),
      I1 => \G0.mem_reg[55]_7\(35),
      I2 => \G0.mem_reg[55]_8\(35),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(35)
    );
\mem[35]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(35),
      I1 => \G0.mem_reg[55]_7\(35),
      I2 => \G0.mem_reg[55]_8\(35),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(35)
    );
\mem[36]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(36),
      I1 => \G0.mem_reg[55]_7\(36),
      I2 => \G0.mem_reg[55]_8\(36),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(36)
    );
\mem[36]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(36),
      I1 => \G0.mem_reg[55]_7\(36),
      I2 => \G0.mem_reg[55]_8\(36),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(36)
    );
\mem[37]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(37),
      I1 => \G0.mem_reg[55]_7\(37),
      I2 => \G0.mem_reg[55]_8\(37),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(37)
    );
\mem[37]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(37),
      I1 => \G0.mem_reg[55]_7\(37),
      I2 => \G0.mem_reg[55]_8\(37),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(37)
    );
\mem[38]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(38),
      I1 => \G0.mem_reg[55]_7\(38),
      I2 => \G0.mem_reg[55]_8\(38),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(38)
    );
\mem[38]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(38),
      I1 => \G0.mem_reg[55]_7\(38),
      I2 => \G0.mem_reg[55]_8\(38),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(38)
    );
\mem[39]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(39),
      I1 => \G0.mem_reg[55]_7\(39),
      I2 => \G0.mem_reg[55]_8\(39),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(39)
    );
\mem[39]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(39),
      I1 => \G0.mem_reg[55]_7\(39),
      I2 => \G0.mem_reg[55]_8\(39),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(39)
    );
\mem[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(3),
      I1 => \G0.mem_reg[55]_7\(3),
      I2 => \G0.mem_reg[55]_8\(3),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(3)
    );
\mem[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(3),
      I1 => \G0.mem_reg[55]_7\(3),
      I2 => \G0.mem_reg[55]_8\(3),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(3)
    );
\mem[40]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(40),
      I1 => \G0.mem_reg[55]_7\(40),
      I2 => \G0.mem_reg[55]_8\(40),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(40)
    );
\mem[40]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(40),
      I1 => \G0.mem_reg[55]_7\(40),
      I2 => \G0.mem_reg[55]_8\(40),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(40)
    );
\mem[41]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(41),
      I1 => \G0.mem_reg[55]_7\(41),
      I2 => \G0.mem_reg[55]_8\(41),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(41)
    );
\mem[41]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(41),
      I1 => \G0.mem_reg[55]_7\(41),
      I2 => \G0.mem_reg[55]_8\(41),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(41)
    );
\mem[42]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(42),
      I1 => \G0.mem_reg[55]_7\(42),
      I2 => \G0.mem_reg[55]_8\(42),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(42)
    );
\mem[42]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(42),
      I1 => \G0.mem_reg[55]_7\(42),
      I2 => \G0.mem_reg[55]_8\(42),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(42)
    );
\mem[43]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(43),
      I1 => \G0.mem_reg[55]_7\(43),
      I2 => \G0.mem_reg[55]_8\(43),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(43)
    );
\mem[43]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(43),
      I1 => \G0.mem_reg[55]_7\(43),
      I2 => \G0.mem_reg[55]_8\(43),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(43)
    );
\mem[44]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(44),
      I1 => \G0.mem_reg[55]_7\(44),
      I2 => \G0.mem_reg[55]_8\(44),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(44)
    );
\mem[44]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(44),
      I1 => \G0.mem_reg[55]_7\(44),
      I2 => \G0.mem_reg[55]_8\(44),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(44)
    );
\mem[45]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(45),
      I1 => \G0.mem_reg[55]_7\(45),
      I2 => \G0.mem_reg[55]_8\(45),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(45)
    );
\mem[45]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(45),
      I1 => \G0.mem_reg[55]_7\(45),
      I2 => \G0.mem_reg[55]_8\(45),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(45)
    );
\mem[46]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(46),
      I1 => \G0.mem_reg[55]_7\(46),
      I2 => \G0.mem_reg[55]_8\(46),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(46)
    );
\mem[46]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(46),
      I1 => \G0.mem_reg[55]_7\(46),
      I2 => \G0.mem_reg[55]_8\(46),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(46)
    );
\mem[47]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(47),
      I1 => \G0.mem_reg[55]_7\(47),
      I2 => \G0.mem_reg[55]_8\(47),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(47)
    );
\mem[47]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(47),
      I1 => \G0.mem_reg[55]_7\(47),
      I2 => \G0.mem_reg[55]_8\(47),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(47)
    );
\mem[48]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(48),
      I1 => \G0.mem_reg[55]_7\(48),
      I2 => \G0.mem_reg[55]_8\(48),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(48)
    );
\mem[48]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(48),
      I1 => \G0.mem_reg[55]_7\(48),
      I2 => \G0.mem_reg[55]_8\(48),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(48)
    );
\mem[49]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(49),
      I1 => \G0.mem_reg[55]_7\(49),
      I2 => \G0.mem_reg[55]_8\(49),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(49)
    );
\mem[49]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(49),
      I1 => \G0.mem_reg[55]_7\(49),
      I2 => \G0.mem_reg[55]_8\(49),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(49)
    );
\mem[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(4),
      I1 => \G0.mem_reg[55]_7\(4),
      I2 => \G0.mem_reg[55]_8\(4),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(4)
    );
\mem[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(4),
      I1 => \G0.mem_reg[55]_7\(4),
      I2 => \G0.mem_reg[55]_8\(4),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(4)
    );
\mem[50]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(50),
      I1 => \G0.mem_reg[55]_7\(50),
      I2 => \G0.mem_reg[55]_8\(50),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(50)
    );
\mem[50]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(50),
      I1 => \G0.mem_reg[55]_7\(50),
      I2 => \G0.mem_reg[55]_8\(50),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(50)
    );
\mem[51]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(51),
      I1 => \G0.mem_reg[55]_7\(51),
      I2 => \G0.mem_reg[55]_8\(51),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(51)
    );
\mem[51]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(51),
      I1 => \G0.mem_reg[55]_7\(51),
      I2 => \G0.mem_reg[55]_8\(51),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(51)
    );
\mem[52]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(52),
      I1 => \G0.mem_reg[55]_7\(52),
      I2 => \G0.mem_reg[55]_8\(52),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(52)
    );
\mem[52]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(52),
      I1 => \G0.mem_reg[55]_7\(52),
      I2 => \G0.mem_reg[55]_8\(52),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(52)
    );
\mem[53]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(53),
      I1 => \G0.mem_reg[55]_7\(53),
      I2 => \G0.mem_reg[55]_8\(53),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(53)
    );
\mem[53]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(53),
      I1 => \G0.mem_reg[55]_7\(53),
      I2 => \G0.mem_reg[55]_8\(53),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(53)
    );
\mem[54]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(54),
      I1 => \G0.mem_reg[55]_7\(54),
      I2 => \G0.mem_reg[55]_8\(54),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(54)
    );
\mem[54]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(54),
      I1 => \G0.mem_reg[55]_7\(54),
      I2 => \G0.mem_reg[55]_8\(54),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(54)
    );
\mem[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctrl_cycle_reg[1]\(0),
      I1 => \ctrl_cycle_reg[1]\(1),
      O => \^e\(0)
    );
\mem[55]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(55),
      I1 => \G0.mem_reg[55]_7\(55),
      I2 => \G0.mem_reg[55]_8\(55),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(55)
    );
\mem[55]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(55),
      I1 => \G0.mem_reg[55]_7\(55),
      I2 => \G0.mem_reg[55]_8\(55),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(55)
    );
\mem[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(5),
      I1 => \G0.mem_reg[55]_7\(5),
      I2 => \G0.mem_reg[55]_8\(5),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(5)
    );
\mem[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(5),
      I1 => \G0.mem_reg[55]_7\(5),
      I2 => \G0.mem_reg[55]_8\(5),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(5)
    );
\mem[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(6),
      I1 => \G0.mem_reg[55]_7\(6),
      I2 => \G0.mem_reg[55]_8\(6),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(6)
    );
\mem[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(6),
      I1 => \G0.mem_reg[55]_7\(6),
      I2 => \G0.mem_reg[55]_8\(6),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(6)
    );
\mem[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(7),
      I1 => \G0.mem_reg[55]_7\(7),
      I2 => \G0.mem_reg[55]_8\(7),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(7)
    );
\mem[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(7),
      I1 => \G0.mem_reg[55]_7\(7),
      I2 => \G0.mem_reg[55]_8\(7),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(7)
    );
\mem[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(8),
      I1 => \G0.mem_reg[55]_7\(8),
      I2 => \G0.mem_reg[55]_8\(8),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(8)
    );
\mem[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(8),
      I1 => \G0.mem_reg[55]_7\(8),
      I2 => \G0.mem_reg[55]_8\(8),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(8)
    );
\mem[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(9),
      I1 => \G0.mem_reg[55]_7\(9),
      I2 => \G0.mem_reg[55]_8\(9),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(9)
    );
\mem[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F000CC"
    )
        port map (
      I0 => \^q\(9),
      I1 => \G0.mem_reg[55]_7\(9),
      I2 => \G0.mem_reg[55]_8\(9),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(9)
    );
\next_switch_matrix[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_2_n_0\,
      I1 => \next_switch_matrix[0][0]_i_3__2_n_0\,
      I2 => gtOp,
      I3 => \next_switch_matrix[0][0]_i_5__0_n_0\,
      I4 => \next_switch_matrix[0][0]_i_6__0_n_0\,
      I5 => \^q\(55),
      O => \next_switch_matrix_reg[0][0]\(0)
    );
\next_switch_matrix[0][0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEE0FFFF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \^q\(33),
      I3 => \^q\(32),
      I4 => \^q\(55),
      I5 => gtOp,
      O => \port_wants_to[6][1]_18\(1)
    );
\next_switch_matrix[0][0]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABABABEF"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_12_n_0\,
      I1 => \port_wants_to[6][1]_18\(2),
      I2 => \next_switch_matrix[0][0]_i_13__2_n_0\,
      I3 => \port_wants_to[6][1]_18\(1),
      I4 => \next_switch_matrix[5][0]_i_2_n_0\,
      O => \next_switch_matrix[0][0]_i_11__0_n_0\
    );
\next_switch_matrix[0][0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444440404044"
    )
        port map (
      I0 => \G0.mem_reg[55]_0\,
      I1 => \^q\(55),
      I2 => gtOp,
      I3 => \^q\(32),
      I4 => \^q\(33),
      I5 => \next_switch_matrix[0][0]_i_5__0_n_0\,
      O => \next_switch_matrix[0][0]_i_12_n_0\
    );
\next_switch_matrix[0][0]_i_13__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5533F0FF5533F000"
    )
        port map (
      I0 => \G0.mem_reg[55]_4\(0),
      I1 => \G0.mem_reg[55]_5\(0),
      I2 => \next_switch_matrix[2][0]_i_6__0_n_0\,
      I3 => \port_wants_to[6][1]_18\(1),
      I4 => \port_wants_to[6][1]_18\(2),
      I5 => \next_switch_matrix[0][0]_i_7__0_n_0\,
      O => \next_switch_matrix[0][0]_i_13__2_n_0\
    );
\next_switch_matrix[0][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_7__0_n_0\,
      I1 => \next_switch_matrix[0][0]_i_8_n_0\,
      I2 => \port_wants_to[6][1]_18\(2),
      I3 => \port_wants_to[6][1]_18\(1),
      O => \next_switch_matrix[0][0]_i_2_n_0\
    );
\next_switch_matrix[0][0]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB0BCB3BF"
    )
        port map (
      I0 => \next_switch_matrix[6][0]_i_2__1_n_0\,
      I1 => \port_wants_to[6][2]_19\(1),
      I2 => \port_wants_to[6][2]_19\(2),
      I3 => \next_switch_matrix[2][0]_i_4_n_0\,
      I4 => \next_switch_matrix[0][0]_i_2_n_0\,
      I5 => \next_switch_matrix[0][0]_i_11__0_n_0\,
      O => \next_switch_matrix[0][0]_i_3__2_n_0\
    );
\next_switch_matrix[0][0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      O => gtOp
    );
\next_switch_matrix[0][0]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      O => \next_switch_matrix[0][0]_i_5__0_n_0\
    );
\next_switch_matrix[0][0]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \next_switch_matrix[0][0]_i_6__0_n_0\
    );
\next_switch_matrix[0][0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E0FFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_5__0_n_0\,
      I1 => gtOp,
      I2 => \^q\(55),
      I3 => \G0.mem_reg[55]_0\,
      I4 => \^port_wants_to[6][0]_20\(0),
      I5 => \G0.mem_reg[55]_3\(0),
      O => \next_switch_matrix[0][0]_i_7__0_n_0\
    );
\next_switch_matrix[0][0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFEEEEFAAAEEEE"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_12_n_0\,
      I1 => \next_switch_matrix[0][0]_i_13__2_n_0\,
      I2 => \next_switch_matrix[6][0]_i_2__1_n_0\,
      I3 => \port_wants_to[6][1]_18\(1),
      I4 => \port_wants_to[6][1]_18\(2),
      I5 => \next_switch_matrix[5][0]_i_2_n_0\,
      O => \next_switch_matrix[0][0]_i_8_n_0\
    );
\next_switch_matrix[0][0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FD57FD57FD55FD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \next_switch_matrix[0][0]_i_5__0_n_0\,
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \port_wants_to[6][1]_18\(2)
    );
\next_switch_matrix[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB000000FB00FB00"
    )
        port map (
      I0 => \port_wants_to[6][2]_19\(2),
      I1 => \port_wants_to[6][2]_19\(1),
      I2 => \next_switch_matrix[0][0]_i_3__2_n_0\,
      I3 => \next_switch_matrix[2][0]_i_4_n_0\,
      I4 => \next_switch_matrix[2][0]_i_5_n_0\,
      I5 => \G0.mem_reg[55]_2\(0),
      O => \next_switch_matrix_reg[2][0]\(0)
    );
\next_switch_matrix[2][0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFD5755"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(33),
      I2 => \^q\(32),
      I3 => \next_switch_matrix[0][0]_i_5__0_n_0\,
      I4 => \^q\(36),
      I5 => \^q\(37),
      O => \port_wants_to[6][2]_19\(2)
    );
\next_switch_matrix[2][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF575757FF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(33),
      I2 => \^q\(32),
      I3 => \^q\(34),
      I4 => \^q\(35),
      I5 => gtOp,
      O => \port_wants_to[6][2]_19\(1)
    );
\next_switch_matrix[2][0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_6__0_n_0\,
      I1 => \next_switch_matrix[0][0]_i_8_n_0\,
      I2 => \port_wants_to[6][1]_18\(1),
      I3 => \port_wants_to[6][1]_18\(2),
      O => \next_switch_matrix[2][0]_i_4_n_0\
    );
\next_switch_matrix[2][0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_11__0_n_0\,
      I1 => \^q\(55),
      I2 => \next_switch_matrix[0][0]_i_5__0_n_0\,
      I3 => gtOp,
      I4 => \next_switch_matrix[0][0]_i_6__0_n_0\,
      O => \next_switch_matrix[2][0]_i_5_n_0\
    );
\next_switch_matrix[2][0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00000FFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_5__0_n_0\,
      I1 => gtOp,
      I2 => \^q\(55),
      I3 => \G0.mem_reg[55]_0\,
      I4 => \^port_wants_to[6][0]_20\(0),
      I5 => \G0.mem_reg[55]_2\(0),
      O => \next_switch_matrix[2][0]_i_6__0_n_0\
    );
\next_switch_matrix[4][0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => \^next_switch_matrix_reg[4][0]\,
      I1 => \next_switch_matrix[4][0]_i_3_n_0\,
      I2 => '1',
      I3 => \^port_wants_to[6][0]_20\(0),
      O => D(0)
    );
\next_switch_matrix[4][0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000054FFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_5__0_n_0\,
      I1 => \^q\(33),
      I2 => \^q\(32),
      I3 => \^q\(36),
      I4 => \^q\(37),
      I5 => \^q\(55),
      O => \^next_switch_matrix_reg[4][0]\
    );
\next_switch_matrix[4][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEA"
    )
        port map (
      I0 => \G0.mem_reg[55]_0\,
      I1 => \^q\(55),
      I2 => \^q\(34),
      I3 => \^q\(35),
      I4 => \^q\(36),
      I5 => \^q\(37),
      O => \next_switch_matrix[4][0]_i_3_n_0\
    );
\next_switch_matrix[4][0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      O => \^port_wants_to[6][0]_20\(0)
    );
\next_switch_matrix[4][0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECCCECC"
    )
        port map (
      I0 => '1',
      I1 => \^port_wants_to[6][0]_20\(0),
      I2 => \^next_switch_matrix_reg[4][0]\,
      I3 => \^next_switch_matrix_reg[4][0]_0\,
      I4 => \G0.mem_reg[55]_6\(0),
      O => \next_switch_matrix_reg[4][0]_1\
    );
\next_switch_matrix[4][0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(36),
      I2 => \^q\(35),
      I3 => \^q\(34),
      I4 => \^q\(55),
      O => \^next_switch_matrix_reg[4][0]_0\
    );
\next_switch_matrix[5][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \next_switch_matrix[5][0]_i_2_n_0\,
      O => \next_switch_matrix_reg[5][0]\(0)
    );
\next_switch_matrix[5][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \next_switch_matrix[4][0]_i_3_n_0\,
      I1 => \^next_switch_matrix_reg[4][0]\,
      I2 => \^port_wants_to[6][0]_20\(0),
      I3 => \G0.mem_reg[55]_6\(0),
      O => \next_switch_matrix[5][0]_i_2_n_0\
    );
\next_switch_matrix[6][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \next_switch_matrix[6][0]_i_2__1_n_0\,
      O => \next_switch_matrix_reg[6][0]\(0)
    );
\next_switch_matrix[6][0]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1F0"
    )
        port map (
      I0 => \^next_switch_matrix_reg[4][0]\,
      I1 => \next_switch_matrix[4][0]_i_3_n_0\,
      I2 => \G0.mem_reg[55]_1\,
      I3 => \^port_wants_to[6][0]_20\(0),
      O => \next_switch_matrix[6][0]_i_2__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized1\ is
  port (
    \next_switch_matrix_reg[4][2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \next_switch_matrix_reg[2][1]\ : out STD_LOGIC;
    \next_switch_matrix_reg[6][1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[1][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][2]\ : out STD_LOGIC;
    \mem_reg[55]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[37]_0\ : in STD_LOGIC;
    \port_wants_to[2][2]_29\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[55]_0\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[55]_1\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \pres_switch_matrix_reg[1][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Inport[1]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized1\ : entity is "NoC_3D_Parallel_recv";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized1\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_switch_matrix[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_29_n_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[1][0]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[2][1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_switch_matrix[1][0]_i_2__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][1]_i_1\ : label is "soft_lutpair9";
begin
  Q(55 downto 0) <= \^q\(55 downto 0);
  \next_switch_matrix_reg[1][0]\ <= \^next_switch_matrix_reg[1][0]\;
  \next_switch_matrix_reg[2][1]\ <= \^next_switch_matrix_reg[2][1]\;
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(9),
      Q => \^q\(9),
      R => reset
    );
\mem[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \G0.mem_reg[55]_0\(0),
      I2 => \G0.mem_reg[55]_1\(0),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(0)
    );
\mem[10]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(10),
      I1 => \G0.mem_reg[55]_0\(10),
      I2 => \G0.mem_reg[55]_1\(10),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(10)
    );
\mem[11]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(11),
      I1 => \G0.mem_reg[55]_0\(11),
      I2 => \G0.mem_reg[55]_1\(11),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(11)
    );
\mem[12]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(12),
      I1 => \G0.mem_reg[55]_0\(12),
      I2 => \G0.mem_reg[55]_1\(12),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(12)
    );
\mem[13]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(13),
      I1 => \G0.mem_reg[55]_0\(13),
      I2 => \G0.mem_reg[55]_1\(13),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(13)
    );
\mem[14]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(14),
      I1 => \G0.mem_reg[55]_0\(14),
      I2 => \G0.mem_reg[55]_1\(14),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(14)
    );
\mem[15]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(15),
      I1 => \G0.mem_reg[55]_0\(15),
      I2 => \G0.mem_reg[55]_1\(15),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(15)
    );
\mem[16]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(16),
      I1 => \G0.mem_reg[55]_0\(16),
      I2 => \G0.mem_reg[55]_1\(16),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(16)
    );
\mem[17]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(17),
      I1 => \G0.mem_reg[55]_0\(17),
      I2 => \G0.mem_reg[55]_1\(17),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(17)
    );
\mem[18]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(18),
      I1 => \G0.mem_reg[55]_0\(18),
      I2 => \G0.mem_reg[55]_1\(18),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(18)
    );
\mem[19]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(19),
      I1 => \G0.mem_reg[55]_0\(19),
      I2 => \G0.mem_reg[55]_1\(19),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(19)
    );
\mem[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \G0.mem_reg[55]_0\(1),
      I2 => \G0.mem_reg[55]_1\(1),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(1)
    );
\mem[20]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(20),
      I1 => \G0.mem_reg[55]_0\(20),
      I2 => \G0.mem_reg[55]_1\(20),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(20)
    );
\mem[21]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(21),
      I1 => \G0.mem_reg[55]_0\(21),
      I2 => \G0.mem_reg[55]_1\(21),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(21)
    );
\mem[22]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(22),
      I1 => \G0.mem_reg[55]_0\(22),
      I2 => \G0.mem_reg[55]_1\(22),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(22)
    );
\mem[23]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(23),
      I1 => \G0.mem_reg[55]_0\(23),
      I2 => \G0.mem_reg[55]_1\(23),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(23)
    );
\mem[24]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(24),
      I1 => \G0.mem_reg[55]_0\(24),
      I2 => \G0.mem_reg[55]_1\(24),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(24)
    );
\mem[25]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(25),
      I1 => \G0.mem_reg[55]_0\(25),
      I2 => \G0.mem_reg[55]_1\(25),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(25)
    );
\mem[26]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(26),
      I1 => \G0.mem_reg[55]_0\(26),
      I2 => \G0.mem_reg[55]_1\(26),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(26)
    );
\mem[27]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(27),
      I1 => \G0.mem_reg[55]_0\(27),
      I2 => \G0.mem_reg[55]_1\(27),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(27)
    );
\mem[28]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(28),
      I1 => \G0.mem_reg[55]_0\(28),
      I2 => \G0.mem_reg[55]_1\(28),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(28)
    );
\mem[29]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(29),
      I1 => \G0.mem_reg[55]_0\(29),
      I2 => \G0.mem_reg[55]_1\(29),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(29)
    );
\mem[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \G0.mem_reg[55]_0\(2),
      I2 => \G0.mem_reg[55]_1\(2),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(2)
    );
\mem[30]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(30),
      I1 => \G0.mem_reg[55]_0\(30),
      I2 => \G0.mem_reg[55]_1\(30),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(30)
    );
\mem[31]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(31),
      I1 => \G0.mem_reg[55]_0\(31),
      I2 => \G0.mem_reg[55]_1\(31),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(31)
    );
\mem[32]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(32),
      I1 => \G0.mem_reg[55]_0\(32),
      I2 => \G0.mem_reg[55]_1\(32),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(32)
    );
\mem[33]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(33),
      I1 => \G0.mem_reg[55]_0\(33),
      I2 => \G0.mem_reg[55]_1\(33),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(33)
    );
\mem[34]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(34),
      I1 => \G0.mem_reg[55]_0\(34),
      I2 => \G0.mem_reg[55]_1\(34),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(34)
    );
\mem[35]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(35),
      I1 => \G0.mem_reg[55]_0\(35),
      I2 => \G0.mem_reg[55]_1\(35),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(35)
    );
\mem[36]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(36),
      I1 => \G0.mem_reg[55]_0\(36),
      I2 => \G0.mem_reg[55]_1\(36),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(36)
    );
\mem[37]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(37),
      I1 => \G0.mem_reg[55]_0\(37),
      I2 => \G0.mem_reg[55]_1\(37),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(37)
    );
\mem[38]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(38),
      I1 => \G0.mem_reg[55]_0\(38),
      I2 => \G0.mem_reg[55]_1\(38),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(38)
    );
\mem[39]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(39),
      I1 => \G0.mem_reg[55]_0\(39),
      I2 => \G0.mem_reg[55]_1\(39),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(39)
    );
\mem[3]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(3),
      I1 => \G0.mem_reg[55]_0\(3),
      I2 => \G0.mem_reg[55]_1\(3),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(3)
    );
\mem[40]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(40),
      I1 => \G0.mem_reg[55]_0\(40),
      I2 => \G0.mem_reg[55]_1\(40),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(40)
    );
\mem[41]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(41),
      I1 => \G0.mem_reg[55]_0\(41),
      I2 => \G0.mem_reg[55]_1\(41),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(41)
    );
\mem[42]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(42),
      I1 => \G0.mem_reg[55]_0\(42),
      I2 => \G0.mem_reg[55]_1\(42),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(42)
    );
\mem[43]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(43),
      I1 => \G0.mem_reg[55]_0\(43),
      I2 => \G0.mem_reg[55]_1\(43),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(43)
    );
\mem[44]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(44),
      I1 => \G0.mem_reg[55]_0\(44),
      I2 => \G0.mem_reg[55]_1\(44),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(44)
    );
\mem[45]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(45),
      I1 => \G0.mem_reg[55]_0\(45),
      I2 => \G0.mem_reg[55]_1\(45),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(45)
    );
\mem[46]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(46),
      I1 => \G0.mem_reg[55]_0\(46),
      I2 => \G0.mem_reg[55]_1\(46),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(46)
    );
\mem[47]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(47),
      I1 => \G0.mem_reg[55]_0\(47),
      I2 => \G0.mem_reg[55]_1\(47),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(47)
    );
\mem[48]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(48),
      I1 => \G0.mem_reg[55]_0\(48),
      I2 => \G0.mem_reg[55]_1\(48),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(48)
    );
\mem[49]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(49),
      I1 => \G0.mem_reg[55]_0\(49),
      I2 => \G0.mem_reg[55]_1\(49),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(49)
    );
\mem[4]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \G0.mem_reg[55]_0\(4),
      I2 => \G0.mem_reg[55]_1\(4),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(4)
    );
\mem[50]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(50),
      I1 => \G0.mem_reg[55]_0\(50),
      I2 => \G0.mem_reg[55]_1\(50),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(50)
    );
\mem[51]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(51),
      I1 => \G0.mem_reg[55]_0\(51),
      I2 => \G0.mem_reg[55]_1\(51),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(51)
    );
\mem[52]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(52),
      I1 => \G0.mem_reg[55]_0\(52),
      I2 => \G0.mem_reg[55]_1\(52),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(52)
    );
\mem[53]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(53),
      I1 => \G0.mem_reg[55]_0\(53),
      I2 => \G0.mem_reg[55]_1\(53),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(53)
    );
\mem[54]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(54),
      I1 => \G0.mem_reg[55]_0\(54),
      I2 => \G0.mem_reg[55]_1\(54),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(54)
    );
\mem[55]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(55),
      I1 => \G0.mem_reg[55]_0\(55),
      I2 => \G0.mem_reg[55]_1\(55),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(55)
    );
\mem[5]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(5),
      I1 => \G0.mem_reg[55]_0\(5),
      I2 => \G0.mem_reg[55]_1\(5),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(5)
    );
\mem[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(6),
      I1 => \G0.mem_reg[55]_0\(6),
      I2 => \G0.mem_reg[55]_1\(6),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(6)
    );
\mem[7]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(7),
      I1 => \G0.mem_reg[55]_0\(7),
      I2 => \G0.mem_reg[55]_1\(7),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(7)
    );
\mem[8]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(8),
      I1 => \G0.mem_reg[55]_0\(8),
      I2 => \G0.mem_reg[55]_1\(8),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(8)
    );
\mem[9]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000CCAA00"
    )
        port map (
      I0 => \^q\(9),
      I1 => \G0.mem_reg[55]_0\(9),
      I2 => \G0.mem_reg[55]_1\(9),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(9)
    );
\next_switch_matrix[0][2]_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3044"
    )
        port map (
      I0 => \^next_switch_matrix_reg[2][1]\,
      I1 => \port_wants_to[2][2]_29\(0),
      I2 => \^next_switch_matrix_reg[1][0]\,
      I3 => \G0.mem_reg[37]_0\,
      O => \next_switch_matrix_reg[0][2]\
    );
\next_switch_matrix[1][0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \next_switch_matrix[1][1]_i_2_n_0\,
      O => \^next_switch_matrix_reg[1][0]\
    );
\next_switch_matrix[1][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8FF"
    )
        port map (
      I0 => \next_switch_matrix[1][1]_i_2_n_0\,
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \^q\(55),
      O => D(0)
    );
\next_switch_matrix[1][1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      O => \next_switch_matrix[1][1]_i_2_n_0\
    );
\next_switch_matrix[2][1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F5F7777777F"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \next_switch_matrix[1][1]_i_2_n_0\,
      I3 => \^q\(33),
      I4 => \^q\(32),
      I5 => \^q\(37),
      O => \^next_switch_matrix_reg[2][1]\
    );
\next_switch_matrix[4][2]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5550004000000000"
    )
        port map (
      I0 => \G0.mem_reg[37]_0\,
      I1 => \next_switch_matrix[4][2]_i_29_n_0\,
      I2 => \^q\(36),
      I3 => \^q\(37),
      I4 => \next_switch_matrix[1][1]_i_2_n_0\,
      I5 => \^q\(55),
      O => \next_switch_matrix_reg[4][2]\
    );
\next_switch_matrix[4][2]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \next_switch_matrix[4][2]_i_29_n_0\
    );
\next_switch_matrix[6][1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(33),
      I2 => \^q\(32),
      I3 => \next_switch_matrix[1][1]_i_2_n_0\,
      I4 => \^q\(36),
      I5 => \^q\(37),
      O => \next_switch_matrix_reg[6][1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized10\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \port_wants_to[3][0]_4\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \next_switch_matrix_reg[5][2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[0][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[4][2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[3][2]\ : out STD_LOGIC;
    \port_wants_to[3][2]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \next_switch_matrix_reg[2][2]\ : out STD_LOGIC;
    \port_wants_to[3][3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \port_wants_to[3][1]_2\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \port_wants_to[3][4]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[2][2]_0\ : out STD_LOGIC;
    \G0.mem_reg[55]_0\ : in STD_LOGIC;
    \G0.mem_reg[34]_0\ : in STD_LOGIC;
    \G0.mem_reg[35]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_1\ : in STD_LOGIC;
    \port_wants_to[6][2]_6\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \G0.mem_reg[35]_1\ : in STD_LOGIC;
    \G0.mem_reg[55]_2\ : in STD_LOGIC;
    \G0.mem_reg[35]_2\ : in STD_LOGIC;
    \G0.mem_reg[35]_3\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_reg[55]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized10\ : entity is "NoC_3D_Parallel_recv";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized10\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized10\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \^next_switch_matrix_reg[2][2]\ : STD_LOGIC;
  signal \^port_wants_to[3][0]_4\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^port_wants_to[3][2]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_switch_matrix[1][2]_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][2]_i_3\ : label is "soft_lutpair41";
begin
  Q(55 downto 0) <= \^q\(55 downto 0);
  \next_switch_matrix_reg[2][2]\ <= \^next_switch_matrix_reg[2][2]\;
  \port_wants_to[3][0]_4\(2 downto 0) <= \^port_wants_to[3][0]_4\(2 downto 0);
  \port_wants_to[3][2]_1\(1 downto 0) <= \^port_wants_to[3][2]_1\(1 downto 0);
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(9),
      Q => \^q\(9),
      R => reset
    );
\next_switch_matrix[0][0]_i_9__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FF55CC"
    )
        port map (
      I0 => \G0.mem_reg[34]_0\,
      I1 => \G0.mem_reg[35]_0\,
      I2 => \G0.mem_reg[55]_1\,
      I3 => \port_wants_to[6][2]_6\(0),
      I4 => \port_wants_to[6][2]_6\(1),
      O => \next_switch_matrix_reg[0][0]\
    );
\next_switch_matrix[0][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4FFF4FFFFFF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \^next_switch_matrix_reg[2][2]\,
      I3 => \^q\(55),
      I4 => \^q\(33),
      I5 => \^q\(32),
      O => \^port_wants_to[3][2]_1\(0)
    );
\next_switch_matrix[0][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFEFCFEFCFEFCFFF"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^next_switch_matrix_reg[2][2]\,
      I2 => \^q\(55),
      I3 => \^q\(35),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \^port_wants_to[3][2]_1\(1)
    );
\next_switch_matrix[1][2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1FFFFFFF"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(36),
      I2 => \^q\(55),
      I3 => \^port_wants_to[3][0]_4\(0),
      I4 => \G0.mem_reg[55]_0\,
      I5 => \^port_wants_to[3][0]_4\(2),
      O => D(0)
    );
\next_switch_matrix[1][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FF55FF55FF45FF"
    )
        port map (
      I0 => \^next_switch_matrix_reg[2][2]\,
      I1 => \^q\(35),
      I2 => \^q\(34),
      I3 => \^q\(55),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \^port_wants_to[3][0]_4\(0)
    );
\next_switch_matrix[1][2]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55FD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(34),
      I2 => \^q\(35),
      I3 => \^next_switch_matrix_reg[2][2]\,
      O => \^port_wants_to[3][0]_4\(2)
    );
\next_switch_matrix[1][2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(36),
      I2 => \^q\(55),
      O => \^port_wants_to[3][0]_4\(1)
    );
\next_switch_matrix[2][2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      O => \^next_switch_matrix_reg[2][2]\
    );
\next_switch_matrix[2][2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \next_switch_matrix_reg[2][2]_0\
    );
\next_switch_matrix[3][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1113FFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      I2 => \^q\(33),
      I3 => \^q\(32),
      I4 => \^q\(55),
      I5 => \^next_switch_matrix_reg[2][2]\,
      O => \port_wants_to[3][4]_3\(0)
    );
\next_switch_matrix[3][2]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5055FFFFF2FF"
    )
        port map (
      I0 => \^port_wants_to[3][2]_1\(1),
      I1 => \G0.mem_reg[55]_1\,
      I2 => \G0.mem_reg[55]_2\,
      I3 => \G0.mem_reg[35]_2\,
      I4 => \G0.mem_reg[35]_3\,
      I5 => \^port_wants_to[3][2]_1\(0),
      O => \next_switch_matrix_reg[3][2]\
    );
\next_switch_matrix[3][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FFF1FFE0FFFFFF"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \^next_switch_matrix_reg[2][2]\,
      I3 => \^q\(55),
      I4 => \^q\(34),
      I5 => \^q\(35),
      O => \port_wants_to[3][3]_0\(0)
    );
\next_switch_matrix[4][2]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \G0.mem_reg[35]_1\,
      O => \next_switch_matrix_reg[4][2]\(0)
    );
\next_switch_matrix[4][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0FEF0FEFEF"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \^q\(55),
      I3 => \^q\(35),
      I4 => \^q\(34),
      I5 => \^next_switch_matrix_reg[2][2]\,
      O => \port_wants_to[3][1]_2\(1)
    );
\next_switch_matrix[4][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0EEFFFF"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      I2 => \^q\(35),
      I3 => \^q\(34),
      I4 => \^q\(55),
      I5 => \^next_switch_matrix_reg[2][2]\,
      O => \port_wants_to[3][1]_2\(0)
    );
\next_switch_matrix[5][2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(36),
      I2 => \^q\(55),
      I3 => \^port_wants_to[3][0]_4\(0),
      I4 => \G0.mem_reg[55]_0\,
      I5 => \^port_wants_to[3][0]_4\(2),
      O => \next_switch_matrix_reg[5][2]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized13\ is
  port (
    \next_switch_matrix_reg[1][0]\ : out STD_LOGIC;
    \port_wants_to[6][0]_9\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \next_switch_matrix_reg[6][0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[0][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[0][0]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][0]_1\ : out STD_LOGIC;
    \port_wants_to[6][2]_6\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \next_switch_matrix_reg[4][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \port_wants_to[6][1]_7\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \next_switch_matrix_reg[3][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[3][0]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[1][0]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][0]_2\ : out STD_LOGIC;
    \next_switch_matrix_reg[3][0]_1\ : out STD_LOGIC;
    \G0.mem_reg[55]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_1\ : in STD_LOGIC;
    \G0.mem_reg[33]_0\ : in STD_LOGIC;
    \G0.mem_reg[32]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_2\ : in STD_LOGIC;
    \G0.mem_reg[55]_3\ : in STD_LOGIC;
    \G0.mem_reg[32]_1\ : in STD_LOGIC;
    \G0.mem_reg[55]_4\ : in STD_LOGIC;
    \G0.mem_reg[34]_0\ : in STD_LOGIC;
    \G0.mem_reg[35]_0\ : in STD_LOGIC;
    \G0.mem_reg[34]_1\ : in STD_LOGIC;
    \G0.mem_reg[35]_1\ : in STD_LOGIC;
    \G0.mem_reg[37]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[35]_2\ : in STD_LOGIC;
    \G0.mem_reg[37]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[37]_2\ : in STD_LOGIC;
    \G0.mem_reg[55]_5\ : in STD_LOGIC;
    \G0.mem_reg[32]_2\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    To_NoC_1 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized13\ : entity is "NoC_3D_Parallel_recv";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized13\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized13\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_switch_matrix[0][0]_i_14__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][0]_i_2__2_n_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][0]_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][0]_1\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][0]_2\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[1][0]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[6][0]\ : STD_LOGIC;
  signal \^port_wants_to[6][0]_9\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^port_wants_to[6][1]_7\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^port_wants_to[6][2]_6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \port_wants_to[6][3]_5\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \port_wants_to[6][4]_8\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_switch_matrix[1][0]_i_1__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][0]_i_3__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][0]_i_4__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][0]_i_6\ : label is "soft_lutpair43";
begin
  Q(55 downto 0) <= \^q\(55 downto 0);
  \next_switch_matrix_reg[0][0]_0\ <= \^next_switch_matrix_reg[0][0]_0\;
  \next_switch_matrix_reg[0][0]_1\ <= \^next_switch_matrix_reg[0][0]_1\;
  \next_switch_matrix_reg[0][0]_2\ <= \^next_switch_matrix_reg[0][0]_2\;
  \next_switch_matrix_reg[1][0]\ <= \^next_switch_matrix_reg[1][0]\;
  \next_switch_matrix_reg[6][0]\ <= \^next_switch_matrix_reg[6][0]\;
  \port_wants_to[6][0]_9\(2 downto 0) <= \^port_wants_to[6][0]_9\(2 downto 0);
  \port_wants_to[6][1]_7\(1 downto 0) <= \^port_wants_to[6][1]_7\(1 downto 0);
  \port_wants_to[6][2]_6\(1 downto 0) <= \^port_wants_to[6][2]_6\(1 downto 0);
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => To_NoC_1(9),
      Q => \^q\(9),
      R => reset
    );
\next_switch_matrix[0][0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      O => \^next_switch_matrix_reg[0][0]_2\
    );
\next_switch_matrix[0][0]_i_13__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CEFE"
    )
        port map (
      I0 => \G0.mem_reg[35]_1\,
      I1 => \^port_wants_to[6][0]_9\(2),
      I2 => \^port_wants_to[6][0]_9\(0),
      I3 => \G0.mem_reg[37]_0\(0),
      I4 => \next_switch_matrix[0][0]_i_14__0_n_0\,
      O => \next_switch_matrix_reg[1][0]_0\
    );
\next_switch_matrix[0][0]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C444444404444444"
    )
        port map (
      I0 => \G0.mem_reg[35]_2\,
      I1 => \^port_wants_to[6][0]_9\(2),
      I2 => \^q\(55),
      I3 => \^next_switch_matrix_reg[0][0]_2\,
      I4 => \^port_wants_to[6][0]_9\(0),
      I5 => \G0.mem_reg[37]_1\(0),
      O => \next_switch_matrix[0][0]_i_14__0_n_0\
    );
\next_switch_matrix[0][0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0E0"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]_0\,
      I1 => \^next_switch_matrix_reg[0][0]_1\,
      I2 => \G0.mem_reg[32]_0\,
      I3 => \^port_wants_to[6][2]_6\(1),
      I4 => \^port_wants_to[6][2]_6\(0),
      O => \next_switch_matrix_reg[0][0]\(0)
    );
\next_switch_matrix[0][0]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DFF"
    )
        port map (
      I0 => \next_switch_matrix[4][0]_i_2__2_n_0\,
      I1 => \G0.mem_reg[55]_2\,
      I2 => \G0.mem_reg[55]_3\,
      I3 => \G0.mem_reg[55]_1\,
      O => \^next_switch_matrix_reg[0][0]_0\
    );
\next_switch_matrix[0][0]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB8BB888B"
    )
        port map (
      I0 => \^next_switch_matrix_reg[6][0]\,
      I1 => \^port_wants_to[6][2]_6\(1),
      I2 => \^port_wants_to[6][2]_6\(0),
      I3 => \G0.mem_reg[32]_0\,
      I4 => \G0.mem_reg[32]_1\,
      I5 => \G0.mem_reg[55]_4\,
      O => \^next_switch_matrix_reg[0][0]_1\
    );
\next_switch_matrix[0][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFEFCFEFCFEFCFFF"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^next_switch_matrix_reg[0][0]_2\,
      I2 => \^q\(55),
      I3 => \^q\(35),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \^port_wants_to[6][2]_6\(1)
    );
\next_switch_matrix[0][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4FFF4FFFFFF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \^next_switch_matrix_reg[0][0]_2\,
      I3 => \^q\(55),
      I4 => \^q\(33),
      I5 => \^q\(32),
      O => \^port_wants_to[6][2]_6\(0)
    );
\next_switch_matrix[1][0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEFFFFF"
    )
        port map (
      I0 => \^port_wants_to[6][0]_9\(2),
      I1 => \^next_switch_matrix_reg[1][0]\,
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \^q\(55),
      O => D(0)
    );
\next_switch_matrix[1][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55FD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(34),
      I2 => \^q\(35),
      I3 => \^next_switch_matrix_reg[0][0]_2\,
      O => \^port_wants_to[6][0]_9\(2)
    );
\next_switch_matrix[1][0]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \G0.mem_reg[55]_0\,
      I1 => \^port_wants_to[6][0]_9\(0),
      O => \^next_switch_matrix_reg[1][0]\
    );
\next_switch_matrix[2][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FF55FF55FF45FF"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]_2\,
      I1 => \^q\(35),
      I2 => \^q\(34),
      I3 => \^q\(55),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \^port_wants_to[6][0]_9\(0)
    );
\next_switch_matrix[3][0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1113FFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      I2 => \^q\(33),
      I3 => \^q\(32),
      I4 => \^q\(55),
      I5 => \^next_switch_matrix_reg[0][0]_2\,
      O => \port_wants_to[6][4]_8\(2)
    );
\next_switch_matrix[3][0]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3133"
    )
        port map (
      I0 => \G0.mem_reg[34]_0\,
      I1 => \G0.mem_reg[35]_0\,
      I2 => \port_wants_to[6][3]_5\(2),
      I3 => \G0.mem_reg[34]_1\,
      O => \next_switch_matrix_reg[3][0]_0\
    );
\next_switch_matrix[3][0]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF02FF"
    )
        port map (
      I0 => \G0.mem_reg[34]_0\,
      I1 => \port_wants_to[6][3]_5\(2),
      I2 => \G0.mem_reg[35]_0\,
      I3 => \G0.mem_reg[34]_1\,
      I4 => \port_wants_to[6][4]_8\(2),
      O => \next_switch_matrix_reg[3][0]\
    );
\next_switch_matrix[3][0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \next_switch_matrix_reg[3][0]_1\
    );
\next_switch_matrix[3][0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(36),
      I2 => \^q\(55),
      O => \^port_wants_to[6][0]_9\(1)
    );
\next_switch_matrix[3][0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FFF1FFE0FFFFFF"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \^next_switch_matrix_reg[0][0]_2\,
      I3 => \^q\(55),
      I4 => \^q\(34),
      I5 => \^q\(35),
      O => \port_wants_to[6][3]_5\(2)
    );
\next_switch_matrix[4][0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2FFFFF"
    )
        port map (
      I0 => \next_switch_matrix[4][0]_i_2__2_n_0\,
      I1 => \G0.mem_reg[55]_2\,
      I2 => \G0.mem_reg[55]_1\,
      I3 => \^port_wants_to[6][1]_7\(0),
      I4 => \^port_wants_to[6][1]_7\(1),
      O => \next_switch_matrix_reg[4][0]\(0)
    );
\next_switch_matrix[4][0]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FCAAFFFF"
    )
        port map (
      I0 => \G0.mem_reg[35]_2\,
      I1 => \G0.mem_reg[37]_2\,
      I2 => \G0.mem_reg[55]_5\,
      I3 => \^port_wants_to[6][1]_7\(0),
      I4 => \^port_wants_to[6][1]_7\(1),
      I5 => \G0.mem_reg[32]_2\,
      O => \next_switch_matrix[4][0]_i_2__2_n_0\
    );
\next_switch_matrix[4][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE0EEFFFF"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      I2 => \^q\(35),
      I3 => \^q\(34),
      I4 => \^q\(55),
      I5 => \^next_switch_matrix_reg[0][0]_2\,
      O => \^port_wants_to[6][1]_7\(0)
    );
\next_switch_matrix[4][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0FEF0FEFEF"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \^q\(55),
      I3 => \^q\(35),
      I4 => \^q\(34),
      I5 => \^next_switch_matrix_reg[0][0]_2\,
      O => \^port_wants_to[6][1]_7\(1)
    );
\next_switch_matrix[6][0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04040444FFFFFFFF"
    )
        port map (
      I0 => \G0.mem_reg[55]_1\,
      I1 => \^port_wants_to[6][0]_9\(2),
      I2 => \^q\(55),
      I3 => \^q\(36),
      I4 => \^q\(37),
      I5 => \G0.mem_reg[33]_0\,
      O => \^next_switch_matrix_reg[6][0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized15\ is
  port (
    \next_switch_matrix_reg[6][2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \next_switch_matrix_reg[3][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[3][0]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[3][0]_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[6][1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[1][1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_reg[55]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \port_wants_to[6][4]_48\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \G0.mem_reg[55]_0\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[55]_1\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \pres_switch_matrix_reg[1][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Inport[1]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized15\ : entity is "NoC_3D_Parallel_recv";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized15\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized15\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_switch_matrix[3][1]_i_2_n_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[3][0]_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[3][0]_1\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[6][2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_11__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][1]_i_1__0\ : label is "soft_lutpair53";
begin
  Q(55 downto 0) <= \^q\(55 downto 0);
  \next_switch_matrix_reg[3][0]_0\ <= \^next_switch_matrix_reg[3][0]_0\;
  \next_switch_matrix_reg[3][0]_1\ <= \^next_switch_matrix_reg[3][0]_1\;
  \next_switch_matrix_reg[6][2]\ <= \^next_switch_matrix_reg[6][2]\;
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[1]\(9),
      Q => \^q\(9),
      R => reset
    );
\mem[0]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \G0.mem_reg[55]_0\(0),
      I2 => \G0.mem_reg[55]_1\(0),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(0)
    );
\mem[10]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(10),
      I1 => \G0.mem_reg[55]_0\(10),
      I2 => \G0.mem_reg[55]_1\(10),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(10)
    );
\mem[11]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(11),
      I1 => \G0.mem_reg[55]_0\(11),
      I2 => \G0.mem_reg[55]_1\(11),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(11)
    );
\mem[12]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(12),
      I1 => \G0.mem_reg[55]_0\(12),
      I2 => \G0.mem_reg[55]_1\(12),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(12)
    );
\mem[13]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(13),
      I1 => \G0.mem_reg[55]_0\(13),
      I2 => \G0.mem_reg[55]_1\(13),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(13)
    );
\mem[14]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(14),
      I1 => \G0.mem_reg[55]_0\(14),
      I2 => \G0.mem_reg[55]_1\(14),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(14)
    );
\mem[15]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(15),
      I1 => \G0.mem_reg[55]_0\(15),
      I2 => \G0.mem_reg[55]_1\(15),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(15)
    );
\mem[16]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(16),
      I1 => \G0.mem_reg[55]_0\(16),
      I2 => \G0.mem_reg[55]_1\(16),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(16)
    );
\mem[17]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(17),
      I1 => \G0.mem_reg[55]_0\(17),
      I2 => \G0.mem_reg[55]_1\(17),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(17)
    );
\mem[18]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(18),
      I1 => \G0.mem_reg[55]_0\(18),
      I2 => \G0.mem_reg[55]_1\(18),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(18)
    );
\mem[19]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(19),
      I1 => \G0.mem_reg[55]_0\(19),
      I2 => \G0.mem_reg[55]_1\(19),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(19)
    );
\mem[1]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \G0.mem_reg[55]_0\(1),
      I2 => \G0.mem_reg[55]_1\(1),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(1)
    );
\mem[20]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(20),
      I1 => \G0.mem_reg[55]_0\(20),
      I2 => \G0.mem_reg[55]_1\(20),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(20)
    );
\mem[21]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(21),
      I1 => \G0.mem_reg[55]_0\(21),
      I2 => \G0.mem_reg[55]_1\(21),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(21)
    );
\mem[22]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(22),
      I1 => \G0.mem_reg[55]_0\(22),
      I2 => \G0.mem_reg[55]_1\(22),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(22)
    );
\mem[23]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(23),
      I1 => \G0.mem_reg[55]_0\(23),
      I2 => \G0.mem_reg[55]_1\(23),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(23)
    );
\mem[24]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(24),
      I1 => \G0.mem_reg[55]_0\(24),
      I2 => \G0.mem_reg[55]_1\(24),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(24)
    );
\mem[25]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(25),
      I1 => \G0.mem_reg[55]_0\(25),
      I2 => \G0.mem_reg[55]_1\(25),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(25)
    );
\mem[26]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(26),
      I1 => \G0.mem_reg[55]_0\(26),
      I2 => \G0.mem_reg[55]_1\(26),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(26)
    );
\mem[27]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(27),
      I1 => \G0.mem_reg[55]_0\(27),
      I2 => \G0.mem_reg[55]_1\(27),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(27)
    );
\mem[28]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(28),
      I1 => \G0.mem_reg[55]_0\(28),
      I2 => \G0.mem_reg[55]_1\(28),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(28)
    );
\mem[29]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(29),
      I1 => \G0.mem_reg[55]_0\(29),
      I2 => \G0.mem_reg[55]_1\(29),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(29)
    );
\mem[2]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \G0.mem_reg[55]_0\(2),
      I2 => \G0.mem_reg[55]_1\(2),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(2)
    );
\mem[30]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(30),
      I1 => \G0.mem_reg[55]_0\(30),
      I2 => \G0.mem_reg[55]_1\(30),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(30)
    );
\mem[31]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(31),
      I1 => \G0.mem_reg[55]_0\(31),
      I2 => \G0.mem_reg[55]_1\(31),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(31)
    );
\mem[32]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(32),
      I1 => \G0.mem_reg[55]_0\(32),
      I2 => \G0.mem_reg[55]_1\(32),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(32)
    );
\mem[33]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(33),
      I1 => \G0.mem_reg[55]_0\(33),
      I2 => \G0.mem_reg[55]_1\(33),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(33)
    );
\mem[34]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(34),
      I1 => \G0.mem_reg[55]_0\(34),
      I2 => \G0.mem_reg[55]_1\(34),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(34)
    );
\mem[35]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(35),
      I1 => \G0.mem_reg[55]_0\(35),
      I2 => \G0.mem_reg[55]_1\(35),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(35)
    );
\mem[36]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(36),
      I1 => \G0.mem_reg[55]_0\(36),
      I2 => \G0.mem_reg[55]_1\(36),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(36)
    );
\mem[37]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(37),
      I1 => \G0.mem_reg[55]_0\(37),
      I2 => \G0.mem_reg[55]_1\(37),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(37)
    );
\mem[38]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(38),
      I1 => \G0.mem_reg[55]_0\(38),
      I2 => \G0.mem_reg[55]_1\(38),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(38)
    );
\mem[39]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(39),
      I1 => \G0.mem_reg[55]_0\(39),
      I2 => \G0.mem_reg[55]_1\(39),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(39)
    );
\mem[3]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(3),
      I1 => \G0.mem_reg[55]_0\(3),
      I2 => \G0.mem_reg[55]_1\(3),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(3)
    );
\mem[40]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(40),
      I1 => \G0.mem_reg[55]_0\(40),
      I2 => \G0.mem_reg[55]_1\(40),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(40)
    );
\mem[41]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(41),
      I1 => \G0.mem_reg[55]_0\(41),
      I2 => \G0.mem_reg[55]_1\(41),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(41)
    );
\mem[42]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(42),
      I1 => \G0.mem_reg[55]_0\(42),
      I2 => \G0.mem_reg[55]_1\(42),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(42)
    );
\mem[43]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(43),
      I1 => \G0.mem_reg[55]_0\(43),
      I2 => \G0.mem_reg[55]_1\(43),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(43)
    );
\mem[44]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(44),
      I1 => \G0.mem_reg[55]_0\(44),
      I2 => \G0.mem_reg[55]_1\(44),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(44)
    );
\mem[45]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(45),
      I1 => \G0.mem_reg[55]_0\(45),
      I2 => \G0.mem_reg[55]_1\(45),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(45)
    );
\mem[46]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(46),
      I1 => \G0.mem_reg[55]_0\(46),
      I2 => \G0.mem_reg[55]_1\(46),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(46)
    );
\mem[47]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(47),
      I1 => \G0.mem_reg[55]_0\(47),
      I2 => \G0.mem_reg[55]_1\(47),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(47)
    );
\mem[48]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(48),
      I1 => \G0.mem_reg[55]_0\(48),
      I2 => \G0.mem_reg[55]_1\(48),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(48)
    );
\mem[49]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(49),
      I1 => \G0.mem_reg[55]_0\(49),
      I2 => \G0.mem_reg[55]_1\(49),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(49)
    );
\mem[4]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \G0.mem_reg[55]_0\(4),
      I2 => \G0.mem_reg[55]_1\(4),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(4)
    );
\mem[50]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(50),
      I1 => \G0.mem_reg[55]_0\(50),
      I2 => \G0.mem_reg[55]_1\(50),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(50)
    );
\mem[51]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(51),
      I1 => \G0.mem_reg[55]_0\(51),
      I2 => \G0.mem_reg[55]_1\(51),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(51)
    );
\mem[52]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(52),
      I1 => \G0.mem_reg[55]_0\(52),
      I2 => \G0.mem_reg[55]_1\(52),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(52)
    );
\mem[53]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(53),
      I1 => \G0.mem_reg[55]_0\(53),
      I2 => \G0.mem_reg[55]_1\(53),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(53)
    );
\mem[54]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(54),
      I1 => \G0.mem_reg[55]_0\(54),
      I2 => \G0.mem_reg[55]_1\(54),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(54)
    );
\mem[55]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(55),
      I1 => \G0.mem_reg[55]_0\(55),
      I2 => \G0.mem_reg[55]_1\(55),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(55)
    );
\mem[5]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(5),
      I1 => \G0.mem_reg[55]_0\(5),
      I2 => \G0.mem_reg[55]_1\(5),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(5)
    );
\mem[6]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(6),
      I1 => \G0.mem_reg[55]_0\(6),
      I2 => \G0.mem_reg[55]_1\(6),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(6)
    );
\mem[7]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(7),
      I1 => \G0.mem_reg[55]_0\(7),
      I2 => \G0.mem_reg[55]_1\(7),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(7)
    );
\mem[8]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(8),
      I1 => \G0.mem_reg[55]_0\(8),
      I2 => \G0.mem_reg[55]_1\(8),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(8)
    );
\mem[9]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC00AA00"
    )
        port map (
      I0 => \^q\(9),
      I1 => \G0.mem_reg[55]_0\(9),
      I2 => \G0.mem_reg[55]_1\(9),
      I3 => \pres_switch_matrix_reg[1][2]\(0),
      I4 => \pres_switch_matrix_reg[1][2]\(1),
      I5 => \pres_switch_matrix_reg[1][2]\(2),
      O => \mem_reg[55]\(9)
    );
\next_switch_matrix[0][2]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"500050004000F0A0"
    )
        port map (
      I0 => \^q\(37),
      I1 => \next_switch_matrix[3][1]_i_2_n_0\,
      I2 => \^q\(55),
      I3 => \^q\(36),
      I4 => \^q\(34),
      I5 => \^q\(35),
      O => \^next_switch_matrix_reg[3][0]_0\
    );
\next_switch_matrix[0][2]_i_11__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0EF0000"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \^q\(55),
      O => \^next_switch_matrix_reg[3][0]_1\
    );
\next_switch_matrix[0][2]_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => \next_switch_matrix[3][1]_i_2_n_0\,
      I1 => \^q\(55),
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \^q\(34),
      I5 => \^q\(35),
      O => \^next_switch_matrix_reg[6][2]\
    );
\next_switch_matrix[1][0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAC0CAC"
    )
        port map (
      I0 => \^next_switch_matrix_reg[3][0]_0\,
      I1 => \^next_switch_matrix_reg[3][0]_1\,
      I2 => \port_wants_to[6][4]_48\(0),
      I3 => \port_wants_to[6][4]_48\(1),
      I4 => \^next_switch_matrix_reg[6][2]\,
      O => \next_switch_matrix_reg[3][0]\
    );
\next_switch_matrix[1][1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D5D5DFD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \^q\(35),
      I4 => \^q\(34),
      O => \next_switch_matrix_reg[1][1]\(0)
    );
\next_switch_matrix[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEFF0FFF4FFF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \^q\(36),
      I3 => \^q\(55),
      I4 => \next_switch_matrix[3][1]_i_2_n_0\,
      I5 => \^q\(37),
      O => D(0)
    );
\next_switch_matrix[3][1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \next_switch_matrix[3][1]_i_2_n_0\
    );
\next_switch_matrix[6][1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFFFF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \^q\(36),
      I3 => \^q\(37),
      I4 => \^q\(55),
      I5 => \next_switch_matrix[3][1]_i_2_n_0\,
      O => \next_switch_matrix_reg[6][1]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized17\ is
  port (
    \next_switch_matrix_reg[3][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[6][2]\ : out STD_LOGIC;
    \next_switch_matrix_reg[3][2]\ : out STD_LOGIC;
    \next_switch_matrix_reg[1][2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \next_switch_matrix_reg[2][2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[3][0]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[5][2]\ : out STD_LOGIC;
    \next_switch_matrix_reg[5][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[5][0]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[1][2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[5][0]_1\ : out STD_LOGIC;
    \next_switch_matrix_reg[5][0]_2\ : out STD_LOGIC;
    \next_switch_matrix_reg[6][2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[4][2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \port_wants_to[6][4]_48\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \G0.mem_reg[37]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_0\ : in STD_LOGIC;
    \G0.mem_reg[34]_0\ : in STD_LOGIC;
    \port_wants_to[6][3]_49\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \port_wants_to[6][2]_51\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \port_wants_to[6][0]_50\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \port_wants_to[6][1]_52\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \G0.mem_reg[35]_0\ : in STD_LOGIC;
    \G0.mem_reg[35]_1\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Inport[3]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized17\ : entity is "NoC_3D_Parallel_recv";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized17\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized17\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_switch_matrix[0][0]_i_11__2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_3__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_7__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_8__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_9_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_2__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_3__2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_12_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_13_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_14_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_15_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_16_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_17_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_18_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_21_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_22_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_23_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_24_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_2__2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_4__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_5__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_6__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_7__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_8__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_9__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_30_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][2]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][2]_i_3__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][2]_i_6__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][2]_i_7_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][2]_i_8_n_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[1][2]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[2][2]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[3][2]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[5][2]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[6][2]\ : STD_LOGIC;
  signal \port_wants_to[3][0]_45\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[3][1]_47\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \port_wants_to[3][2]_46\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \port_wants_to[3][3]_44\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \port_wants_to[3][4]_43\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_11__2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_4__1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_7__1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][0]_i_10__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][2]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][2]_i_3__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][2]_i_1__1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_18\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_23\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_24\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_4__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_6__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_8__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][0]_i_22\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][2]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][2]_i_2__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][2]_i_7\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \next_switch_matrix[6][2]_i_1__1\ : label is "soft_lutpair58";
begin
  Q(55 downto 0) <= \^q\(55 downto 0);
  \next_switch_matrix_reg[1][2]\ <= \^next_switch_matrix_reg[1][2]\;
  \next_switch_matrix_reg[2][2]\ <= \^next_switch_matrix_reg[2][2]\;
  \next_switch_matrix_reg[3][2]\ <= \^next_switch_matrix_reg[3][2]\;
  \next_switch_matrix_reg[5][2]\ <= \^next_switch_matrix_reg[5][2]\;
  \next_switch_matrix_reg[6][2]\ <= \^next_switch_matrix_reg[6][2]\;
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \Inport[3]\(9),
      Q => \^q\(9),
      R => reset
    );
\next_switch_matrix[0][0]_i_11__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAEEE"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_5__1_n_0\,
      I1 => \next_switch_matrix[3][2]_i_2__2_n_0\,
      I2 => \port_wants_to[3][3]_44\(2),
      I3 => \port_wants_to[3][3]_44\(1),
      I4 => \next_switch_matrix[5][2]_i_2__0_n_0\,
      O => \next_switch_matrix[0][0]_i_11__2_n_0\
    );
\next_switch_matrix[0][0]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFBABFBFBFBFB"
    )
        port map (
      I0 => \port_wants_to[6][0]_50\(1),
      I1 => \^next_switch_matrix_reg[2][2]\,
      I2 => \port_wants_to[6][0]_50\(0),
      I3 => \next_switch_matrix[3][2]_i_7__0_n_0\,
      I4 => \next_switch_matrix[0][0]_i_11__2_n_0\,
      I5 => \next_switch_matrix[3][2]_i_14_n_0\,
      O => \next_switch_matrix_reg[0][0]\
    );
\next_switch_matrix[0][2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \next_switch_matrix[0][2]_i_3__1_n_0\,
      I4 => \port_wants_to[3][0]_45\(2),
      I5 => \port_wants_to[3][0]_45\(0),
      O => D(0)
    );
\next_switch_matrix[0][2]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \G0.mem_reg[55]_0\,
      I1 => \next_switch_matrix[0][2]_i_7__1_n_0\,
      I2 => \next_switch_matrix[0][2]_i_8__1_n_0\,
      O => \next_switch_matrix[0][2]_i_3__1_n_0\
    );
\next_switch_matrix[0][2]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFDFDDD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \^q\(34),
      I4 => \^q\(35),
      O => \port_wants_to[3][0]_45\(2)
    );
\next_switch_matrix[0][2]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \next_switch_matrix[0][2]_i_9_n_0\,
      I3 => \^q\(55),
      I4 => \^q\(37),
      I5 => \^q\(36),
      O => \port_wants_to[3][0]_45\(0)
    );
\next_switch_matrix[0][2]_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFDFDDD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \^q\(35),
      I4 => \^q\(34),
      O => \next_switch_matrix[0][2]_i_7__1_n_0\
    );
\next_switch_matrix[0][2]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF02FD0000000000"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \G0.mem_reg[37]_0\,
      I4 => \G0.mem_reg[34]_0\,
      I5 => \port_wants_to[3][0]_45\(0),
      O => \next_switch_matrix[0][2]_i_8__1_n_0\
    );
\next_switch_matrix[0][2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \next_switch_matrix[0][2]_i_9_n_0\
    );
\next_switch_matrix[1][0]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4C404F43"
    )
        port map (
      I0 => \^next_switch_matrix_reg[6][2]\,
      I1 => \port_wants_to[6][4]_48\(0),
      I2 => \port_wants_to[6][4]_48\(1),
      I3 => \^next_switch_matrix_reg[3][2]\,
      I4 => \^next_switch_matrix_reg[1][2]\,
      O => \next_switch_matrix_reg[3][0]\
    );
\next_switch_matrix[1][2]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^next_switch_matrix_reg[1][2]\,
      O => \next_switch_matrix_reg[1][2]_0\(0)
    );
\next_switch_matrix[1][2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_3__0_n_0\,
      I1 => \next_switch_matrix[3][2]_i_6__0_n_0\,
      I2 => \port_wants_to[3][4]_43\(2),
      I3 => \port_wants_to[3][4]_43\(1),
      I4 => \next_switch_matrix[3][2]_i_7__0_n_0\,
      O => \^next_switch_matrix_reg[1][2]\
    );
\next_switch_matrix[1][2]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => \next_switch_matrix[5][2]_i_2__0_n_0\,
      I1 => \port_wants_to[3][3]_44\(2),
      I2 => \port_wants_to[3][3]_44\(1),
      I3 => \next_switch_matrix[3][2]_i_8__0_n_0\,
      O => \next_switch_matrix[1][2]_i_3__0_n_0\
    );
\next_switch_matrix[1][2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555F75FF75FFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \^q\(35),
      I4 => \^q\(34),
      I5 => \next_switch_matrix[0][2]_i_9_n_0\,
      O => \port_wants_to[3][4]_43\(2)
    );
\next_switch_matrix[1][2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDFDFDFFFDFFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \next_switch_matrix[0][2]_i_9_n_0\,
      I4 => \^q\(35),
      I5 => \^q\(34),
      O => \port_wants_to[3][4]_43\(1)
    );
\next_switch_matrix[2][2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_2__1_n_0\,
      I1 => \port_wants_to[3][0]_45\(0),
      O => \^next_switch_matrix_reg[2][2]\
    );
\next_switch_matrix[2][2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_3__2_n_0\,
      I1 => \^q\(55),
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \^q\(34),
      I5 => \^q\(35),
      O => \next_switch_matrix[2][2]_i_2__1_n_0\
    );
\next_switch_matrix[2][2]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAEEEEAAAAAAAA"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_3__1_n_0\,
      I1 => \port_wants_to[3][0]_45\(0),
      I2 => \^q\(36),
      I3 => \^q\(37),
      I4 => \^q\(55),
      I5 => \port_wants_to[3][0]_45\(2),
      O => \next_switch_matrix[2][2]_i_3__2_n_0\
    );
\next_switch_matrix[3][0]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF550FCC00550FCC"
    )
        port map (
      I0 => \^next_switch_matrix_reg[5][2]\,
      I1 => \^next_switch_matrix_reg[1][2]\,
      I2 => \^next_switch_matrix_reg[3][2]\,
      I3 => \port_wants_to[6][3]_49\(0),
      I4 => \port_wants_to[6][3]_49\(1),
      I5 => \^next_switch_matrix_reg[6][2]\,
      O => \next_switch_matrix_reg[3][0]_0\
    );
\next_switch_matrix[3][2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF3CFFF5FFFFFF"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(34),
      I2 => \next_switch_matrix[0][2]_i_9_n_0\,
      I3 => \^q\(55),
      I4 => \^q\(35),
      I5 => \^q\(37),
      O => \port_wants_to[3][2]_46\(2)
    );
\next_switch_matrix[3][2]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFFFBFFFFFBF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(37),
      I2 => \^q\(55),
      I3 => \^q\(34),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \port_wants_to[3][2]_46\(1)
    );
\next_switch_matrix[3][2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_3__2_n_0\,
      I1 => \next_switch_matrix[3][2]_i_16_n_0\,
      I2 => \next_switch_matrix[3][2]_i_17_n_0\,
      O => \next_switch_matrix[3][2]_i_12_n_0\
    );
\next_switch_matrix[3][2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF00FB00FF"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_16_n_0\,
      I1 => \next_switch_matrix[2][2]_i_3__2_n_0\,
      I2 => \next_switch_matrix[3][2]_i_17_n_0\,
      I3 => \next_switch_matrix[3][2]_i_18_n_0\,
      I4 => \port_wants_to[3][1]_47\(1),
      I5 => \port_wants_to[3][1]_47\(2),
      O => \next_switch_matrix[3][2]_i_13_n_0\
    );
\next_switch_matrix[3][2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_4__0_n_0\,
      I1 => \next_switch_matrix[3][2]_i_3__0_n_0\,
      I2 => \next_switch_matrix[3][2]_i_21_n_0\,
      I3 => \next_switch_matrix[3][2]_i_22_n_0\,
      O => \next_switch_matrix[3][2]_i_14_n_0\
    );
\next_switch_matrix[3][2]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABA"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_23_n_0\,
      I1 => \next_switch_matrix[3][2]_i_16_n_0\,
      I2 => \next_switch_matrix[2][2]_i_3__2_n_0\,
      I3 => \port_wants_to[3][1]_47\(2),
      I4 => \port_wants_to[3][1]_47\(1),
      O => \next_switch_matrix[3][2]_i_15_n_0\
    );
\next_switch_matrix[3][2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7C7F4C437073404"
    )
        port map (
      I0 => \next_switch_matrix[5][2]_i_7_n_0\,
      I1 => \port_wants_to[3][1]_47\(2),
      I2 => \port_wants_to[3][1]_47\(1),
      I3 => \next_switch_matrix[3][2]_i_18_n_0\,
      I4 => \next_switch_matrix[3][2]_i_23_n_0\,
      I5 => \^next_switch_matrix_reg[6][2]\,
      O => \next_switch_matrix[3][2]_i_16_n_0\
    );
\next_switch_matrix[3][2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD5FFFFFFD0FF"
    )
        port map (
      I0 => \^q\(37),
      I1 => \next_switch_matrix[0][2]_i_9_n_0\,
      I2 => \^q\(34),
      I3 => \^q\(55),
      I4 => \^q\(35),
      I5 => \^q\(36),
      O => \next_switch_matrix[3][2]_i_17_n_0\
    );
\next_switch_matrix[3][2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_2__1_n_0\,
      I1 => \port_wants_to[3][0]_45\(0),
      I2 => \G0.mem_reg[37]_0\,
      O => \next_switch_matrix[3][2]_i_18_n_0\
    );
\next_switch_matrix[3][2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(35),
      I2 => \^q\(34),
      I3 => \^q\(37),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \port_wants_to[3][1]_47\(1)
    );
\next_switch_matrix[3][2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D000D0D0D0D0"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_2__2_n_0\,
      I1 => \next_switch_matrix[3][2]_i_3__0_n_0\,
      I2 => \next_switch_matrix[3][2]_i_4__0_n_0\,
      I3 => \next_switch_matrix[3][2]_i_5__1_n_0\,
      I4 => \next_switch_matrix[3][2]_i_6__0_n_0\,
      I5 => \next_switch_matrix[3][2]_i_7__0_n_0\,
      O => \^next_switch_matrix_reg[3][2]\
    );
\next_switch_matrix[3][2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFCFCFFFEFFFEF"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(35),
      I2 => \^q\(55),
      I3 => \^q\(34),
      I4 => \next_switch_matrix[0][2]_i_9_n_0\,
      I5 => \^q\(37),
      O => \port_wants_to[3][1]_47\(2)
    );
\next_switch_matrix[3][2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00008A8A0000"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_13_n_0\,
      I1 => \next_switch_matrix[3][2]_i_24_n_0\,
      I2 => \next_switch_matrix[3][2]_i_9__0_n_0\,
      I3 => \^next_switch_matrix_reg[6][2]\,
      I4 => \port_wants_to[3][3]_44\(1),
      I5 => \port_wants_to[3][3]_44\(2),
      O => \next_switch_matrix[3][2]_i_21_n_0\
    );
\next_switch_matrix[3][2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAE"
    )
        port map (
      I0 => \port_wants_to[3][3]_44\(1),
      I1 => \next_switch_matrix[3][2]_i_9__0_n_0\,
      I2 => \port_wants_to[3][2]_46\(1),
      I3 => \port_wants_to[3][2]_46\(2),
      I4 => \next_switch_matrix[3][2]_i_12_n_0\,
      I5 => \next_switch_matrix[3][2]_i_15_n_0\,
      O => \next_switch_matrix[3][2]_i_22_n_0\
    );
\next_switch_matrix[3][2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \G0.mem_reg[34]_0\,
      I1 => \next_switch_matrix[5][2]_i_8_n_0\,
      I2 => \port_wants_to[3][0]_45\(2),
      O => \next_switch_matrix[3][2]_i_23_n_0\
    );
\next_switch_matrix[3][2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \port_wants_to[3][2]_46\(1),
      I1 => \port_wants_to[3][2]_46\(2),
      I2 => \next_switch_matrix[3][2]_i_12_n_0\,
      O => \next_switch_matrix[3][2]_i_24_n_0\
    );
\next_switch_matrix[3][2]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38F808C83BFB0BCB"
    )
        port map (
      I0 => \next_switch_matrix[5][2]_i_3__1_n_0\,
      I1 => \port_wants_to[3][3]_44\(2),
      I2 => \port_wants_to[3][3]_44\(1),
      I3 => \^next_switch_matrix_reg[6][2]\,
      I4 => \next_switch_matrix[3][2]_i_4__0_n_0\,
      I5 => \next_switch_matrix[3][2]_i_8__0_n_0\,
      O => \next_switch_matrix[3][2]_i_2__2_n_0\
    );
\next_switch_matrix[3][2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDDFDFDFD"
    )
        port map (
      I0 => \port_wants_to[3][3]_44\(1),
      I1 => \port_wants_to[3][3]_44\(2),
      I2 => \next_switch_matrix[3][2]_i_9__0_n_0\,
      I3 => \port_wants_to[3][2]_46\(2),
      I4 => \port_wants_to[3][2]_46\(1),
      I5 => \next_switch_matrix[3][2]_i_12_n_0\,
      O => \next_switch_matrix[3][2]_i_3__0_n_0\
    );
\next_switch_matrix[3][2]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA2AAAA"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_13_n_0\,
      I1 => \port_wants_to[3][2]_46\(1),
      I2 => \port_wants_to[3][2]_46\(2),
      I3 => \next_switch_matrix[3][2]_i_12_n_0\,
      I4 => \next_switch_matrix[3][2]_i_9__0_n_0\,
      O => \next_switch_matrix[3][2]_i_4__0_n_0\
    );
\next_switch_matrix[3][2]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1313FF1FFFFFFFFF"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      I2 => \next_switch_matrix[0][2]_i_9_n_0\,
      I3 => \^q\(36),
      I4 => \^q\(37),
      I5 => \^q\(55),
      O => \next_switch_matrix[3][2]_i_5__1_n_0\
    );
\next_switch_matrix[3][2]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \next_switch_matrix[5][2]_i_2__0_n_0\,
      I1 => \port_wants_to[3][3]_44\(1),
      I2 => \port_wants_to[3][3]_44\(2),
      I3 => \next_switch_matrix[3][2]_i_2__2_n_0\,
      O => \next_switch_matrix[3][2]_i_6__0_n_0\
    );
\next_switch_matrix[3][2]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3808F8C83B0BFBCB"
    )
        port map (
      I0 => \^next_switch_matrix_reg[5][2]\,
      I1 => \port_wants_to[3][4]_43\(2),
      I2 => \port_wants_to[3][4]_43\(1),
      I3 => \next_switch_matrix[3][2]_i_14_n_0\,
      I4 => \^next_switch_matrix_reg[6][2]\,
      I5 => \next_switch_matrix[1][2]_i_3__0_n_0\,
      O => \next_switch_matrix[3][2]_i_7__0_n_0\
    );
\next_switch_matrix[3][2]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_15_n_0\,
      I1 => \next_switch_matrix[3][2]_i_12_n_0\,
      I2 => \port_wants_to[3][2]_46\(2),
      I3 => \port_wants_to[3][2]_46\(1),
      I4 => \next_switch_matrix[3][2]_i_9__0_n_0\,
      O => \next_switch_matrix[3][2]_i_8__0_n_0\
    );
\next_switch_matrix[3][2]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"383BF8FB080BC8CB"
    )
        port map (
      I0 => \next_switch_matrix[5][2]_i_6__0_n_0\,
      I1 => \port_wants_to[3][2]_46\(2),
      I2 => \port_wants_to[3][2]_46\(1),
      I3 => \next_switch_matrix[3][2]_i_15_n_0\,
      I4 => \^next_switch_matrix_reg[6][2]\,
      I5 => \next_switch_matrix[3][2]_i_13_n_0\,
      O => \next_switch_matrix[3][2]_i_9__0_n_0\
    );
\next_switch_matrix[4][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => \port_wants_to[3][0]_45\(0),
      I1 => \port_wants_to[3][0]_45\(2),
      I2 => \^q\(36),
      I3 => \^q\(37),
      I4 => \^q\(55),
      O => \next_switch_matrix_reg[4][2]\(0)
    );
\next_switch_matrix[5][0]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000FFEFE"
    )
        port map (
      I0 => \G0.mem_reg[34]_0\,
      I1 => \^next_switch_matrix_reg[1][2]\,
      I2 => \port_wants_to[6][1]_52\(1),
      I3 => \^next_switch_matrix_reg[3][2]\,
      I4 => \port_wants_to[6][1]_52\(0),
      O => \next_switch_matrix_reg[5][0]_0\
    );
\next_switch_matrix[5][0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A8888AAAAAAAA"
    )
        port map (
      I0 => \G0.mem_reg[35]_0\,
      I1 => \next_switch_matrix[1][2]_i_3__0_n_0\,
      I2 => \next_switch_matrix[3][2]_i_6__0_n_0\,
      I3 => \next_switch_matrix[5][0]_i_30_n_0\,
      I4 => \next_switch_matrix[3][2]_i_7__0_n_0\,
      I5 => \G0.mem_reg[35]_1\,
      O => \next_switch_matrix_reg[5][0]_1\
    );
\next_switch_matrix[5][0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAFFFFA8AA0000"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_14_n_0\,
      I1 => \next_switch_matrix[3][2]_i_5__1_n_0\,
      I2 => \next_switch_matrix[3][2]_i_6__0_n_0\,
      I3 => \next_switch_matrix[3][2]_i_7__0_n_0\,
      I4 => \port_wants_to[6][0]_50\(0),
      I5 => \^next_switch_matrix_reg[2][2]\,
      O => \next_switch_matrix_reg[5][0]_2\
    );
\next_switch_matrix[5][0]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF51FFFFFFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_9_n_0\,
      I1 => \^q\(34),
      I2 => \^q\(35),
      I3 => \^q\(37),
      I4 => \^q\(36),
      I5 => \^q\(55),
      O => \next_switch_matrix[5][0]_i_30_n_0\
    );
\next_switch_matrix[5][0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F53F053FF5300530"
    )
        port map (
      I0 => \^next_switch_matrix_reg[5][2]\,
      I1 => \^next_switch_matrix_reg[3][2]\,
      I2 => \port_wants_to[6][2]_51\(0),
      I3 => \port_wants_to[6][2]_51\(1),
      I4 => \^next_switch_matrix_reg[6][2]\,
      I5 => \^next_switch_matrix_reg[1][2]\,
      O => \next_switch_matrix_reg[5][0]\
    );
\next_switch_matrix[5][2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C8CC"
    )
        port map (
      I0 => \next_switch_matrix[5][2]_i_2__0_n_0\,
      I1 => \next_switch_matrix[5][2]_i_3__1_n_0\,
      I2 => \port_wants_to[3][3]_44\(1),
      I3 => \port_wants_to[3][3]_44\(2),
      O => \^next_switch_matrix_reg[5][2]\
    );
\next_switch_matrix[5][2]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_12_n_0\,
      I1 => \port_wants_to[3][2]_46\(1),
      I2 => \port_wants_to[3][2]_46\(2),
      I3 => \next_switch_matrix[3][2]_i_9__0_n_0\,
      O => \next_switch_matrix[5][2]_i_2__0_n_0\
    );
\next_switch_matrix[5][2]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C8CC"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_12_n_0\,
      I1 => \next_switch_matrix[5][2]_i_6__0_n_0\,
      I2 => \port_wants_to[3][2]_46\(1),
      I3 => \port_wants_to[3][2]_46\(2),
      O => \next_switch_matrix[5][2]_i_3__1_n_0\
    );
\next_switch_matrix[5][2]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F5F4F5FFFFF6F7F"
    )
        port map (
      I0 => \^q\(37),
      I1 => \next_switch_matrix[0][2]_i_9_n_0\,
      I2 => \^q\(55),
      I3 => \^q\(36),
      I4 => \^q\(34),
      I5 => \^q\(35),
      O => \port_wants_to[3][3]_44\(1)
    );
\next_switch_matrix[5][2]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"212F1011FFFFFFFF"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \next_switch_matrix[0][2]_i_9_n_0\,
      I5 => \^q\(55),
      O => \port_wants_to[3][3]_44\(2)
    );
\next_switch_matrix[5][2]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FB00FF00"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_16_n_0\,
      I1 => \next_switch_matrix[2][2]_i_3__2_n_0\,
      I2 => \next_switch_matrix[3][2]_i_17_n_0\,
      I3 => \next_switch_matrix[5][2]_i_7_n_0\,
      I4 => \port_wants_to[3][1]_47\(2),
      I5 => \port_wants_to[3][1]_47\(1),
      O => \next_switch_matrix[5][2]_i_6__0_n_0\
    );
\next_switch_matrix[5][2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \next_switch_matrix[5][2]_i_8_n_0\,
      I1 => \port_wants_to[3][0]_45\(2),
      O => \next_switch_matrix[5][2]_i_7_n_0\
    );
\next_switch_matrix[5][2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_3__1_n_0\,
      I1 => \^q\(55),
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \port_wants_to[3][0]_45\(0),
      O => \next_switch_matrix[5][2]_i_8_n_0\
    );
\next_switch_matrix[6][2]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^next_switch_matrix_reg[6][2]\,
      O => \next_switch_matrix_reg[6][2]_0\(0)
    );
\next_switch_matrix[6][2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF54550000"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_3__2_n_0\,
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \^q\(55),
      I4 => \port_wants_to[3][0]_45\(2),
      I5 => \G0.mem_reg[55]_0\,
      O => \^next_switch_matrix_reg[6][2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \next_switch_matrix_reg[4][2]\ : out STD_LOGIC;
    \next_switch_matrix_reg[1][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][2]\ : out STD_LOGIC;
    \next_switch_matrix_reg[4][2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[4][2]_1\ : out STD_LOGIC;
    \next_switch_matrix_reg[4][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[2][2]\ : out STD_LOGIC;
    \next_switch_matrix_reg[3][2]\ : out STD_LOGIC;
    \next_switch_matrix_reg[5][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[3][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[4][0]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[3][0]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[2][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][0]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[4][0]_1\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][0]_1\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][0]_2\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][0]_3\ : out STD_LOGIC;
    \next_switch_matrix_reg[5][2]\ : out STD_LOGIC;
    \next_switch_matrix_reg[5][0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[1][2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[0][0]_4\ : out STD_LOGIC;
    \next_switch_matrix_reg[6][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[6][2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[6][2]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[3][2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[0][0]_5\ : out STD_LOGIC;
    \port_wants_to[6][1]_32\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[55]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_1\ : in STD_LOGIC;
    \G0.mem_reg[36]_0\ : in STD_LOGIC;
    \port_wants_to[6][3]_33\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \port_wants_to[6][2]_34\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[37]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_2\ : in STD_LOGIC;
    \G0.mem_reg[37]_1\ : in STD_LOGIC;
    \G0.mem_reg[55]_3\ : in STD_LOGIC;
    \G0.mem_reg[32]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_4\ : in STD_LOGIC;
    \port_wants_to[6][0]_36\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[37]_2\ : in STD_LOGIC;
    \G0.mem_reg[55]_5\ : in STD_LOGIC;
    \G0.mem_reg[55]_6\ : in STD_LOGIC;
    \G0.mem_reg[55]_7\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_reg[55]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized2\ : entity is "NoC_3D_Parallel_recv";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized2\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_switch_matrix[0][0]_i_25_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_26_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_27_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_32_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_33_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_34_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_35_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_36_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_37_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_38_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_39_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_40_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_41_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_5__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_6__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_12__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_13__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_15__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_16_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_17_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_18_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_19_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_20_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_21_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_22_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_23_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_24_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_25_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_26_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_27_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_28_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_5__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_6__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_7__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][2]_i_8_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_13__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_10_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_11_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_3_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_4_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_5_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_6__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_8_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][2]_i_9_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_16_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_20_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_25_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_26_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_35_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_10__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_11_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_12_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_13_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_14_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_15_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_16_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_17_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_18_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_19_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_20_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_3__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_4__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_5_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_6_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_7_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_8__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][2]_i_9__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_10__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_11_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_3_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_4_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_6_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_7_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_8_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][2]_i_9_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_11_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_13_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_14_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_15_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_16_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_17_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_18_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_20_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_21_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_22_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_23_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_24_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_25_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_26_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_27_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_3_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_6_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][2]_i_7_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][2]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][2]_i_4__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][2]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[6][0]_i_9_n_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][0]_1\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][0]_2\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][0]_3\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][2]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[2][2]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[3][2]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[4][0]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[4][2]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[4][2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^next_switch_matrix_reg[4][2]_1\ : STD_LOGIC;
  signal \next_switch_matrix_reg[4][2]_i_8_n_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[5][2]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[6][2]_0\ : STD_LOGIC;
  signal \port_wants_to[2][0]_31\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \port_wants_to[2][1]_27\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[2][2]_29\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \port_wants_to[2][3]_28\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[2][4]_30\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_11__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_18\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_19\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_22\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_23\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_25\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_26\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_27\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_2__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][2]_i_5__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][2]_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][2]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][2]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][2]_i_6__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][0]_i_16\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][0]_i_25\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][0]_i_26\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][0]_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][2]_i_12\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][2]_i_14\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][2]_i_15\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][2]_i_16\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][2]_i_18\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][2]_i_20\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][2]_i_4__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][2]_i_7\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][2]_i_8__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_10__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_11\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][2]_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \next_switch_matrix[4][2]_i_12\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \next_switch_matrix[4][2]_i_13\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \next_switch_matrix[4][2]_i_14\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \next_switch_matrix[4][2]_i_19\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \next_switch_matrix[4][2]_i_21\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \next_switch_matrix[4][2]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][2]_i_3__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \next_switch_matrix[6][0]_i_8\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \next_switch_matrix[6][2]_i_1__0\ : label is "soft_lutpair27";
begin
  Q(55 downto 0) <= \^q\(55 downto 0);
  \next_switch_matrix_reg[0][0]_1\ <= \^next_switch_matrix_reg[0][0]_1\;
  \next_switch_matrix_reg[0][0]_2\ <= \^next_switch_matrix_reg[0][0]_2\;
  \next_switch_matrix_reg[0][0]_3\ <= \^next_switch_matrix_reg[0][0]_3\;
  \next_switch_matrix_reg[0][2]\ <= \^next_switch_matrix_reg[0][2]\;
  \next_switch_matrix_reg[2][2]\ <= \^next_switch_matrix_reg[2][2]\;
  \next_switch_matrix_reg[3][2]\ <= \^next_switch_matrix_reg[3][2]\;
  \next_switch_matrix_reg[4][0]\ <= \^next_switch_matrix_reg[4][0]\;
  \next_switch_matrix_reg[4][2]\ <= \^next_switch_matrix_reg[4][2]\;
  \next_switch_matrix_reg[4][2]_0\(0) <= \^next_switch_matrix_reg[4][2]_0\(0);
  \next_switch_matrix_reg[4][2]_1\ <= \^next_switch_matrix_reg[4][2]_1\;
  \next_switch_matrix_reg[5][2]\ <= \^next_switch_matrix_reg[5][2]\;
  \next_switch_matrix_reg[6][2]_0\ <= \^next_switch_matrix_reg[6][2]_0\;
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(9),
      Q => \^q\(9),
      R => reset
    );
\next_switch_matrix[0][0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFCFAAFFFF"
    )
        port map (
      I0 => \^next_switch_matrix_reg[4][0]\,
      I1 => \next_switch_matrix[0][0]_i_25_n_0\,
      I2 => \next_switch_matrix[0][0]_i_26_n_0\,
      I3 => \G0.mem_reg[32]_0\,
      I4 => \G0.mem_reg[55]_4\,
      I5 => \port_wants_to[6][0]_36\(0),
      O => \^next_switch_matrix_reg[0][0]_1\
    );
\next_switch_matrix[0][0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDDDDDDD1"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][2]\,
      I1 => \G0.mem_reg[32]_0\,
      I2 => \next_switch_matrix[0][0]_i_27_n_0\,
      I3 => \next_switch_matrix[1][2]_i_4_n_0\,
      I4 => \next_switch_matrix[1][2]_i_3_n_0\,
      I5 => \G0.mem_reg[55]_5\,
      O => \^next_switch_matrix_reg[0][0]_3\
    );
\next_switch_matrix[0][0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF000001FFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_32_n_0\,
      I1 => \port_wants_to[2][4]_30\(1),
      I2 => \next_switch_matrix[1][2]_i_5_n_0\,
      I3 => \next_switch_matrix[0][0]_i_33_n_0\,
      I4 => \G0.mem_reg[37]_2\,
      I5 => \^next_switch_matrix_reg[4][2]_1\,
      O => \^next_switch_matrix_reg[0][0]_2\
    );
\next_switch_matrix[0][0]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_34_n_0\,
      I1 => \next_switch_matrix[0][0]_i_35_n_0\,
      I2 => \port_wants_to[2][4]_30\(1),
      I3 => \next_switch_matrix[0][0]_i_32_n_0\,
      O => \next_switch_matrix[0][0]_i_25_n_0\
    );
\next_switch_matrix[0][0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_36_n_0\,
      I1 => \next_switch_matrix[4][2]_i_2_n_0\,
      I2 => \next_switch_matrix[4][2]_i_3_n_0\,
      I3 => \port_wants_to[2][3]_28\(2),
      I4 => \port_wants_to[2][3]_28\(0),
      I5 => \port_wants_to[2][3]_28\(1),
      O => \next_switch_matrix[0][0]_i_26_n_0\
    );
\next_switch_matrix[0][0]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_10_n_0\,
      I1 => \next_switch_matrix[1][2]_i_6__0_n_0\,
      I2 => \next_switch_matrix[0][0]_i_34_n_0\,
      I3 => \next_switch_matrix[0][0]_i_35_n_0\,
      O => \next_switch_matrix[0][0]_i_27_n_0\
    );
\next_switch_matrix[0][0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_20_n_0\,
      I1 => \port_wants_to[2][3]_28\(2),
      I2 => \port_wants_to[2][3]_28\(1),
      I3 => \port_wants_to[2][3]_28\(0),
      I4 => \next_switch_matrix[4][2]_i_2_n_0\,
      I5 => \next_switch_matrix[4][2]_i_3_n_0\,
      O => \next_switch_matrix_reg[0][0]_4\
    );
\next_switch_matrix[0][0]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8A8A00"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_13__0_n_0\,
      I1 => \next_switch_matrix[0][2]_i_5__1_n_0\,
      I2 => \next_switch_matrix[0][0]_i_5__1_n_0\,
      I3 => \next_switch_matrix[0][0]_i_6__1_n_0\,
      I4 => \G0.mem_reg[55]_2\,
      O => \next_switch_matrix_reg[0][0]\
    );
\next_switch_matrix[0][0]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A0AAAA"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_37_n_0\,
      I1 => \next_switch_matrix[1][0]_i_13__0_n_0\,
      I2 => \next_switch_matrix[3][2]_i_3_n_0\,
      I3 => \next_switch_matrix[0][0]_i_35_n_0\,
      I4 => \G0.mem_reg[37]_1\,
      O => \next_switch_matrix_reg[0][0]_5\
    );
\next_switch_matrix[0][0]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1555FFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_2_n_0\,
      I1 => \port_wants_to[2][3]_28\(0),
      I2 => \port_wants_to[2][3]_28\(1),
      I3 => \port_wants_to[2][3]_28\(2),
      I4 => \next_switch_matrix[4][2]_i_3_n_0\,
      I5 => \next_switch_matrix[1][2]_i_8_n_0\,
      O => \next_switch_matrix[0][0]_i_32_n_0\
    );
\next_switch_matrix[0][0]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \next_switch_matrix[5][2]_i_4__0_n_0\,
      I1 => \next_switch_matrix[5][2]_i_3__0_n_0\,
      O => \next_switch_matrix[0][0]_i_33_n_0\
    );
\next_switch_matrix[0][0]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAE"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_10_n_0\,
      I1 => \next_switch_matrix[0][0]_i_38_n_0\,
      I2 => \next_switch_matrix[4][2]_i_3_n_0\,
      I3 => \next_switch_matrix[4][2]_i_2_n_0\,
      I4 => \port_wants_to[2][3]_28\(0),
      I5 => \next_switch_matrix[4][2]_i_6_n_0\,
      O => \next_switch_matrix[0][0]_i_34_n_0\
    );
\next_switch_matrix[0][0]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FD000000"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_5__1_n_0\,
      I1 => \next_switch_matrix[0][0]_i_39_n_0\,
      I2 => \next_switch_matrix[4][2]_i_2_n_0\,
      I3 => \next_switch_matrix[3][2]_i_7_n_0\,
      I4 => \next_switch_matrix[1][2]_i_10_n_0\,
      I5 => \G0.mem_reg[55]_1\,
      O => \next_switch_matrix[0][0]_i_35_n_0\
    );
\next_switch_matrix[0][0]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5551555555555555"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_40_n_0\,
      I1 => \^next_switch_matrix_reg[4][2]\,
      I2 => \next_switch_matrix[0][2]_i_8_n_0\,
      I3 => \^next_switch_matrix_reg[4][2]_0\(0),
      I4 => \port_wants_to[2][2]_29\(2),
      I5 => \next_switch_matrix[2][2]_i_4__1_n_0\,
      O => \next_switch_matrix[0][0]_i_36_n_0\
    );
\next_switch_matrix[0][0]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAB"
    )
        port map (
      I0 => \G0.mem_reg[55]_2\,
      I1 => \next_switch_matrix[4][2]_i_3_n_0\,
      I2 => \next_switch_matrix[4][2]_i_2_n_0\,
      I3 => \port_wants_to[2][3]_28\(0),
      I4 => \next_switch_matrix[0][0]_i_41_n_0\,
      I5 => \next_switch_matrix[2][0]_i_20_n_0\,
      O => \next_switch_matrix[0][0]_i_37_n_0\
    );
\next_switch_matrix[0][0]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454541FFFFFFFFF"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(36),
      I2 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I3 => \^q\(32),
      I4 => \^q\(33),
      I5 => \^q\(55),
      O => \next_switch_matrix[0][0]_i_38_n_0\
    );
\next_switch_matrix[0][0]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFFFAFBFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_3_n_0\,
      I1 => \^q\(37),
      I2 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I3 => \^q\(36),
      I4 => \^q\(55),
      I5 => \next_switch_matrix[0][2]_i_18_n_0\,
      O => \next_switch_matrix[0][0]_i_39_n_0\
    );
\next_switch_matrix[0][0]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_28_n_0\,
      I1 => \next_switch_matrix[2][2]_i_20_n_0\,
      I2 => \next_switch_matrix[4][2]_i_21_n_0\,
      O => \next_switch_matrix[0][0]_i_40_n_0\
    );
\next_switch_matrix[0][0]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF57FF03FFFFFFFF"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(32),
      I2 => \^q\(33),
      I3 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I4 => \^q\(36),
      I5 => \^q\(55),
      O => \next_switch_matrix[0][0]_i_41_n_0\
    );
\next_switch_matrix[0][0]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0E000000000"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(36),
      I2 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I3 => \^q\(32),
      I4 => \^q\(33),
      I5 => \^q\(55),
      O => \next_switch_matrix[0][0]_i_5__1_n_0\
    );
\next_switch_matrix[0][0]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEEEFAAAAAAAA"
    )
        port map (
      I0 => \port_wants_to[6][0]_36\(0),
      I1 => \^next_switch_matrix_reg[0][0]_1\,
      I2 => \^next_switch_matrix_reg[4][2]_1\,
      I3 => \G0.mem_reg[37]_2\,
      I4 => \^next_switch_matrix_reg[5][2]\,
      I5 => \^next_switch_matrix_reg[0][0]_3\,
      O => \next_switch_matrix[0][0]_i_6__1_n_0\
    );
\next_switch_matrix[0][0]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8B8B8B8BCFBB"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_2__0_n_0\,
      I1 => \port_wants_to[6][1]_32\(0),
      I2 => \^next_switch_matrix_reg[0][2]\,
      I3 => \G0.mem_reg[32]_0\,
      I4 => \G0.mem_reg[55]_4\,
      I5 => \next_switch_matrix[0][0]_i_6__1_n_0\,
      O => \next_switch_matrix_reg[0][0]_0\
    );
\next_switch_matrix[0][2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDDDFDDDFDDDD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I2 => \^q\(36),
      I3 => \^q\(37),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \port_wants_to[2][2]_29\(2)
    );
\next_switch_matrix[0][2]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F7F7FF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I3 => \^q\(32),
      I4 => \^q\(33),
      O => \^next_switch_matrix_reg[4][2]_0\(0)
    );
\next_switch_matrix[0][2]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222202200000000"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_4__1_n_0\,
      I1 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I2 => \^q\(37),
      I3 => \next_switch_matrix[0][2]_i_18_n_0\,
      I4 => \^q\(36),
      I5 => \^q\(55),
      O => \next_switch_matrix[0][2]_i_12__0_n_0\
    );
\next_switch_matrix[0][2]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \port_wants_to[2][1]_27\(0),
      I1 => \next_switch_matrix[4][2]_i_11_n_0\,
      I2 => \next_switch_matrix[0][2]_i_19_n_0\,
      O => \next_switch_matrix[0][2]_i_13__0_n_0\
    );
\next_switch_matrix[0][2]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_20_n_0\,
      I1 => \next_switch_matrix[2][2]_i_3__1_n_0\,
      I2 => \^next_switch_matrix_reg[4][2]_0\(0),
      I3 => \next_switch_matrix[1][2]_i_9_n_0\,
      I4 => \^next_switch_matrix_reg[4][2]\,
      I5 => \next_switch_matrix[0][2]_i_21_n_0\,
      O => \next_switch_matrix[0][2]_i_15__0_n_0\
    );
\next_switch_matrix[0][2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_15_n_0\,
      I1 => \G0.mem_reg[55]_0\,
      I2 => \next_switch_matrix[0][2]_i_22_n_0\,
      O => \next_switch_matrix[0][2]_i_16_n_0\
    );
\next_switch_matrix[0][2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_23_n_0\,
      I1 => \next_switch_matrix[0][2]_i_24_n_0\,
      I2 => \next_switch_matrix[0][2]_i_25_n_0\,
      O => \next_switch_matrix[0][2]_i_17_n_0\
    );
\next_switch_matrix[0][2]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \next_switch_matrix[0][2]_i_18_n_0\
    );
\next_switch_matrix[0][2]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I1 => \^q\(32),
      I2 => \^q\(33),
      I3 => \^q\(37),
      I4 => \^q\(55),
      O => \next_switch_matrix[0][2]_i_19_n_0\
    );
\next_switch_matrix[0][2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002000FFFFFFFF"
    )
        port map (
      I0 => \port_wants_to[2][1]_27\(1),
      I1 => \port_wants_to[2][1]_27\(2),
      I2 => \port_wants_to[2][1]_27\(0),
      I3 => \next_switch_matrix[2][2]_i_6_n_0\,
      I4 => \next_switch_matrix[2][2]_i_5_n_0\,
      I5 => \next_switch_matrix[0][2]_i_26_n_0\,
      O => \next_switch_matrix[0][2]_i_20_n_0\
    );
\next_switch_matrix[0][2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010FFFFFFFF"
    )
        port map (
      I0 => \port_wants_to[2][1]_27\(0),
      I1 => \next_switch_matrix[2][2]_i_5_n_0\,
      I2 => \next_switch_matrix[2][2]_i_6_n_0\,
      I3 => \port_wants_to[2][1]_27\(1),
      I4 => \port_wants_to[2][1]_27\(2),
      I5 => \next_switch_matrix[0][2]_i_27_n_0\,
      O => \next_switch_matrix[0][2]_i_21_n_0\
    );
\next_switch_matrix[0][2]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DDFD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I4 => \next_switch_matrix[2][2]_i_6_n_0\,
      O => \next_switch_matrix[0][2]_i_22_n_0\
    );
\next_switch_matrix[0][2]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_28_n_0\,
      I1 => \port_wants_to[2][0]_31\(1),
      I2 => \next_switch_matrix[4][2]_i_20_n_0\,
      I3 => \next_switch_matrix[4][2]_i_21_n_0\,
      O => \next_switch_matrix[0][2]_i_23_n_0\
    );
\next_switch_matrix[0][2]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFF100000000"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I5 => \^q\(55),
      O => \next_switch_matrix[0][2]_i_24_n_0\
    );
\next_switch_matrix[0][2]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_21_n_0\,
      I1 => \next_switch_matrix[4][2]_i_20_n_0\,
      I2 => \port_wants_to[2][0]_31\(1),
      O => \next_switch_matrix[0][2]_i_25_n_0\
    );
\next_switch_matrix[0][2]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_6_n_0\,
      I1 => \port_wants_to[2][0]_31\(1),
      I2 => \next_switch_matrix[4][2]_i_21_n_0\,
      I3 => \next_switch_matrix[4][2]_i_20_n_0\,
      O => \next_switch_matrix[0][2]_i_26_n_0\
    );
\next_switch_matrix[0][2]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_20_n_0\,
      I1 => \port_wants_to[2][0]_31\(1),
      I2 => \next_switch_matrix[0][2]_i_28_n_0\,
      I3 => \next_switch_matrix[4][2]_i_21_n_0\,
      O => \next_switch_matrix[0][2]_i_27_n_0\
    );
\next_switch_matrix[0][2]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A002A002A00AAAA"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_15_n_0\,
      I1 => \port_wants_to[2][0]_31\(1),
      I2 => \G0.mem_reg[55]_0\,
      I3 => \next_switch_matrix[4][2]_i_21_n_0\,
      I4 => \next_switch_matrix[2][2]_i_13_n_0\,
      I5 => \next_switch_matrix[2][2]_i_12_n_0\,
      O => \next_switch_matrix[0][2]_i_28_n_0\
    );
\next_switch_matrix[0][2]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \port_wants_to[2][3]_28\(2),
      I1 => \port_wants_to[2][3]_28\(1),
      I2 => \next_switch_matrix[0][2]_i_5__1_n_0\,
      I3 => \next_switch_matrix[0][2]_i_6__1_n_0\,
      O => \^next_switch_matrix_reg[0][2]\
    );
\next_switch_matrix[0][2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55575557FDFFFF57"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(33),
      I2 => \^q\(32),
      I3 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I4 => \^q\(36),
      I5 => \^q\(37),
      O => \port_wants_to[2][3]_28\(2)
    );
\next_switch_matrix[0][2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F5FFFFFFF7F"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I3 => \^q\(33),
      I4 => \^q\(32),
      I5 => \^q\(37),
      O => \port_wants_to[2][3]_28\(1)
    );
\next_switch_matrix[0][2]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \port_wants_to[2][3]_28\(0),
      I1 => \next_switch_matrix[4][2]_i_2_n_0\,
      I2 => \next_switch_matrix[4][2]_i_3_n_0\,
      O => \next_switch_matrix[0][2]_i_5__1_n_0\
    );
\next_switch_matrix[0][2]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_8_n_0\,
      I1 => \^next_switch_matrix_reg[4][2]\,
      I2 => \port_wants_to[2][2]_29\(2),
      I3 => \^next_switch_matrix_reg[4][2]_0\(0),
      I4 => \next_switch_matrix[0][2]_i_12__0_n_0\,
      I5 => \next_switch_matrix[0][2]_i_13__0_n_0\,
      O => \next_switch_matrix[0][2]_i_6__1_n_0\
    );
\next_switch_matrix[0][2]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      O => \next_switch_matrix[0][2]_i_7__0_n_0\
    );
\next_switch_matrix[0][2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F000F0E0E0E0E"
    )
        port map (
      I0 => \G0.mem_reg[55]_6\,
      I1 => \next_switch_matrix[0][2]_i_15__0_n_0\,
      I2 => \next_switch_matrix[0][2]_i_16_n_0\,
      I3 => \next_switch_matrix[0][2]_i_17_n_0\,
      I4 => \^next_switch_matrix_reg[4][2]_0\(0),
      I5 => \port_wants_to[2][2]_29\(2),
      O => \next_switch_matrix[0][2]_i_8_n_0\
    );
\next_switch_matrix[0][2]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAFFFAFFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I1 => \^q\(37),
      I2 => \^q\(33),
      I3 => \^q\(32),
      I4 => \^q\(36),
      I5 => \^q\(55),
      O => \^next_switch_matrix_reg[4][2]\
    );
\next_switch_matrix[1][0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555DFFFF555D555D"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_5__0_n_0\,
      I1 => \next_switch_matrix[1][2]_i_10_n_0\,
      I2 => \next_switch_matrix[1][2]_i_6__0_n_0\,
      I3 => \next_switch_matrix[1][2]_i_5_n_0\,
      I4 => \next_switch_matrix[0][0]_i_6__1_n_0\,
      I5 => \G0.mem_reg[37]_1\,
      O => \next_switch_matrix_reg[3][0]_0\
    );
\next_switch_matrix[1][0]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1555FFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_2_n_0\,
      I1 => \port_wants_to[2][3]_28\(0),
      I2 => \port_wants_to[2][3]_28\(1),
      I3 => \port_wants_to[2][3]_28\(2),
      I4 => \next_switch_matrix[4][2]_i_3_n_0\,
      I5 => \port_wants_to[2][4]_30\(1),
      O => \next_switch_matrix[1][0]_i_13__0_n_0\
    );
\next_switch_matrix[1][0]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0F2"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_5__0_n_0\,
      I1 => \next_switch_matrix[3][2]_i_4_n_0\,
      I2 => \next_switch_matrix[3][2]_i_3_n_0\,
      I3 => \next_switch_matrix[1][0]_i_13__0_n_0\,
      O => \next_switch_matrix_reg[1][0]\
    );
\next_switch_matrix[1][2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_2__0_n_0\,
      O => \next_switch_matrix_reg[1][2]\(0)
    );
\next_switch_matrix[1][2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808080008"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \next_switch_matrix[1][2]_i_10_n_0\
    );
\next_switch_matrix[1][2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555455"
    )
        port map (
      I0 => \G0.mem_reg[55]_1\,
      I1 => \next_switch_matrix[0][2]_i_28_n_0\,
      I2 => \port_wants_to[2][0]_31\(1),
      I3 => \next_switch_matrix[4][2]_i_20_n_0\,
      I4 => \next_switch_matrix[4][2]_i_21_n_0\,
      O => \next_switch_matrix[1][2]_i_11_n_0\
    );
\next_switch_matrix[1][2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEF"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_3_n_0\,
      I1 => \next_switch_matrix[1][2]_i_4_n_0\,
      I2 => \next_switch_matrix[1][2]_i_5_n_0\,
      I3 => \next_switch_matrix[1][2]_i_6__0_n_0\,
      I4 => \port_wants_to[2][4]_30\(1),
      I5 => \next_switch_matrix[1][2]_i_8_n_0\,
      O => \next_switch_matrix[1][2]_i_2__0_n_0\
    );
\next_switch_matrix[1][2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \port_wants_to[2][3]_28\(2),
      I1 => \port_wants_to[2][3]_28\(1),
      I2 => \next_switch_matrix[4][2]_i_3_n_0\,
      I3 => \port_wants_to[2][3]_28\(0),
      I4 => \next_switch_matrix[4][2]_i_2_n_0\,
      O => \next_switch_matrix[1][2]_i_3_n_0\
    );
\next_switch_matrix[1][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAEAA"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_9_n_0\,
      I1 => \^next_switch_matrix_reg[4][2]\,
      I2 => \next_switch_matrix[0][2]_i_8_n_0\,
      I3 => \next_switch_matrix[0][2]_i_12__0_n_0\,
      I4 => \^next_switch_matrix_reg[4][2]_0\(0),
      I5 => \port_wants_to[2][2]_29\(2),
      O => \next_switch_matrix[1][2]_i_4_n_0\
    );
\next_switch_matrix[1][2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EE"
    )
        port map (
      I0 => \^next_switch_matrix_reg[6][2]_0\,
      I1 => \next_switch_matrix[1][2]_i_10_n_0\,
      I2 => \next_switch_matrix[3][2]_i_4_n_0\,
      I3 => \next_switch_matrix[3][2]_i_5__0_n_0\,
      O => \next_switch_matrix[1][2]_i_5_n_0\
    );
\next_switch_matrix[1][2]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABFFF"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_3_n_0\,
      I1 => \port_wants_to[2][3]_28\(2),
      I2 => \port_wants_to[2][3]_28\(1),
      I3 => \port_wants_to[2][3]_28\(0),
      I4 => \next_switch_matrix[4][2]_i_2_n_0\,
      O => \next_switch_matrix[1][2]_i_6__0_n_0\
    );
\next_switch_matrix[1][2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FFF5FFF5FFFDFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \^q\(33),
      I5 => \^q\(32),
      O => \port_wants_to[2][4]_30\(1)
    );
\next_switch_matrix[1][2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10FFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I3 => \^q\(37),
      I4 => \^q\(36),
      I5 => \^q\(55),
      O => \next_switch_matrix[1][2]_i_8_n_0\
    );
\next_switch_matrix[1][2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040000FFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_5_n_0\,
      I1 => \port_wants_to[2][1]_27\(0),
      I2 => \port_wants_to[2][1]_27\(1),
      I3 => \port_wants_to[2][1]_27\(2),
      I4 => \next_switch_matrix[2][2]_i_6_n_0\,
      I5 => \next_switch_matrix[1][2]_i_11_n_0\,
      O => \next_switch_matrix[1][2]_i_9_n_0\
    );
\next_switch_matrix[2][0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF04"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_5__1_n_0\,
      I1 => \port_wants_to[2][3]_28\(1),
      I2 => \port_wants_to[2][3]_28\(2),
      I3 => \next_switch_matrix[2][0]_i_20_n_0\,
      I4 => \G0.mem_reg[55]_3\,
      O => \next_switch_matrix_reg[2][0]\
    );
\next_switch_matrix[2][0]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^next_switch_matrix_reg[2][2]\,
      I1 => \^next_switch_matrix_reg[3][2]\,
      I2 => \port_wants_to[6][3]_33\(0),
      O => \next_switch_matrix[2][0]_i_16_n_0\
    );
\next_switch_matrix[2][0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0020"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_11_n_0\,
      I1 => \port_wants_to[2][1]_27\(0),
      I2 => \port_wants_to[2][1]_27\(1),
      I3 => \port_wants_to[2][1]_27\(2),
      I4 => \next_switch_matrix[2][0]_i_25_n_0\,
      I5 => \next_switch_matrix[2][0]_i_26_n_0\,
      O => \next_switch_matrix[2][0]_i_20_n_0\
    );
\next_switch_matrix[2][0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5533F0FF5533F000"
    )
        port map (
      I0 => \^next_switch_matrix_reg[3][2]\,
      I1 => \next_switch_matrix[1][2]_i_2__0_n_0\,
      I2 => \^next_switch_matrix_reg[2][2]\,
      I3 => \port_wants_to[6][2]_34\(0),
      I4 => \G0.mem_reg[37]_0\,
      I5 => \^next_switch_matrix_reg[0][2]\,
      O => \next_switch_matrix_reg[4][0]_0\
    );
\next_switch_matrix[2][0]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \^q\(55),
      I4 => \next_switch_matrix[2][2]_i_6_n_0\,
      O => \next_switch_matrix[2][0]_i_25_n_0\
    );
\next_switch_matrix[2][0]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_8_n_0\,
      I1 => \next_switch_matrix[2][2]_i_4__1_n_0\,
      I2 => \^next_switch_matrix_reg[4][2]\,
      I3 => \^next_switch_matrix_reg[4][2]_0\(0),
      I4 => \port_wants_to[2][2]_29\(2),
      O => \next_switch_matrix[2][0]_i_26_n_0\
    );
\next_switch_matrix[2][0]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAAAAAAA"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_35_n_0\,
      I1 => \port_wants_to[6][0]_36\(0),
      I2 => \^next_switch_matrix_reg[0][0]_1\,
      I3 => \^next_switch_matrix_reg[0][0]_2\,
      I4 => \^next_switch_matrix_reg[0][0]_3\,
      I5 => \G0.mem_reg[37]_1\,
      O => \next_switch_matrix_reg[4][0]_1\
    );
\next_switch_matrix[2][0]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF02FFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_10_n_0\,
      I1 => \next_switch_matrix[1][2]_i_6__0_n_0\,
      I2 => \next_switch_matrix[1][2]_i_5_n_0\,
      I3 => \next_switch_matrix[1][2]_i_4_n_0\,
      I4 => \next_switch_matrix[1][2]_i_3_n_0\,
      I5 => \port_wants_to[6][1]_32\(0),
      O => \next_switch_matrix[2][0]_i_35_n_0\
    );
\next_switch_matrix[2][0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0C5C5"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][2]\,
      I1 => \next_switch_matrix[2][0]_i_16_n_0\,
      I2 => \port_wants_to[6][3]_33\(1),
      I3 => \next_switch_matrix[1][2]_i_2__0_n_0\,
      I4 => \port_wants_to[6][3]_33\(0),
      O => \next_switch_matrix_reg[5][0]\
    );
\next_switch_matrix[2][2]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE4EEEA"
    )
        port map (
      I0 => \port_wants_to[2][1]_27\(0),
      I1 => \G0.mem_reg[55]_7\,
      I2 => \next_switch_matrix[2][2]_i_6_n_0\,
      I3 => \next_switch_matrix[2][2]_i_18_n_0\,
      I4 => \next_switch_matrix[4][2]_i_20_n_0\,
      O => \next_switch_matrix[2][2]_i_10__0_n_0\
    );
\next_switch_matrix[2][2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \G0.mem_reg[55]_1\,
      I1 => \next_switch_matrix[2][2]_i_19_n_0\,
      I2 => \next_switch_matrix[4][2]_i_21_n_0\,
      I3 => \port_wants_to[2][1]_27\(0),
      O => \next_switch_matrix[2][2]_i_11_n_0\
    );
\next_switch_matrix[2][2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF13"
    )
        port map (
      I0 => \G0.mem_reg[55]_1\,
      I1 => \port_wants_to[2][0]_31\(1),
      I2 => \next_switch_matrix[4][2]_i_20_n_0\,
      I3 => \next_switch_matrix[4][2]_i_21_n_0\,
      O => \next_switch_matrix[2][2]_i_12_n_0\
    );
\next_switch_matrix[2][2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_20_n_0\,
      I1 => \G0.mem_reg[55]_7\,
      I2 => \port_wants_to[2][0]_31\(1),
      O => \next_switch_matrix[2][2]_i_13_n_0\
    );
\next_switch_matrix[2][2]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51515551"
    )
        port map (
      I0 => \G0.mem_reg[55]_0\,
      I1 => \^q\(55),
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      O => \next_switch_matrix[2][2]_i_14_n_0\
    );
\next_switch_matrix[2][2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_21_n_0\,
      I1 => \port_wants_to[2][0]_31\(1),
      O => \next_switch_matrix[2][2]_i_15_n_0\
    );
\next_switch_matrix[2][2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \^q\(55),
      O => \next_switch_matrix[2][2]_i_16_n_0\
    );
\next_switch_matrix[2][2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888088808880808"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_21_n_0\,
      I1 => \next_switch_matrix[2][2]_i_20_n_0\,
      I2 => \next_switch_matrix[2][2]_i_15_n_0\,
      I3 => \next_switch_matrix[2][2]_i_14_n_0\,
      I4 => \next_switch_matrix[2][2]_i_13_n_0\,
      I5 => \next_switch_matrix[2][2]_i_12_n_0\,
      O => \next_switch_matrix[2][2]_i_17_n_0\
    );
\next_switch_matrix[2][2]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \^q\(55),
      O => \next_switch_matrix[2][2]_i_18_n_0\
    );
\next_switch_matrix[2][2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF020000FFFFFFFF"
    )
        port map (
      I0 => \G0.mem_reg[55]_1\,
      I1 => \next_switch_matrix[4][2]_i_21_n_0\,
      I2 => \next_switch_matrix[2][2]_i_13_n_0\,
      I3 => \next_switch_matrix[2][2]_i_14_n_0\,
      I4 => \next_switch_matrix[2][2]_i_15_n_0\,
      I5 => \next_switch_matrix[2][2]_i_20_n_0\,
      O => \next_switch_matrix[2][2]_i_19_n_0\
    );
\next_switch_matrix[2][2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_2__0_n_0\,
      I1 => \port_wants_to[2][3]_28\(2),
      I2 => \port_wants_to[2][3]_28\(1),
      I3 => \next_switch_matrix[0][2]_i_5__1_n_0\,
      O => \^next_switch_matrix_reg[2][2]\
    );
\next_switch_matrix[2][2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      I2 => \^q\(55),
      O => \next_switch_matrix[2][2]_i_20_n_0\
    );
\next_switch_matrix[2][2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAABAAAAA"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_3__1_n_0\,
      I1 => \port_wants_to[2][2]_29\(2),
      I2 => \^next_switch_matrix_reg[4][2]_0\(0),
      I3 => \^next_switch_matrix_reg[4][2]\,
      I4 => \next_switch_matrix[2][2]_i_4__1_n_0\,
      I5 => \next_switch_matrix[0][2]_i_8_n_0\,
      O => \next_switch_matrix[2][2]_i_2__0_n_0\
    );
\next_switch_matrix[2][2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040000FFFFFFFF"
    )
        port map (
      I0 => \port_wants_to[2][1]_27\(2),
      I1 => \port_wants_to[2][1]_27\(1),
      I2 => \port_wants_to[2][1]_27\(0),
      I3 => \next_switch_matrix[2][2]_i_5_n_0\,
      I4 => \next_switch_matrix[2][2]_i_6_n_0\,
      I5 => \next_switch_matrix[2][2]_i_7_n_0\,
      O => \next_switch_matrix[2][2]_i_3__1_n_0\
    );
\next_switch_matrix[2][2]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8000"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_6_n_0\,
      I1 => \port_wants_to[2][1]_27\(2),
      I2 => \port_wants_to[2][1]_27\(1),
      I3 => \port_wants_to[2][1]_27\(0),
      I4 => \next_switch_matrix[2][2]_i_5_n_0\,
      O => \next_switch_matrix[2][2]_i_4__1_n_0\
    );
\next_switch_matrix[2][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444440F000FFF"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_8__0_n_0\,
      I1 => \next_switch_matrix[2][2]_i_9__0_n_0\,
      I2 => \next_switch_matrix[2][2]_i_10__0_n_0\,
      I3 => \port_wants_to[2][1]_27\(1),
      I4 => \next_switch_matrix[2][2]_i_11_n_0\,
      I5 => \port_wants_to[2][1]_27\(2),
      O => \next_switch_matrix[2][2]_i_5_n_0\
    );
\next_switch_matrix[2][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF100F100F100"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_12_n_0\,
      I1 => \next_switch_matrix[2][2]_i_13_n_0\,
      I2 => \next_switch_matrix[2][2]_i_14_n_0\,
      I3 => \next_switch_matrix[2][2]_i_15_n_0\,
      I4 => \next_switch_matrix[4][2]_i_20_n_0\,
      I5 => \next_switch_matrix[2][2]_i_16_n_0\,
      O => \next_switch_matrix[2][2]_i_6_n_0\
    );
\next_switch_matrix[2][2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => \G0.mem_reg[55]_7\,
      I1 => \next_switch_matrix[2][2]_i_6_n_0\,
      I2 => \port_wants_to[2][0]_31\(1),
      I3 => \next_switch_matrix[4][2]_i_21_n_0\,
      I4 => \next_switch_matrix[4][2]_i_20_n_0\,
      O => \next_switch_matrix[2][2]_i_7_n_0\
    );
\next_switch_matrix[2][2]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888888"
    )
        port map (
      I0 => \port_wants_to[2][1]_27\(1),
      I1 => \G0.mem_reg[55]_0\,
      I2 => \next_switch_matrix[2][2]_i_6_n_0\,
      I3 => \port_wants_to[2][0]_31\(1),
      I4 => \next_switch_matrix[4][2]_i_21_n_0\,
      O => \next_switch_matrix[2][2]_i_8__0_n_0\
    );
\next_switch_matrix[2][2]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFC4CF"
    )
        port map (
      I0 => \port_wants_to[2][1]_27\(2),
      I1 => \next_switch_matrix[2][2]_i_17_n_0\,
      I2 => \port_wants_to[2][1]_27\(0),
      I3 => \next_switch_matrix[0][2]_i_25_n_0\,
      I4 => \port_wants_to[2][1]_27\(1),
      O => \next_switch_matrix[2][2]_i_9__0_n_0\
    );
\next_switch_matrix[3][0]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDCDCCCCFDCD"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][2]\,
      I1 => \port_wants_to[6][3]_33\(2),
      I2 => \port_wants_to[6][3]_33\(0),
      I3 => \next_switch_matrix[1][2]_i_2__0_n_0\,
      I4 => \port_wants_to[6][3]_33\(1),
      I5 => \next_switch_matrix[2][0]_i_16_n_0\,
      O => \next_switch_matrix_reg[3][0]\
    );
\next_switch_matrix[3][2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^next_switch_matrix_reg[3][2]\,
      O => \next_switch_matrix_reg[3][2]_0\(0)
    );
\next_switch_matrix[3][2]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      I2 => \^q\(55),
      I3 => \next_switch_matrix[0][2]_i_28_n_0\,
      O => \next_switch_matrix[3][2]_i_10__0_n_0\
    );
\next_switch_matrix[3][2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \^q\(37),
      I3 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I4 => \^q\(55),
      O => \next_switch_matrix[3][2]_i_11_n_0\
    );
\next_switch_matrix[3][2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F4F0F0"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_6__0_n_0\,
      I1 => \port_wants_to[2][4]_30\(1),
      I2 => \next_switch_matrix[3][2]_i_3_n_0\,
      I3 => \next_switch_matrix[3][2]_i_4_n_0\,
      I4 => \next_switch_matrix[3][2]_i_5__0_n_0\,
      O => \^next_switch_matrix_reg[3][2]\
    );
\next_switch_matrix[3][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAEAA"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_6_n_0\,
      I1 => \port_wants_to[2][3]_28\(1),
      I2 => \port_wants_to[2][3]_28\(2),
      I3 => \port_wants_to[2][3]_28\(0),
      I4 => \next_switch_matrix[4][2]_i_3_n_0\,
      I5 => \next_switch_matrix[4][2]_i_2_n_0\,
      O => \next_switch_matrix[3][2]_i_3_n_0\
    );
\next_switch_matrix[3][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFFFFFFFFFFF"
    )
        port map (
      I0 => \G0.mem_reg[55]_1\,
      I1 => \next_switch_matrix[0][2]_i_18_n_0\,
      I2 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I3 => \^q\(37),
      I4 => \^q\(36),
      I5 => \^q\(55),
      O => \next_switch_matrix[3][2]_i_4_n_0\
    );
\next_switch_matrix[3][2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA8A"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_7_n_0\,
      I1 => \next_switch_matrix[4][2]_i_2_n_0\,
      I2 => \port_wants_to[2][3]_28\(0),
      I3 => \next_switch_matrix[4][2]_i_3_n_0\,
      I4 => \port_wants_to[2][3]_28\(1),
      I5 => \port_wants_to[2][3]_28\(2),
      O => \next_switch_matrix[3][2]_i_5__0_n_0\
    );
\next_switch_matrix[3][2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0800"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_11_n_0\,
      I1 => \port_wants_to[2][1]_27\(0),
      I2 => \port_wants_to[2][1]_27\(2),
      I3 => \port_wants_to[2][1]_27\(1),
      I4 => \next_switch_matrix[3][2]_i_8_n_0\,
      O => \next_switch_matrix[3][2]_i_6_n_0\
    );
\next_switch_matrix[3][2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101111111111111"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_9_n_0\,
      I1 => \next_switch_matrix[3][2]_i_10__0_n_0\,
      I2 => \^next_switch_matrix_reg[4][2]\,
      I3 => \next_switch_matrix[0][2]_i_8_n_0\,
      I4 => \next_switch_matrix[0][2]_i_12__0_n_0\,
      I5 => \next_switch_matrix[3][2]_i_11_n_0\,
      O => \next_switch_matrix[3][2]_i_7_n_0\
    );
\next_switch_matrix[3][2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \port_wants_to[2][2]_29\(2),
      I1 => \^next_switch_matrix_reg[4][2]_0\(0),
      I2 => \^next_switch_matrix_reg[4][2]\,
      I3 => \next_switch_matrix[2][2]_i_4__1_n_0\,
      I4 => \next_switch_matrix[0][2]_i_8_n_0\,
      O => \next_switch_matrix[3][2]_i_8_n_0\
    );
\next_switch_matrix[3][2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_6_n_0\,
      I1 => \port_wants_to[2][1]_27\(2),
      I2 => \port_wants_to[2][1]_27\(1),
      I3 => \port_wants_to[2][1]_27\(0),
      I4 => \next_switch_matrix[2][2]_i_5_n_0\,
      O => \next_switch_matrix[3][2]_i_9_n_0\
    );
\next_switch_matrix[4][0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00FF10"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_2_n_0\,
      I1 => \next_switch_matrix[4][2]_i_3_n_0\,
      I2 => \port_wants_to[2][3]_28\(2),
      I3 => \next_switch_matrix[4][2]_i_5__0_n_0\,
      I4 => \port_wants_to[2][3]_28\(0),
      I5 => \port_wants_to[2][3]_28\(1),
      O => \^next_switch_matrix_reg[4][0]\
    );
\next_switch_matrix[4][2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5D5D5DFFFFFF5F"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \^q\(33),
      I4 => \^q\(32),
      I5 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      O => \port_wants_to[2][1]_27\(2)
    );
\next_switch_matrix[4][2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_6_n_0\,
      I1 => \next_switch_matrix[2][2]_i_5_n_0\,
      O => \next_switch_matrix[4][2]_i_11_n_0\
    );
\next_switch_matrix[4][2]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222FFFFF"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      I2 => \^q\(34),
      I3 => \^q\(35),
      I4 => \^q\(55),
      O => \port_wants_to[2][1]_27\(0)
    );
\next_switch_matrix[4][2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \port_wants_to[2][0]_31\(1),
      I1 => \next_switch_matrix[4][2]_i_20_n_0\,
      I2 => \next_switch_matrix[4][2]_i_21_n_0\,
      O => \next_switch_matrix[4][2]_i_13_n_0\
    );
\next_switch_matrix[4][2]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^next_switch_matrix_reg[4][2]_0\(0),
      I1 => \port_wants_to[2][2]_29\(2),
      I2 => \next_switch_matrix[0][2]_i_8_n_0\,
      I3 => \next_switch_matrix[2][2]_i_4__1_n_0\,
      I4 => \^next_switch_matrix_reg[4][2]\,
      O => \next_switch_matrix[4][2]_i_14_n_0\
    );
\next_switch_matrix[4][2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000EFFFFFFFF"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I5 => \^q\(55),
      O => \next_switch_matrix[4][2]_i_15_n_0\
    );
\next_switch_matrix[4][2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA0C00AAAA"
    )
        port map (
      I0 => \next_switch_matrix[2][2]_i_16_n_0\,
      I1 => \port_wants_to[2][1]_27\(1),
      I2 => \port_wants_to[2][1]_27\(0),
      I3 => \port_wants_to[2][1]_27\(2),
      I4 => \next_switch_matrix[2][2]_i_6_n_0\,
      I5 => \next_switch_matrix[2][2]_i_5_n_0\,
      O => \next_switch_matrix[4][2]_i_16_n_0\
    );
\next_switch_matrix[4][2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_9_n_0\,
      I1 => \next_switch_matrix[4][2]_i_22_n_0\,
      I2 => \port_wants_to[2][3]_28\(0),
      I3 => \next_switch_matrix[0][2]_i_21_n_0\,
      O => \next_switch_matrix[4][2]_i_17_n_0\
    );
\next_switch_matrix[4][2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8FCB8BB"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_20_n_0\,
      I1 => \port_wants_to[2][3]_28\(0),
      I2 => \next_switch_matrix[2][2]_i_3__1_n_0\,
      I3 => \next_switch_matrix[4][2]_i_23_n_0\,
      I4 => \^next_switch_matrix_reg[4][2]\,
      I5 => \next_switch_matrix[4][2]_i_24_n_0\,
      O => \next_switch_matrix[4][2]_i_18_n_0\
    );
\next_switch_matrix[4][2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      O => \port_wants_to[2][0]_31\(1)
    );
\next_switch_matrix[4][2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_2_n_0\,
      I1 => \next_switch_matrix[4][2]_i_3_n_0\,
      I2 => \port_wants_to[2][3]_28\(2),
      I3 => \port_wants_to[2][3]_28\(1),
      I4 => \port_wants_to[2][3]_28\(0),
      I5 => \next_switch_matrix[4][2]_i_5__0_n_0\,
      O => \^next_switch_matrix_reg[4][2]_1\
    );
\next_switch_matrix[4][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_6_n_0\,
      I1 => \next_switch_matrix[4][2]_i_7_n_0\,
      I2 => \next_switch_matrix_reg[4][2]_i_8_n_0\,
      O => \next_switch_matrix[4][2]_i_2_n_0\
    );
\next_switch_matrix[4][2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF54FFFFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I1 => \^q\(32),
      I2 => \^q\(33),
      I3 => \^q\(36),
      I4 => \^q\(37),
      I5 => \^q\(55),
      O => \next_switch_matrix[4][2]_i_20_n_0\
    );
\next_switch_matrix[4][2]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDFD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      O => \next_switch_matrix[4][2]_i_21_n_0\
    );
\next_switch_matrix[4][2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088808000000000"
    )
        port map (
      I0 => \next_switch_matrix[3][2]_i_11_n_0\,
      I1 => \next_switch_matrix[0][2]_i_12__0_n_0\,
      I2 => \next_switch_matrix[4][2]_i_25_n_0\,
      I3 => \next_switch_matrix[0][2]_i_15__0_n_0\,
      I4 => \next_switch_matrix[4][2]_i_26_n_0\,
      I5 => \^next_switch_matrix_reg[4][2]\,
      O => \next_switch_matrix[4][2]_i_22_n_0\
    );
\next_switch_matrix[4][2]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFF54FFFFFFFF"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(33),
      I2 => \^q\(32),
      I3 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I4 => \^q\(37),
      I5 => \^q\(55),
      O => \next_switch_matrix[4][2]_i_23_n_0\
    );
\next_switch_matrix[4][2]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"45FF"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_16_n_0\,
      I1 => \next_switch_matrix[0][2]_i_15__0_n_0\,
      I2 => \next_switch_matrix[4][2]_i_26_n_0\,
      I3 => \next_switch_matrix[2][2]_i_4__1_n_0\,
      O => \next_switch_matrix[4][2]_i_24_n_0\
    );
\next_switch_matrix[4][2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_16_n_0\,
      I1 => \next_switch_matrix[4][2]_i_27_n_0\,
      O => \next_switch_matrix[4][2]_i_25_n_0\
    );
\next_switch_matrix[4][2]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00155515"
    )
        port map (
      I0 => \port_wants_to[2][2]_29\(2),
      I1 => \^next_switch_matrix_reg[4][2]\,
      I2 => \G0.mem_reg[55]_1\,
      I3 => \^next_switch_matrix_reg[4][2]_0\(0),
      I4 => \G0.mem_reg[36]_0\,
      O => \next_switch_matrix[4][2]_i_26_n_0\
    );
\next_switch_matrix[4][2]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2AAA2A2A2A2"
    )
        port map (
      I0 => \G0.mem_reg[55]_0\,
      I1 => \^q\(55),
      I2 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I3 => \^q\(36),
      I4 => \^q\(37),
      I5 => \next_switch_matrix[0][2]_i_18_n_0\,
      O => \next_switch_matrix[4][2]_i_27_n_0\
    );
\next_switch_matrix[4][2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFFFF"
    )
        port map (
      I0 => \port_wants_to[2][2]_29\(2),
      I1 => \^next_switch_matrix_reg[4][2]_0\(0),
      I2 => \^next_switch_matrix_reg[4][2]\,
      I3 => \next_switch_matrix[0][2]_i_8_n_0\,
      I4 => \next_switch_matrix[2][2]_i_4__1_n_0\,
      O => \next_switch_matrix[4][2]_i_3_n_0\
    );
\next_switch_matrix[4][2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFFFFFF1F"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      I2 => \^q\(55),
      I3 => \^q\(36),
      I4 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I5 => \^q\(37),
      O => \port_wants_to[2][3]_28\(0)
    );
\next_switch_matrix[4][2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0040"
    )
        port map (
      I0 => \port_wants_to[2][1]_27\(1),
      I1 => \port_wants_to[2][1]_27\(2),
      I2 => \next_switch_matrix[4][2]_i_11_n_0\,
      I3 => \port_wants_to[2][1]_27\(0),
      I4 => \next_switch_matrix[4][2]_i_13_n_0\,
      I5 => \next_switch_matrix[4][2]_i_14_n_0\,
      O => \next_switch_matrix[4][2]_i_5__0_n_0\
    );
\next_switch_matrix[4][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0020FFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_15_n_0\,
      I1 => \next_switch_matrix[0][2]_i_8_n_0\,
      I2 => \next_switch_matrix[2][2]_i_4__1_n_0\,
      I3 => \^next_switch_matrix_reg[4][2]\,
      I4 => \next_switch_matrix[4][2]_i_16_n_0\,
      I5 => \G0.mem_reg[55]_0\,
      O => \next_switch_matrix[4][2]_i_6_n_0\
    );
\next_switch_matrix[4][2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555FFDFDFD7F"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \next_switch_matrix[0][2]_i_7__0_n_0\,
      I3 => \^q\(33),
      I4 => \^q\(32),
      I5 => \^q\(37),
      O => \next_switch_matrix[4][2]_i_7_n_0\
    );
\next_switch_matrix[4][2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(34),
      I2 => \^q\(35),
      I3 => \^q\(37),
      I4 => \^q\(33),
      I5 => \^q\(32),
      O => \port_wants_to[2][1]_27\(1)
    );
\next_switch_matrix[5][0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0004FFFF"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_6__0_n_0\,
      I1 => \next_switch_matrix[1][2]_i_8_n_0\,
      I2 => \port_wants_to[2][4]_30\(1),
      I3 => \next_switch_matrix[1][2]_i_5_n_0\,
      I4 => \next_switch_matrix[0][0]_i_26_n_0\,
      O => \next_switch_matrix_reg[5][0]_0\
    );
\next_switch_matrix[5][2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^next_switch_matrix_reg[5][2]\,
      O => D(0)
    );
\next_switch_matrix[5][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0004"
    )
        port map (
      I0 => \next_switch_matrix[1][2]_i_6__0_n_0\,
      I1 => \next_switch_matrix[1][2]_i_8_n_0\,
      I2 => \port_wants_to[2][4]_30\(1),
      I3 => \next_switch_matrix[1][2]_i_5_n_0\,
      I4 => \next_switch_matrix[5][2]_i_3__0_n_0\,
      I5 => \next_switch_matrix[5][2]_i_4__0_n_0\,
      O => \^next_switch_matrix_reg[5][2]\
    );
\next_switch_matrix[5][2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \port_wants_to[2][3]_28\(1),
      I1 => \port_wants_to[2][3]_28\(0),
      I2 => \port_wants_to[2][3]_28\(2),
      I3 => \next_switch_matrix[4][2]_i_3_n_0\,
      I4 => \next_switch_matrix[4][2]_i_2_n_0\,
      O => \next_switch_matrix[5][2]_i_3__0_n_0\
    );
\next_switch_matrix[5][2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02000000FFFFFFFF"
    )
        port map (
      I0 => \^next_switch_matrix_reg[4][2]\,
      I1 => \next_switch_matrix[0][2]_i_8_n_0\,
      I2 => \^next_switch_matrix_reg[4][2]_0\(0),
      I3 => \port_wants_to[2][2]_29\(2),
      I4 => \next_switch_matrix[2][2]_i_4__1_n_0\,
      I5 => \next_switch_matrix[5][2]_i_5__0_n_0\,
      O => \next_switch_matrix[5][2]_i_4__0_n_0\
    );
\next_switch_matrix[5][2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555551555555"
    )
        port map (
      I0 => \next_switch_matrix[0][2]_i_23_n_0\,
      I1 => \port_wants_to[2][1]_27\(0),
      I2 => \port_wants_to[2][1]_27\(1),
      I3 => \port_wants_to[2][1]_27\(2),
      I4 => \next_switch_matrix[2][2]_i_6_n_0\,
      I5 => \next_switch_matrix[2][2]_i_5_n_0\,
      O => \next_switch_matrix[5][2]_i_5__0_n_0\
    );
\next_switch_matrix[6][0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
        port map (
      I0 => \next_switch_matrix[6][0]_i_9_n_0\,
      I1 => \next_switch_matrix[0][2]_i_5__1_n_0\,
      I2 => \port_wants_to[2][3]_28\(1),
      I3 => \port_wants_to[2][3]_28\(2),
      O => \next_switch_matrix_reg[6][0]\
    );
\next_switch_matrix[6][0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAAAAAAAAAAAA"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_16_n_0\,
      I1 => \^next_switch_matrix_reg[4][2]\,
      I2 => \next_switch_matrix[2][2]_i_4__1_n_0\,
      I3 => \next_switch_matrix[0][2]_i_8_n_0\,
      I4 => \^next_switch_matrix_reg[4][2]_0\(0),
      I5 => \port_wants_to[2][2]_29\(2),
      O => \next_switch_matrix[6][0]_i_9_n_0\
    );
\next_switch_matrix[6][2]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^next_switch_matrix_reg[6][2]_0\,
      O => \next_switch_matrix_reg[6][2]\(0)
    );
\next_switch_matrix[6][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \next_switch_matrix[4][2]_i_6_n_0\,
      I1 => \port_wants_to[2][3]_28\(0),
      I2 => \next_switch_matrix[4][2]_i_2_n_0\,
      I3 => \next_switch_matrix[4][2]_i_3_n_0\,
      I4 => \port_wants_to[2][3]_28\(1),
      I5 => \port_wants_to[2][3]_28\(2),
      O => \^next_switch_matrix_reg[6][2]_0\
    );
\next_switch_matrix_reg[4][2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \next_switch_matrix[4][2]_i_17_n_0\,
      I1 => \next_switch_matrix[4][2]_i_18_n_0\,
      O => \next_switch_matrix_reg[4][2]_i_8_n_0\,
      S => \port_wants_to[2][3]_28\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized20\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \next_switch_matrix_reg[0][0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \port_wants_to[6][1]_52\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[5][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \port_wants_to[6][2]_51\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[1][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \port_wants_to[6][4]_48\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \port_wants_to[6][3]_49\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \next_switch_matrix_reg[0][0]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][0]_1\ : out STD_LOGIC;
    \next_switch_matrix_reg[4][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[0][0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[2][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[6][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_reg[55]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \mem_reg[55]_0\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[36]_0\ : in STD_LOGIC;
    \G0.mem_reg[37]_0\ : in STD_LOGIC;
    \G0.mem_reg[34]_0\ : in STD_LOGIC;
    \G0.mem_reg[34]_1\ : in STD_LOGIC;
    \ctrl_cycle_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \G0.mem_reg[37]_1\ : in STD_LOGIC;
    \G0.mem_reg[35]_0\ : in STD_LOGIC;
    \G0.mem_reg[34]_2\ : in STD_LOGIC;
    \G0.mem_reg[55]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_1\ : in STD_LOGIC;
    \G0.mem_reg[55]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[36]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[34]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[55]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[37]_2\ : in STD_LOGIC;
    \G0.mem_reg[36]_2\ : in STD_LOGIC;
    \G0.mem_reg[55]_4\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[55]_5\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \pres_switch_matrix_reg[3][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \pres_switch_matrix_reg[6][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    To_NoC_3 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized20\ : entity is "NoC_3D_Parallel_recv";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized20\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized20\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_switch_matrix[0][0]_i_12__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_13__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_4__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_5__2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_6__2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_8__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_11__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_14__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_15_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_16_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_17_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_18_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_4__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_5_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_6__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_7__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_8__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_2__2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_10__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_11__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_12_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_13_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_14_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_15_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_4_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_5__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_6__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_7_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_9__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][0]_i_2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_10_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_11_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_12_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_13_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_16_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_17_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_18_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_19_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_20_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_21_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_23_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_24_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_25_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_27_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_29_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_2__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_3_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_4__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_9_n_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^next_switch_matrix_reg[0][0]_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][0]_1\ : STD_LOGIC;
  signal \port_wants_to[6][0]_50\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^port_wants_to[6][1]_52\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^port_wants_to[6][2]_51\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^port_wants_to[6][3]_49\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^port_wants_to[6][4]_48\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_10__1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_13__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_3__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_8__1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_9__1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][0]_i_18\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][0]_i_12\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][0]_i_13\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][0]_i_10\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][0]_i_21\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][0]_i_23\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][0]_i_25\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][0]_i_27\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][0]_i_2__1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][0]_i_4__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \next_switch_matrix[5][0]_i_7\ : label is "soft_lutpair64";
begin
  E(0) <= \^e\(0);
  Q(55 downto 0) <= \^q\(55 downto 0);
  \next_switch_matrix_reg[0][0]\(1 downto 0) <= \^next_switch_matrix_reg[0][0]\(1 downto 0);
  \next_switch_matrix_reg[0][0]_0\ <= \^next_switch_matrix_reg[0][0]_0\;
  \next_switch_matrix_reg[0][0]_1\ <= \^next_switch_matrix_reg[0][0]_1\;
  \port_wants_to[6][1]_52\(1 downto 0) <= \^port_wants_to[6][1]_52\(1 downto 0);
  \port_wants_to[6][2]_51\(1 downto 0) <= \^port_wants_to[6][2]_51\(1 downto 0);
  \port_wants_to[6][3]_49\(1 downto 0) <= \^port_wants_to[6][3]_49\(1 downto 0);
  \port_wants_to[6][4]_48\(1 downto 0) <= \^port_wants_to[6][4]_48\(1 downto 0);
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_3(9),
      Q => \^q\(9),
      R => reset
    );
\mem[0]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \G0.mem_reg[55]_4\(0),
      I2 => \G0.mem_reg[55]_5\(0),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(0)
    );
\mem[0]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \G0.mem_reg[55]_4\(0),
      I2 => \G0.mem_reg[55]_5\(0),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(0)
    );
\mem[10]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(10),
      I1 => \G0.mem_reg[55]_4\(10),
      I2 => \G0.mem_reg[55]_5\(10),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(10)
    );
\mem[10]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(10),
      I1 => \G0.mem_reg[55]_4\(10),
      I2 => \G0.mem_reg[55]_5\(10),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(10)
    );
\mem[11]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(11),
      I1 => \G0.mem_reg[55]_4\(11),
      I2 => \G0.mem_reg[55]_5\(11),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(11)
    );
\mem[11]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(11),
      I1 => \G0.mem_reg[55]_4\(11),
      I2 => \G0.mem_reg[55]_5\(11),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(11)
    );
\mem[12]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(12),
      I1 => \G0.mem_reg[55]_4\(12),
      I2 => \G0.mem_reg[55]_5\(12),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(12)
    );
\mem[12]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(12),
      I1 => \G0.mem_reg[55]_4\(12),
      I2 => \G0.mem_reg[55]_5\(12),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(12)
    );
\mem[13]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(13),
      I1 => \G0.mem_reg[55]_4\(13),
      I2 => \G0.mem_reg[55]_5\(13),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(13)
    );
\mem[13]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(13),
      I1 => \G0.mem_reg[55]_4\(13),
      I2 => \G0.mem_reg[55]_5\(13),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(13)
    );
\mem[14]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(14),
      I1 => \G0.mem_reg[55]_4\(14),
      I2 => \G0.mem_reg[55]_5\(14),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(14)
    );
\mem[14]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(14),
      I1 => \G0.mem_reg[55]_4\(14),
      I2 => \G0.mem_reg[55]_5\(14),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(14)
    );
\mem[15]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(15),
      I1 => \G0.mem_reg[55]_4\(15),
      I2 => \G0.mem_reg[55]_5\(15),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(15)
    );
\mem[15]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(15),
      I1 => \G0.mem_reg[55]_4\(15),
      I2 => \G0.mem_reg[55]_5\(15),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(15)
    );
\mem[16]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(16),
      I1 => \G0.mem_reg[55]_4\(16),
      I2 => \G0.mem_reg[55]_5\(16),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(16)
    );
\mem[16]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(16),
      I1 => \G0.mem_reg[55]_4\(16),
      I2 => \G0.mem_reg[55]_5\(16),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(16)
    );
\mem[17]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(17),
      I1 => \G0.mem_reg[55]_4\(17),
      I2 => \G0.mem_reg[55]_5\(17),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(17)
    );
\mem[17]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(17),
      I1 => \G0.mem_reg[55]_4\(17),
      I2 => \G0.mem_reg[55]_5\(17),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(17)
    );
\mem[18]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(18),
      I1 => \G0.mem_reg[55]_4\(18),
      I2 => \G0.mem_reg[55]_5\(18),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(18)
    );
\mem[18]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(18),
      I1 => \G0.mem_reg[55]_4\(18),
      I2 => \G0.mem_reg[55]_5\(18),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(18)
    );
\mem[19]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(19),
      I1 => \G0.mem_reg[55]_4\(19),
      I2 => \G0.mem_reg[55]_5\(19),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(19)
    );
\mem[19]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(19),
      I1 => \G0.mem_reg[55]_4\(19),
      I2 => \G0.mem_reg[55]_5\(19),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(19)
    );
\mem[1]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \G0.mem_reg[55]_4\(1),
      I2 => \G0.mem_reg[55]_5\(1),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(1)
    );
\mem[1]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \G0.mem_reg[55]_4\(1),
      I2 => \G0.mem_reg[55]_5\(1),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(1)
    );
\mem[20]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(20),
      I1 => \G0.mem_reg[55]_4\(20),
      I2 => \G0.mem_reg[55]_5\(20),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(20)
    );
\mem[20]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(20),
      I1 => \G0.mem_reg[55]_4\(20),
      I2 => \G0.mem_reg[55]_5\(20),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(20)
    );
\mem[21]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \G0.mem_reg[55]_4\(21),
      I2 => \G0.mem_reg[55]_5\(21),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(21)
    );
\mem[21]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(21),
      I1 => \G0.mem_reg[55]_4\(21),
      I2 => \G0.mem_reg[55]_5\(21),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(21)
    );
\mem[22]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(22),
      I1 => \G0.mem_reg[55]_4\(22),
      I2 => \G0.mem_reg[55]_5\(22),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(22)
    );
\mem[22]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(22),
      I1 => \G0.mem_reg[55]_4\(22),
      I2 => \G0.mem_reg[55]_5\(22),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(22)
    );
\mem[23]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(23),
      I1 => \G0.mem_reg[55]_4\(23),
      I2 => \G0.mem_reg[55]_5\(23),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(23)
    );
\mem[23]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(23),
      I1 => \G0.mem_reg[55]_4\(23),
      I2 => \G0.mem_reg[55]_5\(23),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(23)
    );
\mem[24]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(24),
      I1 => \G0.mem_reg[55]_4\(24),
      I2 => \G0.mem_reg[55]_5\(24),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(24)
    );
\mem[24]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(24),
      I1 => \G0.mem_reg[55]_4\(24),
      I2 => \G0.mem_reg[55]_5\(24),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(24)
    );
\mem[25]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(25),
      I1 => \G0.mem_reg[55]_4\(25),
      I2 => \G0.mem_reg[55]_5\(25),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(25)
    );
\mem[25]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(25),
      I1 => \G0.mem_reg[55]_4\(25),
      I2 => \G0.mem_reg[55]_5\(25),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(25)
    );
\mem[26]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(26),
      I1 => \G0.mem_reg[55]_4\(26),
      I2 => \G0.mem_reg[55]_5\(26),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(26)
    );
\mem[26]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(26),
      I1 => \G0.mem_reg[55]_4\(26),
      I2 => \G0.mem_reg[55]_5\(26),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(26)
    );
\mem[27]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(27),
      I1 => \G0.mem_reg[55]_4\(27),
      I2 => \G0.mem_reg[55]_5\(27),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(27)
    );
\mem[27]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(27),
      I1 => \G0.mem_reg[55]_4\(27),
      I2 => \G0.mem_reg[55]_5\(27),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(27)
    );
\mem[28]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(28),
      I1 => \G0.mem_reg[55]_4\(28),
      I2 => \G0.mem_reg[55]_5\(28),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(28)
    );
\mem[28]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(28),
      I1 => \G0.mem_reg[55]_4\(28),
      I2 => \G0.mem_reg[55]_5\(28),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(28)
    );
\mem[29]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(29),
      I1 => \G0.mem_reg[55]_4\(29),
      I2 => \G0.mem_reg[55]_5\(29),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(29)
    );
\mem[29]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(29),
      I1 => \G0.mem_reg[55]_4\(29),
      I2 => \G0.mem_reg[55]_5\(29),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(29)
    );
\mem[2]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \G0.mem_reg[55]_4\(2),
      I2 => \G0.mem_reg[55]_5\(2),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(2)
    );
\mem[2]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \G0.mem_reg[55]_4\(2),
      I2 => \G0.mem_reg[55]_5\(2),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(2)
    );
\mem[30]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(30),
      I1 => \G0.mem_reg[55]_4\(30),
      I2 => \G0.mem_reg[55]_5\(30),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(30)
    );
\mem[30]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(30),
      I1 => \G0.mem_reg[55]_4\(30),
      I2 => \G0.mem_reg[55]_5\(30),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(30)
    );
\mem[31]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(31),
      I1 => \G0.mem_reg[55]_4\(31),
      I2 => \G0.mem_reg[55]_5\(31),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(31)
    );
\mem[31]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(31),
      I1 => \G0.mem_reg[55]_4\(31),
      I2 => \G0.mem_reg[55]_5\(31),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(31)
    );
\mem[32]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(32),
      I1 => \G0.mem_reg[55]_4\(32),
      I2 => \G0.mem_reg[55]_5\(32),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(32)
    );
\mem[32]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(32),
      I1 => \G0.mem_reg[55]_4\(32),
      I2 => \G0.mem_reg[55]_5\(32),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(32)
    );
\mem[33]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(33),
      I1 => \G0.mem_reg[55]_4\(33),
      I2 => \G0.mem_reg[55]_5\(33),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(33)
    );
\mem[33]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(33),
      I1 => \G0.mem_reg[55]_4\(33),
      I2 => \G0.mem_reg[55]_5\(33),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(33)
    );
\mem[34]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(34),
      I1 => \G0.mem_reg[55]_4\(34),
      I2 => \G0.mem_reg[55]_5\(34),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(34)
    );
\mem[34]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(34),
      I1 => \G0.mem_reg[55]_4\(34),
      I2 => \G0.mem_reg[55]_5\(34),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(34)
    );
\mem[35]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(35),
      I1 => \G0.mem_reg[55]_4\(35),
      I2 => \G0.mem_reg[55]_5\(35),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(35)
    );
\mem[35]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(35),
      I1 => \G0.mem_reg[55]_4\(35),
      I2 => \G0.mem_reg[55]_5\(35),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(35)
    );
\mem[36]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(36),
      I1 => \G0.mem_reg[55]_4\(36),
      I2 => \G0.mem_reg[55]_5\(36),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(36)
    );
\mem[36]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(36),
      I1 => \G0.mem_reg[55]_4\(36),
      I2 => \G0.mem_reg[55]_5\(36),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(36)
    );
\mem[37]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(37),
      I1 => \G0.mem_reg[55]_4\(37),
      I2 => \G0.mem_reg[55]_5\(37),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(37)
    );
\mem[37]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(37),
      I1 => \G0.mem_reg[55]_4\(37),
      I2 => \G0.mem_reg[55]_5\(37),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(37)
    );
\mem[38]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(38),
      I1 => \G0.mem_reg[55]_4\(38),
      I2 => \G0.mem_reg[55]_5\(38),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(38)
    );
\mem[38]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(38),
      I1 => \G0.mem_reg[55]_4\(38),
      I2 => \G0.mem_reg[55]_5\(38),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(38)
    );
\mem[39]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(39),
      I1 => \G0.mem_reg[55]_4\(39),
      I2 => \G0.mem_reg[55]_5\(39),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(39)
    );
\mem[39]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(39),
      I1 => \G0.mem_reg[55]_4\(39),
      I2 => \G0.mem_reg[55]_5\(39),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(39)
    );
\mem[3]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \G0.mem_reg[55]_4\(3),
      I2 => \G0.mem_reg[55]_5\(3),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(3)
    );
\mem[3]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \G0.mem_reg[55]_4\(3),
      I2 => \G0.mem_reg[55]_5\(3),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(3)
    );
\mem[40]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(40),
      I1 => \G0.mem_reg[55]_4\(40),
      I2 => \G0.mem_reg[55]_5\(40),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(40)
    );
\mem[40]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(40),
      I1 => \G0.mem_reg[55]_4\(40),
      I2 => \G0.mem_reg[55]_5\(40),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(40)
    );
\mem[41]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(41),
      I1 => \G0.mem_reg[55]_4\(41),
      I2 => \G0.mem_reg[55]_5\(41),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(41)
    );
\mem[41]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(41),
      I1 => \G0.mem_reg[55]_4\(41),
      I2 => \G0.mem_reg[55]_5\(41),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(41)
    );
\mem[42]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(42),
      I1 => \G0.mem_reg[55]_4\(42),
      I2 => \G0.mem_reg[55]_5\(42),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(42)
    );
\mem[42]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(42),
      I1 => \G0.mem_reg[55]_4\(42),
      I2 => \G0.mem_reg[55]_5\(42),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(42)
    );
\mem[43]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(43),
      I1 => \G0.mem_reg[55]_4\(43),
      I2 => \G0.mem_reg[55]_5\(43),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(43)
    );
\mem[43]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(43),
      I1 => \G0.mem_reg[55]_4\(43),
      I2 => \G0.mem_reg[55]_5\(43),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(43)
    );
\mem[44]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(44),
      I1 => \G0.mem_reg[55]_4\(44),
      I2 => \G0.mem_reg[55]_5\(44),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(44)
    );
\mem[44]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(44),
      I1 => \G0.mem_reg[55]_4\(44),
      I2 => \G0.mem_reg[55]_5\(44),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(44)
    );
\mem[45]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(45),
      I1 => \G0.mem_reg[55]_4\(45),
      I2 => \G0.mem_reg[55]_5\(45),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(45)
    );
\mem[45]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(45),
      I1 => \G0.mem_reg[55]_4\(45),
      I2 => \G0.mem_reg[55]_5\(45),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(45)
    );
\mem[46]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(46),
      I1 => \G0.mem_reg[55]_4\(46),
      I2 => \G0.mem_reg[55]_5\(46),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(46)
    );
\mem[46]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(46),
      I1 => \G0.mem_reg[55]_4\(46),
      I2 => \G0.mem_reg[55]_5\(46),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(46)
    );
\mem[47]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(47),
      I1 => \G0.mem_reg[55]_4\(47),
      I2 => \G0.mem_reg[55]_5\(47),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(47)
    );
\mem[47]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(47),
      I1 => \G0.mem_reg[55]_4\(47),
      I2 => \G0.mem_reg[55]_5\(47),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(47)
    );
\mem[48]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(48),
      I1 => \G0.mem_reg[55]_4\(48),
      I2 => \G0.mem_reg[55]_5\(48),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(48)
    );
\mem[48]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(48),
      I1 => \G0.mem_reg[55]_4\(48),
      I2 => \G0.mem_reg[55]_5\(48),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(48)
    );
\mem[49]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(49),
      I1 => \G0.mem_reg[55]_4\(49),
      I2 => \G0.mem_reg[55]_5\(49),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(49)
    );
\mem[49]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(49),
      I1 => \G0.mem_reg[55]_4\(49),
      I2 => \G0.mem_reg[55]_5\(49),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(49)
    );
\mem[4]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \G0.mem_reg[55]_4\(4),
      I2 => \G0.mem_reg[55]_5\(4),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(4)
    );
\mem[4]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \G0.mem_reg[55]_4\(4),
      I2 => \G0.mem_reg[55]_5\(4),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(4)
    );
\mem[50]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(50),
      I1 => \G0.mem_reg[55]_4\(50),
      I2 => \G0.mem_reg[55]_5\(50),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(50)
    );
\mem[50]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(50),
      I1 => \G0.mem_reg[55]_4\(50),
      I2 => \G0.mem_reg[55]_5\(50),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(50)
    );
\mem[51]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(51),
      I1 => \G0.mem_reg[55]_4\(51),
      I2 => \G0.mem_reg[55]_5\(51),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(51)
    );
\mem[51]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(51),
      I1 => \G0.mem_reg[55]_4\(51),
      I2 => \G0.mem_reg[55]_5\(51),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(51)
    );
\mem[52]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(52),
      I1 => \G0.mem_reg[55]_4\(52),
      I2 => \G0.mem_reg[55]_5\(52),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(52)
    );
\mem[52]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(52),
      I1 => \G0.mem_reg[55]_4\(52),
      I2 => \G0.mem_reg[55]_5\(52),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(52)
    );
\mem[53]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(53),
      I1 => \G0.mem_reg[55]_4\(53),
      I2 => \G0.mem_reg[55]_5\(53),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(53)
    );
\mem[53]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(53),
      I1 => \G0.mem_reg[55]_4\(53),
      I2 => \G0.mem_reg[55]_5\(53),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(53)
    );
\mem[54]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(54),
      I1 => \G0.mem_reg[55]_4\(54),
      I2 => \G0.mem_reg[55]_5\(54),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(54)
    );
\mem[54]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(54),
      I1 => \G0.mem_reg[55]_4\(54),
      I2 => \G0.mem_reg[55]_5\(54),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(54)
    );
\mem[55]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctrl_cycle_reg[1]\(0),
      I1 => \ctrl_cycle_reg[1]\(1),
      O => \^e\(0)
    );
\mem[55]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(55),
      I1 => \G0.mem_reg[55]_4\(55),
      I2 => \G0.mem_reg[55]_5\(55),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(55)
    );
\mem[55]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(55),
      I1 => \G0.mem_reg[55]_4\(55),
      I2 => \G0.mem_reg[55]_5\(55),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(55)
    );
\mem[5]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \G0.mem_reg[55]_4\(5),
      I2 => \G0.mem_reg[55]_5\(5),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(5)
    );
\mem[5]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \G0.mem_reg[55]_4\(5),
      I2 => \G0.mem_reg[55]_5\(5),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(5)
    );
\mem[6]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \G0.mem_reg[55]_4\(6),
      I2 => \G0.mem_reg[55]_5\(6),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(6)
    );
\mem[6]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \G0.mem_reg[55]_4\(6),
      I2 => \G0.mem_reg[55]_5\(6),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(6)
    );
\mem[7]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \G0.mem_reg[55]_4\(7),
      I2 => \G0.mem_reg[55]_5\(7),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(7)
    );
\mem[7]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \G0.mem_reg[55]_4\(7),
      I2 => \G0.mem_reg[55]_5\(7),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(7)
    );
\mem[8]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \G0.mem_reg[55]_4\(8),
      I2 => \G0.mem_reg[55]_5\(8),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(8)
    );
\mem[8]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \G0.mem_reg[55]_4\(8),
      I2 => \G0.mem_reg[55]_5\(8),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(8)
    );
\mem[9]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \G0.mem_reg[55]_4\(9),
      I2 => \G0.mem_reg[55]_5\(9),
      I3 => \pres_switch_matrix_reg[3][2]\(2),
      I4 => \pres_switch_matrix_reg[3][2]\(0),
      I5 => \pres_switch_matrix_reg[3][2]\(1),
      O => \mem_reg[55]\(9)
    );
\mem[9]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0AA0000CC0000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \G0.mem_reg[55]_4\(9),
      I2 => \G0.mem_reg[55]_5\(9),
      I3 => \pres_switch_matrix_reg[6][2]\(2),
      I4 => \pres_switch_matrix_reg[6][2]\(0),
      I5 => \pres_switch_matrix_reg[6][2]\(1),
      O => \mem_reg[55]_0\(9)
    );
\next_switch_matrix[0][0]_i_10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001F0000"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \^q\(36),
      I3 => \^q\(37),
      I4 => \^q\(55),
      O => \^next_switch_matrix_reg[0][0]_1\
    );
\next_switch_matrix[0][0]_i_12__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFDFFFFFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \^next_switch_matrix_reg[0][0]\(0),
      I4 => \^next_switch_matrix_reg[0][0]\(1),
      I5 => \G0.mem_reg[36]_1\(0),
      O => \next_switch_matrix[0][0]_i_12__1_n_0\
    );
\next_switch_matrix[0][0]_i_13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001000F0"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \^q\(55),
      I3 => \^q\(37),
      I4 => \^q\(36),
      O => \next_switch_matrix[0][0]_i_13__0_n_0\
    );
\next_switch_matrix[0][0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(0),
      I1 => \^next_switch_matrix_reg[0][0]\(1),
      I2 => \next_switch_matrix[0][0]_i_4__1_n_0\,
      I3 => \^q\(55),
      I4 => \^q\(37),
      I5 => \^q\(36),
      O => \next_switch_matrix_reg[0][0]_2\(0)
    );
\next_switch_matrix[0][0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I3 => \^q\(55),
      I4 => \^q\(37),
      I5 => \^q\(36),
      O => \^next_switch_matrix_reg[0][0]\(0)
    );
\next_switch_matrix[0][0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFDFDDD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \^q\(34),
      I4 => \^q\(35),
      O => \^next_switch_matrix_reg[0][0]\(1)
    );
\next_switch_matrix[0][0]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4444444F444F44"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_6__2_n_0\,
      I1 => \G0.mem_reg[55]_1\,
      I2 => \next_switch_matrix[0][0]_i_8__1_n_0\,
      I3 => \^next_switch_matrix_reg[0][0]_0\,
      I4 => \G0.mem_reg[55]_0\,
      I5 => \^next_switch_matrix_reg[0][0]_1\,
      O => \next_switch_matrix[0][0]_i_4__1_n_0\
    );
\next_switch_matrix[0][0]_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \next_switch_matrix[0][0]_i_5__2_n_0\
    );
\next_switch_matrix[0][0]_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555554FF55555555"
    )
        port map (
      I0 => \G0.mem_reg[36]_0\,
      I1 => \^q\(34),
      I2 => \^q\(35),
      I3 => \^q\(36),
      I4 => \^q\(37),
      I5 => \^q\(55),
      O => \next_switch_matrix[0][0]_i_6__2_n_0\
    );
\next_switch_matrix[0][0]_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BABB"
    )
        port map (
      I0 => \port_wants_to[6][0]_50\(1),
      I1 => \next_switch_matrix[0][0]_i_12__1_n_0\,
      I2 => \G0.mem_reg[37]_0\,
      I3 => \next_switch_matrix[0][0]_i_13__0_n_0\,
      O => \next_switch_matrix[0][0]_i_8__1_n_0\
    );
\next_switch_matrix[0][0]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(0),
      I1 => \^next_switch_matrix_reg[0][0]\(1),
      I2 => \G0.mem_reg[55]_2\(0),
      O => \^next_switch_matrix_reg[0][0]_0\
    );
\next_switch_matrix[1][0]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \next_switch_matrix[1][0]_i_16_n_0\,
      I1 => \next_switch_matrix[5][0]_i_3_n_0\,
      I2 => \next_switch_matrix[5][0]_i_4__0_n_0\,
      I3 => \^port_wants_to[6][2]_51\(0),
      I4 => \^port_wants_to[6][2]_51\(1),
      O => \next_switch_matrix[1][0]_i_11__0_n_0\
    );
\next_switch_matrix[1][0]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"212F1011FFFFFFFF"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I5 => \^q\(55),
      O => \^port_wants_to[6][3]_49\(1)
    );
\next_switch_matrix[1][0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F5F4F5FFFFF6F7F"
    )
        port map (
      I0 => \^q\(37),
      I1 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I2 => \^q\(55),
      I3 => \^q\(36),
      I4 => \^q\(34),
      I5 => \^q\(35),
      O => \^port_wants_to[6][3]_49\(0)
    );
\next_switch_matrix[1][0]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44FF11FF1FFF01FF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \^q\(36),
      I3 => \^q\(55),
      I4 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I5 => \^q\(37),
      O => \next_switch_matrix[1][0]_i_14__0_n_0\
    );
\next_switch_matrix[1][0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A8888AAAAAAAA"
    )
        port map (
      I0 => \^port_wants_to[6][4]_48\(1),
      I1 => \next_switch_matrix[2][0]_i_2__2_n_0\,
      I2 => \^q\(36),
      I3 => \^q\(37),
      I4 => \^q\(55),
      I5 => \next_switch_matrix[1][0]_i_17_n_0\,
      O => \next_switch_matrix[1][0]_i_15_n_0\
    );
\next_switch_matrix[1][0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FF8200020002"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(0),
      I1 => \port_wants_to[6][0]_50\(1),
      I2 => \^next_switch_matrix_reg[0][0]\(1),
      I3 => \next_switch_matrix[0][0]_i_4__1_n_0\,
      I4 => \next_switch_matrix[1][0]_i_18_n_0\,
      I5 => \next_switch_matrix[5][0]_i_13_n_0\,
      O => \next_switch_matrix[1][0]_i_16_n_0\
    );
\next_switch_matrix[1][0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      I2 => \^q\(55),
      I3 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I4 => \^q\(34),
      I5 => \^q\(35),
      O => \next_switch_matrix[1][0]_i_17_n_0\
    );
\next_switch_matrix[1][0]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I1 => \^q\(37),
      I2 => \^q\(34),
      I3 => \^q\(35),
      I4 => \^q\(55),
      O => \next_switch_matrix[1][0]_i_18_n_0\
    );
\next_switch_matrix[1][0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \^port_wants_to[6][4]_48\(0),
      I1 => \^port_wants_to[6][4]_48\(1),
      I2 => \next_switch_matrix[1][0]_i_4__0_n_0\,
      I3 => \next_switch_matrix[1][0]_i_5_n_0\,
      O => \next_switch_matrix_reg[1][0]\(0)
    );
\next_switch_matrix[1][0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDFDFDFFFDFFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I4 => \^q\(35),
      I5 => \^q\(34),
      O => \^port_wants_to[6][4]_48\(0)
    );
\next_switch_matrix[1][0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555F75FF75FFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \^q\(35),
      I4 => \^q\(34),
      I5 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      O => \^port_wants_to[6][4]_48\(1)
    );
\next_switch_matrix[1][0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEFFFF"
    )
        port map (
      I0 => \next_switch_matrix[1][0]_i_6__0_n_0\,
      I1 => \next_switch_matrix[1][0]_i_7__0_n_0\,
      I2 => \next_switch_matrix[1][0]_i_8__0_n_0\,
      I3 => \G0.mem_reg[37]_2\,
      I4 => \G0.mem_reg[36]_2\,
      O => \next_switch_matrix[1][0]_i_4__0_n_0\
    );
\next_switch_matrix[1][0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \next_switch_matrix[1][0]_i_11__0_n_0\,
      I1 => \next_switch_matrix[3][0]_i_3__0_n_0\,
      I2 => \next_switch_matrix[3][0]_i_5__1_n_0\,
      I3 => \^port_wants_to[6][3]_49\(1),
      I4 => \^port_wants_to[6][3]_49\(0),
      O => \next_switch_matrix[1][0]_i_5_n_0\
    );
\next_switch_matrix[1][0]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_5__1_n_0\,
      I1 => \next_switch_matrix[3][0]_i_3__0_n_0\,
      I2 => \next_switch_matrix[1][0]_i_14__0_n_0\,
      O => \next_switch_matrix[1][0]_i_6__0_n_0\
    );
\next_switch_matrix[1][0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAAB"
    )
        port map (
      I0 => \^port_wants_to[6][4]_48\(0),
      I1 => \^port_wants_to[6][3]_49\(0),
      I2 => \^port_wants_to[6][3]_49\(1),
      I3 => \next_switch_matrix[3][0]_i_5__1_n_0\,
      I4 => \next_switch_matrix[3][0]_i_3__0_n_0\,
      I5 => \next_switch_matrix[1][0]_i_11__0_n_0\,
      O => \next_switch_matrix[1][0]_i_7__0_n_0\
    );
\next_switch_matrix[1][0]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55540000"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_2__0_n_0\,
      I1 => \next_switch_matrix[3][0]_i_3__0_n_0\,
      I2 => \next_switch_matrix[3][0]_i_4_n_0\,
      I3 => \next_switch_matrix[3][0]_i_5__1_n_0\,
      I4 => \next_switch_matrix[3][0]_i_6__0_n_0\,
      I5 => \next_switch_matrix[1][0]_i_15_n_0\,
      O => \next_switch_matrix[1][0]_i_8__0_n_0\
    );
\next_switch_matrix[2][0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEEFE"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(0),
      I1 => \^next_switch_matrix_reg[0][0]\(1),
      I2 => \^q\(55),
      I3 => \^q\(37),
      I4 => \^q\(36),
      I5 => \next_switch_matrix[2][0]_i_2__2_n_0\,
      O => \next_switch_matrix_reg[2][0]\(0)
    );
\next_switch_matrix[2][0]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF47"
    )
        port map (
      I0 => \G0.mem_reg[34]_3\(0),
      I1 => \^next_switch_matrix_reg[0][0]\(0),
      I2 => \G0.mem_reg[55]_3\(0),
      I3 => \^next_switch_matrix_reg[0][0]\(1),
      I4 => \next_switch_matrix[0][0]_i_6__2_n_0\,
      O => \next_switch_matrix[2][0]_i_2__2_n_0\
    );
\next_switch_matrix[3][0]_i_10__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \next_switch_matrix[4][0]_i_2_n_0\,
      I1 => \next_switch_matrix[1][0]_i_14__0_n_0\,
      I2 => \next_switch_matrix[5][0]_i_2__1_n_0\,
      I3 => \next_switch_matrix[5][0]_i_3_n_0\,
      I4 => \next_switch_matrix[3][0]_i_15_n_0\,
      I5 => \^port_wants_to[6][2]_51\(1),
      O => \next_switch_matrix[3][0]_i_10__1_n_0\
    );
\next_switch_matrix[3][0]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDFF3CFFFFFF"
    )
        port map (
      I0 => \^q\(36),
      I1 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I2 => \^q\(34),
      I3 => \^q\(55),
      I4 => \^q\(37),
      I5 => \^q\(35),
      O => \next_switch_matrix[3][0]_i_11__0_n_0\
    );
\next_switch_matrix[3][0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF2FFFF"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      I2 => \^q\(34),
      I3 => \^q\(35),
      I4 => \^q\(55),
      O => \next_switch_matrix[3][0]_i_12_n_0\
    );
\next_switch_matrix[3][0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => \^q\(36),
      I1 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I2 => \^q\(55),
      I3 => \^q\(37),
      I4 => \^q\(35),
      O => \next_switch_matrix[3][0]_i_13_n_0\
    );
\next_switch_matrix[3][0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A8888AAAAAAAA"
    )
        port map (
      I0 => \^port_wants_to[6][3]_49\(1),
      I1 => \next_switch_matrix[2][0]_i_2__2_n_0\,
      I2 => \^q\(36),
      I3 => \^q\(37),
      I4 => \^q\(55),
      I5 => \next_switch_matrix[1][0]_i_17_n_0\,
      O => \next_switch_matrix[3][0]_i_14_n_0\
    );
\next_switch_matrix[3][0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I1 => \^q\(34),
      I2 => \^q\(55),
      I3 => \^q\(37),
      I4 => \^q\(35),
      I5 => \next_switch_matrix[5][0]_i_4__0_n_0\,
      O => \next_switch_matrix[3][0]_i_15_n_0\
    );
\next_switch_matrix[3][0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555400005554"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_2__0_n_0\,
      I1 => \next_switch_matrix[3][0]_i_3__0_n_0\,
      I2 => \next_switch_matrix[3][0]_i_4_n_0\,
      I3 => \next_switch_matrix[3][0]_i_5__1_n_0\,
      I4 => \next_switch_matrix[3][0]_i_6__0_n_0\,
      I5 => \next_switch_matrix[1][0]_i_4__0_n_0\,
      O => D(0)
    );
\next_switch_matrix[3][0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAEAAAA"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_7_n_0\,
      I1 => \^port_wants_to[6][2]_51\(0),
      I2 => \^port_wants_to[6][2]_51\(1),
      I3 => \next_switch_matrix[5][0]_i_4__0_n_0\,
      I4 => \next_switch_matrix[5][0]_i_3_n_0\,
      O => \next_switch_matrix[3][0]_i_2__0_n_0\
    );
\next_switch_matrix[3][0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFBBBABBAABBBA"
    )
        port map (
      I0 => \G0.mem_reg[37]_1\,
      I1 => \next_switch_matrix[3][0]_i_9__0_n_0\,
      I2 => \next_switch_matrix[1][0]_i_11__0_n_0\,
      I3 => \^port_wants_to[6][3]_49\(0),
      I4 => \^port_wants_to[6][3]_49\(1),
      I5 => \next_switch_matrix[3][0]_i_10__1_n_0\,
      O => \next_switch_matrix[3][0]_i_3__0_n_0\
    );
\next_switch_matrix[3][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBFF1FFFB1FF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(34),
      I2 => \^q\(36),
      I3 => \^q\(55),
      I4 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I5 => \^q\(37),
      O => \next_switch_matrix[3][0]_i_4_n_0\
    );
\next_switch_matrix[3][0]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \next_switch_matrix[5][0]_i_4__0_n_0\,
      I1 => \next_switch_matrix[3][0]_i_11__0_n_0\,
      I2 => \next_switch_matrix[5][0]_i_3_n_0\,
      O => \next_switch_matrix[3][0]_i_5__1_n_0\
    );
\next_switch_matrix[3][0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F8A800000000"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I1 => \^q\(34),
      I2 => \^q\(35),
      I3 => \^q\(37),
      I4 => \^q\(36),
      I5 => \^q\(55),
      O => \next_switch_matrix[3][0]_i_6__0_n_0\
    );
\next_switch_matrix[3][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FF8800080008"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(0),
      I1 => \port_wants_to[6][0]_50\(1),
      I2 => \^next_switch_matrix_reg[0][0]\(1),
      I3 => \next_switch_matrix[0][0]_i_4__1_n_0\,
      I4 => \next_switch_matrix[3][0]_i_12_n_0\,
      I5 => \next_switch_matrix[5][0]_i_13_n_0\,
      O => \next_switch_matrix[3][0]_i_7_n_0\
    );
\next_switch_matrix[3][0]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00005455"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_7_n_0\,
      I1 => \next_switch_matrix[3][0]_i_13_n_0\,
      I2 => \next_switch_matrix[5][0]_i_4__0_n_0\,
      I3 => \next_switch_matrix[5][0]_i_3_n_0\,
      I4 => \next_switch_matrix[3][0]_i_4_n_0\,
      I5 => \next_switch_matrix[3][0]_i_14_n_0\,
      O => \next_switch_matrix[3][0]_i_9__0_n_0\
    );
\next_switch_matrix[4][0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \next_switch_matrix[4][0]_i_2_n_0\,
      O => \next_switch_matrix_reg[4][0]\(0)
    );
\next_switch_matrix[4][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(0),
      I1 => \^next_switch_matrix_reg[0][0]\(1),
      I2 => \next_switch_matrix[0][0]_i_4__1_n_0\,
      I3 => \^q\(55),
      I4 => \^q\(37),
      I5 => \^q\(36),
      O => \next_switch_matrix[4][0]_i_2_n_0\
    );
\next_switch_matrix[5][0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \port_wants_to[6][0]_50\(1),
      I1 => \^next_switch_matrix_reg[0][0]\(0),
      I2 => \^next_switch_matrix_reg[0][0]\(1),
      I3 => \G0.mem_reg[36]_0\,
      O => \next_switch_matrix[5][0]_i_10_n_0\
    );
\next_switch_matrix[5][0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0048555D00480048"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_11__0_n_0\,
      I1 => \^next_switch_matrix_reg[0][0]\(1),
      I2 => \^next_switch_matrix_reg[0][0]\(0),
      I3 => \next_switch_matrix[5][0]_i_19_n_0\,
      I4 => \next_switch_matrix[5][0]_i_20_n_0\,
      I5 => \next_switch_matrix[5][0]_i_13_n_0\,
      O => \next_switch_matrix[5][0]_i_11_n_0\
    );
\next_switch_matrix[5][0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1115111155555555"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_4__1_n_0\,
      I1 => \^next_switch_matrix_reg[0][0]\(1),
      I2 => \^q\(36),
      I3 => \^q\(37),
      I4 => \^q\(55),
      I5 => \^next_switch_matrix_reg[0][0]\(0),
      O => \next_switch_matrix[5][0]_i_12_n_0\
    );
\next_switch_matrix[5][0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E00FFFF0E000E00"
    )
        port map (
      I0 => \next_switch_matrix[5][0]_i_21_n_0\,
      I1 => \next_switch_matrix[5][0]_i_17_n_0\,
      I2 => \G0.mem_reg[34]_2\,
      I3 => \next_switch_matrix[5][0]_i_23_n_0\,
      I4 => \next_switch_matrix[5][0]_i_24_n_0\,
      I5 => \next_switch_matrix[5][0]_i_25_n_0\,
      O => \next_switch_matrix[5][0]_i_13_n_0\
    );
\next_switch_matrix[5][0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFCFCFFFEFFFEF"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(35),
      I2 => \^q\(55),
      I3 => \^q\(34),
      I4 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I5 => \^q\(37),
      O => \^port_wants_to[6][1]_52\(1)
    );
\next_switch_matrix[5][0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(35),
      I2 => \^q\(34),
      I3 => \^q\(37),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \^port_wants_to[6][1]_52\(0)
    );
\next_switch_matrix[5][0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF007FFFFF"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(0),
      I1 => \port_wants_to[6][0]_50\(1),
      I2 => \^next_switch_matrix_reg[0][0]\(1),
      I3 => \next_switch_matrix[0][0]_i_4__1_n_0\,
      I4 => \^port_wants_to[6][1]_52\(0),
      I5 => \^port_wants_to[6][1]_52\(1),
      O => \next_switch_matrix[5][0]_i_16_n_0\
    );
\next_switch_matrix[5][0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808FF08FFFFFFFF"
    )
        port map (
      I0 => \G0.mem_reg[55]_0\,
      I1 => \^next_switch_matrix_reg[0][0]_0\,
      I2 => \next_switch_matrix[0][0]_i_8__1_n_0\,
      I3 => \G0.mem_reg[55]_1\,
      I4 => \next_switch_matrix[0][0]_i_6__2_n_0\,
      I5 => \^next_switch_matrix_reg[0][0]_1\,
      O => \next_switch_matrix[5][0]_i_17_n_0\
    );
\next_switch_matrix[5][0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF007F"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(0),
      I1 => \port_wants_to[6][0]_50\(1),
      I2 => \^next_switch_matrix_reg[0][0]\(1),
      I3 => \next_switch_matrix[0][0]_i_4__1_n_0\,
      I4 => \^port_wants_to[6][1]_52\(0),
      I5 => \^port_wants_to[6][1]_52\(1),
      O => \next_switch_matrix[5][0]_i_18_n_0\
    );
\next_switch_matrix[5][0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF0CFFAEFFFF"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(1),
      I1 => \G0.mem_reg[34]_0\,
      I2 => \next_switch_matrix[5][0]_i_27_n_0\,
      I3 => \port_wants_to[6][0]_50\(1),
      I4 => \G0.mem_reg[34]_1\,
      I5 => \next_switch_matrix[0][0]_i_6__2_n_0\,
      O => \next_switch_matrix[5][0]_i_19_n_0\
    );
\next_switch_matrix[5][0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55515555"
    )
        port map (
      I0 => \next_switch_matrix[5][0]_i_2__1_n_0\,
      I1 => \next_switch_matrix[5][0]_i_3_n_0\,
      I2 => \next_switch_matrix[5][0]_i_4__0_n_0\,
      I3 => \^port_wants_to[6][2]_51\(0),
      I4 => \^port_wants_to[6][2]_51\(1),
      O => \next_switch_matrix_reg[5][0]\(0)
    );
\next_switch_matrix[5][0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF007FFFFF"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(0),
      I1 => \port_wants_to[6][0]_50\(1),
      I2 => \^next_switch_matrix_reg[0][0]\(1),
      I3 => \next_switch_matrix[0][0]_i_4__1_n_0\,
      I4 => \^port_wants_to[6][1]_52\(1),
      I5 => \^port_wants_to[6][1]_52\(0),
      O => \next_switch_matrix[5][0]_i_20_n_0\
    );
\next_switch_matrix[5][0]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(35),
      I3 => \^q\(34),
      O => \next_switch_matrix[5][0]_i_21_n_0\
    );
\next_switch_matrix[5][0]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BFFFFF"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(0),
      I1 => \port_wants_to[6][0]_50\(1),
      I2 => \^next_switch_matrix_reg[0][0]\(1),
      I3 => \G0.mem_reg[36]_0\,
      I4 => \^port_wants_to[6][1]_52\(1),
      O => \next_switch_matrix[5][0]_i_23_n_0\
    );
\next_switch_matrix[5][0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000B0B"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_6__2_n_0\,
      I1 => \G0.mem_reg[55]_1\,
      I2 => \port_wants_to[6][0]_50\(1),
      I3 => \next_switch_matrix[5][0]_i_27_n_0\,
      I4 => \G0.mem_reg[34]_0\,
      I5 => \next_switch_matrix[5][0]_i_29_n_0\,
      O => \next_switch_matrix[5][0]_i_24_n_0\
    );
\next_switch_matrix[5][0]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \G0.mem_reg[37]_0\,
      I1 => \^port_wants_to[6][1]_52\(1),
      I2 => \^port_wants_to[6][1]_52\(0),
      O => \next_switch_matrix[5][0]_i_25_n_0\
    );
\next_switch_matrix[5][0]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_13__0_n_0\,
      I1 => \G0.mem_reg[37]_0\,
      I2 => \next_switch_matrix[0][0]_i_12__1_n_0\,
      O => \next_switch_matrix[5][0]_i_27_n_0\
    );
\next_switch_matrix[5][0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010303030"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      I2 => \^q\(55),
      I3 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I4 => \^q\(34),
      I5 => \^q\(35),
      O => \next_switch_matrix[5][0]_i_29_n_0\
    );
\next_switch_matrix[5][0]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\(0),
      I1 => \port_wants_to[6][0]_50\(1),
      I2 => \^next_switch_matrix_reg[0][0]\(1),
      I3 => \next_switch_matrix[0][0]_i_4__1_n_0\,
      O => \next_switch_matrix[5][0]_i_2__1_n_0\
    );
\next_switch_matrix[5][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500111105551111"
    )
        port map (
      I0 => \G0.mem_reg[35]_0\,
      I1 => \next_switch_matrix[5][0]_i_9_n_0\,
      I2 => \next_switch_matrix[5][0]_i_10_n_0\,
      I3 => \^port_wants_to[6][2]_51\(0),
      I4 => \^port_wants_to[6][2]_51\(1),
      I5 => \next_switch_matrix[5][0]_i_11_n_0\,
      O => \next_switch_matrix[5][0]_i_3_n_0\
    );
\next_switch_matrix[5][0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEEE"
    )
        port map (
      I0 => \next_switch_matrix[5][0]_i_12_n_0\,
      I1 => \next_switch_matrix[5][0]_i_13_n_0\,
      I2 => \^port_wants_to[6][1]_52\(1),
      I3 => \^port_wants_to[6][1]_52\(0),
      O => \next_switch_matrix[5][0]_i_4__0_n_0\
    );
\next_switch_matrix[5][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFFFBFFFFFBF"
    )
        port map (
      I0 => \^q\(35),
      I1 => \^q\(37),
      I2 => \^q\(55),
      I3 => \^q\(34),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \^port_wants_to[6][2]_51\(0)
    );
\next_switch_matrix[5][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF3CFFF5FFFFFF"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(34),
      I2 => \next_switch_matrix[0][0]_i_5__2_n_0\,
      I3 => \^q\(55),
      I4 => \^q\(35),
      I5 => \^q\(37),
      O => \^port_wants_to[6][2]_51\(1)
    );
\next_switch_matrix[5][0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      O => \port_wants_to[6][0]_50\(1)
    );
\next_switch_matrix[5][0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C477F770C030C03"
    )
        port map (
      I0 => \next_switch_matrix[5][0]_i_16_n_0\,
      I1 => \^port_wants_to[6][2]_51\(0),
      I2 => \next_switch_matrix[5][0]_i_17_n_0\,
      I3 => \port_wants_to[6][0]_50\(1),
      I4 => \next_switch_matrix[5][0]_i_18_n_0\,
      I5 => \next_switch_matrix[5][0]_i_13_n_0\,
      O => \next_switch_matrix[5][0]_i_9_n_0\
    );
\next_switch_matrix[6][0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABAAFFFF"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_2__2_n_0\,
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \^q\(55),
      I4 => \^next_switch_matrix_reg[0][0]\(1),
      I5 => \^next_switch_matrix_reg[0][0]\(0),
      O => \next_switch_matrix_reg[6][0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized6\ is
  port (
    \port_wants_to[6][3]_33\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \next_switch_matrix_reg[4][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[6][0]\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][0]\ : out STD_LOGIC;
    \port_wants_to[6][0]_36\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[5][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[3][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[6][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[0][0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[6][0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[2][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[0][0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \port_wants_to[6][1]_32\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[6][0]_2\ : out STD_LOGIC;
    \next_switch_matrix_reg[0][0]_2\ : out STD_LOGIC;
    \next_switch_matrix_reg[3][0]_0\ : out STD_LOGIC;
    \next_switch_matrix_reg[4][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \next_switch_matrix_reg[0][0]_3\ : out STD_LOGIC;
    \next_switch_matrix_reg[1][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_reg[55]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \mem_reg[55]_0\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[32]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[55]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[33]_0\ : in STD_LOGIC;
    \G0.mem_reg[33]_1\ : in STD_LOGIC;
    \G0.mem_reg[55]_1\ : in STD_LOGIC;
    \G0.mem_reg[37]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_2\ : in STD_LOGIC;
    \G0.mem_reg[55]_3\ : in STD_LOGIC;
    \G0.mem_reg[55]_4\ : in STD_LOGIC;
    \G0.mem_reg[55]_5\ : in STD_LOGIC;
    \G0.mem_reg[55]_6\ : in STD_LOGIC;
    \ctrl_cycle_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \G0.mem_reg[55]_7\ : in STD_LOGIC;
    \G0.mem_reg[55]_8\ : in STD_LOGIC;
    \G0.mem_reg[55]_9\ : in STD_LOGIC;
    \G0.mem_reg[55]_10\ : in STD_LOGIC;
    \G0.mem_reg[55]_11\ : in STD_LOGIC;
    \G0.mem_reg[55]_12\ : in STD_LOGIC;
    \G0.mem_reg[32]_1\ : in STD_LOGIC;
    \G0.mem_reg[55]_13\ : in STD_LOGIC;
    \G0.mem_reg[32]_2\ : in STD_LOGIC;
    \G0.mem_reg[37]_1\ : in STD_LOGIC;
    \G0.mem_reg[55]_14\ : in STD_LOGIC;
    \G0.mem_reg[37]_2\ : in STD_LOGIC;
    \G0.mem_reg[55]_15\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[36]_0\ : in STD_LOGIC;
    \G0.mem_reg[55]_16\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[55]_17\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    \pres_switch_matrix_reg[2][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \pres_switch_matrix_reg[6][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    To_NoC_2 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized6\ : entity is "NoC_3D_Parallel_recv";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized6\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized6\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_switch_matrix[0][0]_i_10__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_11__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_12__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_19_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_21_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_22_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_24_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_30_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_4__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[0][0]_i_9__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_11_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_12_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_3_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_4_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_6_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_7_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[1][0]_i_8_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_10_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_11_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_12_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_14_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_15_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_17_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_18_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_19_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_21_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_22_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_24_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_27_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_28_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_29_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_30_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_31_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_32_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_34_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_36_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_6_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_7_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[2][0]_i_9_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_10__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_11_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_12__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_4__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_6__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_7__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_8__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[3][0]_i_9_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][0]_i_2__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][0]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[4][0]_i_5__1_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[5][0]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[6][0]_i_2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[6][0]_i_3_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[6][0]_i_4_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[6][0]_i_5_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[6][0]_i_7_n_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][0]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][0]_0\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[0][0]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^next_switch_matrix_reg[0][0]_2\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[4][0]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[6][0]\ : STD_LOGIC;
  signal \^next_switch_matrix_reg[6][0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^next_switch_matrix_reg[6][0]_2\ : STD_LOGIC;
  signal \^port_wants_to[6][0]_36\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^port_wants_to[6][1]_32\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \port_wants_to[6][2]_34\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^port_wants_to[6][3]_33\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[6][4]_35\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_11__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_13\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_15\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_18\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_21\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_28\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_30\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \next_switch_matrix[0][0]_i_7\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][0]_i_11\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \next_switch_matrix[1][0]_i_14\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][0]_i_10\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][0]_i_12\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][0]_i_19\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \next_switch_matrix[2][0]_i_21\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \next_switch_matrix[3][0]_i_12__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \next_switch_matrix[4][0]_i_3__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \next_switch_matrix[4][0]_i_7__0\ : label is "soft_lutpair34";
begin
  E(0) <= \^e\(0);
  Q(55 downto 0) <= \^q\(55 downto 0);
  \next_switch_matrix_reg[0][0]\ <= \^next_switch_matrix_reg[0][0]\;
  \next_switch_matrix_reg[0][0]_0\ <= \^next_switch_matrix_reg[0][0]_0\;
  \next_switch_matrix_reg[0][0]_1\(0) <= \^next_switch_matrix_reg[0][0]_1\(0);
  \next_switch_matrix_reg[0][0]_2\ <= \^next_switch_matrix_reg[0][0]_2\;
  \next_switch_matrix_reg[4][0]\ <= \^next_switch_matrix_reg[4][0]\;
  \next_switch_matrix_reg[6][0]\ <= \^next_switch_matrix_reg[6][0]\;
  \next_switch_matrix_reg[6][0]_0\(0) <= \^next_switch_matrix_reg[6][0]_0\(0);
  \next_switch_matrix_reg[6][0]_2\ <= \^next_switch_matrix_reg[6][0]_2\;
  \port_wants_to[6][0]_36\(0) <= \^port_wants_to[6][0]_36\(0);
  \port_wants_to[6][1]_32\(0) <= \^port_wants_to[6][1]_32\(0);
  \port_wants_to[6][3]_33\(2 downto 0) <= \^port_wants_to[6][3]_33\(2 downto 0);
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => To_NoC_2(9),
      Q => \^q\(9),
      R => reset
    );
\mem[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \G0.mem_reg[55]_16\(0),
      I2 => \G0.mem_reg[55]_17\(0),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(0)
    );
\mem[0]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(0),
      I1 => \G0.mem_reg[55]_16\(0),
      I2 => \G0.mem_reg[55]_17\(0),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(0)
    );
\mem[10]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(10),
      I1 => \G0.mem_reg[55]_16\(10),
      I2 => \G0.mem_reg[55]_17\(10),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(10)
    );
\mem[10]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(10),
      I1 => \G0.mem_reg[55]_16\(10),
      I2 => \G0.mem_reg[55]_17\(10),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(10)
    );
\mem[11]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(11),
      I1 => \G0.mem_reg[55]_16\(11),
      I2 => \G0.mem_reg[55]_17\(11),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(11)
    );
\mem[11]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(11),
      I1 => \G0.mem_reg[55]_16\(11),
      I2 => \G0.mem_reg[55]_17\(11),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(11)
    );
\mem[12]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(12),
      I1 => \G0.mem_reg[55]_16\(12),
      I2 => \G0.mem_reg[55]_17\(12),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(12)
    );
\mem[12]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(12),
      I1 => \G0.mem_reg[55]_16\(12),
      I2 => \G0.mem_reg[55]_17\(12),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(12)
    );
\mem[13]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(13),
      I1 => \G0.mem_reg[55]_16\(13),
      I2 => \G0.mem_reg[55]_17\(13),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(13)
    );
\mem[13]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(13),
      I1 => \G0.mem_reg[55]_16\(13),
      I2 => \G0.mem_reg[55]_17\(13),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(13)
    );
\mem[14]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(14),
      I1 => \G0.mem_reg[55]_16\(14),
      I2 => \G0.mem_reg[55]_17\(14),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(14)
    );
\mem[14]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(14),
      I1 => \G0.mem_reg[55]_16\(14),
      I2 => \G0.mem_reg[55]_17\(14),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(14)
    );
\mem[15]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(15),
      I1 => \G0.mem_reg[55]_16\(15),
      I2 => \G0.mem_reg[55]_17\(15),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(15)
    );
\mem[15]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(15),
      I1 => \G0.mem_reg[55]_16\(15),
      I2 => \G0.mem_reg[55]_17\(15),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(15)
    );
\mem[16]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(16),
      I1 => \G0.mem_reg[55]_16\(16),
      I2 => \G0.mem_reg[55]_17\(16),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(16)
    );
\mem[16]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(16),
      I1 => \G0.mem_reg[55]_16\(16),
      I2 => \G0.mem_reg[55]_17\(16),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(16)
    );
\mem[17]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(17),
      I1 => \G0.mem_reg[55]_16\(17),
      I2 => \G0.mem_reg[55]_17\(17),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(17)
    );
\mem[17]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(17),
      I1 => \G0.mem_reg[55]_16\(17),
      I2 => \G0.mem_reg[55]_17\(17),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(17)
    );
\mem[18]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(18),
      I1 => \G0.mem_reg[55]_16\(18),
      I2 => \G0.mem_reg[55]_17\(18),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(18)
    );
\mem[18]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(18),
      I1 => \G0.mem_reg[55]_16\(18),
      I2 => \G0.mem_reg[55]_17\(18),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(18)
    );
\mem[19]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(19),
      I1 => \G0.mem_reg[55]_16\(19),
      I2 => \G0.mem_reg[55]_17\(19),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(19)
    );
\mem[19]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(19),
      I1 => \G0.mem_reg[55]_16\(19),
      I2 => \G0.mem_reg[55]_17\(19),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(19)
    );
\mem[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \G0.mem_reg[55]_16\(1),
      I2 => \G0.mem_reg[55]_17\(1),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(1)
    );
\mem[1]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \G0.mem_reg[55]_16\(1),
      I2 => \G0.mem_reg[55]_17\(1),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(1)
    );
\mem[20]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(20),
      I1 => \G0.mem_reg[55]_16\(20),
      I2 => \G0.mem_reg[55]_17\(20),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(20)
    );
\mem[20]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(20),
      I1 => \G0.mem_reg[55]_16\(20),
      I2 => \G0.mem_reg[55]_17\(20),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(20)
    );
\mem[21]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(21),
      I1 => \G0.mem_reg[55]_16\(21),
      I2 => \G0.mem_reg[55]_17\(21),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(21)
    );
\mem[21]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(21),
      I1 => \G0.mem_reg[55]_16\(21),
      I2 => \G0.mem_reg[55]_17\(21),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(21)
    );
\mem[22]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(22),
      I1 => \G0.mem_reg[55]_16\(22),
      I2 => \G0.mem_reg[55]_17\(22),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(22)
    );
\mem[22]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(22),
      I1 => \G0.mem_reg[55]_16\(22),
      I2 => \G0.mem_reg[55]_17\(22),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(22)
    );
\mem[23]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(23),
      I1 => \G0.mem_reg[55]_16\(23),
      I2 => \G0.mem_reg[55]_17\(23),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(23)
    );
\mem[23]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(23),
      I1 => \G0.mem_reg[55]_16\(23),
      I2 => \G0.mem_reg[55]_17\(23),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(23)
    );
\mem[24]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(24),
      I1 => \G0.mem_reg[55]_16\(24),
      I2 => \G0.mem_reg[55]_17\(24),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(24)
    );
\mem[24]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(24),
      I1 => \G0.mem_reg[55]_16\(24),
      I2 => \G0.mem_reg[55]_17\(24),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(24)
    );
\mem[25]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(25),
      I1 => \G0.mem_reg[55]_16\(25),
      I2 => \G0.mem_reg[55]_17\(25),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(25)
    );
\mem[25]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(25),
      I1 => \G0.mem_reg[55]_16\(25),
      I2 => \G0.mem_reg[55]_17\(25),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(25)
    );
\mem[26]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(26),
      I1 => \G0.mem_reg[55]_16\(26),
      I2 => \G0.mem_reg[55]_17\(26),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(26)
    );
\mem[26]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(26),
      I1 => \G0.mem_reg[55]_16\(26),
      I2 => \G0.mem_reg[55]_17\(26),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(26)
    );
\mem[27]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(27),
      I1 => \G0.mem_reg[55]_16\(27),
      I2 => \G0.mem_reg[55]_17\(27),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(27)
    );
\mem[27]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(27),
      I1 => \G0.mem_reg[55]_16\(27),
      I2 => \G0.mem_reg[55]_17\(27),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(27)
    );
\mem[28]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(28),
      I1 => \G0.mem_reg[55]_16\(28),
      I2 => \G0.mem_reg[55]_17\(28),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(28)
    );
\mem[28]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(28),
      I1 => \G0.mem_reg[55]_16\(28),
      I2 => \G0.mem_reg[55]_17\(28),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(28)
    );
\mem[29]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(29),
      I1 => \G0.mem_reg[55]_16\(29),
      I2 => \G0.mem_reg[55]_17\(29),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(29)
    );
\mem[29]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(29),
      I1 => \G0.mem_reg[55]_16\(29),
      I2 => \G0.mem_reg[55]_17\(29),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(29)
    );
\mem[2]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \G0.mem_reg[55]_16\(2),
      I2 => \G0.mem_reg[55]_17\(2),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(2)
    );
\mem[2]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \G0.mem_reg[55]_16\(2),
      I2 => \G0.mem_reg[55]_17\(2),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(2)
    );
\mem[30]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(30),
      I1 => \G0.mem_reg[55]_16\(30),
      I2 => \G0.mem_reg[55]_17\(30),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(30)
    );
\mem[30]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(30),
      I1 => \G0.mem_reg[55]_16\(30),
      I2 => \G0.mem_reg[55]_17\(30),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(30)
    );
\mem[31]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(31),
      I1 => \G0.mem_reg[55]_16\(31),
      I2 => \G0.mem_reg[55]_17\(31),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(31)
    );
\mem[31]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(31),
      I1 => \G0.mem_reg[55]_16\(31),
      I2 => \G0.mem_reg[55]_17\(31),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(31)
    );
\mem[32]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(32),
      I1 => \G0.mem_reg[55]_16\(32),
      I2 => \G0.mem_reg[55]_17\(32),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(32)
    );
\mem[32]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(32),
      I1 => \G0.mem_reg[55]_16\(32),
      I2 => \G0.mem_reg[55]_17\(32),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(32)
    );
\mem[33]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(33),
      I1 => \G0.mem_reg[55]_16\(33),
      I2 => \G0.mem_reg[55]_17\(33),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(33)
    );
\mem[33]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(33),
      I1 => \G0.mem_reg[55]_16\(33),
      I2 => \G0.mem_reg[55]_17\(33),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(33)
    );
\mem[34]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(34),
      I1 => \G0.mem_reg[55]_16\(34),
      I2 => \G0.mem_reg[55]_17\(34),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(34)
    );
\mem[34]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(34),
      I1 => \G0.mem_reg[55]_16\(34),
      I2 => \G0.mem_reg[55]_17\(34),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(34)
    );
\mem[35]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(35),
      I1 => \G0.mem_reg[55]_16\(35),
      I2 => \G0.mem_reg[55]_17\(35),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(35)
    );
\mem[35]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(35),
      I1 => \G0.mem_reg[55]_16\(35),
      I2 => \G0.mem_reg[55]_17\(35),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(35)
    );
\mem[36]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(36),
      I1 => \G0.mem_reg[55]_16\(36),
      I2 => \G0.mem_reg[55]_17\(36),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(36)
    );
\mem[36]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(36),
      I1 => \G0.mem_reg[55]_16\(36),
      I2 => \G0.mem_reg[55]_17\(36),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(36)
    );
\mem[37]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(37),
      I1 => \G0.mem_reg[55]_16\(37),
      I2 => \G0.mem_reg[55]_17\(37),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(37)
    );
\mem[37]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(37),
      I1 => \G0.mem_reg[55]_16\(37),
      I2 => \G0.mem_reg[55]_17\(37),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(37)
    );
\mem[38]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(38),
      I1 => \G0.mem_reg[55]_16\(38),
      I2 => \G0.mem_reg[55]_17\(38),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(38)
    );
\mem[38]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(38),
      I1 => \G0.mem_reg[55]_16\(38),
      I2 => \G0.mem_reg[55]_17\(38),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(38)
    );
\mem[39]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(39),
      I1 => \G0.mem_reg[55]_16\(39),
      I2 => \G0.mem_reg[55]_17\(39),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(39)
    );
\mem[39]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(39),
      I1 => \G0.mem_reg[55]_16\(39),
      I2 => \G0.mem_reg[55]_17\(39),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(39)
    );
\mem[3]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(3),
      I1 => \G0.mem_reg[55]_16\(3),
      I2 => \G0.mem_reg[55]_17\(3),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(3)
    );
\mem[3]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(3),
      I1 => \G0.mem_reg[55]_16\(3),
      I2 => \G0.mem_reg[55]_17\(3),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(3)
    );
\mem[40]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(40),
      I1 => \G0.mem_reg[55]_16\(40),
      I2 => \G0.mem_reg[55]_17\(40),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(40)
    );
\mem[40]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(40),
      I1 => \G0.mem_reg[55]_16\(40),
      I2 => \G0.mem_reg[55]_17\(40),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(40)
    );
\mem[41]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(41),
      I1 => \G0.mem_reg[55]_16\(41),
      I2 => \G0.mem_reg[55]_17\(41),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(41)
    );
\mem[41]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(41),
      I1 => \G0.mem_reg[55]_16\(41),
      I2 => \G0.mem_reg[55]_17\(41),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(41)
    );
\mem[42]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(42),
      I1 => \G0.mem_reg[55]_16\(42),
      I2 => \G0.mem_reg[55]_17\(42),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(42)
    );
\mem[42]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(42),
      I1 => \G0.mem_reg[55]_16\(42),
      I2 => \G0.mem_reg[55]_17\(42),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(42)
    );
\mem[43]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(43),
      I1 => \G0.mem_reg[55]_16\(43),
      I2 => \G0.mem_reg[55]_17\(43),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(43)
    );
\mem[43]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(43),
      I1 => \G0.mem_reg[55]_16\(43),
      I2 => \G0.mem_reg[55]_17\(43),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(43)
    );
\mem[44]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(44),
      I1 => \G0.mem_reg[55]_16\(44),
      I2 => \G0.mem_reg[55]_17\(44),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(44)
    );
\mem[44]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(44),
      I1 => \G0.mem_reg[55]_16\(44),
      I2 => \G0.mem_reg[55]_17\(44),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(44)
    );
\mem[45]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(45),
      I1 => \G0.mem_reg[55]_16\(45),
      I2 => \G0.mem_reg[55]_17\(45),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(45)
    );
\mem[45]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(45),
      I1 => \G0.mem_reg[55]_16\(45),
      I2 => \G0.mem_reg[55]_17\(45),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(45)
    );
\mem[46]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(46),
      I1 => \G0.mem_reg[55]_16\(46),
      I2 => \G0.mem_reg[55]_17\(46),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(46)
    );
\mem[46]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(46),
      I1 => \G0.mem_reg[55]_16\(46),
      I2 => \G0.mem_reg[55]_17\(46),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(46)
    );
\mem[47]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(47),
      I1 => \G0.mem_reg[55]_16\(47),
      I2 => \G0.mem_reg[55]_17\(47),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(47)
    );
\mem[47]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(47),
      I1 => \G0.mem_reg[55]_16\(47),
      I2 => \G0.mem_reg[55]_17\(47),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(47)
    );
\mem[48]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(48),
      I1 => \G0.mem_reg[55]_16\(48),
      I2 => \G0.mem_reg[55]_17\(48),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(48)
    );
\mem[48]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(48),
      I1 => \G0.mem_reg[55]_16\(48),
      I2 => \G0.mem_reg[55]_17\(48),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(48)
    );
\mem[49]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(49),
      I1 => \G0.mem_reg[55]_16\(49),
      I2 => \G0.mem_reg[55]_17\(49),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(49)
    );
\mem[49]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(49),
      I1 => \G0.mem_reg[55]_16\(49),
      I2 => \G0.mem_reg[55]_17\(49),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(49)
    );
\mem[4]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \G0.mem_reg[55]_16\(4),
      I2 => \G0.mem_reg[55]_17\(4),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(4)
    );
\mem[4]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \G0.mem_reg[55]_16\(4),
      I2 => \G0.mem_reg[55]_17\(4),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(4)
    );
\mem[50]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(50),
      I1 => \G0.mem_reg[55]_16\(50),
      I2 => \G0.mem_reg[55]_17\(50),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(50)
    );
\mem[50]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(50),
      I1 => \G0.mem_reg[55]_16\(50),
      I2 => \G0.mem_reg[55]_17\(50),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(50)
    );
\mem[51]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(51),
      I1 => \G0.mem_reg[55]_16\(51),
      I2 => \G0.mem_reg[55]_17\(51),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(51)
    );
\mem[51]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(51),
      I1 => \G0.mem_reg[55]_16\(51),
      I2 => \G0.mem_reg[55]_17\(51),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(51)
    );
\mem[52]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(52),
      I1 => \G0.mem_reg[55]_16\(52),
      I2 => \G0.mem_reg[55]_17\(52),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(52)
    );
\mem[52]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(52),
      I1 => \G0.mem_reg[55]_16\(52),
      I2 => \G0.mem_reg[55]_17\(52),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(52)
    );
\mem[53]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(53),
      I1 => \G0.mem_reg[55]_16\(53),
      I2 => \G0.mem_reg[55]_17\(53),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(53)
    );
\mem[53]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(53),
      I1 => \G0.mem_reg[55]_16\(53),
      I2 => \G0.mem_reg[55]_17\(53),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(53)
    );
\mem[54]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(54),
      I1 => \G0.mem_reg[55]_16\(54),
      I2 => \G0.mem_reg[55]_17\(54),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(54)
    );
\mem[54]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(54),
      I1 => \G0.mem_reg[55]_16\(54),
      I2 => \G0.mem_reg[55]_17\(54),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(54)
    );
\mem[55]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctrl_cycle_reg[1]\(0),
      I1 => \ctrl_cycle_reg[1]\(1),
      O => \^e\(0)
    );
\mem[55]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(55),
      I1 => \G0.mem_reg[55]_16\(55),
      I2 => \G0.mem_reg[55]_17\(55),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(55)
    );
\mem[55]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(55),
      I1 => \G0.mem_reg[55]_16\(55),
      I2 => \G0.mem_reg[55]_17\(55),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(55)
    );
\mem[5]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(5),
      I1 => \G0.mem_reg[55]_16\(5),
      I2 => \G0.mem_reg[55]_17\(5),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(5)
    );
\mem[5]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(5),
      I1 => \G0.mem_reg[55]_16\(5),
      I2 => \G0.mem_reg[55]_17\(5),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(5)
    );
\mem[6]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(6),
      I1 => \G0.mem_reg[55]_16\(6),
      I2 => \G0.mem_reg[55]_17\(6),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(6)
    );
\mem[6]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(6),
      I1 => \G0.mem_reg[55]_16\(6),
      I2 => \G0.mem_reg[55]_17\(6),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(6)
    );
\mem[7]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(7),
      I1 => \G0.mem_reg[55]_16\(7),
      I2 => \G0.mem_reg[55]_17\(7),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(7)
    );
\mem[7]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(7),
      I1 => \G0.mem_reg[55]_16\(7),
      I2 => \G0.mem_reg[55]_17\(7),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(7)
    );
\mem[8]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(8),
      I1 => \G0.mem_reg[55]_16\(8),
      I2 => \G0.mem_reg[55]_17\(8),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(8)
    );
\mem[8]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(8),
      I1 => \G0.mem_reg[55]_16\(8),
      I2 => \G0.mem_reg[55]_17\(8),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(8)
    );
\mem[9]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(9),
      I1 => \G0.mem_reg[55]_16\(9),
      I2 => \G0.mem_reg[55]_17\(9),
      I3 => \pres_switch_matrix_reg[2][2]\(0),
      I4 => \pres_switch_matrix_reg[2][2]\(1),
      I5 => \pres_switch_matrix_reg[2][2]\(2),
      O => \mem_reg[55]\(9)
    );
\mem[9]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F0CC00"
    )
        port map (
      I0 => \^q\(9),
      I1 => \G0.mem_reg[55]_16\(9),
      I2 => \G0.mem_reg[55]_17\(9),
      I3 => \pres_switch_matrix_reg[6][2]\(0),
      I4 => \pres_switch_matrix_reg[6][2]\(1),
      I5 => \pres_switch_matrix_reg[6][2]\(2),
      O => \mem_reg[55]_0\(9)
    );
\next_switch_matrix[0][0]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFB51"
    )
        port map (
      I0 => \^port_wants_to[6][1]_32\(0),
      I1 => \G0.mem_reg[55]_5\,
      I2 => \^next_switch_matrix_reg[0][0]_0\,
      I3 => \next_switch_matrix[3][0]_i_7__0_n_0\,
      I4 => \next_switch_matrix[0][0]_i_21_n_0\,
      O => \next_switch_matrix[0][0]_i_10__0_n_0\
    );
\next_switch_matrix[0][0]_i_11__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      I2 => \^q\(37),
      I3 => \next_switch_matrix[1][0]_i_7_n_0\,
      I4 => \^q\(55),
      O => \next_switch_matrix[0][0]_i_11__1_n_0\
    );
\next_switch_matrix[0][0]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055577777"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_22_n_0\,
      I1 => \^port_wants_to[6][0]_36\(0),
      I2 => \G0.mem_reg[32]_1\,
      I3 => \G0.mem_reg[55]_13\,
      I4 => \G0.mem_reg[32]_2\,
      I5 => \next_switch_matrix[0][0]_i_24_n_0\,
      O => \next_switch_matrix[0][0]_i_12__0_n_0\
    );
\next_switch_matrix[0][0]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      O => \^port_wants_to[6][0]_36\(0)
    );
\next_switch_matrix[0][0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2300"
    )
        port map (
      I0 => \next_switch_matrix[1][0]_i_7_n_0\,
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \^q\(55),
      O => \^next_switch_matrix_reg[6][0]_2\
    );
\next_switch_matrix[0][0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF54FFFFFFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[1][0]_i_7_n_0\,
      I1 => \^q\(32),
      I2 => \^q\(33),
      I3 => \^q\(37),
      I4 => \^q\(36),
      I5 => \^q\(55),
      O => \^next_switch_matrix_reg[4][0]\
    );
\next_switch_matrix[0][0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F5FD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \next_switch_matrix[1][0]_i_7_n_0\,
      O => \^next_switch_matrix_reg[0][0]\
    );
\next_switch_matrix[0][0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55030000000000"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(32),
      I2 => \^q\(33),
      I3 => \^q\(37),
      I4 => \next_switch_matrix[1][0]_i_7_n_0\,
      I5 => \^q\(55),
      O => \next_switch_matrix[0][0]_i_19_n_0\
    );
\next_switch_matrix[0][0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \G0.mem_reg[37]_2\,
      I1 => \^port_wants_to[6][1]_32\(0),
      I2 => \next_switch_matrix[0][0]_i_4__0_n_0\,
      O => \^next_switch_matrix_reg[0][0]_1\(0)
    );
\next_switch_matrix[0][0]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\,
      I1 => \G0.mem_reg[55]_4\,
      I2 => \G0.mem_reg[55]_5\,
      I3 => \^next_switch_matrix_reg[4][0]\,
      I4 => \next_switch_matrix[3][0]_i_10__0_n_0\,
      O => \^next_switch_matrix_reg[0][0]_0\
    );
\next_switch_matrix[0][0]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FFF"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      I2 => \next_switch_matrix[1][0]_i_7_n_0\,
      I3 => \^q\(55),
      O => \next_switch_matrix[0][0]_i_21_n_0\
    );
\next_switch_matrix[0][0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55454445"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_30_n_0\,
      I1 => \G0.mem_reg[37]_1\,
      I2 => \G0.mem_reg[55]_5\,
      I3 => \^next_switch_matrix_reg[4][0]\,
      I4 => \G0.mem_reg[37]_0\,
      I5 => \next_switch_matrix[3][0]_i_10__0_n_0\,
      O => \next_switch_matrix[0][0]_i_22_n_0\
    );
\next_switch_matrix[0][0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FDF5FDF5FDF5F5"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \next_switch_matrix[1][0]_i_7_n_0\,
      I4 => \^q\(33),
      I5 => \^q\(32),
      O => \next_switch_matrix[0][0]_i_24_n_0\
    );
\next_switch_matrix[0][0]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \G0.mem_reg[55]_14\,
      I1 => \^next_switch_matrix_reg[4][0]\,
      I2 => \^next_switch_matrix_reg[0][0]\,
      O => \next_switch_matrix_reg[0][0]_3\
    );
\next_switch_matrix[0][0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222FFFFF"
    )
        port map (
      I0 => \^q\(36),
      I1 => \^q\(37),
      I2 => \^q\(34),
      I3 => \^q\(35),
      I4 => \^q\(55),
      O => \^port_wants_to[6][1]_32\(0)
    );
\next_switch_matrix[0][0]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DCFF"
    )
        port map (
      I0 => \next_switch_matrix[1][0]_i_7_n_0\,
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \^q\(55),
      I4 => \G0.mem_reg[32]_0\,
      O => \next_switch_matrix[0][0]_i_30_n_0\
    );
\next_switch_matrix[0][0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF20FF"
    )
        port map (
      I0 => \G0.mem_reg[36]_0\,
      I1 => \next_switch_matrix[0][0]_i_9__0_n_0\,
      I2 => \next_switch_matrix[0][0]_i_10__0_n_0\,
      I3 => \next_switch_matrix[0][0]_i_11__1_n_0\,
      I4 => \next_switch_matrix[0][0]_i_12__0_n_0\,
      O => \next_switch_matrix[0][0]_i_4__0_n_0\
    );
\next_switch_matrix[0][0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \^q\(37),
      I3 => \next_switch_matrix[1][0]_i_7_n_0\,
      O => \^next_switch_matrix_reg[0][0]_2\
    );
\next_switch_matrix[0][0]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000007F"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\,
      I1 => \^port_wants_to[6][0]_36\(0),
      I2 => \next_switch_matrix[0][0]_i_12__0_n_0\,
      I3 => \next_switch_matrix[0][0]_i_19_n_0\,
      I4 => \G0.mem_reg[32]_0\,
      O => \next_switch_matrix[0][0]_i_9__0_n_0\
    );
\next_switch_matrix[1][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0E0C0"
    )
        port map (
      I0 => \G0.mem_reg[55]_14\,
      I1 => \next_switch_matrix[1][0]_i_3_n_0\,
      I2 => \next_switch_matrix[1][0]_i_4_n_0\,
      I3 => \next_switch_matrix[1][0]_i_5__0_n_0\,
      I4 => \next_switch_matrix[1][0]_i_6_n_0\,
      O => \next_switch_matrix_reg[1][0]\(0)
    );
\next_switch_matrix[1][0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E000000"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \next_switch_matrix[1][0]_i_7_n_0\,
      I3 => \^q\(37),
      I4 => \^q\(55),
      O => \next_switch_matrix[1][0]_i_11_n_0\
    );
\next_switch_matrix[1][0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FD0000"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_21_n_0\,
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \next_switch_matrix[1][0]_i_7_n_0\,
      I4 => \^q\(55),
      I5 => \next_switch_matrix[6][0]_i_5_n_0\,
      O => \next_switch_matrix[1][0]_i_12_n_0\
    );
\next_switch_matrix[1][0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(36),
      I2 => \^q\(55),
      O => \next_switch_matrix_reg[3][0]_0\
    );
\next_switch_matrix[1][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFDFDFDFFFDF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \next_switch_matrix[1][0]_i_7_n_0\,
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \next_switch_matrix[1][0]_i_3_n_0\
    );
\next_switch_matrix[1][0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \^port_wants_to[6][3]_33\(1),
      I1 => \^port_wants_to[6][3]_33\(0),
      I2 => \next_switch_matrix[2][0]_i_5__0_n_0\,
      I3 => \^port_wants_to[6][3]_33\(2),
      I4 => \next_switch_matrix[1][0]_i_8_n_0\,
      O => \next_switch_matrix[1][0]_i_4_n_0\
    );
\next_switch_matrix[1][0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFFFFFFCFAFFFAF"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_2_n_0\,
      I1 => \next_switch_matrix[6][0]_i_4_n_0\,
      I2 => \port_wants_to[6][4]_35\(1),
      I3 => \next_switch_matrix[3][0]_i_4__0_n_0\,
      I4 => \G0.mem_reg[55]_1\,
      I5 => \G0.mem_reg[37]_0\,
      O => \next_switch_matrix[1][0]_i_5__0_n_0\
    );
\next_switch_matrix[1][0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABFFF"
    )
        port map (
      I0 => \next_switch_matrix[6][0]_i_3_n_0\,
      I1 => \^port_wants_to[6][3]_33\(0),
      I2 => \^port_wants_to[6][3]_33\(1),
      I3 => \^port_wants_to[6][3]_33\(2),
      I4 => \next_switch_matrix[6][0]_i_2_n_0\,
      O => \next_switch_matrix[1][0]_i_6_n_0\
    );
\next_switch_matrix[1][0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(34),
      I1 => \^q\(35),
      O => \next_switch_matrix[1][0]_i_7_n_0\
    );
\next_switch_matrix[1][0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2FFF2F2F2F2F2"
    )
        port map (
      I0 => \^port_wants_to[6][1]_32\(0),
      I1 => \next_switch_matrix[0][0]_i_4__0_n_0\,
      I2 => \G0.mem_reg[55]_10\,
      I3 => \next_switch_matrix[1][0]_i_11_n_0\,
      I4 => \next_switch_matrix[2][0]_i_15_n_0\,
      I5 => \next_switch_matrix[1][0]_i_12_n_0\,
      O => \next_switch_matrix[1][0]_i_8_n_0\
    );
\next_switch_matrix[2][0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^port_wants_to[6][3]_33\(1),
      I1 => \next_switch_matrix[6][0]_i_4_n_0\,
      I2 => \G0.mem_reg[32]_0\,
      O => \next_switch_matrix[2][0]_i_10_n_0\
    );
\next_switch_matrix[2][0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A800A8A8"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_10__0_n_0\,
      I1 => \next_switch_matrix[2][0]_i_18_n_0\,
      I2 => \next_switch_matrix[2][0]_i_19_n_0\,
      I3 => \G0.mem_reg[36]_0\,
      I4 => \next_switch_matrix[0][0]_i_11__1_n_0\,
      O => \next_switch_matrix[2][0]_i_11_n_0\
    );
\next_switch_matrix[2][0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40004040"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_12__0_n_0\,
      I1 => \^q\(55),
      I2 => \next_switch_matrix[1][0]_i_7_n_0\,
      I3 => \^q\(37),
      I4 => \^q\(36),
      O => \next_switch_matrix[2][0]_i_12_n_0\
    );
\next_switch_matrix[2][0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF8AFFFF"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_21_n_0\,
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \next_switch_matrix[1][0]_i_7_n_0\,
      I4 => \^q\(55),
      I5 => \next_switch_matrix[6][0]_i_5_n_0\,
      O => \next_switch_matrix[2][0]_i_14_n_0\
    );
\next_switch_matrix[2][0]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFBB8B"
    )
        port map (
      I0 => \G0.mem_reg[32]_0\,
      I1 => \next_switch_matrix[2][0]_i_22_n_0\,
      I2 => \G0.mem_reg[55]_6\,
      I3 => \next_switch_matrix[2][0]_i_24_n_0\,
      I4 => \next_switch_matrix[6][0]_i_7_n_0\,
      O => \next_switch_matrix[2][0]_i_15_n_0\
    );
\next_switch_matrix[2][0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555FFDFDFD7F"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \next_switch_matrix[1][0]_i_7_n_0\,
      I3 => \^q\(33),
      I4 => \^q\(32),
      I5 => \^q\(37),
      O => \next_switch_matrix[2][0]_i_17_n_0\
    );
\next_switch_matrix[2][0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEEAAEAEAEEEA"
    )
        port map (
      I0 => \G0.mem_reg[32]_0\,
      I1 => \^q\(55),
      I2 => \next_switch_matrix[1][0]_i_7_n_0\,
      I3 => \^q\(37),
      I4 => \next_switch_matrix[2][0]_i_21_n_0\,
      I5 => \^q\(36),
      O => \next_switch_matrix[2][0]_i_18_n_0\
    );
\next_switch_matrix[2][0]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA22AAA2"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_12__0_n_0\,
      I1 => \^q\(55),
      I2 => \^q\(36),
      I3 => \^q\(37),
      I4 => \next_switch_matrix[1][0]_i_7_n_0\,
      O => \next_switch_matrix[2][0]_i_19_n_0\
    );
\next_switch_matrix[2][0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FBFF"
    )
        port map (
      I0 => \^port_wants_to[6][3]_33\(0),
      I1 => \^port_wants_to[6][3]_33\(1),
      I2 => \^port_wants_to[6][3]_33\(2),
      I3 => \next_switch_matrix[2][0]_i_5__0_n_0\,
      I4 => \next_switch_matrix[2][0]_i_6_n_0\,
      O => \next_switch_matrix_reg[2][0]\(0)
    );
\next_switch_matrix[2][0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      O => \next_switch_matrix[2][0]_i_21_n_0\
    );
\next_switch_matrix[2][0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5F5F7F7F7F5"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \next_switch_matrix[1][0]_i_7_n_0\,
      I3 => \^q\(32),
      I4 => \^q\(33),
      I5 => \^q\(36),
      O => \next_switch_matrix[2][0]_i_22_n_0\
    );
\next_switch_matrix[2][0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_27_n_0\,
      I1 => \next_switch_matrix[2][0]_i_28_n_0\,
      I2 => \^next_switch_matrix_reg[6][0]_0\(0),
      I3 => \next_switch_matrix[2][0]_i_29_n_0\,
      I4 => \^next_switch_matrix_reg[6][0]\,
      I5 => \next_switch_matrix[2][0]_i_30_n_0\,
      O => \next_switch_matrix[2][0]_i_24_n_0\
    );
\next_switch_matrix[2][0]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEAAAA"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_7__0_n_0\,
      I1 => \^port_wants_to[6][1]_32\(0),
      I2 => \next_switch_matrix[2][0]_i_31_n_0\,
      I3 => \next_switch_matrix[0][0]_i_10__0_n_0\,
      I4 => \next_switch_matrix[2][0]_i_12_n_0\,
      O => \next_switch_matrix[2][0]_i_27_n_0\
    );
\next_switch_matrix[2][0]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAEAE"
    )
        port map (
      I0 => \G0.mem_reg[55]_9\,
      I1 => \next_switch_matrix[2][0]_i_12_n_0\,
      I2 => \^port_wants_to[6][1]_32\(0),
      I3 => \next_switch_matrix[2][0]_i_31_n_0\,
      I4 => \next_switch_matrix[0][0]_i_10__0_n_0\,
      O => \next_switch_matrix[2][0]_i_28_n_0\
    );
\next_switch_matrix[2][0]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFAAAA"
    )
        port map (
      I0 => \G0.mem_reg[55]_10\,
      I1 => \next_switch_matrix[2][0]_i_31_n_0\,
      I2 => \next_switch_matrix[0][0]_i_10__0_n_0\,
      I3 => \next_switch_matrix[2][0]_i_32_n_0\,
      I4 => \^port_wants_to[6][1]_32\(0),
      O => \next_switch_matrix[2][0]_i_29_n_0\
    );
\next_switch_matrix[2][0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFFFFFF1F"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^q\(33),
      I2 => \^q\(55),
      I3 => \^q\(36),
      I4 => \next_switch_matrix[1][0]_i_7_n_0\,
      I5 => \^q\(37),
      O => \^port_wants_to[6][3]_33\(0)
    );
\next_switch_matrix[2][0]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000BFFFF"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_31_n_0\,
      I1 => \next_switch_matrix[0][0]_i_10__0_n_0\,
      I2 => \next_switch_matrix[2][0]_i_32_n_0\,
      I3 => \^port_wants_to[6][1]_32\(0),
      I4 => \G0.mem_reg[37]_2\,
      O => \next_switch_matrix[2][0]_i_30_n_0\
    );
\next_switch_matrix[2][0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF51FF51515151"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_18_n_0\,
      I1 => \next_switch_matrix[0][0]_i_12__0_n_0\,
      I2 => \^next_switch_matrix_reg[6][0]_2\,
      I3 => \G0.mem_reg[55]_12\,
      I4 => \next_switch_matrix[2][0]_i_34_n_0\,
      I5 => \next_switch_matrix[0][0]_i_11__1_n_0\,
      O => \next_switch_matrix[2][0]_i_31_n_0\
    );
\next_switch_matrix[2][0]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_12__0_n_0\,
      I1 => \^q\(55),
      I2 => \next_switch_matrix[1][0]_i_7_n_0\,
      I3 => \^q\(37),
      I4 => \next_switch_matrix[2][0]_i_21_n_0\,
      O => \next_switch_matrix[2][0]_i_32_n_0\
    );
\next_switch_matrix[2][0]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFEAA"
    )
        port map (
      I0 => \^port_wants_to[6][0]_36\(0),
      I1 => \G0.mem_reg[32]_1\,
      I2 => \G0.mem_reg[55]_13\,
      I3 => \G0.mem_reg[32]_2\,
      I4 => \^next_switch_matrix_reg[0][0]_2\,
      I5 => \next_switch_matrix[2][0]_i_36_n_0\,
      O => \next_switch_matrix[2][0]_i_34_n_0\
    );
\next_switch_matrix[2][0]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FF5757FFFFFFFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(35),
      I2 => \^q\(34),
      I3 => \^q\(37),
      I4 => \^q\(36),
      I5 => D(0),
      O => \next_switch_matrix[2][0]_i_36_n_0\
    );
\next_switch_matrix[2][0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F5FFFFFFF7F"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(36),
      I2 => \next_switch_matrix[1][0]_i_7_n_0\,
      I3 => \^q\(33),
      I4 => \^q\(32),
      I5 => \^q\(37),
      O => \^port_wants_to[6][3]_33\(1)
    );
\next_switch_matrix[2][0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55575557FDFFFF57"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(33),
      I2 => \^q\(32),
      I3 => \next_switch_matrix[1][0]_i_7_n_0\,
      I4 => \^q\(36),
      I5 => \^q\(37),
      O => \^port_wants_to[6][3]_33\(2)
    );
\next_switch_matrix[2][0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400045504"
    )
        port map (
      I0 => \next_switch_matrix[6][0]_i_3_n_0\,
      I1 => \next_switch_matrix[2][0]_i_7_n_0\,
      I2 => \G0.mem_reg[55]_8\,
      I3 => \^port_wants_to[6][3]_33\(2),
      I4 => \next_switch_matrix[2][0]_i_9_n_0\,
      I5 => \next_switch_matrix[2][0]_i_10_n_0\,
      O => \next_switch_matrix[2][0]_i_5__0_n_0\
    );
\next_switch_matrix[2][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10FF10FF10FFFF"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_11_n_0\,
      I1 => \^port_wants_to[6][1]_32\(0),
      I2 => \next_switch_matrix[2][0]_i_12_n_0\,
      I3 => \G0.mem_reg[55]_9\,
      I4 => \next_switch_matrix[2][0]_i_14_n_0\,
      I5 => \next_switch_matrix[2][0]_i_15_n_0\,
      O => \next_switch_matrix[2][0]_i_6_n_0\
    );
\next_switch_matrix[2][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02320E3EC2F2CEFE"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]_1\(0),
      I1 => \^port_wants_to[6][3]_33\(1),
      I2 => \^port_wants_to[6][3]_33\(0),
      I3 => \next_switch_matrix[1][0]_i_8_n_0\,
      I4 => \next_switch_matrix[2][0]_i_6_n_0\,
      I5 => \next_switch_matrix[3][0]_i_2_n_0\,
      O => \next_switch_matrix[2][0]_i_7_n_0\
    );
\next_switch_matrix[2][0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDDDFFF0"
    )
        port map (
      I0 => \G0.mem_reg[55]_0\(0),
      I1 => \next_switch_matrix[4][0]_i_2__1_n_0\,
      I2 => \G0.mem_reg[33]_1\,
      I3 => \next_switch_matrix[5][0]_i_2__0_n_0\,
      I4 => \next_switch_matrix[2][0]_i_17_n_0\,
      I5 => \^port_wants_to[6][3]_33\(1),
      O => \next_switch_matrix[2][0]_i_9_n_0\
    );
\next_switch_matrix[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555551515155"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_2_n_0\,
      I1 => \port_wants_to[6][4]_35\(1),
      I2 => \next_switch_matrix[3][0]_i_4__0_n_0\,
      I3 => \next_switch_matrix[3][0]_i_5__0_n_0\,
      I4 => \next_switch_matrix[3][0]_i_6__1_n_0\,
      I5 => \next_switch_matrix[1][0]_i_6_n_0\,
      O => \next_switch_matrix_reg[3][0]\(0)
    );
\next_switch_matrix[3][0]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557DDDF"
    )
        port map (
      I0 => \^port_wants_to[6][0]_36\(0),
      I1 => \^next_switch_matrix_reg[0][0]\,
      I2 => \^next_switch_matrix_reg[4][0]\,
      I3 => \G0.mem_reg[55]_15\(0),
      I4 => \G0.mem_reg[55]_1\,
      O => \next_switch_matrix[3][0]_i_10__0_n_0\
    );
\next_switch_matrix[3][0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB00AA0000000000"
    )
        port map (
      I0 => \^q\(37),
      I1 => \^q\(32),
      I2 => \^q\(33),
      I3 => \next_switch_matrix[1][0]_i_7_n_0\,
      I4 => \^q\(36),
      I5 => \^q\(55),
      O => \next_switch_matrix[3][0]_i_11_n_0\
    );
\next_switch_matrix[3][0]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0FF"
    )
        port map (
      I0 => \G0.mem_reg[32]_0\,
      I1 => \next_switch_matrix[6][0]_i_4_n_0\,
      I2 => \^port_wants_to[6][3]_33\(1),
      I3 => \^port_wants_to[6][3]_33\(2),
      O => \next_switch_matrix[3][0]_i_12__0_n_0\
    );
\next_switch_matrix[3][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_12_n_0\,
      I1 => \next_switch_matrix[2][0]_i_11_n_0\,
      I2 => \^port_wants_to[6][1]_32\(0),
      I3 => \next_switch_matrix[3][0]_i_7__0_n_0\,
      O => \next_switch_matrix[3][0]_i_2_n_0\
    );
\next_switch_matrix[3][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FFF5FFF5FFFDFF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \next_switch_matrix[1][0]_i_7_n_0\,
      I2 => \^q\(37),
      I3 => \^q\(36),
      I4 => \^q\(33),
      I5 => \^q\(32),
      O => \port_wants_to[6][4]_35\(1)
    );
\next_switch_matrix[3][0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF10FFFFFFFFFF"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \next_switch_matrix[1][0]_i_7_n_0\,
      I3 => \^q\(36),
      I4 => \^q\(37),
      I5 => \^q\(55),
      O => \next_switch_matrix[3][0]_i_4__0_n_0\
    );
\next_switch_matrix[3][0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_8__0_n_0\,
      I1 => \next_switch_matrix[3][0]_i_9_n_0\,
      I2 => \^port_wants_to[6][3]_33\(2),
      I3 => \next_switch_matrix[1][0]_i_8_n_0\,
      O => \next_switch_matrix[3][0]_i_5__0_n_0\
    );
\next_switch_matrix[3][0]_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33000505"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_2_n_0\,
      I1 => \next_switch_matrix[6][0]_i_4_n_0\,
      I2 => \G0.mem_reg[55]_2\,
      I3 => \G0.mem_reg[55]_1\,
      I4 => \next_switch_matrix[3][0]_i_4__0_n_0\,
      O => \next_switch_matrix[3][0]_i_6__1_n_0\
    );
\next_switch_matrix[3][0]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0F4"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\,
      I1 => \^next_switch_matrix_reg[4][0]\,
      I2 => \G0.mem_reg[55]_2\,
      I3 => \next_switch_matrix[3][0]_i_10__0_n_0\,
      O => \next_switch_matrix[3][0]_i_7__0_n_0\
    );
\next_switch_matrix[3][0]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAFFFFFFFFFF"
    )
        port map (
      I0 => \G0.mem_reg[55]_14\,
      I1 => \next_switch_matrix[2][0]_i_21_n_0\,
      I2 => \next_switch_matrix[1][0]_i_7_n_0\,
      I3 => \^q\(36),
      I4 => \^q\(37),
      I5 => \^q\(55),
      O => \next_switch_matrix[3][0]_i_8__0_n_0\
    );
\next_switch_matrix[3][0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFD55FDFD"
    )
        port map (
      I0 => \next_switch_matrix[3][0]_i_11_n_0\,
      I1 => \next_switch_matrix[3][0]_i_12__0_n_0\,
      I2 => \next_switch_matrix[2][0]_i_9_n_0\,
      I3 => \G0.mem_reg[55]_7\,
      I4 => \next_switch_matrix[2][0]_i_7_n_0\,
      I5 => \next_switch_matrix[6][0]_i_3_n_0\,
      O => \next_switch_matrix[3][0]_i_9_n_0\
    );
\next_switch_matrix[4][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \next_switch_matrix[4][0]_i_2__1_n_0\,
      O => \next_switch_matrix_reg[4][0]_0\(0)
    );
\next_switch_matrix[4][0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEFE"
    )
        port map (
      I0 => \next_switch_matrix[4][0]_i_3__0_n_0\,
      I1 => \G0.mem_reg[55]_3\,
      I2 => \next_switch_matrix[4][0]_i_5__1_n_0\,
      I3 => \^next_switch_matrix_reg[6][0]\,
      I4 => \^next_switch_matrix_reg[6][0]_0\(0),
      I5 => \next_switch_matrix[2][0]_i_15_n_0\,
      O => \next_switch_matrix[4][0]_i_2__1_n_0\
    );
\next_switch_matrix[4][0]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \^next_switch_matrix_reg[0][0]\,
      I1 => \^next_switch_matrix_reg[4][0]\,
      I2 => \^port_wants_to[6][0]_36\(0),
      I3 => \G0.mem_reg[55]_0\(0),
      O => \next_switch_matrix[4][0]_i_3__0_n_0\
    );
\next_switch_matrix[4][0]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF02FFFF"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_21_n_0\,
      I1 => \^q\(37),
      I2 => \^q\(36),
      I3 => \next_switch_matrix[1][0]_i_7_n_0\,
      I4 => \^q\(55),
      I5 => \next_switch_matrix[6][0]_i_5_n_0\,
      O => \next_switch_matrix[4][0]_i_5__1_n_0\
    );
\next_switch_matrix[4][0]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAFFFAFFFFFFFF"
    )
        port map (
      I0 => \next_switch_matrix[1][0]_i_7_n_0\,
      I1 => \^q\(37),
      I2 => \^q\(33),
      I3 => \^q\(32),
      I4 => \^q\(36),
      I5 => \^q\(55),
      O => \^next_switch_matrix_reg[6][0]\
    );
\next_switch_matrix[4][0]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F7F7FF"
    )
        port map (
      I0 => \^q\(55),
      I1 => \^q\(37),
      I2 => \next_switch_matrix[1][0]_i_7_n_0\,
      I3 => \^q\(32),
      I4 => \^q\(33),
      O => \^next_switch_matrix_reg[6][0]_0\(0)
    );
\next_switch_matrix[5][0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DFFF"
    )
        port map (
      I0 => \^port_wants_to[6][3]_33\(2),
      I1 => \^port_wants_to[6][3]_33\(1),
      I2 => \^port_wants_to[6][3]_33\(0),
      I3 => \next_switch_matrix[2][0]_i_5__0_n_0\,
      I4 => \next_switch_matrix[5][0]_i_2__0_n_0\,
      O => \next_switch_matrix_reg[5][0]\(0)
    );
\next_switch_matrix[5][0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEAA"
    )
        port map (
      I0 => \next_switch_matrix[5][0]_i_3__0_n_0\,
      I1 => \next_switch_matrix[4][0]_i_5__1_n_0\,
      I2 => \^next_switch_matrix_reg[6][0]_0\(0),
      I3 => \^next_switch_matrix_reg[6][0]\,
      I4 => \next_switch_matrix[2][0]_i_15_n_0\,
      O => \next_switch_matrix[5][0]_i_2__0_n_0\
    );
\next_switch_matrix[5][0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAEA"
    )
        port map (
      I0 => \G0.mem_reg[33]_0\,
      I1 => \^next_switch_matrix_reg[4][0]\,
      I2 => \^next_switch_matrix_reg[0][0]\,
      I3 => \^port_wants_to[6][0]_36\(0),
      I4 => \G0.mem_reg[33]_1\,
      O => \next_switch_matrix[5][0]_i_3__0_n_0\
    );
\next_switch_matrix[6][0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFBFF"
    )
        port map (
      I0 => \next_switch_matrix[6][0]_i_2_n_0\,
      I1 => \^port_wants_to[6][3]_33\(2),
      I2 => \^port_wants_to[6][3]_33\(0),
      I3 => \^port_wants_to[6][3]_33\(1),
      I4 => \next_switch_matrix[6][0]_i_3_n_0\,
      I5 => \next_switch_matrix[6][0]_i_4_n_0\,
      O => \next_switch_matrix_reg[6][0]_1\(0)
    );
\next_switch_matrix[6][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFE0EFEF"
    )
        port map (
      I0 => \next_switch_matrix[2][0]_i_10_n_0\,
      I1 => \next_switch_matrix[2][0]_i_9_n_0\,
      I2 => \^port_wants_to[6][3]_33\(2),
      I3 => \G0.mem_reg[55]_8\,
      I4 => \next_switch_matrix[2][0]_i_7_n_0\,
      O => \next_switch_matrix[6][0]_i_2_n_0\
    );
\next_switch_matrix[6][0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBBBBB"
    )
        port map (
      I0 => \next_switch_matrix[6][0]_i_5_n_0\,
      I1 => \next_switch_matrix[2][0]_i_15_n_0\,
      I2 => \^next_switch_matrix_reg[6][0]\,
      I3 => \port_wants_to[6][2]_34\(2),
      I4 => \^next_switch_matrix_reg[6][0]_0\(0),
      O => \next_switch_matrix[6][0]_i_3_n_0\
    );
\next_switch_matrix[6][0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => \next_switch_matrix[6][0]_i_7_n_0\,
      I1 => \next_switch_matrix[2][0]_i_15_n_0\,
      I2 => \next_switch_matrix[4][0]_i_5__1_n_0\,
      I3 => \^next_switch_matrix_reg[6][0]\,
      I4 => \^next_switch_matrix_reg[6][0]_0\(0),
      O => \next_switch_matrix[6][0]_i_4_n_0\
    );
\next_switch_matrix[6][0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFB"
    )
        port map (
      I0 => \next_switch_matrix[0][0]_i_12__0_n_0\,
      I1 => \^port_wants_to[6][1]_32\(0),
      I2 => \next_switch_matrix[0][0]_i_19_n_0\,
      I3 => \next_switch_matrix[2][0]_i_11_n_0\,
      O => \next_switch_matrix[6][0]_i_5_n_0\
    );
\next_switch_matrix[6][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDDDFDDDFDDDD"
    )
        port map (
      I0 => \^q\(55),
      I1 => \next_switch_matrix[1][0]_i_7_n_0\,
      I2 => \^q\(36),
      I3 => \^q\(37),
      I4 => \^q\(32),
      I5 => \^q\(33),
      O => \port_wants_to[6][2]_34\(2)
    );
\next_switch_matrix[6][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCDCDCDCDCDCDCDF"
    )
        port map (
      I0 => \^next_switch_matrix_reg[6][0]_2\,
      I1 => \G0.mem_reg[55]_11\,
      I2 => \next_switch_matrix[0][0]_i_12__0_n_0\,
      I3 => \next_switch_matrix[0][0]_i_19_n_0\,
      I4 => \^port_wants_to[6][1]_32\(0),
      I5 => \next_switch_matrix[2][0]_i_11_n_0\,
      O => \next_switch_matrix[6][0]_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized7\ is
  port (
    \next_switch_matrix_reg[6][1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[36]_0\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_reg[55]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized7\ : entity is "NoC_3D_Parallel_recv";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized7\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 55 downto 0 );
begin
  Q(55 downto 0) <= \^q\(55 downto 0);
\G0.mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(0),
      Q => \^q\(0),
      R => reset
    );
\G0.mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(10),
      Q => \^q\(10),
      R => reset
    );
\G0.mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(11),
      Q => \^q\(11),
      R => reset
    );
\G0.mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(12),
      Q => \^q\(12),
      R => reset
    );
\G0.mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(13),
      Q => \^q\(13),
      R => reset
    );
\G0.mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(14),
      Q => \^q\(14),
      R => reset
    );
\G0.mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(15),
      Q => \^q\(15),
      R => reset
    );
\G0.mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(16),
      Q => \^q\(16),
      R => reset
    );
\G0.mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(17),
      Q => \^q\(17),
      R => reset
    );
\G0.mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(18),
      Q => \^q\(18),
      R => reset
    );
\G0.mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(19),
      Q => \^q\(19),
      R => reset
    );
\G0.mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(1),
      Q => \^q\(1),
      R => reset
    );
\G0.mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(20),
      Q => \^q\(20),
      R => reset
    );
\G0.mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(21),
      Q => \^q\(21),
      R => reset
    );
\G0.mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(22),
      Q => \^q\(22),
      R => reset
    );
\G0.mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(23),
      Q => \^q\(23),
      R => reset
    );
\G0.mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(24),
      Q => \^q\(24),
      R => reset
    );
\G0.mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(25),
      Q => \^q\(25),
      R => reset
    );
\G0.mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(26),
      Q => \^q\(26),
      R => reset
    );
\G0.mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(27),
      Q => \^q\(27),
      R => reset
    );
\G0.mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(28),
      Q => \^q\(28),
      R => reset
    );
\G0.mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(29),
      Q => \^q\(29),
      R => reset
    );
\G0.mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(2),
      Q => \^q\(2),
      R => reset
    );
\G0.mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(30),
      Q => \^q\(30),
      R => reset
    );
\G0.mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(31),
      Q => \^q\(31),
      R => reset
    );
\G0.mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(32),
      Q => \^q\(32),
      R => reset
    );
\G0.mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(33),
      Q => \^q\(33),
      R => reset
    );
\G0.mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(34),
      Q => \^q\(34),
      R => reset
    );
\G0.mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(35),
      Q => \^q\(35),
      R => reset
    );
\G0.mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(36),
      Q => \^q\(36),
      R => reset
    );
\G0.mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(37),
      Q => \^q\(37),
      R => reset
    );
\G0.mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(38),
      Q => \^q\(38),
      R => reset
    );
\G0.mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(39),
      Q => \^q\(39),
      R => reset
    );
\G0.mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(3),
      Q => \^q\(3),
      R => reset
    );
\G0.mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(40),
      Q => \^q\(40),
      R => reset
    );
\G0.mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(41),
      Q => \^q\(41),
      R => reset
    );
\G0.mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(42),
      Q => \^q\(42),
      R => reset
    );
\G0.mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(43),
      Q => \^q\(43),
      R => reset
    );
\G0.mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(44),
      Q => \^q\(44),
      R => reset
    );
\G0.mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(45),
      Q => \^q\(45),
      R => reset
    );
\G0.mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(46),
      Q => \^q\(46),
      R => reset
    );
\G0.mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(47),
      Q => \^q\(47),
      R => reset
    );
\G0.mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(48),
      Q => \^q\(48),
      R => reset
    );
\G0.mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(49),
      Q => \^q\(49),
      R => reset
    );
\G0.mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(4),
      Q => \^q\(4),
      R => reset
    );
\G0.mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(50),
      Q => \^q\(50),
      R => reset
    );
\G0.mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(51),
      Q => \^q\(51),
      R => reset
    );
\G0.mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(52),
      Q => \^q\(52),
      R => reset
    );
\G0.mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(53),
      Q => \^q\(53),
      R => reset
    );
\G0.mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(54),
      Q => \^q\(54),
      R => reset
    );
\G0.mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(55),
      Q => \^q\(55),
      R => reset
    );
\G0.mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(5),
      Q => \^q\(5),
      R => reset
    );
\G0.mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(6),
      Q => \^q\(6),
      R => reset
    );
\G0.mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(7),
      Q => \^q\(7),
      R => reset
    );
\G0.mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(8),
      Q => \^q\(8),
      R => reset
    );
\G0.mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \mem_reg[55]\(9),
      Q => \^q\(9),
      R => reset
    );
\next_switch_matrix[6][1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(33),
      I1 => \^q\(32),
      I2 => \G0.mem_reg[36]_0\,
      I3 => \^q\(35),
      I4 => \^q\(34),
      I5 => \^q\(55),
      O => \next_switch_matrix_reg[6][1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter is
  port (
    \Outport[1]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter is
begin
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \Outport[1]\(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \Outport[1]\(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \Outport[1]\(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \Outport[1]\(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \Outport[1]\(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \Outport[1]\(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \Outport[1]\(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => \Outport[1]\(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => \Outport[1]\(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => \Outport[1]\(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => \Outport[1]\(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \Outport[1]\(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => \Outport[1]\(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => \Outport[1]\(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => \Outport[1]\(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => \Outport[1]\(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => \Outport[1]\(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => \Outport[1]\(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => \Outport[1]\(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => \Outport[1]\(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => \Outport[1]\(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => \Outport[1]\(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \Outport[1]\(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => \Outport[1]\(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => \Outport[1]\(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => \Outport[1]\(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => \Outport[1]\(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => \Outport[1]\(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => \Outport[1]\(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => \Outport[1]\(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => \Outport[1]\(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => \Outport[1]\(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => \Outport[1]\(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \Outport[1]\(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => \Outport[1]\(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => \Outport[1]\(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => \Outport[1]\(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => \Outport[1]\(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => \Outport[1]\(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => \Outport[1]\(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => \Outport[1]\(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => \Outport[1]\(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => \Outport[1]\(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => \Outport[1]\(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \Outport[1]\(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => \Outport[1]\(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => \Outport[1]\(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => \Outport[1]\(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => \Outport[1]\(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => \Outport[1]\(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => \Outport[1]\(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \Outport[1]\(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \Outport[1]\(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => \Outport[1]\(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \Outport[1]\(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \Outport[1]\(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_0 is
  port (
    \Outport[3]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_0 : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_0;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_0 is
begin
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \Outport[3]\(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \Outport[3]\(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \Outport[3]\(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \Outport[3]\(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \Outport[3]\(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \Outport[3]\(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \Outport[3]\(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => \Outport[3]\(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => \Outport[3]\(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => \Outport[3]\(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => \Outport[3]\(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \Outport[3]\(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => \Outport[3]\(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => \Outport[3]\(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => \Outport[3]\(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => \Outport[3]\(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => \Outport[3]\(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => \Outport[3]\(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => \Outport[3]\(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => \Outport[3]\(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => \Outport[3]\(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => \Outport[3]\(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \Outport[3]\(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => \Outport[3]\(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => \Outport[3]\(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => \Outport[3]\(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => \Outport[3]\(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => \Outport[3]\(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => \Outport[3]\(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => \Outport[3]\(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => \Outport[3]\(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => \Outport[3]\(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => \Outport[3]\(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \Outport[3]\(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => \Outport[3]\(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => \Outport[3]\(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => \Outport[3]\(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => \Outport[3]\(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => \Outport[3]\(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => \Outport[3]\(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => \Outport[3]\(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => \Outport[3]\(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => \Outport[3]\(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => \Outport[3]\(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \Outport[3]\(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => \Outport[3]\(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => \Outport[3]\(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => \Outport[3]\(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => \Outport[3]\(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => \Outport[3]\(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => \Outport[3]\(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \Outport[3]\(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \Outport[3]\(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => \Outport[3]\(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \Outport[3]\(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \Outport[3]\(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_1 is
  port (
    write_R_reg : out STD_LOGIC;
    From_NoC_3 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_1 : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_1;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_1 is
  signal \^from_noc_3\ : STD_LOGIC_VECTOR ( 55 downto 0 );
begin
  From_NoC_3(55 downto 0) <= \^from_noc_3\(55 downto 0);
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \^from_noc_3\(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \^from_noc_3\(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \^from_noc_3\(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \^from_noc_3\(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \^from_noc_3\(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \^from_noc_3\(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \^from_noc_3\(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => \^from_noc_3\(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => \^from_noc_3\(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => \^from_noc_3\(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => \^from_noc_3\(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \^from_noc_3\(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => \^from_noc_3\(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => \^from_noc_3\(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => \^from_noc_3\(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => \^from_noc_3\(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => \^from_noc_3\(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => \^from_noc_3\(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => \^from_noc_3\(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => \^from_noc_3\(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => \^from_noc_3\(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => \^from_noc_3\(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \^from_noc_3\(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => \^from_noc_3\(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => \^from_noc_3\(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => \^from_noc_3\(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => \^from_noc_3\(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => \^from_noc_3\(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => \^from_noc_3\(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => \^from_noc_3\(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => \^from_noc_3\(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => \^from_noc_3\(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => \^from_noc_3\(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \^from_noc_3\(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => \^from_noc_3\(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => \^from_noc_3\(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => \^from_noc_3\(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => \^from_noc_3\(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => \^from_noc_3\(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => \^from_noc_3\(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => \^from_noc_3\(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => \^from_noc_3\(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => \^from_noc_3\(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => \^from_noc_3\(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \^from_noc_3\(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => \^from_noc_3\(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => \^from_noc_3\(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => \^from_noc_3\(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => \^from_noc_3\(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => \^from_noc_3\(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => \^from_noc_3\(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \^from_noc_3\(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \^from_noc_3\(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => \^from_noc_3\(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \^from_noc_3\(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \^from_noc_3\(9),
      R => reset
    );
\write_R_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^from_noc_3\(55),
      I1 => Q(1),
      I2 => Q(0),
      O => write_R_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_10 is
  port (
    \Outport[0]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_10 : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_10;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_10 is
begin
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \Outport[0]\(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \Outport[0]\(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \Outport[0]\(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \Outport[0]\(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \Outport[0]\(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \Outport[0]\(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \Outport[0]\(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => \Outport[0]\(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => \Outport[0]\(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => \Outport[0]\(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => \Outport[0]\(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \Outport[0]\(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => \Outport[0]\(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => \Outport[0]\(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => \Outport[0]\(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => \Outport[0]\(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => \Outport[0]\(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => \Outport[0]\(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => \Outport[0]\(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => \Outport[0]\(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => \Outport[0]\(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => \Outport[0]\(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \Outport[0]\(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => \Outport[0]\(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => \Outport[0]\(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => \Outport[0]\(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => \Outport[0]\(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => \Outport[0]\(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => \Outport[0]\(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => \Outport[0]\(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => \Outport[0]\(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => \Outport[0]\(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => \Outport[0]\(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \Outport[0]\(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => \Outport[0]\(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => \Outport[0]\(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => \Outport[0]\(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => \Outport[0]\(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => \Outport[0]\(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => \Outport[0]\(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => \Outport[0]\(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => \Outport[0]\(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => \Outport[0]\(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => \Outport[0]\(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \Outport[0]\(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => \Outport[0]\(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => \Outport[0]\(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => \Outport[0]\(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => \Outport[0]\(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => \Outport[0]\(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => \Outport[0]\(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \Outport[0]\(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \Outport[0]\(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => \Outport[0]\(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \Outport[0]\(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \Outport[0]\(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_11 is
  port (
    \Outport[2]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_11 : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_11;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_11 is
begin
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \Outport[2]\(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \Outport[2]\(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \Outport[2]\(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \Outport[2]\(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \Outport[2]\(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \Outport[2]\(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \Outport[2]\(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => \Outport[2]\(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => \Outport[2]\(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => \Outport[2]\(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => \Outport[2]\(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \Outport[2]\(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => \Outport[2]\(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => \Outport[2]\(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => \Outport[2]\(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => \Outport[2]\(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => \Outport[2]\(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => \Outport[2]\(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => \Outport[2]\(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => \Outport[2]\(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => \Outport[2]\(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => \Outport[2]\(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \Outport[2]\(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => \Outport[2]\(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => \Outport[2]\(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => \Outport[2]\(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => \Outport[2]\(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => \Outport[2]\(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => \Outport[2]\(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => \Outport[2]\(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => \Outport[2]\(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => \Outport[2]\(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => \Outport[2]\(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \Outport[2]\(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => \Outport[2]\(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => \Outport[2]\(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => \Outport[2]\(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => \Outport[2]\(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => \Outport[2]\(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => \Outport[2]\(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => \Outport[2]\(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => \Outport[2]\(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => \Outport[2]\(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => \Outport[2]\(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \Outport[2]\(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => \Outport[2]\(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => \Outport[2]\(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => \Outport[2]\(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => \Outport[2]\(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => \Outport[2]\(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => \Outport[2]\(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \Outport[2]\(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \Outport[2]\(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => \Outport[2]\(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \Outport[2]\(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \Outport[2]\(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_12 is
  port (
    write_R_reg : out STD_LOGIC;
    From_NoC_0 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_12 : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_12;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_12 is
  signal \^from_noc_0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
begin
  From_NoC_0(55 downto 0) <= \^from_noc_0\(55 downto 0);
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \^from_noc_0\(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \^from_noc_0\(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \^from_noc_0\(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \^from_noc_0\(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \^from_noc_0\(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \^from_noc_0\(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \^from_noc_0\(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => \^from_noc_0\(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => \^from_noc_0\(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => \^from_noc_0\(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => \^from_noc_0\(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \^from_noc_0\(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => \^from_noc_0\(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => \^from_noc_0\(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => \^from_noc_0\(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => \^from_noc_0\(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => \^from_noc_0\(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => \^from_noc_0\(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => \^from_noc_0\(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => \^from_noc_0\(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => \^from_noc_0\(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => \^from_noc_0\(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \^from_noc_0\(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => \^from_noc_0\(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => \^from_noc_0\(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => \^from_noc_0\(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => \^from_noc_0\(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => \^from_noc_0\(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => \^from_noc_0\(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => \^from_noc_0\(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => \^from_noc_0\(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => \^from_noc_0\(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => \^from_noc_0\(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \^from_noc_0\(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => \^from_noc_0\(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => \^from_noc_0\(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => \^from_noc_0\(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => \^from_noc_0\(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => \^from_noc_0\(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => \^from_noc_0\(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => \^from_noc_0\(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => \^from_noc_0\(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => \^from_noc_0\(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => \^from_noc_0\(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \^from_noc_0\(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => \^from_noc_0\(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => \^from_noc_0\(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => \^from_noc_0\(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => \^from_noc_0\(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => \^from_noc_0\(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => \^from_noc_0\(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \^from_noc_0\(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \^from_noc_0\(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => \^from_noc_0\(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \^from_noc_0\(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \^from_noc_0\(9),
      R => reset
    );
write_R_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^from_noc_0\(55),
      I1 => Q(1),
      I2 => Q(0),
      O => write_R_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_2 is
  port (
    \G0.mem_reg[55]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_2 : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_2;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_2 is
begin
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \G0.mem_reg[55]\(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \G0.mem_reg[55]\(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \G0.mem_reg[55]\(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \G0.mem_reg[55]\(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \G0.mem_reg[55]\(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \G0.mem_reg[55]\(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \G0.mem_reg[55]\(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => \G0.mem_reg[55]\(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => \G0.mem_reg[55]\(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => \G0.mem_reg[55]\(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => \G0.mem_reg[55]\(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \G0.mem_reg[55]\(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => \G0.mem_reg[55]\(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => \G0.mem_reg[55]\(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => \G0.mem_reg[55]\(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => \G0.mem_reg[55]\(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => \G0.mem_reg[55]\(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => \G0.mem_reg[55]\(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => \G0.mem_reg[55]\(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => \G0.mem_reg[55]\(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => \G0.mem_reg[55]\(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => \G0.mem_reg[55]\(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \G0.mem_reg[55]\(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => \G0.mem_reg[55]\(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => \G0.mem_reg[55]\(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => \G0.mem_reg[55]\(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => \G0.mem_reg[55]\(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => \G0.mem_reg[55]\(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => \G0.mem_reg[55]\(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => \G0.mem_reg[55]\(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => \G0.mem_reg[55]\(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => \G0.mem_reg[55]\(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => \G0.mem_reg[55]\(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \G0.mem_reg[55]\(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => \G0.mem_reg[55]\(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => \G0.mem_reg[55]\(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => \G0.mem_reg[55]\(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => \G0.mem_reg[55]\(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => \G0.mem_reg[55]\(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => \G0.mem_reg[55]\(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => \G0.mem_reg[55]\(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => \G0.mem_reg[55]\(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => \G0.mem_reg[55]\(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => \G0.mem_reg[55]\(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \G0.mem_reg[55]\(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => \G0.mem_reg[55]\(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => \G0.mem_reg[55]\(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => \G0.mem_reg[55]\(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => \G0.mem_reg[55]\(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => \G0.mem_reg[55]\(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => \G0.mem_reg[55]\(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \G0.mem_reg[55]\(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \G0.mem_reg[55]\(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => \G0.mem_reg[55]\(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \G0.mem_reg[55]\(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \G0.mem_reg[55]\(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_3 is
  port (
    \G0.mem_reg[55]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_3 : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_3;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_3 is
begin
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \G0.mem_reg[55]\(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \G0.mem_reg[55]\(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \G0.mem_reg[55]\(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \G0.mem_reg[55]\(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \G0.mem_reg[55]\(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \G0.mem_reg[55]\(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \G0.mem_reg[55]\(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => \G0.mem_reg[55]\(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => \G0.mem_reg[55]\(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => \G0.mem_reg[55]\(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => \G0.mem_reg[55]\(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \G0.mem_reg[55]\(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => \G0.mem_reg[55]\(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => \G0.mem_reg[55]\(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => \G0.mem_reg[55]\(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => \G0.mem_reg[55]\(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => \G0.mem_reg[55]\(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => \G0.mem_reg[55]\(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => \G0.mem_reg[55]\(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => \G0.mem_reg[55]\(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => \G0.mem_reg[55]\(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => \G0.mem_reg[55]\(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \G0.mem_reg[55]\(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => \G0.mem_reg[55]\(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => \G0.mem_reg[55]\(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => \G0.mem_reg[55]\(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => \G0.mem_reg[55]\(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => \G0.mem_reg[55]\(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => \G0.mem_reg[55]\(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => \G0.mem_reg[55]\(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => \G0.mem_reg[55]\(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => \G0.mem_reg[55]\(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => \G0.mem_reg[55]\(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \G0.mem_reg[55]\(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => \G0.mem_reg[55]\(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => \G0.mem_reg[55]\(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => \G0.mem_reg[55]\(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => \G0.mem_reg[55]\(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => \G0.mem_reg[55]\(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => \G0.mem_reg[55]\(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => \G0.mem_reg[55]\(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => \G0.mem_reg[55]\(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => \G0.mem_reg[55]\(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => \G0.mem_reg[55]\(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \G0.mem_reg[55]\(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => \G0.mem_reg[55]\(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => \G0.mem_reg[55]\(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => \G0.mem_reg[55]\(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => \G0.mem_reg[55]\(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => \G0.mem_reg[55]\(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => \G0.mem_reg[55]\(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \G0.mem_reg[55]\(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \G0.mem_reg[55]\(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => \G0.mem_reg[55]\(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \G0.mem_reg[55]\(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \G0.mem_reg[55]\(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_4 is
  port (
    From_NoC_1 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_4 : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_4;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_4 is
begin
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => From_NoC_1(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => From_NoC_1(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => From_NoC_1(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => From_NoC_1(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => From_NoC_1(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => From_NoC_1(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => From_NoC_1(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => From_NoC_1(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => From_NoC_1(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => From_NoC_1(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => From_NoC_1(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => From_NoC_1(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => From_NoC_1(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => From_NoC_1(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => From_NoC_1(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => From_NoC_1(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => From_NoC_1(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => From_NoC_1(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => From_NoC_1(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => From_NoC_1(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => From_NoC_1(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => From_NoC_1(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => From_NoC_1(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => From_NoC_1(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => From_NoC_1(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => From_NoC_1(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => From_NoC_1(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => From_NoC_1(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => From_NoC_1(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => From_NoC_1(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => From_NoC_1(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => From_NoC_1(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => From_NoC_1(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => From_NoC_1(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => From_NoC_1(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => From_NoC_1(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => From_NoC_1(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => From_NoC_1(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => From_NoC_1(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => From_NoC_1(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => From_NoC_1(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => From_NoC_1(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => From_NoC_1(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => From_NoC_1(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => From_NoC_1(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => From_NoC_1(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => From_NoC_1(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => From_NoC_1(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => From_NoC_1(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => From_NoC_1(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => From_NoC_1(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => From_NoC_1(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => From_NoC_1(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => From_NoC_1(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => From_NoC_1(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => From_NoC_1(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_5 is
  port (
    \Outport[1]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_5 : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_5;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_5 is
begin
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \Outport[1]\(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \Outport[1]\(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \Outport[1]\(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \Outport[1]\(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \Outport[1]\(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \Outport[1]\(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \Outport[1]\(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => \Outport[1]\(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => \Outport[1]\(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => \Outport[1]\(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => \Outport[1]\(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \Outport[1]\(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => \Outport[1]\(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => \Outport[1]\(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => \Outport[1]\(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => \Outport[1]\(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => \Outport[1]\(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => \Outport[1]\(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => \Outport[1]\(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => \Outport[1]\(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => \Outport[1]\(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => \Outport[1]\(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \Outport[1]\(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => \Outport[1]\(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => \Outport[1]\(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => \Outport[1]\(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => \Outport[1]\(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => \Outport[1]\(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => \Outport[1]\(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => \Outport[1]\(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => \Outport[1]\(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => \Outport[1]\(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => \Outport[1]\(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \Outport[1]\(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => \Outport[1]\(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => \Outport[1]\(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => \Outport[1]\(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => \Outport[1]\(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => \Outport[1]\(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => \Outport[1]\(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => \Outport[1]\(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => \Outport[1]\(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => \Outport[1]\(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => \Outport[1]\(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \Outport[1]\(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => \Outport[1]\(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => \Outport[1]\(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => \Outport[1]\(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => \Outport[1]\(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => \Outport[1]\(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => \Outport[1]\(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \Outport[1]\(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \Outport[1]\(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => \Outport[1]\(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \Outport[1]\(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \Outport[1]\(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_6 is
  port (
    \Outport[2]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_6 : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_6;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_6 is
begin
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \Outport[2]\(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \Outport[2]\(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \Outport[2]\(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \Outport[2]\(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \Outport[2]\(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \Outport[2]\(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \Outport[2]\(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => \Outport[2]\(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => \Outport[2]\(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => \Outport[2]\(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => \Outport[2]\(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \Outport[2]\(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => \Outport[2]\(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => \Outport[2]\(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => \Outport[2]\(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => \Outport[2]\(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => \Outport[2]\(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => \Outport[2]\(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => \Outport[2]\(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => \Outport[2]\(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => \Outport[2]\(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => \Outport[2]\(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \Outport[2]\(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => \Outport[2]\(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => \Outport[2]\(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => \Outport[2]\(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => \Outport[2]\(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => \Outport[2]\(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => \Outport[2]\(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => \Outport[2]\(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => \Outport[2]\(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => \Outport[2]\(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => \Outport[2]\(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \Outport[2]\(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => \Outport[2]\(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => \Outport[2]\(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => \Outport[2]\(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => \Outport[2]\(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => \Outport[2]\(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => \Outport[2]\(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => \Outport[2]\(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => \Outport[2]\(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => \Outport[2]\(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => \Outport[2]\(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \Outport[2]\(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => \Outport[2]\(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => \Outport[2]\(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => \Outport[2]\(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => \Outport[2]\(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => \Outport[2]\(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => \Outport[2]\(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \Outport[2]\(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \Outport[2]\(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => \Outport[2]\(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \Outport[2]\(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \Outport[2]\(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_7 is
  port (
    write_R_reg : out STD_LOGIC;
    From_NoC_2 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_7 : entity is "NoC_3D_Parallel_xmitter";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_7;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_7 is
  signal \^from_noc_2\ : STD_LOGIC_VECTOR ( 55 downto 0 );
begin
  From_NoC_2(55 downto 0) <= \^from_noc_2\(55 downto 0);
\mem_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \^from_noc_2\(0),
      R => reset
    );
\mem_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \^from_noc_2\(10),
      R => reset
    );
\mem_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \^from_noc_2\(11),
      R => reset
    );
\mem_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \^from_noc_2\(12),
      R => reset
    );
\mem_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \^from_noc_2\(13),
      R => reset
    );
\mem_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \^from_noc_2\(14),
      R => reset
    );
\mem_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \^from_noc_2\(15),
      R => reset
    );
\mem_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => \^from_noc_2\(16),
      R => reset
    );
\mem_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => \^from_noc_2\(17),
      R => reset
    );
\mem_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => \^from_noc_2\(18),
      R => reset
    );
\mem_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => \^from_noc_2\(19),
      R => reset
    );
\mem_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => \^from_noc_2\(1),
      R => reset
    );
\mem_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => \^from_noc_2\(20),
      R => reset
    );
\mem_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => \^from_noc_2\(21),
      R => reset
    );
\mem_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => \^from_noc_2\(22),
      R => reset
    );
\mem_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => \^from_noc_2\(23),
      R => reset
    );
\mem_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => \^from_noc_2\(24),
      R => reset
    );
\mem_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => \^from_noc_2\(25),
      R => reset
    );
\mem_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => \^from_noc_2\(26),
      R => reset
    );
\mem_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => \^from_noc_2\(27),
      R => reset
    );
\mem_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => \^from_noc_2\(28),
      R => reset
    );
\mem_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => \^from_noc_2\(29),
      R => reset
    );
\mem_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => \^from_noc_2\(2),
      R => reset
    );
\mem_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => \^from_noc_2\(30),
      R => reset
    );
\mem_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => \^from_noc_2\(31),
      R => reset
    );
\mem_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(32),
      Q => \^from_noc_2\(32),
      R => reset
    );
\mem_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(33),
      Q => \^from_noc_2\(33),
      R => reset
    );
\mem_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(34),
      Q => \^from_noc_2\(34),
      R => reset
    );
\mem_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(35),
      Q => \^from_noc_2\(35),
      R => reset
    );
\mem_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(36),
      Q => \^from_noc_2\(36),
      R => reset
    );
\mem_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(37),
      Q => \^from_noc_2\(37),
      R => reset
    );
\mem_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(38),
      Q => \^from_noc_2\(38),
      R => reset
    );
\mem_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(39),
      Q => \^from_noc_2\(39),
      R => reset
    );
\mem_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => \^from_noc_2\(3),
      R => reset
    );
\mem_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(40),
      Q => \^from_noc_2\(40),
      R => reset
    );
\mem_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(41),
      Q => \^from_noc_2\(41),
      R => reset
    );
\mem_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(42),
      Q => \^from_noc_2\(42),
      R => reset
    );
\mem_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(43),
      Q => \^from_noc_2\(43),
      R => reset
    );
\mem_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(44),
      Q => \^from_noc_2\(44),
      R => reset
    );
\mem_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(45),
      Q => \^from_noc_2\(45),
      R => reset
    );
\mem_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(46),
      Q => \^from_noc_2\(46),
      R => reset
    );
\mem_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(47),
      Q => \^from_noc_2\(47),
      R => reset
    );
\mem_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(48),
      Q => \^from_noc_2\(48),
      R => reset
    );
\mem_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(49),
      Q => \^from_noc_2\(49),
      R => reset
    );
\mem_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => \^from_noc_2\(4),
      R => reset
    );
\mem_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(50),
      Q => \^from_noc_2\(50),
      R => reset
    );
\mem_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(51),
      Q => \^from_noc_2\(51),
      R => reset
    );
\mem_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(52),
      Q => \^from_noc_2\(52),
      R => reset
    );
\mem_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(53),
      Q => \^from_noc_2\(53),
      R => reset
    );
\mem_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(54),
      Q => \^from_noc_2\(54),
      R => reset
    );
\mem_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(55),
      Q => \^from_noc_2\(55),
      R => reset
    );
\mem_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => \^from_noc_2\(5),
      R => reset
    );
\mem_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => \^from_noc_2\(6),
      R => reset
    );
\mem_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => \^from_noc_2\(7),
      R => reset
    );
\mem_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \^from_noc_2\(8),
      R => reset
    );
\mem_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \^from_noc_2\(9),
      R => reset
    );
\write_R_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^from_noc_2\(55),
      I1 => Q(1),
      I2 => Q(0),
      O => write_R_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch is
  port (
    \Outport[0]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \Outport[2]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_0 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    read_R : out STD_LOGIC_VECTOR ( 0 to 0 );
    write_R : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC;
    \mem_reg[55]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    To_NoC_0 : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch : entity is "NoC_3D_Parallel_Switch";
end BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch is
  signal \Q[2]__0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \Q[6]__0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal Q_0 : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal ctrl_cycle : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ctrl_cycle[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ctrl_cycle[1]_i_1__0_n_0\ : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal load_enable : STD_LOGIC;
  signal \next_outport[0]_24\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_outport[2]_25\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_outport[6]_26\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_switch_matrix[6]_23\ : STD_LOGIC;
  signal \next_switch_matrix_reg[0]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[1]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[2]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[3]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[4]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[5]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[6]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[2][2]_17\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \port_wants_to[6][0]_20\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \pres_switch_matrix[0][2]_i_1__0_n_0\ : STD_LOGIC;
  signal \pres_switch_matrix_reg[0]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pres_switch_matrix_reg[2]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pres_switch_matrix_reg[6]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal read_R_i_1_n_0 : STD_LOGIC;
  signal read_R_i_2_n_0 : STD_LOGIC;
  signal read_R_i_3_n_0 : STD_LOGIC;
  signal read_R_i_4_n_0 : STD_LOGIC;
  signal read_R_i_5_n_0 : STD_LOGIC;
  signal \recv[0].dir_n_0\ : STD_LOGIC;
  signal \recv[0].dir_n_1\ : STD_LOGIC;
  signal \recv[0].dir_n_59\ : STD_LOGIC;
  signal \recv[0].dir_n_60\ : STD_LOGIC;
  signal \recv[0].dir_n_61\ : STD_LOGIC;
  signal \recv[0].dir_n_62\ : STD_LOGIC;
  signal \recv[2].dir_n_56\ : STD_LOGIC;
  signal \recv[2].dir_n_57\ : STD_LOGIC;
  signal \recv[2].dir_n_58\ : STD_LOGIC;
  signal \recv[2].dir_n_59\ : STD_LOGIC;
  signal \recv[2].dir_n_62\ : STD_LOGIC;
  signal \recv[2].dir_n_63\ : STD_LOGIC;
  signal \recv[2].dir_n_64\ : STD_LOGIC;
  signal \recv[2].dir_n_65\ : STD_LOGIC;
  signal \recv[6].dir_n_56\ : STD_LOGIC;
  signal \recv[6].dir_n_57\ : STD_LOGIC;
  signal \recv[6].dir_n_59\ : STD_LOGIC;
  signal \recv[6].dir_n_60\ : STD_LOGIC;
  signal \recv[6].dir_n_62\ : STD_LOGIC;
  signal \recv[6].dir_n_63\ : STD_LOGIC;
  signal \recv[6].dir_n_64\ : STD_LOGIC;
  signal \recv[6].dir_n_65\ : STD_LOGIC;
  signal \xmit[6].dir_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctrl_cycle[0]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ctrl_cycle[1]_i_1__0\ : label is "soft_lutpair8";
begin
\ctrl_cycle[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_cycle(0),
      O => \ctrl_cycle[0]_i_1__0_n_0\
    );
\ctrl_cycle[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \ctrl_cycle[1]_i_1__0_n_0\
    );
\ctrl_cycle_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ctrl_cycle[0]_i_1__0_n_0\,
      Q => ctrl_cycle(0),
      R => reset
    );
\ctrl_cycle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ctrl_cycle[1]_i_1__0_n_0\,
      Q => ctrl_cycle(1),
      R => reset
    );
\next_switch_matrix[0][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \next_switch_matrix[6]_23\
    );
\next_switch_matrix_reg[0][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[6].dir_n_63\,
      Q => \next_switch_matrix_reg[0]__0__0\(0),
      S => reset
    );
\next_switch_matrix_reg[0][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[0].dir_n_59\,
      Q => \next_switch_matrix_reg[0]__0__0\(1),
      S => reset
    );
\next_switch_matrix_reg[0][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[2].dir_n_63\,
      Q => \next_switch_matrix_reg[0]__0__0\(2),
      S => reset
    );
\next_switch_matrix_reg[1][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[2].dir_n_56\,
      Q => \next_switch_matrix_reg[1]__0__0\(0),
      S => reset
    );
\next_switch_matrix_reg[1][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[2].dir_n_56\,
      Q => \next_switch_matrix_reg[1]__0__0\(2),
      S => reset
    );
\next_switch_matrix_reg[2][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[6].dir_n_62\,
      Q => \next_switch_matrix_reg[2]__0__0\(0),
      S => reset
    );
\next_switch_matrix_reg[2][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[0].dir_n_62\,
      Q => \next_switch_matrix_reg[2]__0__0\(1),
      S => reset
    );
\next_switch_matrix_reg[2][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[2].dir_n_64\,
      Q => \next_switch_matrix_reg[2]__0__0\(2),
      S => reset
    );
\next_switch_matrix_reg[3][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[2].dir_n_57\,
      Q => \next_switch_matrix_reg[3]__0__0\(0),
      S => reset
    );
\next_switch_matrix_reg[3][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[2].dir_n_57\,
      Q => \next_switch_matrix_reg[3]__0__0\(2),
      S => reset
    );
\next_switch_matrix_reg[4][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[6].dir_n_59\,
      Q => \next_switch_matrix_reg[4]__0__0\(0),
      S => reset
    );
\next_switch_matrix_reg[4][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => '1',
      Q => \next_switch_matrix_reg[4]__0__0\(2),
      S => reset
    );
\next_switch_matrix_reg[5][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[6].dir_n_60\,
      Q => \next_switch_matrix_reg[5]__0__0\(0),
      S => reset
    );
\next_switch_matrix_reg[5][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[2].dir_n_59\,
      Q => \next_switch_matrix_reg[5]__0__0\(2),
      S => reset
    );
\next_switch_matrix_reg[6][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[6].dir_n_64\,
      Q => \next_switch_matrix_reg[6]__0__0\(0),
      S => reset
    );
\next_switch_matrix_reg[6][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[0].dir_n_61\,
      Q => \next_switch_matrix_reg[6]__0__0\(1),
      S => reset
    );
\next_switch_matrix_reg[6][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_23\,
      D => \recv[2].dir_n_65\,
      Q => \next_switch_matrix_reg[6]__0__0\(2),
      S => reset
    );
\pres_switch_matrix[0][2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \pres_switch_matrix[0][2]_i_1__0_n_0\
    );
\pres_switch_matrix_reg[0][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[0]__0__0\(0),
      Q => \pres_switch_matrix_reg[0]__0__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[0][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[0]__0__0\(1),
      Q => \pres_switch_matrix_reg[0]__0__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[0][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[0]__0__0\(2),
      Q => \pres_switch_matrix_reg[0]__0__0\(2),
      S => reset
    );
\pres_switch_matrix_reg[2][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[2]__0__0\(0),
      Q => \pres_switch_matrix_reg[2]__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[2][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[2]__0__0\(1),
      Q => \pres_switch_matrix_reg[2]__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[2][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[2]__0__0\(2),
      Q => \pres_switch_matrix_reg[2]__0\(2),
      S => reset
    );
\pres_switch_matrix_reg[6][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[6]__0__0\(0),
      Q => \pres_switch_matrix_reg[6]__0__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[6][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[6]__0__0\(1),
      Q => \pres_switch_matrix_reg[6]__0__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[6][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[6]__0__0\(2),
      Q => \pres_switch_matrix_reg[6]__0__0\(2),
      S => reset
    );
read_R_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => ctrl_cycle(1),
      I1 => ctrl_cycle(0),
      I2 => read_R_i_2_n_0,
      I3 => read_R_i_3_n_0,
      I4 => read_R_i_4_n_0,
      I5 => read_R_i_5_n_0,
      O => read_R_i_1_n_0
    );
read_R_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \next_switch_matrix_reg[3]__0__0\(0),
      I1 => \next_switch_matrix_reg[3]__0__0\(2),
      I2 => \next_switch_matrix_reg[4]__0__0\(0),
      I3 => \next_switch_matrix_reg[4]__0__0\(2),
      O => read_R_i_2_n_0
    );
read_R_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => \next_switch_matrix_reg[5]__0__0\(0),
      I1 => \next_switch_matrix_reg[5]__0__0\(2),
      I2 => \next_switch_matrix_reg[6]__0__0\(0),
      I3 => \next_switch_matrix_reg[6]__0__0\(2),
      I4 => \next_switch_matrix_reg[6]__0__0\(1),
      O => read_R_i_3_n_0
    );
read_R_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \next_switch_matrix_reg[1]__0__0\(2),
      I1 => \next_switch_matrix_reg[1]__0__0\(0),
      O => read_R_i_4_n_0
    );
read_R_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF404040404040"
    )
        port map (
      I0 => \next_switch_matrix_reg[0]__0__0\(0),
      I1 => \next_switch_matrix_reg[0]__0__0\(2),
      I2 => \next_switch_matrix_reg[0]__0__0\(1),
      I3 => \next_switch_matrix_reg[2]__0__0\(0),
      I4 => \next_switch_matrix_reg[2]__0__0\(2),
      I5 => \next_switch_matrix_reg[2]__0__0\(1),
      O => read_R_i_5_n_0
    );
read_R_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => read_R_i_1_n_0,
      Q => read_R(0),
      R => reset
    );
\recv[0].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv
     port map (
      D(0) => \recv[0].dir_n_59\,
      E(0) => load_enable,
      \G0.mem_reg[33]_0\ => \recv[6].dir_n_56\,
      \G0.mem_reg[37]_0\ => \recv[6].dir_n_57\,
      \G0.mem_reg[55]_0\(55 downto 0) => \Q[2]__0\(55 downto 0),
      \G0.mem_reg[55]_1\(55 downto 0) => \Q[6]__0\(55 downto 0),
      Q(55 downto 0) => Q_0(55 downto 0),
      clk => clk,
      gtOp => gtOp,
      \mem_reg[55]\(55 downto 0) => \next_outport[0]_24\(55 downto 0),
      \mem_reg[55]_0\(55 downto 0) => Q(55 downto 0),
      \next_switch_matrix_reg[0][1]\ => \recv[0].dir_n_1\,
      \next_switch_matrix_reg[2][1]\(0) => \recv[0].dir_n_62\,
      \next_switch_matrix_reg[4][0]\ => \recv[0].dir_n_0\,
      \next_switch_matrix_reg[5][2]\ => \recv[0].dir_n_60\,
      \next_switch_matrix_reg[6][1]\(0) => \recv[0].dir_n_61\,
      \port_wants_to[2][2]_17\(1 downto 0) => \port_wants_to[2][2]_17\(1 downto 0),
      \pres_switch_matrix_reg[0][2]\(2 downto 0) => \pres_switch_matrix_reg[0]__0__0\(2 downto 0),
      reset => reset
    );
\recv[2].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_8
     port map (
      D(0) => \recv[2].dir_n_56\,
      E(0) => load_enable,
      \G0.mem_reg[32]_0\(0) => \recv[0].dir_n_59\,
      \G0.mem_reg[33]_0\ => \recv[6].dir_n_56\,
      \G0.mem_reg[34]_0\ => \recv[0].dir_n_1\,
      \G0.mem_reg[37]_0\(0) => \recv[0].dir_n_61\,
      \G0.mem_reg[37]_1\ => \recv[6].dir_n_57\,
      \G0.mem_reg[55]_0\(0) => Q_0(55),
      \G0.mem_reg[55]_1\(0) => \recv[0].dir_n_62\,
      \G0.mem_reg[55]_2\ => \recv[0].dir_n_60\,
      \G0.mem_reg[55]_3\ => \recv[0].dir_n_0\,
      \G0.mem_reg[55]_4\ => \recv[6].dir_n_65\,
      Q(55 downto 0) => \Q[2]__0\(55 downto 0),
      clk => clk,
      gtOp => gtOp,
      \mem_reg[55]\(55 downto 0) => \mem_reg[55]\(55 downto 0),
      \next_switch_matrix_reg[0][2]\(0) => \recv[2].dir_n_63\,
      \next_switch_matrix_reg[2][2]\ => \recv[2].dir_n_58\,
      \next_switch_matrix_reg[2][2]_0\ => \recv[2].dir_n_64\,
      \next_switch_matrix_reg[3][2]\(0) => \recv[2].dir_n_57\,
      \next_switch_matrix_reg[4][0]\ => \recv[2].dir_n_62\,
      \next_switch_matrix_reg[5][2]\(0) => \recv[2].dir_n_59\,
      \next_switch_matrix_reg[6][2]\(0) => \recv[2].dir_n_65\,
      \port_wants_to[2][2]_17\(1 downto 0) => \port_wants_to[2][2]_17\(1 downto 0),
      \port_wants_to[6][0]_20\(0) => \port_wants_to[6][0]_20\(1),
      reset => reset
    );
\recv[6].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv_9
     port map (
      D(0) => \recv[6].dir_n_59\,
      E(0) => load_enable,
      \G0.mem_reg[55]_0\ => \recv[2].dir_n_62\,
      \G0.mem_reg[55]_1\ => \recv[2].dir_n_58\,
      \G0.mem_reg[55]_2\(0) => \recv[2].dir_n_64\,
      \G0.mem_reg[55]_3\(0) => \recv[2].dir_n_63\,
      \G0.mem_reg[55]_4\(0) => \recv[2].dir_n_57\,
      \G0.mem_reg[55]_5\(0) => \recv[2].dir_n_56\,
      \G0.mem_reg[55]_6\(0) => \recv[2].dir_n_59\,
      \G0.mem_reg[55]_7\(55 downto 0) => Q_0(55 downto 0),
      \G0.mem_reg[55]_8\(55 downto 0) => \Q[2]__0\(55 downto 0),
      Q(55 downto 0) => \Q[6]__0\(55 downto 0),
      To_NoC_0(55 downto 0) => To_NoC_0(55 downto 0),
      clk => clk,
      \ctrl_cycle_reg[1]\(1 downto 0) => ctrl_cycle(1 downto 0),
      \mem_reg[55]\(55 downto 0) => \next_outport[2]_25\(55 downto 0),
      \mem_reg[55]_0\(55 downto 0) => \next_outport[6]_26\(55 downto 0),
      \next_switch_matrix_reg[0][0]\(0) => \recv[6].dir_n_63\,
      \next_switch_matrix_reg[2][0]\(0) => \recv[6].dir_n_62\,
      \next_switch_matrix_reg[4][0]\ => \recv[6].dir_n_56\,
      \next_switch_matrix_reg[4][0]_0\ => \recv[6].dir_n_57\,
      \next_switch_matrix_reg[4][0]_1\ => \recv[6].dir_n_65\,
      \next_switch_matrix_reg[5][0]\(0) => \recv[6].dir_n_60\,
      \next_switch_matrix_reg[6][0]\(0) => \recv[6].dir_n_64\,
      \port_wants_to[6][0]_20\(0) => \port_wants_to[6][0]_20\(1),
      \pres_switch_matrix_reg[2][2]\(2 downto 0) => \pres_switch_matrix_reg[2]__0\(2 downto 0),
      \pres_switch_matrix_reg[6][2]\(2 downto 0) => \pres_switch_matrix_reg[6]__0__0\(2 downto 0),
      reset => reset
    );
write_R_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \xmit[6].dir_n_0\,
      Q => write_R(0),
      R => '0'
    );
\xmit[0].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_10
     port map (
      D(55 downto 0) => \next_outport[0]_24\(55 downto 0),
      E(0) => load_enable,
      \Outport[0]\(55 downto 0) => \Outport[0]\(55 downto 0),
      clk => clk,
      reset => reset
    );
\xmit[2].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_11
     port map (
      D(55 downto 0) => \next_outport[2]_25\(55 downto 0),
      E(0) => load_enable,
      \Outport[2]\(55 downto 0) => \Outport[2]\(55 downto 0),
      clk => clk,
      reset => reset
    );
\xmit[6].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_12
     port map (
      D(55 downto 0) => \next_outport[6]_26\(55 downto 0),
      E(0) => load_enable,
      From_NoC_0(55 downto 0) => From_NoC_0(55 downto 0),
      Q(1 downto 0) => ctrl_cycle(1 downto 0),
      clk => clk,
      reset => reset,
      write_R_reg => \xmit[6].dir_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized1\ is
  port (
    \Outport[1]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \Outport[2]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_2 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    read_R : out STD_LOGIC_VECTOR ( 0 to 0 );
    write_R : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    \Inport[1]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 55 downto 0 );
    To_NoC_2 : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized1\ : entity is "NoC_3D_Parallel_Switch";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized1\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized1\ is
  signal \Q[1]__0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \Q[2]__0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \Q[6]__0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal ctrl_cycle : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ctrl_cycle[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \ctrl_cycle[1]_i_1__1_n_0\ : STD_LOGIC;
  signal load_enable : STD_LOGIC;
  signal \next_outport[1]_40\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_outport[2]_41\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_outport[6]_42\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_switch_matrix[6]_39\ : STD_LOGIC;
  signal \next_switch_matrix_reg[0]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[1]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[2]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[3]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[4]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[5]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[6]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[2][2]_29\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \port_wants_to[6][0]_36\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \port_wants_to[6][1]_32\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \port_wants_to[6][2]_34\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \port_wants_to[6][3]_33\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pres_switch_matrix[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \pres_switch_matrix_reg[1]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pres_switch_matrix_reg[2]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pres_switch_matrix_reg[6]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \read_R_i_1__0_n_0\ : STD_LOGIC;
  signal \read_R_i_2__0_n_0\ : STD_LOGIC;
  signal \read_R_i_3__0_n_0\ : STD_LOGIC;
  signal \read_R_i_4__0_n_0\ : STD_LOGIC;
  signal \read_R_i_5__0_n_0\ : STD_LOGIC;
  signal \recv[1].dir_n_0\ : STD_LOGIC;
  signal \recv[1].dir_n_57\ : STD_LOGIC;
  signal \recv[1].dir_n_58\ : STD_LOGIC;
  signal \recv[1].dir_n_59\ : STD_LOGIC;
  signal \recv[1].dir_n_60\ : STD_LOGIC;
  signal \recv[1].dir_n_61\ : STD_LOGIC;
  signal \recv[2].dir_n_56\ : STD_LOGIC;
  signal \recv[2].dir_n_57\ : STD_LOGIC;
  signal \recv[2].dir_n_58\ : STD_LOGIC;
  signal \recv[2].dir_n_60\ : STD_LOGIC;
  signal \recv[2].dir_n_61\ : STD_LOGIC;
  signal \recv[2].dir_n_62\ : STD_LOGIC;
  signal \recv[2].dir_n_63\ : STD_LOGIC;
  signal \recv[2].dir_n_64\ : STD_LOGIC;
  signal \recv[2].dir_n_65\ : STD_LOGIC;
  signal \recv[2].dir_n_66\ : STD_LOGIC;
  signal \recv[2].dir_n_67\ : STD_LOGIC;
  signal \recv[2].dir_n_68\ : STD_LOGIC;
  signal \recv[2].dir_n_69\ : STD_LOGIC;
  signal \recv[2].dir_n_70\ : STD_LOGIC;
  signal \recv[2].dir_n_71\ : STD_LOGIC;
  signal \recv[2].dir_n_72\ : STD_LOGIC;
  signal \recv[2].dir_n_73\ : STD_LOGIC;
  signal \recv[2].dir_n_74\ : STD_LOGIC;
  signal \recv[2].dir_n_75\ : STD_LOGIC;
  signal \recv[2].dir_n_76\ : STD_LOGIC;
  signal \recv[2].dir_n_77\ : STD_LOGIC;
  signal \recv[2].dir_n_78\ : STD_LOGIC;
  signal \recv[2].dir_n_79\ : STD_LOGIC;
  signal \recv[2].dir_n_80\ : STD_LOGIC;
  signal \recv[2].dir_n_81\ : STD_LOGIC;
  signal \recv[2].dir_n_82\ : STD_LOGIC;
  signal \recv[2].dir_n_83\ : STD_LOGIC;
  signal \recv[2].dir_n_84\ : STD_LOGIC;
  signal \recv[6].dir_n_59\ : STD_LOGIC;
  signal \recv[6].dir_n_60\ : STD_LOGIC;
  signal \recv[6].dir_n_61\ : STD_LOGIC;
  signal \recv[6].dir_n_63\ : STD_LOGIC;
  signal \recv[6].dir_n_64\ : STD_LOGIC;
  signal \recv[6].dir_n_66\ : STD_LOGIC;
  signal \recv[6].dir_n_68\ : STD_LOGIC;
  signal \recv[6].dir_n_69\ : STD_LOGIC;
  signal \recv[6].dir_n_70\ : STD_LOGIC;
  signal \recv[6].dir_n_72\ : STD_LOGIC;
  signal \recv[6].dir_n_73\ : STD_LOGIC;
  signal \recv[6].dir_n_74\ : STD_LOGIC;
  signal \recv[6].dir_n_75\ : STD_LOGIC;
  signal \recv[6].dir_n_76\ : STD_LOGIC;
  signal \recv[6].dir_n_77\ : STD_LOGIC;
  signal \xmit[6].dir_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctrl_cycle[0]_i_1__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ctrl_cycle[1]_i_1__1\ : label is "soft_lutpair40";
begin
\ctrl_cycle[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_cycle(0),
      O => \ctrl_cycle[0]_i_1__1_n_0\
    );
\ctrl_cycle[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \ctrl_cycle[1]_i_1__1_n_0\
    );
\ctrl_cycle_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ctrl_cycle[0]_i_1__1_n_0\,
      Q => ctrl_cycle(0),
      R => reset
    );
\ctrl_cycle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ctrl_cycle[1]_i_1__1_n_0\,
      Q => ctrl_cycle(1),
      R => reset
    );
\next_switch_matrix[0][2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \next_switch_matrix[6]_39\
    );
\next_switch_matrix_reg[0][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[6].dir_n_70\,
      Q => \next_switch_matrix_reg[0]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[0][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[2].dir_n_58\,
      Q => \next_switch_matrix_reg[0]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[1][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[6].dir_n_77\,
      Q => \next_switch_matrix_reg[1]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[1][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[1].dir_n_59\,
      Q => \next_switch_matrix_reg[1]__0\(1),
      S => reset
    );
\next_switch_matrix_reg[1][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[2].dir_n_78\,
      Q => \next_switch_matrix_reg[1]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[2][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[6].dir_n_69\,
      Q => \next_switch_matrix_reg[2]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[2][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[1].dir_n_57\,
      Q => \next_switch_matrix_reg[2]__0\(1),
      S => reset
    );
\next_switch_matrix_reg[2][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[2].dir_n_62\,
      Q => \next_switch_matrix_reg[2]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[3][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[6].dir_n_64\,
      Q => \next_switch_matrix_reg[3]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[3][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[2].dir_n_83\,
      Q => \next_switch_matrix_reg[3]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[4][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[6].dir_n_75\,
      Q => \next_switch_matrix_reg[4]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[4][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[2].dir_n_60\,
      Q => \next_switch_matrix_reg[4]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[5][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[6].dir_n_63\,
      Q => \next_switch_matrix_reg[5]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[5][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[2].dir_n_77\,
      Q => \next_switch_matrix_reg[5]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[6][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[6].dir_n_68\,
      Q => \next_switch_matrix_reg[6]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[6][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[1].dir_n_58\,
      Q => \next_switch_matrix_reg[6]__0\(1),
      S => reset
    );
\next_switch_matrix_reg[6][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_39\,
      D => \recv[2].dir_n_81\,
      Q => \next_switch_matrix_reg[6]__0\(2),
      S => reset
    );
\pres_switch_matrix[1][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \pres_switch_matrix[1][2]_i_1_n_0\
    );
\pres_switch_matrix_reg[1][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[1]__0\(0),
      Q => \pres_switch_matrix_reg[1]__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[1][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[1]__0\(1),
      Q => \pres_switch_matrix_reg[1]__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[1][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[1]__0\(2),
      Q => \pres_switch_matrix_reg[1]__0\(2),
      S => reset
    );
\pres_switch_matrix_reg[2][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[2]__0\(0),
      Q => \pres_switch_matrix_reg[2]__0__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[2][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[2]__0\(1),
      Q => \pres_switch_matrix_reg[2]__0__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[2][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[2]__0\(2),
      Q => \pres_switch_matrix_reg[2]__0__0\(2),
      S => reset
    );
\pres_switch_matrix_reg[6][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[6]__0\(0),
      Q => \pres_switch_matrix_reg[6]__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[6][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[6]__0\(1),
      Q => \pres_switch_matrix_reg[6]__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[6][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[6]__0\(2),
      Q => \pres_switch_matrix_reg[6]__0\(2),
      S => reset
    );
\read_R_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => ctrl_cycle(1),
      I1 => ctrl_cycle(0),
      I2 => \read_R_i_2__0_n_0\,
      I3 => \read_R_i_3__0_n_0\,
      I4 => \read_R_i_4__0_n_0\,
      I5 => \read_R_i_5__0_n_0\,
      O => \read_R_i_1__0_n_0\
    );
\read_R_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \next_switch_matrix_reg[3]__0\(0),
      I1 => \next_switch_matrix_reg[3]__0\(2),
      I2 => \next_switch_matrix_reg[4]__0\(0),
      I3 => \next_switch_matrix_reg[4]__0\(2),
      O => \read_R_i_2__0_n_0\
    );
\read_R_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => \next_switch_matrix_reg[5]__0\(0),
      I1 => \next_switch_matrix_reg[5]__0\(2),
      I2 => \next_switch_matrix_reg[6]__0\(0),
      I3 => \next_switch_matrix_reg[6]__0\(2),
      I4 => \next_switch_matrix_reg[6]__0\(1),
      O => \read_R_i_3__0_n_0\
    );
\read_R_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \next_switch_matrix_reg[1]__0\(1),
      I1 => \next_switch_matrix_reg[1]__0\(2),
      I2 => \next_switch_matrix_reg[1]__0\(0),
      O => \read_R_i_4__0_n_0\
    );
\read_R_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => \next_switch_matrix_reg[0]__0\(0),
      I1 => \next_switch_matrix_reg[0]__0\(2),
      I2 => \next_switch_matrix_reg[2]__0\(0),
      I3 => \next_switch_matrix_reg[2]__0\(2),
      I4 => \next_switch_matrix_reg[2]__0\(1),
      O => \read_R_i_5__0_n_0\
    );
read_R_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \read_R_i_1__0_n_0\,
      Q => read_R(0),
      R => reset
    );
\recv[1].dir\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized1\
     port map (
      D(0) => \recv[1].dir_n_59\,
      E(0) => load_enable,
      \G0.mem_reg[37]_0\ => \recv[2].dir_n_56\,
      \G0.mem_reg[55]_0\(55 downto 0) => \Q[2]__0\(55 downto 0),
      \G0.mem_reg[55]_1\(55 downto 0) => \Q[6]__0\(55 downto 0),
      \Inport[1]\(55 downto 0) => \Inport[1]\(55 downto 0),
      Q(55 downto 0) => \Q[1]__0\(55 downto 0),
      clk => clk,
      \mem_reg[55]\(55 downto 0) => \next_outport[1]_40\(55 downto 0),
      \next_switch_matrix_reg[0][2]\ => \recv[1].dir_n_61\,
      \next_switch_matrix_reg[1][0]\ => \recv[1].dir_n_60\,
      \next_switch_matrix_reg[2][1]\ => \recv[1].dir_n_57\,
      \next_switch_matrix_reg[4][2]\ => \recv[1].dir_n_0\,
      \next_switch_matrix_reg[6][1]\ => \recv[1].dir_n_58\,
      \port_wants_to[2][2]_29\(0) => \port_wants_to[2][2]_29\(1),
      \pres_switch_matrix_reg[1][2]\(2 downto 0) => \pres_switch_matrix_reg[1]__0\(2 downto 0),
      reset => reset
    );
\recv[2].dir\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized2\
     port map (
      D(0) => \recv[2].dir_n_77\,
      E(0) => load_enable,
      \G0.mem_reg[32]_0\ => \recv[6].dir_n_59\,
      \G0.mem_reg[36]_0\ => \recv[1].dir_n_0\,
      \G0.mem_reg[37]_0\ => \recv[6].dir_n_60\,
      \G0.mem_reg[37]_1\ => \recv[6].dir_n_74\,
      \G0.mem_reg[37]_2\ => \recv[6].dir_n_72\,
      \G0.mem_reg[55]_0\ => \recv[1].dir_n_58\,
      \G0.mem_reg[55]_1\ => \recv[1].dir_n_60\,
      \G0.mem_reg[55]_2\ => \recv[6].dir_n_73\,
      \G0.mem_reg[55]_3\ => \recv[6].dir_n_66\,
      \G0.mem_reg[55]_4\ => \recv[6].dir_n_61\,
      \G0.mem_reg[55]_5\ => \recv[6].dir_n_76\,
      \G0.mem_reg[55]_6\ => \recv[1].dir_n_61\,
      \G0.mem_reg[55]_7\ => \recv[1].dir_n_57\,
      Q(55 downto 0) => \Q[2]__0\(55 downto 0),
      clk => clk,
      \mem_reg[55]\(55 downto 0) => Q(55 downto 0),
      \next_switch_matrix_reg[0][0]\ => \recv[2].dir_n_67\,
      \next_switch_matrix_reg[0][0]_0\ => \recv[2].dir_n_70\,
      \next_switch_matrix_reg[0][0]_1\ => \recv[2].dir_n_72\,
      \next_switch_matrix_reg[0][0]_2\ => \recv[2].dir_n_73\,
      \next_switch_matrix_reg[0][0]_3\ => \recv[2].dir_n_74\,
      \next_switch_matrix_reg[0][0]_4\ => \recv[2].dir_n_79\,
      \next_switch_matrix_reg[0][0]_5\ => \recv[2].dir_n_84\,
      \next_switch_matrix_reg[0][2]\ => \recv[2].dir_n_58\,
      \next_switch_matrix_reg[1][0]\ => \recv[2].dir_n_57\,
      \next_switch_matrix_reg[1][2]\(0) => \recv[2].dir_n_78\,
      \next_switch_matrix_reg[2][0]\ => \recv[2].dir_n_69\,
      \next_switch_matrix_reg[2][2]\ => \recv[2].dir_n_62\,
      \next_switch_matrix_reg[3][0]\ => \recv[2].dir_n_65\,
      \next_switch_matrix_reg[3][0]_0\ => \recv[2].dir_n_68\,
      \next_switch_matrix_reg[3][2]\ => \recv[2].dir_n_63\,
      \next_switch_matrix_reg[3][2]_0\(0) => \recv[2].dir_n_83\,
      \next_switch_matrix_reg[4][0]\ => \recv[2].dir_n_61\,
      \next_switch_matrix_reg[4][0]_0\ => \recv[2].dir_n_66\,
      \next_switch_matrix_reg[4][0]_1\ => \recv[2].dir_n_71\,
      \next_switch_matrix_reg[4][2]\ => \recv[2].dir_n_56\,
      \next_switch_matrix_reg[4][2]_0\(0) => \port_wants_to[2][2]_29\(1),
      \next_switch_matrix_reg[4][2]_1\ => \recv[2].dir_n_60\,
      \next_switch_matrix_reg[5][0]\ => \recv[2].dir_n_64\,
      \next_switch_matrix_reg[5][0]_0\ => \recv[2].dir_n_76\,
      \next_switch_matrix_reg[5][2]\ => \recv[2].dir_n_75\,
      \next_switch_matrix_reg[6][0]\ => \recv[2].dir_n_80\,
      \next_switch_matrix_reg[6][2]\(0) => \recv[2].dir_n_81\,
      \next_switch_matrix_reg[6][2]_0\ => \recv[2].dir_n_82\,
      \port_wants_to[6][0]_36\(0) => \port_wants_to[6][0]_36\(1),
      \port_wants_to[6][1]_32\(0) => \port_wants_to[6][1]_32\(0),
      \port_wants_to[6][2]_34\(0) => \port_wants_to[6][2]_34\(1),
      \port_wants_to[6][3]_33\(2 downto 0) => \port_wants_to[6][3]_33\(2 downto 0),
      reset => reset
    );
\recv[6].dir\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized6\
     port map (
      D(0) => \recv[2].dir_n_58\,
      E(0) => load_enable,
      \G0.mem_reg[32]_0\ => \recv[2].dir_n_82\,
      \G0.mem_reg[32]_1\ => \recv[2].dir_n_72\,
      \G0.mem_reg[32]_2\ => \recv[2].dir_n_74\,
      \G0.mem_reg[33]_0\ => \recv[2].dir_n_76\,
      \G0.mem_reg[33]_1\ => \recv[2].dir_n_75\,
      \G0.mem_reg[36]_0\ => \recv[2].dir_n_70\,
      \G0.mem_reg[37]_0\ => \recv[2].dir_n_57\,
      \G0.mem_reg[37]_1\ => \recv[2].dir_n_84\,
      \G0.mem_reg[37]_2\ => \recv[2].dir_n_67\,
      \G0.mem_reg[55]_0\(0) => \recv[2].dir_n_60\,
      \G0.mem_reg[55]_1\ => \recv[1].dir_n_58\,
      \G0.mem_reg[55]_10\ => \recv[2].dir_n_68\,
      \G0.mem_reg[55]_11\ => \recv[2].dir_n_80\,
      \G0.mem_reg[55]_12\ => \recv[2].dir_n_71\,
      \G0.mem_reg[55]_13\ => \recv[2].dir_n_73\,
      \G0.mem_reg[55]_14\ => \recv[1].dir_n_60\,
      \G0.mem_reg[55]_15\(0) => \recv[1].dir_n_57\,
      \G0.mem_reg[55]_16\(55 downto 0) => \Q[1]__0\(55 downto 0),
      \G0.mem_reg[55]_17\(55 downto 0) => \Q[2]__0\(55 downto 0),
      \G0.mem_reg[55]_2\ => \recv[2].dir_n_63\,
      \G0.mem_reg[55]_3\ => \recv[2].dir_n_61\,
      \G0.mem_reg[55]_4\ => \recv[2].dir_n_79\,
      \G0.mem_reg[55]_5\ => \recv[2].dir_n_62\,
      \G0.mem_reg[55]_6\ => \recv[2].dir_n_66\,
      \G0.mem_reg[55]_7\ => \recv[2].dir_n_65\,
      \G0.mem_reg[55]_8\ => \recv[2].dir_n_64\,
      \G0.mem_reg[55]_9\ => \recv[2].dir_n_69\,
      Q(55 downto 0) => \Q[6]__0\(55 downto 0),
      To_NoC_2(55 downto 0) => To_NoC_2(55 downto 0),
      clk => clk,
      \ctrl_cycle_reg[1]\(1 downto 0) => ctrl_cycle(1 downto 0),
      \mem_reg[55]\(55 downto 0) => \next_outport[2]_41\(55 downto 0),
      \mem_reg[55]_0\(55 downto 0) => \next_outport[6]_42\(55 downto 0),
      \next_switch_matrix_reg[0][0]\ => \recv[6].dir_n_61\,
      \next_switch_matrix_reg[0][0]_0\ => \recv[6].dir_n_66\,
      \next_switch_matrix_reg[0][0]_1\(0) => \recv[6].dir_n_70\,
      \next_switch_matrix_reg[0][0]_2\ => \recv[6].dir_n_73\,
      \next_switch_matrix_reg[0][0]_3\ => \recv[6].dir_n_76\,
      \next_switch_matrix_reg[1][0]\(0) => \recv[6].dir_n_77\,
      \next_switch_matrix_reg[2][0]\(0) => \recv[6].dir_n_69\,
      \next_switch_matrix_reg[3][0]\(0) => \recv[6].dir_n_64\,
      \next_switch_matrix_reg[3][0]_0\ => \recv[6].dir_n_74\,
      \next_switch_matrix_reg[4][0]\ => \recv[6].dir_n_59\,
      \next_switch_matrix_reg[4][0]_0\(0) => \recv[6].dir_n_75\,
      \next_switch_matrix_reg[5][0]\(0) => \recv[6].dir_n_63\,
      \next_switch_matrix_reg[6][0]\ => \recv[6].dir_n_60\,
      \next_switch_matrix_reg[6][0]_0\(0) => \port_wants_to[6][2]_34\(1),
      \next_switch_matrix_reg[6][0]_1\(0) => \recv[6].dir_n_68\,
      \next_switch_matrix_reg[6][0]_2\ => \recv[6].dir_n_72\,
      \port_wants_to[6][0]_36\(0) => \port_wants_to[6][0]_36\(1),
      \port_wants_to[6][1]_32\(0) => \port_wants_to[6][1]_32\(0),
      \port_wants_to[6][3]_33\(2 downto 0) => \port_wants_to[6][3]_33\(2 downto 0),
      \pres_switch_matrix_reg[2][2]\(2 downto 0) => \pres_switch_matrix_reg[2]__0__0\(2 downto 0),
      \pres_switch_matrix_reg[6][2]\(2 downto 0) => \pres_switch_matrix_reg[6]__0\(2 downto 0),
      reset => reset
    );
write_R_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \xmit[6].dir_n_0\,
      Q => write_R(0),
      R => '0'
    );
\xmit[1].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_5
     port map (
      D(55 downto 0) => \next_outport[1]_40\(55 downto 0),
      E(0) => load_enable,
      \Outport[1]\(55 downto 0) => \Outport[1]\(55 downto 0),
      clk => clk,
      reset => reset
    );
\xmit[2].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_6
     port map (
      D(55 downto 0) => \next_outport[2]_41\(55 downto 0),
      E(0) => load_enable,
      \Outport[2]\(55 downto 0) => \Outport[2]\(55 downto 0),
      clk => clk,
      reset => reset
    );
\xmit[6].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_7
     port map (
      D(55 downto 0) => \next_outport[6]_42\(55 downto 0),
      E(0) => load_enable,
      From_NoC_2(55 downto 0) => From_NoC_2(55 downto 0),
      Q(1 downto 0) => ctrl_cycle(1 downto 0),
      clk => clk,
      reset => reset,
      write_R_reg => \xmit[6].dir_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized3\ is
  port (
    read_R : out STD_LOGIC_VECTOR ( 0 to 0 );
    write_R : out STD_LOGIC_VECTOR ( 0 to 0 );
    \G0.mem_reg[55]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \G0.mem_reg[55]_0\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_1 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 55 downto 0 );
    D : in STD_LOGIC_VECTOR ( 55 downto 0 );
    To_NoC_1 : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized3\ : entity is "NoC_3D_Parallel_Switch";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized3\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized3\ is
  signal \^from_noc_1\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \Q[3]__0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \Q[6]__0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal Q_0 : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal ctrl_cycle : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ctrl_cycle[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_cycle[1]_i_1_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[0][0]_i_10_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[0][0]_i_12_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[0][0]_i_4_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[0][0]_i_7_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[0][0]_i_8_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[0][2]_i_3_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[0][2]_i_4_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[0][2]_i_7_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[0][2]_i_8_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[1][0]_i_4_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[1][2]_i_3_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[1][2]_i_5_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[2][0]_i_3_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[2][2]_i_2_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[3][0]_i_2_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[3][0]_i_7_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[3][0]_i_9_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[3][2]_i_3_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[3][2]_i_6_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[3][2]_i_7_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[3][2]_i_8_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[3][2]_i_9_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[4][0]_i_3_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[4][0]_i_4_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[4][0]_i_7_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[4][0]_i_8_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[4][0]_i_9_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[4][2]_i_2_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[4][2]_i_3_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[4][2]_i_6_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[6][2]_i_1_n_0\ : STD_LOGIC;
  signal \i_/next_switch_matrix[6][2]_i_2_n_0\ : STD_LOGIC;
  signal \i_/read_R_i_1_n_0\ : STD_LOGIC;
  signal \i_/read_R_i_2_n_0\ : STD_LOGIC;
  signal \i_/read_R_i_3_n_0\ : STD_LOGIC;
  signal \i_/read_R_i_4_n_0\ : STD_LOGIC;
  signal \i_/read_R_i_5_n_0\ : STD_LOGIC;
  signal \i_/write_R_i_1_n_0\ : STD_LOGIC;
  signal load_enable : STD_LOGIC;
  signal \next_outport[0]_13\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_outport[3]_14\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_outport[6]_15\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_switch_matrix[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \next_switch_matrix[6]_12\ : STD_LOGIC;
  signal \next_switch_matrix_reg[0]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[1]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[2]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[3]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[4]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[5]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[6]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[3][0]_4\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[3][1]_2\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[3][2]_1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[3][3]_0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \port_wants_to[3][4]_3\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \port_wants_to[6][0]_9\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[6][1]_7\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \port_wants_to[6][2]_6\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \pres_switch_matrix[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \pres_switch_matrix_reg[0]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pres_switch_matrix_reg[3]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pres_switch_matrix_reg[6]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \recv[0].dir_n_0\ : STD_LOGIC;
  signal \recv[3].dir_n_0\ : STD_LOGIC;
  signal \recv[3].dir_n_60\ : STD_LOGIC;
  signal \recv[3].dir_n_61\ : STD_LOGIC;
  signal \recv[3].dir_n_62\ : STD_LOGIC;
  signal \recv[3].dir_n_63\ : STD_LOGIC;
  signal \recv[3].dir_n_66\ : STD_LOGIC;
  signal \recv[3].dir_n_71\ : STD_LOGIC;
  signal \recv[6].dir_n_0\ : STD_LOGIC;
  signal \recv[6].dir_n_4\ : STD_LOGIC;
  signal \recv[6].dir_n_61\ : STD_LOGIC;
  signal \recv[6].dir_n_62\ : STD_LOGIC;
  signal \recv[6].dir_n_63\ : STD_LOGIC;
  signal \recv[6].dir_n_64\ : STD_LOGIC;
  signal \recv[6].dir_n_67\ : STD_LOGIC;
  signal \recv[6].dir_n_70\ : STD_LOGIC;
  signal \recv[6].dir_n_71\ : STD_LOGIC;
  signal \recv[6].dir_n_72\ : STD_LOGIC;
  signal \recv[6].dir_n_73\ : STD_LOGIC;
  signal \recv[6].dir_n_74\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctrl_cycle[0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \ctrl_cycle[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \i_/mem[55]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[0][0]_i_8\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[0][2]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[0][2]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[0][2]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[0][2]_i_7\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[2][0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[3][0]_i_7\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[3][0]_i_9\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[3][2]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[3][2]_i_6\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[4][0]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[4][0]_i_8\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[4][2]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \i_/next_switch_matrix[5][0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \i_/write_R_i_1\ : label is "soft_lutpair51";
begin
  From_NoC_1(55 downto 0) <= \^from_noc_1\(55 downto 0);
\ctrl_cycle[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_cycle(0),
      O => \ctrl_cycle[0]_i_1_n_0\
    );
\ctrl_cycle[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \ctrl_cycle[1]_i_1_n_0\
    );
\ctrl_cycle_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ctrl_cycle[0]_i_1_n_0\,
      Q => ctrl_cycle(0),
      R => reset
    );
\ctrl_cycle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ctrl_cycle[1]_i_1_n_0\,
      Q => ctrl_cycle(1),
      R => reset
    );
\i_/mem[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(0),
      I1 => \Q[3]__0\(0),
      I2 => \Q[6]__0\(0),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(0)
    );
\i_/mem[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(0),
      I1 => Q_0(0),
      I2 => \Q[3]__0\(0),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(0)
    );
\i_/mem[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(0),
      I1 => Q_0(0),
      I2 => \Q[3]__0\(0),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(0)
    );
\i_/mem[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(10),
      I1 => \Q[3]__0\(10),
      I2 => \Q[6]__0\(10),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(10)
    );
\i_/mem[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(10),
      I1 => Q_0(10),
      I2 => \Q[3]__0\(10),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(10)
    );
\i_/mem[10]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(10),
      I1 => Q_0(10),
      I2 => \Q[3]__0\(10),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(10)
    );
\i_/mem[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(11),
      I1 => \Q[3]__0\(11),
      I2 => \Q[6]__0\(11),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(11)
    );
\i_/mem[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(11),
      I1 => Q_0(11),
      I2 => \Q[3]__0\(11),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(11)
    );
\i_/mem[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(11),
      I1 => Q_0(11),
      I2 => \Q[3]__0\(11),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(11)
    );
\i_/mem[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(12),
      I1 => \Q[3]__0\(12),
      I2 => \Q[6]__0\(12),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(12)
    );
\i_/mem[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(12),
      I1 => Q_0(12),
      I2 => \Q[3]__0\(12),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(12)
    );
\i_/mem[12]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(12),
      I1 => Q_0(12),
      I2 => \Q[3]__0\(12),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(12)
    );
\i_/mem[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(13),
      I1 => \Q[3]__0\(13),
      I2 => \Q[6]__0\(13),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(13)
    );
\i_/mem[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(13),
      I1 => Q_0(13),
      I2 => \Q[3]__0\(13),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(13)
    );
\i_/mem[13]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(13),
      I1 => Q_0(13),
      I2 => \Q[3]__0\(13),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(13)
    );
\i_/mem[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(14),
      I1 => \Q[3]__0\(14),
      I2 => \Q[6]__0\(14),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(14)
    );
\i_/mem[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(14),
      I1 => Q_0(14),
      I2 => \Q[3]__0\(14),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(14)
    );
\i_/mem[14]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(14),
      I1 => Q_0(14),
      I2 => \Q[3]__0\(14),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(14)
    );
\i_/mem[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(15),
      I1 => \Q[3]__0\(15),
      I2 => \Q[6]__0\(15),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(15)
    );
\i_/mem[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(15),
      I1 => Q_0(15),
      I2 => \Q[3]__0\(15),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(15)
    );
\i_/mem[15]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(15),
      I1 => Q_0(15),
      I2 => \Q[3]__0\(15),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(15)
    );
\i_/mem[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(16),
      I1 => \Q[3]__0\(16),
      I2 => \Q[6]__0\(16),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(16)
    );
\i_/mem[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(16),
      I1 => Q_0(16),
      I2 => \Q[3]__0\(16),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(16)
    );
\i_/mem[16]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(16),
      I1 => Q_0(16),
      I2 => \Q[3]__0\(16),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(16)
    );
\i_/mem[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(17),
      I1 => \Q[3]__0\(17),
      I2 => \Q[6]__0\(17),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(17)
    );
\i_/mem[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(17),
      I1 => Q_0(17),
      I2 => \Q[3]__0\(17),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(17)
    );
\i_/mem[17]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(17),
      I1 => Q_0(17),
      I2 => \Q[3]__0\(17),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(17)
    );
\i_/mem[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(18),
      I1 => \Q[3]__0\(18),
      I2 => \Q[6]__0\(18),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(18)
    );
\i_/mem[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(18),
      I1 => Q_0(18),
      I2 => \Q[3]__0\(18),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(18)
    );
\i_/mem[18]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(18),
      I1 => Q_0(18),
      I2 => \Q[3]__0\(18),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(18)
    );
\i_/mem[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(19),
      I1 => \Q[3]__0\(19),
      I2 => \Q[6]__0\(19),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(19)
    );
\i_/mem[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(19),
      I1 => Q_0(19),
      I2 => \Q[3]__0\(19),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(19)
    );
\i_/mem[19]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(19),
      I1 => Q_0(19),
      I2 => \Q[3]__0\(19),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(19)
    );
\i_/mem[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(1),
      I1 => \Q[3]__0\(1),
      I2 => \Q[6]__0\(1),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(1)
    );
\i_/mem[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(1),
      I1 => Q_0(1),
      I2 => \Q[3]__0\(1),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(1)
    );
\i_/mem[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(1),
      I1 => Q_0(1),
      I2 => \Q[3]__0\(1),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(1)
    );
\i_/mem[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(20),
      I1 => \Q[3]__0\(20),
      I2 => \Q[6]__0\(20),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(20)
    );
\i_/mem[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(20),
      I1 => Q_0(20),
      I2 => \Q[3]__0\(20),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(20)
    );
\i_/mem[20]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(20),
      I1 => Q_0(20),
      I2 => \Q[3]__0\(20),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(20)
    );
\i_/mem[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(21),
      I1 => \Q[3]__0\(21),
      I2 => \Q[6]__0\(21),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(21)
    );
\i_/mem[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(21),
      I1 => Q_0(21),
      I2 => \Q[3]__0\(21),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(21)
    );
\i_/mem[21]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(21),
      I1 => Q_0(21),
      I2 => \Q[3]__0\(21),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(21)
    );
\i_/mem[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(22),
      I1 => \Q[3]__0\(22),
      I2 => \Q[6]__0\(22),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(22)
    );
\i_/mem[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(22),
      I1 => Q_0(22),
      I2 => \Q[3]__0\(22),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(22)
    );
\i_/mem[22]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(22),
      I1 => Q_0(22),
      I2 => \Q[3]__0\(22),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(22)
    );
\i_/mem[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(23),
      I1 => \Q[3]__0\(23),
      I2 => \Q[6]__0\(23),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(23)
    );
\i_/mem[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(23),
      I1 => Q_0(23),
      I2 => \Q[3]__0\(23),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(23)
    );
\i_/mem[23]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(23),
      I1 => Q_0(23),
      I2 => \Q[3]__0\(23),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(23)
    );
\i_/mem[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(24),
      I1 => \Q[3]__0\(24),
      I2 => \Q[6]__0\(24),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(24)
    );
\i_/mem[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(24),
      I1 => Q_0(24),
      I2 => \Q[3]__0\(24),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(24)
    );
\i_/mem[24]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(24),
      I1 => Q_0(24),
      I2 => \Q[3]__0\(24),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(24)
    );
\i_/mem[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(25),
      I1 => \Q[3]__0\(25),
      I2 => \Q[6]__0\(25),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(25)
    );
\i_/mem[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(25),
      I1 => Q_0(25),
      I2 => \Q[3]__0\(25),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(25)
    );
\i_/mem[25]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(25),
      I1 => Q_0(25),
      I2 => \Q[3]__0\(25),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(25)
    );
\i_/mem[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(26),
      I1 => \Q[3]__0\(26),
      I2 => \Q[6]__0\(26),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(26)
    );
\i_/mem[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(26),
      I1 => Q_0(26),
      I2 => \Q[3]__0\(26),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(26)
    );
\i_/mem[26]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(26),
      I1 => Q_0(26),
      I2 => \Q[3]__0\(26),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(26)
    );
\i_/mem[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(27),
      I1 => \Q[3]__0\(27),
      I2 => \Q[6]__0\(27),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(27)
    );
\i_/mem[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(27),
      I1 => Q_0(27),
      I2 => \Q[3]__0\(27),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(27)
    );
\i_/mem[27]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(27),
      I1 => Q_0(27),
      I2 => \Q[3]__0\(27),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(27)
    );
\i_/mem[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(28),
      I1 => \Q[3]__0\(28),
      I2 => \Q[6]__0\(28),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(28)
    );
\i_/mem[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(28),
      I1 => Q_0(28),
      I2 => \Q[3]__0\(28),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(28)
    );
\i_/mem[28]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(28),
      I1 => Q_0(28),
      I2 => \Q[3]__0\(28),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(28)
    );
\i_/mem[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(29),
      I1 => \Q[3]__0\(29),
      I2 => \Q[6]__0\(29),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(29)
    );
\i_/mem[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(29),
      I1 => Q_0(29),
      I2 => \Q[3]__0\(29),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(29)
    );
\i_/mem[29]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(29),
      I1 => Q_0(29),
      I2 => \Q[3]__0\(29),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(29)
    );
\i_/mem[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(2),
      I1 => \Q[3]__0\(2),
      I2 => \Q[6]__0\(2),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(2)
    );
\i_/mem[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(2),
      I1 => Q_0(2),
      I2 => \Q[3]__0\(2),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(2)
    );
\i_/mem[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(2),
      I1 => Q_0(2),
      I2 => \Q[3]__0\(2),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(2)
    );
\i_/mem[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(30),
      I1 => \Q[3]__0\(30),
      I2 => \Q[6]__0\(30),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(30)
    );
\i_/mem[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(30),
      I1 => Q_0(30),
      I2 => \Q[3]__0\(30),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(30)
    );
\i_/mem[30]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(30),
      I1 => Q_0(30),
      I2 => \Q[3]__0\(30),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(30)
    );
\i_/mem[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(31),
      I1 => \Q[3]__0\(31),
      I2 => \Q[6]__0\(31),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(31)
    );
\i_/mem[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(31),
      I1 => Q_0(31),
      I2 => \Q[3]__0\(31),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(31)
    );
\i_/mem[31]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(31),
      I1 => Q_0(31),
      I2 => \Q[3]__0\(31),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(31)
    );
\i_/mem[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(32),
      I1 => \Q[3]__0\(32),
      I2 => \Q[6]__0\(32),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(32)
    );
\i_/mem[32]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(32),
      I1 => Q_0(32),
      I2 => \Q[3]__0\(32),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(32)
    );
\i_/mem[32]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(32),
      I1 => Q_0(32),
      I2 => \Q[3]__0\(32),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(32)
    );
\i_/mem[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(33),
      I1 => \Q[3]__0\(33),
      I2 => \Q[6]__0\(33),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(33)
    );
\i_/mem[33]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(33),
      I1 => Q_0(33),
      I2 => \Q[3]__0\(33),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(33)
    );
\i_/mem[33]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(33),
      I1 => Q_0(33),
      I2 => \Q[3]__0\(33),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(33)
    );
\i_/mem[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(34),
      I1 => \Q[3]__0\(34),
      I2 => \Q[6]__0\(34),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(34)
    );
\i_/mem[34]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(34),
      I1 => Q_0(34),
      I2 => \Q[3]__0\(34),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(34)
    );
\i_/mem[34]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(34),
      I1 => Q_0(34),
      I2 => \Q[3]__0\(34),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(34)
    );
\i_/mem[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(35),
      I1 => \Q[3]__0\(35),
      I2 => \Q[6]__0\(35),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(35)
    );
\i_/mem[35]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(35),
      I1 => Q_0(35),
      I2 => \Q[3]__0\(35),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(35)
    );
\i_/mem[35]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(35),
      I1 => Q_0(35),
      I2 => \Q[3]__0\(35),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(35)
    );
\i_/mem[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(36),
      I1 => \Q[3]__0\(36),
      I2 => \Q[6]__0\(36),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(36)
    );
\i_/mem[36]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(36),
      I1 => Q_0(36),
      I2 => \Q[3]__0\(36),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(36)
    );
\i_/mem[36]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(36),
      I1 => Q_0(36),
      I2 => \Q[3]__0\(36),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(36)
    );
\i_/mem[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(37),
      I1 => \Q[3]__0\(37),
      I2 => \Q[6]__0\(37),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(37)
    );
\i_/mem[37]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(37),
      I1 => Q_0(37),
      I2 => \Q[3]__0\(37),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(37)
    );
\i_/mem[37]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(37),
      I1 => Q_0(37),
      I2 => \Q[3]__0\(37),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(37)
    );
\i_/mem[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(38),
      I1 => \Q[3]__0\(38),
      I2 => \Q[6]__0\(38),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(38)
    );
\i_/mem[38]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(38),
      I1 => Q_0(38),
      I2 => \Q[3]__0\(38),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(38)
    );
\i_/mem[38]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(38),
      I1 => Q_0(38),
      I2 => \Q[3]__0\(38),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(38)
    );
\i_/mem[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(39),
      I1 => \Q[3]__0\(39),
      I2 => \Q[6]__0\(39),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(39)
    );
\i_/mem[39]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(39),
      I1 => Q_0(39),
      I2 => \Q[3]__0\(39),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(39)
    );
\i_/mem[39]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(39),
      I1 => Q_0(39),
      I2 => \Q[3]__0\(39),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(39)
    );
\i_/mem[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(3),
      I1 => \Q[3]__0\(3),
      I2 => \Q[6]__0\(3),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(3)
    );
\i_/mem[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(3),
      I1 => Q_0(3),
      I2 => \Q[3]__0\(3),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(3)
    );
\i_/mem[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(3),
      I1 => Q_0(3),
      I2 => \Q[3]__0\(3),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(3)
    );
\i_/mem[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(40),
      I1 => \Q[3]__0\(40),
      I2 => \Q[6]__0\(40),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(40)
    );
\i_/mem[40]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(40),
      I1 => Q_0(40),
      I2 => \Q[3]__0\(40),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(40)
    );
\i_/mem[40]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(40),
      I1 => Q_0(40),
      I2 => \Q[3]__0\(40),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(40)
    );
\i_/mem[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(41),
      I1 => \Q[3]__0\(41),
      I2 => \Q[6]__0\(41),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(41)
    );
\i_/mem[41]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(41),
      I1 => Q_0(41),
      I2 => \Q[3]__0\(41),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(41)
    );
\i_/mem[41]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(41),
      I1 => Q_0(41),
      I2 => \Q[3]__0\(41),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(41)
    );
\i_/mem[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(42),
      I1 => \Q[3]__0\(42),
      I2 => \Q[6]__0\(42),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(42)
    );
\i_/mem[42]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(42),
      I1 => Q_0(42),
      I2 => \Q[3]__0\(42),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(42)
    );
\i_/mem[42]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(42),
      I1 => Q_0(42),
      I2 => \Q[3]__0\(42),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(42)
    );
\i_/mem[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(43),
      I1 => \Q[3]__0\(43),
      I2 => \Q[6]__0\(43),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(43)
    );
\i_/mem[43]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(43),
      I1 => Q_0(43),
      I2 => \Q[3]__0\(43),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(43)
    );
\i_/mem[43]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(43),
      I1 => Q_0(43),
      I2 => \Q[3]__0\(43),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(43)
    );
\i_/mem[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(44),
      I1 => \Q[3]__0\(44),
      I2 => \Q[6]__0\(44),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(44)
    );
\i_/mem[44]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(44),
      I1 => Q_0(44),
      I2 => \Q[3]__0\(44),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(44)
    );
\i_/mem[44]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(44),
      I1 => Q_0(44),
      I2 => \Q[3]__0\(44),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(44)
    );
\i_/mem[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(45),
      I1 => \Q[3]__0\(45),
      I2 => \Q[6]__0\(45),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(45)
    );
\i_/mem[45]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(45),
      I1 => Q_0(45),
      I2 => \Q[3]__0\(45),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(45)
    );
\i_/mem[45]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(45),
      I1 => Q_0(45),
      I2 => \Q[3]__0\(45),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(45)
    );
\i_/mem[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(46),
      I1 => \Q[3]__0\(46),
      I2 => \Q[6]__0\(46),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(46)
    );
\i_/mem[46]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(46),
      I1 => Q_0(46),
      I2 => \Q[3]__0\(46),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(46)
    );
\i_/mem[46]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(46),
      I1 => Q_0(46),
      I2 => \Q[3]__0\(46),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(46)
    );
\i_/mem[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(47),
      I1 => \Q[3]__0\(47),
      I2 => \Q[6]__0\(47),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(47)
    );
\i_/mem[47]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(47),
      I1 => Q_0(47),
      I2 => \Q[3]__0\(47),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(47)
    );
\i_/mem[47]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(47),
      I1 => Q_0(47),
      I2 => \Q[3]__0\(47),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(47)
    );
\i_/mem[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(48),
      I1 => \Q[3]__0\(48),
      I2 => \Q[6]__0\(48),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(48)
    );
\i_/mem[48]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(48),
      I1 => Q_0(48),
      I2 => \Q[3]__0\(48),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(48)
    );
\i_/mem[48]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(48),
      I1 => Q_0(48),
      I2 => \Q[3]__0\(48),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(48)
    );
\i_/mem[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(49),
      I1 => \Q[3]__0\(49),
      I2 => \Q[6]__0\(49),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(49)
    );
\i_/mem[49]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(49),
      I1 => Q_0(49),
      I2 => \Q[3]__0\(49),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(49)
    );
\i_/mem[49]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(49),
      I1 => Q_0(49),
      I2 => \Q[3]__0\(49),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(49)
    );
\i_/mem[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(4),
      I1 => \Q[3]__0\(4),
      I2 => \Q[6]__0\(4),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(4)
    );
\i_/mem[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(4),
      I1 => Q_0(4),
      I2 => \Q[3]__0\(4),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(4)
    );
\i_/mem[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(4),
      I1 => Q_0(4),
      I2 => \Q[3]__0\(4),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(4)
    );
\i_/mem[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(50),
      I1 => \Q[3]__0\(50),
      I2 => \Q[6]__0\(50),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(50)
    );
\i_/mem[50]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(50),
      I1 => Q_0(50),
      I2 => \Q[3]__0\(50),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(50)
    );
\i_/mem[50]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(50),
      I1 => Q_0(50),
      I2 => \Q[3]__0\(50),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(50)
    );
\i_/mem[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(51),
      I1 => \Q[3]__0\(51),
      I2 => \Q[6]__0\(51),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(51)
    );
\i_/mem[51]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(51),
      I1 => Q_0(51),
      I2 => \Q[3]__0\(51),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(51)
    );
\i_/mem[51]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(51),
      I1 => Q_0(51),
      I2 => \Q[3]__0\(51),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(51)
    );
\i_/mem[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(52),
      I1 => \Q[3]__0\(52),
      I2 => \Q[6]__0\(52),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(52)
    );
\i_/mem[52]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(52),
      I1 => Q_0(52),
      I2 => \Q[3]__0\(52),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(52)
    );
\i_/mem[52]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(52),
      I1 => Q_0(52),
      I2 => \Q[3]__0\(52),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(52)
    );
\i_/mem[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(53),
      I1 => \Q[3]__0\(53),
      I2 => \Q[6]__0\(53),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(53)
    );
\i_/mem[53]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(53),
      I1 => Q_0(53),
      I2 => \Q[3]__0\(53),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(53)
    );
\i_/mem[53]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(53),
      I1 => Q_0(53),
      I2 => \Q[3]__0\(53),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(53)
    );
\i_/mem[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(54),
      I1 => \Q[3]__0\(54),
      I2 => \Q[6]__0\(54),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(54)
    );
\i_/mem[54]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(54),
      I1 => Q_0(54),
      I2 => \Q[3]__0\(54),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(54)
    );
\i_/mem[54]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(54),
      I1 => Q_0(54),
      I2 => \Q[3]__0\(54),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(54)
    );
\i_/mem[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => load_enable
    );
\i_/mem[55]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(55),
      I1 => \Q[3]__0\(55),
      I2 => \Q[6]__0\(55),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(55)
    );
\i_/mem[55]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(55),
      I1 => Q_0(55),
      I2 => \Q[3]__0\(55),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(55)
    );
\i_/mem[55]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(55),
      I1 => Q_0(55),
      I2 => \Q[3]__0\(55),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(55)
    );
\i_/mem[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(5),
      I1 => \Q[3]__0\(5),
      I2 => \Q[6]__0\(5),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(5)
    );
\i_/mem[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(5),
      I1 => Q_0(5),
      I2 => \Q[3]__0\(5),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(5)
    );
\i_/mem[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(5),
      I1 => Q_0(5),
      I2 => \Q[3]__0\(5),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(5)
    );
\i_/mem[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(6),
      I1 => \Q[3]__0\(6),
      I2 => \Q[6]__0\(6),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(6)
    );
\i_/mem[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(6),
      I1 => Q_0(6),
      I2 => \Q[3]__0\(6),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(6)
    );
\i_/mem[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(6),
      I1 => Q_0(6),
      I2 => \Q[3]__0\(6),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(6)
    );
\i_/mem[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(7),
      I1 => \Q[3]__0\(7),
      I2 => \Q[6]__0\(7),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(7)
    );
\i_/mem[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(7),
      I1 => Q_0(7),
      I2 => \Q[3]__0\(7),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(7)
    );
\i_/mem[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(7),
      I1 => Q_0(7),
      I2 => \Q[3]__0\(7),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(7)
    );
\i_/mem[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(8),
      I1 => \Q[3]__0\(8),
      I2 => \Q[6]__0\(8),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(8)
    );
\i_/mem[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(8),
      I1 => Q_0(8),
      I2 => \Q[3]__0\(8),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(8)
    );
\i_/mem[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(8),
      I1 => Q_0(8),
      I2 => \Q[3]__0\(8),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(8)
    );
\i_/mem[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000CC0000AA"
    )
        port map (
      I0 => Q_0(9),
      I1 => \Q[3]__0\(9),
      I2 => \Q[6]__0\(9),
      I3 => \pres_switch_matrix_reg[0]__0\(0),
      I4 => \pres_switch_matrix_reg[0]__0\(1),
      I5 => \pres_switch_matrix_reg[0]__0\(2),
      O => \next_outport[0]_13\(9)
    );
\i_/mem[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(9),
      I1 => Q_0(9),
      I2 => \Q[3]__0\(9),
      I3 => \pres_switch_matrix_reg[3]__0\(1),
      I4 => \pres_switch_matrix_reg[3]__0\(0),
      I5 => \pres_switch_matrix_reg[3]__0\(2),
      O => \next_outport[3]_14\(9)
    );
\i_/mem[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00F00000CC"
    )
        port map (
      I0 => \Q[6]__0\(9),
      I1 => Q_0(9),
      I2 => \Q[3]__0\(9),
      I3 => \pres_switch_matrix_reg[6]__0\(1),
      I4 => \pres_switch_matrix_reg[6]__0\(0),
      I5 => \pres_switch_matrix_reg[6]__0\(2),
      O => \next_outport[6]_15\(9)
    );
\i_/next_switch_matrix[0][0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000FFFFFFFF"
    )
        port map (
      I0 => \Q[6]__0\(55),
      I1 => \recv[6].dir_n_73\,
      I2 => \port_wants_to[6][0]_9\(0),
      I3 => \port_wants_to[6][0]_9\(2),
      I4 => \i_/next_switch_matrix[0][0]_i_12_n_0\,
      I5 => \i_/next_switch_matrix[0][1]_i_1_n_0\,
      O => \i_/next_switch_matrix[0][0]_i_10_n_0\
    );
\i_/next_switch_matrix[0][0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5530553055303030"
    )
        port map (
      I0 => \recv[6].dir_n_72\,
      I1 => \i_/next_switch_matrix[6][2]_i_2_n_0\,
      I2 => \port_wants_to[6][0]_9\(2),
      I3 => \Q[6]__0\(55),
      I4 => \Q[6]__0\(36),
      I5 => \Q[6]__0\(37),
      O => \i_/next_switch_matrix[0][0]_i_12_n_0\
    );
\i_/next_switch_matrix[0][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFEFFF"
    )
        port map (
      I0 => \port_wants_to[6][1]_7\(1),
      I1 => \port_wants_to[6][1]_7\(2),
      I2 => \i_/next_switch_matrix[4][0]_i_4_n_0\,
      I3 => \i_/next_switch_matrix[0][1]_i_1_n_0\,
      I4 => \i_/next_switch_matrix[0][2]_i_3_n_0\,
      I5 => \i_/next_switch_matrix[0][0]_i_10_n_0\,
      O => \i_/next_switch_matrix[0][0]_i_4_n_0\
    );
\i_/next_switch_matrix[0][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB7FFB7FFB7BBB3"
    )
        port map (
      I0 => \recv[6].dir_n_73\,
      I1 => \Q[6]__0\(55),
      I2 => \Q[6]__0\(34),
      I3 => \Q[6]__0\(35),
      I4 => \Q[6]__0\(33),
      I5 => \Q[6]__0\(32),
      O => \i_/next_switch_matrix[0][0]_i_7_n_0\
    );
\i_/next_switch_matrix[0][0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F8F0"
    )
        port map (
      I0 => \port_wants_to[6][1]_7\(1),
      I1 => \i_/next_switch_matrix[4][0]_i_4_n_0\,
      I2 => \i_/next_switch_matrix[4][0]_i_9_n_0\,
      I3 => \i_/next_switch_matrix[3][2]_i_1_n_0\,
      I4 => \port_wants_to[6][1]_7\(2),
      O => \i_/next_switch_matrix[0][0]_i_8_n_0\
    );
\i_/next_switch_matrix[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F1F0FFF"
    )
        port map (
      I0 => Q_0(32),
      I1 => Q_0(33),
      I2 => Q_0(55),
      I3 => \next_switch_matrix[0][1]_i_2_n_0\,
      I4 => Q_0(34),
      I5 => Q_0(35),
      O => \i_/next_switch_matrix[0][1]_i_1_n_0\
    );
\i_/next_switch_matrix[0][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \next_switch_matrix[6]_12\
    );
\i_/next_switch_matrix[0][2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_/next_switch_matrix[0][2]_i_3_n_0\,
      O => \i_/next_switch_matrix[0][2]_i_2_n_0\
    );
\i_/next_switch_matrix[0][2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => \i_/next_switch_matrix[0][2]_i_4_n_0\,
      I1 => \port_wants_to[3][2]_1\(0),
      I2 => \port_wants_to[3][2]_1\(2),
      I3 => \i_/next_switch_matrix[0][2]_i_7_n_0\,
      O => \i_/next_switch_matrix[0][2]_i_3_n_0\
    );
\i_/next_switch_matrix[0][2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABBB"
    )
        port map (
      I0 => \i_/next_switch_matrix[2][2]_i_2_n_0\,
      I1 => \i_/next_switch_matrix[4][2]_i_3_n_0\,
      I2 => \port_wants_to[3][1]_2\(2),
      I3 => \port_wants_to[3][1]_2\(0),
      O => \i_/next_switch_matrix[0][2]_i_4_n_0\
    );
\i_/next_switch_matrix[0][2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => \i_/next_switch_matrix[2][2]_i_2_n_0\,
      I1 => \port_wants_to[3][1]_2\(0),
      I2 => \port_wants_to[3][1]_2\(2),
      I3 => \i_/next_switch_matrix[0][2]_i_8_n_0\,
      O => \i_/next_switch_matrix[0][2]_i_7_n_0\
    );
\i_/next_switch_matrix[0][2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => \port_wants_to[3][0]_4\(2),
      I1 => \port_wants_to[3][0]_4\(0),
      I2 => \recv[3].dir_n_66\,
      I3 => \Q[3]__0\(55),
      I4 => \i_/next_switch_matrix[1][2]_i_3_n_0\,
      I5 => \i_/next_switch_matrix[0][1]_i_1_n_0\,
      O => \i_/next_switch_matrix[0][2]_i_8_n_0\
    );
\i_/next_switch_matrix[1][0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_/next_switch_matrix[0][0]_i_12_n_0\,
      I1 => \i_/next_switch_matrix[2][0]_i_3_n_0\,
      O => \i_/next_switch_matrix[1][0]_i_4_n_0\
    );
\i_/next_switch_matrix[1][2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAC0AAAA"
    )
        port map (
      I0 => \i_/next_switch_matrix[1][2]_i_5_n_0\,
      I1 => \recv[3].dir_n_66\,
      I2 => \Q[3]__0\(55),
      I3 => \recv[0].dir_n_0\,
      I4 => \port_wants_to[3][0]_4\(2),
      O => \i_/next_switch_matrix[1][2]_i_3_n_0\
    );
\i_/next_switch_matrix[1][2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFFAAEE"
    )
        port map (
      I0 => \port_wants_to[3][0]_4\(2),
      I1 => \i_/next_switch_matrix[0][1]_i_1_n_0\,
      I2 => \i_/next_switch_matrix[3][1]_i_1_n_0\,
      I3 => \port_wants_to[3][0]_4\(0),
      I4 => \port_wants_to[3][0]_4\(1),
      O => \i_/next_switch_matrix[1][2]_i_5_n_0\
    );
\i_/next_switch_matrix[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \port_wants_to[6][0]_9\(0),
      I1 => \i_/next_switch_matrix[2][0]_i_3_n_0\,
      O => \i_/next_switch_matrix[2][0]_i_1_n_0\
    );
\i_/next_switch_matrix[2][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A003F002A0000"
    )
        port map (
      I0 => \i_/next_switch_matrix[3][2]_i_1_n_0\,
      I1 => \Q[6]__0\(55),
      I2 => \recv[6].dir_n_73\,
      I3 => \port_wants_to[6][0]_9\(2),
      I4 => \port_wants_to[6][0]_9\(0),
      I5 => \i_/next_switch_matrix[2][2]_i_1_n_0\,
      O => \i_/next_switch_matrix[2][0]_i_3_n_0\
    );
\i_/next_switch_matrix[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDDD"
    )
        port map (
      I0 => \i_/next_switch_matrix[2][2]_i_2_n_0\,
      I1 => \port_wants_to[3][0]_4\(2),
      I2 => \recv[3].dir_n_66\,
      I3 => \Q[3]__0\(55),
      I4 => \port_wants_to[3][0]_4\(0),
      O => \i_/next_switch_matrix[2][2]_i_1_n_0\
    );
\i_/next_switch_matrix[2][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A00008A8A0000"
    )
        port map (
      I0 => \i_/next_switch_matrix[1][2]_i_3_n_0\,
      I1 => \recv[3].dir_n_66\,
      I2 => \Q[3]__0\(35),
      I3 => \Q[3]__0\(34),
      I4 => \Q[3]__0\(55),
      I5 => \recv[3].dir_n_71\,
      O => \i_/next_switch_matrix[2][2]_i_2_n_0\
    );
\i_/next_switch_matrix[3][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC8C"
    )
        port map (
      I0 => \i_/next_switch_matrix[3][0]_i_2_n_0\,
      I1 => \recv[6].dir_n_71\,
      I2 => \i_/next_switch_matrix[3][1]_i_1_n_0\,
      I3 => \recv[6].dir_n_70\,
      O => \i_/next_switch_matrix[3][0]_i_1_n_0\
    );
\i_/next_switch_matrix[3][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444455545544"
    )
        port map (
      I0 => \i_/next_switch_matrix[3][2]_i_1_n_0\,
      I1 => \i_/next_switch_matrix[6][2]_i_2_n_0\,
      I2 => \Q[6]__0\(34),
      I3 => \Q[6]__0\(35),
      I4 => \recv[6].dir_n_74\,
      I5 => \port_wants_to[6][0]_9\(1),
      O => \i_/next_switch_matrix[3][0]_i_2_n_0\
    );
\i_/next_switch_matrix[3][0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => \i_/next_switch_matrix[0][0]_i_8_n_0\,
      I1 => \recv[6].dir_n_63\,
      I2 => \recv[6].dir_n_64\,
      I3 => \port_wants_to[6][2]_6\(1),
      I4 => \port_wants_to[6][2]_6\(2),
      O => \i_/next_switch_matrix[3][0]_i_7_n_0\
    );
\i_/next_switch_matrix[3][0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5444"
    )
        port map (
      I0 => \recv[6].dir_n_63\,
      I1 => \recv[6].dir_n_64\,
      I2 => \port_wants_to[6][2]_6\(2),
      I3 => \port_wants_to[6][2]_6\(1),
      O => \i_/next_switch_matrix[3][0]_i_9_n_0\
    );
\i_/next_switch_matrix[3][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => Q_0(35),
      I1 => Q_0(34),
      I2 => \next_switch_matrix[0][1]_i_2_n_0\,
      I3 => Q_0(55),
      O => \i_/next_switch_matrix[3][1]_i_1_n_0\
    );
\i_/next_switch_matrix[3][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C8C0"
    )
        port map (
      I0 => \port_wants_to[3][4]_3\(2),
      I1 => \i_/next_switch_matrix[3][2]_i_3_n_0\,
      I2 => \recv[3].dir_n_63\,
      I3 => \port_wants_to[3][3]_0\(2),
      O => \i_/next_switch_matrix[3][2]_i_1_n_0\
    );
\i_/next_switch_matrix[3][2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
        port map (
      I0 => \i_/next_switch_matrix[0][2]_i_4_n_0\,
      I1 => \port_wants_to[3][2]_1\(0),
      I2 => \port_wants_to[3][2]_1\(2),
      I3 => \i_/next_switch_matrix[3][2]_i_6_n_0\,
      O => \i_/next_switch_matrix[3][2]_i_3_n_0\
    );
\i_/next_switch_matrix[3][2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => \i_/next_switch_matrix[2][2]_i_2_n_0\,
      I1 => \port_wants_to[3][1]_2\(0),
      I2 => \port_wants_to[3][1]_2\(2),
      I3 => \i_/next_switch_matrix[3][2]_i_9_n_0\,
      O => \i_/next_switch_matrix[3][2]_i_6_n_0\
    );
\i_/next_switch_matrix[3][2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \recv[3].dir_n_66\,
      I1 => \Q[3]__0\(55),
      I2 => \Q[3]__0\(35),
      I3 => \recv[3].dir_n_71\,
      I4 => \i_/next_switch_matrix[3][2]_i_6_n_0\,
      O => \i_/next_switch_matrix[3][2]_i_7_n_0\
    );
\i_/next_switch_matrix[3][2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFFFFFFFFFFF"
    )
        port map (
      I0 => \i_/next_switch_matrix[0][2]_i_7_n_0\,
      I1 => \Q[3]__0\(35),
      I2 => \Q[3]__0\(34),
      I3 => \recv[3].dir_n_66\,
      I4 => \Q[3]__0\(55),
      I5 => \recv[3].dir_n_71\,
      O => \i_/next_switch_matrix[3][2]_i_8_n_0\
    );
\i_/next_switch_matrix[3][2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02220000FFFFFFFF"
    )
        port map (
      I0 => \i_/next_switch_matrix[2][2]_i_2_n_0\,
      I1 => \port_wants_to[3][0]_4\(2),
      I2 => \recv[3].dir_n_66\,
      I3 => \Q[3]__0\(55),
      I4 => \port_wants_to[3][0]_4\(0),
      I5 => \i_/next_switch_matrix[3][1]_i_1_n_0\,
      O => \i_/next_switch_matrix[3][2]_i_9_n_0\
    );
\i_/next_switch_matrix[4][0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \i_/next_switch_matrix[4][0]_i_9_n_0\,
      I1 => \i_/next_switch_matrix[3][2]_i_1_n_0\,
      I2 => \port_wants_to[6][1]_7\(2),
      I3 => \port_wants_to[6][1]_7\(1),
      O => \i_/next_switch_matrix[4][0]_i_3_n_0\
    );
\i_/next_switch_matrix[4][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFBFAFAFAF"
    )
        port map (
      I0 => \i_/next_switch_matrix[1][0]_i_4_n_0\,
      I1 => \recv[6].dir_n_73\,
      I2 => \Q[6]__0\(55),
      I3 => \recv[6].dir_n_74\,
      I4 => \Q[6]__0\(34),
      I5 => \Q[6]__0\(35),
      O => \i_/next_switch_matrix[4][0]_i_4_n_0\
    );
\i_/next_switch_matrix[4][0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001F00"
    )
        port map (
      I0 => \Q[6]__0\(37),
      I1 => \Q[6]__0\(36),
      I2 => \Q[6]__0\(55),
      I3 => \port_wants_to[6][0]_9\(2),
      I4 => \i_/next_switch_matrix[4][0]_i_4_n_0\,
      O => \i_/next_switch_matrix[4][0]_i_7_n_0\
    );
\i_/next_switch_matrix[4][0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \i_/next_switch_matrix[0][1]_i_1_n_0\,
      I1 => \port_wants_to[6][1]_7\(2),
      I2 => \port_wants_to[6][1]_7\(1),
      I3 => \i_/next_switch_matrix[0][2]_i_3_n_0\,
      I4 => \i_/next_switch_matrix[0][0]_i_10_n_0\,
      O => \i_/next_switch_matrix[4][0]_i_8_n_0\
    );
\i_/next_switch_matrix[4][0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001115FFFFFFFF"
    )
        port map (
      I0 => \recv[6].dir_n_0\,
      I1 => \Q[6]__0\(55),
      I2 => \Q[6]__0\(36),
      I3 => \Q[6]__0\(37),
      I4 => \port_wants_to[6][0]_9\(2),
      I5 => \i_/next_switch_matrix[3][1]_i_1_n_0\,
      O => \i_/next_switch_matrix[4][0]_i_9_n_0\
    );
\i_/next_switch_matrix[4][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \i_/next_switch_matrix[2][2]_i_2_n_0\,
      I1 => \i_/next_switch_matrix[4][2]_i_3_n_0\,
      I2 => \port_wants_to[3][1]_2\(2),
      I3 => \port_wants_to[3][1]_2\(0),
      O => \i_/next_switch_matrix[4][2]_i_2_n_0\
    );
\i_/next_switch_matrix[4][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEBAFABEEEAAEAA"
    )
        port map (
      I0 => \i_/next_switch_matrix[4][2]_i_6_n_0\,
      I1 => \port_wants_to[3][1]_2\(0),
      I2 => \port_wants_to[3][1]_2\(2),
      I3 => \i_/next_switch_matrix[3][2]_i_9_n_0\,
      I4 => \i_/next_switch_matrix[6][2]_i_2_n_0\,
      I5 => \i_/next_switch_matrix[0][2]_i_8_n_0\,
      O => \i_/next_switch_matrix[4][2]_i_3_n_0\
    );
\i_/next_switch_matrix[4][2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"550F1133"
    )
        port map (
      I0 => \recv[0].dir_n_0\,
      I1 => \i_/next_switch_matrix[0][1]_i_1_n_0\,
      I2 => \i_/next_switch_matrix[3][1]_i_1_n_0\,
      I3 => \port_wants_to[3][1]_2\(2),
      I4 => \port_wants_to[3][1]_2\(0),
      O => \i_/next_switch_matrix[4][2]_i_6_n_0\
    );
\i_/next_switch_matrix[5][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \i_/next_switch_matrix[4][0]_i_4_n_0\,
      I1 => \port_wants_to[6][0]_9\(2),
      I2 => \port_wants_to[6][0]_9\(0),
      O => \i_/next_switch_matrix[5][0]_i_1_n_0\
    );
\i_/next_switch_matrix[6][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \recv[6].dir_n_4\,
      O => \i_/next_switch_matrix[6][0]_i_1_n_0\
    );
\i_/next_switch_matrix[6][2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_/next_switch_matrix[6][2]_i_2_n_0\,
      O => \i_/next_switch_matrix[6][2]_i_1_n_0\
    );
\i_/next_switch_matrix[6][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222A0000FFFFFFFF"
    )
        port map (
      I0 => \i_/next_switch_matrix[2][2]_i_2_n_0\,
      I1 => \Q[3]__0\(55),
      I2 => \Q[3]__0\(36),
      I3 => \Q[3]__0\(37),
      I4 => \port_wants_to[3][0]_4\(2),
      I5 => \recv[0].dir_n_0\,
      O => \i_/next_switch_matrix[6][2]_i_2_n_0\
    );
\i_/read_R_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => ctrl_cycle(1),
      I1 => ctrl_cycle(0),
      I2 => \i_/read_R_i_2_n_0\,
      I3 => \i_/read_R_i_3_n_0\,
      I4 => \i_/read_R_i_4_n_0\,
      I5 => \i_/read_R_i_5_n_0\,
      O => \i_/read_R_i_1_n_0\
    );
\i_/read_R_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => \next_switch_matrix_reg[3]__0\(0),
      I1 => \next_switch_matrix_reg[3]__0\(2),
      I2 => \next_switch_matrix_reg[3]__0\(1),
      I3 => \next_switch_matrix_reg[4]__0\(0),
      I4 => \next_switch_matrix_reg[4]__0\(2),
      O => \i_/read_R_i_2_n_0\
    );
\i_/read_R_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => \next_switch_matrix_reg[5]__0\(0),
      I1 => \next_switch_matrix_reg[5]__0\(2),
      I2 => \next_switch_matrix_reg[6]__0\(0),
      I3 => \next_switch_matrix_reg[6]__0\(2),
      I4 => \next_switch_matrix_reg[6]__0\(1),
      O => \i_/read_R_i_3_n_0\
    );
\i_/read_R_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \next_switch_matrix_reg[1]__0\(2),
      I1 => \next_switch_matrix_reg[1]__0\(0),
      O => \i_/read_R_i_4_n_0\
    );
\i_/read_R_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => \next_switch_matrix_reg[0]__0\(0),
      I1 => \next_switch_matrix_reg[0]__0\(2),
      I2 => \next_switch_matrix_reg[0]__0\(1),
      I3 => \next_switch_matrix_reg[2]__0\(0),
      I4 => \next_switch_matrix_reg[2]__0\(2),
      O => \i_/read_R_i_5_n_0\
    );
\i_/write_R_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^from_noc_1\(55),
      I1 => ctrl_cycle(1),
      I2 => ctrl_cycle(0),
      O => \i_/write_R_i_1_n_0\
    );
\next_switch_matrix[0][1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q_0(36),
      I1 => Q_0(37),
      O => \next_switch_matrix[0][1]_i_2_n_0\
    );
\next_switch_matrix_reg[0][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \recv[6].dir_n_62\,
      Q => \next_switch_matrix_reg[0]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[0][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \i_/next_switch_matrix[0][1]_i_1_n_0\,
      Q => \next_switch_matrix_reg[0]__0\(1),
      S => reset
    );
\next_switch_matrix_reg[0][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \i_/next_switch_matrix[0][2]_i_2_n_0\,
      Q => \next_switch_matrix_reg[0]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[1][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \recv[6].dir_n_61\,
      Q => \next_switch_matrix_reg[1]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[1][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \recv[3].dir_n_0\,
      Q => \next_switch_matrix_reg[1]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[2][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \i_/next_switch_matrix[2][0]_i_1_n_0\,
      Q => \next_switch_matrix_reg[2]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[2][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \i_/next_switch_matrix[2][2]_i_1_n_0\,
      Q => \next_switch_matrix_reg[2]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[3][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \i_/next_switch_matrix[3][0]_i_1_n_0\,
      Q => \next_switch_matrix_reg[3]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[3][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \i_/next_switch_matrix[3][1]_i_1_n_0\,
      Q => \next_switch_matrix_reg[3]__0\(1),
      S => reset
    );
\next_switch_matrix_reg[3][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \i_/next_switch_matrix[3][2]_i_1_n_0\,
      Q => \next_switch_matrix_reg[3]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[4][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \recv[6].dir_n_67\,
      Q => \next_switch_matrix_reg[4]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[4][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \recv[3].dir_n_62\,
      Q => \next_switch_matrix_reg[4]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[5][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \i_/next_switch_matrix[5][0]_i_1_n_0\,
      Q => \next_switch_matrix_reg[5]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[5][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \recv[3].dir_n_60\,
      Q => \next_switch_matrix_reg[5]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[6][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \i_/next_switch_matrix[6][0]_i_1_n_0\,
      Q => \next_switch_matrix_reg[6]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[6][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \recv[0].dir_n_0\,
      Q => \next_switch_matrix_reg[6]__0\(1),
      S => reset
    );
\next_switch_matrix_reg[6][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_12\,
      D => \i_/next_switch_matrix[6][2]_i_1_n_0\,
      Q => \next_switch_matrix_reg[6]__0\(2),
      S => reset
    );
\pres_switch_matrix[0][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \pres_switch_matrix[0][2]_i_1_n_0\
    );
\pres_switch_matrix_reg[0][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[0]__0\(0),
      Q => \pres_switch_matrix_reg[0]__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[0][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[0]__0\(1),
      Q => \pres_switch_matrix_reg[0]__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[0][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[0]__0\(2),
      Q => \pres_switch_matrix_reg[0]__0\(2),
      S => reset
    );
\pres_switch_matrix_reg[3][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[3]__0\(0),
      Q => \pres_switch_matrix_reg[3]__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[3][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[3]__0\(1),
      Q => \pres_switch_matrix_reg[3]__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[3][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[3]__0\(2),
      Q => \pres_switch_matrix_reg[3]__0\(2),
      S => reset
    );
\pres_switch_matrix_reg[6][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[6]__0\(0),
      Q => \pres_switch_matrix_reg[6]__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[6][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[6]__0\(1),
      Q => \pres_switch_matrix_reg[6]__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[6][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[0][2]_i_1_n_0\,
      D => \next_switch_matrix_reg[6]__0\(2),
      Q => \pres_switch_matrix_reg[6]__0\(2),
      S => reset
    );
read_R_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \i_/read_R_i_1_n_0\,
      Q => read_R(0),
      R => reset
    );
\recv[0].dir\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized7\
     port map (
      E(0) => load_enable,
      \G0.mem_reg[36]_0\ => \next_switch_matrix[0][1]_i_2_n_0\,
      Q(55 downto 0) => Q_0(55 downto 0),
      clk => clk,
      \mem_reg[55]\(55 downto 0) => Q(55 downto 0),
      \next_switch_matrix_reg[6][1]\ => \recv[0].dir_n_0\,
      reset => reset
    );
\recv[3].dir\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized10\
     port map (
      D(0) => \recv[3].dir_n_0\,
      E(0) => load_enable,
      \G0.mem_reg[34]_0\ => \i_/next_switch_matrix[3][2]_i_1_n_0\,
      \G0.mem_reg[35]_0\ => \i_/next_switch_matrix[0][2]_i_3_n_0\,
      \G0.mem_reg[35]_1\ => \i_/next_switch_matrix[4][2]_i_2_n_0\,
      \G0.mem_reg[35]_2\ => \i_/next_switch_matrix[3][2]_i_8_n_0\,
      \G0.mem_reg[35]_3\ => \i_/next_switch_matrix[0][2]_i_4_n_0\,
      \G0.mem_reg[55]_0\ => \i_/next_switch_matrix[1][2]_i_3_n_0\,
      \G0.mem_reg[55]_1\ => \i_/next_switch_matrix[6][2]_i_2_n_0\,
      \G0.mem_reg[55]_2\ => \i_/next_switch_matrix[3][2]_i_7_n_0\,
      Q(55 downto 0) => \Q[3]__0\(55 downto 0),
      clk => clk,
      \mem_reg[55]\(55 downto 0) => D(55 downto 0),
      \next_switch_matrix_reg[0][0]\ => \recv[3].dir_n_61\,
      \next_switch_matrix_reg[2][2]\ => \recv[3].dir_n_66\,
      \next_switch_matrix_reg[2][2]_0\ => \recv[3].dir_n_71\,
      \next_switch_matrix_reg[3][2]\ => \recv[3].dir_n_63\,
      \next_switch_matrix_reg[4][2]\(0) => \recv[3].dir_n_62\,
      \next_switch_matrix_reg[5][2]\(0) => \recv[3].dir_n_60\,
      \port_wants_to[3][0]_4\(2 downto 0) => \port_wants_to[3][0]_4\(2 downto 0),
      \port_wants_to[3][1]_2\(1) => \port_wants_to[3][1]_2\(2),
      \port_wants_to[3][1]_2\(0) => \port_wants_to[3][1]_2\(0),
      \port_wants_to[3][2]_1\(1) => \port_wants_to[3][2]_1\(2),
      \port_wants_to[3][2]_1\(0) => \port_wants_to[3][2]_1\(0),
      \port_wants_to[3][3]_0\(0) => \port_wants_to[3][3]_0\(2),
      \port_wants_to[3][4]_3\(0) => \port_wants_to[3][4]_3\(2),
      \port_wants_to[6][2]_6\(1 downto 0) => \port_wants_to[6][2]_6\(2 downto 1),
      reset => reset
    );
\recv[6].dir\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized13\
     port map (
      D(0) => \recv[6].dir_n_61\,
      E(0) => load_enable,
      \G0.mem_reg[32]_0\ => \i_/next_switch_matrix[0][0]_i_4_n_0\,
      \G0.mem_reg[32]_1\ => \i_/next_switch_matrix[0][0]_i_8_n_0\,
      \G0.mem_reg[32]_2\ => \i_/next_switch_matrix[4][0]_i_8_n_0\,
      \G0.mem_reg[33]_0\ => \recv[0].dir_n_0\,
      \G0.mem_reg[34]_0\ => \i_/next_switch_matrix[3][2]_i_1_n_0\,
      \G0.mem_reg[34]_1\ => \i_/next_switch_matrix[3][0]_i_9_n_0\,
      \G0.mem_reg[35]_0\ => \i_/next_switch_matrix[3][0]_i_7_n_0\,
      \G0.mem_reg[35]_1\ => \i_/next_switch_matrix[0][2]_i_3_n_0\,
      \G0.mem_reg[35]_2\ => \i_/next_switch_matrix[4][2]_i_2_n_0\,
      \G0.mem_reg[37]_0\(0) => \recv[3].dir_n_0\,
      \G0.mem_reg[37]_1\(0) => \recv[3].dir_n_60\,
      \G0.mem_reg[37]_2\ => \i_/next_switch_matrix[4][0]_i_7_n_0\,
      \G0.mem_reg[55]_0\ => \i_/next_switch_matrix[1][0]_i_4_n_0\,
      \G0.mem_reg[55]_1\ => \i_/next_switch_matrix[4][0]_i_4_n_0\,
      \G0.mem_reg[55]_2\ => \i_/next_switch_matrix[4][0]_i_3_n_0\,
      \G0.mem_reg[55]_3\ => \i_/next_switch_matrix[0][0]_i_7_n_0\,
      \G0.mem_reg[55]_4\ => \recv[3].dir_n_61\,
      \G0.mem_reg[55]_5\ => \i_/next_switch_matrix[6][2]_i_2_n_0\,
      Q(55 downto 0) => \Q[6]__0\(55 downto 0),
      To_NoC_1(55 downto 0) => To_NoC_1(55 downto 0),
      clk => clk,
      \next_switch_matrix_reg[0][0]\(0) => \recv[6].dir_n_62\,
      \next_switch_matrix_reg[0][0]_0\ => \recv[6].dir_n_63\,
      \next_switch_matrix_reg[0][0]_1\ => \recv[6].dir_n_64\,
      \next_switch_matrix_reg[0][0]_2\ => \recv[6].dir_n_73\,
      \next_switch_matrix_reg[1][0]\ => \recv[6].dir_n_0\,
      \next_switch_matrix_reg[1][0]_0\ => \recv[6].dir_n_72\,
      \next_switch_matrix_reg[3][0]\ => \recv[6].dir_n_70\,
      \next_switch_matrix_reg[3][0]_0\ => \recv[6].dir_n_71\,
      \next_switch_matrix_reg[3][0]_1\ => \recv[6].dir_n_74\,
      \next_switch_matrix_reg[4][0]\(0) => \recv[6].dir_n_67\,
      \next_switch_matrix_reg[6][0]\ => \recv[6].dir_n_4\,
      \port_wants_to[6][0]_9\(2 downto 0) => \port_wants_to[6][0]_9\(2 downto 0),
      \port_wants_to[6][1]_7\(1 downto 0) => \port_wants_to[6][1]_7\(2 downto 1),
      \port_wants_to[6][2]_6\(1 downto 0) => \port_wants_to[6][2]_6\(2 downto 1),
      reset => reset
    );
write_R_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \i_/write_R_i_1_n_0\,
      Q => write_R(0),
      R => '0'
    );
\xmit[0].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_2
     port map (
      D(55 downto 0) => \next_outport[0]_13\(55 downto 0),
      E(0) => load_enable,
      \G0.mem_reg[55]\(55 downto 0) => \G0.mem_reg[55]\(55 downto 0),
      clk => clk,
      reset => reset
    );
\xmit[3].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_3
     port map (
      D(55 downto 0) => \next_outport[3]_14\(55 downto 0),
      E(0) => load_enable,
      \G0.mem_reg[55]\(55 downto 0) => \G0.mem_reg[55]_0\(55 downto 0),
      clk => clk,
      reset => reset
    );
\xmit[6].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_4
     port map (
      D(55 downto 0) => \next_outport[6]_15\(55 downto 0),
      E(0) => load_enable,
      From_NoC_1(55 downto 0) => \^from_noc_1\(55 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized5\ is
  port (
    \Outport[1]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \Outport[3]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_3 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    read_R : out STD_LOGIC_VECTOR ( 0 to 0 );
    write_R : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    \Inport[1]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    clk : in STD_LOGIC;
    \Inport[3]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    To_NoC_3 : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized5\ : entity is "NoC_3D_Parallel_Switch";
end \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized5\;

architecture STRUCTURE of \BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized5\ is
  signal \Q[1]__0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \Q[3]__0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \Q[6]__0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal ctrl_cycle : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ctrl_cycle[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \ctrl_cycle[1]_i_1__2_n_0\ : STD_LOGIC;
  signal load_enable : STD_LOGIC;
  signal \next_outport[1]_56\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_outport[3]_57\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_outport[6]_58\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \next_switch_matrix[6]_55\ : STD_LOGIC;
  signal \next_switch_matrix_reg[0]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[1]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[2]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[3]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[4]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[5]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \next_switch_matrix_reg[6]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[6][0]_50\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \port_wants_to[6][1]_52\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \port_wants_to[6][2]_51\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \port_wants_to[6][3]_49\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \port_wants_to[6][4]_48\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \pres_switch_matrix[1][2]_i_1__0_n_0\ : STD_LOGIC;
  signal \pres_switch_matrix_reg[1]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pres_switch_matrix_reg[3]__0__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pres_switch_matrix_reg[6]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \read_R_i_1__1_n_0\ : STD_LOGIC;
  signal \read_R_i_2__1_n_0\ : STD_LOGIC;
  signal \read_R_i_3__1_n_0\ : STD_LOGIC;
  signal \read_R_i_4__1_n_0\ : STD_LOGIC;
  signal \read_R_i_5__1_n_0\ : STD_LOGIC;
  signal \recv[1].dir_n_0\ : STD_LOGIC;
  signal \recv[1].dir_n_57\ : STD_LOGIC;
  signal \recv[1].dir_n_58\ : STD_LOGIC;
  signal \recv[1].dir_n_59\ : STD_LOGIC;
  signal \recv[1].dir_n_60\ : STD_LOGIC;
  signal \recv[1].dir_n_61\ : STD_LOGIC;
  signal \recv[1].dir_n_62\ : STD_LOGIC;
  signal \recv[3].dir_n_0\ : STD_LOGIC;
  signal \recv[3].dir_n_1\ : STD_LOGIC;
  signal \recv[3].dir_n_2\ : STD_LOGIC;
  signal \recv[3].dir_n_3\ : STD_LOGIC;
  signal \recv[3].dir_n_60\ : STD_LOGIC;
  signal \recv[3].dir_n_61\ : STD_LOGIC;
  signal \recv[3].dir_n_62\ : STD_LOGIC;
  signal \recv[3].dir_n_63\ : STD_LOGIC;
  signal \recv[3].dir_n_64\ : STD_LOGIC;
  signal \recv[3].dir_n_65\ : STD_LOGIC;
  signal \recv[3].dir_n_66\ : STD_LOGIC;
  signal \recv[3].dir_n_67\ : STD_LOGIC;
  signal \recv[3].dir_n_68\ : STD_LOGIC;
  signal \recv[3].dir_n_69\ : STD_LOGIC;
  signal \recv[3].dir_n_70\ : STD_LOGIC;
  signal \recv[3].dir_n_71\ : STD_LOGIC;
  signal \recv[6].dir_n_60\ : STD_LOGIC;
  signal \recv[6].dir_n_61\ : STD_LOGIC;
  signal \recv[6].dir_n_65\ : STD_LOGIC;
  signal \recv[6].dir_n_70\ : STD_LOGIC;
  signal \recv[6].dir_n_71\ : STD_LOGIC;
  signal \recv[6].dir_n_72\ : STD_LOGIC;
  signal \recv[6].dir_n_73\ : STD_LOGIC;
  signal \recv[6].dir_n_74\ : STD_LOGIC;
  signal \recv[6].dir_n_75\ : STD_LOGIC;
  signal \xmit[6].dir_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctrl_cycle[0]_i_1__2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \ctrl_cycle[1]_i_1__2\ : label is "soft_lutpair71";
begin
\ctrl_cycle[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_cycle(0),
      O => \ctrl_cycle[0]_i_1__2_n_0\
    );
\ctrl_cycle[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \ctrl_cycle[1]_i_1__2_n_0\
    );
\ctrl_cycle_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ctrl_cycle[0]_i_1__2_n_0\,
      Q => ctrl_cycle(0),
      R => reset
    );
\ctrl_cycle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \ctrl_cycle[1]_i_1__2_n_0\,
      Q => ctrl_cycle(1),
      R => reset
    );
\next_switch_matrix[0][2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \next_switch_matrix[6]_55\
    );
\next_switch_matrix_reg[0][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[6].dir_n_73\,
      Q => \next_switch_matrix_reg[0]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[0][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[3].dir_n_61\,
      Q => \next_switch_matrix_reg[0]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[1][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[6].dir_n_65\,
      Q => \next_switch_matrix_reg[1]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[1][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[1].dir_n_62\,
      Q => \next_switch_matrix_reg[1]__0\(1),
      S => reset
    );
\next_switch_matrix_reg[1][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[3].dir_n_67\,
      Q => \next_switch_matrix_reg[1]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[2][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[6].dir_n_74\,
      Q => \next_switch_matrix_reg[2]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[2][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[3].dir_n_60\,
      Q => \next_switch_matrix_reg[2]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[3][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[6].dir_n_60\,
      Q => \next_switch_matrix_reg[3]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[3][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[1].dir_n_60\,
      Q => \next_switch_matrix_reg[3]__0\(1),
      S => reset
    );
\next_switch_matrix_reg[3][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[3].dir_n_2\,
      Q => \next_switch_matrix_reg[3]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[4][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[6].dir_n_72\,
      Q => \next_switch_matrix_reg[4]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[4][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[3].dir_n_71\,
      Q => \next_switch_matrix_reg[4]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[5][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[6].dir_n_61\,
      Q => \next_switch_matrix_reg[5]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[5][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[3].dir_n_63\,
      Q => \next_switch_matrix_reg[5]__0\(2),
      S => reset
    );
\next_switch_matrix_reg[6][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[6].dir_n_75\,
      Q => \next_switch_matrix_reg[6]__0\(0),
      S => reset
    );
\next_switch_matrix_reg[6][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[1].dir_n_61\,
      Q => \next_switch_matrix_reg[6]__0\(1),
      S => reset
    );
\next_switch_matrix_reg[6][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \next_switch_matrix[6]_55\,
      D => \recv[3].dir_n_70\,
      Q => \next_switch_matrix_reg[6]__0\(2),
      S => reset
    );
\pres_switch_matrix[1][2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctrl_cycle(0),
      I1 => ctrl_cycle(1),
      O => \pres_switch_matrix[1][2]_i_1__0_n_0\
    );
\pres_switch_matrix_reg[1][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[1]__0\(0),
      Q => \pres_switch_matrix_reg[1]__0__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[1][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[1]__0\(1),
      Q => \pres_switch_matrix_reg[1]__0__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[1][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[1]__0\(2),
      Q => \pres_switch_matrix_reg[1]__0__0\(2),
      S => reset
    );
\pres_switch_matrix_reg[3][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[3]__0\(0),
      Q => \pres_switch_matrix_reg[3]__0__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[3][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[3]__0\(1),
      Q => \pres_switch_matrix_reg[3]__0__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[3][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[3]__0\(2),
      Q => \pres_switch_matrix_reg[3]__0__0\(2),
      S => reset
    );
\pres_switch_matrix_reg[6][0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[6]__0\(0),
      Q => \pres_switch_matrix_reg[6]__0\(0),
      S => reset
    );
\pres_switch_matrix_reg[6][1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[6]__0\(1),
      Q => \pres_switch_matrix_reg[6]__0\(1),
      S => reset
    );
\pres_switch_matrix_reg[6][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pres_switch_matrix[1][2]_i_1__0_n_0\,
      D => \next_switch_matrix_reg[6]__0\(2),
      Q => \pres_switch_matrix_reg[6]__0\(2),
      S => reset
    );
\read_R_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => ctrl_cycle(1),
      I1 => ctrl_cycle(0),
      I2 => \read_R_i_2__1_n_0\,
      I3 => \read_R_i_3__1_n_0\,
      I4 => \read_R_i_4__1_n_0\,
      I5 => \read_R_i_5__1_n_0\,
      O => \read_R_i_1__1_n_0\
    );
\read_R_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => \next_switch_matrix_reg[3]__0\(0),
      I1 => \next_switch_matrix_reg[3]__0\(2),
      I2 => \next_switch_matrix_reg[3]__0\(1),
      I3 => \next_switch_matrix_reg[4]__0\(0),
      I4 => \next_switch_matrix_reg[4]__0\(2),
      O => \read_R_i_2__1_n_0\
    );
\read_R_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => \next_switch_matrix_reg[5]__0\(0),
      I1 => \next_switch_matrix_reg[5]__0\(2),
      I2 => \next_switch_matrix_reg[6]__0\(0),
      I3 => \next_switch_matrix_reg[6]__0\(2),
      I4 => \next_switch_matrix_reg[6]__0\(1),
      O => \read_R_i_3__1_n_0\
    );
\read_R_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \next_switch_matrix_reg[1]__0\(1),
      I1 => \next_switch_matrix_reg[1]__0\(2),
      I2 => \next_switch_matrix_reg[1]__0\(0),
      O => \read_R_i_4__1_n_0\
    );
\read_R_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \next_switch_matrix_reg[0]__0\(0),
      I1 => \next_switch_matrix_reg[0]__0\(2),
      I2 => \next_switch_matrix_reg[2]__0\(0),
      I3 => \next_switch_matrix_reg[2]__0\(2),
      O => \read_R_i_5__1_n_0\
    );
read_R_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \read_R_i_1__1_n_0\,
      Q => read_R(0),
      R => reset
    );
\recv[1].dir\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized15\
     port map (
      D(0) => \recv[1].dir_n_60\,
      E(0) => load_enable,
      \G0.mem_reg[55]_0\(55 downto 0) => \Q[3]__0\(55 downto 0),
      \G0.mem_reg[55]_1\(55 downto 0) => \Q[6]__0\(55 downto 0),
      \Inport[1]\(55 downto 0) => \Inport[1]\(55 downto 0),
      Q(55 downto 0) => \Q[1]__0\(55 downto 0),
      clk => clk,
      \mem_reg[55]\(55 downto 0) => \next_outport[1]_56\(55 downto 0),
      \next_switch_matrix_reg[1][1]\(0) => \recv[1].dir_n_62\,
      \next_switch_matrix_reg[3][0]\ => \recv[1].dir_n_57\,
      \next_switch_matrix_reg[3][0]_0\ => \recv[1].dir_n_58\,
      \next_switch_matrix_reg[3][0]_1\ => \recv[1].dir_n_59\,
      \next_switch_matrix_reg[6][1]\(0) => \recv[1].dir_n_61\,
      \next_switch_matrix_reg[6][2]\ => \recv[1].dir_n_0\,
      \port_wants_to[6][4]_48\(1 downto 0) => \port_wants_to[6][4]_48\(2 downto 1),
      \pres_switch_matrix_reg[1][2]\(2 downto 0) => \pres_switch_matrix_reg[1]__0__0\(2 downto 0),
      reset => reset
    );
\recv[3].dir\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized17\
     port map (
      D(0) => \recv[3].dir_n_61\,
      E(0) => load_enable,
      \G0.mem_reg[34]_0\ => \recv[1].dir_n_59\,
      \G0.mem_reg[35]_0\ => \recv[6].dir_n_70\,
      \G0.mem_reg[35]_1\ => \recv[6].dir_n_71\,
      \G0.mem_reg[37]_0\ => \recv[1].dir_n_58\,
      \G0.mem_reg[55]_0\ => \recv[1].dir_n_0\,
      \Inport[3]\(55 downto 0) => \Inport[3]\(55 downto 0),
      Q(55 downto 0) => \Q[3]__0\(55 downto 0),
      clk => clk,
      \next_switch_matrix_reg[0][0]\ => \recv[3].dir_n_65\,
      \next_switch_matrix_reg[1][2]\ => \recv[3].dir_n_3\,
      \next_switch_matrix_reg[1][2]_0\(0) => \recv[3].dir_n_67\,
      \next_switch_matrix_reg[2][2]\ => \recv[3].dir_n_60\,
      \next_switch_matrix_reg[3][0]\ => \recv[3].dir_n_0\,
      \next_switch_matrix_reg[3][0]_0\ => \recv[3].dir_n_62\,
      \next_switch_matrix_reg[3][2]\ => \recv[3].dir_n_2\,
      \next_switch_matrix_reg[4][2]\(0) => \recv[3].dir_n_71\,
      \next_switch_matrix_reg[5][0]\ => \recv[3].dir_n_64\,
      \next_switch_matrix_reg[5][0]_0\ => \recv[3].dir_n_66\,
      \next_switch_matrix_reg[5][0]_1\ => \recv[3].dir_n_68\,
      \next_switch_matrix_reg[5][0]_2\ => \recv[3].dir_n_69\,
      \next_switch_matrix_reg[5][2]\ => \recv[3].dir_n_63\,
      \next_switch_matrix_reg[6][2]\ => \recv[3].dir_n_1\,
      \next_switch_matrix_reg[6][2]_0\(0) => \recv[3].dir_n_70\,
      \port_wants_to[6][0]_50\(1) => \port_wants_to[6][0]_50\(2),
      \port_wants_to[6][0]_50\(0) => \port_wants_to[6][0]_50\(0),
      \port_wants_to[6][1]_52\(1 downto 0) => \port_wants_to[6][1]_52\(2 downto 1),
      \port_wants_to[6][2]_51\(1 downto 0) => \port_wants_to[6][2]_51\(2 downto 1),
      \port_wants_to[6][3]_49\(1 downto 0) => \port_wants_to[6][3]_49\(2 downto 1),
      \port_wants_to[6][4]_48\(1 downto 0) => \port_wants_to[6][4]_48\(2 downto 1),
      reset => reset
    );
\recv[6].dir\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_recv__parameterized20\
     port map (
      D(0) => \recv[6].dir_n_60\,
      E(0) => load_enable,
      \G0.mem_reg[34]_0\ => \recv[3].dir_n_68\,
      \G0.mem_reg[34]_1\ => \recv[3].dir_n_69\,
      \G0.mem_reg[34]_2\ => \recv[3].dir_n_66\,
      \G0.mem_reg[34]_3\(0) => \recv[3].dir_n_2\,
      \G0.mem_reg[35]_0\ => \recv[3].dir_n_64\,
      \G0.mem_reg[36]_0\ => \recv[3].dir_n_1\,
      \G0.mem_reg[36]_1\(0) => \recv[3].dir_n_71\,
      \G0.mem_reg[36]_2\ => \recv[3].dir_n_0\,
      \G0.mem_reg[37]_0\ => \recv[3].dir_n_63\,
      \G0.mem_reg[37]_1\ => \recv[3].dir_n_62\,
      \G0.mem_reg[37]_2\ => \recv[1].dir_n_57\,
      \G0.mem_reg[55]_0\ => \recv[3].dir_n_3\,
      \G0.mem_reg[55]_1\ => \recv[3].dir_n_65\,
      \G0.mem_reg[55]_2\(0) => \recv[3].dir_n_61\,
      \G0.mem_reg[55]_3\(0) => \recv[3].dir_n_60\,
      \G0.mem_reg[55]_4\(55 downto 0) => \Q[1]__0\(55 downto 0),
      \G0.mem_reg[55]_5\(55 downto 0) => \Q[3]__0\(55 downto 0),
      Q(55 downto 0) => \Q[6]__0\(55 downto 0),
      To_NoC_3(55 downto 0) => To_NoC_3(55 downto 0),
      clk => clk,
      \ctrl_cycle_reg[1]\(1 downto 0) => ctrl_cycle(1 downto 0),
      \mem_reg[55]\(55 downto 0) => \next_outport[3]_57\(55 downto 0),
      \mem_reg[55]_0\(55 downto 0) => \next_outport[6]_58\(55 downto 0),
      \next_switch_matrix_reg[0][0]\(1) => \port_wants_to[6][0]_50\(2),
      \next_switch_matrix_reg[0][0]\(0) => \port_wants_to[6][0]_50\(0),
      \next_switch_matrix_reg[0][0]_0\ => \recv[6].dir_n_70\,
      \next_switch_matrix_reg[0][0]_1\ => \recv[6].dir_n_71\,
      \next_switch_matrix_reg[0][0]_2\(0) => \recv[6].dir_n_73\,
      \next_switch_matrix_reg[1][0]\(0) => \recv[6].dir_n_65\,
      \next_switch_matrix_reg[2][0]\(0) => \recv[6].dir_n_74\,
      \next_switch_matrix_reg[4][0]\(0) => \recv[6].dir_n_72\,
      \next_switch_matrix_reg[5][0]\(0) => \recv[6].dir_n_61\,
      \next_switch_matrix_reg[6][0]\(0) => \recv[6].dir_n_75\,
      \port_wants_to[6][1]_52\(1 downto 0) => \port_wants_to[6][1]_52\(2 downto 1),
      \port_wants_to[6][2]_51\(1 downto 0) => \port_wants_to[6][2]_51\(2 downto 1),
      \port_wants_to[6][3]_49\(1 downto 0) => \port_wants_to[6][3]_49\(2 downto 1),
      \port_wants_to[6][4]_48\(1 downto 0) => \port_wants_to[6][4]_48\(2 downto 1),
      \pres_switch_matrix_reg[3][2]\(2 downto 0) => \pres_switch_matrix_reg[3]__0__0\(2 downto 0),
      \pres_switch_matrix_reg[6][2]\(2 downto 0) => \pres_switch_matrix_reg[6]__0\(2 downto 0),
      reset => reset
    );
write_R_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \xmit[6].dir_n_0\,
      Q => write_R(0),
      R => '0'
    );
\xmit[1].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter
     port map (
      D(55 downto 0) => \next_outport[1]_56\(55 downto 0),
      E(0) => load_enable,
      \Outport[1]\(55 downto 0) => \Outport[1]\(55 downto 0),
      clk => clk,
      reset => reset
    );
\xmit[3].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_0
     port map (
      D(55 downto 0) => \next_outport[3]_57\(55 downto 0),
      E(0) => load_enable,
      \Outport[3]\(55 downto 0) => \Outport[3]\(55 downto 0),
      clk => clk,
      reset => reset
    );
\xmit[6].dir\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_xmitter_1
     port map (
      D(55 downto 0) => \next_outport[6]_58\(55 downto 0),
      E(0) => load_enable,
      From_NoC_3(55 downto 0) => From_NoC_3(55 downto 0),
      Q(1 downto 0) => ctrl_cycle(1 downto 0),
      clk => clk,
      reset => reset,
      write_R_reg => \xmit[6].dir_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_NoC_2D_Parallel is
  port (
    From_NoC_1 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    read_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    write_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    From_NoC_0 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_2 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_3 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    To_NoC_1 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    To_NoC_0 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    To_NoC_2 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    To_NoC_3 : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_NoC_2D_Parallel : entity is "NoC_2D_Parallel";
end BD_kth_2DNoC_2x2x1_0_0_NoC_2D_Parallel;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_NoC_2D_Parallel is
  signal \interconnect_out[0][0]_21\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \interconnect_out[0][2]_22\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \interconnect_out[1][0]_10\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \interconnect_out[1][3]_11\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \interconnect_out[2][1]_37\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \interconnect_out[2][2]_38\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \interconnect_out[3][1]_53\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \interconnect_out[3][3]_54\ : STD_LOGIC_VECTOR ( 55 downto 0 );
begin
\UX[0].UY[0].UZ[0].UD\: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch
     port map (
      From_NoC_0(55 downto 0) => From_NoC_0(55 downto 0),
      \Outport[0]\(55 downto 0) => \interconnect_out[0][0]_21\(55 downto 0),
      \Outport[2]\(55 downto 0) => \interconnect_out[0][2]_22\(55 downto 0),
      Q(55 downto 0) => \interconnect_out[2][1]_37\(55 downto 0),
      To_NoC_0(55 downto 0) => To_NoC_0(55 downto 0),
      clk => clk,
      \mem_reg[55]\(55 downto 0) => \interconnect_out[1][3]_11\(55 downto 0),
      read_R(0) => read_R(0),
      reset => reset,
      write_R(0) => write_R(0)
    );
\UX[0].UY[1].UZ[0].UD\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized1\
     port map (
      From_NoC_2(55 downto 0) => From_NoC_2(55 downto 0),
      \Inport[1]\(55 downto 0) => \interconnect_out[0][0]_21\(55 downto 0),
      \Outport[1]\(55 downto 0) => \interconnect_out[2][1]_37\(55 downto 0),
      \Outport[2]\(55 downto 0) => \interconnect_out[2][2]_38\(55 downto 0),
      Q(55 downto 0) => \interconnect_out[3][3]_54\(55 downto 0),
      To_NoC_2(55 downto 0) => To_NoC_2(55 downto 0),
      clk => clk,
      read_R(0) => read_R(2),
      reset => reset,
      write_R(0) => write_R(2)
    );
\UX[1].UY[0].UZ[0].UD\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized3\
     port map (
      D(55 downto 0) => \interconnect_out[0][2]_22\(55 downto 0),
      From_NoC_1(55 downto 0) => From_NoC_1(55 downto 0),
      \G0.mem_reg[55]\(55 downto 0) => \interconnect_out[1][0]_10\(55 downto 0),
      \G0.mem_reg[55]_0\(55 downto 0) => \interconnect_out[1][3]_11\(55 downto 0),
      Q(55 downto 0) => \interconnect_out[3][1]_53\(55 downto 0),
      To_NoC_1(55 downto 0) => To_NoC_1(55 downto 0),
      clk => clk,
      read_R(0) => read_R(1),
      reset => reset,
      write_R(0) => write_R(1)
    );
\UX[1].UY[1].UZ[0].UD\: entity work.\BD_kth_2DNoC_2x2x1_0_0_NoC_3D_Parallel_Switch__parameterized5\
     port map (
      From_NoC_3(55 downto 0) => From_NoC_3(55 downto 0),
      \Inport[1]\(55 downto 0) => \interconnect_out[1][0]_10\(55 downto 0),
      \Inport[3]\(55 downto 0) => \interconnect_out[2][2]_38\(55 downto 0),
      \Outport[1]\(55 downto 0) => \interconnect_out[3][1]_53\(55 downto 0),
      \Outport[3]\(55 downto 0) => \interconnect_out[3][3]_54\(55 downto 0),
      To_NoC_3(55 downto 0) => To_NoC_3(55 downto 0),
      clk => clk,
      read_R(0) => read_R(3),
      reset => reset,
      write_R(0) => write_R(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0_kth_2DNoC_2x2x1_c1_v1_0 is
  port (
    From_NoC_1 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    read_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    write_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    From_NoC_0 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_2 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    From_NoC_3 : out STD_LOGIC_VECTOR ( 55 downto 0 );
    HeartBeat_0 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    To_NoC_1 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    To_NoC_0 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    To_NoC_2 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    To_NoC_3 : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BD_kth_2DNoC_2x2x1_0_0_kth_2DNoC_2x2x1_c1_v1_0 : entity is "kth_2DNoC_2x2x1_c1_v1_0";
end BD_kth_2DNoC_2x2x1_0_0_kth_2DNoC_2x2x1_c1_v1_0;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0_kth_2DNoC_2x2x1_c1_v1_0 is
  signal GlobalSync_i_1_n_0 : STD_LOGIC;
  signal GlobalSync_i_3_n_0 : STD_LOGIC;
  signal GlobalSync_i_4_n_0 : STD_LOGIC;
  signal GlobalSync_i_5_n_0 : STD_LOGIC;
  signal GlobalSync_i_6_n_0 : STD_LOGIC;
  signal GlobalSync_i_7_n_0 : STD_LOGIC;
  signal GlobalSync_i_8_n_0 : STD_LOGIC;
  signal GlobalSync_i_9_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal timer0 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \timer[0]_i_10_n_0\ : STD_LOGIC;
  signal \timer[0]_i_11_n_0\ : STD_LOGIC;
  signal \timer[0]_i_12_n_0\ : STD_LOGIC;
  signal \timer[0]_i_13_n_0\ : STD_LOGIC;
  signal \timer[0]_i_2_n_0\ : STD_LOGIC;
  signal \timer[0]_i_3_n_0\ : STD_LOGIC;
  signal \timer[0]_i_4_n_0\ : STD_LOGIC;
  signal \timer[0]_i_5_n_0\ : STD_LOGIC;
  signal \timer[0]_i_7_n_0\ : STD_LOGIC;
  signal \timer[0]_i_8_n_0\ : STD_LOGIC;
  signal \timer[0]_i_9_n_0\ : STD_LOGIC;
  signal \timer[12]_i_10_n_0\ : STD_LOGIC;
  signal \timer[12]_i_2_n_0\ : STD_LOGIC;
  signal \timer[12]_i_3_n_0\ : STD_LOGIC;
  signal \timer[12]_i_4_n_0\ : STD_LOGIC;
  signal \timer[12]_i_5_n_0\ : STD_LOGIC;
  signal \timer[12]_i_7_n_0\ : STD_LOGIC;
  signal \timer[12]_i_8_n_0\ : STD_LOGIC;
  signal \timer[12]_i_9_n_0\ : STD_LOGIC;
  signal \timer[16]_i_10_n_0\ : STD_LOGIC;
  signal \timer[16]_i_2_n_0\ : STD_LOGIC;
  signal \timer[16]_i_3_n_0\ : STD_LOGIC;
  signal \timer[16]_i_4_n_0\ : STD_LOGIC;
  signal \timer[16]_i_5_n_0\ : STD_LOGIC;
  signal \timer[16]_i_7_n_0\ : STD_LOGIC;
  signal \timer[16]_i_8_n_0\ : STD_LOGIC;
  signal \timer[16]_i_9_n_0\ : STD_LOGIC;
  signal \timer[20]_i_10_n_0\ : STD_LOGIC;
  signal \timer[20]_i_2_n_0\ : STD_LOGIC;
  signal \timer[20]_i_3_n_0\ : STD_LOGIC;
  signal \timer[20]_i_4_n_0\ : STD_LOGIC;
  signal \timer[20]_i_5_n_0\ : STD_LOGIC;
  signal \timer[20]_i_7_n_0\ : STD_LOGIC;
  signal \timer[20]_i_8_n_0\ : STD_LOGIC;
  signal \timer[20]_i_9_n_0\ : STD_LOGIC;
  signal \timer[24]_i_10_n_0\ : STD_LOGIC;
  signal \timer[24]_i_2_n_0\ : STD_LOGIC;
  signal \timer[24]_i_3_n_0\ : STD_LOGIC;
  signal \timer[24]_i_4_n_0\ : STD_LOGIC;
  signal \timer[24]_i_5_n_0\ : STD_LOGIC;
  signal \timer[24]_i_7_n_0\ : STD_LOGIC;
  signal \timer[24]_i_8_n_0\ : STD_LOGIC;
  signal \timer[24]_i_9_n_0\ : STD_LOGIC;
  signal \timer[28]_i_2_n_0\ : STD_LOGIC;
  signal \timer[28]_i_3_n_0\ : STD_LOGIC;
  signal \timer[28]_i_4_n_0\ : STD_LOGIC;
  signal \timer[28]_i_6_n_0\ : STD_LOGIC;
  signal \timer[28]_i_7_n_0\ : STD_LOGIC;
  signal \timer[4]_i_10_n_0\ : STD_LOGIC;
  signal \timer[4]_i_2_n_0\ : STD_LOGIC;
  signal \timer[4]_i_3_n_0\ : STD_LOGIC;
  signal \timer[4]_i_4_n_0\ : STD_LOGIC;
  signal \timer[4]_i_5_n_0\ : STD_LOGIC;
  signal \timer[4]_i_7_n_0\ : STD_LOGIC;
  signal \timer[4]_i_8_n_0\ : STD_LOGIC;
  signal \timer[4]_i_9_n_0\ : STD_LOGIC;
  signal \timer[8]_i_10_n_0\ : STD_LOGIC;
  signal \timer[8]_i_2_n_0\ : STD_LOGIC;
  signal \timer[8]_i_3_n_0\ : STD_LOGIC;
  signal \timer[8]_i_4_n_0\ : STD_LOGIC;
  signal \timer[8]_i_5_n_0\ : STD_LOGIC;
  signal \timer[8]_i_7_n_0\ : STD_LOGIC;
  signal \timer[8]_i_8_n_0\ : STD_LOGIC;
  signal \timer[8]_i_9_n_0\ : STD_LOGIC;
  signal timer_reg : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \timer_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \timer_reg[0]_i_6_n_1\ : STD_LOGIC;
  signal \timer_reg[0]_i_6_n_2\ : STD_LOGIC;
  signal \timer_reg[0]_i_6_n_3\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \timer_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \timer_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \timer_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[16]_i_6_n_0\ : STD_LOGIC;
  signal \timer_reg[16]_i_6_n_1\ : STD_LOGIC;
  signal \timer_reg[16]_i_6_n_2\ : STD_LOGIC;
  signal \timer_reg[16]_i_6_n_3\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[20]_i_6_n_0\ : STD_LOGIC;
  signal \timer_reg[20]_i_6_n_1\ : STD_LOGIC;
  signal \timer_reg[20]_i_6_n_2\ : STD_LOGIC;
  signal \timer_reg[20]_i_6_n_3\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[24]_i_6_n_0\ : STD_LOGIC;
  signal \timer_reg[24]_i_6_n_1\ : STD_LOGIC;
  signal \timer_reg[24]_i_6_n_2\ : STD_LOGIC;
  signal \timer_reg[24]_i_6_n_3\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[28]_i_5_n_3\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \timer_reg[4]_i_6_n_1\ : STD_LOGIC;
  signal \timer_reg[4]_i_6_n_2\ : STD_LOGIC;
  signal \timer_reg[4]_i_6_n_3\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \timer_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \timer_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \timer_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal \NLW_timer_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_timer_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_timer_reg[28]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_timer_reg[28]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of GlobalSync_i_3 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \timer[0]_i_13\ : label is "soft_lutpair72";
begin
GlobalSync_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in,
      O => GlobalSync_i_1_n_0
    );
GlobalSync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000007F0000"
    )
        port map (
      I0 => timer_reg(3),
      I1 => timer_reg(4),
      I2 => GlobalSync_i_3_n_0,
      I3 => GlobalSync_i_4_n_0,
      I4 => GlobalSync_i_5_n_0,
      I5 => GlobalSync_i_6_n_0,
      O => p_0_in
    );
GlobalSync_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timer_reg(1),
      I1 => timer_reg(2),
      O => GlobalSync_i_3_n_0
    );
GlobalSync_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(23),
      I1 => timer_reg(18),
      I2 => timer_reg(21),
      I3 => timer_reg(20),
      O => GlobalSync_i_4_n_0
    );
GlobalSync_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => timer_reg(30),
      I1 => timer_reg(9),
      I2 => timer_reg(5),
      I3 => timer_reg(29),
      I4 => timer_reg(10),
      I5 => timer_reg(11),
      O => GlobalSync_i_5_n_0
    );
GlobalSync_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => GlobalSync_i_7_n_0,
      I1 => timer_reg(28),
      I2 => timer_reg(27),
      I3 => timer_reg(7),
      I4 => timer_reg(6),
      I5 => GlobalSync_i_8_n_0,
      O => GlobalSync_i_6_n_0
    );
GlobalSync_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(17),
      I1 => timer_reg(16),
      I2 => timer_reg(25),
      I3 => timer_reg(24),
      O => GlobalSync_i_7_n_0
    );
GlobalSync_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => timer_reg(13),
      I1 => timer_reg(14),
      I2 => timer_reg(12),
      I3 => timer_reg(15),
      I4 => GlobalSync_i_9_n_0,
      O => GlobalSync_i_8_n_0
    );
GlobalSync_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(26),
      I1 => timer_reg(8),
      I2 => timer_reg(22),
      I3 => timer_reg(19),
      O => GlobalSync_i_9_n_0
    );
GlobalSync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => GlobalSync_i_1_n_0,
      Q => HeartBeat_0,
      R => '0'
    );
NOC: entity work.BD_kth_2DNoC_2x2x1_0_0_NoC_2D_Parallel
     port map (
      From_NoC_0(55 downto 0) => From_NoC_0(55 downto 0),
      From_NoC_1(55 downto 0) => From_NoC_1(55 downto 0),
      From_NoC_2(55 downto 0) => From_NoC_2(55 downto 0),
      From_NoC_3(55 downto 0) => From_NoC_3(55 downto 0),
      To_NoC_0(55 downto 0) => To_NoC_0(55 downto 0),
      To_NoC_1(55 downto 0) => To_NoC_1(55 downto 0),
      To_NoC_2(55 downto 0) => To_NoC_2(55 downto 0),
      To_NoC_3(55 downto 0) => To_NoC_3(55 downto 0),
      clk => clk,
      read_R(3 downto 0) => read_R(3 downto 0),
      reset => reset,
      write_R(3 downto 0) => write_R(3 downto 0)
    );
\timer[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(2),
      O => \timer[0]_i_10_n_0\
    );
\timer[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(1),
      O => \timer[0]_i_11_n_0\
    );
\timer[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => timer_reg(3),
      I1 => timer_reg(5),
      I2 => timer_reg(10),
      I3 => timer_reg(11),
      I4 => \timer[0]_i_13_n_0\,
      O => \timer[0]_i_12_n_0\
    );
\timer[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(30),
      I1 => timer_reg(9),
      I2 => timer_reg(2),
      I3 => timer_reg(1),
      O => \timer[0]_i_13_n_0\
    );
\timer[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => timer_reg(3),
      I1 => p_0_in,
      I2 => timer0(3),
      I3 => \timer[0]_i_7_n_0\,
      O => \timer[0]_i_2_n_0\
    );
\timer[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => timer_reg(2),
      I1 => p_0_in,
      I2 => timer0(2),
      I3 => \timer[0]_i_7_n_0\,
      O => \timer[0]_i_3_n_0\
    );
\timer[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => timer_reg(1),
      I1 => p_0_in,
      I2 => timer0(1),
      I3 => \timer[0]_i_7_n_0\,
      O => \timer[0]_i_4_n_0\
    );
\timer[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer_reg(0),
      O => \timer[0]_i_5_n_0\
    );
\timer[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => GlobalSync_i_6_n_0,
      I1 => GlobalSync_i_4_n_0,
      I2 => timer_reg(0),
      I3 => timer_reg(4),
      I4 => timer_reg(29),
      I5 => \timer[0]_i_12_n_0\,
      O => \timer[0]_i_7_n_0\
    );
\timer[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(4),
      O => \timer[0]_i_8_n_0\
    );
\timer[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(3),
      O => \timer[0]_i_9_n_0\
    );
\timer[12]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(13),
      O => \timer[12]_i_10_n_0\
    );
\timer[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(15),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[12]_i_2_n_0\
    );
\timer[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(14),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[12]_i_3_n_0\
    );
\timer[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(13),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[12]_i_4_n_0\
    );
\timer[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(12),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[12]_i_5_n_0\
    );
\timer[12]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(16),
      O => \timer[12]_i_7_n_0\
    );
\timer[12]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(15),
      O => \timer[12]_i_8_n_0\
    );
\timer[12]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(14),
      O => \timer[12]_i_9_n_0\
    );
\timer[16]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(17),
      O => \timer[16]_i_10_n_0\
    );
\timer[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(19),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[16]_i_2_n_0\
    );
\timer[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(18),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[16]_i_3_n_0\
    );
\timer[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(17),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[16]_i_4_n_0\
    );
\timer[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(16),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[16]_i_5_n_0\
    );
\timer[16]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(20),
      O => \timer[16]_i_7_n_0\
    );
\timer[16]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(19),
      O => \timer[16]_i_8_n_0\
    );
\timer[16]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(18),
      O => \timer[16]_i_9_n_0\
    );
\timer[20]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(21),
      O => \timer[20]_i_10_n_0\
    );
\timer[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(23),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[20]_i_2_n_0\
    );
\timer[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(22),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[20]_i_3_n_0\
    );
\timer[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(21),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[20]_i_4_n_0\
    );
\timer[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(20),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[20]_i_5_n_0\
    );
\timer[20]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(24),
      O => \timer[20]_i_7_n_0\
    );
\timer[20]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(23),
      O => \timer[20]_i_8_n_0\
    );
\timer[20]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(22),
      O => \timer[20]_i_9_n_0\
    );
\timer[24]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(25),
      O => \timer[24]_i_10_n_0\
    );
\timer[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(27),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[24]_i_2_n_0\
    );
\timer[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(26),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[24]_i_3_n_0\
    );
\timer[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(25),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[24]_i_4_n_0\
    );
\timer[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(24),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[24]_i_5_n_0\
    );
\timer[24]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(28),
      O => \timer[24]_i_7_n_0\
    );
\timer[24]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(27),
      O => \timer[24]_i_8_n_0\
    );
\timer[24]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(26),
      O => \timer[24]_i_9_n_0\
    );
\timer[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(30),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[28]_i_2_n_0\
    );
\timer[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(29),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[28]_i_3_n_0\
    );
\timer[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(28),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[28]_i_4_n_0\
    );
\timer[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(30),
      O => \timer[28]_i_6_n_0\
    );
\timer[28]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(29),
      O => \timer[28]_i_7_n_0\
    );
\timer[4]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(5),
      O => \timer[4]_i_10_n_0\
    );
\timer[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(7),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[4]_i_2_n_0\
    );
\timer[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(6),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[4]_i_3_n_0\
    );
\timer[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(5),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[4]_i_4_n_0\
    );
\timer[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => timer_reg(4),
      I1 => p_0_in,
      I2 => timer0(4),
      I3 => \timer[0]_i_7_n_0\,
      O => \timer[4]_i_5_n_0\
    );
\timer[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(8),
      O => \timer[4]_i_7_n_0\
    );
\timer[4]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(7),
      O => \timer[4]_i_8_n_0\
    );
\timer[4]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(6),
      O => \timer[4]_i_9_n_0\
    );
\timer[8]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(9),
      O => \timer[8]_i_10_n_0\
    );
\timer[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(11),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[8]_i_2_n_0\
    );
\timer[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(10),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[8]_i_3_n_0\
    );
\timer[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(9),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[8]_i_4_n_0\
    );
\timer[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in,
      I1 => timer0(8),
      I2 => \timer[0]_i_7_n_0\,
      O => \timer[8]_i_5_n_0\
    );
\timer[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(12),
      O => \timer[8]_i_7_n_0\
    );
\timer[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(11),
      O => \timer[8]_i_8_n_0\
    );
\timer[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => timer_reg(10),
      O => \timer[8]_i_9_n_0\
    );
\timer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[0]_i_1_n_7\,
      Q => timer_reg(0),
      R => '0'
    );
\timer_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \timer_reg[0]_i_1_n_0\,
      CO(2) => \timer_reg[0]_i_1_n_1\,
      CO(1) => \timer_reg[0]_i_1_n_2\,
      CO(0) => \timer_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_0_in,
      O(3) => \timer_reg[0]_i_1_n_4\,
      O(2) => \timer_reg[0]_i_1_n_5\,
      O(1) => \timer_reg[0]_i_1_n_6\,
      O(0) => \timer_reg[0]_i_1_n_7\,
      S(3) => \timer[0]_i_2_n_0\,
      S(2) => \timer[0]_i_3_n_0\,
      S(1) => \timer[0]_i_4_n_0\,
      S(0) => \timer[0]_i_5_n_0\
    );
\timer_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \timer_reg[0]_i_6_n_0\,
      CO(2) => \timer_reg[0]_i_6_n_1\,
      CO(1) => \timer_reg[0]_i_6_n_2\,
      CO(0) => \timer_reg[0]_i_6_n_3\,
      CYINIT => timer_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timer0(4 downto 1),
      S(3) => \timer[0]_i_8_n_0\,
      S(2) => \timer[0]_i_9_n_0\,
      S(1) => \timer[0]_i_10_n_0\,
      S(0) => \timer[0]_i_11_n_0\
    );
\timer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_5\,
      Q => timer_reg(10),
      R => '0'
    );
\timer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_4\,
      Q => timer_reg(11),
      R => '0'
    );
\timer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_7\,
      Q => timer_reg(12),
      R => '0'
    );
\timer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[8]_i_1_n_0\,
      CO(3) => \timer_reg[12]_i_1_n_0\,
      CO(2) => \timer_reg[12]_i_1_n_1\,
      CO(1) => \timer_reg[12]_i_1_n_2\,
      CO(0) => \timer_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[12]_i_1_n_4\,
      O(2) => \timer_reg[12]_i_1_n_5\,
      O(1) => \timer_reg[12]_i_1_n_6\,
      O(0) => \timer_reg[12]_i_1_n_7\,
      S(3) => \timer[12]_i_2_n_0\,
      S(2) => \timer[12]_i_3_n_0\,
      S(1) => \timer[12]_i_4_n_0\,
      S(0) => \timer[12]_i_5_n_0\
    );
\timer_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[8]_i_6_n_0\,
      CO(3) => \timer_reg[12]_i_6_n_0\,
      CO(2) => \timer_reg[12]_i_6_n_1\,
      CO(1) => \timer_reg[12]_i_6_n_2\,
      CO(0) => \timer_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timer0(16 downto 13),
      S(3) => \timer[12]_i_7_n_0\,
      S(2) => \timer[12]_i_8_n_0\,
      S(1) => \timer[12]_i_9_n_0\,
      S(0) => \timer[12]_i_10_n_0\
    );
\timer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_6\,
      Q => timer_reg(13),
      R => '0'
    );
\timer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_5\,
      Q => timer_reg(14),
      R => '0'
    );
\timer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_4\,
      Q => timer_reg(15),
      R => '0'
    );
\timer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_7\,
      Q => timer_reg(16),
      R => '0'
    );
\timer_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[12]_i_1_n_0\,
      CO(3) => \timer_reg[16]_i_1_n_0\,
      CO(2) => \timer_reg[16]_i_1_n_1\,
      CO(1) => \timer_reg[16]_i_1_n_2\,
      CO(0) => \timer_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[16]_i_1_n_4\,
      O(2) => \timer_reg[16]_i_1_n_5\,
      O(1) => \timer_reg[16]_i_1_n_6\,
      O(0) => \timer_reg[16]_i_1_n_7\,
      S(3) => \timer[16]_i_2_n_0\,
      S(2) => \timer[16]_i_3_n_0\,
      S(1) => \timer[16]_i_4_n_0\,
      S(0) => \timer[16]_i_5_n_0\
    );
\timer_reg[16]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[12]_i_6_n_0\,
      CO(3) => \timer_reg[16]_i_6_n_0\,
      CO(2) => \timer_reg[16]_i_6_n_1\,
      CO(1) => \timer_reg[16]_i_6_n_2\,
      CO(0) => \timer_reg[16]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timer0(20 downto 17),
      S(3) => \timer[16]_i_7_n_0\,
      S(2) => \timer[16]_i_8_n_0\,
      S(1) => \timer[16]_i_9_n_0\,
      S(0) => \timer[16]_i_10_n_0\
    );
\timer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_6\,
      Q => timer_reg(17),
      R => '0'
    );
\timer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_5\,
      Q => timer_reg(18),
      R => '0'
    );
\timer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_4\,
      Q => timer_reg(19),
      R => '0'
    );
\timer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[0]_i_1_n_6\,
      Q => timer_reg(1),
      R => '0'
    );
\timer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_7\,
      Q => timer_reg(20),
      R => '0'
    );
\timer_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[16]_i_1_n_0\,
      CO(3) => \timer_reg[20]_i_1_n_0\,
      CO(2) => \timer_reg[20]_i_1_n_1\,
      CO(1) => \timer_reg[20]_i_1_n_2\,
      CO(0) => \timer_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[20]_i_1_n_4\,
      O(2) => \timer_reg[20]_i_1_n_5\,
      O(1) => \timer_reg[20]_i_1_n_6\,
      O(0) => \timer_reg[20]_i_1_n_7\,
      S(3) => \timer[20]_i_2_n_0\,
      S(2) => \timer[20]_i_3_n_0\,
      S(1) => \timer[20]_i_4_n_0\,
      S(0) => \timer[20]_i_5_n_0\
    );
\timer_reg[20]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[16]_i_6_n_0\,
      CO(3) => \timer_reg[20]_i_6_n_0\,
      CO(2) => \timer_reg[20]_i_6_n_1\,
      CO(1) => \timer_reg[20]_i_6_n_2\,
      CO(0) => \timer_reg[20]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timer0(24 downto 21),
      S(3) => \timer[20]_i_7_n_0\,
      S(2) => \timer[20]_i_8_n_0\,
      S(1) => \timer[20]_i_9_n_0\,
      S(0) => \timer[20]_i_10_n_0\
    );
\timer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_6\,
      Q => timer_reg(21),
      R => '0'
    );
\timer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_5\,
      Q => timer_reg(22),
      R => '0'
    );
\timer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_4\,
      Q => timer_reg(23),
      R => '0'
    );
\timer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_7\,
      Q => timer_reg(24),
      R => '0'
    );
\timer_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[20]_i_1_n_0\,
      CO(3) => \timer_reg[24]_i_1_n_0\,
      CO(2) => \timer_reg[24]_i_1_n_1\,
      CO(1) => \timer_reg[24]_i_1_n_2\,
      CO(0) => \timer_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[24]_i_1_n_4\,
      O(2) => \timer_reg[24]_i_1_n_5\,
      O(1) => \timer_reg[24]_i_1_n_6\,
      O(0) => \timer_reg[24]_i_1_n_7\,
      S(3) => \timer[24]_i_2_n_0\,
      S(2) => \timer[24]_i_3_n_0\,
      S(1) => \timer[24]_i_4_n_0\,
      S(0) => \timer[24]_i_5_n_0\
    );
\timer_reg[24]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[20]_i_6_n_0\,
      CO(3) => \timer_reg[24]_i_6_n_0\,
      CO(2) => \timer_reg[24]_i_6_n_1\,
      CO(1) => \timer_reg[24]_i_6_n_2\,
      CO(0) => \timer_reg[24]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timer0(28 downto 25),
      S(3) => \timer[24]_i_7_n_0\,
      S(2) => \timer[24]_i_8_n_0\,
      S(1) => \timer[24]_i_9_n_0\,
      S(0) => \timer[24]_i_10_n_0\
    );
\timer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_6\,
      Q => timer_reg(25),
      R => '0'
    );
\timer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_5\,
      Q => timer_reg(26),
      R => '0'
    );
\timer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_4\,
      Q => timer_reg(27),
      R => '0'
    );
\timer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[28]_i_1_n_7\,
      Q => timer_reg(28),
      R => '0'
    );
\timer_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[24]_i_1_n_0\,
      CO(3 downto 2) => \NLW_timer_reg[28]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \timer_reg[28]_i_1_n_2\,
      CO(0) => \timer_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_timer_reg[28]_i_1_O_UNCONNECTED\(3),
      O(2) => \timer_reg[28]_i_1_n_5\,
      O(1) => \timer_reg[28]_i_1_n_6\,
      O(0) => \timer_reg[28]_i_1_n_7\,
      S(3) => '0',
      S(2) => \timer[28]_i_2_n_0\,
      S(1) => \timer[28]_i_3_n_0\,
      S(0) => \timer[28]_i_4_n_0\
    );
\timer_reg[28]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[24]_i_6_n_0\,
      CO(3 downto 1) => \NLW_timer_reg[28]_i_5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \timer_reg[28]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_timer_reg[28]_i_5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => timer0(30 downto 29),
      S(3 downto 2) => B"00",
      S(1) => \timer[28]_i_6_n_0\,
      S(0) => \timer[28]_i_7_n_0\
    );
\timer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[28]_i_1_n_6\,
      Q => timer_reg(29),
      R => '0'
    );
\timer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[0]_i_1_n_5\,
      Q => timer_reg(2),
      R => '0'
    );
\timer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[28]_i_1_n_5\,
      Q => timer_reg(30),
      R => '0'
    );
\timer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[0]_i_1_n_4\,
      Q => timer_reg(3),
      R => '0'
    );
\timer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_7\,
      Q => timer_reg(4),
      R => '0'
    );
\timer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[0]_i_1_n_0\,
      CO(3) => \timer_reg[4]_i_1_n_0\,
      CO(2) => \timer_reg[4]_i_1_n_1\,
      CO(1) => \timer_reg[4]_i_1_n_2\,
      CO(0) => \timer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[4]_i_1_n_4\,
      O(2) => \timer_reg[4]_i_1_n_5\,
      O(1) => \timer_reg[4]_i_1_n_6\,
      O(0) => \timer_reg[4]_i_1_n_7\,
      S(3) => \timer[4]_i_2_n_0\,
      S(2) => \timer[4]_i_3_n_0\,
      S(1) => \timer[4]_i_4_n_0\,
      S(0) => \timer[4]_i_5_n_0\
    );
\timer_reg[4]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[0]_i_6_n_0\,
      CO(3) => \timer_reg[4]_i_6_n_0\,
      CO(2) => \timer_reg[4]_i_6_n_1\,
      CO(1) => \timer_reg[4]_i_6_n_2\,
      CO(0) => \timer_reg[4]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timer0(8 downto 5),
      S(3) => \timer[4]_i_7_n_0\,
      S(2) => \timer[4]_i_8_n_0\,
      S(1) => \timer[4]_i_9_n_0\,
      S(0) => \timer[4]_i_10_n_0\
    );
\timer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_6\,
      Q => timer_reg(5),
      R => '0'
    );
\timer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_5\,
      Q => timer_reg(6),
      R => '0'
    );
\timer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_4\,
      Q => timer_reg(7),
      R => '0'
    );
\timer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_7\,
      Q => timer_reg(8),
      R => '0'
    );
\timer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[4]_i_1_n_0\,
      CO(3) => \timer_reg[8]_i_1_n_0\,
      CO(2) => \timer_reg[8]_i_1_n_1\,
      CO(1) => \timer_reg[8]_i_1_n_2\,
      CO(0) => \timer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[8]_i_1_n_4\,
      O(2) => \timer_reg[8]_i_1_n_5\,
      O(1) => \timer_reg[8]_i_1_n_6\,
      O(0) => \timer_reg[8]_i_1_n_7\,
      S(3) => \timer[8]_i_2_n_0\,
      S(2) => \timer[8]_i_3_n_0\,
      S(1) => \timer[8]_i_4_n_0\,
      S(0) => \timer[8]_i_5_n_0\
    );
\timer_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[4]_i_6_n_0\,
      CO(3) => \timer_reg[8]_i_6_n_0\,
      CO(2) => \timer_reg[8]_i_6_n_1\,
      CO(1) => \timer_reg[8]_i_6_n_2\,
      CO(0) => \timer_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => timer0(12 downto 9),
      S(3) => \timer[8]_i_7_n_0\,
      S(2) => \timer[8]_i_8_n_0\,
      S(1) => \timer[8]_i_9_n_0\,
      S(0) => \timer[8]_i_10_n_0\
    );
\timer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_6\,
      Q => timer_reg(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_kth_2DNoC_2x2x1_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BD_kth_2DNoC_2x2x1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BD_kth_2DNoC_2x2x1_0_0 : entity is "BD_kth_2DNoC_2x2x1_0_0,kth_2DNoC_2x2x1_c1_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BD_kth_2DNoC_2x2x1_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of BD_kth_2DNoC_2x2x1_0_0 : entity is "kth_2DNoC_2x2x1_c1_v1_0,Vivado 2016.3";
end BD_kth_2DNoC_2x2x1_0_0;

architecture STRUCTURE of BD_kth_2DNoC_2x2x1_0_0 is
  signal \^heartbeat_0\ : STD_LOGIC;
begin
  HeartBeat_0 <= \^heartbeat_0\;
  HeartBeat_1 <= \^heartbeat_0\;
  HeartBeat_2 <= \^heartbeat_0\;
  HeartBeat_3 <= \^heartbeat_0\;
U0: entity work.BD_kth_2DNoC_2x2x1_0_0_kth_2DNoC_2x2x1_c1_v1_0
     port map (
      From_NoC_0(55 downto 0) => From_NoC_0(55 downto 0),
      From_NoC_1(55 downto 0) => From_NoC_1(55 downto 0),
      From_NoC_2(55 downto 0) => From_NoC_2(55 downto 0),
      From_NoC_3(55 downto 0) => From_NoC_3(55 downto 0),
      HeartBeat_0 => \^heartbeat_0\,
      To_NoC_0(55 downto 0) => To_NoC_0(55 downto 0),
      To_NoC_1(55 downto 0) => To_NoC_1(55 downto 0),
      To_NoC_2(55 downto 0) => To_NoC_2(55 downto 0),
      To_NoC_3(55 downto 0) => To_NoC_3(55 downto 0),
      clk => clk,
      read_R(3) => Sync_3(0),
      read_R(2) => Sync_2(0),
      read_R(1) => Sync_1(0),
      read_R(0) => Sync_0(0),
      reset => reset,
      write_R(3) => Sync_3(1),
      write_R(2) => Sync_2(1),
      write_R(1) => Sync_1(1),
      write_R(0) => Sync_0(1)
    );
end STRUCTURE;
