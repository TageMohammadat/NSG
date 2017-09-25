-- DO NOT EDIT BELOW THIS LINE --------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library proc_common_v3_00_a;
use proc_common_v3_00_a.proc_common_pkg.all;

-- DO NOT EDIT ABOVE THIS LINE --------------------

--USER libraries added here
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

library kth_axi_rni_static_v1_00_a;
use kth_axi_rni_static_v1_00_a.all;
use kth_axi_rni_static_v1_00_a.NoC_3D_parallel_package.all;
use kth_axi_rni_static_v1_00_a.NoC_3D_SW_configuration_package.all;


ENTITY kth_generic_rni_static IS
      generic
	(
	    -- ADD USER GENERICS BELOW THIS LINE ---------------
	    --USER generics added here
	    rni_pos : integer := 0;
            use_64bit : integer := 0;
	    -- ADD USER GENERICS ABOVE THIS LINE ---------------
	
	    -- DO NOT EDIT BELOW THIS LINE ---------------------
	    -- Bus protocol parameters, do not add to or delete
	    C_NUM_REG                      : integer              := 1;
	    C_SLV_DWIDTH                   : integer              := 32
	    -- DO NOT EDIT ABOVE THIS LINE ---------------------
	);
   PORT(
	    -- ADD USER PORTS BELOW THIS LINE ------------------
	    --USER ports added here
	    -- NoC Switch Ports
	    TO_NOC:out NoC_packet; -- Out for switch is in for rni
	    FROM_NOC:in NoC_packet; -- In for switch is out for rni
	    -- GlobalSync port, used to implement Synchronous MoC in SW
	    Sync:IN std_logic_vector(1 downto 0);
	    HeartBeat:IN std_logic;
	    NoC_Irq:OUT STD_LOGIC;
	    dap_address:IN std_logic_Vector(14 downto 0);
	    dap_writedata:IN std_logic_vector(63 downto 0);
	    dap_readdata:OUT std_logic_vector(63 downto 0);
	    dap_read:IN std_logic;
	    dap_write:IN std_logic;
	    dap_byteenable:IN std_logic_vector(7 downto 0);
	    -- Test_Debug:OUT std_logic_vector(31 downto 0);
	    -- ADD USER PORTS ABOVE THIS LINE ------------------
	
	    -- DO NOT EDIT BELOW THIS LINE ---------------------
	    -- Bus protocol ports, do not add to or delete
	    Bus2IP_Clk                     : in  std_logic;
	    Bus2IP_Resetn                  : in  std_logic;
	    Bus2IP_Addr                    : in  std_logic_vector(0 to 31);
	    Bus2IP_CS                      : in  std_logic_vector(0 to 0);
	    Bus2IP_Data                    : in  std_logic_vector(C_SLV_DWIDTH-1 downto 0);
	    Bus2IP_BE                      : in  std_logic_vector(C_SLV_DWIDTH/8-1 downto 0);
	    Bus2IP_RdCE                    : in  std_logic_vector(C_NUM_REG-1 downto 0);
	    Bus2IP_WrCE                    : in  std_logic_vector(C_NUM_REG-1 downto 0);
	    IP2Bus_Data                    : out std_logic_vector(C_SLV_DWIDTH-1 downto 0);
	    IP2Bus_RdAck                   : out std_logic;
	    IP2Bus_WrAck                   : out std_logic;
	    IP2Bus_Error                   : out std_logic
	    -- DO NOT EDIT ABOVE THIS LINE ---------------------
   );

  attribute MAX_FANOUT : string;
  attribute SIGIS : string;

  attribute SIGIS of Bus2IP_Clk    : signal is "CLK";
  attribute SIGIS of Bus2IP_Resetn : signal is "RST";

END kth_generic_rni_static;

