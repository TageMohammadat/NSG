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
entity rams_8b is
   generic(width:integer);
   port(clka : in std_logic;
        clkb : in std_logic;
        ena : in std_logic;
        enb : in std_logic;
        wea : in std_logic;
        web : in std_logic;
        addra : in std_logic_vector(width-1 downto 0);
        addrb : in std_logic_vector(width-1 downto 0);
        dia : in std_logic_vector(7 downto 0);
        dib : in std_logic_vector(7 downto 0);
        doa : out std_logic_vector(7 downto 0);
        dob : out std_logic_vector(7 downto 0));
end rams_8b;

architecture syn of rams_8b is
   type ram_type is array (2**width-1 downto 0) of std_logic_vector(7 downto 0);
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

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
entity regs_8b is
   generic(width:integer);
   port(clk : in std_logic;
        ena : in std_logic;
        enb : in std_logic;
        wea : in std_logic;
        web : in std_logic;
        addra : in std_logic_vector(width-1 downto 0);
        addrb : in std_logic_vector(width-1 downto 0);
        dia : in std_logic_vector(7 downto 0);
        dib : in std_logic_vector(7 downto 0);
        doa : out std_logic_vector(7 downto 0);
        dob : out std_logic_vector(7 downto 0));
end regs_8b;

architecture syn of regs_8b is
   type ram_type is array (2**width-1 downto 0) of std_logic_vector(7 downto 0);
   signal RAM : ram_type;
begin
   process (CLK)
   begin
      if CLK'event and CLK = '1' then
         if ENA = '1' then
            DOA <= RAM(conv_integer(ADDRA));
            if WEA = '1' then
               RAM(conv_integer(ADDRA)) <= DIA;
            end if;
         end if;
         if ENB = '1' then
            DOB <= RAM(conv_integer(ADDRB));
            if WEB = '1' then
               RAM(conv_integer(ADDRB)) <= DIB;
            end if;
         end if;
      end if;
   end process;
end syn;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity memory_dual_port is 
        generic (
		   width_data_a : NATURAL :=32;
        	   width_data_b : NATURAL:=64;
        	   width_byteena_a : NATURAL:=4;
        	   width_byteena_b : NATURAL:=8;
        	   width_address_a : NATURAL:=14;
        	   width_address_b : NATURAL:=13
		);
        port (
              -- inputs:
                 signal address_a : IN STD_LOGIC_VECTOR (width_address_a-1 DOWNTO 0);
                 signal address_b : IN STD_LOGIC_VECTOR (width_address_b-1 DOWNTO 0);
                 signal byteenable_a : IN STD_LOGIC_VECTOR (width_byteena_a-1 DOWNTO 0);
                 signal byteenable_b : IN STD_LOGIC_VECTOR (width_byteena_b-1 DOWNTO 0);
                 signal chipselect_a : IN STD_LOGIC;
                 signal chipselect_b : IN STD_LOGIC;
                 signal clk : IN STD_LOGIC;
                 signal clken_a : IN STD_LOGIC;
                 signal clken_b : IN STD_LOGIC;
                 signal write_a : IN STD_LOGIC;
                 signal write_b : IN STD_LOGIC;
                 signal writedata_a : IN STD_LOGIC_VECTOR (width_data_a-1 DOWNTO 0);
                 signal writedata_b : IN STD_LOGIC_VECTOR (width_data_b-1 DOWNTO 0);

              -- outputs:
                 signal readdata_a : OUT STD_LOGIC_VECTOR (width_data_a-1 DOWNTO 0);
                 signal readdata_b : OUT STD_LOGIC_VECTOR (width_data_b-1 DOWNTO 0)
              );
begin
   assert ((width_data_a*(2**width_address_a))=(width_data_b*(2**width_address_b)))
      report "Dual port memory must have exactly the same number of bits seen from port A and port B"
      severity failure;
end memory_dual_port;

