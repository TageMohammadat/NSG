##########
### Created by Tage 2016/6/18
### Purpose: Xilinx bitstream file generation for hardware system with 4 Microblazes communicating through KTH mesh 4x4 NoC (static with synchronous heartbeat)
### Presumptions:
#### 1. IPs for NoC Switch Matrix and Network Interface are at ~/degreeproject/zedboard/noc2xd/ip_repo/kth_axi_rni_static_1.0-c1 ~/degreeproject/zedboard/noc2xd/ip_repo/kth_2dnoc_2x2x1_1.0-c1
#### 2. Constraint file follows the master file: zedboard_master_XDC_RevC_D_v2.xdc within the folder ~/DegreeProject/Zedboard with all used IO pins uncommented
#### 3. FPGA fabric are synthesized to work at 50MHz
#### 4. Board is ZedBoard
#### 5. Project generated in path: ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D and elf files are under sw/cpu_x_y/Debug/cpu_x_y.elf where x_y are 0_1, 1_0 and 1_1
#### 6. HeartBeat signal frequency is 50Hz


#Creating project, importing constraints file, setting language, IP repos and creating the board design for the entire project.
create_project NoC2x2_50Hz_AltenDemo_c1_D ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D -part xc7z020clg484-1 -force
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property target_language VHDL [current_project]
set_property  ip_repo_paths  {~/degreeproject/zedboard/noc2xd/ip_repo/kth_axi_rni_static_1.0-c1 ~/degreeproject/zedboard/noc2xd/ip_repo/kth_2dnoc_2x2x1_1.0-c1} [current_project]
update_ip_catalog
create_bd_design "BD"
add_files -fileset constrs_1 -norecurse ~/DegreeProject/Zedboard/zedboard_master_XDC_RevC_D_v2.xdc
import_files -fileset constrs_1 ~/DegreeProject/Zedboard/zedboard_master_XDC_RevC_D_v2.xdc

#Clocking Wizards to avoid using the Processing System
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 clk_wiz
set_property -dict [list CONFIG.USE_LOCKED {false} CONFIG.USE_RESET {false} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50} CONFIG.MMCM_DIVCLK_DIVIDE {1} CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} CONFIG.CLKOUT1_JITTER {151.636}] [get_bd_cells clk_wiz]
## Pin name in accordance to the constraints file.
create_bd_port -dir I GCLK
connect_bd_net [get_bd_ports GCLK] [get_bd_pins clk_wiz/clk_in1]

#Node 0 (0,0)
## Creating components
create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.5 cpu_0_0
create_bd_cell -type ip -vlnv kth.se:user:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_0
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0
set_property name pio_0_0 [get_bd_cells axi_gpio_0]
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_GPIO2_WIDTH {1} CONFIG.C_IS_DUAL {1} CONFIG.C_ALL_INPUTS {0} CONFIG.C_ALL_INPUTS_2 {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells pio_0_0]
## Pin name in accordance to the constraints file.
create_bd_port -dir O LD0
create_bd_port -dir I SW0
## Making connections
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {local_mem "64KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "0" clk "/clk_wiz/clk_out1 (50 MHz)" }  [get_bd_cells cpu_0_0]
connect_bd_net [get_bd_ports LD0] [get_bd_pins pio_0_0/gpio_io_o]
connect_bd_net [get_bd_ports SW0] [get_bd_pins pio_0_0/gpio2_io_i]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_0_0 (Periph)" Clk "Auto" }  [get_bd_intf_pins kth_axi_rni_static_0/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_0_0 (Periph)" Clk "Auto" }  [get_bd_intf_pins pio_0_0/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_0_0 (Periph)" Clk "Auto" }  [get_bd_intf_pins axi_timer_0/S_AXI]
## Configuration for RNI
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_0]
set_property -dict [list CONFIG.rni_number {0}] [get_bd_cells kth_axi_rni_static_0]
##location settings
set_property location {1 445 -197} [get_bd_cells cpu_0_0]
set_property location {1 426 -48} [get_bd_cells pio_0_0]
set_property location {1 433 126} [get_bd_cells cpu_0_0_axi_periph]
set_property location {1 394 -537} [get_bd_cells kth_axi_rni_static_0]
set_property location {1.5 649 -212} [get_bd_cells cpu_0_0_local_memory]
set_property location {2724 83} [get_bd_ports LD0]
set_property location {1.5 -306 110} [get_bd_cells axi_timer_0]
## Setting addresses of peripherals
set_property offset 0x70020000 [get_bd_addr_segs {cpu_0_0/Data/SEG_kth_axi_rni_static_0_S_AXI_reg}]
set_property range 128K [get_bd_addr_segs {cpu_0_0/Data/SEG_kth_axi_rni_static_0_S_AXI_reg}]
set_property offset 0x40000000 [get_bd_addr_segs {cpu_0_0/Data/SEG_pio_0_0_Reg}]
set_property offset 0x50000000 [get_bd_addr_segs {cpu_0_0/Data/SEG_axi_timer_0_Reg}]

