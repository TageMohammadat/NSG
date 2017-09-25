### OS Linux: Ubuntu 16.04
### Vivado version: 2016.3 (installed in: /opt/Xilinx/Vivado/2016.3)
### Purpose: Xilinx bitstream file generation for hardware system with 1 dualcore ARM9 and 3 Microblazes communicating through KTH mesh 4x4 NoC (static with synchronous heartbeat)
### Presumptions:
#### 0. Project folder consists of: ip_repo, sw_repo, constraints.xdc, scripts
#### 1. Project work directory ,WORKDIR, is the directory to which ip_repo, sw_repo and other files are child folders to it: .
#### 2. Constraint file follows the master file: WORKDIR/constraints.xdc. All used IO pins are uncommented.
#### 3. IPs for NoC Switch Matrix and Network Interface are at WORKDIR/ip_repo/kth_axi_rni_static_1.0-c1 WORKDIR/ip_repo/kth_2dnoc_2x2x1_1.0-c1
#### 4. Project name is WP3_2x2Nostrum_ZeroRelease_1703 and elf files are under sw/microblaze_x/Debug/microblaze_x.elf or sw/a9_x/Debug/a9_x.elf where x is {0, 1}
#### 5. Board is Zynq Evaluation Board and FPGA fabric are synthesized to work at 50MHz
#### 6. HeartBeat signal frequency is 1Hz (later to 400Hz or 2 milli second period). Initial value was 1 MHz corresponding to 1 microsecond of period)
# Change log
## Created: March 17/16
## Changing HB period from 50 to 50 000 000 to make 1 second (later to 400Hz to correspond to 2 milli second of period)
## Changing the design to be non-secure (Later secure) /Feb 16
## mtme@kth.se
## Synopsis: Testing 2x2 NoC with 3 Microblaze systems connecting to the ARM

## *0* Launching tool
#################################################################################################################################################################################################################################################################################################################
#cd ~/XilinxDev/SAFEPOWER/WP3/ZeroRelease/
#source /opt/Xilinx/Vivado/2016.3/settings64.sh
#vivado -mode tcl

## *1* Set up working directory
#################################################################################################################################################################################################################################################################################################################
set WORKDIR "."
set PROJECTFOLDER project
#This IPREPOFOLDER does not propagate in the script. It has to be manually fixed in line: set_property  ip_repo_paths..
set IPREPOFOLDER ip_repo
set SWREPOFOLDER sw_repo
set BOARDCONSTFIL constraints.xdc
set PROJECTNAME WP3_2x2Nostrum_ZeroRelease_1703
create_project $PROJECTNAME $PROJECTFOLDER -part xc7z020clg484-1 -force
set PROJDIR [get_property directory [current_project]]
set_property board_part xilinx.com:zc702:part0:1.2 [current_project]
set_property target_language VHDL [current_project]
set_property  ip_repo_paths "[file normalize "$WORKDIR/ip_repo/kth_axi_rni_static_1.0-c1"] [file normalize "$WORKDIR/ip_repo/kth_2DNoC_2x2x1_1.0-c1"]" [current_project]
create_bd_design "BD"
add_files -fileset constrs_1 -norecurse $BOARDCONSTFIL
import_files -fileset constrs_1 $BOARDCONSTFIL
update_ip_catalog -rebuild
# Design parameters
set HEARTBEATTIMERCONST 50000000
set DESIGNFREQMHz 50

# The Design
## PL: clocking wizard at 50 MHz, 3 Microblaze with AXI Timer, 128KB Local memory, GPIO with 3 LEDs [PMOD1_0_LS(DS19),PMOD1_1_LS(DS20),PMOD1_2_LS(DS21)]
## PS: AXI master and slave ports enable


# *2* Make the design
#################################################################################################################################################################################################################################################################################################################
##Creating the clock
#Clocking Wizards to avoid using the Processing System
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clk_wiz_0
set_property -dict [list CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} CONFIG.USE_MIN_POWER {true} CONFIG.USE_LOCKED {false} CONFIG.USE_RESET {false} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50} CONFIG.MMCM_DIVCLK_DIVIDE {1} CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} CONFIG.CLKOUT1_JITTER {151.636}] [get_bd_cells clk_wiz_0]
set_property -dict [list CONFIG.USE_DYN_RECONFIG {false} CONFIG.INTERFACE_SELECTION {Enable_AXI} CONFIG.USE_SAFE_CLOCK_STARTUP {true} CONFIG.USE_LOCKED {false} CONFIG.USE_RESET {false} CONFIG.USE_POWER_DOWN {true} CONFIG.PHASE_DUTY_CONFIG {false} CONFIG.CLKOUT1_DRIVES {BUFGCE} CONFIG.CLKOUT2_DRIVES {BUFGCE} CONFIG.CLKOUT3_DRIVES {BUFGCE} CONFIG.CLKOUT4_DRIVES {BUFGCE} CONFIG.CLKOUT5_DRIVES {BUFGCE} CONFIG.CLKOUT6_DRIVES {BUFGCE} CONFIG.CLKOUT7_DRIVES {BUFGCE} CONFIG.FEEDBACK_SOURCE {FDBK_AUTO}] [get_bd_cells clk_wiz_0]
set_property "CONFIG.CLKOUT1_REQUESTED_OUT_FREQ" "$DESIGNFREQMHz" [get_bd_cells clk_wiz_0]
## Clock pins, [GPIO_DIP_SW0] (SW12) to control clock
create_bd_port -dir I SYSCLK_P
create_bd_port -dir I SYSCLK_N
create_bd_port -dir I GPIO_DIP_SW0
connect_bd_net [get_bd_ports SYSCLK_N] [get_bd_pins clk_wiz_0/clk_in1_n] -quiet
connect_bd_net [get_bd_ports SYSCLK_P] [get_bd_pins clk_wiz_0/clk_in1_p] -quiet
connect_bd_net [get_bd_ports GPIO_DIP_SW0] [get_bd_pins clk_wiz_0/power_down] -quiet

