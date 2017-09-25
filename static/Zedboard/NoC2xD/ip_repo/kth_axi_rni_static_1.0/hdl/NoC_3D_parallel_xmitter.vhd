library ieee;
use ieee.std_logic_1164.all;
use work.NoC_3D_Parallel_package.all;
entity NoC_3D_Parallel_xmitter is
   port(clk,reset:IN std_logic;
	  load_enable:std_logic;
	  D:IN NoC_Packet;
	  Q:OUT NoC_Packet);
end NoC_3D_Parallel_xmitter;

architecture behave of Noc_3D_Parallel_xmitter is
   signal mem:NoC_Packet;
begin
   process(clk)
   begin
      if (clk'event and (clk='1')) then
	   if (reset='1') then
		mem<=(others=>'0');
	   else
		if (load_enable='1') then
		   mem<=D;
		end if;
	   end if;
      end if;
   end process;

   Q<=mem;
   
end behave;