architecture structure of memory_dual_port is
   component rams_8b
      generic(width:integer);
      port(clka : in std_logic;
           clkb : in std_logic;
           ena : in std_logic;
           enb : in std_logic;
           wea : in std_logic;
           web : in std_logic;
           addra : in std_logic_vector(width-1 downto 0);
           addrb : in std_logic_vector(width-1 downto 0);
           dia : in std_logic_vector(7 downto 0);
           dib : in std_logic_vector(7 downto 0);
           doa : out std_logic_vector(7 downto 0);
           dob : out std_logic_vector(7 downto 0));
   end component;
   component regs_8b
      generic(width:integer);
      port(clk : in std_logic;
           ena : in std_logic;
           enb : in std_logic;
           wea : in std_logic;
           web : in std_logic;
           addra : in std_logic_vector(width-1 downto 0);
           addrb : in std_logic_vector(width-1 downto 0);
           dia : in std_logic_vector(7 downto 0);
           dib : in std_logic_vector(7 downto 0);
           doa : out std_logic_vector(7 downto 0);
           dob : out std_logic_vector(7 downto 0));
   end component;

   type c_type is record
     wa:integer;
     wd:integer;
   end record;

   function max(L,R:c_type) return c_type is
   begin
      if (L.wa>R.wa) then return L; end if;
      return R;
   end max;

   function log2(a:integer) return integer is
   begin
      for i in 0 to 30 loop
	if (a<=2**i) then return i; end if;
      end loop;
      return 31;
   end log2;

   subtype diff_type is integer range 0 to 15;
   constant lsw_a:integer:=log2(width_data_a);
   constant lsw_b:integer:=log2(width_data_b);
   constant diff_port_a:diff_type:=7-lsw_a;
   constant diff_port_b:diff_type:=7-lsw_b;

   constant c_a:c_type:=(width_address_a,width_data_a);
   constant c_b:c_type:=(width_address_a,width_data_a);
   constant c_max:c_type:=max(c_a,c_b);
   constant max_addr_width:integer:=c_max.wa;
   constant lsw_max:diff_type:=log2(c_max.wd);
   constant diff_max:diff_type:=7-lsw_max;
   -- port A
   signal internal_address_a:std_logic_vector(max_addr_width-diff_max-1 downto 0);
   signal internal_writedata_a:std_logic_vector(127 downto 0);
   signal internal_readdata_a:std_logic_vector(127 downto 0);
   signal internal_byteenable_a:std_logic_vector(15 downto 0);
   signal wren_a,internal_read_a,delayed_read_a:std_logic;
   signal internal_addra_a,delayed_addra_a:diff_type;
   -- port B
   signal internal_address_b:std_logic_vector(max_addr_width-diff_max-1 downto 0);
   signal internal_writedata_b:std_logic_vector(127 downto 0);
   signal internal_readdata_b:std_logic_vector(127 downto 0);
   signal internal_byteenable_b:std_logic_vector(15 downto 0);
   signal wren_b,internal_read_b,delayed_read_b:std_logic;
   signal internal_addra_b,delayed_addra_b:diff_type;

   constant ram_size:integer:=width_data_a*(2**width_address_a);