## Create GPIOs for PL components, rely on PS MIO for ARM 
### GPIO 1 (out:PMOD1_0_LS(DS19))
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_1]
### GPIO 2 (out:PMOD1_1_LS(DS20))
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_2]
### GPIO 3 (out:PMOD1_2_LS(DS21))
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_3
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_3]
### For more, one may uncomment the following:
### GPIO 0P : Private GPIO for MB0 out: PMOD2_0_LS(DS18)
#create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0p
#set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_0p]
### GPIO 1P : Private GPIO for MB1 out: PMOD2_1_LS(DS17)
#create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1p
#set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_1p]
## Make pins
create_bd_port -dir O PMOD1_0_LS
create_bd_port -dir O PMOD1_1_LS
create_bd_port -dir O PMOD1_2_LS
#create_bd_port -dir O PMOD2_0_LS
#create_bd_port -dir O PMOD2_1_LS
### Connect GPIO pins
connect_bd_net [get_bd_ports PMOD1_0_LS] [get_bd_pins axi_gpio_1/gpio_io_o] -quiet
connect_bd_net [get_bd_ports PMOD1_1_LS] [get_bd_pins axi_gpio_2/gpio_io_o] -quiet
connect_bd_net [get_bd_ports PMOD1_2_LS] [get_bd_pins axi_gpio_3/gpio_io_o] -quiet
#connect_bd_net [get_bd_ports PMOD2_0_LS] [get_bd_pins axi_gpio_0p/gpio_io_o] -quiet
#connect_bd_net [get_bd_ports PMOD2_1_LS] [get_bd_pins axi_gpio_1p/gpio_io_o] -quiet


##Create timers for the Microblaze at the PL (configuring a 64 bit mode for 10s years)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_pwm_pause_1
set_property -dict [list CONFIG.mode_64bit {1}] [get_bd_cells axi_pwm_pause_1]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_pwm_pause_2
set_property -dict [list CONFIG.mode_64bit {1}] [get_bd_cells axi_pwm_pause_2]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_pwm_pause_3
set_property -dict [list CONFIG.mode_64bit {1}] [get_bd_cells axi_pwm_pause_3]


## Create Microblaze with 128KB, and Interrupt Enable (Node 1)
create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_1
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {local_mem "128KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "1" clk "/clk_wiz_0/clk_out1" }  [get_bd_cells microblaze_1]
set_property -dict [list CONFIG.C_DEBUG_ENABLED {2}] [get_bd_cells microblaze_1]

## Create Microblaze with 128KB, and Interrupt Enable (Node 2)
create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_2
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {local_mem "128KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "1" clk "/clk_wiz_0/clk_out1" }  [get_bd_cells microblaze_2]
set_property -dict [list CONFIG.C_DEBUG_ENABLED {2}] [get_bd_cells microblaze_2]

## Create Microblaze with 128KB, and Interrupt Enable (Node 3)
create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_3
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {local_mem "128KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "1" clk "/clk_wiz_0/clk_out1" }  [get_bd_cells microblaze_3]
set_property -dict [list CONFIG.C_DEBUG_ENABLED {2}] [get_bd_cells microblaze_3]

### remane reset module to be general and not specific to the frequency
set_property "name" "rst_module" [get_bd_cells rst_clk*]

## Connect reset GPIO_SW_S (SW7,Right)
create_bd_port -dir I GPIO_SW_S

### To connect reset, invert the GPIO_SW_S toggle switch signal
create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0
set_property -dict [list CONFIG.C_SIZE {1} CONFIG.C_OPERATION {not}] [get_bd_cells util_vector_logic_0]
connect_bd_net [get_bd_ports GPIO_SW_S] [get_bd_pins util_vector_logic_0/Op1]
connect_bd_net [get_bd_pins util_vector_logic_0/Res] [get_bd_pins rst_module/ext_reset_in]
### Active low auxillary reset to be connected with PS reset (FCLK0_N) in the future, alternatively it can be connected with the switch
set_property -dict [list CONFIG.C_AUX_RESET_HIGH {0}] [get_bd_cells rst_module]
connect_bd_net [get_bd_pins rst_module/aux_reset_in] [get_bd_pins util_vector_logic_0/Res]

## Instantiate Processing system to allow access to its peripherals, allow AXI_GP_S0,M0
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_EN_CLK0_PORT {0} CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0}] [get_bd_cells processing_system7_0]
### Setup the DDR configuration


### Enable bus AXI GP M0 (GPIOs + NI0, NI1)
set_property -dict [list CONFIG.PCW_USE_S_AXI_GP0 {0}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_USE_M_AXI_GP0 {1}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_USE_S_AXI_GP1 {0}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_USE_M_AXI_GP1 {0}] [get_bd_cells processing_system7_0]


## Create the network
### NI0 for A9_0 
create_bd_cell -type ip -vlnv kth.se:user:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_0
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_0]
set_property -dict [list CONFIG.rni_number {0}] [get_bd_cells kth_axi_rni_static_0]
### NI1 for MB 1
create_bd_cell -type ip -vlnv kth.se:user:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_1
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_1]
set_property -dict [list CONFIG.rni_number {1}] [get_bd_cells kth_axi_rni_static_1]
### NI2 for MB 2
create_bd_cell -type ip -vlnv kth.se:user:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_2
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_2]
set_property -dict [list CONFIG.rni_number {2}] [get_bd_cells kth_axi_rni_static_2]
### NI3 for MB 3
create_bd_cell -type ip -vlnv kth.se:user:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_3
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_3]
set_property -dict [list CONFIG.rni_number {3}] [get_bd_cells kth_axi_rni_static_3]
### NoC2D
create_bd_cell -type ip -vlnv kth.se:user:kth_2DNoC_2x2x1_c1:1.0 kth_2DNoC_2x2x1_0
#set_property -dict [list CONFIG.HeartBeatTimerConst {50000000}] [get_bd_cells kth_2DNoC_2x2x1_0]
set_property "CONFIG.HeartBeatTimerConst" "$HEARTBEATTIMERCONST" [get_bd_cells kth_2DNoC_2x2x1_0]

