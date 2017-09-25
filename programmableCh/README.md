# WP3-Nostrum-FirstRelease
Repo where HW and SW for Zynq programmable logic subsystem can be generated.
To run the script correctly one needs to install package 'expect' by propably running:
sudo apt install expect

## About this GIT bundle
This bundle contains scripts that automate 
1- the generation of vivado and sdk projects from sources (i.e. sw_repo and ip_repo, constraints.xdc)
2- the generation of all necessary files and running of executable on a powered-on zynq zc702 evaluation board connected to the computer from sources (i.e. sw_repo and ip_repo, constraints.xdc)

## About the intended run:
The design can be described as follows:
### HARDWARE:
-- Computational resources: 4 processors -- 1 hard processor system (processing system) and 3 soft processor systems (Microblaze).
-- Communication resources: network-on-chip (NoC) providing message-passing mechanism. The NoC is 2x2  mesh topology 'Nostrum'.
-- The Processing system (Dual ARM) is instantiated and connected to the Programmable Logic via a secure Network Interface (NI).
-- Three MicroBlazes.
-- Other peripheries are provided for debugging (timers, performance counters, etc.).
-- Each processor should have inbox and outbox channels to allow bidirectional communication with the other processors.
-- Maximum message size: 126 integers
### SOFTWARE:
-- One active ARM processor running one process receiving messages from the MicroBlazes (and printing them on stdout), whereas the Microblazes receive a value and write it to the LED.
-- Two MicroBlazes run two concurrent processes sending a continuously incrementing value message to the ARM while independently alternately toggling two distinct LEDs.
-- The ARM reads the received values and write them to the stdout. to be writen in the LED.
-- The Microblaze Debug Module (accessed via JTAG) is used as stdout for all processors.
- Notes:
-- The subsystem residing in the programmable logic (the Microblazes and the NoC) are fed via FCLK0 at 50MHz.
-- The FCLK_RESET_N software-controlled reset is connected as an auxiliary reset for the subsystem on the programmable logic. It still has external reset controlled by push button SW7 (GPIO_SW_S).
-- Each soft processor is connected to Timer, self-timed-pausing IP, performance monitor, GPIO (LEDs DS_19, DS_20, DS_21) and Network Interface.


## Assumptions:
The scripts assume that:
- Xilinx Vivado and XSDK version 2016.3 are installed
- The installation directory is /opt/Xilinx/Vivado/2016.3, otherwise source it manually.
- The installation of the package 'expect' is done.

## USAGE:
### To generate vivado and sdk project, 
- open a terminal in the folder where the sources are
- make sure that you have sourced vivado settings (e.g. source /opt/Xilinx/Vivado/2016.3/settings64.sh)
- make sure that you have 'expect' package installed, otherwise install it (i.e. sudo apt install expect)
- execute command 'make' from terminal (CTRL+ALT+t) from inside the folder 'WP3_2x2Nostrum_FirstRelease_1704' 
Generation results for vivado project is in folder 'prjoect'
Generation results for XSDK project is in folder 'prjoect/sw'
.bitstream is generated in 'prjoect/sw/BD_wrapper.bit'
.elf files are in
-'prjoect/sw/A9_0/Debug/A9_0.elf'
-'prjoect/sw/microblaze_1/Debug/microblaze_1.elf'
-'prjoect/sw/microblaze_2/Debug/microblaze_2.elf'
### To view/modify the HW project
- issue command 'make openVIVADO'
### To view/modify the SW project
- issue command 'make openSDK'
### To run executables on the Zynq 702 Evaluation board
- issue command 'make runEXE'


For questions please contact Tage <mtme@kth.se>
