# WP3-Nostrum-FirstRelease
# Overview
Repo where HW and SW for Zynq programmable logic subsystem can be generated.
This release contains a Sobel filter example on Nostrum-based quadprocessor. Nostrum is configured with run-time programmable asynchronous communication, interrupt and TDN assignemnts such that no communication conflicts can occur even for the general case where every processor is communicating concurrently with other processors.
To run the script correctly one needs to install package 'expect' by propably running:
sudo apt install expect

# About this GIT bundle
This bundle contains scripts that automate 
1- the generation of vivado and sdk projects from sources (i.e. sw_repo and ip_repo, constraints.xdc)
2- the generation of all necessary files and running of executable on a powered-on zynq zc702 evaluation board connected to the computer from sources (i.e. sw_repo and ip_repo, constraints.xdc)
Additionally, comes with this bundle an experimental version of Nostrum NoC with reprogrammable asynchronous channels.

## About the intended run:
The design can be described as follows:
### HARDWARE:
-- Computational resources: 4 processors -- 1 hard processor system (processing system) and 3 soft processor systems (Microblaze).
-- Communication resources: network-on-chip (NoC) providing message-passing mechanism. The NoC is 2x2  mesh topology 'Nostrum'.
-- The Processing system (Dual ARM) is instantiated and connected to the Programmable Logic via a secure Network Interface (NI).
-- Three MicroBlazes.
-- Other peripheries are provided for debugging (timers, performance counters, etc.).
-- Each processor should have inbox and outbox channels to allow bidirectional communication with the other processors.
-- Each Microblaze has 128KB of memory.
#### Nostrum specific:
-- Maximum message (packet) size: 80 integers (1 integer is: 32-bit)
-- Flit width: 32 bit
-- Flit inject slots (TDNs) = 4
-- Allowable slots: 1 (specific solution for 2x2 NoC with all to all communication)
-- Flit injection rate: 25%
-- Maximum worst case delay to free NoC from full load (everyone to everyone at 80 integers) without packets lost: 19ms (experimentally characterised)
### SOFTWARE:
-- Sobel filter example whereby, the ARM produces two tokens to Microblaze 1 and Microblaze 2
-- Microblaze 1 and 2 process the tokens and produce one token each to Microblaze 3.
-- Microblaze 3 process the tokens from Microblaze 1 and 2 and finishes the processing.
-- Token size is 80x32-bit
-- stdout/in is shared by processors.
-- Interrupt is used for synchronising the time of message received.
-- The processors send empty messages to each other to exercise the NoC.

## NOTES:
-- The Nostrum NoC has been configured with time slots such that messages never collides regarless on when the processor injects it. This is due to the specific time slot assignement taking advantage of the temporalily-disjoint networks within Nostrum. DOI: 10.1109/DATE.2004.1269001
-- The Microblaze Debug Module (accessed via JTAG) is used as stdout for all processors.
-- Profiling of processes can be done via timers/performance counters.
-- PWM-based timer is connected to the microblazes to emulate a core-gating power management at the Microblazes.
-- Time-triggered functionality on the processing can be emulated via timers/performance counters. (To initialise the platform).
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
- execute command 'make' from terminal (CTRL+ALT+t) from inside the folder 'WP3_2x2Nostrum_<version-xxx>' 
Generation results for vivado project is in folder 'prjoect'
Generation results for XSDK project is in folder 'prjoect/sw'
.bitstream is generated in 'prjoect/sw/BD_wrapper.bit'
.elf files are in
-'prjoect/sw/A9_0/Debug/A9_0.elf'
-'prjoect/sw/microblaze_1/Debug/microblaze_1.elf'
-'prjoect/sw/microblaze_2/Debug/microblaze_2.elf'
-'prjoect/sw/microblaze_2/Debug/microblaze_3.elf'
### To view/modify the HW project,
- issue command 'make openVIVADO'
### To view/modify the SW project
- issue command 'make openXSDK'
### To run executables on the Zynq 702 Evaluation board
- issue command 'make runEXE'


# Nostrum programming interface
The following are regsiter level details for the most needed register accesses.

## Processes (ID): p0_pid (0), p1_pid (1), p2_pid (2), p3_pid (3)

# NODE 0 (Dual Cortex ARM A9)
## Channels: 
### Receive channels (ID): 
recv_channel_p0_from_p3 (0), recv_channel_p0_from_p2 (1), recv_channel_p0_from_p1 (2), recv_channel_p0_from_p0 (3)
### Send channels (ID): 
send_channel_p0_to_p3 (0), send_channel_p0_to_p2 (1), send_channel_p0_to_p1 (2), send_channel_p0_to_p0 (3)