### Make NoC connections:
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/reset] [get_bd_pins rst_module/peripheral_reset]
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



## Instantiate a shared memory (not required feature)
#create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0
#apply_bd_automation -rule xilinx.com:bd_rule:bram_cntlr -config {BRAM "New Blk_Mem_Gen" }  [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA]
#apply_bd_automation -rule xilinx.com:bd_rule:bram_cntlr -config {BRAM "Blk_Mem_Gen of BRAM_PORTA" }  [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB]


## Fix Connections

### configure the crossbar to allow 1 slave (default) and 4 master ports (intc, timer, gpio,ni)
set_property -dict [list CONFIG.NUM_MI {4}] [get_bd_cells microblaze_1_axi_periph]
set_property -dict [list CONFIG.NUM_MI {4}] [get_bd_cells microblaze_2_axi_periph]
set_property -dict [list CONFIG.NUM_MI {4}] [get_bd_cells microblaze_3_axi_periph]
### Create a crossbar to allow PS accessing jtag UART, 3 GPIOs, timer2, 1 slave, 2 NIs = 7 master (not required feature)
#create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_0
#set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {7}] [get_bd_cells axi_crossbar_0]

### Create another crossbar to allow MB0 and MB1 to access PS peripherals via PS AXI GP M (jtag UART, 3 GPIOs, timer2) . 2 slave, 1 master (not required feature)
#create_bd_cell -type ip -vlnv xilinx.com:ip:axi_crossbar:2.1 axi_crossbar_1
#set_property -dict [list CONFIG.NUM_SI {2} CONFIG.NUM_MI {1}] [get_bd_cells axi_crossbar_1]

