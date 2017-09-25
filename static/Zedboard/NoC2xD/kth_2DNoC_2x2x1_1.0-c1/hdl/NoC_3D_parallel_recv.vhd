library ieee;
use ieee.std_logic_1164.all;
-- use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.NoC_3D_Parallel_package.all;

entity NoC_3D_Parallel_recv is
   generic(inbuffer:buffer_type:=withinbuffer;
	     Row:RowAddressType;
           Col:ColumnAddressType;
	     Layer:LayerAddressType);
   port(clk,reset:IN std_logic;
	  load_enable:std_logic;
	  D:IN NoC_Packet;
	  Q:OUT NoC_Packet;
	  HC:OUT HC_type;
        port_wants_to:OUT port_vector
	);
end NoC_3D_Parallel_recv;

architecture behave of NoC_3D_Parallel_recv is
   signal mem:NoC_Packet;
   signal Valid:std_logic;
   signal NS:NS_type;
   signal EW:EW_type;
   signal UD:UD_type;
begin
   G0:if (inbuffer=withinbuffer) generate
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
   end generate;
   G1:if (inbuffer=noinbuffer) generate
	mem<=D;
   end generate;
   Q<=mem;
   Valid<=mem(Valid_pos);
   HC<=mem(HC_high downto HC_low);
   NS<=mem(NS_high downto NS_low);
   EW<=mem(EW_high downto EW_low);
   UD<=mem(UD_high downto UD_low);

   -- routing table
   process(valid,NS,ew,ud)
	variable tmp_port_wants_to:port_vector;
   begin
	tmp_port_wants_to:=(others=>Empty);
	if (valid='1') then
         if (NS>row) then
            tmp_port_wants_to(0):=North;
		if (EW>col) then
		   tmp_port_wants_to(1):=East;
		   if (UD>Layer) then
			tmp_port_wants_to(2):=Up;
			tmp_port_wants_to(3):=South;
			tmp_port_wants_to(4):=West;
			tmp_port_wants_to(5):=Down;
		   elsif (UD<Layer) then
			tmp_port_wants_to(2):=Down;
			tmp_port_wants_to(3):=South;
			tmp_port_wants_to(4):=West;
			tmp_port_wants_to(5):=Up;
		   else -- this layer
			tmp_port_wants_to(3):=South;
			tmp_port_wants_to(4):=West;
			tmp_port_wants_to(5):=Up;
			tmp_port_wants_to(2):=Down;
		   end if;
		elsif (EW<col) then
		   tmp_port_wants_to(1):=West;
		   if (UD>Layer) then
			tmp_port_wants_to(2):=Up;
			tmp_port_wants_to(3):=South;
			tmp_port_wants_to(4):=East;
			tmp_port_wants_to(5):=Down;
		   elsif (UD<Layer) then
			tmp_port_wants_to(2):=Down;
			tmp_port_wants_to(3):=South;
			tmp_port_wants_to(4):=East;
			tmp_port_wants_to(5):=Up;
		   else -- this layer
			tmp_port_wants_to(2):=South;
			tmp_port_wants_to(3):=East;
			tmp_port_wants_to(4):=Up;
			tmp_port_wants_to(5):=Down;
		   end if;
		else -- This column
		   if (UD>Layer) then
			tmp_port_wants_to(1):=Up;
			tmp_port_wants_to(2):=South;
			tmp_port_wants_to(3):=East;
			tmp_port_wants_to(4):=West;
			tmp_port_wants_to(5):=Down;
		   elsif (UD<Layer) then
			tmp_port_wants_to(1):=Down;
			tmp_port_wants_to(2):=South;
			tmp_port_wants_to(3):=East;
			tmp_port_wants_to(4):=West;
			tmp_port_wants_to(5):=Up;
		   else -- this layer
			tmp_port_wants_to(1):=South;
			tmp_port_wants_to(2):=East;
			tmp_port_wants_to(3):=West;
			tmp_port_wants_to(4):=Up;
			tmp_port_wants_to(5):=Down;
		   end if;
		end if;
	   elsif (NS<row) then
            tmp_port_wants_to(0):=South;
		if (EW>col) then
		   tmp_port_wants_to(1):=East;
		   if (UD>Layer) then
			tmp_port_wants_to(2):=Up;
			tmp_port_wants_to(3):=North;
			tmp_port_wants_to(4):=West;
			tmp_port_wants_to(5):=Down;
		   elsif (UD<Layer) then
			tmp_port_wants_to(2):=Down;
			tmp_port_wants_to(3):=North;
			tmp_port_wants_to(4):=West;
			tmp_port_wants_to(5):=Up;
		   else -- this layer
			tmp_port_wants_to(2):=North;
			tmp_port_wants_to(3):=West;
			tmp_port_wants_to(4):=Up;
			tmp_port_wants_to(5):=Down;
		   end if;
		elsif (EW<col) then
		   tmp_port_wants_to(1):=West;
		   if (UD>Layer) then
			tmp_port_wants_to(2):=Up;
			tmp_port_wants_to(3):=North;
			tmp_port_wants_to(4):=East;
			tmp_port_wants_to(5):=Down;
		   elsif (UD<Layer) then
			tmp_port_wants_to(2):=Down;
			tmp_port_wants_to(3):=North;
			tmp_port_wants_to(4):=East;
			tmp_port_wants_to(5):=Up;
		   else -- this layer
			tmp_port_wants_to(2):=North;
			tmp_port_wants_to(3):=East;
			tmp_port_wants_to(4):=Up;
			tmp_port_wants_to(5):=Down;
		   end if;
		else -- This column
		   if (UD>Layer) then
			tmp_port_wants_to(1):=Up;
			tmp_port_wants_to(2):=North;
			tmp_port_wants_to(3):=East;
			tmp_port_wants_to(4):=West;
			tmp_port_wants_to(5):=Down;
		   elsif (UD<Layer) then
			tmp_port_wants_to(1):=Down;
			tmp_port_wants_to(2):=North;
			tmp_port_wants_to(3):=East;
			tmp_port_wants_to(4):=West;
			tmp_port_wants_to(5):=Up;
		   else -- this layer
			tmp_port_wants_to(1):=North;
			tmp_port_wants_to(2):=East;
			tmp_port_wants_to(3):=West;
			tmp_port_wants_to(4):=Up;
			tmp_port_wants_to(5):=Down;
		   end if;
		end if;
	   else -- This Row
		if (EW>col) then
		   tmp_port_wants_to(0):=East;
		   if (UD>Layer) then
			tmp_port_wants_to(1):=Up;
			tmp_port_wants_to(2):=North;
			tmp_port_wants_to(3):=West;
                  tmp_port_wants_to(4):=South;
			tmp_port_wants_to(5):=Down;
		   elsif (UD<Layer) then
			tmp_port_wants_to(1):=Down;
			tmp_port_wants_to(2):=North;
			tmp_port_wants_to(3):=West;
                  tmp_port_wants_to(4):=South;
			tmp_port_wants_to(5):=Up;
		   else -- this layer
			tmp_port_wants_to(1):=North;
			tmp_port_wants_to(2):=West;
                  tmp_port_wants_to(3):=South;
			tmp_port_wants_to(4):=Up;
			tmp_port_wants_to(5):=Down;
		   end if;
		elsif (EW<col) then
		   tmp_port_wants_to(0):=West;
		   if (UD>Layer) then
			tmp_port_wants_to(1):=Up;
			tmp_port_wants_to(2):=North;
			tmp_port_wants_to(3):=East;
                  tmp_port_wants_to(4):=South;
			tmp_port_wants_to(5):=Down;
		   elsif (UD<Layer) then
			tmp_port_wants_to(1):=Down;
			tmp_port_wants_to(2):=North;
			tmp_port_wants_to(3):=East;
                  tmp_port_wants_to(4):=South;
			tmp_port_wants_to(5):=Up;
		   else -- this layer
			tmp_port_wants_to(1):=North;
			tmp_port_wants_to(2):=East;
                  tmp_port_wants_to(3):=South;
			tmp_port_wants_to(4):=Up;
			tmp_port_wants_to(5):=Down;
		   end if;
		else -- This column
		   if (UD>Layer) then
			tmp_port_wants_to(0):=Up;
			tmp_port_wants_to(1):=North;
			tmp_port_wants_to(2):=East;
			tmp_port_wants_to(3):=West;
                  tmp_port_wants_to(4):=South;
			tmp_port_wants_to(5):=Down;
		   elsif (UD<Layer) then
			tmp_port_wants_to(0):=Down;
			tmp_port_wants_to(1):=North;
			tmp_port_wants_to(2):=East;
			tmp_port_wants_to(3):=West;
                  tmp_port_wants_to(4):=South;
			tmp_port_wants_to(5):=Up;
		   else -- this layer
			tmp_port_wants_to(0):=Resource;
			tmp_port_wants_to(1):=North;
			tmp_port_wants_to(2):=East;
			tmp_port_wants_to(3):=West;
                  tmp_port_wants_to(4):=South;
			tmp_port_wants_to(5):=Up;
			tmp_port_wants_to(6):=Down;
		   end if; -- layer
		end if; -- column
	   end if; -- row
      end if;
	-- prevent routing off the chip in corners
      for i in 0 to Resource loop
	   if (col=0) then
		if tmp_port_wants_to(i)=West then
		   tmp_port_wants_to(i):=Empty;
	      end if;
         end if;
	   if (col=Nr_of_Cols-1) then
		if tmp_port_wants_to(i)=East then
		   tmp_port_wants_to(i):=Empty;
		end if;
	   end if;
	   if (row=0) then
		if tmp_port_wants_to(i)=South then
		   tmp_port_wants_to(i):=Empty;
		end if;
	   end if;
	   if (row=Nr_of_Rows-1) then
		if tmp_port_wants_to(i)=North then
		   tmp_port_wants_to(i):=Empty;
		end if;
	   end if;
	   if (Layer=0) then
		if tmp_port_wants_to(i)=Down then
		   tmp_port_wants_to(i):=Empty;
		end if;
	   end if;
	   if (Layer=Nr_of_Layers-1) then
		if tmp_port_wants_to(i)=Up then
		   tmp_port_wants_to(i):=Empty;
		end if;
	   end if;
      end loop;
	port_wants_to<=tmp_port_wants_to;
   end process;
end behave;
