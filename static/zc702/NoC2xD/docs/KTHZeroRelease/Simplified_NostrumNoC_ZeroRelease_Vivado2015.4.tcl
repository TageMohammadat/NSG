### OS Linux: Ubuntu 16.04
### Vivado version: 2015.4
### Purpose: Xilinx bitstream file generation for hardware system with 1 dualcore ARM9 and 6 Microblazes communicating through KTH mesh 4x4 NoC (static with synchronous heartbeat)
### Presumptions:
#### 1. Project work directory is: /home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/
#### 2. Constraint file follows the master file: WORKDIR/zc702_rev_3_0.ucf.xdc within the folder /home/tage/DegreeProject/zc702 with all used IO pins uncommented
#### 3. IPs for NoC Switch Matrix and Network Interface are at WORKDIR/ip_repo/kth_axi_rni_static_1.0-c1 /home/tage/DegreeProject/zc702/NoC2xD/ip_repo/kth_2dnoc_2x2x1_1.0-c1
#### 4. Project name is NoC2x2_1MHz_ForSyDe17.0 and elf files are under sw/mbx/Debug/mbx.elf or sw/a9_x/Debug/a9_x.elf where x is {0, 1}
#### 5. Board is Zynq Evaluation Board and FPGA fabric are synthesized to work at 50MHz
#### 6. HeartBeat signal frequency is 1MHz
## Created: Nov 17/16
## mtme@kth.se
## Synopsis: Testing 2x2 NoC with 2 Microblaze systems connecting to the ARM

## *1* Set up working directory
#################################################################################################################################################################################################################################################################################################################
set WORKDIR /home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD
set PROJECTFOLDER NoC2x2_1MHz_SAFEPOWER16.11
#This IPREPOFOLDER does not propagate in the script. It has to be manually fixed in line: set_property  ip_repo_paths..
set IPREPOFOLDER ip_repo
set BOARDCONSTFIL zc702_rev_3_0.ucf.xdc
set PROJECTNAME NoC2x2_1MHz_SAFEPOWER16
# Go to working directory
cd $WORKDIR
create_project $PROJECTNAME $PROJECTFOLDER -part xc7z020clg484-1 -force
set_property board_part xilinx.com:zc702:part0:1.2 [current_project]
set_property target_language VHDL [current_project]
set_property  ip_repo_paths  {ip_repo/kth_axi_rni_static_1.0-c1 ip_repo/kth_2DNoC_2x2x1_1.0-c1} [current_project]
create_bd_design "BD"
add_files -fileset constrs_1 -norecurse $BOARDCONSTFIL
import_files -fileset constrs_1 $BOARDCONSTFIL
update_ip_catalog -rebuild

# The Design
## PL: clocking wizard at 50 MHz, 2 Microblaze with AXI Timer 0, Local memory, GPIO with 3 LEDs [PMOD1_0_LS(DS19),PMOD1_1_LS(DS20),PMOD1_2_LS(DS21)]
## PS: AXI master and slave ports enable