### Do the connection for MB1
#### Use automation to connect the timer (M01)
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_1 (Periph)" Clk "/clk_wiz_0/clk_out1" }  [get_bd_intf_pins axi_pwm_pause_1/S_AXI]
connect_bd_net [get_bd_pins microblaze_1_xlconcat/In0] [get_bd_pins axi_pwm_pause_1/interrupt]
#### ground the other interrupt for safety reasons
connect_bd_net [get_bd_pins microblaze_1_xlconcat/In1] [get_bd_pins Ground_1/dout]
set_property "CONFIG.C_S_AXI_ACLK_FREQ_MHZ" "$DESIGNFREQMHz" [get_bd_cells microblaze_1_axi_intc]
set_property "CONFIG.C_PROCESSOR_CLK_FREQ_MHZ" "$DESIGNFREQMHz" [get_bd_cells microblaze_1_axi_intc]
#### Connect Private GPIO gpio 1
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_1_axi_periph/M02_AXI] [get_bd_intf_pins axi_gpio_1/S_AXI]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M02_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M02_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins rst_module/peripheral_aresetn]
#### Connect Private NI NI1
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_1_axi_periph/M03_AXI] [get_bd_intf_pins kth_axi_rni_static_1/S_AXI]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M03_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M03_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins kth_axi_rni_static_1/S_AXI_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins kth_axi_rni_static_1/S_AXI_ARESETN] [get_bd_pins rst_module/peripheral_aresetn]
### Do the connection for MB2
#### Use automation to connect the timer (M01)
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_2 (Periph)" Clk "/clk_wiz_0/clk_out1" }  [get_bd_intf_pins axi_pwm_pause_2/S_AXI]
connect_bd_net [get_bd_pins microblaze_2_xlconcat/In0] [get_bd_pins axi_pwm_pause_2/interrupt]
#### ground the other interrupt for safety reasons
connect_bd_net [get_bd_pins microblaze_2_xlconcat/In1] [get_bd_pins Ground_1/dout]
#set_property -dict [list CONFIG.C_S_AXI_ACLK_FREQ_MHZ {50} CONFIG.C_PROCESSOR_CLK_FREQ_MHZ {50}] [get_bd_cells microblaze_2_axi_intc]
set_property "CONFIG.C_S_AXI_ACLK_FREQ_MHZ" "$DESIGNFREQMHz" [get_bd_cells microblaze_2_axi_intc]
set_property "CONFIG.C_PROCESSOR_CLK_FREQ_MHZ" "$DESIGNFREQMHz" [get_bd_cells microblaze_2_axi_intc]
#### Connect Private GPIO gpio 2
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_2_axi_periph/M02_AXI] [get_bd_intf_pins axi_gpio_2/S_AXI]
connect_bd_net [get_bd_pins microblaze_2_axi_periph/M02_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_2_axi_periph/M02_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_gpio_2/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_gpio_2/s_axi_aresetn] [get_bd_pins rst_module/peripheral_aresetn]
#### Connect Private NI NI2
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_2_axi_periph/M03_AXI] [get_bd_intf_pins kth_axi_rni_static_2/S_AXI]
connect_bd_net [get_bd_pins microblaze_2_axi_periph/M03_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_2_axi_periph/M03_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins kth_axi_rni_static_2/S_AXI_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins kth_axi_rni_static_2/S_AXI_ARESETN] [get_bd_pins rst_module/peripheral_aresetn]
### Do the connection for MB3
#### Use automation to connect the timer (M01)
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_3 (Periph)" Clk "/clk_wiz_0/clk_out1" }  [get_bd_intf_pins axi_pwm_pause_3/S_AXI]
connect_bd_net [get_bd_pins microblaze_3_xlconcat/In0] [get_bd_pins axi_pwm_pause_3/interrupt]
#### ground the other interrupt for safety reasons
connect_bd_net [get_bd_pins microblaze_3_xlconcat/In1] [get_bd_pins Ground_1/dout]
set_property "CONFIG.C_S_AXI_ACLK_FREQ_MHZ" "$DESIGNFREQMHz" [get_bd_cells microblaze_3_axi_intc]
set_property "CONFIG.C_PROCESSOR_CLK_FREQ_MHZ" "$DESIGNFREQMHz" [get_bd_cells microblaze_3_axi_intc]
#set_property -dict [list CONFIG.C_S_AXI_ACLK_FREQ_MHZ {50} CONFIG.C_PROCESSOR_CLK_FREQ_MHZ {50}] [get_bd_cells microblaze_3_axi_intc]
#### Connect Private GPIO gpio 2
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_3_axi_periph/M02_AXI] [get_bd_intf_pins axi_gpio_3/S_AXI]
connect_bd_net [get_bd_pins microblaze_3_axi_periph/M02_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_3_axi_periph/M02_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_gpio_3/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins axi_gpio_3/s_axi_aresetn] [get_bd_pins rst_module/peripheral_aresetn]
#### Connect Private NI NI2
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_3_axi_periph/M03_AXI] [get_bd_intf_pins kth_axi_rni_static_3/S_AXI]
connect_bd_net [get_bd_pins microblaze_3_axi_periph/M03_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins microblaze_3_axi_periph/M03_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins kth_axi_rni_static_3/S_AXI_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net [get_bd_pins kth_axi_rni_static_3/S_AXI_ARESETN] [get_bd_pins rst_module/peripheral_aresetn]

### Connect the clock for the PS bus
connect_bd_net [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins clk_wiz_0/clk_out1]
#### Connect PS peripherals to level 2 bus
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "/clk_wiz_0/clk_out1" }  [get_bd_intf_pins kth_axi_rni_static_0/S_AXI]


## Fix memory addresses
### Do some magic
assign_bd_address
### change addresses to match defaults of NI (safe option)
set_property offset 0x70020000 [get_bd_addr_segs {microblaze_1/Data/SEG_kth_axi_rni_static_1_S_AXI_reg}]
set_property offset 0x70020000 [get_bd_addr_segs {microblaze_2/Data/SEG_kth_axi_rni_static_2_S_AXI_reg}]
set_property offset 0x70020000 [get_bd_addr_segs {processing_system7_0/Data/SEG_kth_axi_rni_static_0_S_AXI_reg}]
set_property offset 0x70020000 [get_bd_addr_segs {microblaze_3/Data/SEG_kth_axi_rni_static_3_S_AXI_reg}]
#Fixing synthesis related issues


# Security setting
## Configure Zynq such that non-secure transactions are enabled
#set_property -dict [list CONFIG.PCW_USE_AXI_NONSECURE {1}] [get_bd_cells processing_system7_0]
### alternatively configure Zynq such that secure transactions are enabled (non-secure transactions are disabled)
###set_property -dict [list CONFIG.PCW_USE_AXI_NONSECURE {0}] [get_bd_cells processing_system7_0]
# Security setting for NI
## Configure Zynq such that non-secure transactions are enabled
#set_property -dict [list CONFIG.PCW_USE_AXI_NONSECURE {1}] [get_bd_cells processing_system7_0]
### alternatively configure Zynq such that secure transactions are enabled (non-secure transactions are disabled)
###set_property -dict [list CONFIG.PCW_USE_AXI_NONSECURE {0}] [get_bd_cells processing_system7_0]
### explicitly set the port at which the NI is connected to as non-secure (disable secure) [1: secure, 0:non-secure]
#set_property -dict [list CONFIG.ENABLE_ADVANCED_OPTIONS {1} CONFIG.M00_SECURE {0}] [get_bd_cells ps7_0_axi_periph]
### alternatively set the port at which the NI is connected to as secure (enable secure)
####set_property -dict [list CONFIG.ENABLE_ADVANCED_OPTIONS {1} CONFIG.M00_SECURE {1}] [get_bd_cells ps7_0_axi_periph]

