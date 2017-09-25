------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.conv_std_logic_vector;
use ieee.std_logic_arith.conv_integer;
use ieee.std_logic_unsigned.conv_integer;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- Entity Section
------------------------------------------------------------------------------
Use work.noc_3D_parallel_package.all;
use work.noc_3D_sw_configuration_package.all;
entity generic_interface_to_noc_TDN is
    generic
	(
	      -- C_RESET_IS_HIGH : integer := 0;
		--C_BRAM_AWIDTH : integer := 32; -- 4096 bytes default buffer size
		-- row_pos : integer :=0 ;
		-- col_pos : integer :=0 ;
		-- layer_pos : integer := 0;
		rni_pos : integer := 0;
		channel_size : integer := flit_id_size; -- size of one msg channel in nr of data words (must be a power of two)
		-- The following two parameters are set in the NoC_3D_SW_configuration_package, 
		nr_of_recv_channels_size: integer :=2; -- size of the receive channel buffer  (nr_of_recv_channels = 2**nr_of_recv_channels_size)
		nr_of_send_channels_size: integer :=1  -- size of the transmit channel buffer (nr_of_send_channels = 2**nr_of_send_channels_size)
								   -- Two is always sufficient for single processor nodes...
	);
	port 
	(
		Clk:IN STD_LOGIC; -- Global Clock
		Reset:IN STD_LOGIC; -- Global Reset
		
		-- DO NOT EDIT BELOW THIS LINE ---------------------
		-- Bus protocol ports, do not add or delete. 
		-- memory interface ports
		send_buffer_read:OUT STD_LOGIC;
		send_buffer_write:OUT STD_LOGIC;
		send_buffer_address:OUT STD_LOGIC_VECTOR(nr_of_send_channels_size+channel_size-1 DOWNTO 0); -- generic number of channels used on the send side...
		send_buffer_readdata:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		send_buffer_writedata:OUT STD_LOGIC_VECTOR(31 DOWNTO 0);

		recv_buffer_read:OUT STD_LOGIC;
		recv_buffer_write:OUT STD_LOGIC;
		recv_buffer_address:OUT STD_LOGIC_VECTOR(nr_of_recv_channels_size+channel_size-1 DOWNTO 0); -- generic number of channels used on the recv side
		recv_buffer_readdata:IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		recv_buffer_writedata:OUT STD_LOGIC_VECTOR(31 DOWNTO 0);

		-- Avalon Slave ports
		slave_clk:IN STD_LOGIC; -- Avalon Master Clock
		slave_reset:IN STD_LOGIC;  -- Avalon Master Reset
		slave_irq:OUT STD_LOGIC;   -- Avalon Interrupt Request
		slave_readdata:OUT STD_LOGIC_VECTOR(31 DOWNTO 0); -- Avalon Master Data In
		slave_address:IN STD_LOGIC_VECTOR(6 DOWNTO 0); -- Avalon Master Address
		slave_read:IN STD_LOGIC; -- Avalon Master Read assert
		slave_chipselect:IN STD_LOGIC; 
		slave_write:IN STD_LOGIC; -- Avalon Master Write assert
		slave_writedata:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Avalon Master Data Out

		-- DO NOT EDIT ABOVE THIS LINE ---------------------
		-- what is in for the NoC is out for the nios_to_3D_NoC...
	     	-- GlobalSync port, used to implement Synchronous MoC in SW
	      	GlobalSync:IN std_logic;
		Toggle_address:OUT std_logic;
		Test_debug:OUT std_logic_vector(31 downto 0);
		-- what is in for the NoC is out for the nios_to_3D_NoC...
		inport:in NoC_packet;
		outport:out NoC_packet;
		--switch_cycle:in std_logic_vector(1 downto 0);
		read_R:in std_logic;
		write_R:in std_logic
	);

--attribute SIGIS : string; 
--attribute SIGIS of FSL_Clk : signal is "Clk"; 
--attribute SIGIS of FSL_S_Clk : signal is "Clk"; 
--attribute SIGIS of FSL_M_Clk : signal is "Clk"; 
--begin
--   assert nr_of_send_channels_size+channel_size<10 
--     report "Nr of send channels and nr of flits in a frame must be less than 10 bits put together, due to size restrictions in the interpretation of the control word of the RNI"
--     severity failure;
end generic_interface_to_noc_TDN;

------------------------------------------------------------------------------
-- Architecture Section
------------------------------------------------------------------------------