## Channel programming:
### Send channels: C code and equivalent register accesses
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p3,1,0,1,1,p3_pid,p0_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(0<<2)), ((1<<28)+(0<<24)+(1<<20)+(1<<16)+(3<<8)+0))
Xil_Out32(0x70020200,0x10110300)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p2,1,0,1,0,p2_pid,p0_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(1<<2)), ((1<<28)+(0<<24)+(1<<20)+(0<<16)+(2<<8)+0))
Xil_Out32(0x70020204,0x10100200)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p1,1,0,0,1,p1_pid,p0_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(2<<2)), ((1<<28)+(0<<24)+(0<<20)+(1<<16)+(1<<8)+0))
Xil_Out32(0x70020208,0x10010100)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p0,1,0,0,0,p0_pid,p0_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(3<<2)), ((1<<28)+(0<<24)+(0<<20)+(0<<16)+(0<<8)+0))
Xil_Out32(0x7002020C,0x10000000)
### Receive channels: C code and equivalent register accesses
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p3,COMB,1,p0_pid,p3_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(0<<2)), ((1<<17)+(1<<16)+(0<<8)+3))
Xil_Out32(0x70020300,0x30003)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p2,COMB,1,p0_pid,p2_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(1<<2)), ((1<<17)+(1<<16)+(0<<8)+2))
Xil_Out32(0x70020304,0x30002)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p1,COMB,1,p0_pid,p1_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(2<<2)), ((1<<17)+(1<<16)+(0<<8)+1))
Xil_Out32(0x70020308,0x30001)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p0,COMB,1,p0_pid,p0_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(3<<2)), ((1<<17)+(1<<16)+(0<<8)+0))
Xil_Out32(0x7002030C,0x30000)

## Message Inbox status (0 value indicates no message)
### C code and equivalent register accesses
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p0_from_p3)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (0<<2))
0x70020100
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p0_from_p2) 
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (1<<2))
0x70020104
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p0_from_p1)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (2<<2))
0x70020108
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p0_from_p0)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (3<<2))
0x7002010C

## Clearing flag to acknowledge that the message is read
### C code and equivalent register accesses
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p0_from_p3)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (0))
Xil_Out32(0x7002000C,0)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p0_from_p2)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (1))
Xil_Out32(0x7002000C,1)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p0_from_p1)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (2))
Xil_Out32(0x7002000C,2)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p0_from_p0)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (3))
Xil_Out32(0x7002000C,3)

## Clearing flag to acknowledge that the interrupt is attended
### C code and equivalent register accesses
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p0_from_p3);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (0))
Xil_Out32(0x70020004,0)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p0_from_p2);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (1))
Xil_Out32(0x70020004,1)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p0_from_p1);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (2))
Xil_Out32(0x70020004,2)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p0_from_p0);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (3))
Xil_Out32(0x70020004,3)

## Send triggering command for e.g. message size in 32-bit words (from 1 to 80), no priority (i.e. 0).
### C code and equivalent register accesses
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p3,p0_out3_priority,p0_out3_msg_len)
Xil_Out32((0x70020000) + (0), (((0<<12)+(p0_out3_priority<<10)+(p0_out3_msg_len))))
Xil_Out32(0x70020000,0x0000+p0_out3_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p2,p0_out2_priority,p0_out2_msg_len)
Xil_Out32((0x70020000) + (0), (((1<<12)+(p0_out2_priority<<10)+(p0_out2_msg_len))))
Xil_Out32(0x70020000,0x1000+p0_out2_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p1,p0_out1_priority,p0_out1_msg_len)
Xil_Out32((0x70020000) + (0), (((2<<12)+(p0_out1_priority<<10)+(p0_out1_msg_len))))
Xil_Out32(0x70020000,0x2000+p0_out1_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p0,p0_out0_priority,p0_out0_msg_len)
Xil_Out32((0x70020000) + (0), (((3<<12)+(p0_out0_priority<<10)+(p0_out0_msg_len))))
Xil_Out32(0x70020000,0x3000+p0_out0_msg_len)

