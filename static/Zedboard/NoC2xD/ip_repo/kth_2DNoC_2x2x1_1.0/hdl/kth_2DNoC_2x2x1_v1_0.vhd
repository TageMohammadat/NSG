library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
library kth_2DNoC_2x2x1_v1_00_a;
use kth_2DNoC_2x2x1_v1_00_a.all;
use kth_2DNoC_2x2x1_v1_00_a.NoC_3D_Parallel_package.all;

entity kth_2DNoC_2x2x1_v1_0 is
 GENERIC(
       HeartBeatTimerConst:natural:=5000000 --Tage added this for configuring the Heartbeat frequency
       );
   PORT(
            clk:IN std_logic;
            reset:IN std_logic;
            -- kth_axi_rni port 0
            To_NoC_0:IN std_logic_vector(53 downto 0);
            From_NoC_0:OUT std_logic_vector(53 downto 0);
            Sync_0:OUT std_logic_vector(1 downto 0);        HeartBeat_0:OUT std_logic;
            -- kth_axi_rni port 1
            To_NoC_1:IN std_logic_vector(53 downto 0);
            From_NoC_1:OUT std_logic_vector(53 downto 0);
            Sync_1:OUT std_logic_vector(1 downto 0);        HeartBeat_1:OUT std_logic;
            -- kth_axi_rni port 2
            To_NoC_2:IN std_logic_vector(53 downto 0);
            From_NoC_2:OUT std_logic_vector(53 downto 0);
            Sync_2:OUT std_logic_vector(1 downto 0);        HeartBeat_2:OUT std_logic;
            -- kth_axi_rni port 3
            To_NoC_3:IN std_logic_vector(53 downto 0);
            From_NoC_3:OUT std_logic_vector(53 downto 0);
            Sync_3:OUT std_logic_vector(1 downto 0);        HeartBeat_3:OUT std_logic
               );
    END kth_2DNoC_2x2x1_v1_0;
    
    architecture xilinx_interface_map of kth_2DNoC_2x2x1_v1_0 is
       component NoC_2D_Parallel
          port(clk,reset:IN std_logic;
                 To_NoC:IN NoC_Packet_cube;
                 To_Res:OUT NoC_Packet_cube;
                 read_R:OUT std_logic_cube;
                 write_R:OUT std_logic_cube);
       end component;
    
       signal To_NoC,To_Res:NoC_Packet_cube;
       signal read_R,write_R:std_logic_cube;
       signal HeartBeat:std_logic;
       signal timer:natural;
       constant timer_value:natural:=HeartBeatTimerConst;      signal GlobalSync:std_logic;
    
    begin
    
       process(clk)
       begin
          if rising_edge(clk) then
             timer<=timer+1;
             if (timer<=timer_value/2) then
                 GlobalSync<='0';
             else
                GlobalSync<='1';
                if (timer=timer_value-1) then
                   timer<=0;
                end if;
             end if;
          end if;
       end process;
    
       HeartBeat <= GlobalSync;
    
    NOC: NoC_2D_Parallel
         port map(clk => clk,
                  reset => reset,
                    To_NoC => To_NoC,
                    To_Res => To_Res,
                    read_R => read_R,
                    write_R => write_R);
    
       -- Map interfaces to Quartus SoPC standard notation
    
       -- kth_axi_rni 0
       To_NoC(0) <= To_NoC_0;
       From_NoC_0 <= To_Res(0); 
       sync_0(0) <= read_R(0);
       sync_0(1) <= write_R(0);
       HeartBeat_0 <= HeartBeat;
    
       -- kth_axi_rni 1
       To_NoC(1) <= To_NoC_1;
       From_NoC_1 <= To_Res(1); 
       sync_1(0) <= read_R(1);
       sync_1(1) <= write_R(1);
       HeartBeat_1 <= HeartBeat;
    
       -- kth_axi_rni 2
       To_NoC(2) <= To_NoC_2;
       From_NoC_2 <= To_Res(2); 
       sync_2(0) <= read_R(2);
       sync_2(1) <= write_R(2);
       HeartBeat_2 <= HeartBeat;
    
       -- kth_axi_rni 3
       To_NoC(3) <= To_NoC_3;
       From_NoC_3 <= To_Res(3); 
       sync_3(0) <= read_R(3);
       sync_3(1) <= write_R(3);
       HeartBeat_3 <= HeartBeat;
    

	-- Add user logic here

	-- User logic ends

        end xilinx_interface_map;