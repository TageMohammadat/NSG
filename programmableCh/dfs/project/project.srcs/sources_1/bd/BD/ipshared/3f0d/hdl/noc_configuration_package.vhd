library ieee;
use ieee.std_logic_1164.all;
package noc_configuration_package is

   constant Nr_of_Cols:integer:=2;
   constant Nr_of_Rows:integer:=2;
   constant Nr_of_TDNs:integer:=3;
   constant Nr_of_Layers:integer:=1;
   constant nr_of_nodes:integer:=4;
   constant nr_of_processes:integer:=4;

   constant FlitInjectionRate:integer:=4;
   constant FlitWidth:integer:=32;
   constant NrofFlitsperPackage:integer:=128;

   subtype natural_bit is natural range 0 to 1;
   type natural_bit_vector is array(integer range <>) of natural_bit;
   constant config_use_DAP:natural_bit_vector(0 to 3):=(0,0,0,0);
   constant config_use_64bit:natural_bit_vector(0 to 3):=(0,0,0,0);
   constant use_programmable_heartbeat:std_logic:='0';
   constant use_programmable_send_channels:std_logic_vector(0 to 3):=('1','1','1','1');
   constant use_programmable_recv_channels:std_logic_vector(0 to 3):=('1','1','1','1');
   constant default_heartbeat_timer_value:natural:=49999999;
   constant default_reset_timer_value:natural:=4999;
   constant max_nr_of_send_channels:integer:=4; -- Max 2**2=4 channels
   constant max_nr_of_recv_channels:integer:=4; -- Max 2**2=4 channels
   constant max_nr_of_send_channels_size:integer:=2; -- 4 channels => Size = 2
   constant max_nr_of_recv_channels_size:integer:=2; -- 4 channels => Size = 2

   subtype node_range_type is integer range 0 to nr_of_nodes-1;
   subtype process_range_type is integer range 0 to nr_of_processes-1;
   subtype ns_range_type is integer range 0 to nr_of_rows-1;
   subtype ew_range_type is integer range 0 to nr_of_cols-1;
   subtype ud_range_type is integer range 0 to nr_of_layers-1;
   subtype tdn_range_type is integer range 0 to 15;
   type send_process_map_type is record
      NodeNr:node_range_type;
      TDN:tdn_range_type;
      UD:ud_range_type;
      NS:ns_range_type;
      EW:ew_range_type;
      Source:process_range_type;
      Target:process_range_type;
   end record;
   type send_channel_info_type is record
      Enable:std_logic;
      TDN:tdn_range_type;
      UD:ud_range_type;
      NS:ns_range_type;
      EW:ew_range_type;
      Source:std_logic_vector(7 downto 0);
      Target:std_logic_vector(7 downto 0);
   end record;
   type send_process_map_vector_type is array(integer range <>) of send_process_map_type;
   type send_channel_info_vector_type is array(integer range <>) of send_channel_info_type;

   type recv_process_map_type is record
      NodeNr:node_range_type;
      Channel_type:std_logic;
      Source:process_range_type;
      Target:process_range_type;
   end record;
   type recv_channel_info_type is record
      Enable:std_logic;
      Channel_type:std_logic;
      Source:std_logic_vector(7 downto 0);
      Target:std_logic_vector(7 downto 0);
   end record;
   constant SMOC:std_logic:='0';
   constant COMB:std_logic:='1';
   type recv_process_map_vector_type is array(integer range <>) of recv_process_map_type;
   type recv_channel_info_vector_type is array(integer range <>) of recv_channel_info_type;

   subtype recv_channel_map_type is integer range 0 to max_nr_of_recv_channels-1;

   subtype recv_channel_size_type is integer range 0 to max_nr_of_recv_channels_size;
   type recv_channel_size_map_vector_type is array(integer range <>) of recv_channel_size_type;
   subtype send_channel_size_type is integer range 0 to max_nr_of_send_channels_size;
   type send_channel_size_map_vector_type is array(integer range <>) of send_channel_size_type;

   -- Process ID map and configuration info
   constant send_process_map:send_process_map_vector_type(0 to 15):=
           (-- NodeNr, TDN, z, y, x, Source PID, Dest PID
            0=>(0,0,0,1,1,0,3),
            1=>(0,0,0,1,0,0,2),
            2=>(0,0,0,0,1,0,1),
            3=>(0,0,0,0,0,0,0),
            4=>(1,0,0,1,1,1,3),
            5=>(1,0,0,1,0,1,2),
            6=>(1,0,0,0,1,1,1),
            7=>(1,0,0,0,0,1,0),
            8=>(2,0,0,1,1,2,3),
            9=>(2,0,0,1,0,2,2),
            10=>(2,0,0,0,1,2,1),
            11=>(2,0,0,0,0,2,0),
            12=>(3,0,0,1,1,3,3),
            13=>(3,0,0,1,0,3,2),
            14=>(3,0,0,0,1,3,1),
            15=>(3,0,0,0,0,3,0)
            );
   -- Channel info
   constant recv_process_map:recv_process_map_vector_type(0 to 15):=
           (-- NodeNr, ChannelType, Source PID, Dest PID
            0=>(0,SMOC,3,0),
            1=>(0,SMOC,2,0),
            2=>(0,SMOC,1,0),
            3=>(0,SMOC,0,0),
            4=>(1,SMOC,3,1),
            5=>(1,SMOC,2,1),
            6=>(1,SMOC,1,1),
            7=>(1,SMOC,0,1),
            8=>(2,SMOC,3,2),
            9=>(2,SMOC,2,2),
            10=>(2,SMOC,1,2),
            11=>(2,SMOC,0,2),
            12=>(3,SMOC,3,3),
            13=>(3,SMOC,2,3),
            14=>(3,SMOC,1,3),
            15=>(3,SMOC,0,3)
            );

   constant recv_channel_size_map:recv_channel_size_map_vector_type(0 to nr_of_nodes-1):=
           (
            0=>2,
            1=>2,
            2=>2,
            3=>2,
            others=>1);
   constant send_channel_size_map:send_channel_size_map_vector_type(0 to nr_of_nodes-1):=
           (
            0=>2,
            1=>2,
            2=>2,
            3=>2,
            others=>1);
   function log2(nr:integer) return integer;

end noc_configuration_package;

package body noc_configuration_package is
   function log2(nr:integer) return integer is
   begin
      for i in 0 to 30 loop
         if (nr<=2**i) then return i; end if;
      end loop;
      return 31;
   end log2;
end package body;