# Using the FCLK0 instead
## Delete external oscilator input pins of the clocking wizard
delete_bd_objs [get_bd_nets SYSCLK_N_1] [get_bd_ports SYSCLK_N]
delete_bd_objs [get_bd_nets SYSCLK_P_1] [get_bd_ports SYSCLK_P]
## Change Clocking Wizard mode to single ended
set_property -dict [list CONFIG.USE_DYN_RECONFIG {false} CONFIG.PRIM_SOURCE {Single_ended_clock_capable_pin} CONFIG.AXI_DRP {false} CONFIG.PHASE_DUTY_CONFIG {false} CONFIG.USE_LOCKED {true} CONFIG.USE_RESET {false}] [get_bd_cells clk_wiz_0]
connect_bd_net [get_bd_pins rst_module/dcm_locked] [get_bd_pins clk_wiz_0/locked]
## Set FLCK0 to 100 MHz
#set_property -dict [list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {50} CONFIG.PCW_EN_CLK0_PORT {1}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {50} CONFIG.PCW_EN_CLK0_PORT {1}] [get_bd_cells processing_system7_0]
set_property "CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ" "$DESIGNFREQMHz" [get_bd_cells processing_system7_0]
## Connect clock signal FLCK0 from PS
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins clk_wiz_0/clk_in1]
## Disconnect the clock signals at the clocking wizard
disconnect_bd_net /microblaze_3_Clk [get_bd_pins clk_wiz_0/clk_out1]
delete_bd_objs [get_bd_nets processing_system7_0_FCLK_CLK0]
## Delete Clocking wizard and Power down Pin
delete_bd_objs [get_bd_nets clk_wiz_0_locked] [get_bd_nets GPIO_DIP_SW0_1] [get_bd_cells clk_wiz_0]
delete_bd_objs [get_bd_ports GPIO_DIP_SW0]
## Connect the FCLK0 to the clock lines
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins microblaze_1/Clk]
# Enable other CLKx and RSTx clocks as precausions
set_property -dict [list CONFIG.PCW_EN_CLK1_PORT {1} CONFIG.PCW_EN_CLK2_PORT {1} CONFIG.PCW_EN_CLK3_PORT {1}] [get_bd_cells processing_system7_0]
set_property -dict [list CONFIG.PCW_EN_RST1_PORT {1} CONFIG.PCW_EN_RST2_PORT {1} CONFIG.PCW_EN_RST3_PORT {1}] [get_bd_cells processing_system7_0]
## CLKTRIGx (if reqiured)
#set_property -dict [list CONFIG.PCW_EN_CLKTRIG0_PORT {1} CONFIG.PCW_EN_CLKTRIG1_PORT {1} CONFIG.PCW_EN_CLKTRIG2_PORT {1} CONFIG.PCW_EN_CLKTRIG3_PORT {1}] [get_bd_cells processing_system7_0]


# SW Reset
## start by disconnecting the aux reset from the external pin
disconnect_bd_net /util_vector_logic_0_Res [get_bd_pins rst_module/aux_reset_in]
# connect it back to the SW controlled reset generated by the ARM
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_module/aux_reset_in]


# Set timers to pause Microblazes by connecting PWM0 out to Pause Signals
## Enable discrete IO
set_property -dict [list CONFIG.C_ENABLE_DISCRETE_PORTS {1}] [get_bd_cells microblaze_1]
set_property -dict [list CONFIG.C_ENABLE_DISCRETE_PORTS {1}] [get_bd_cells microblaze_2]
set_property -dict [list CONFIG.C_ENABLE_DISCRETE_PORTS {1}] [get_bd_cells microblaze_3]
## Set timers to work as two 32bit timers
set_property -dict [list CONFIG.mode_64bit {0}] [get_bd_cells axi_pwm_pause_1]
set_property -dict [list CONFIG.mode_64bit {0}] [get_bd_cells axi_pwm_pause_2]
set_property -dict [list CONFIG.mode_64bit {0}] [get_bd_cells axi_pwm_pause_3]
## Connect PWM0 to Microblaze PAUSE
connect_bd_net [get_bd_pins axi_pwm_pause_1/pwm0] [get_bd_pins microblaze_1/Pause]
connect_bd_net [get_bd_pins axi_pwm_pause_2/pwm0] [get_bd_pins microblaze_2/Pause]
connect_bd_net [get_bd_pins axi_pwm_pause_3/pwm0] [get_bd_pins microblaze_3/Pause]
## Connect DS22 LED with PAUSE_ACK signal for Debugging
create_bd_port -dir O PMOD1_3_LS
### Connect GPIO pins
connect_bd_net [get_bd_ports PMOD1_3_LS] [get_bd_pins microblaze_1/Pause_Ack] -quiet