#Node 1 (0,1)
##Creating components
create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.5 microblaze_0
set_property name cpu_0_1 [get_bd_cells microblaze_0]
copy_bd_objs /  [get_bd_cells {kth_axi_rni_static_0 pio_0_0}]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_1
## Pins name in accordance to the constraints file.
create_bd_port -dir O LD1
create_bd_port -dir I SW1
## Making connections
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {local_mem "64KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "0" clk "/clk_wiz/clk_out1 (50 MHz)" }  [get_bd_cells cpu_0_1]
connect_bd_net [get_bd_ports LD1] [get_bd_pins pio_0_1/gpio_io_o]
connect_bd_net [get_bd_ports SW1] [get_bd_pins pio_0_1/gpio2_io_i]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_0_1 (Periph)" Clk "Auto" }  [get_bd_intf_pins kth_axi_rni_static_1/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_0_1 (Periph)" Clk "Auto" }  [get_bd_intf_pins pio_0_1/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_0_1 (Periph)" Clk "Auto" }  [get_bd_intf_pins axi_timer_1/S_AXI]
## IP Configuration
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_1]
set_property -dict [list CONFIG.rni_number {1}] [get_bd_cells kth_axi_rni_static_1]
## Location settings
set_property location {3 1260 18} [get_bd_cells pio_0_1]
set_property location {3 1266 178} [get_bd_cells cpu_0_1_axi_periph]
set_property location {3 1284 -153} [get_bd_cells cpu_0_1]
set_property location {4 1623 -138} [get_bd_cells cpu_0_1_local_memory]
set_property location {3 1288 -512} [get_bd_cells kth_axi_rni_static_1]
set_property location {3.5 1382 200} [get_bd_cells axi_timer_1]
## Setting addresses of peripherals
set_property offset 0x70020000 [get_bd_addr_segs {cpu_0_1/Data/SEG_kth_axi_rni_static_1_S_AXI_reg}]
set_property range 128K [get_bd_addr_segs {cpu_0_1/Data/SEG_kth_axi_rni_static_1_S_AXI_reg}]
set_property offset 0x40000000 [get_bd_addr_segs {cpu_0_1/Data/SEG_pio_0_1_Reg}]
set_property offset 0x50000000 [get_bd_addr_segs {cpu_0_1/Data/SEG_axi_timer_1_Reg}]

