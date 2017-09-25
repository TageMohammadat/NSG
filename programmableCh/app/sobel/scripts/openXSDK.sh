#!/bin/bash
# file: runall.sh
### OS Linux: Ubuntu 16.04
### Vivado version: 2016.3 (installed in: /opt/Xilinx/Vivado/2016.3)
### Purpose: Xilinx bitstream file generation for hardware system with 1 dualcore ARM9 and 3 Microblazes communicating through KTH mesh 4x4 NoC (static with synchronous heartbeat)
### Presumptions:
#### 0. Project folder consists of: ip_repo, sw_repo, constraints.xdc, scripts
#### 1. Project work directory ,WORKDIR, is the directory to which ip_repo, sw_repo and other files are child folders to it: .
#### 2. Constraint file follows the master file: WORKDIR/constraints.xdc. All used IO pins are uncommented.
#### 3. IPs for NoC Switch Matrix and Network Interface are at WORKDIR/ip_repo/kth_axi_rni_static_1.0-c1 WORKDIR/ip_repo/kth_2dnoc_2x2x1_1.0-c1
#### 4. Project name is EMC2_Alten_KTH_Jun17 and elf files are under sw/microblaze_x/Debug/microblaze_x.elf or sw/a9_x/Debug/a9_x.elf where x is {0, 1}
#### 5. Board is Zynq Evaluation Board and FPGA fabric are synthesized to work at 50MHz
#### 6. HeartBeat signal frequency is 1Hz (later to 400Hz or 2 milli second period). Initial value was 1 MHz corresponding to 1 microsecond of period)
# Change log
## Created: 28 Mar 17
## Contact: mtme@kth.se
## Synopsis: Testing 2x2 NoC with 3 Microblaze systems connecting to the ARM
# Requires
## expect (apt install expect)

## *0* Launching tool
#################################################################################################################################################################################################################################################################################################################
pwd|xterm -e "cd $;source /opt/Xilinx/Vivado/2016.3/settings64.sh; expect -c 'spawn -noecho vivado -mode tcl; expect {%} {send [exec cat scripts/setenv.tcl scripts/openXSDK.tcl]}; interact';" & disown;