## Inbox/Outbox channels: 
### Inbox Channel base-address:
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p3),0)
((0x70020000+0x00010000+(0*0x00000200))+0)
0x70030000
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p2),0)
((0x70020000+0x00010000+(1*0x00000200))+0)
0x70030200
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p1),0)
((0x70020000+0x00010000+(2*0x00000200))+0)
0x70030400
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p0),0)
((0x70020000+0x00010000+(3*0x00000200))+0)
0x70030600
### Outbox Channel base-address:
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p3),0)
((0x70020000+0x00008000+(0*0x00000200))+0)
0x70028000
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p2),0)
((0x70020000+0x00008000+(1*0x00000200))+0)
0x70028200
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p1),0)
((0x70020000+0x00008000+(2*0x00000200))+0)
0x70028400
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p0),0)
((0x70020000+0x00008000+(3*0x00000200))+0)
0x70028600

# NODE 1 (Microblaze 1)
## Channels: 
### Receive channels (ID): recv_channel_p1_from_p3 (0), recv_channel_p1_from_p2 (1), recv_channel_p1_from_p1 (2), recv_channel_p1_from_p0 (3)
### Send channels (ID): send_channel_p1_to_p3 (0), send_channel_p1_to_p2 (1), send_channel_p1_to_p1 (2), send_channel_p1_to_p0 (3)

## Channel programming:
### Send channels: C code and equivalent register accesses
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p1_to_p3,1,0,1,1,p3_pid,p1_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(0<<2)), ((1<<28)+(0<<24)+(1<<20)+(1<<16)+(3<<8)+1))
Xil_Out32(0x70020200,0x10110301)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p1_to_p2,1,0,1,0,p2_pid,p1_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(1<<2)), ((1<<28)+(0<<24)+(1<<20)+(0<<16)+(2<<8)+1))
Xil_Out32(0x70020204,0x10100201)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p1_to_p1,1,0,0,1,p1_pid,p1_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(2<<2)), ((1<<28)+(0<<24)+(0<<20)+(1<<16)+(1<<8)+1))
Xil_Out32(0x70020208,0x10010101)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p1_to_p0,1,0,0,0,p0_pid,p1_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(3<<2)), ((1<<28)+(0<<24)+(0<<20)+(0<<16)+(0<<8)+1))
Xil_Out32(0x7002020C,0x10000001)
### Receive channels: C code and equivalent register accesses
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p1_from_p3,COMB,1,p1_pid,p3_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(0<<2)), ((1<<17)+(1<<16)+(1<<8)+3))
Xil_Out32(0x70020300,0x30103)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p1_from_p2,COMB,1,p1_pid,p2_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(1<<2)), ((1<<17)+(1<<16)+(1<<8)+2))
Xil_Out32(0x70020304,0x30102)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p1_from_p1,COMB,1,p1_pid,p1_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(2<<2)), ((1<<17)+(1<<16)+(1<<8)+1))
Xil_Out32(0x70020308,0x30101)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p1_from_p0,COMB,1,p1_pid,p0_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(3<<2)), ((1<<17)+(1<<16)+(1<<8)+0))
Xil_Out32(0x7002030C,0x30100)

## Message Inbox status
### C code and equivalent register accesses
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p1_from_p3)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (0<<2))
0x70020100
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p1_from_p2) 
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (1<<2))
0x70020104
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p1_from_p1)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (2<<2))
0x70020108
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p1_from_p0)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (3<<2))
0x7002010C

## Clearing flag to acknowledge that the message is read
### C code and equivalent register accesses
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p1_from_p3)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (0))
Xil_Out32(0x7002000C,0)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p1_from_p2)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (1))
Xil_Out32(0x7002000C,1)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p1_from_p1)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (2))
Xil_Out32(0x7002000C,2)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p1_from_p0)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (3))
Xil_Out32(0x7002000C,3)

## Clearing flag to acknowledge that the interrupt is attended
### C code and equivalent register accesses
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p1_from_p3);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (0))
Xil_Out32(0x70020004,0)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p1_from_p2);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (1))
Xil_Out32(0x70020004,1)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p1_from_p1);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (2))
Xil_Out32(0x70020004,2)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p1_from_p0);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (3))
Xil_Out32(0x70020004,3)

