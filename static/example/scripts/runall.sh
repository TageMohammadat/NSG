#!/bin/bash
# file: WP3_2x2Nostrum_ZeroRelease_1703_vivado2016.3_ubuntu16.04.tcl.sh
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
# Requires
## expect (apt install expect)

## *0* Launching tool
#################################################################################################################################################################################################################################################################################################################
#cd ~/XilinxDev/SAFEPOWER/WP3/ZeroRelease/
source /opt/Xilinx/Vivado/2016.3/settings64.sh
#xclip -in scripts/WP3_2x2Nostrum_ZeroRelease_1703_vivado2016.3_ubuntu16.04.tcl;
#xclip -out | vivado -mode batch #does not work
#vivado -mode batch -source WP3_2x2Nostrum_ZeroRelease_1703_vivado2016.3_ubuntu16.04.tcl
#xclip -o | clipit
#clipit -c | vivado -mode tcl &
#cat scripts/WP3_2x2Nostrum_ZeroRelease_1703_vivado2016.3_ubuntu16.04.tcl | ./scripts/runvivado.sh
expect -c 'spawn -noecho vivado -mode tcl; expect {%} {send [exec cat scripts/runall.tcl]}; interact'
