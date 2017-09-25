--
-- Dual-Port Block RAM with Two Write Ports
-- Correct Modelization with a Shared Variable
--
-- Download: ftp://ftp.xilinx.com/pub/documentation/misc/xstug_examples.zip
-- File: HDL_Coding_Techniques/rams/rams_16b.vhd
--
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
entity rams_32b is
   generic(width:integer);
   port(clka : in std_logic;
        clkb : in std_logic;
        ena : in std_logic;
        enb : in std_logic;
        wea : in std_logic;
        web : in std_logic;
        addra : in std_logic_vector(width-1 downto 0);
        addrb : in std_logic_vector(width-1 downto 0);
        dia : in std_logic_vector(31 downto 0);
        dib : in std_logic_vector(31 downto 0);
        doa : out std_logic_vector(31 downto 0);
        dob : out std_logic_vector(31 downto 0));
end rams_32b;

architecture syn of rams_32b is
   type ram_type is array (2**width-1 downto 0) of std_logic_vector(31 downto 0);
   shared variable RAM : ram_type;
begin
   process (CLKA)
   begin
      if CLKA'event and CLKA = '1' then
         if ENA = '1' then
            DOA <= RAM(conv_integer(ADDRA));
            if WEA = '1' then
               RAM(conv_integer(ADDRA)) := DIA;
            end if;
         end if;
      end if;
   end process;
   process (CLKB)
   begin
      if CLKB'event and CLKB = '1' then
         if ENB = '1' then
            DOB <= RAM(conv_integer(ADDRB));
            if WEB = '1' then
               RAM(conv_integer(ADDRB)) := DIB;
            end if;
         end if;
      end if;
   end process;
end syn;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity rni_memory_64_32 is 
  generic (width:integer);
  port (
         -- inputs:
         signal address1 : IN STD_LOGIC_VECTOR (width-2 DOWNTO 0);
         signal address2 : IN STD_LOGIC_VECTOR (width-1 DOWNTO 0);
         signal byteenable1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
         signal byteenable2 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
         signal chipselect1 : IN STD_LOGIC;
         signal chipselect2 : IN STD_LOGIC;
         signal clk : IN STD_LOGIC;
         signal clken1 : IN STD_LOGIC;
         signal clken2 : IN STD_LOGIC;
         signal write1 : IN STD_LOGIC;
         signal write2 : IN STD_LOGIC;
         signal writedata1 : IN STD_LOGIC_VECTOR (63 DOWNTO 0);
         signal writedata2 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
         -- outputs:
         signal readdata1 : OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
         signal readdata2 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
       );
end entity rni_memory_64_32;

architecture structure of rni_memory_64_32 is
   component rams_32b
      generic(width:integer);
      port(clka : in std_logic;
           clkb : in std_logic;
           ena : in std_logic;
           enb : in std_logic;
           wea : in std_logic;
           web : in std_logic;
           addra : in std_logic_vector(width-1 downto 0);
           addrb : in std_logic_vector(width-1 downto 0);
           dia : in std_logic_vector(31 downto 0);
           dib : in std_logic_vector(31 downto 0);
           doa : out std_logic_vector(31 downto 0);
           dob : out std_logic_vector(31 downto 0));
   end component;
   signal internal_readdata1 :  STD_LOGIC_VECTOR (63 DOWNTO 0);
   signal internal_readdata1_lw,internal_readdata1_hw :  STD_LOGIC_VECTOR (31 DOWNTO 0);
   signal internal_readdata2 :  STD_LOGIC_VECTOR (31 DOWNTO 0);
   signal internal_readdata2_lw,internal_readdata2_hw :  STD_LOGIC_VECTOR (31 DOWNTO 0);
   signal wren1_lw,wren1_hw :  STD_LOGIC;
   signal wren2_lw,wren2_hw :  STD_LOGIC;
   alias writedata1_lw:std_logic_vector(31 downto 0) is writedata1(31 downto 0);
   alias writedata1_hw:std_logic_vector(31 downto 0) is writedata1(63 downto 32);
   alias internal_address2:std_logic_vector(width-2 DOWNTO 0) is address2(width-1 downto 1);
begin

  wren1_lw <= chipselect1 AND write1;
  wren1_hw <= chipselect1 AND write1;
  wren2_lw <= chipselect2 AND not(Address2(0)) AND write2;
  wren2_hw <= chipselect2 AND Address2(0) AND write2;

  -- Try to synthesize the memory instead in order to avoid memory addressing bug (it's HARD to integrate foreign IP-blocks...)
  -- Use Googled template...
  LW: rams_32b
	   generic map(width => width-1)
	   port map(clka=>clk,
		    clkb=>clk,
		    ena => chipselect1,
		    enb => chipselect2,
		    wea => wren1_lw,
		    web => wren2_lw,
		    addra => address1,
		    addrb => internal_address2,
		    dia => writedata1_lw,
		    dib => writedata2,
		    doa => internal_readdata1_lw,
		    dob => internal_readdata2_lw);
  HW: rams_32b 
	   generic map(width => width-1)
	   port map(clka=>clk,
		    clkb=>clk,
		    ena => chipselect1,
		    enb => chipselect2,
		    wea => wren1_hw,
		    web => wren2_hw,
		    addra => address1,
		    addrb => internal_address2,
		    dia => writedata1_hw,
		    dib => writedata2,
		    doa => internal_readdata1_hw,
		    dob => internal_readdata2_hw);

  internal_readdata1 <= internal_readdata1_hw & internal_readdata1_lw;
  internal_readdata2 <= internal_readdata2_hw when address2(0)='1' else internal_readdata2_lw;

  --s1, which is an e_avalon_slave
  readdata1 <= internal_readdata1; -- when chipselect1='1' else (others=>'0');
  -- byteenable1="11111111" else (others=>'0');
  readdata2 <= internal_readdata2; -- when chipselect2='1' else (others=>'0'); 
  -- byteenable2="1111" else (others=>'0');
end structure;