## Send triggering command for e.g. message size in 32-bit words (from 1 to 80), no priority (i.e. 0).
### C code and equivalent register accesses
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p3,p1_out3_priority,p1_out3_msg_len)
Xil_Out32((0x70020000) + (0), (((0<<12)+(p1_out3_priority<<10)+(p1_out3_msg_len))))
Xil_Out32(0x70020000,0x0000+p1_out3_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p2,p1_out2_priority,p1_out2_msg_len)
Xil_Out32((0x70020000) + (0), (((1<<12)+(p1_out2_priority<<10)+(p1_out2_msg_len))))
Xil_Out32(0x70020000,0x1000+p1_out2_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p1,p1_out1_priority,p1_out1_msg_len)
Xil_Out32((0x70020000) + (0), (((2<<12)+(p1_out1_priority<<10)+(p1_out1_msg_len))))
Xil_Out32(0x70020000,0x2000+p1_out1_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p0,p1_out0_priority,p1_out0_msg_len)
Xil_Out32((0x70020000) + (0), (((3<<12)+(p1_out0_priority<<10)+(p1_out0_msg_len))))
Xil_Out32(0x70020000,0x3000+p1_out0_msg_len)

## Inbox/Outbox channels: 
### Inbox Channel base-address:
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p3),0)
((0x70020000+0x00010000+(0*0x00000200))+0)
0x70030000
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p2),0)
((0x70020000+0x00010000+(1*0x00000200))+0)
0x70030200
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p1),0)
((0x70020000+0x00010000+(2*0x00000200))+0)
0x70030400
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p0),0)
((0x70020000+0x00010000+(3*0x00000200))+0)
0x70030600
### Outbox Channel base-address:
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p3),0)
((0x70020000+0x00008000+(0*0x00000200))+0)
0x70028000
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p2),0)
((0x70020000+0x00008000+(1*0x00000200))+0)
0x70028200
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p1),0)
((0x70020000+0x00008000+(2*0x00000200))+0)
0x70028400
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p0),0)
((0x70020000+0x00008000+(3*0x00000200))+0)
0x70028600


# NODE 2 (Microblaze 2)
## Channels: 
### Receive channels (ID): recv_channel_p2_from_p3 (0), recv_channel_p2_from_p2 (1), recv_channel_p2_from_p1 (2), recv_channel_p2_from_p0 (3)
### Send channels (ID): send_channel_p2_to_p3 (0), send_channel_p2_to_p2 (1), send_channel_p2_to_p1 (2), send_channel_p2_to_p0 (3)

## Channel programming:
### Send channels: C code and equivalent register accesses
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p2_to_p3,4,0,1,1,p3_pid,p2_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(0<<2)), ((4<<28)+(0<<24)+(1<<20)+(1<<16)+(3<<8)+2))
Xil_Out32(0x70020200,0x40110302)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p2_to_p2,4,0,1,0,p2_pid,p2_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(1<<2)), ((4<<28)+(0<<24)+(1<<20)+(0<<16)+(2<<8)+2))
Xil_Out32(0x70020204,0x40100202)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p2_to_p1,4,0,0,1,p1_pid,p2_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(2<<2)), ((4<<28)+(0<<24)+(0<<20)+(1<<16)+(1<<8)+2))
Xil_Out32(0x70020208,0x40010102)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p2_to_p0,4,0,0,0,p0_pid,p2_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(3<<2)), ((4<<28)+(0<<24)+(0<<20)+(0<<16)+(0<<8)+2))
Xil_Out32(0x7002020C,0x40000002)
### Receive channels: C code and equivalent register accesses
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p2_from_p3,COMB,1,p2_pid,p3_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(0<<2)), ((1<<17)+(1<<16)+(2<<8)+3))
Xil_Out32(0x70020300,0x30203)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p2_from_p2,COMB,1,p2_pid,p2_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(1<<2)), ((1<<17)+(1<<16)+(2<<8)+2))
Xil_Out32(0x70020304,0x30202)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p2_from_p1,COMB,1,p2_pid,p1_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(2<<2)), ((1<<17)+(1<<16)+(2<<8)+1))
Xil_Out32(0x70020308,0x30201)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p2_from_p0,COMB,1,p2_pid,p0_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(3<<2)), ((1<<17)+(1<<16)+(2<<8)+0))
Xil_Out32(0x7002030C,0x30200)

## Message Inbox status
### C code and equivalent register accesses
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p2_from_p3)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (0<<2))
0x70020100
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p2_from_p2) 
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (1<<2))
0x70020104
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p2_from_p1)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (2<<2))
0x70020108
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p2_from_p0)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (3<<2))
0x7002010C