# Create shared UART by configuring the Debug Module
set_property -dict [list CONFIG.C_USE_UART {1}] [get_bd_cells mdm_1]
## make clk and rstn connections
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins mdm_1/S_AXI_ACLK]
connect_bd_net [get_bd_pins mdm_1/S_AXI_ARESETN] [get_bd_pins rst_module/peripheral_aresetn]
## create an AXI crossbar to allow access from 4 processors, allow FIFOs within the interconnect to allo bufferring of printf data
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0
set_property -dict [list CONFIG.XBAR_DATA_WIDTH.VALUE_SRC PROPAGATED CONFIG.SYNCHRONIZATION_STAGES.VALUE_SRC PROPAGATED] [get_bd_cells axi_interconnect_0]
set_property -dict [list CONFIG.NUM_SI {4} CONFIG.NUM_MI {1} CONFIG.ENABLE_ADVANCED_OPTIONS {1} CONFIG.M00_HAS_DATA_FIFO {1} CONFIG.S00_HAS_REGSLICE {3} CONFIG.S01_HAS_REGSLICE {3} CONFIG.S02_HAS_REGSLICE {3} CONFIG.S03_HAS_REGSLICE {3} CONFIG.S00_HAS_DATA_FIFO {1} CONFIG.S01_HAS_DATA_FIFO {1} CONFIG.S02_HAS_DATA_FIFO {1} CONFIG.S03_HAS_DATA_FIFO {1} CONFIG.NUM_MI {1}] [get_bd_cells axi_interconnect_0]
### add AXI protocol converter for the processing system
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_converter_0
### create additional master port at the peripheral interconnect of each node
set_property -dict [list CONFIG.NUM_MI {2}] [get_bd_cells ps7_0_axi_periph]
set_property -dict [list CONFIG.NUM_MI {5}] [get_bd_cells microblaze_1_axi_periph]
set_property -dict [list CONFIG.NUM_MI {5}] [get_bd_cells microblaze_2_axi_periph]
set_property -dict [list CONFIG.NUM_MI {5}] [get_bd_cells microblaze_3_axi_periph]
### make axi, clk and rstn connections
#### AXI
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins mdm_1/S_AXI]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins ps7_0_axi_periph/M01_AXI] [get_bd_intf_pins axi_protocol_converter_0/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_protocol_converter_0/M_AXI] -boundary_type upper [get_bd_intf_pins axi_interconnect_0/S00_AXI]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_1_axi_periph/M04_AXI] [get_bd_intf_pins axi_interconnect_0/S01_AXI]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_2_axi_periph/M04_AXI] [get_bd_intf_pins axi_interconnect_0/S02_AXI]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins microblaze_3_axi_periph/M04_AXI] [get_bd_intf_pins axi_interconnect_0/S03_AXI]
#### Clocks
connect_bd_net [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_protocol_converter_0/aclk] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M04_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins microblaze_2_axi_periph/M04_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins microblaze_3_axi_periph/M04_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_interconnect_0/S02_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_interconnect_0/S03_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
#### Resets
connect_bd_net [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_protocol_converter_0/aresetn] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins microblaze_1_axi_periph/M04_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins microblaze_2_axi_periph/M04_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins microblaze_3_axi_periph/M04_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_interconnect_0/S02_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_interconnect_0/S03_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
connect_bd_net [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins rst_module/interconnect_aresetn]
## Fix address assignment
assign_bd_address
set_property range 128K [get_bd_addr_segs {processing_system7_0/Data/SEG_kth_axi_rni_static_0_S_AXI_reg}]
set_property range 128K [get_bd_addr_segs {microblaze_1/Data/SEG_kth_axi_rni_static_1_S_AXI_reg}]
set_property range 128K [get_bd_addr_segs {microblaze_2/Data/SEG_kth_axi_rni_static_2_S_AXI_reg}]
set_property range 128K [get_bd_addr_segs {microblaze_3/Data/SEG_kth_axi_rni_static_3_S_AXI_reg}]


# Create performance counter for measuring performance at each node
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_perf_mon:5.0 axi_perf_mon_0
set_property -dict [list CONFIG.C_NUM_OF_COUNTERS {10} CONFIG.C_ENABLE_PROFILE {0} CONFIG.C_ENABLE_EVENT_COUNT {1} CONFIG.ENABLE_EXT_TRIGGERS {0} CONFIG.C_ENABLE_ADVANCED {1}] [get_bd_cells axi_perf_mon_0]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "/processing_system7_0/FCLK_CLK0" }  [get_bd_intf_pins axi_perf_mon_0/S_AXI]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_perf_mon:5.0 axi_perf_mon_1
set_property -dict [list CONFIG.C_NUM_OF_COUNTERS {10} CONFIG.C_ENABLE_PROFILE {0} CONFIG.C_ENABLE_EVENT_COUNT {1} CONFIG.ENABLE_EXT_TRIGGERS {0} CONFIG.C_ENABLE_ADVANCED {1}] [get_bd_cells axi_perf_mon_1]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_1 (Periph)" Clk "/processing_system7_0/FCLK_CLK0" }  [get_bd_intf_pins axi_perf_mon_1/S_AXI]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_perf_mon:5.0 axi_perf_mon_2
set_property -dict [list CONFIG.C_NUM_OF_COUNTERS {10} CONFIG.C_ENABLE_PROFILE {0} CONFIG.C_ENABLE_EVENT_COUNT {1} CONFIG.ENABLE_EXT_TRIGGERS {0} CONFIG.C_ENABLE_ADVANCED {1}] [get_bd_cells axi_perf_mon_2]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_2 (Periph)" Clk "/processing_system7_0/FCLK_CLK0" }  [get_bd_intf_pins axi_perf_mon_2/S_AXI]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_perf_mon:5.0 axi_perf_mon_3
set_property -dict [list CONFIG.C_NUM_OF_COUNTERS {10} CONFIG.C_ENABLE_PROFILE {0} CONFIG.C_ENABLE_EVENT_COUNT {1} CONFIG.ENABLE_EXT_TRIGGERS {0} CONFIG.C_ENABLE_ADVANCED {1}] [get_bd_cells axi_perf_mon_3]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_3 (Periph)" Clk "/processing_system7_0/FCLK_CLK0" }  [get_bd_intf_pins axi_perf_mon_3/S_AXI]
## connect core and slot clocks
connect_bd_net [get_bd_pins axi_perf_mon_0/slot_0_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_perf_mon_0/core_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_perf_mon_1/slot_0_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_perf_mon_1/core_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_perf_mon_2/slot_0_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_perf_mon_2/core_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_perf_mon_3/slot_0_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins axi_perf_mon_3/core_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0]
## connect core_aresetn and slot_0_axi_aresetn resets 
connect_bd_net [get_bd_pins axi_perf_mon_0/core_aresetn] [get_bd_pins rst_module/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_perf_mon_0/slot_0_axi_aresetn] [get_bd_pins rst_module/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_perf_mon_1/core_aresetn] [get_bd_pins rst_module/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_perf_mon_1/slot_0_axi_aresetn] [get_bd_pins rst_module/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_perf_mon_2/core_aresetn] [get_bd_pins rst_module/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_perf_mon_2/slot_0_axi_aresetn] [get_bd_pins rst_module/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_perf_mon_3/core_aresetn] [get_bd_pins rst_module/peripheral_aresetn]
connect_bd_net [get_bd_pins axi_perf_mon_3/slot_0_axi_aresetn] [get_bd_pins rst_module/peripheral_aresetn]