ARCHITECTURE structure OF kth_generic_rni_static IS

   -- Mapping Avalon Slave signals to axi dittos
   signal slave_reset:STD_LOGIC;
   alias slave_address:STD_LOGIC_VECTOR(16 DOWNTO 0) is Bus2IP_Addr(29-16 to 29); -- Bus2IP_Addr(31-14 to 31)
   --signal slave_address:STD_LOGIC_VECTOR(14 DOWNTO 0);
   alias slave_byteenable:STD_LOGIC_VECTOR(3 DOWNTO 0) is Bus2IP_BE(3 downto 0);
   alias slave_chipselect:STD_LOGIC is Bus2IP_CS(0);
   alias slave_clk:STD_LOGIC is Bus2IP_Clk;
   alias slave_read:STD_LOGIC is Bus2IP_RdCE(0);
   alias slave_write:STD_LOGIC is Bus2IP_WrCE(0);
   alias slave_writedata:STD_LOGIC_VECTOR(31 DOWNTO 0) is Bus2IP_Data(31 downto 0);
   alias slave_readdata:STD_LOGIC_VECTOR(31 DOWNTO 0) is IP2Bus_Data(31 downto 0);
   alias slave_be:STD_LOGIC_VECTOR(3 downto 0) is Bus2IP_BE;
   alias slave_irq:STD_LOGIC is noc_irq;
   alias read_R:STD_LOGIC is Sync(0);
   alias write_R:STD_LOGIC is Sync(1);

   -- component rni_memory
   --     generic (width:integer);
   --     port (
   --            -- inputs:
   --               address1 : IN STD_LOGIC_VECTOR (width-1 DOWNTO 0);
   --               address2 : IN STD_LOGIC_VECTOR (width-1 DOWNTO 0);
   --               byteenable1 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
   --               byteenable2 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
   --               chipselect1 : IN STD_LOGIC;
   --               chipselect2 : IN STD_LOGIC;
   --               clk : IN STD_LOGIC;
   --               signal clken1 : IN STD_LOGIC;
   --               signal clken2 : IN STD_LOGIC;
   --               write1 : IN STD_LOGIC;
   --               write2 : IN STD_LOGIC;
   --               writedata1 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
   --               writedata2 : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
   -- 
   --            -- outputs:
   --               readdata1 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
   --               readdata2 : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
   --            );
   -- end component;
   component generic_nios_to_3D_noc
      generic
	(
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
		send_buffer_address:OUT STD_LOGIC_VECTOR(nr_of_send_channels_size+channel_size-1 DOWNTO 0); -- two channels used on the send side...
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
		slave_irq:OUT STD_LOGIC; -- Avalon Interrupt Request
		slave_readdata:OUT STD_LOGIC_VECTOR(31 DOWNTO 0); -- Avalon Master Data In
		slave_address:IN STD_LOGIC_VECTOR(6 DOWNTO 0); -- Avalon Master Address
		slave_read:IN STD_LOGIC; -- Avalon Master Read assert
		slave_chipselect:IN STD_LOGIC; 
		slave_write:IN STD_LOGIC; -- Avalon Master Write assert
		slave_writedata:IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Avalon Master Data Out

		-- DO NOT EDIT ABOVE THIS LINE ---------------------
	      	-- GlobalSync port, used to implement Synchronous MoC in SW
	      	GlobalSync:IN std_logic;
		Toggle_address:OUT std_logic;
		Test_debug:OUT std_logic_vector(31 downto 0);
		-- what is in for the NoC is out for the nios_to_3D_NoC...
		inport:in NoC_packet;
		outport:out NoC_packet;
		read_R:in std_logic;
		write_R:in std_logic
	);

   end component;
   constant channel_size:integer:=flit_id_size;
   -- constant nr_of_recv_channels_size:integer:=recv_channel_size_map(col_pos+row_pos*Nr_of_Cols+layer_pos*Nr_of_Cols*Nr_of_Rows); -- recv_channel_size_map(layer_pos)(row_pos)(col_pos);
   -- constant nr_of_send_channels_size:integer:=send_channel_size_map(col_pos+row_pos*Nr_of_Cols+layer_pos*Nr_of_Cols*Nr_of_Rows);
   constant nr_of_recv_channels_size:integer:=recv_channel_size_map(rni_pos); -- recv_channel_size_map(layer_pos)(row_pos)(col_pos);
   constant nr_of_send_channels_size:integer:=send_channel_size_map(rni_pos);
   -- One extra bit needed to be able to toggle addresses
   constant recv_width:integer:=1+nr_of_recv_channels_size+channel_size;
   constant send_width:integer:=nr_of_send_channels_size+channel_size;

   signal test_debug_rni:std_logic_vector(31 downto 0);

   -- alias internal_address is slave_address(address_width_map(col_pos+row_pos*Nr_of_Cols+layer_pos*Nr_of_Cols*Nr_of_Rows)-1 DOWNTO 0);
   -- One extra bit needed to be able to toggle addresses
   -- signal internal_address,xor_map:std_logic_vector(address_width_map(col_pos+row_pos*Nr_of_Cols+layer_pos*Nr_of_Cols*Nr_of_Rows) DOWNTO 0);

   signal Clk,reset:STD_LOGIC;
   signal send_buffer_read1:STD_LOGIC;
   signal send_buffer_read2:STD_LOGIC;
   signal send_buffer_write1:STD_LOGIC;
   signal send_buffer_write2:STD_LOGIC;
   signal send_buffer_address1:STD_LOGIC_VECTOR(send_width-1 DOWNTO 0) :=(others=>'0') ;
   signal send_buffer_address2:STD_LOGIC_VECTOR(send_width-1 DOWNTO 0) :=(others=>'0') ;
   signal send_buffer_chipselect1:STD_LOGIC;
   signal send_buffer_chipselect2:STD_LOGIC;
   signal send_buffer_byteenable1:STD_LOGIC_VECTOR(7 downto 0):=(others=>'0') ;
   signal send_buffer_byteenable2:STD_LOGIC_VECTOR(3 downto 0):=(others=>'0') ;
   signal send_buffer_readdata1:STD_LOGIC_VECTOR(63 DOWNTO 0):=(others=>'0') ;
   signal send_buffer_readdata2:STD_LOGIC_VECTOR(31 DOWNTO 0):=(others=>'0') ;
   signal send_buffer_clken:STD_LOGIC;
   signal send_buffer_writedata1:STD_LOGIC_VECTOR(63 DOWNTO 0):=(others=>'0') ;
   signal send_buffer_writedata2:STD_LOGIC_VECTOR(31 DOWNTO 0):=(others=>'0') ;
   signal recv_buffer_read1:STD_LOGIC;
   signal recv_buffer_read2:STD_LOGIC;
   signal recv_buffer_write1:STD_LOGIC;
   signal recv_buffer_write2:STD_LOGIC;
   signal recv_buffer_address1:STD_LOGIC_VECTOR(recv_width-1 DOWNTO 0):=(others=>'0') ;
   signal recv_buffer_address2:STD_LOGIC_VECTOR(recv_width-1 DOWNTO 0):=(others=>'0') ;
   -- connection to generic_nios is 1 bit less
   signal internal_recv_buffer_address2:STD_LOGIC_VECTOR(recv_width-2 DOWNTO 0):=(others=>'0') ;
   signal recv_buffer_chipselect1:STD_LOGIC;
   signal recv_buffer_chipselect2:STD_LOGIC;
   signal recv_buffer_byteenable1:STD_LOGIC_VECTOR(7 downto 0):=(others=>'0') ;
   signal recv_buffer_byteenable2:STD_LOGIC_VECTOR(3 downto 0):=(others=>'0') ;
   signal recv_buffer_readdata1:STD_LOGIC_VECTOR(63 DOWNTO 0):=(others=>'0') ;
   signal recv_buffer_readdata2:STD_LOGIC_VECTOR(31 DOWNTO 0):=(others=>'0') ;
   signal recv_buffer_clken:STD_LOGIC;
   signal recv_buffer_writedata1:STD_LOGIC_VECTOR(63 DOWNTO 0):=(others=>'0') ;
   signal recv_buffer_writedata2:STD_LOGIC_VECTOR(31 DOWNTO 0):=(others=>'0') ;
   signal rni_chipselect:STD_LOGIC;
   signal rni_readdata,rni_readdata_delayed:STD_LOGIC_VECTOR(31 DOWNTO 0):=(others=>'0');
   signal rni_writedata:STD_LOGIC_VECTOR(31 DOWNTO 0):=(others=>'0');
   signal rni_address:STD_LOGIC_VECTOR(6 DOWNTO 0):=(others=>'0') ;
   signal rni_write:STD_LOGIC;
   signal rni_read:STD_LOGIC;
   signal slave_clken:STD_LOGIC;
   signal old_slave_read:STD_LOGIC;

   signal toggle_address:STD_LOGIC;
   signal xor_map:std_logic_vector(recv_width-1 downto 0);
   signal internal_address:std_logic_vector(14 downto 0);

   -- Mem map
   -- H'000-H'007 Control regs
   -- H'400-H'7FF Read buffer
   -- H'800-H'FFF Write buffer
   constant zeroes:std_logic_vector(31 downto 0):=(others=>'0');
   -- work around to fix that Quartus cannot have constant arrays in generic map
   -- signal test_signal:std_logic_vector(internal_address'high downto 3);
   -- signal test_boolean:boolean;

   -- test signals to check messages to/from noc
 --  alias test_send_valid is TO_NOC(valid_pos);
 --  alias test_send_dest_col is TO_NOC(EW_high downto EW_low);
 --  alias test_send_dest_row is TO_NOC(NS_high downto NS_low);
 --  alias test_send_dest_layer is TO_NOC(UD_high downto UD_low);
 --  alias test_send_source_pid is TO_NOC(src_pid_high downto src_pid_low);
 --  alias test_send_flit_id is TO_NOC(flit_id_high downto flit_id_low);
 --  alias test_send_hc_count is TO_NOC(HC_high downto hc_low);
 --  alias test_send_data is TO_NOC(data_high downto 0);
 --  alias test_recv_valid is FROM_NOC(valid_pos);
 --  alias test_recv_dest_col is FROM_NOC(EW_high downto EW_low);
 --  alias test_recv_dest_row is FROM_NOC(NS_high downto NS_low);
 --  alias test_recv_dest_layer is FROM_NOC(UD_high downto UD_low);
 --  alias test_recv_source_pid is FROM_NOC(src_pid_high downto src_pid_low);
 --  alias test_recv_flit_id is FROM_NOC(flit_id_high downto flit_id_low);
 --  alias test_recv_hc_count is FROM_NOC(HC_high downto hc_low);
--   alias test_recv_data is FROM_NOC(data_high downto 0);

   signal internal_writedata:std_logic_vector(63 downto 0);
   signal internal_readdata:std_logic_vector(63 downto 0);
   signal internal_be:std_logic_Vector(7 downto 0);
   signal dap_select,dap_rni_select,dap_recv_buffer_select,dap_send_buffer_select:std_logic;
   constant ZEROS:std_logic_Vector(31 downto 0):=(others=>'0');

BEGIN

   slave_reset<=not(Bus2IP_Resetn);
  ------------------------------------------
  -- Example code to drive IP to Bus signals
  ------------------------------------------
  --  IP2Bus_Data  <= slv_ip2bus_data when slv_read_ack = '1' else
  --                  (others => '0');
  -- IP2Bus_Data  <= slave_readdata; -- (slave_readdata is an alias of the IP2Bus_Data)

  --alias slave_address:STD_LOGIC_VECTOR(14 DOWNTO 0) is Bus2IP_Addr(29-14 to 29); -- Bus2IP_Addr(31-14 to 31)
  -- remap reverse address bits to MSB left LSB right to match IP address bit order
  -- process(Bus2IP_Addr)
  -- begin
  --  for i in 0 to 14 loop
  --     slave_address(i)<=Bus2IP_Addr(i+2);
  --   end loop;
  --end process;

  IP2Bus_WrAck <= slave_write;
  -- Delay RdAck one clock cycle due to pipelined memory...
  process(clk,reset)
  begin
     if (reset='1') then
         old_slave_read<='0';
     elsif (rising_edge(clk)) then
        old_slave_read<=slave_read;
     end if;
  end process;
  IP2Bus_RdAck <= slave_read AND old_slave_read;
  IP2Bus_Error <= '0';
  ------------------------------------------

   -- internal_address<=slave_address(address_width_map(col_pos+row_pos*Nr_of_Cols+layer_pos*Nr_of_Cols*Nr_of_Rows)-1 DOWNTO 0);
   internal_address<=dap_address when (dap_select='1') else slave_address(14 downto 0);
   internal_writedata<=dap_writedata when (dap_select='1') else ZEROS & slave_writedata(31 downto 0) when (internal_address(0)='0') else slave_writedata(31 downto 0) & ZEROS;
   internal_be<=dap_byteenable when (dap_select='1') else "0000" & slave_be when internal_address(0)='0' else
				slave_be & "0000";
   -- Readdata from memory is streaming, and output is delayed one clock cycle due to output buffer
   dap_readdata<=ZEROS(31 downto 0) & rni_readdata_delayed when (dap_rni_select='1') else
   		      send_buffer_readdata1 when (dap_send_buffer_select='1') else
   		      recv_buffer_readdata1 when (dap_recv_buffer_select='1') else 
   		      (others=>'0');
   -- dap_readdata<=internal_readdata;
   dap_select<=dap_read OR dap_write;
   process(clk,reset)
   begin
      if (reset='1') then
          dap_rni_select<='0';
          dap_recv_buffer_select<='0';
          dap_send_buffer_select<='0';
	  rni_readdata_delayed<=(others=>'0');
      elsif (rising_edge(clk)) then
          dap_rni_select<=rni_chipselect;
          dap_recv_buffer_select<=recv_buffer_chipselect1;
          dap_send_buffer_select<=send_buffer_chipselect1;
	  rni_readdata_delayed<=rni_readdata;
      end if;
   end process;
  
   recv_buffer_writedata1<=internal_writedata;
   send_buffer_writedata1<=internal_writedata;
   Clk<=slave_clk;
   Reset<=slave_reset;
   slave_clken<='1';
   send_buffer_clken<='1';
   recv_buffer_clken<='1';
   process(internal_address,slave_chipselect,dap_select)
   begin
        recv_buffer_chipselect1<='0';
	send_buffer_chipselect1<='0';
	rni_chipselect<='0';
	if ((slave_chipselect='1') OR (dap_select='1')) then
	   -- if (internal_address(internal_address'high)='1') then
	   if (internal_address(internal_address'high)='1') then
		recv_buffer_chipselect1<='1';
		-- if (row_pos=0) and (col_pos=0) and (layer_pos=0) then
		--   -- assert false report "Reading from Recv Buffer Memory" severity note;
		--   -- assert false report "------------------------------" severity note;
		-- end if;
	   end if;
	   -- if (internal_address(internal_address'high downto internal_address'high-1)="01") then
	   if (internal_address(internal_address'high downto internal_address'high-1)="01") then
		send_buffer_chipselect1<='1';
		-- if (row_pos=0) and (col_pos=0) and (layer_pos=0) then
		--   -- assert false report "Writing to Send Buffer Memory" severity note;
		--   -- assert false report "------------------------------" severity note;
		--end if;
	   end if;
	   -- if (internal_address(internal_address'high downto 7)=zeroes(internal_address'high downto 7)) then
	   if (internal_address(internal_address'high downto internal_address'high-1)="00") then
		rni_chipselect<='1';
	   end if;
	end if;
   end process;
   -- H'800-H'FFF -- send_buffer
   -- recv_buffer_chipselect1<='1' when (slave_chipselect='1') and (internal_address(internal_address'high)='1') else '0';
   recv_buffer_chipselect2<='1'; -- this buffer is always on seen from the RNI -- recv_buffer_write2 or recv_buffer_read2;
   recv_buffer_read1<=dap_read when ((dap_select='1') and (recv_buffer_chipselect1='1')) else slave_read when (recv_buffer_chipselect1='1') else '0';
   recv_buffer_write1<=dap_write when ((dap_select='1') and (recv_buffer_chipselect1='1')) else slave_write when (recv_buffer_chipselect1='1') else '0';

   -- recv_buffer_read2 is set inside the rni_controller
   -- recv_buffer_write2 is set inside the rni_controller
   recv_buffer_byteenable1<="00000000" when recv_buffer_chipselect1='0' else internal_be;
   recv_buffer_byteenable2<="0000" when recv_buffer_chipselect2='0' else "1111";
   -- H'400-H'7FF -- recv_buffer
   -- send_buffer_chipselect1<='1' when (slave_chipselect='1') and 
   --						 (internal_address(internal_address'high downto internal_address'high-1)="01") else '0';
   send_buffer_chipselect2<='1'; -- The send buffer is always on from the RNI point of view...
   send_buffer_read2<='1'; -- rni always reads the send_buffer...
   -- send_buffer_write2<='0'; -- this signal is set inside the rni_controller
   send_buffer_read1<=dap_read when ((dap_select='1') and (send_buffer_chipselect1='1')) else slave_read when (send_buffer_chipselect1='1') else '0';
   send_buffer_write1<=dap_write when ((dap_select='1') and (send_buffer_chipselect1='1')) else slave_write when (send_buffer_chipselect1='1') else '0';
   send_buffer_byteenable1<="00000000" when ((dap_select='0') AND (send_buffer_chipselect1='0')) else internal_be;
   send_buffer_byteenable2<="0000" when send_buffer_chipselect2='0' else "1111";

   -- H'000-00F
   -- rni_chipselect<='1' when ((slave_chipselect='1') and 
   --				     (internal_address(internal_address'high downto 5)=zeroes(internal_address'high downto 5))) else '0';
   internal_readdata<=ZEROS(31 downto 0) & rni_readdata when (rni_chipselect='1') else
   		      send_buffer_readdata1 when (send_buffer_chipselect1='1') else
   		      recv_buffer_readdata1 when (recv_buffer_chipselect1='1') else 
   		      (others=>'0');
   G1:if (use_64bit=1) GENERATE 
	output:slave_readdata<=rni_readdata when (rni_chipselect='1') else
   		      send_buffer_readdata1(31 downto 0)  when ((send_buffer_chipselect1='1') and (internal_address(0)='0')) else
   		      send_buffer_readdata1(63 downto 32) when ((send_buffer_chipselect1='1') and (internal_address(0)='1')) else
   		      recv_buffer_readdata1(31 downto 0)  when ((recv_buffer_chipselect1='1') and (internal_address(0)='0')) else
   		      recv_buffer_readdata1(63 downto 32) when ((recv_buffer_chipselect1='1') and (internal_address(0)='1')) else
   		      (others=>'0');
	send_buffer:entity kth_axi_rni_static_v1_00_a.rni_memory_64_32
		  generic map (width => send_width)
	        port map(
        	      -- inputs:
                	 address1 => send_buffer_address1(send_width-1 downto 1),
	                 address2 => send_buffer_address2,
        	         byteenable1 => send_buffer_byteenable1,
                	 byteenable2 => send_buffer_byteenable2,
	                 chipselect1 => send_buffer_chipselect1,
        	         chipselect2 => send_buffer_chipselect2,
                	 clk => slave_clk,
	                 clken1 => slave_clken,
        	         clken2 => send_buffer_clken,
                	 write1 => send_buffer_write1,
	                 write2 => send_buffer_write2,
        	         writedata1 => send_buffer_writedata1,
                	 writedata2 => send_buffer_writedata2,
	              -- outputs:
        	         readdata1 => send_buffer_readdata1,
                	 readdata2 => send_buffer_readdata2
		);
	recv_buffer:entity kth_axi_rni_static_v1_00_a.rni_memory_64_32
		  generic map (width => recv_width)
	        port map(
        	      -- inputs:
        	         address1 => recv_buffer_address1(recv_width-1 downto 1), 
        	         address2 => recv_buffer_address2,
        	         byteenable1 => recv_buffer_byteenable1,
        	         byteenable2 => recv_buffer_byteenable2,
        	         chipselect1 => recv_buffer_chipselect1,
        	         chipselect2 => recv_buffer_chipselect2,
        	         clk => slave_clk,
        	         clken1 => slave_clken,
        	         clken2 => recv_buffer_clken,
        	         write1 => recv_buffer_write1,
        	         write2 => recv_buffer_write2,
        	         writedata1 => recv_buffer_writedata1,
        	         writedata2 => recv_buffer_writedata2,
	              -- outputs:
        	         readdata1 => recv_buffer_readdata1,
        	         readdata2 => recv_buffer_readdata2
              );
   END GENERATE; -- G1
   G0:if (use_64bit=0) GENERATE
	output:slave_readdata<=rni_readdata when (rni_chipselect='1') else
   		      send_buffer_readdata1(31 downto 0)  when (send_buffer_chipselect1='1') else
   		      recv_buffer_readdata1(31 downto 0)  when (recv_buffer_chipselect1='1') else
   		      (others=>'0');
	send_buffer:entity kth_axi_rni_static_v1_00_a.rni_memory
		  generic map (width => send_width)
	        port map(
        	      -- inputs:
                	 address1 => send_buffer_address1,
	                 address2 => send_buffer_address2,
        	         byteenable1 => send_buffer_byteenable1(3 downto 0),
                	 byteenable2 => send_buffer_byteenable2,
	                 chipselect1 => send_buffer_chipselect1,
        	         chipselect2 => send_buffer_chipselect2,
                	 clk => slave_clk,
	                 clken1 => slave_clken,
        	         clken2 => send_buffer_clken,
                	 write1 => send_buffer_write1,
	                 write2 => send_buffer_write2,
        	         writedata1 => send_buffer_writedata1(31 downto 0),
                	 writedata2 => send_buffer_writedata2,
	              -- outputs:
        	         readdata1 => send_buffer_readdata1(31 downto 0),
                	 readdata2 => send_buffer_readdata2
		);
	recv_buffer:entity kth_axi_rni_static_v1_00_a.rni_memory
		  generic map (width => recv_width)
	        port map(
        	      -- inputs:
        	         address1 => recv_buffer_address1, 
        	         address2 => recv_buffer_address2,
        	         byteenable1 => recv_buffer_byteenable1(3 downto 0),
        	         byteenable2 => recv_buffer_byteenable2,
        	         chipselect1 => recv_buffer_chipselect1,
        	         chipselect2 => recv_buffer_chipselect2,
        	         clk => slave_clk,
        	         clken1 => slave_clken,
        	         clken2 => recv_buffer_clken,
        	         write1 => recv_buffer_write1,
        	         write2 => recv_buffer_write2,
        	         writedata1 => recv_buffer_writedata1(31 downto 0),
        	         writedata2 => recv_buffer_writedata2,
	              -- outputs:
        	         readdata1 => recv_buffer_readdata1(31 downto 0),
        	         readdata2 => recv_buffer_readdata2
              );
   END GENERATE; -- G0
   -- when recv_buffer_chipselect1='1' else
   --				  (others=>'0');
   -- slave_readdata<=rni_readdata;
   -- slave_readdata<=recv_buffer_readdata1;
   -- slave_readdata<=send_buffer_readdata1;
   rni_write<=dap_write when (dap_select='1') else slave_write when (rni_chipselect='1') else '0';
   rni_read<=dap_read when (dap_select='1') else slave_read when (rni_chipselect='1') else '0';
   -- control reg is word addressable, avalon bus is byte addressable
   rni_address<=internal_address(6 downto 0) when (dap_select='1') else slave_address(6 downto 0);
   rni_writedata<=dap_writedata(31 downto 0) when (dap_select='1') else slave_writedata;

interface:generic_nios_to_3D_noc
	generic map(-- row_pos => row_pos,
			-- col_pos => col_pos,
			-- layer_pos => layer_pos,
			rni_pos => rni_pos,
			channel_size => channel_size, -- size of one msg channel in nr of data words (must be a power of two)
		-- The following two parameters are set in the NoC_3D_SW_configuration_package, 
			nr_of_recv_channels_size => nr_of_recv_channels_size,
		      nr_of_send_channels_size => nr_of_send_channels_size)  -- size of the transmit channel buffer (nr_of_send_channels = 2**nr_of_send_channels_size)
								 -- Two is always sufficient for single processor nodes...
	port map(
		Clk => slave_Clk,
		Reset => slave_Reset,
		-- DO NOT EDIT BELOW THIS LINE ---------------------
		-- Bus protocol ports, do not add or delete. 
		-- Memory interface ports
		send_buffer_address =>		send_buffer_address2,
		send_buffer_readdata =>		send_buffer_readdata2, 
		send_buffer_write =>		send_buffer_write2,
		send_buffer_read =>		send_buffer_read2,
		send_buffer_writedata => 	send_buffer_writedata2,
		recv_buffer_address =>		internal_recv_buffer_address2,
		recv_buffer_readdata =>	     	recv_buffer_readdata2, 
		recv_buffer_write =>		recv_buffer_write2,
		recv_buffer_read =>		recv_buffer_read2,
		recv_buffer_writedata => 	recv_buffer_writedata2,
		-- Avalon Slave ports
		slave_clk => slave_clk,
		slave_reset => slave_reset,
		slave_irq => slave_irq,
		slave_readdata => rni_readdata,
		slave_address => rni_address,
		slave_chipselect => rni_chipselect,
		slave_read => rni_read,
		slave_write => rni_write,
		slave_writedata => rni_writedata,
		-- DO NOT EDIT ABOVE THIS LINE ---------------------

            	-- GlobalSync port, used to implement Synchronous MoC in SW
		GlobalSync => HeartBeat,
		-- Toggle_address port, used to locally remap addresses so that the nios always sees the last received parameter set
		Toggle_Address => Toggle_address,
		Test_debug => Test_debug_rni,
		-- what is in for the NoC is out for the nios_2_NoC...
		inport => FROM_NOC,
		outport => TO_NOC,
		read_r => read_r,
		write_r => write_r
	);
send_buffer_address1<=internal_address(send_width-1 downto 0); -- memory is word addressable, avalon bus is byte addressable
-- When receiver is writing to a channel, the nios should read from its previous received value
-- The bit flip ensures that the nios always sees the channel memory map as (low address=received values, high address=not yet received values)
   process(toggle_address)
   begin
	xor_map<=(others=>'0');
	xor_map(xor_map'high)<=toggle_address;
   end process;

recv_buffer_address1<=internal_address(recv_width-1 downto 0) xor xor_map; -- memory is word addressable, avalon bus is byte addressable
recv_buffer_address2<=not(toggle_address) & internal_recv_buffer_address2; -- memory is word addressable, avalon bus is byte addressable

END structure;