## Clearing flag to acknowledge that the message is read
### C code and equivalent register accesses
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p2_from_p3)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (0))
Xil_Out32(0x7002000C,0)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p2_from_p2)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (1))
Xil_Out32(0x7002000C,1)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p2_from_p1)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (2))
Xil_Out32(0x7002000C,2)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p2_from_p0)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (3))
Xil_Out32(0x7002000C,3)

## Clearing flag to acknowledge that the interrupt is attended
### C code and equivalent register accesses
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p2_from_p3);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (0))
Xil_Out32(0x70020004,0)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p2_from_p2);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (1))
Xil_Out32(0x70020004,1)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p2_from_p1);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (2))
Xil_Out32(0x70020004,2)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p2_from_p0);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (3))
Xil_Out32(0x70020004,3)

## Send triggering command for e.g. message size in 32-bit words (from 1 to 80), no priority (i.e. 0).
### C code and equivalent register accesses
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p2_to_p3,p2_out3_priority,p2_out3_msg_len)
Xil_Out32((0x70020000) + (0), (((0<<12)+(p2_out3_priority<<10)+(p2_out3_msg_len))))
Xil_Out32(0x70020000,0x0000+p2_out3_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p2_to_p2,p2_out2_priority,p2_out2_msg_len)
Xil_Out32((0x70020000) + (0), (((1<<12)+(p2_out2_priority<<10)+(p2_out2_msg_len))))
Xil_Out32(0x70020000,0x1000+p2_out2_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p2_to_p1,p2_out1_priority,p2_out1_msg_len)
Xil_Out32((0x70020000) + (0), (((2<<12)+(p2_out1_priority<<10)+(p2_out1_msg_len))))
Xil_Out32(0x70020000,0x2000+p2_out1_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p2_to_p0,p2_out0_priority,p2_out0_msg_len)
Xil_Out32((0x70020000) + (0), (((3<<12)+(p2_out0_priority<<10)+(p2_out0_msg_len))))
Xil_Out32(0x70020000,0x3000+p2_out0_msg_len)

## Inbox/Outbox channels: 
### Inbox Channel base-address:
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p3),0)
((0x70020000+0x00010000+(0*0x00000200))+0)
0x70030000
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p2),0)
((0x70020000+0x00010000+(1*0x00000200))+0)
0x70030200
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p1),0)
((0x70020000+0x00010000+(2*0x00000200))+0)
0x70030400
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p0),0)
((0x70020000+0x00010000+(3*0x00000200))+0)
0x70030600
### Outbox Channel base-address:
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p2_to_p3),0)
((0x70020000+0x00008000+(0*0x00000200))+0)
0x70028000
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p2_to_p2),0)
((0x70020000+0x00008000+(1*0x00000200))+0)
0x70028200
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p2_to_p1),0)
((0x70020000+0x00008000+(2*0x00000200))+0)
0x70028400
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p2_to_p0),0)
((0x70020000+0x00008000+(3*0x00000200))+0)
0x70028600

# NODE 3 (Microblaze 3)
## Channels: 
### Receive channels (ID): recv_channel_p3_from_p3 (0), recv_channel_p3_from_p2 (1), recv_channel_p3_from_p1 (2), recv_channel_p3_from_p0 (3)
### Send channels (ID): send_channel_p3_to_p3 (0), send_channel_p3_to_p2 (1), send_channel_p3_to_p1 (2), send_channel_p3_to_p0 (3)

## Channel programming:
### Send channels: C code and equivalent register accesses
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p3_to_p3,4,0,1,1,p3_pid,p3_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(0<<2)), ((4<<28)+(0<<24)+(1<<20)+(1<<16)+(3<<8)+3))
Xil_Out32(0x70020200,0x40110303)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p3_to_p2,4,0,1,0,p2_pid,p3_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(1<<2)), ((4<<28)+(0<<24)+(1<<20)+(0<<16)+(2<<8)+3))
Xil_Out32(0x70020204,0x40100203)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p3_to_p1,4,0,0,1,p1_pid,p3_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(2<<2)), ((4<<28)+(0<<24)+(0<<20)+(1<<16)+(1<<8)+3))
Xil_Out32(0x70020208,0x40010103)
NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p3_to_p0,4,0,0,0,p0_pid,p3_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000200)+(3<<2)), ((4<<28)+(0<<24)+(0<<20)+(0<<16)+(0<<8)+3))
Xil_Out32(0x7002020C,0x40000003)
### Receive channels: C code and equivalent register accesses
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p3_from_p3,COMB,1,p3_pid,p3_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(0<<2)), ((1<<17)+(1<<16)+(3<<8)+3))
Xil_Out32(0x70020300,0x30303)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p3_from_p2,COMB,1,p3_pid,p2_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(1<<2)), ((1<<17)+(1<<16)+(3<<8)+2))
Xil_Out32(0x70020304,0x30302)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p3_from_p1,COMB,1,p3_pid,p1_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(2<<2)), ((1<<17)+(1<<16)+(3<<8)+1))
Xil_Out32(0x70020308,0x30301)
NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p3_from_p0,COMB,1,p3_pid,p0_pid)
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000300)+(3<<2)), ((1<<17)+(1<<16)+(3<<8)+0))
Xil_Out32(0x7002030C,0x30300)