# Create timer for counting at each node
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "/processing_system7_0/FCLK_CLK0" }  [get_bd_intf_pins axi_timer_0/S_AXI]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_1
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_1 (Periph)" Clk "/processing_system7_0/FCLK_CLK0" }  [get_bd_intf_pins axi_timer_1/S_AXI]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_2
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_2 (Periph)" Clk "/processing_system7_0/FCLK_CLK0" }  [get_bd_intf_pins axi_timer_2/S_AXI]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_3
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/microblaze_3 (Periph)" Clk "/processing_system7_0/FCLK_CLK0" }  [get_bd_intf_pins axi_timer_3/S_AXI]
## connect timer interrupt to microblaze
disconnect_bd_net /Ground_1_dout [get_bd_pins microblaze_1_xlconcat/In1]
connect_bd_net [get_bd_pins microblaze_1_xlconcat/In1] [get_bd_pins axi_timer_1/interrupt]
disconnect_bd_net /Ground_1_dout [get_bd_pins microblaze_2_xlconcat/In1]
connect_bd_net [get_bd_pins microblaze_2_xlconcat/In1] [get_bd_pins axi_timer_2/interrupt]
disconnect_bd_net /Ground_1_dout [get_bd_pins microblaze_3_xlconcat/In1]
connect_bd_net [get_bd_pins microblaze_3_xlconcat/In1] [get_bd_pins axi_timer_3/interrupt]



# *3* Generate the bitstream
#################################################################################################################################################################################################################################################################################################################

## Generate the 1st bitsteam
# Generating Bitstream - First time
make_wrapper -files [get_files $PROJECTFOLDER/$PROJECTNAME.srcs/sources_1/bd/BD/BD.bd] -top
add_files -norecurse $PROJECTFOLDER/$PROJECTNAME.srcs/sources_1/bd/BD/hdl/BD_wrapper.vhd
save_bd_design
generate_target all [get_files  $PROJECTFOLDER/$PROJECTNAME.srcs/sources_1/bd/BD/BD.bd]
#reset_run synth_1
#launch_runs impl_1 -to_step write_bitstream -jobs 8
## Launching SDK
file mkdir $PROJECTFOLDER/sw
write_hwdef -force  -file $PROJECTFOLDER/sw/BD_wrapper.hdf
#file copy -force $PROJECTFOLDER/$PROJECTNAME.runs/impl_1/BD_wrapper.sysdef $PROJECTFOLDER/sw/BD_wrapper.hdf


## Launch and Generate the ELF files
#launch_sdk -workspace $PROJECTFOLDER/sw -hwspec $PROJECTFOLDER/sw/BD_wrapper.hdf
### Alternatively, I'll try to leave this as a note for my future self (to automate the reproduction of the code using tcl in xcst)

## *4* Launching tool
#################################################################################################################################################################################################################################################################################################################
#exit
## command the shell
cd $PROJECTFOLDER/sw

xsdk -batch
setws .

# [[ XSCT Shell on XSDK ]] #
#xsdk -batch
create_project -type hw -name BD_wrapper_hw_platform_0 -hwspec BD_wrapper.hdf
### Create BSP (bsp_0)
create_project -type bsp -name bsp_0 -hwproject BD_wrapper_hw_platform_0 -proc ps7_cortexa9_0 -os standalone
##redefine stdin/out to mdm_1
configbsp -hw BD_wrapper_hw_platform_0 -bsp bsp_0 stdin mdm_1
configbsp -hw BD_wrapper_hw_platform_0 -bsp bsp_0 stdout mdm_1
updatemss -hw BD_wrapper_hw_platform_0 -mss bsp_0/system.mss
regenbsp -hw BD_wrapper_hw_platform_0 -bsp bsp_0
### Create BSP (bsp_1)
create_project -type bsp -name bsp_1 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_1 -os standalone
### Create BSP (bsp_2)
create_project -type bsp -name bsp_2 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_2 -os standalone
### Create BSP (bsp_3)
#create_project -type bsp -name bsp_3 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_3 -os standalone
### Create application project for microblaze 1
create_project -type app -name A9_0 -hwproject BD_wrapper_hw_platform_0 -proc ps7_cortexa9_0 -os standalone -lang C -app {Hello World} -bsp bsp_0
### Create application project for microblaze 1
create_project -type app -name microblaze_1 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_1 -os standalone -lang C -app {Hello World} -bsp bsp_1
### Create application project for microblaze 2
create_project -type app -name microblaze_2 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_2 -os standalone -lang C -app {Hello World} -bsp bsp_2
### Create application project for microblaze 3
#create_project -type app -name microblaze_3 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_3 -os standalone -lang C -app {Hello World} -bsp bsp_3
getprojects