# *2* Make the design
#################################################################################################################################################################################################################################################################################################################
##Creating the clock
#Clocking Wizards to avoid using the Processing System
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 clk_wiz_0
set_property -dict [list CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} CONFIG.USE_MIN_POWER {true} CONFIG.USE_LOCKED {false} CONFIG.USE_RESET {false} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50} CONFIG.MMCM_DIVCLK_DIVIDE {1} CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} CONFIG.CLKOUT1_JITTER {151.636}] [get_bd_cells clk_wiz_0]
set_property -dict [list CONFIG.USE_DYN_RECONFIG {false} CONFIG.INTERFACE_SELECTION {Enable_AXI} CONFIG.USE_SAFE_CLOCK_STARTUP {true} CONFIG.USE_LOCKED {false} CONFIG.USE_RESET {false} CONFIG.USE_POWER_DOWN {true} CONFIG.PHASE_DUTY_CONFIG {false} CONFIG.CLKOUT1_DRIVES {BUFGCE} CONFIG.CLKOUT2_DRIVES {BUFGCE} CONFIG.CLKOUT3_DRIVES {BUFGCE} CONFIG.CLKOUT4_DRIVES {BUFGCE} CONFIG.CLKOUT5_DRIVES {BUFGCE} CONFIG.CLKOUT6_DRIVES {BUFGCE} CONFIG.CLKOUT7_DRIVES {BUFGCE} CONFIG.FEEDBACK_SOURCE {FDBK_AUTO}] [get_bd_cells clk_wiz_0]
## Clock pins, [GPIO_DIP_SW0] (SW12) to control clock
create_bd_port -dir I SYSCLK_P
create_bd_port -dir I SYSCLK_N
create_bd_port -dir I GPIO_DIP_SW0
connect_bd_net [get_bd_ports SYSCLK_N] [get_bd_pins clk_wiz_0/clk_in1_n] -quiet
connect_bd_net [get_bd_ports SYSCLK_P] [get_bd_pins clk_wiz_0/clk_in1_p] -quiet
connect_bd_net [get_bd_ports GPIO_DIP_SW0] [get_bd_pins clk_wiz_0/power_down] -quiet

## Create GPIO
### GPIO 0 (out:PMOD1_0_LS(DS19))
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_0]
### GPIO 1 (out:PMOD1_1_LS(DS20))
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_1]
### GPIO 2 (out:PMOD1_2_LS(DS21))
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_2]
### GPIO 0P : Private GPIO for MB0 out: PMOD2_0_LS(DS18)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0p
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_0p]
### GPIO 1P : Private GPIO for MB1 out: PMOD2_1_LS(DS17)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1p
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_1p]
## Make pins
create_bd_port -dir O PMOD1_0_LS
create_bd_port -dir O PMOD1_1_LS
create_bd_port -dir O PMOD1_2_LS
create_bd_port -dir O PMOD2_0_LS
create_bd_port -dir O PMOD2_1_LS
### Connect GPIO pins
connect_bd_net [get_bd_ports PMOD1_0_LS] [get_bd_pins axi_gpio_0/gpio_io_o] -quiet
connect_bd_net [get_bd_ports PMOD1_1_LS] [get_bd_pins axi_gpio_1/gpio_io_o] -quiet
connect_bd_net [get_bd_ports PMOD1_2_LS] [get_bd_pins axi_gpio_2/gpio_io_o] -quiet
connect_bd_net [get_bd_ports PMOD2_0_LS] [get_bd_pins axi_gpio_0p/gpio_io_o] -quiet
connect_bd_net [get_bd_ports PMOD2_1_LS] [get_bd_pins axi_gpio_1p/gpio_io_o] -quiet


##Create timers
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0
set_property -dict [list CONFIG.mode_64bit {1}] [get_bd_cells axi_timer_0]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_1
set_property -dict [list CONFIG.mode_64bit {1}] [get_bd_cells axi_timer_1]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_2
set_property -dict [list CONFIG.mode_64bit {1}] [get_bd_cells axi_timer_2]