architecture Implementation of generic_interface_to_noc_TDN is
------------------------------------------------------------------------
   function reverse(A:std_logic_vector) return std_logic_vector is
      variable ret:std_logic_vector(A'reverse_range);
   begin
      for i in A'range loop
	   ret(i):=A(i);
	end loop;
	return ret;
   end reverse;
----------------------------------------------------------------------
  constant nr_of_recv_channels: integer := 2**nr_of_recv_channels_size;
  constant nr_of_send_channels: integer := 2**nr_of_send_channels_size;
  constant node_nr: natural := rni_pos; -- layer_pos*Nr_of_Cols*Nr_of_Rows+row_pos*Nr_of_Cols+col_pos;

   alias D_from_NoC:NoC_packet is inport(NoC_packet'high downto 0);
   -- Define header layout used by the receiver process
   alias recv_type is inport(type_high downto type_low);
   alias recv_flit_id is inport(flit_id_high downto flit_id_low);
   alias recv_src_pid is inport(Src_PID_high downto Src_PID_low);
   alias recv_dest_pid is inport(Dest_PID_high downto Dest_PID_low);
   alias Heartbeat:std_logic is GlobalSync;

   -- Setup flit layout
   constant global_clock_low:natural:=0;
   constant global_clock_high:natural:=7;
   constant frame_length_low:natural:=global_clock_high+1;
   constant frame_length_high:natural:=frame_length_low+flit_id_size-1;
   constant dest_pid_low:natural:=frame_length_high+1;
   constant dest_pid_high:natural:=dest_pid_low+PID_size-1;

   signal D_to_NoC:NoC_packet; -- alias D_to_NoC:NoC_packet is outport;

   constant recv_address_size:integer:=nr_of_recv_channels_size+channel_size;
   constant send_address_size:integer:=nr_of_send_channels_size+channel_size;
----------------------------------------------------------------------------
   type XMIT_STATE_TYPE is (Idle, Read_Input, Read_Memory, Wait_for_Read_R, Delay_state);

   signal xmit_state        : XMIT_STATE_TYPE;

   type RECV_STATE_TYPE is (Idle, Write_Data, Setup_Data, Wait_for_Write_R);
   signal recv_state        : RECV_STATE_TYPE;

   signal data_reg : std_logic_vector (31 downto 0);
   signal send_counter : std_logic_vector(flit_id_size-1 downto 0); -- max nr_of_words to send=2**Flit_id_size
   -- 
   -- 32 send buffers to read from
   -- This should be a generic number set by the noc generator, but then the device driver file needs to be
   -- put directly in the project directory (as the software configuration is)
   -- or it should use a generic parameter set by the software configuration file.
   --
   -- In principle, no more than two buffers will ever be needed, but which one to use depends on the
   -- schedule of the processes, and the order in which channels are used in the c-code.
   -- Since this cannot be known beforehand, it is set to the maximum number of used send channels in the node.
   -- 
   signal src_buffer   : std_logic_vector(nr_of_send_channels_size-1 downto 0);
   signal recv_address : std_logic_vector(recv_address_size-1 downto 0); -- Generic nr of write buffers + channel_width (# data words) = nr_of_address bits
   signal send_address : std_logic_vector(send_address_size-1 downto 0); -- Generic nr of read buffers + channel_width = nr_of_address bits
   constant zeros : std_logic_vector(31 downto 0):=(others=>'0');
   --constant write_base_address : std_logic_vector(31 downto 0):=X"0000A000";
   --constant read_base_address : std_logic_vector(31 downto 0):=X"00008000";
-----------------------------------------------------------------------------------

   -- Bit fields in Starting Frame from uBlaze
   constant counter_size:integer:=send_counter'length;
   constant src_buffer_size:integer:=src_buffer'length; -- shd be one since signal src_buffer   : std_logic_vector( 0 downto 0);

   -- where Src_type is std_logic_vector(3 downto 0); -- so shd be able to get IDs till 15
   -- subtype src_int is integer range 0 to Nr_of_Cols*Nr_of_Rows-1;

   subtype recv_counter_type is std_logic_vector(counter_size-1 downto 0);
   type recv_counter_array_type is array(integer range<>) of recv_counter_type;

   signal recv_counter:recv_counter_array_type(0 to nr_of_recv_channels-1);
   signal setup_reg:recv_counter_array_type(0 to nr_of_recv_channels-1);

   -- The global clock is currently only used for debugging purposes, to record the time when a msg transfer was initiated
   -- v2.0 is counting heartbeats instead of clock ticks
   signal clock_tick:std_logic_vector(7 downto 0); -- 1 us = 1 clock tick
   signal global_clock:std_logic_vector(20+19 downto 0); -- Counts clock_ticks since reset (max 12.725829025185185185185185185185 days)
   alias clock_low is global_clock(31 downto 0);
   alias clock_high is global_clock(39 downto 32);

   subtype lword is std_logic_vector(31 downto 0);
   signal command_reg,write_status_reg,read_status_reg:lword;

   type PID_array_type is array(integer range<>) of PID_type;
   signal msg_length_reg:recv_counter_array_type(2*nr_of_recv_channels-1 downto 0);
   signal s_pid,d_pid: PID_array_type(2*nr_of_recv_channels-1 downto 0);
   signal interrupt_reg,interrupt_reg_fifo:std_logic_vector(nr_of_recv_channels-1 downto 0);

   signal interrupt:std_logic_vector(2*nr_of_recv_channels_size-1 downto 0); -- nr_of_recv_channels_size, index of the channel that is finished receiving
   signal interrupt_request:std_logic;
  
   subtype channel_status_type is std_logic_vector(1 downto 0); -- 00 = Empty, 01=Open, 10=Closed, 11=not used
   constant ChannelEmpty:channel_status_type:="00";
   constant ChannelOpen:channel_status_type:="01";
   constant ChannelClosed:channel_status_type:="10";

   type channel_status_array is array(integer range<>) of channel_status_type;
   signal channel_status:channel_status_array(2*nr_of_recv_channels-1 downto 0);

   -- Synchronization signals to implement Synchronous MoC in SW
   signal synchronize_flag,old_GlobalSync:std_logic;
   signal toggle_bit,old_toggle_bit:integer range 0 to 1;
   -- command reg layout
   --    2     7        7      1     9 	(Sum must be less than 32, i.e., the word size of processor)
   -- <Prio><SrcPid><DestPID><Src><Size>
   -- Src - send source buffer (must match nr_of_send_buffers)
   -- Size - Size of send buffer (must match flit_id_size)
   -- <Src>+<Size> can be set dynamically, but must then always be equal to read_address_size
   --              They are currently set statically
   -- The actual numbers below will differ from configuration to configuration, based on information in the generator .xml file
   -- Example numbers are based on a default configuration with 64 processors, 128 processes, hop_count 6 bits, frame_size 64 flits
   -- Every processor has exactly two processes associated with it.
   -- Size - size of message
   constant size_counter_lsb:integer:=0; -- 0
   constant size_counter_msb:integer:=size_counter_lsb+counter_size-1; -- 0 + 9 - 1 = 8
   -- The source buffer is the msb of the read_address
   constant src_buffer_lsb:integer:=size_counter_msb+1;  -- 9
   constant src_buffer_msb:integer:=src_buffer_lsb+src_buffer_size-1; -- 9 + 5 -1 = 13
   constant d_pid_lsb: integer:= src_buffer_msb+1; -- 14
   constant d_pid_msb: integer:= d_pid_lsb+PID_size-1; -- 14 + 7 - 1 = 20
   -- SrcPid - process id of source (could be used to find out source coord if we add a process map translation)
   constant s_pid_lsb: integer:=d_pid_msb+1; -- 21
   constant s_pid_msb: integer:= s_pid_lsb+PID_size-1; -- 21 + 7 - 1 = 27
   constant priority_lsb:integer:=s_pid_msb+1; -- 28
   constant priority_msb:integer:=priority_lsb+2-1;  -- 28 + 2 - 1 = 29 -- NB! The priority bits currently sets the two MSB bits in the Hop Counter

   -- Coordinates are inferred from the process map and are no longer needed in the command_reg
   -- In a fault-tolerant solution, with dynamic re-allocation of processes, the NS,EW,and UD fields are not needed by the switches either.
   -- The destination will be found based on DestPID only
   -- UD - target coord in UD direction
   -- constant ud_lsb:integer:=size_counter_msb+1; -- 10
   -- constant ud_msb:integer:=ud_lsb+UD_Size-1; -- 10 + 2 -1 = 11
   -- EW - target coord in EW direction
   -- constant ew_lsb:integer:=ud_msb+1; -- 12
   -- constant ew_msb:integer:=ew_lsb+EW_Size-1; -- 12 + 2 -1 = 13
   -- NS - target coord in NS direction
   -- constant ns_lsb:integer:=ew_msb+1; -- 14
   -- constant ns_msb:integer:=ns_lsb+EW_Size-1; -- 12 + 2 -1 = 15
   -- DestPid - process id of destination (could replace target coord if we add a process map translation)
   -- constant d_pid_lsb: integer:=ud_msb+1; -- 16

--
--   different message types can be used to implement QoS, do maintenance and support different communication methods, etc.
--   Eg., RequestChannel, Acknowledge, Reset, Resend, etc...
--
--   constant type_lsb:integer:=priority_msb+1; -- 17
--   constant type_msb:integer:=type_lsb+Type_Size-1; -- 17+2-1 = 18

--   alias command_header is command_reg(type_msb downto src_buffer_lsb);
   alias command_src_buffer is command_reg(src_buffer_msb downto src_buffer_lsb);
   alias command_size_counter is command_reg(size_counter_msb downto size_counter_lsb);
   -- alias command_ns is command_reg(ns_msb downto ns_lsb);
   -- alias command_ew is command_reg(ew_msb downto ew_lsb);
   -- alias command_ud is command_reg(ud_msb downto ud_lsb);
   alias command_src_pid is command_reg(s_pid_msb downto s_pid_lsb);
   alias command_dest_pid is command_reg(d_pid_msb downto d_pid_lsb);
   alias command_priority is command_reg(priority_msb downto priority_lsb);

   signal debug_command_buff:std_logic_vector(src_buffer_msb downto src_buffer_lsb);
   signal debug_command_size:std_logic_vector(size_counter_msb downto size_counter_lsb);
   signal debug_command_src :std_logic_vector(s_pid_msb downto s_pid_lsb);
   signal debug_command_dest:std_logic_vector(d_pid_msb downto d_pid_lsb);
   signal debug_command_priority:std_logic_vector(priority_msb downto priority_lsb);

   -- alias command_type is command_reg(type_msb downto type_lsb);
   -- Write status signals
   alias xmit_busy is write_status_reg(0);
   alias xmit_rest is write_status_reg(31 downto 1);
   signal xmit_start:STD_LOGIC;

   -- Read status signals
   alias recv_status is read_status_reg(2*nr_of_recv_channels-1 downto 0);
   --alias recv_rest is read_status_reg(31 downto 1);

   -- signal GlobalSync:std_logic;
   -- constant node_nr:natural:=col_pos+row_pos*Nr_of_Cols+layer_pos*Nr_of_Cols*Nr_of_Rows;
   signal old_heartbeat:std_logic;

   signal clock_cycle_counter:std_logic_vector(3 downto 0);
   alias TDN is clock_cycle_counter(3 downto 2);
   signal debug_TDN:std_logic_vector(1 downto 0);

   type TDN_type is array (natural range <>) of std_logic_vector(0 to 3);
   constant TDN_slot:TDN_type(0 to 3):=(('1','0','0','0'), -- node 0 injects packets in TDN slot 0
                                        ('0','1','0','0'), -- node 1 injects packets in TDN slot 1
                                        ('0','0','0','1'), -- node 2 injects packets in TDN slot 3
                                        ('0','0','1','0')); -- node 3 injects packets in TDN slot 2
-----------------------------------------------------------------------------------
begin

   debug_command_buff<=command_src_buffer;
   debug_command_size<=command_size_counter;
   debug_command_src <=command_src_pid;
   debug_command_dest<=command_dest_pid;
   debug_command_priority<=command_priority;
   debug_TDN<=TDN;

   test_debug(7 downto 0)<=slave_writedata(7 downto 0);
   test_debug(8)<=slave_chipselect;
   test_debug(9)<=slave_write;
   test_debug(10)<=slave_read;
   test_debug(31 downto 11) <= (others=>'1');

   assert (s_pid_msb<32) report "control register larger than word size of processor" severity failure;
   -- Xilinx BRAM clocks and Resets...
   -- BRAM_Clk_R <= FSL_Clk;
   -- BRAM_Clk_W <= FSL_Clk;
   -- BRAM_Rst_R <= FSL_Rst;
   -- BRAM_Rst_W <= FSL_Rst;

------------------------------------------
   global_clock_process:
      process(Clk,reset)
      begin
         if (reset='1') then
		   global_clock<=(others=>'0');
		   -- The switch_cycle is run on another reset than the rni, so we have to compensate for the difference.
		   -- The TDN should start in the switch ctrl cycle 3 (11). Then we output the flit just in time to be latched into the Switch's Resource receive buffer
		   clock_cycle_counter<="0000"; -- (others=>'0');
		   -- clock_tick<=(others=>'0');
	     elsif rising_edge(clk) then
                  clock_cycle_counter<=clock_cycle_counter+1;
		  -- clock tick = 1us
		  -- clock_tick=99 assumes a 100 MHz clock
		  -- if (clock_tick=99) then
		  --    clock_tick<=(others=>'0');
		  --    global_clock<=global_clock+1;
		  -- else
		  --    clock_tick<=clock_tick+1;
		  -- end if;
		  -- v2.0 is counting heartbeats instead of clock ticks
		  if (GlobalSync/=old_GlobalSync) and (GlobalSync='1') then
		     global_clock<=global_clock+1;
		  end if;
	     end if;
	end process;
   TDN_mask_process:
      process(TDN,D_to_NoC)
         variable TDN_enable:std_logic;
      begin
         TDN_enable:=TDN_slot(node_nr)(ieee.std_logic_unsigned.conv_integer(TDN));
	 if (TDN_enable='1') then
            outport<=D_to_NoC;
	 else
            outport<=Void_Packet;
	 end if;
      end process;

-----------------------------------------------
 -- writing to avalon (Nios)  (i.e. avalon wants to read)

 -- Nios reads the data sent by NoC for it

 -- Steps:

 -- 1. First it reads the interrupt register and finds out which source has sent the data
 --    (The interrupt register is set in -- Interrupt reg (H'001) handler --   process(clk,reset)
 --      after the data has been fully received in the recv_FSM)
 
 -- 2. Then it reads the exact message length received from that source

 -- 3. Finally it reads the data (data reading is done directly from the memory)

   process(channel_status)
   begin
	read_status_reg<=(others=>'0');
	-- update status bits of read register to allow for polling
      for i in 0 to 2*nr_of_recv_channels-1 loop
	   if (channel_status(i)=ChannelClosed) then
		read_status_reg(i)<='1';
	   else
		read_status_reg(i)<='0';
	   end if;
	end loop;
   end process;

  read_ctrl_interface:
    process(slave_address,slave_read,slave_chipselect,
		write_status_reg,read_status_reg,
		msg_length_reg,
		s_pid,
		d_pid,		
		interrupt_reg) is
       constant zero_size:integer:=s_pid(0)'length+d_pid(0)'length+msg_length_reg(0)'length;
	 variable index:natural range 0 to 2*nr_of_recv_channels-1;
    begin
	slave_readdata<=(others=>'Z');
	-- slave_readdata<=(others=>'0'); -- Avalon bus seems to be wire_or... (its output from nios_2_noc)
	
	if slave_chipselect='1' then
	   if slave_read='1' then
	    
		  case slave_address is
		
		   when "0000000" => -- write data status register
			slave_readdata<=write_status_reg;
			-- if (row_pos=0) and (col_pos=0) and (layer_pos=0) then
			--   assert false report "reading write data status" severity note;
		      --   -- assert false report "------------------------------" severity note;
			-- end if;
		   when "0000001" => -- read status register
			-- The reading of the status bits could be made more intelligent, by using the dest pid as address and return status of only that pid...
			-- slave_readdata<=read_status_reg; 
			-- Version 2.0 is not using this register. It is using the channel as part of the address. See below
			-- if (row_pos=0) and (col_pos=0) and (layer_pos=0) then
			--    assert false report "reading read status register, v1.0 style - Should not happen in v2.0" severity note;
		      --   -- assert false report "------------------------------" severity note;
			-- end if;
			NULL; 
		   when "0000010" =>
			slave_readdata<=zeros(31 downto interrupt_reg'length) & interrupt_reg; -- sending interrupt register value to NioS
			-- This register should also be adopted to v2.0
			-- if (row_pos=0) and (col_pos=0) and (layer_pos=0) then
			--    assert false report "reading interrupt_reg, v1.0 style - Should not happen in v2.0" severity note;
		      --    -- assert false report "------------------------------" severity note;
			-- end if;
		   when "0000011" =>  -- global synchronize_flag register
			slave_readdata<=zeros(31 downto 1) & synchronize_flag;
			-- if (row_pos=0) and (col_pos=0) and (layer_pos=0) then
			--   assert false report "reading GlobalSync Flag" severity note;
		      --   -- assert false report "------------------------------" severity note;
			-- end if;
		   when "0000100" =>
                  -- 20120509 Added Hardware Node Nr for this register
                  --slave_readdata<=conv_std_logic_vector(layer_pos*Nr_of_Rows*Nr_of_Cols+row_pos*Nr_of_Cols+col_pos,32);
			slave_readdata<=conv_std_logic_vector(node_nr,32);
		   when "0000101" | "0000110" | "0000111" =>
			-- reserved for future use
			NULL;
			-- if (row_pos=0) and (col_pos=0) and (layer_pos=0) then
			--    assert false report "reading Reserved flags - Should never happen" severity note;
		      --   -- assert false report "------------------------------" severity note;
			-- end if;
		   when "0001000" | "0001001" | "0001010" | "0001011" | "0001100" | "0001101" | "0001110" | "0001111" =>
			-- reserved for future use
			NULL;
		   when "0010000" | "0010001" | "0010010" | "0010011" | "0010100" | "0010101" | "0010110" | "0010111" =>
			-- reserved for future use
			NULL;
		   when "0011000" | "0011001" | "0011010" | "0011011" | "0011100" | "0011101" | "0011110" | "0011111" =>
			-- reserved for future use
			NULL;
		   when others =>
			case slave_address(6 downto 5) is
			   when "01" => -- Message Length Registers
				index:=(1-toggle_bit)*nr_of_recv_channels+(ieee.std_logic_unsigned.conv_integer(slave_address(4 downto 0)));
				slave_readdata<=zeros(31 downto zero_size) & s_pid(index) & d_pid(index) & msg_length_reg(index); -- Sends msg_len (no of flits) of data received from Source index
			      -- if (row_pos=0) and (col_pos=0) and (layer_pos=0) then
			      --    assert false report "reading Msg flag, v2.0 style" severity note;
		            --   -- assert false report "------------------------------" severity note;
			      -- end if;
			   when "10" => -- Read Status Registers
				--index:=(1-toggle_bit)*nr_of_recv_channels+(ieee.std_logic_unsigned.conv_integer(slave_address(4 downto 0)));
				index:=(ieee.std_logic_unsigned.conv_integer(slave_address(4 downto 0)));
			      -- if (row_pos=0) and (col_pos=0) and (layer_pos=0) then
			      -- assert false report "reading read status register, v2.0 style" severity note;
				--   index:=ieee.std_logic_unsigned.conv_integer(slave_address(2 downto 0));
				--   assert index=1 report "Accessing channel 0" severity note;
				--   assert index=0 report "Accessing channel 1" severity note;
		            --   -- assert false report "------------------------------" severity note;
			      -- end if;
				index:=index+(1-toggle_bit)*nr_of_recv_channels;
				-- if (read_status_reg(index)='0') then
				--	assert (read_status_reg(index)='1') report "Panic mode - Message not received in time!" severity warning;
				--	assert (read_status_reg(index)='1') report "Channel " & debug_number(index) severity warning;
				-- end if;
				slave_readdata<=zeros(31 downto 1) & read_status_reg(index);
			   when others => 
				-- reserved for future use 
				-- index range "11" should be used together with the interrupt_register
				-- not implemented yet
				NULL;
			end case;
		end case;
	   end if;
	end if;
    end process;

-----------------------------------------------------			
-- Reading from avalon(Nios) i.e. avalon wants to write so we pick the command here

-- Picks data from avalon and writes to 'command_reg' which is a std_logic_vector(31 downto 0)

 -- This is the command which tells what to send and where to send and how much to send
 -- The actual data to be sent is written to the RAM

 write_ctrl_interface:
   process(clk,reset)
   begin
	if (reset='1') then
	   command_reg<=(others=>'0');
	   old_GlobalSync<='0';
	   synchronize_flag<='0';
	   toggle_bit<=0;
	   old_toggle_bit<=0;
	elsif rising_edge(clk) then
	   old_GlobalSync<=GlobalSync;
	   old_toggle_bit<=toggle_bit;
	   -- detect positive flank
	   if (old_GlobalSync/=GlobalSync) and (GlobalSync='1') then
	      synchronize_flag<='1';
	      toggle_bit<=1-toggle_bit;
	   end if;
	   if (slave_chipselect='1') then
	      case slave_address is
		   when "0000000" =>
			if slave_write='1' then
			   command_reg<=slave_writedata;
			   -- if (row_pos=0) and (col_pos=0) and (layer_pos=0) then
			   --   assert false report "Start Send cycle" severity note;
			   -- end if;
 			end if;
		   when "0000001" =>
		 -- A write to this register clears the interrupt flag 
	       -- This is handled by the interrupt service routine
			NULL;
		   when "0000010" =>
			NULL;
		   when "0000011" => -- Clear syncronizer
			if slave_write='1' then
			   synchronize_flag<='0';
			   -- if (row_pos=0) and (col_pos=0) and (layer_pos=0) then
			   --   assert false report "Clear Synchronize Flag" severity note;
			   -- end if;
			end if;
		   when "0000100" =>
			NULL;
			-- Reserved for writing HeartBeat Timer Values
			-- if (node_nr=0) then
			--   if (slave_write='1') then
			--	timer_value<=ieee.std_logic_unsigned.conv_integer(slave_writedata);
			--   end if;
			--else
			--   NULL;
			--end if;
		   when others => -- "0000011" - "1111111"
			NULL;
		end case;
	
	   end if;
	end if;
   end process;
   -- When receiver is writing to a channel, the nios should read from its previous received value
   -- This ensures that the nios sees the channel map as (low address=last received values, high address=current receive values)
   toggle_address<='0' when toggle_bit=1 else '1';

--------------------------------------------------------------
--   reset_process:process(FSL_Rst)
--		 begin
--		    if C_RESET_IS_HIGH = 1 THEN
--			 reset<=FSL_Rst;
--		    else
--			 reset<=not(FSL_Rst);
--		    end if;
--		end process;

   send_buffer_write <= '0';
   send_buffer_read <= '1'; -- Always read from send_buffer port
   send_buffer_writedata <= (others=>'0'); -- Set to zero to avoid unknown Quartus optimizations...

   -- send counter is one bit less than recv_counter (2 read buffers instead of 4 write)
   send_buffer_address <= Src_buffer & send_counter; -- Read on an even word (4 byte) boundary
   
   send_address<=Src_buffer & send_counter;

   -- Set xmit status signals
   -- xmit_rest and xmit_busy are alias for one bigger signal 'write_status_reg' which avalon reads
   xmit_busy<='0' when xmit_state=Idle else '1';
   xmit_rest<=(others=>'0');

   -- Only one xmit_start should be given within a frame. Otherwise the transmitter bugs out...
   xmit_start<='1' when ((slave_address="0000000") and
				 (slave_chipselect='1') and
				 (slave_write='1'))
		   else '0';
----------------------------------------------------------------------
--------------------------------------------------------------------------------------
-- This FSM controls transmission of data received from Nios (avalon) to NoC
-- It updates D_to_NoC which is an alias for outport ( the actual port)

-- 1. First it sends out a setup packet in xmit_state = Read_Input
-- 2. Then it jumps to xmit_state = Wait_for_Read_R, and waits till data is sent
-- 3. Then it jumps to xmit_state = Read_Memory
--    a. First sends out global_clock inplace of data (31:0)
--    b. Jumps to xmit_state = Wait_for_Read_R, and waits till data is sent
--    c. Then it starts sending data and jumping between Read_Memory and Wait_for_read_R till all data is send
--    d. Once all data is sent the Delay_state pushes the FSM back to idle

-- Q . What is in the first 2 packets that are sent ??
-- A. First one has 16 downto 9) First byte of global clock and (8 downto 0) msg_len
--    Second flit has the (31 downto 0) of the global clock
--    Remaining flits contain pure data

 xmit_FSM : process (Clk) is
	variable header:std_logic_vector(header_size-1 downto 0);
      variable Flit_id: Flit_id_type;
	variable src_pid: PID_type;
	variable dest_pid: PID_type;
	variable priority: HC_type;
	variable dest_row: NS_type;
	variable dest_col: EW_type;
	variable dest_layer: UD_type;

	variable mem_address:std_logic_vector(channel_size-1 downto 0);
	variable mem_address_int:integer range 0 to 2**channel_size-1;
	variable send_clock:std_logic;
	variable delay:integer range 0 to 31; -- delay for reducing injection rate in order to avoid congestion
      variable command_ns:ns_range_type;
	variable command_ew:ew_range_type;
	variable command_ud:ud_range_type;
    begin  -- process xmit_FSM
     if rising_edge(clk) then     -- Rising clock edge
      if (reset = '1') then               -- Synchronous reset (active high)
         -- CAUTION: make sure your reset polarity is consistant with the
         -- system reset polarity
         xmit_state      <= Idle;
         D_to_NoC        <= (others => '0');
	   send_counter	 <= (others => '0');
	   src_buffer	 <= (others => '0');
	      -- BRAM_R_Addr     <= (others => '0' );
	     send_clock:='0';
      else
        case xmit_state is
           -------------------------------------------	
           when Idle =>
            if (xmit_start= '1') then
              xmit_state       <= Read_Input;
            end if;
           -------------------------------------------  
           when Read_Input =>
             --if (FSL_S_Exists = '1') then
		    -- Clear unused fields
	          D_to_NoC <= (others => '0');
                -- Derive Header field
		    -- header:=command_header(header_high downto header_low);
		    -- convert absolute target address to relative address

            -- 1. Modify Header
            -- what we need to change here is that the up and lr fields would have
            -- the destination IDs(destination row and destination col and the switches
            -- would calculate the up and lr themselves
		    (command_ew,command_ns,command_ud):=process_map(ieee.std_logic_unsigned.conv_integer(command_dest_pid));
		    dest_col:= conv_std_logic_vector(command_ew,EW_type'length);
		    dest_row:= conv_std_logic_vector(command_ns,NS_type'length);
                dest_layer:= conv_std_logic_vector(command_ud,UD_type'length);
		
                Flit_id:=command_size_counter+1;
		    src_pid:=command_src_pid;
		    dest_pid:=command_dest_pid;
		    priority:=command_priority & HC_CLR(HC_CLR'high-command_priority'length downto 0);
	
		    header:=TYPE_SETUP & Flit_id & src_pid & dest_pid & priority & dest_row & dest_col & dest_layer; 

		    D_to_NoC<=(others=>'0');				
		    D_to_NoC(Header_High downto Header_low)<=header;
           
            -- 2. Sending out msg_len, source_pid, dest_pid, and the first byte of the global clock


		    -- Increment size to include global clock
		    -- global_clock is (39 downto 0)
		    D_to_NoC(global_clock_high downto global_clock_low)<=global_clock(39 downto 32);
                D_to_NoC(frame_length_high downto frame_length_low)<=(command_size_counter+1); -- command_size_counter contains the message length, we add 1 for the global clock flit
                D_to_NoC(dest_pid_high downto dest_pid_low)<= command_dest_pid; -- save dest_pid in the data part of the second setup flit
		
		    send_counter<=command_size_counter;
		    src_buffer<=command_src_buffer;

		    xmit_state <= Wait_for_Read_R;
		    send_clock:='1';

            --end if;
          -------------------------------------------------------------------
          when Read_Memory =>
              -- Store Data field
              --D_to_NoC(Data_high downto Data_low) <= BRAM_Din;
		  --mem_address:=send_address;
		  --mem_address_int:=conv_integer(mem_address);
		  header:=TYPE_DATA & Flit_id  & src_pid & dest_pid & priority & dest_row & dest_col & dest_layer; 

		  D_to_NoC<=(others=>'0');		
              D_to_NoC(Header_High downto Header_low)<=header;
		  if (send_clock='1') then
		     D_to_NoC(Data_high downto Data_low) <= global_clock(31 downto 0); -- Global clock is used for debugging purposes...
		     send_clock:='0';
		  else
		     D_to_NoC(Data_high downto Data_low) <= send_buffer_readdata; -- BRAM_Din_R; -- send_mem(mem_address_int);
		  end if;
		  send_counter <= send_counter - 1;
		  xmit_state <= Wait_for_Read_R;
          -----------------------------------------------------------------------

	    when Wait_for_Read_R =>
		if (Read_R ='1') then
		   D_to_NoC <= (others=>'0');
		   Flit_id := Flit_id -1;
	        -- Delay is not needed if we have TDN slots...
                -- Instead we wait one clock cycle to be in sync with the switch
	        delay:=0;
		if delay=0 then
		   if (send_counter=-1) then   -- i.e. all the data has been sent
		      xmit_state <= Idle;
		   else
		      xmit_state <= Read_Memory;
		   end if;
		else
		   delay:=delay-1;
		end if;
		   -- xmit_state <= Delay_State;
		   -- delay:= 11; -- delay is an integer range 0 to 127, it should be set to match the lowest link frequency to avoid congestion
		end if;
	   --------------------------------------------------------------------------
	    when Delay_state =>
		-- Wait three noc switch periods to avoid contention in the NoC
		-- thats why we come in with a delay:=11
	        -- Delay is not needed if we have TDN slots...
                -- Instead we wait one clock cycle to be in sync with the switch
	        delay:=0;
		if delay=0 then
		   if (send_counter=-1) then   -- i.e. all the data has been sent
		      xmit_state <= Idle;
		   else
		      xmit_state <= Read_Memory;
		   end if;
		else
		   delay:=delay-1;
		end if;
		
	  end case;
	end if;
    end if;
  end process xmit_FSM;
---------------------------------------------------------------------------------
   -- CAUTION:
   -- The sequence in which data are read in and written out should be
   -- consistant with the sequence they are written and read in the
   -- driver's FSL2NoC_parallel.c file

   -- FSL_S_Read  <= FSL_S_Exists   when (xmit_state=Read_Input) else '0';
   -- FSL_M_Write <= not FSL_M_Full when interrupt='1' else '0';

--   process(FSL_M_Full,interrupt)
--   begin
--	if (interrupt_request='1') then
--         FSL_M_Write <= not FSL_M_Full;
--	else
--	   FSL_M_Write <='0';
--	end if;
--   end process;

--   with interrupt(2 downto 1) select
--      msg_src_reg <= zeros(31 downto counter_size+2) & "00" & setup_reg0 when "00",
--			  zeros(31 downto counter_size+2) & "01" & setup_reg1 when "01",
--			  zeros(31 downto counter_size+2) & "10" & setup_reg2 when "10",
--			  zeros(31 downto counter_size+2) & "11" & setup_reg3 when others;
--
---------------------------------------------------------
   -- Interrupt reg (H'001) handler
   -- slave_irq <= interrupt_request;
   -- Static NoCs should only interrupt on Heartbeat...
   process(clk,reset)
   begin
      if (reset='1') then
	  old_heartbeat<='0';
      elsif rising_edge(clk) then
	 old_heartbeat<=heartbeat;
	 if (old_heartbeat='0' and heartbeat='1') then
	    slave_irq<='1';
	 else
	    slave_irq<='0';
	 end if;
      end if;
   end process;
   -- But the IRQ registers should still be set, to make sure the message_to_me flag is functioning properly...
   process(clk,reset)
	variable index:natural range 0 to nr_of_recv_channels-1;
   begin
      if (reset='1') then
	   interrupt_reg<= (others=>'0');
      elsif rising_edge(clk) then
	   if (slave_chipselect='1') then
		if (slave_write='1') then
		   if (slave_address="0000001") then
			-- reset the interrupt pointed to by the writedata
			-- Version 2.0 have hidden half of the buffers to the user.
			-- Interrupts do not use the toggle bit to determine the right register.
			index:=ieee.std_logic_unsigned.conv_integer(slave_writedata(nr_of_recv_channels_size-1 downto 0));
			interrupt_reg(index)<='0';
		   end if;
		end if;
	   end if;
	
	 -- interrupt is modified when the data is received from the NoC in recv_FSM
       -- This is triggered only when a data flit arrives

       -- It just pulls the interrupt line of Nios
	 -- depending upon the source of the data, value of msg_src_regx and interrupt_regx is set
	
       -- Avalon picks the interrupt register on request in the "read_ctrl_interface" at start 
       -- of the file

       -- Modify later: 
       -- 1. Currently the interrupt is decided from (2 downto 1) so only two bits are decoded
       --    But it has all the four bits of the source field in order to select proper channel
       -- 2. Must correct later otherwise for all others channel 3 wld be triggered

	   -- Update interrupt_reg according to interrupt from recv process	
	   if (interrupt_request='1') then
		index:=ieee.std_logic_unsigned.conv_integer(interrupt);
		interrupt_reg(index)<='1';
	   end if;
	end if;
   end process;
-----------------------------------------------------------------------
  recv_buffer_read <= '0';
  -- recv_buffer_address <= write_base_address(31 downto counter_size+4) & recv_address & "00";
  recv_buffer_address <= recv_address;
  recv_buffer_writedata <= data_reg;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- We receive from the NoC(switch) here 

 recv_FSM : process (clk,reset) is
	variable msg_size:std_logic_vector(counter_size-1 downto 0);
	variable mem_address:std_logic_vector(recv_address'length-1 downto 0);
	-- variable recv_src:src_type;
	-- new change
	-- variable source_pid, dest_pid: std_logic_vector(7 downto 0);
	-- variable busy_flag0, busy_flag1, busy_flag2, busy_flag3, RNI_busy: std_logic;
	-- variable ch0_sourceNo, ch1_sourceNo, ch2_sourceNo, ch3_sourceNo: src_type;
	-- variable interrupt0, interrupt1, interrupt2, interrupt3: std_logic;
	-- variable ch_selected: std_logic_vector(channel_size-1 downto 0);
	       -- used to store which source is using which channel as channels 
             -- are not dedicated anymore
      -- variable channel_selected:natural range 0 to 2*nr_of_recv_channels-1;
      variable channel_selected:natural range 0 to nr_of_recv_channels-1;
	variable channel_nr:natural range 0 to 2*nr_of_recv_channels-1;
	variable index:natural range 0 to nr_of_recv_channels-1;
	variable tmp_index:natural range 0 to 2*nr_of_recv_channels-1;
	variable found:std_logic;
	-- variable mem_address_int:integer range 0 to 2047;
	
  begin -- process recv_FSM
     if (reset='1') then
	  recv_state   <= Idle; -- asynchronous reset of FSM
	  recv_address <= (others=>'0');
	  -- clear channel status information
	  channel_status <= (others=>ChannelEmpty);
	  msg_length_reg <= (others=>(others=>'0'));
          s_pid          <= (others=>(others=>'0'));
          d_pid          <= (others=>(others=>'0'));
	  data_reg       <= (others=>'0');
	  -- clear interrupt flags
	  interrupt_request<='0';
          interrupt<=(others => '0');
	  interrupt_reg_fifo<=(others => '0');
     elsif rising_edge(clk) then
	  recv_buffer_write<='0';
	  -- clear interrupt register (data is only valid for one clock cycle)
          interrupt<=(others => '0');
	  -- interrupt based on input is for dynamic RNIs.But it should still still sets the Message_for_me flag...
	  -- clear channel_status on falling edge of corresponding interrupt_reg position
	  interrupt_request<='0';
	  --if (old_heartbeat='0' and heartbeat='1') then
	  --   interrupt_request<='1';
	  --else
	  --   interrupt_request<='0';
	  --end if;
	  interrupt_reg_fifo<=interrupt_reg;
	  -- clear channel_status on falling edge of corresponding interrupt_reg position
	  for i in 0 to nr_of_recv_channels-1 loop
	     if (interrupt_reg(i)='0' and interrupt_reg_fifo(i)='1') then
		  channel_status(i)<=ChannelEmpty;
	     end if;
          end loop;
  	  -- interrupt for static RNIs should happen once every heartbeat, and then the channel status should be cleared...
	  -- SW Bugifx
	  -- Add always clear in case of unread channel status on GlobalSync
	  -- In the clock cycle right after global sync, reset the channel status to unread
	  -- No messages should have had time to come before that time...
	  if (toggle_bit/=old_toggle_bit) then
		-- channel_status(channel_selected)<=ChannelOpen;
		for i in 0 to nr_of_recv_channels-1 loop
		   tmp_index:=toggle_bit*nr_of_recv_channels+i;
		   channel_status(tmp_index)<=ChannelEmpty;
		end loop;
	  end if;
        case recv_state is
		when Idle =>
       ------------------------------------------------------------------------------
	 -- check for incoming packets
       ------------------------------------------------------------------------------
			if Write_R='1' then -- Check if NoC is sending something to RNI

				-- First Flit ( Setup Flit): Has one byte of global clock, srouce pid id, dest pid is, and the msg_len
				-- Second Flit (Data_type) : Has the 31 downto 0 of the global clock
				-- Remaining flits (Data_type) : Carry the data
				-- So for 15 data flits, we actually receive 17 flits and the code starts running counter from 16 till 0 

				-- Values of recv_counterx are set as per the received counter value in
				-- "if (D_from_NoC(Type_high downto Type_low)=TYPE_SETUP)" block
				-- and these values are decremented after every flit arrival
				-- After the last flit arrives the counter has moved to '0' so the interrupt line is pulled for the CPu
				-- Note that for 15 data flit msg the actual no of flits received is 17 
				-- ( two header flits at start carrying the global clk and the msg_len)
				 
				-- 1. Load proper 'mem_address' depending on src_pid
				--    Currently, a source can only transmit one frame at a time. Therefore, it can only transmit to a single destination at a time.
				--    Since there can only be one source pid, we use that information to determine the target channel.
				--    If multiple channels can be open simultaneously from the same source (i.e., multiple destinations), we have to search for
				--    destination pid as well.

				--    New for version 2.0 - channels are mapped statically using a constant in noc_3d_sw_configuration_package

				--   found:='0';
				--   for i in 0 to nr_of_recv_channels-1 loop
				--	if (found='0') then
				--	   case channel_status(i) is
				--		when ChannelOpen =>
				--	         if (recv_src_pid=s_pid(i)) then
				--		      channel_selected:=i;
				--		      found:='1';
				--	         end if;
				--		when ChannelEmpty =>
				--		   channel_selected:=i; -- store last free index. Nr of channels is statically allocated according to SDF graph so there should always be one available
				--		when others=> -- ignore closed channels (not yet read by the processor)
				--				  -- Concern: What happens if there are too many unread messages by the processor???? 
				--				  -- Solution: Needs to be taken care of at system level, during scheduling of processes
				--		   NULL;
				--	   end case;
				--	end if;
				-- end loop;

				-- New for version 2.0 - Use a toggle bit to implement alternative reading/writing of recv_channel buffers every other cycle
				--                       One buffer is receiving while the other is used in the processes
				--
				--                       Important Note - if flits are arriving too late compared to the GlobalSync, they are stored in the
                        --                       wrong buffer since toggle_bit will have had time to toggle (but then the SW processes should generate 
				--				 an exception, since the recv message flag of that channel is not set).
				-- channel_selected:=toggle_bit*nr_of_recv_channels/2+recv_channel_map(node_nr)(ieee.std_logic_unsigned.conv_integer(recv_src_pid));
				--
				-- A single source can only have one send channel open at a time...
				-- ...but there can be many sources sending simultaneously from different nodes.
				--
				channel_selected:=recv_channel_map(node_nr)(ieee.std_logic_unsigned.conv_integer(recv_dest_pid))(ieee.std_logic_unsigned.conv_integer(recv_src_pid));
				channel_nr:=toggle_bit*nr_of_recv_channels+channel_selected;
				   --    Here we set the address (depending on source) to which one should write in the 
				   --    recv_buffer: rni_memory 
				   --    Depending on source ID: Address is allocated channel followed by the 'msg_len' sent 
				   --    from the packet sender

				   -- mem_address:=conv_std_logic_vector(channel_selected,nr_of_recv_channels_size) & recv_counter(channel_selected);
				   -- rewrite indirect addressing (which infers a memory) to a synthesizable version (which infers an array of registers)


				--  for i in 0 to nr_of_recv_channels-1 loop
				--	if (channel_selected=i) then
				--	   mem_address:=conv_std_logic_vector(i,nr_of_recv_channels_size) & recv_counter(i);
				--	end if;
				--   end loop;
				for i in 0 to nr_of_recv_channels-1 loop
				   if (channel_selected=i) then
				      mem_address:=conv_std_logic_vector(i,nr_of_recv_channels_size) & recv_counter(i);
				   end if;
				end loop;

-- Concern: how are addresses treated by Avalon-standard? Byte addressing or word addressing?
-- Check during debug. Resolved status: Not yet...
-- Resolved: Addresses are byte-addressed on the Avalon-bus from the Nios II point of view.
				   recv_address<=mem_address;
				   -- recv_address is connected to "recv_buffer_address" concurrently 
				   -- which is used in "recv_buffer:rni_memory" in nios_2_noc.vhd
				
				   if (D_from_NoC(Type_high downto Type_low)=TYPE_SETUP) then
						-- Setup Flit

						-- Load proper
						-- 1. recv_state: Setup
						-- 2. Pick data: 
						--     i)   data_reg: First byte of global clk
						--     ii)  recv_counter(x): Set the proper counter (with msg_len) for proper source
						--     iii) d_pid_reg(x): Store the dest id for SW process
						--     iv)  s_pid_reg(x): Store the source id SW process
						--     v)   msg_len(x): Store the frame length for SW process

						-- 3. recv_address: channel followed by msg_len for the recv_buffer in rni
						
					   recv_state <= Setup_Data;
						-- i. store first byte of global clock
					   data_reg<=zeros(31 downto global_clock_high+1) & D_from_NoC(global_clock_high downto global_clock_low); -- 6+counter_size downto (counter_size-1));   
						
						-- ii. load counter value in to the proper counter wrt the recv_src
						--    Counter is decremented after every flit reception
					   -- recv_counter(channel_selected)<=D_from_NoC(frame_length_high downto frame_length_low);
					   for i in 0 to nr_of_recv_channels-1 loop
						if (i=channel_selected) then
						   recv_counter(i)<=D_from_NoC(frame_length_high downto frame_length_low);
						end if;
					   end loop;

						-- iii. Set proper dest id
					   -- d_pid(channel_nr)<=D_from_NoC(dest_pid_high downto dest_pid_low);

						-- iv. set proper source id
					   -- s_pid(channel_nr)<=recv_src_pid; -- The source pid is stored in flit header

						-- v. store msg length
					   -- msg_length_reg(channel_nr)<=D_from_NoC(frame_length_high downto frame_length_low);
					   -- rewrite to infer registers
					   for i in 0 to 2*nr_of_recv_channels-1 loop
						if (i=channel_nr) then
						   d_pid(i)<=D_from_NoC(dest_pid_high downto dest_pid_low);
						   s_pid(i)<=recv_src_pid; -- The source pid is stored in flit header
						   msg_length_reg(i)<=D_from_NoC(frame_length_high downto frame_length_low);
						end if;
					   end loop;

						-- need to double check for memory contention...
					   recv_address<= mem_address(mem_address'high downto flit_id_size) & D_from_NoC(Flit_id_high downto Flit_id_low);
				
				   else
						-- Data flit
						-- the recv_address has already been set under "if Write_R='1'" before we move in to this branch

						-- Load proper
						--1. recv_state: Data
						--2. Pick data: data_reg: Its data this time 
						-- ( very first data flit has the global clock, followed by flits with actual data)		

					  recv_state <= Write_data;
					  data_reg<=D_from_NoC(31 downto 0);
				   end if;
			end if;  -- end if Write_R='1' then

	   when Setup_Data =>
	-------------------------------------------------------------------------
	   -- 1. Activates the recv_buffer_write
	   -- 2. Saves the msg_len value in the setup_regx to send it to the CPU at the time of interrupt   
		-- Storing of specific data has been moved to previous cycle
		recv_buffer_write <= '1'; -- store first byte of global clock
		recv_state <= Wait_for_Write_R;
		-- rewrite to infer registers instead of memory
		-- channel_status(channel_selected)<=ChannelOpen;
		for i in 0 to 2*nr_of_recv_channels-1 loop
		   if (i=channel_nr) then
			channel_status(i)<=ChannelOpen;
		   end if;
		end loop;
        when Write_Data =>
	---------------------------------------------------------------------------
	-- 1. Activates the recv_buffer_write
	-- 2. If all flits have been received, pull the interrupt line
		
		 recv_buffer_write <= '1';
		 if (mem_address(counter_size-1 downto 0)=0) then -- which means that all the flits of the packet have been received
		     -- pull interrupt line
			interrupt<=conv_std_logic_vector(channel_selected,interrupt'length);
		      interrupt_request<='1';
			-- rewrite to infer registers instead of memory
		      -- channel_status(channel_nr)<=ChannelClosed;
			for i in 0 to 2*nr_of_recv_channels-1 loop
			   if (i=channel_nr) then
				channel_status(i)<=ChannelClosed;
			   end if;
			end loop;
		 end if;
		 recv_state <= Wait_for_Write_R;
   	    when Wait_for_Write_R =>
		------------------------------------------------------------
		-- 1.Simply decrements the msg_len once it has received a flit
		if (Write_R ='0') then  
		   -- Modify later: Only checking the last two bits (source ID is 4 bit for 16 sources)		
		   -- new change: recv_src below shd be replaced by selected channel number
		   -- rewrite to infer registers instead of memory
		   -- recv_counter(channel_selected)<=recv_counter(channel_selected)-1;
		   for i in 0 to nr_of_recv_channels-1 loop
			if (i=channel_selected) then
			   recv_counter(i)<=recv_counter(i)-1;
			end if;
		   end loop;
		   recv_state <= Idle;
		end if;
        end case;
      end if;
   end process recv_FSM;

----------------------------------------------------------------
--   process(FSL_CLK)
--	variable mem_address:std_logic_vector(11 downto 0);
--	variable mem_address_int:integer range 0 to 2047;
--   begin
--      if (FSL_Clk'event and FSL_Clk='1') then
--	   if (BRAM_EN='1' and BRAM_WEN="0000" and BRAM_Addr(31-14)='0')  then
--		mem_address:=BRAM_Addr(31-13 to 31-2);
--		mem_address_int:=conv_integer(mem_address);
--		BRAM_Dout<=recv_mem(mem_address_int);
--	   end if;
--	end if;
--   end process;

end architecture Implementation;