#Node 2 (1,0)
##Creating components
copy_bd_objs /  [get_bd_cells {kth_axi_rni_static_1 cpu_0_1 pio_0_1}]
set_property name cpu_1_0 [get_bd_cells cpu_0_2]
set_property name pio_1_0 [get_bd_cells pio_0_2]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_2
## Pins name in accordance to the constraints file.
create_bd_port -dir O LD2
create_bd_port -dir I SW2
## Making connections
connect_bd_net [get_bd_ports LD2] [get_bd_pins pio_1_0/gpio_io_o]
connect_bd_net [get_bd_ports SW2] [get_bd_pins pio_1_0/gpio2_io_i]
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {local_mem "64KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "0" clk "/clk_wiz/clk_out1 (50 MHz)" }  [get_bd_cells cpu_1_0]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_1_0 (Periph)" Clk "Auto" }  [get_bd_intf_pins kth_axi_rni_static_2/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_1_0 (Periph)" Clk "Auto" }  [get_bd_intf_pins pio_1_0/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_1_0 (Periph)" Clk "Auto" }  [get_bd_intf_pins axi_timer_2/S_AXI]
## IP Configuration
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_2]
set_property -dict [list CONFIG.rni_number {2}] [get_bd_cells kth_axi_rni_static_2]
## Location settings
set_property location {1 321 -2281} [get_bd_cells cpu_1_0_axi_periph]
set_property location {1 317 -2114} [get_bd_cells pio_1_0]
set_property location {1 318 -1994} [get_bd_cells cpu_1_0]
set_property location {1 337 -1826} [get_bd_cells kth_axi_rni_static_2]
set_property location {2 603 -2006} [get_bd_cells cpu_1_0_local_memory]
set_property location {2 -296 -2373} [get_bd_cells axi_timer_2]
## Setting addresses of peripherals
set_property offset 0x70020000 [get_bd_addr_segs {cpu_1_0/Data/SEG_kth_axi_rni_static_2_S_AXI_reg}]
set_property range 128K [get_bd_addr_segs {cpu_1_0/Data/SEG_kth_axi_rni_static_2_S_AXI_reg}]
set_property offset 0x40000000 [get_bd_addr_segs {cpu_1_0/Data/SEG_pio_1_0_Reg}]
###Make extra Input to command DPR
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 pio_dpr
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_IS_DUAL {0} CONFIG.C_ALL_INPUTS {1} CONFIG.C_ALL_OUTPUTS {0}] [get_bd_cells pio_dpr]
create_bd_port -dir I SW7
connect_bd_net [get_bd_ports SW7] [get_bd_pins pio_dpr/gpio_io_i]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_1_0 (Periph)" Clk "Auto" }  [get_bd_intf_pins pio_dpr/S_AXI]
set_property offset 0x40010000 [get_bd_addr_segs {cpu_1_0/Data/SEG_pio_dpr_Reg}]
set_property offset 0x50000000 [get_bd_addr_segs {cpu_1_0/Data/SEG_axi_timer_2_Reg}]

#Node 3 (1,1)
##Creating components
copy_bd_objs /  [get_bd_cells {kth_axi_rni_static_2 cpu_1_0 pio_1_0}]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_3
## Pins name in accordance to the constraints file.
create_bd_port -dir O LD3
create_bd_port -dir I SW3
## Making connections
connect_bd_net [get_bd_ports LD3] [get_bd_pins pio_1_1/gpio_io_o]
connect_bd_net [get_bd_ports SW3] [get_bd_pins pio_1_1/gpio2_io_i]
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config {local_mem "64KB" ecc "None" cache "None" debug_module "Debug Only" axi_periph "Enabled" axi_intc "0" clk "/clk_wiz/clk_out1 (50 MHz)" }  [get_bd_cells cpu_1_1]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_1_1 (Periph)" Clk "Auto" }  [get_bd_intf_pins kth_axi_rni_static_3/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_1_1 (Periph)" Clk "Auto" }  [get_bd_intf_pins pio_1_1/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/cpu_1_1 (Periph)" Clk "Auto" }  [get_bd_intf_pins axi_timer_3/S_AXI]
## IP Configuration
set_property -dict [list CONFIG.use_64bit {0}] [get_bd_cells kth_axi_rni_static_3]
set_property -dict [list CONFIG.rni_number {3}] [get_bd_cells kth_axi_rni_static_3]
## Location settings
set_property location {3 1458 -1834} [get_bd_cells kth_axi_rni_static_3]
set_property location {3 1420 -2045} [get_bd_cells cpu_1_1]
set_property location {4 1839 -2038} [get_bd_cells cpu_1_1_local_memory]
set_property location {3 1412 -2169} [get_bd_cells pio_1_1]
set_property location {3 1412 -2334} [get_bd_cells cpu_1_1_axi_periph]
set_property location {5 1341 -2287} [get_bd_cells axi_timer_3]
## Setting addresses of peripherals
set_property offset 0x70020000 [get_bd_addr_segs {cpu_1_1/Data/SEG_kth_axi_rni_static_3_S_AXI_reg}]
set_property range 128K [get_bd_addr_segs {cpu_1_1/Data/SEG_kth_axi_rni_static_3_S_AXI_reg}]
set_property offset 0x40000000 [get_bd_addr_segs {cpu_1_1/Data/SEG_pio_1_1_Reg}]
set_property offset 0x50000000 [get_bd_addr_segs {cpu_1_1/Data/SEG_axi_timer_3_Reg}]


#Customising reset system
set_property name sys_rst [get_bd_cells rst_clk_wiz_50M]
## Creating reset signals
create_bd_port -dir I BTNC
create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 inverter
set_property location {1 362 726} [get_bd_cells inverter]
set_property -dict [list CONFIG.C_SIZE {1} CONFIG.C_OPERATION {not}] [get_bd_cells inverter]
connect_bd_net [get_bd_pins sys_rst/ext_reset_in] [get_bd_pins inverter/Res]
connect_bd_net [get_bd_ports BTNC] [get_bd_pins inverter/Op1]

#Creating/Configuring/Connecting the NoC Switch Network
## Creating Components
create_bd_cell -type ip -vlnv kth.se:user:kth_2DNoC_2x2x1_c1:1.0 kth_2DNoC_2x2x1_0
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/reset] [get_bd_pins sys_rst/peripheral_reset]
connect_bd_net [get_bd_pins kth_2DNoC_2x2x1_0/clk] [get_bd_pins clk_wiz/clk_out1]
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
## Configuration to 50Hz
set_property -dict [list CONFIG.HeartBeatTimerConst {100000}] [get_bd_cells kth_2DNoC_2x2x1_0]
## Setting Location
set_property location {1 288 -1012} [get_bd_cells Ground_1]
set_property location {1 288 -1252} [get_bd_cells Ground_64]
set_property location {1 288 -1092} [get_bd_cells Ground_8]
set_property location {1 288 -1172} [get_bd_cells Ground_15]
set_property location {2 911 -1188} [get_bd_cells kth_2DNoC_2x2x1_0]