## Create Microblaze with 128KB, and Interrupt Enable
create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.5 microblaze_0
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {local_mem "128KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "1" clk "/clk_wiz_0/clk_out1 (50 MHz)" }  [get_bd_cells microblaze_0]
set_property -dict [list CONFIG.C_DEBUG_ENABLED {2}] [get_bd_cells microblaze_0]

## Create Microblaze with 128KB, and Interrupt Enable
create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.5 microblaze_1
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {local_mem "128KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "1" clk "/clk_wiz_0/clk_out1 (50 MHz)" }  [get_bd_cells microblaze_1]
set_property -dict [list CONFIG.C_DEBUG_ENABLED {2}] [get_bd_cells microblaze_1]


## Connect reset GPIO_SW_S (SW7,Right)
create_bd_port -dir I GPIO_SW_S

### To connect reset, invert the GPIO_SW_S toggle switch signal
create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0
set_property -dict [list CONFIG.C_SIZE {1} CONFIG.C_OPERATION {not}] [get_bd_cells util_vector_logic_0]
connect_bd_net [get_bd_ports GPIO_SW_S] [get_bd_pins util_vector_logic_0/Op1]
connect_bd_net [get_bd_pins util_vector_logic_0/Res] [get_bd_pins rst_clk_wiz_0_50M/ext_reset_in]

## Configure the Debug Module to work as UART
set_property -dict [list CONFIG.C_USE_UART {1}] [get_bd_cells mdm_1]

## Instantiate Processing system to allow access to its peripherals, allow AXI_GP_S0,M0
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]
### Enable bus AXI GP S0 (GPIOs + NI0, NI1)
set_property -dict [list CONFIG.PCW_USE_S_AXI_GP0 {0}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_USE_M_AXI_GP0 {1}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_USE_S_AXI_GP1 {0}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_USE_M_AXI_GP1 {0}] [get_bd_cells processing_system7_0]


## Create the network
### NI0 for A9_0 
create_bd_cell -type ip -vlnv kth.se:user:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_0
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_0]
set_property -dict [list CONFIG.rni_number {0}] [get_bd_cells kth_axi_rni_static_0]
### NI1 for A9_1 1
create_bd_cell -type ip -vlnv kth.se:user:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_1
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_1]
set_property -dict [list CONFIG.rni_number {1}] [get_bd_cells kth_axi_rni_static_1]
### NI2 for MB 0
create_bd_cell -type ip -vlnv kth.se:user:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_2
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_2]
set_property -dict [list CONFIG.rni_number {2}] [get_bd_cells kth_axi_rni_static_2]
### NI3 for MB 1
create_bd_cell -type ip -vlnv kth.se:user:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_3
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_3]
set_property -dict [list CONFIG.rni_number {3}] [get_bd_cells kth_axi_rni_static_3]
### NoC2D
create_bd_cell -type ip -vlnv kth.se:user:kth_2DNoC_2x2x1_c1:1.0 kth_2DNoC_2x2x1_0
set_property -dict [list CONFIG.HeartBeatTimerConst {50}] [get_bd_cells kth_2DNoC_2x2x1_0]
### Make NoC connections:
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/reset] [get_bd_pins rst_clk_wiz_0_50M/peripheral_reset]
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/clk] [get_bd_pins clk_wiz_0/clk_out1]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0
set_property name Ground_1 [get_bd_cells xlconstant_0]
set_property -dict [list CONFIG.CONST_VAL {0}] [get_bd_cells Ground_1]
copy_bd_objs /  [get_bd_cells {Ground_1}]
set_property name Ground_8 [get_bd_cells Ground_2]
copy_bd_objs /  [get_bd_cells {Ground_8}]
set_property name Ground_15 [get_bd_cells Ground_9]
set_property -dict [list CONFIG.CONST_WIDTH {14}] [get_bd_cells Ground_15]
set_property -dict [list CONFIG.CONST_WIDTH {8}] [get_bd_cells Ground_8]
set_property -dict [list CONFIG.CONST_WIDTH {15}] [get_bd_cells Ground_15]
copy_bd_objs /  [get_bd_cells {Ground_15}]
set_property name Ground_64 [get_bd_cells Ground_16]
set_property -dict [list CONFIG.CONST_WIDTH {64}] [get_bd_cells Ground_64]
## Connecting Ground/RNIs to NoC
connect_bd_net [get_bd_pins Ground_64/dout] [get_bd_pins kth_axi_rni_static_0/dap_writedata]
connect_bd_net [get_bd_pins Ground_15/dout] [get_bd_pins kth_axi_rni_static_0/dap_address]
connect_bd_net [get_bd_pins Ground_8/dout] [get_bd_pins kth_axi_rni_static_0/dap_byteenable]
connect_bd_net [get_bd_pins Ground_1/dout] [get_bd_pins kth_axi_rni_static_0/dap_read]
connect_bd_net [get_bd_pins Ground_1/dout] [get_bd_pins kth_axi_rni_static_0/dap_write]
connect_bd_net [get_bd_pins Ground_1/dout] [get_bd_pins kth_axi_rni_static_2/dap_write]
connect_bd_net [get_bd_pins kth_axi_rni_static_2/dap_read] [get_bd_pins kth_axi_rni_static_2/dap_write]
connect_bd_net [get_bd_pins Ground_15/dout] [get_bd_pins kth_axi_rni_static_2/dap_address]
connect_bd_net [get_bd_pins Ground_64/dout] [get_bd_pins kth_axi_rni_static_2/dap_writedata]
connect_bd_net [get_bd_pins Ground_8/dout] [get_bd_pins kth_axi_rni_static_2/dap_byteenable]
connect_bd_net [get_bd_pins Ground_64/dout] [get_bd_pins kth_axi_rni_static_1/dap_writedata]
connect_bd_net [get_bd_pins Ground_64/dout] [get_bd_pins kth_axi_rni_static_3/dap_writedata]
connect_bd_net [get_bd_pins kth_axi_rni_static_3/dap_read] [get_bd_pins kth_axi_rni_static_3/dap_write]
connect_bd_net [get_bd_pins kth_axi_rni_static_1/dap_write] [get_bd_pins kth_axi_rni_static_1/dap_read]
connect_bd_net [get_bd_pins Ground_1/dout] [get_bd_pins kth_axi_rni_static_1/dap_write]
connect_bd_net [get_bd_pins Ground_1/dout] [get_bd_pins kth_axi_rni_static_3/dap_write]
connect_bd_net [get_bd_pins Ground_8/dout] [get_bd_pins kth_axi_rni_static_3/dap_byteenable]
connect_bd_net [get_bd_pins Ground_8/dout] [get_bd_pins kth_axi_rni_static_1/dap_byteenable]
connect_bd_net [get_bd_pins Ground_15/dout] [get_bd_pins kth_axi_rni_static_1/dap_address]
connect_bd_net [get_bd_pins Ground_15/dout] [get_bd_pins kth_axi_rni_static_3/dap_address]
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/To_NoC_0] [get_bd_pins kth_axi_rni_static_0/TO_NOC]
connect_bd_net [get_bd_pins kth_axi_rni_static_0/HeartBeat] [get_bd_pins kth_2DNoC_2x2x1_0/HeartBeat_0]
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/Sync_0] [get_bd_pins kth_axi_rni_static_0/Sync]
connect_bd_net [get_bd_pins kth_axi_rni_static_0/FROM_NOC] [get_bd_pins kth_2DNoC_2x2x1_0/From_NoC_0]
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/To_NoC_1] [get_bd_pins kth_axi_rni_static_1/TO_NOC]
connect_bd_net [get_bd_pins kth_axi_rni_static_1/Sync] [get_bd_pins kth_2DNoC_2x2x1_0/Sync_1]
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/From_NoC_1] [get_bd_pins kth_axi_rni_static_1/FROM_NOC]
connect_bd_net [get_bd_pins kth_axi_rni_static_1/HeartBeat] [get_bd_pins kth_2DNoC_2x2x1_0/HeartBeat_1]
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/HeartBeat_2] [get_bd_pins kth_axi_rni_static_2/HeartBeat]
connect_bd_net [get_bd_pins kth_axi_rni_static_2/Sync] [get_bd_pins kth_2DNoC_2x2x1_0/Sync_2]
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/To_NoC_2] [get_bd_pins kth_axi_rni_static_2/TO_NOC]
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/To_NoC_3] [get_bd_pins kth_axi_rni_static_3/TO_NOC]
connect_bd_net [get_bd_pins kth_axi_rni_static_3/Sync] [get_bd_pins kth_2DNoC_2x2x1_0/Sync_3]
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/From_NoC_2] [get_bd_pins kth_axi_rni_static_2/FROM_NOC]
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/From_NoC_3] [get_bd_pins kth_axi_rni_static_3/FROM_NOC]
connect_bd_net [get_bd_pins kth_axi_rni_static_3/HeartBeat] [get_bd_pins kth_2DNoC_2x2x1_0/HeartBeat_3]



