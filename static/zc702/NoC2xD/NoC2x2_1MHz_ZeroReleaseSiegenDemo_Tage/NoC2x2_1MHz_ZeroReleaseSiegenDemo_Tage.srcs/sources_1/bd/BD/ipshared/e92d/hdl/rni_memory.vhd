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
entity rams_16b is
   generic(width:integer);
   port(clka : in std_logic;
        clkb : in std_logic;
        ena : in std_logic;
        enb : in std_logic;
        wea : in std_logic;
        web : in std_logic;
        addra : in std_logic_vector(width-1 downto 0);
        addrb : in std_logic_vector(width-1 downto 0);
        dia : in std_logic_vector(15 downto 0);
        dib : in std_logic_vector(15 downto 0);
        doa : out std_logic_vector(15 downto 0);
        dob : out std_logic_vector(15 downto 0));
end rams_16b;

architecture syn of rams_16b is
   type ram_type is array (2**width-1 downto 0) of std_logic_vector(15 downto 0);
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

entity rni_memory is 
        generic (width:integer);
        port (
              -- inputs:
                 address1 : IN STD_LOGIC_VECTOR (width-1 DOWNTO 0);
                 address2 : IN STD_LOGIC_VECTOR (width-1 DOWNTO 0);
                 byteenable1 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
                 byteenable2 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
                 chipselect1 : IN STD_LOGIC;
                 chipselect2 : IN STD_LOGIC;
                 clk : IN STD_LOGIC;
                 clken1 : IN STD_LOGIC;
                 clken2 : IN STD_LOGIC;
                 write1 : IN STD_LOGIC;
                 write2 : IN STD_LOGIC;
                 writedata1 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
                 writedata2 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);

              -- outputs:
                 readdata1 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
                 readdata2 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
              );
end entity rni_memory;

architecture structure of rni_memory is
   component rams_16b
      generic(width:integer);
      port(clka : in std_logic;
           clkb : in std_logic;
           ena : in std_logic;
           enb : in std_logic;
           wea : in std_logic;
           web : in std_logic;
           addra : in std_logic_vector(width-1 downto 0);
           addrb : in std_logic_vector(width-1 downto 0);
           dia : in std_logic_vector(15 downto 0);
           dib : in std_logic_vector(15 downto 0);
           doa : out std_logic_vector(15 downto 0);
           dob : out std_logic_vector(15 downto 0));
   end component;
   signal internal_readdata1 :  STD_LOGIC_VECTOR (31 DOWNTO 0);
   signal internal_readdata2 :  STD_LOGIC_VECTOR (31 DOWNTO 0);
   signal wren1 :  STD_LOGIC;
   signal wren2 :  STD_LOGIC;
begin

  wren1 <= chipselect1 AND write1;
  wren2 <= chipselect2 AND write2;

  -- Try to synthesize the memory instead in order to avoid memory addressing bug (it's HARD to integrate foreign IP-blocks...)
  LW: rams_16b
	   generic map(width => width)
	   port map(clka=>clk,
		    clkb=>clk,
		    ena => chipselect1,
		    enb => chipselect2,
		    wea => wren1,
		    web => wren2,
		    addra => address1,
		    addrb => address2,
		    dia => writedata1(15 downto 0),
		    dib => writedata2(15 downto 0),
		    doa => internal_readdata1(15 downto 0),
		    dob => internal_readdata2(15 downto 0));
  HW: rams_16b
	   generic map(width => width)
	   port map(clka=>clk,
		    clkb=>clk,
		    ena => chipselect1,
		    enb => chipselect2,
		    wea => wren1,
		    web => wren2,
		    addra => address1,
		    addrb => address2,
		    dia => writedata1(31 downto 16),
		    dib => writedata2(31 downto 16),
		    doa => internal_readdata1(31 downto 16),
		    dob => internal_readdata2(31 downto 16));

  --s1, which is an e_avalon_slave
  --s2, which is an e_avalon_slave
  --vhdl renameroo for output signals
  readdata1 <= internal_readdata1; -- when byteenable1="1111" else (others=>'Z');
  --vhdl renameroo for output signals
  readdata2 <= internal_readdata2; -- when byteenable2="1111" else (others=>'Z');
end structure;