# Generating Bitstream - First time
make_wrapper -files [get_files ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.srcs/sources_1/bd/BD/BD.bd] -top
add_files -norecurse ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.srcs/sources_1/bd/BD/hdl/BD_wrapper.vhd
save_bd_design
generate_target all [get_files  ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.srcs/sources_1/bd/BD/BD.bd]
reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 4
## Launching SDK
file mkdir ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw
file copy -force ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.runs/impl_1/BD_wrapper.sysdef ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/BD_wrapper.hdf
launch_sdk -workspace ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw -hwspec ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/BD_wrapper.hdf

# Generating Bitstream - After ELF files are developed
make_wrapper -files [get_files ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.srcs/sources_1/bd/BD/BD.bd] -top
add_files -norecurse ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.srcs/sources_1/bd/BD/hdl/BD_wrapper.vhd
save_bd_design
export_ip_user_files -of_objects [get_files ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.srcs/sources_1/bd/BD/BD.bd] -no_script -force -quiet
add_files -norecurse ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_0/Debug/cpu_0_0.elf
set_property used_in_simulation 0 [get_files ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_0/Debug/cpu_0_0.elf]
add_files -norecurse ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_1/Debug/cpu_0_1.elf
set_property used_in_simulation 0 [get_files ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_1/Debug/cpu_0_1.elf]
add_files -norecurse ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_0/Debug/cpu_1_0.elf
set_property used_in_simulation 0 [get_files ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_0/Debug/cpu_1_0.elf]
add_files -norecurse ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_1/Debug/cpu_1_1.elf
set_property used_in_simulation 0 [get_files ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_1/Debug/cpu_1_1.elf]
add_files -fileset sim_1 -norecurse {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_1/Debug/cpu_1_1.elf ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_1/Debug/cpu_0_1.elf ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_0/Debug/cpu_1_0.elf ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_0/Debug/cpu_0_0.elf}
set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sources_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_0/Debug/cpu_0_0.elf}]
set_property SCOPED_TO_CELLS { cpu_0_1 } [get_files -all -of_objects [get_fileset sources_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_0/Debug/cpu_0_0.elf}]
set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sources_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_1/Debug/cpu_0_1.elf}]
set_property SCOPED_TO_CELLS { cpu_0_1 } [get_files -all -of_objects [get_fileset sources_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_1/Debug/cpu_0_1.elf}]
set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sources_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_0/Debug/cpu_1_0.elf}]
set_property SCOPED_TO_CELLS { cpu_1_0 } [get_files -all -of_objects [get_fileset sources_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_0/Debug/cpu_1_0.elf}]
set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sources_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_1/Debug/cpu_1_1.elf}]
set_property SCOPED_TO_CELLS { cpu_1_1 } [get_files -all -of_objects [get_fileset sources_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_1/Debug/cpu_1_1.elf}]
set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_1/Debug/cpu_1_1.elf}]
set_property SCOPED_TO_CELLS { cpu_1_1 } [get_files -all -of_objects [get_fileset sim_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_1/Debug/cpu_1_1.elf}]
set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_1/Debug/cpu_0_1.elf}]
set_property SCOPED_TO_CELLS { cpu_0_1 } [get_files -all -of_objects [get_fileset sim_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_1/Debug/cpu_0_1.elf}]
set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_0/Debug/cpu_1_0.elf}]
set_property SCOPED_TO_CELLS { cpu_1_0 } [get_files -all -of_objects [get_fileset sim_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_1_0/Debug/cpu_1_0.elf}]
set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_0/Debug/cpu_0_0.elf}]
set_property SCOPED_TO_CELLS { cpu_0_0 } [get_files -all -of_objects [get_fileset sim_1] {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/sw/cpu_0_0/Debug/cpu_0_0.elf}]
export_simulation -of_objects [get_files ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.srcs/sources_1/bd/BD/BD.bd] -directory ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.ip_user_files/sim_scripts -force -quiet
generate_target all [get_files  ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.srcs/sources_1/bd/BD/BD.bd]
reset_run impl_1 -prev_step 
launch_runs impl_1 -to_step write_bitstream -jobs 4