## Instantiate a shared memory
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0
apply_bd_automation -rule xilinx.com:bd_rule:bram_cntlr -config {BRAM "New Blk_Mem_Gen" }  [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA]
apply_bd_automation -rule xilinx.com:bd_rule:bram_cntlr -config {BRAM "Blk_Mem_Gen of BRAM_PORTA" }  [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB]


## Fix Connections
### Connect the clock for the bus
connect_bd_net [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins clk_wiz_0/clk_out1]

### configure the crossbar to allow 2-level hierarchical bus, 1 slave (default) and 5 master ports (intc, timer,ps gp axi s, gpio,ni)
set_property -dict [list CONFIG.NUM_MI {5}] [get_bd_cells microblaze_0_axi_periph]
set_property -dict [list CONFIG.NUM_MI {5}] [get_bd_cells microblaze_1_axi_periph]
### Create a crossbar to allow PS accessing jtag UART, 3 GPIOs, timer2, 1 slave, 2 NIs = 7 master
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_0
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {7}] [get_bd_cells axi_crossbar_0]

### Create another crossbar to allow MB0 and MB1 to access PS peripherals via PS AXI GP M (jtag UART, 3 GPIOs, timer2) . 2 slave, 1 master
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_1
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.NUM_MI {1}] [get_bd_cells axi_crossbar_1]

