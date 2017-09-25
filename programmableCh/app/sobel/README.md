# SIES'17 experiments/HW
Repo where HW and SW for Zynq programmable logic subsystem can be generated.
To run the script correctly one needs to install package 'expect' by propably running:
sudo apt install expect

# About the bundle
This bundle contains scripts that automate 
1- the generation of vivado and sdk projects from sources (i.e. sw_repo and ip_repo, constraints.xdc) according to SIES'17 paper setup
2- the generation of all necessary files and running of executable on a powered-on zynq zc702 evaluation board connected to the computer from sources (i.e. sw_repo and ip_repo, constraints.xdc)


The scripts assume that:
- Xilinx Vivado and XSDK version 2016.3 are installed
- The installation directory is /opt/Xilinx/Vivado/2016.3
- The host computer can run parallel tasks of 8 and its OS is Ubuntu 16.04

To generate vivado and sdk project, 
- open a terminal in the folder where the sources are
- make sure that you have sourced vivado settings (e.g. source /opt/Xilinx/Vivado/2016.3/settings64.sh)
- make sure that you have 'expect' package installed, otherwise install it (i.e. sudo apt install expect)

Generation results for vivado project is in folder 'project'
Generation results for XSDK project is in folder 'project/sw'

# Generated sw directory
Inside, experiments/Nostrum/project/sw, one can find the following

A9_0/microblaze_i (where i ∈{1,2,3})
|_src
     |_platform.<c/h>/lscript.ld/platform_config.h: automatically generated
     |_kth_axi_Mesh_2D_Nostrum_2x2x1.h/software_configuration.h: define macros and address spaces related to the NoC.
     |_helloworld.c: call xmain.c in synchronous_MoC_main.c
     |_synchronous_MoC_main.c: defines pointers of the inbox channels, outbox channels, and make channel initialisations, and call pi_main/init() in px.c
     |_px.c: defines the code to be run in pi_init/main(). pi_init: is called once in the first time and main() is ultimately what is executed forever.

px.c <- where the code should be modified.

To open vivado project issue
make openVIVADO

To open XSDK project issue
make openXSDK

For questions please contact Tage <mtme@kth.se>