## Downloading bitstream
open_hw
connect_hw_server
open_hw_target
set_property PROGRAM.FILE {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.runs/impl_1/BD_wrapper.bit} [lindex [get_hw_devices] 1]
current_hw_device [lindex [get_hw_devices] 1]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 1]
set_property PROBES.FILE {} [lindex [get_hw_devices] 1]
set_property PROGRAM.FILE {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.runs/impl_1/BD_wrapper.bit} [lindex [get_hw_devices] 1]
program_hw_devices [lindex [get_hw_devices] 1]
refresh_hw_device [lindex [get_hw_devices] 1]

## Regenerating bitsream after Software update (elf file changes)
reset_run impl_1 -prev_step 
launch_runs impl_1 -to_step write_bitstream -jobs 4

## Downloading bitstream when the board is already connected
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 1]
set_property PROBES.FILE {} [lindex [get_hw_devices] 1]
set_property PROGRAM.FILE {~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.runs/impl_1/BD_wrapper.bit} [lindex [get_hw_devices] 1]
program_hw_devices [lindex [get_hw_devices] 1]
refresh_hw_device [lindex [get_hw_devices] 1]

## Simulating design
export_simulation -of_objects [get_files ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.srcs/sources_1/bd/BD/BD.bd] -directory ~/DegreeProject/Zedboard/NoC2xD/NoC2x2_50Hz_AltenDemo_c1_D/NoC2x2_50Hz_AltenDemo_c1_D.ip_user_files/sim_scripts -force -quiet
launch_simulation
add_wave {{/BD_wrapper/BTNC}} {{/BD_wrapper/GCLK}} {{/BD_wrapper/LD0}} {{/BD_wrapper/LD1}} {{/BD_wrapper/LD2}} {{/BD_wrapper/LD3}} {{/BD_wrapper/SW0}} {{/BD_wrapper/SW1}} {{/BD_wrapper/SW2}} {{/BD_wrapper/SW3}} 
add_wave {{/BD_wrapper/BD_i/clk_wiz/inst/clk_out1}} 
add_wave {{/BD_wrapper/BD_i/kth_2DNoC_2x2x1_0}} 
add_wave {{/BD_wrapper/BD_i/kth_axi_rni_static_0/U0/kth_axi_rni_static_0/USER_LOGIC_I/interface}} 
add_wave {{/BD_wrapper/BD_i/kth_axi_rni_static_2/U0/kth_axi_rni_static_0/USER_LOGIC_I/interface}}
add_force {/BD_wrapper/GCLK} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
add_force {/BD_wrapper/BTNC} -radix hex {1 0ns} {0 5000000ps} -repeat_every 10000000ps -cancel_after 10us
add_force {/BD_wrapper/BTNC} -radix hex {0 10us}
add_force {/BD_wrapper/SW0} -radix hex {0 0ns} {1 50000ps} -repeat_every 100000ps
add_force {/BD_wrapper/SW1} -radix hex {0 0ns} {1 50000ps} -repeat_every 100000ps
add_force {/BD_wrapper/SW2} -radix hex {0 0ns} {1 50000ps} -repeat_every 100000ps
add_force {/BD_wrapper/SW3} -radix hex {0 0ns} {1 50000ps} -repeat_every 100000ps
restart
run 1ms