### Do the connection for MB0 level 1
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_0 (Periph)" Clk "/clk_wiz_0/clk_out1 (50 MHz)" }  [get_bd_intf_pins axi_timer_0/S_AXI]
connect_bd_net [get_bd_pins microblaze_0_xlconcat/In0] [get_bd_pins axi_timer_0/interrupt]
connect_bd_net [get_bd_pins microblaze_0_xlconcat/In1] [get_bd_pins axi_timer_2/interrupt]
set_property -dict [list CONFIG.C_S_AXI_ACLK_FREQ_MHZ {50} CONFIG.C_PROCESSOR_CLK_FREQ_MHZ {50}] [get_bd_cells microblaze_0_axi_intc]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI] [get_bd_intf_pins axi_crossbar_1/S00_AXI]
connect_bd_net [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins rst_clk_wiz_0_50M/interconnect_aresetn]
#### Connect Private GPIO gpio0p
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI] [get_bd_intf_pins axi_gpio_0p/S_AXI]
connect_bd_net [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins rst_clk_wiz_0_50M/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_gpio_0p/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_gpio_0p/s_axi_aresetn] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]
#### Connect Private NI NI2
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI] [get_bd_intf_pins kth_axi_rni_static_2/S_AXI]
connect_bd_net [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins rst_clk_wiz_0_50M/interconnect_aresetn]
connect_bd_net [get_bd_pins kth_axi_rni_static_2/S_AXI_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins kth_axi_rni_static_2/S_AXI_ARESETN] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]
### Do the connection for MB1 level 1
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_1 (Periph)" Clk "/clk_wiz_0/clk_out1 (50 MHz)" }  [get_bd_intf_pins axi_timer_1/S_AXI]
connect_bd_net [get_bd_pins microblaze_1_xlconcat/In0] [get_bd_pins axi_timer_1/interrupt]
connect_bd_net [get_bd_pins microblaze_1_xlconcat/In1] [get_bd_pins axi_timer_2/interrupt]
set_property -dict [list CONFIG.C_S_AXI_ACLK_FREQ_MHZ {50} CONFIG.C_PROCESSOR_CLK_FREQ_MHZ {50}] [get_bd_cells microblaze_1_axi_intc]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_1_axi_periph/M02_AXI] [get_bd_intf_pins axi_crossbar_1/S01_AXI]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M02_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M02_ARESETN] [get_bd_pins rst_clk_wiz_0_50M/interconnect_aresetn]
#### Connect Private GPIO gpio1p
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_1_axi_periph/M03_AXI] [get_bd_intf_pins axi_gpio_1p/S_AXI]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M03_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M03_ARESETN] [get_bd_pins rst_clk_wiz_0_50M/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_gpio_1p/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_gpio_1p/s_axi_aresetn] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]
#### Connect Private NI NI3
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_1_axi_periph/M04_AXI] [get_bd_intf_pins kth_axi_rni_static_3/S_AXI]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M04_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M04_ARESETN] [get_bd_pins rst_clk_wiz_0_50M/interconnect_aresetn]
connect_bd_net [get_bd_pins kth_axi_rni_static_3/S_AXI_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins kth_axi_rni_static_3/S_AXI_ARESETN] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]
### Do the connections on level 2
#### Connect the level 2 bus pins
connect_bd_net [get_bd_pins axi_crossbar_0/aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_crossbar_0/aresetn] [get_bd_pins rst_clk_wiz_0_50M/interconnect_aresetn]
#### Connect timer2 to level 2 bus
connect_bd_intf_net [get_bd_intf_pins axi_timer_2/S_AXI] [get_bd_intf_pins axi_crossbar_0/M00_AXI]
connect_bd_net [get_bd_pins axi_timer_2/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_timer_2/s_axi_aresetn] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]
#### Connect gpio0 to level 2 bus
connect_bd_intf_net [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_crossbar_0/M01_AXI]
connect_bd_net [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]
#### Connect gpio1 to level 2 bus
connect_bd_intf_net [get_bd_intf_pins axi_gpio_1/S_AXI] [get_bd_intf_pins axi_crossbar_0/M02_AXI]
connect_bd_net [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]
#### Connect gpio2 to level 2 bus
connect_bd_intf_net [get_bd_intf_pins axi_gpio_2/S_AXI] [get_bd_intf_pins axi_crossbar_0/M03_AXI]
connect_bd_net [get_bd_pins axi_gpio_2/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_gpio_2/s_axi_aresetn] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]
#### Connect jtag-uart to level 2 bus
connect_bd_intf_net [get_bd_intf_pins mdm_1/S_AXI] [get_bd_intf_pins axi_crossbar_0/M04_AXI]
connect_bd_net [get_bd_pins mdm_1/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins mdm_1/s_axi_aresetn] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]
#### Connect PS peripherals to level 2 bus
connect_bd_net [get_bd_pins axi_crossbar_1/aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_crossbar_1/aresetn] [get_bd_pins rst_clk_wiz_0_50M/interconnect_aresetn]
#### Connect PS processors to level 2 bus
##### Add AXI Converter between PS and PL (AXI3 <-> AXI4)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_converter_0
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_converter_1
#### Do shared memory <=> converter <=> soft-processors
connect_bd_intf_net [get_bd_intf_pins axi_crossbar_1/M00_AXI] [get_bd_intf_pins axi_protocol_converter_0/S_AXI]
connect_bd_net [get_bd_pins axi_protocol_converter_0/aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_protocol_converter_0/aresetn] [get_bd_pins rst_clk_wiz_0_50M/interconnect_aresetn]
connect_bd_intf_net [get_bd_intf_pins axi_protocol_converter_0/M_AXI] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
### Make the connections via axi_crossbar_1 from the 
connect_bd_net [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1]
#### Do PS AXI GP M connection source <=> converter <=> destination
connect_bd_net [get_bd_pins axi_protocol_converter_1/aresetn] [get_bd_pins rst_clk_wiz_0_50M/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_protocol_converter_1/aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_intf_net [get_bd_intf_pins axi_crossbar_0/S00_AXI] [get_bd_intf_pins axi_protocol_converter_1/M_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_protocol_converter_1/S_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]
##### Connect the NIs, NI0, NI1 to axi_crossbar_0, M05_AXI and M06_AXI
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins axi_crossbar_0/M05_AXI] [get_bd_intf_pins kth_axi_rni_static_0/S_AXI]
connect_bd_net [get_bd_pins kth_axi_rni_static_0/S_AXI_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins kth_axi_rni_static_0/S_AXI_ARESETN] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins axi_crossbar_0/M06_AXI] [get_bd_intf_pins kth_axi_rni_static_1/S_AXI]
connect_bd_net [get_bd_pins kth_axi_rni_static_1/S_AXI_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins kth_axi_rni_static_1/S_AXI_ARESETN] [get_bd_pins rst_clk_wiz_0_50M/peripheral_aresetn]


