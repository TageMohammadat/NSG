
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.NoC_3D_Parallel_package.all;

entity NoC_2D_Parallel is
   port(clk,reset:IN std_logic;
	  To_NoC:IN NoC_Packet_cube;
	  To_Res:OUT NoC_Packet_cube;
	  read_R:OUT std_logic_cube;
	  write_R:OUT std_logic_cube);
end NoC_2D_Parallel;

architecture absolute_addressing of NoC_2D_Parallel is

   component NoC_3D_Parallel_Switch is
      generic(Col:ColumnAddressType;   -- x position
              Row:RowAddressType;	-- y position
	        Layer:LayerAddressType;  -- z position
	        inbuffer:buffer_type);
      port(clk,reset:IN std_logic;
	     Inport:IN Noc_port; 			-- Array of NoC packets, port 0=N, 1=S, 2=E, 3=W, 4=U, 5=D, 6=R, 7=Empty
	     Outport:OUT NoC_port;			-- Z-direction has lowest priority since it has the slowest links on DE3 boards
	     read_R:OUT std_logic;
	     write_R:OUT std_logic);
   end component;

   signal interconnect_in,interconnect_out:NoC_port_cube;

begin

   -- (x,y,z)=(0,0,0) is the lowest southwest corner, i.e, (x,y,z) is counted as (West->East)(South->North)(Down->Up)
   UX:for x in 0 to Nr_of_Cols-1 generate
      UY:for y in 0 to Nr_of_Rows-1 generate
	   UZ:for z in 0 to 0 generate
		UD:NoC_3D_Parallel_Switch
			generic map(Col=>x,
					Row=>y,
					Layer=>z,
					inbuffer=>withinbuffer)
			port map(clk=>clk,
				   reset=>reset,
				   Inport=>interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x),
				   Outport=>interconnect_out(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x),
				   read_R=>read_R(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x),
				   write_R=>write_R(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x));
		ZU:interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(Up)<=Void_packet;  -- No packets can come from z-direction
		ZD:interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(Down)<=Void_packet;
		Y0:if y=0 generate
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(North)<=interconnect_out(z*Nr_of_Rows*Nr_of_Cols+(y+1)*Nr_of_Cols+x)(South);
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(South)<=Void_packet; -- No packets can come from South
            end generate; -- Y0
		YM:if y>0 and y<Nr_of_Rows-1 generate
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(North)<=interconnect_out(z*Nr_of_Rows*Nr_of_Cols+(y+1)*Nr_of_Cols+x)(South);
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(South)<=interconnect_out(z*Nr_of_Rows*Nr_of_Cols+(y-1)*Nr_of_Cols+x)(North);
            end generate; -- YM
		YX:if y=Nr_of_Rows-1 generate
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(North)<=Void_packet; -- No packets can come from North
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(South)<=interconnect_out(z*Nr_of_Rows*Nr_of_Cols+(y-1)*Nr_of_Cols+x)(North);
            end generate; -- YX
		X0:if x=0 generate
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(East)<=interconnect_out(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+(x+1))(West);
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(West)<=Void_packet; -- No packets can come from West
            end generate; -- X0
		XM:if x>0 and x<Nr_of_Cols-1 generate
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(East)<=interconnect_out(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+(x+1))(West);
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(West)<=interconnect_out(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+(x-1))(East);
            end generate; -- XX
		XX:if x=Nr_of_Cols-1 generate
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(East)<=Void_packet; -- No packets can come from East
		   interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(West)<=interconnect_out(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+(x-1))(East);
            end generate; -- XX
		R_in:interconnect_in(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(Resource)<=To_NoC(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x);
		R_out:To_Res(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)<=interconnect_out(z*Nr_of_Rows*Nr_of_Cols+y*Nr_of_Cols+x)(Resource);
	   end generate; -- UZ
      end generate; -- UY
   end generate; -- UX

end absolute_addressing;