begin
  -- Make a 128 bit wide memory...
  G0:if (ram_size>1024) generate
  RAM:for i in 0 to 15 generate
     U:rams_8b
         generic map (
            WIDTH => (max_addr_width-diff_max)
         )
         port map (
            clkA => clk,
            clkB => clk,
            enA => internal_byteenable_a(i),
            enB => internal_byteenable_b(i),
            weA => wren_a,
            weB => wren_b,
            addrA => internal_address_a,
            addrB => internal_address_b,
            diA => internal_writedata_a(i*8+7 downto i*8),
            diB => internal_writedata_b(i*8+7 downto i*8),
            doA => internal_readdata_a(i*8+7 downto i*8),
            doB => internal_readdata_b(i*8+7 downto i*8)
         );
   end generate;
   end generate; -- ram_size;
   -- Make registers if less than 1024 bits in total...
   G1: if (ram_size<=1024) generate
   REG:for i in 0 to 15 generate
     U:regs_8b
         generic map (
            WIDTH => (max_addr_width-diff_max)
         )
         port map (
            clk => clk,
            enA => internal_byteenable_a(i),
            enB => internal_byteenable_b(i),
            weA => wren_a,
            weB => wren_b,
            addrA => internal_address_a,
            addrB => internal_address_b,
            diA => internal_writedata_a(i*8+7 downto i*8),
            diB => internal_writedata_b(i*8+7 downto i*8),
            doA => internal_readdata_a(i*8+7 downto i*8),
            doB => internal_readdata_b(i*8+7 downto i*8)
         );
   end generate;
   end generate; -- ram_size;
   -- portA
   process(address_a,byteenable_a,writedata_a)
      variable addr:diff_type;
      constant en_size:integer:=byteenable_a'length;
   begin
      -- pick out the high bits...
      internal_address_a<=address_a(width_address_a-1 downto diff_port_a);
      internal_byteenable_a<=(others=>'0');
      case diff_port_a is
         when 0 => -- width_data_a is 128 bit
            internal_byteenable_a<=byteenable_a;
            internal_writedata_a<=writedata_a;
	    internal_addra_a<=0;
	 when others => -- width_data_a is 64 bit or less
	    addr:=conv_integer(address_a(diff_port_a-1 downto 0));
	    for i in 0 to 2**diff_port_a-1 loop
	       if (i=addr) then
		  internal_byteenable_a((i+1)*en_size-1 downto i*en_size)<=byteenable_a;
	       end if;
               internal_writedata_a((i+1)*width_data_a-1 downto i*width_data_a)<=writedata_a;
	    end loop;
	    internal_addra_a<=addr;
      end case;
   end process;
   wren_a<=write_a AND chipselect_a;
   internal_read_a<=not(write_a) AND chipselect_a;
   process(clk)
   begin
      if rising_edge(clk) then
         delayed_read_a<=internal_read_a;
         delayed_addra_a<=internal_addra_a;
      end if;
   end process;

   -- ok, let's ignore byteneable on reads for simplicity's sake...
   process(internal_readdata_a,delayed_read_a,delayed_addra_a)
   begin
      readdata_a<=(others=>'Z');
      if (delayed_read_a='1') then
	 case diff_port_a is
	    when 0 =>
	       readdata_a<=internal_readdata_a;
	    when others =>
	       for i in 0 to 2**diff_port_a-1 loop
		  if (i=delayed_addra_a) then
		     readdata_a<=internal_readdata_a((i+1)*width_data_a-1 downto i*width_data_a);
		  end if;
	       end loop;
	 end case;
      end if;
   end process;

   -- portB
   process(address_b,byteenable_b,writedata_b)
      variable addr:diff_type;
      constant en_size:integer:=byteenable_b'length;
   begin
      -- pick out the high bits...
      internal_address_b<=address_b(width_address_b-1 downto diff_port_b);
      internal_byteenable_b<=(others=>'0');
      case diff_port_b is
         when 0 => -- width_data_b is 128 bit
            internal_byteenable_b<=byteenable_b;
            internal_writedata_b<=writedata_b;
	    internal_addra_b<=0;
	 when others => -- width_data_b is 64 bit or less
	    addr:=conv_integer(address_b(diff_port_b-1 downto 0));
	    for i in 0 to 2**diff_port_b-1 loop
	       if (i=addr) then
		  internal_byteenable_b((i+1)*en_size-1 downto i*en_size)<=byteenable_b;
	       end if;
               internal_writedata_b((i+1)*width_data_b-1 downto i*width_data_b)<=writedata_b;
	    end loop;
	    internal_addra_b<=addr;
      end case;
   end process;
   wren_b<=write_b AND chipselect_b;
   internal_read_b<=not(write_b) AND chipselect_b;
   process(clk)
   begin
      if rising_edge(clk) then
         delayed_addra_b<=internal_addra_b;
	 delayed_read_b<=internal_read_b;
      end if;
   end process;

   -- ok, let's ignore byteneable on reads for simplicity's sake...
   process(internal_readdata_b,delayed_read_b,delayed_addra_b)
   begin
      readdata_b<=(others=>'Z');
      if (delayed_read_b='1') then
	 case diff_port_b is
	    when 0 =>
	       readdata_b<=internal_readdata_b;
	    when others =>
	       for i in 0 to 2**diff_port_b-1 loop
		  if (i=delayed_addra_b) then
		     readdata_b<=internal_readdata_b((i+1)*width_data_b-1 downto i*width_data_b);
		  end if;
	       end loop;
	 end case;
      end if;
   end process;
end structure;