## Fix memory addresses
### Do some magic
assign_bd_address


#Fixing synthesis related issues


# *3* Generate the bitstream
#################################################################################################################################################################################################################################################################################################################

## Generate the 1st bitsteam
# Generating Bitstream - First time
make_wrapper -files [get_files $PROJECTFOLDER/$PROJECTNAME.srcs/sources_1/bd/BD/BD.bd] -top
add_files -norecurse $PROJECTFOLDER/$PROJECTNAME.srcs/sources_1/bd/BD/hdl/BD_wrapper.vhd
save_bd_design
generate_target all [get_files  $PROJECTFOLDER/$PROJECTNAME.srcs/sources_1/bd/BD/BD.bd]
reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
## Launching SDK
file mkdir $PROJECTFOLDER/sw
file copy -force $PROJECTFOLDER/$PROJECTNAME.runs/impl_1/BD_wrapper.sysdef $PROJECTFOLDER/sw/BD_wrapper.hdf

## Launch and Generate the ELF files
launch_sdk -workspace $PROJECTFOLDER/sw -hwspec $PROJECTFOLDER/sw/BD_wrapper.hdf
### Alternatively, I'll try to leave this as a note for my future self (to automate the reproduction of the code using tcl in xcst)
#xsdk -batch
#create_project -type hw -name BD_wrapper_hw_platform_0 -hwspec BD_wrapper.hdf
### Create BSP (bsp_0)
#create_project -type bsp -name bsp_0 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_0 -os standalone
### Create application project
#create_project -type app -name printf_gpio_tmr_int -hwproject BD_wrapper_hw_platform_0 -proc microblaze_0 -os standalone -lang C -app {Peripheral Tests} -bsp bsp_0
#clean -type all
#build -type all

