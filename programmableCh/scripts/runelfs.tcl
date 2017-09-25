cd $PROJECTFOLDER/sw

xsdb
connect
targets -set -filter {name =~ "ARM*#0"}
rst
fpga BD_wrapper.bit
loadhw BD_wrapper.hdf
source BD_wrapper_hw_platform_0/ps7_init.tcl
ps7_init
ps7_post_config
dow A9_0/Debug/A9_0.elf
con
targets -set -filter {name =~ "MicroBlaze Debug Module*"}
jtagterminal