# [[ Bash Shell from the project parent folder directory ]] #
### Import sources in shell
cp -Rf ../../sw_repo/A9_0/src/ A9_0/
cp -Rf ../../sw_repo/microblaze_1/src/ microblaze_1/
cp -Rf ../../sw_repo/microblaze_2/src/ microblaze_2/
#cp -Rf sw_repo/microblaze_3/src/ WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_3/



### 		       ###
#One may have to wait#
###		           ###


#***************From here the automation breaks ************************#
# [[ XSCT Shell on XSDK ]] #
setws .
#clean -type all
build -type all
## exit XSDK
#exit


#xsdk -batch
#***************From here the automation breaks ************************#
# [[ XSCT Shell on XSDK ]] #
setws .
#clean -type all
build -type all
## exit XSDK
exit

#***************From here the automation can be restarted ***************#
# [[ Bash Shell from the project parent folder directory ]] #
cd ..
#vivado -mode tcl


# [[ Tcl Console on Vivado ]] #
#open_project $PROJECTNAME.xpr
## Generate the bitsteam with ELF
#add_files -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf
add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"
#set_property used_in_simulation 0 [get_files /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf]
set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]
#add_files -fileset sim_1 -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf
add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"

#add_files -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf
add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"
#set_property used_in_simulation 0 [get_files /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf]
set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]
#add_files -fileset sim_1 -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf
add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"

#add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"
#set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]
#add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]
#set_property SCOPED_TO_CELLS { microblaze_1 } [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_CELLS" "microblaze_1" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]

set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]
set_property "SCOPED_TO_CELLS" "microblaze_2" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]

#set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]
#set_property "SCOPED_TO_CELLS" "microblaze_3" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]
#set_property SCOPED_TO_CELLS { microblaze_1 } [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_CELLS" "microblaze_1" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf}]
#set_property SCOPED_TO_CELLS { microblaze_2 } [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]
set_property "SCOPED_TO_CELLS" "microblaze_2" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]


#set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]
#set_property "SCOPED_TO_CELLS" "microblaze_3" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]

##
## Generate the bitsteam with ELF
add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"
#set_property used_in_simulation 0 [get_files /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf]
set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]
#add_files -fileset sim_1 -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf
add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"

#add_files -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf
add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"
#set_property used_in_simulation 0 [get_files /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf]
set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]
#add_files -fileset sim_1 -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf
add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"

#add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"
#set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]
#add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]
#set_property SCOPED_TO_CELLS { microblaze_1 } [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_CELLS" "microblaze_1" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]

set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]
set_property "SCOPED_TO_CELLS" "microblaze_2" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]

#set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]
#set_property "SCOPED_TO_CELLS" "microblaze_3" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]
#set_property SCOPED_TO_CELLS { microblaze_1 } [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_CELLS" "microblaze_1" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf}]
#set_property SCOPED_TO_CELLS { microblaze_2 } [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]
set_property "SCOPED_TO_CELLS" "microblaze_2" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]


#set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]
#set_property "SCOPED_TO_CELLS" "microblaze_3" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]

reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
### one can start gui to see what is going on
#start_gui
##stop_gui

### 		       ###
#One may have to wait#
###		           ###
wait_on_run impl_1

#export bitstream to sw
cp ../$PROJECTNAME.runs/impl_1/BD_wrapper.bit .

# *4* Connecting to UART
#################################################################################################################################################################################################################################################################################################################
# exit vivado
#exit

#xsdb
#connect
#targets -set -filter {name =~ "ARM*#0"}
#rst
#fpga BD_wrapper.bit
#loadhw BD_wrapper.hdf
#source BD_wrapper_hw_platform_0/ps7_init.tcl
#ps7_init
#ps7_post_config
#dow A9_0/Debug/A9_0.elf
#con
#targets -set -filter {name =~ "MicroBlaze Debug Module*"}
#jtagterminal


### 		  ###
#That's all folk#
###		      ###

#***************Other stuff one may consider to do ************************#
# [[ Vivado Gui ]] #
## Download into the FPGA
#open_hw
#open_hw_target
#set_property PROBES.FILE {} [lindex [get_hw_devices xc7z020_1] 0]
#set_property "PROGRAM.FILE" "[file normalize "$PROJDIR/$PROJECTNAME.runs/impl_1/BD_wrapper.bit"]" [lindex [get_hw_devices xc7z020_1] 0]
#program_hw_devices [lindex [get_hw_devices xc7z020_1] 0]
#refresh_hw_device [lindex [get_hw_devices xc7z020_1] 0]
#close_hw_target

### Regenerating bitsream after Software update (elf file changes)
#reset_run impl_1 -prev_step 
#launch_runs impl_1 -to_step write_bitstream -jobs 8

#################################################################################################################################################################################################################################################################################################################