## Generate the bitsteam with ELF
#add_files -norecurse /home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb0/Debug/mb0.elf
#set_property used_in_simulation 0 [get_files /home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb0/Debug/mb0.elf]
#add_files -fileset sim_1 -norecurse /home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb0/Debug/mb0.elf
#add_files -norecurse /home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb1/Debug/mb1.elf
#set_property used_in_simulation 0 [get_files /home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb1/Debug/mb1.elf]
#add_files -fileset sim_1 -norecurse /home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb1/Debug/mb1.elf
#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb0/Debug/mb0.elf}]
#set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb0/Debug/mb0.elf}]
#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb1/Debug/mb1.elf}]
#set_property SCOPED_TO_CELLS { microblaze_1 } [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb1/Debug/mb1.elf}]
#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb0/Debug/mb0.elf}]
#set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb0/Debug/mb0.elf}]
#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb1/Debug/mb1.elf}]
#set_property SCOPED_TO_CELLS { microblaze_1 } [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_SAFEPOWER16.11/sw/mb1/Debug/mb1.elf}]
### Regenerating bitsream after Software update (elf file changes)
reset_run impl_1 -prev_step 
launch_runs impl_1 -to_step write_bitstream -jobs 8

## Download into the FPGA
open_hw_target
set_property PROGRAM.FILE {/home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_ForSyDe17.0/tmp.runs/impl_1/BD_wrapper.bit} [lindex [get_hw_devices xc7z020_1] 0]
current_hw_device [lindex [get_hw_devices xc7z020_1] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xc7z020_1] 0]
set_property PROBES.FILE {} [lindex [get_hw_devices xc7z020_1] 0]
set_property PROGRAM.FILE {/home/tage/XilinxDev/ForSyDe/ForSyDe17.0/zc702/NoC2xD/NoC2x2_1MHz_ForSyDe17.0/tmp.runs/impl_1/BD_wrapper.bit} [lindex [get_hw_devices xc7z020_1] 0]
program_hw_devices [lindex [get_hw_devices xc7z020_1] 0]
refresh_hw_device [lindex [get_hw_devices xc7z020_1] 0]

#################################################################################################################################################################################################################################################################################################################