## Message Inbox status
### C code and equivalent register accesses
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p3_from_p3)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (0<<2))
0x70020100
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p3_from_p2) 
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (1<<2))
0x70020104
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p3_from_p1)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (2<<2))
0x70020108
NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p3_from_p0)
Xil_In32((0x70020000+(0x00000000 + 0x00000100)) + (3<<2))
0x7002010C

## Clearing flag to acknowledge that the message is read
### C code and equivalent register accesses
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p3_from_p3)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (0))
Xil_Out32(0x7002000C,0)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p3_from_p2)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (1))
Xil_Out32(0x7002000C,1)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p3_from_p1)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (2))
Xil_Out32(0x7002000C,2)
NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p3_from_p0)
Xil_Out32((0x70020000) + ((0x00000000 + 0x0000000C)), (3))
Xil_Out32(0x7002000C,3)

## Clearing flag to acknowledge that the interrupt is attended
### C code and equivalent register accesses
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p3_from_p3);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (0))
Xil_Out32(0x70020004,0)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p3_from_p2);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (1))
Xil_Out32(0x70020004,1)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p3_from_p1);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (2))
Xil_Out32(0x70020004,2)
NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p3_from_p0);
Xil_Out32((0x70020000) + ((0x00000000 + 0x00000004)), (3))
Xil_Out32(0x70020004,3)

## Send triggering command for e.g. message size in 32-bit words (from 1 to 80), no priority (i.e. 0).
### C code and equivalent register accesses
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p2_to_p3,p2_out3_priority,p2_out3_msg_len)
Xil_Out32((0x70020000) + (0), (((0<<12)+(p2_out3_priority<<10)+(p2_out3_msg_len))))
Xil_Out32(0x70020000,0x0000+p2_out3_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p2_to_p2,p2_out2_priority,p2_out2_msg_len)
Xil_Out32((0x70020000) + (0), (((1<<12)+(p2_out2_priority<<10)+(p2_out2_msg_len))))
Xil_Out32(0x70020000,0x1000+p2_out2_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p2_to_p1,p2_out1_priority,p2_out1_msg_len)
Xil_Out32((0x70020000) + (0), (((2<<12)+(p2_out1_priority<<10)+(p2_out1_msg_len))))
Xil_Out32(0x70020000,0x2000+p2_out1_msg_len)
NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p2_to_p0,p2_out0_priority,p2_out0_msg_len)
Xil_Out32((0x70020000) + (0), (((3<<12)+(p2_out0_priority<<10)+(p2_out0_msg_len))))
Xil_Out32(0x70020000,0x3000+p2_out0_msg_len)

## Inbox/Outbox channels: 
### Inbox Channel base-address:
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p3_from_p3),0)
((0x70020000+0x00010000+(0*0x00000200))+0)
0x70030000
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p3_from_p2),0)
((0x70020000+0x00010000+(1*0x00000200))+0)
0x70030200
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p3_from_p1),0)
((0x70020000+0x00010000+(2*0x00000200))+0)
0x70030400
NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p3_from_p0),0)
((0x70020000+0x00010000+(3*0x00000200))+0)
0x70030600
### Outbox Channel base-address:
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p3_to_p3),0)
((0x70020000+0x00008000+(0*0x00000200))+0)
0x70028000
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p3_to_p2),0)
((0x70020000+0x00008000+(1*0x00000200))+0)
0x70028200
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p3_to_p1),0)
((0x70020000+0x00008000+(2*0x00000200))+0)
0x70028400
NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p3_to_p0),0)
((0x70020000+0x00008000+(3*0x00000200))+0)
0x70028600

For questions about this git repo folder, please contact Tage <tagem@kth.se>
For questions about Nostrum details, please contact Johnny Öberg <johnnyob@kth.se>



