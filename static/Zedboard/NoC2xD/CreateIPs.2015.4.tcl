##########
### Created by Tage 2016/8/1
### Purpose: Creation of IPs: RNI and NOC
### Tool version: Vivado v2015.4
### Presumptions:
#### IPs for NoC Switch Matrix and Network Interface are at /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/ip_repo/kth_axi_rni_static_c1 /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1
#### Maturity: beta

## NI IP
######################################################################
#0###Define some paths
set NIIPDIR /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_axi_rni_static_c1
set TMPPROJDIR /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_10KHz_AltenDemo_c1_D/NoC2x2_10KHz_AltenDemo_c1_D.tmp

#1#Create and Package IP from Directory
ipx::infer_core -vendor kth.se -library tage -taxonomy /UserIP $NIIPDIR
ipx::edit_ip_in_project -upgrade true -name edit_ip_project -directory TMPPROJDIR $NIIPDIR/component.xml
ipx::current_core $NIIPDIR/component.xml


#2#Setting IP Description:
set_property vendor kth.se [ipx::current_core]
set_property library tage [ipx::current_core]
set_property name kth_axi_rni_static_c1 [ipx::current_core]
set_property display_name kth_axi_rni_static_c1 [ipx::current_core]
set_property description {A memory mapped peripheral via ARM AMBA AXI4 Bus implementing functionality for Network Resource Interface for KTH Nostrum Network-on-Chip (NoC) Message Passing Mechanism (MPM) for Multi-Processor System-on-Chip (MPSoC). The implementation describes the static version of the NoC in which the RNI processes and process mapping and channels are set at design time thus static} [ipx::current_core]
set_property company_url http://www.kth.se [ipx::current_core]
set_property vendor_display_name kth [ipx::current_core]


#3#Some preemptive cleaning caused as a side effect from tool automated inferrence
ipx::remove_all_hdl_parameter [ipx::current_core]
ipx::remove_all_port [ipx::current_core]
ipx::remove_file_group xilinx_anylanguagebehavioralsimulation [ipx::current_core]
ipx::remove_file_group xilinx_anylanguagesynthesis [ipx::current_core]

#4#Adding source files
add_files -norecurse -force -quiet $NIIPDIR/hdl/kth_axi_rni_static_v1_0.vhd $NIIPDIR/hdl/kth_axi_rni_static.vhd $NIIPDIR/hdl/kth_generic_rni_static.vhd $NIIPDIR/hdl/generic_interface_to_noc_static.vhd $NIIPDIR/hdl/proc_common_pkg.vhd $NIIPDIR/hdl/axi_lite_ipif.vhd $NIIPDIR/hdl/NoC_3D_parallel_package.vhd $NIIPDIR/hdl/ipif_pkg.vhd $NIIPDIR/hdl/address_decoder.vhd $NIIPDIR/hdl/rni_memory_64_32.vhd $NIIPDIR/hdl/rni_memory.vhd $NIIPDIR/hdl/slave_attachment.vhd $NIIPDIR/hdl/family_support.vhd $NIIPDIR/hdl/NoC_3D_SW_configuration_package.vhd $NIIPDIR/hdl/pselect_f.vhd


#5#Setting libraries
set_property library kth_axi_rni_static_v1_00_a [get_files  $NIIPDIR/hdl/kth_axi_rni_static_v1_0.vhd]
set_property library kth_axi_rni_static_v1_00_a [get_files  $NIIPDIR/hdl/generic_interface_to_noc_static.vhd]
set_property library kth_axi_rni_static_v1_00_a [get_files  $NIIPDIR/hdl/NoC_3D_parallel_package.vhd]
set_property library kth_axi_rni_static_v1_00_a [get_files  $NIIPDIR/hdl/NoC_3D_SW_configuration_package.vhd]
set_property library kth_axi_rni_static_v1_00_a [get_files  $NIIPDIR/hdl/kth_axi_rni_static.vhd]
set_property library kth_axi_rni_static_v1_00_a [get_files  $NIIPDIR/hdl/kth_generic_rni_static.vhd]
set_property library kth_axi_rni_static_v1_00_a [get_files  $NIIPDIR/hdl/rni_memory_64_32.vhd]
set_property library kth_axi_rni_static_v1_00_a [get_files  $NIIPDIR/hdl/rni_memory.vhd]
set_property library axi_lite_ipif_v1_01_a [get_files  $NIIPDIR/hdl/axi_lite_ipif.vhd]
set_property library axi_lite_ipif_v1_01_a [get_files  $NIIPDIR/hdl/slave_attachment.vhd]
set_property library axi_lite_ipif_v1_01_a [get_files  $NIIPDIR/hdl/address_decoder.vhd]
set_property library proc_common_v3_00_a [get_files  $NIIPDIR/hdl/ipif_pkg.vhd]
set_property library proc_common_v3_00_a [get_files  $NIIPDIR/hdl/proc_common_pkg.vhd]
set_property library proc_common_v3_00_a [get_files  $NIIPDIR/hdl/family_support.vhd]
set_property library proc_common_v3_00_a [get_files  $NIIPDIR/hdl/pselect_f.vhd]

#6#Adding files to Synthesis group
ipx::add_file_group -type synthesis {} [ipx::current_core]
set_property model_name kth_axi_rni_static_c1_v1_0 [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
ipx::add_file hdl/NoC_3D_SW_configuration_package.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_SW_configuration_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/NoC_3D_SW_configuration_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_3D_parallel_package.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_parallel_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/NoC_3D_parallel_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/kth_axi_rni_static_v1_0.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/kth_axi_rni_static_v1_0.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/kth_axi_rni_static_v1_0.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/kth_axi_rni_static.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/kth_axi_rni_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/kth_axi_rni_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/kth_generic_rni_static.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/kth_generic_rni_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/kth_generic_rni_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/generic_interface_to_noc_static.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/generic_interface_to_noc_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/generic_interface_to_noc_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/rni_memory_64_32.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/rni_memory_64_32.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/rni_memory_64_32.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/rni_memory.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/rni_memory.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/rni_memory.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/ipif_pkg.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/ipif_pkg.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name proc_common_v3_00_a [ipx::get_files hdl/ipif_pkg.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/pselect_f.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/pselect_f.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name proc_common_v3_00_a [ipx::get_files hdl/pselect_f.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/family_support.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/family_support.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name proc_common_v3_00_a [ipx::get_files hdl/family_support.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/slave_attachment.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/slave_attachment.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name axi_lite_ipif_v1_01_a [ipx::get_files hdl/slave_attachment.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/axi_lite_ipif.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/axi_lite_ipif.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name axi_lite_ipif_v1_01_a [ipx::get_files hdl/axi_lite_ipif.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/address_decoder.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/address_decoder.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name axi_lite_ipif_v1_01_a [ipx::get_files hdl/address_decoder.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/proc_common_pkg.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/proc_common_pkg.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name proc_common_v3_00_a [ipx::get_files hdl/proc_common_pkg.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]

#7#Adding files to Simulation group
ipx::add_file_group -type simulation {} [ipx::current_core]
set_property model_name kth_axi_rni_static_c1_v1_0 [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file hdl/NoC_3D_SW_configuration_package.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_SW_configuration_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/NoC_3D_SW_configuration_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_3D_parallel_package.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_parallel_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/NoC_3D_parallel_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/kth_axi_rni_static_v1_0.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/kth_axi_rni_static_v1_0.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/kth_axi_rni_static_v1_0.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/kth_axi_rni_static.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/kth_axi_rni_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/kth_axi_rni_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/kth_generic_rni_static.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/kth_generic_rni_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/kth_generic_rni_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/generic_interface_to_noc_static.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/generic_interface_to_noc_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/generic_interface_to_noc_static.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/rni_memory_64_32.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/rni_memory_64_32.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/rni_memory_64_32.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/rni_memory.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/rni_memory.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_axi_rni_static_v1_00_a [ipx::get_files hdl/rni_memory.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/ipif_pkg.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/ipif_pkg.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name proc_common_v3_00_a [ipx::get_files hdl/ipif_pkg.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/pselect_f.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/pselect_f.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name proc_common_v3_00_a [ipx::get_files hdl/pselect_f.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/family_support.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/family_support.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name proc_common_v3_00_a [ipx::get_files hdl/family_support.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/slave_attachment.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/slave_attachment.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name axi_lite_ipif_v1_01_a [ipx::get_files hdl/slave_attachment.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/axi_lite_ipif.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/axi_lite_ipif.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name axi_lite_ipif_v1_01_a [ipx::get_files hdl/axi_lite_ipif.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/address_decoder.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/address_decoder.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name axi_lite_ipif_v1_01_a [ipx::get_files hdl/address_decoder.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/proc_common_pkg.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/proc_common_pkg.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name proc_common_v3_00_a [ipx::get_files hdl/proc_common_pkg.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]


#8#Explicitly Specificying Top level file
set_property top kth_axi_rni_static_c1_v1_0 [current_fileset]
set_property top_file $NIIPDIR/hdl/kth_axi_rni_static_v1_0.vhd [current_fileset]

#9#Customization Parameters
ipx::remove_all_hdl_parameter [ipx::current_core]
ipx::add_model_parameters_from_hdl [ipx::current_core] -top_level_hdl_file $NIIPDIR/hdl/kth_axi_rni_static_v1_0.vhd -top_module_name kth_axi_rni_static_c1_v1_0
ipx::infer_user_parameters [ipx::current_core]

#10#Ports and Interfaces
ipx::add_ports_from_hdl [ipx::current_core] -top_level_hdl_file $NIIPDIR/hdl/kth_axi_rni_static_v1_0.vhd -top_module_name kth_axi_rni_static_c1_v1_0
ipx::remove_bus_interface Bus2IP_Resetn [ipx::current_core]
ipx::remove_bus_interface Bus2IP_Clk [ipx::current_core]
ipx::infer_bus_interfaces xilinx.com:interface:aximm_rtl:1.0 [ipx::current_core]
#getting rid of possible tool complaints (if necessary)
ipx::merge_project_changes files [ipx::current_core] -quiet
ipx::merge_project_changes ports [ipx::current_core] -quiet

#11#Addess range
set_property range 131072 [ipx::get_address_blocks reg0 -of_objects [ipx::get_memory_maps S_AXI -of_objects [ipx::current_core]]]


#12#Making all HDL generic visible and configurable in the IP GUI
ipgui::add_param -name {rni_pos} -component [ipx::current_core]
ipgui::add_param -name {use_64bit} -component [ipx::current_core]
ipgui::add_param -name {C_NUM_REG} -component [ipx::current_core]
ipgui::add_param -name {C_SLV_DWIDTH} -component [ipx::current_core]
ipgui::add_param -name {rni_number} -component [ipx::current_core]
ipgui::add_param -name {C_S_AXI_MIN_SIZE} -component [ipx::current_core]
ipgui::add_param -name {C_USE_WSTRB} -component [ipx::current_core]
ipgui::add_param -name {C_DPHASE_TIMEOUT} -component [ipx::current_core]
ipgui::add_param -name {C_BASEADDR} -component [ipx::current_core]
ipgui::add_param -name {C_HIGHADDR} -component [ipx::current_core]
ipgui::add_param -name {C_NUM_MEM} -component [ipx::current_core]
ipgui::add_param -name {C_SLV_AWIDTH} -component [ipx::current_core]
ipgui::add_param -name {C_S_AXI_DATA_WIDTH} -component [ipx::current_core]
ipgui::add_param -name {C_S_AXI_ADDR_WIDTH} -component [ipx::current_core]


#13#Packaging the IP
set_property previous_version_for_upgrade kth.se:tage:kth_axi_rni_static_c1:1.0 [ipx::current_core]
set_property core_revision 1 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
close_project -delete
ipx::unload_core $NIIPDIR/component.xml
#Sometimes one needs to close the project
#close_project

## NOC2x2D IP
##############################################################################################################################################################################################################
#0###Define some paths
set NOC2x2DIPDIR /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1
set TMPPROJDIR /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_10KHz_AltenDemo_c1_D/NoC2x2_10KHz_AltenDemo_c1_D.tmp

#1#Create and Package IP from Directory
ipx::infer_core -vendor kth.se -library tage -taxonomy /UserIP $NOC2x2DIPDIR
ipx::edit_ip_in_project -upgrade true -name edit_ip_project -directory $TMPPROJDIR $NOC2x2DIPDIR/component.xml
ipx::current_core $NOC2x2DIPDIR/component.xml
#ReDefine some paths just in case
set NOC2x2DIPDIR /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1
set TMPPROJDIR /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_10KHz_AltenDemo_c1_D/NoC2x2_10KHz_AltenDemo_c1_D.tmp


#2#Setting IP Description:
set_property vendor kth.se [ipx::current_core]
set_property library tage [ipx::current_core]
set_property description {A network of 4 switches each is connected to a resource through (54 bits bi-directional links and read/write/syc single-bit signals). The sync signal, otherwise called heartbeat signal, allows synchronous scheduling of processes and message passing.} [ipx::current_core]
set_property company_url http://www.kth.se [ipx::current_core]
set_property vendor_display_name kth [ipx::current_core]
set_property name kth_2DNoC_2x2x1_c1 [ipx::current_core]
set_property display_name kth_2DNoC_2x2x1_c1 [ipx::current_core]

#3#Some preemptive cleaning caused as a side effect from tool automated inferrence
ipx::remove_all_hdl_parameter [ipx::current_core]
ipx::remove_all_port [ipx::current_core]
ipx::remove_file_group xilinx_anylanguagebehavioralsimulation [ipx::current_core]
ipx::remove_file_group xilinx_anylanguagesynthesis [ipx::current_core]

#4#Adding source files
#add_files -norecurse {/home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/kth_2DNoC_2x2x1_v1_0.vhd /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/NoC_2D_Parallel.vhd /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/NoC_3D_parallel_package.vhd /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/NoC_3D_parallel_recv.vhd /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/NoC_3D_parallel_switch.vhd /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/NoC_3D_parallel_xmitter.vhd} -force -quiet
add_files -norecurse -force -quiet $NOC2x2DIPDIR/hdl/kth_2DNoC_2x2x1_v1_0.vhd $NOC2x2DIPDIR/hdl/NoC_2D_Parallel.vhd $NOC2x2DIPDIR/hdl/NoC_3D_parallel_package.vhd $NOC2x2DIPDIR/hdl/NoC_3D_parallel_recv.vhd $NOC2x2DIPDIR/hdl/NoC_3D_parallel_switch.vhd $NOC2x2DIPDIR/hdl/NoC_3D_parallel_xmitter.vhd

#5#Setting libraries
#set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/kth_2DNoC_2x2x1_v1_0.vhd]
#set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/NoC_2D_Parallel.vhd]
#set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/NoC_3D_parallel_switch.vhd]
#set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/NoC_3D_parallel_package.vhd]
#set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/NoC_3D_parallel_recv.vhd]
#set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/NoC_3D_parallel_xmitter.vhd]
set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  $NOC2x2DIPDIR/hdl/kth_2DNoC_2x2x1_v1_0.vhd]
set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  $NOC2x2DIPDIR/hdl/NoC_2D_Parallel.vhd]
set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  $NOC2x2DIPDIR/hdl/NoC_3D_parallel_switch.vhd]
set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  $NOC2x2DIPDIR/hdl/NoC_3D_parallel_package.vhd]
set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  $NOC2x2DIPDIR/hdl/NoC_3D_parallel_recv.vhd]
set_property library kth_2DNoC_2x2x1_v1_00_a [get_files  $NOC2x2DIPDIR/hdl/NoC_3D_parallel_xmitter.vhd]

#6#Adding files to Synthesis group
ipx::add_file_group -type synthesis {} [ipx::current_core]
set_property model_name kth_2DNoC_2x2x1_1.0 [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
ipx::add_file hdl/kth_2DNoC_2x2x1_v1_0.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/kth_2DNoC_2x2x1_v1_0.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/kth_2DNoC_2x2x1_v1_0.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_3D_parallel_package.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_parallel_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/NoC_3D_parallel_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_2D_Parallel.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_2D_Parallel.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/NoC_2D_Parallel.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_3D_parallel_switch.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_parallel_switch.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/NoC_3D_parallel_switch.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_3D_parallel_recv.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_parallel_recv.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/NoC_3D_parallel_recv.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_3D_parallel_xmitter.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_parallel_xmitter.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/NoC_3D_parallel_xmitter.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]


#7#Adding files to Simulation group
ipx::add_file_group -type simulation {} [ipx::current_core]
set_property model_name kth_2DNoC_2x2x1_1.0 [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file hdl/kth_2DNoC_2x2x1_v1_0.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/kth_2DNoC_2x2x1_v1_0.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/kth_2DNoC_2x2x1_v1_0.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_3D_parallel_package.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_parallel_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/NoC_3D_parallel_package.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_2D_Parallel.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_2D_Parallel.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/NoC_2D_Parallel.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_3D_parallel_switch.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_parallel_switch.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/NoC_3D_parallel_switch.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_3D_parallel_recv.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_parallel_recv.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/NoC_3D_parallel_recv.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
ipx::add_file hdl/NoC_3D_parallel_xmitter.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files hdl/NoC_3D_parallel_xmitter.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name kth_2DNoC_2x2x1_v1_00_a [ipx::get_files hdl/NoC_3D_parallel_xmitter.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]


#8#Explicitly Specificying Top level file
set_property top kth_2DNoC_2x2x1_c1_v1_0 [current_fileset]
#set_property top_file {/home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/kth_2DNoC_2x2x1_v1_0.vhd} [current_fileset]
set_property top_file $NOC2x2DIPDIR/hdl/kth_2DNoC_2x2x1_v1_0.vhd [current_fileset]

#9#Customization Parameters
#ipx::remove_all_hdl_parameter [ipx::current_core]
#ipx::add_model_parameters_from_hdl [ipx::current_core] -top_level_hdl_file /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/kth_2DNoC_2x2x1_v1_0.vhd -top_module_name kth_2DNoC_2x2x1_c1_v1_0
#ipx::infer_user_parameters [ipx::current_core]

#10#Ports and Interfaces (correcting clk and reset)
ipx::remove_all_port [ipx::current_core]
#ipx::add_ports_from_hdl [ipx::current_core] -top_level_hdl_file /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/hdl/kth_2DNoC_2x2x1_v1_0.vhd -top_module_name kth_2DNoC_2x2x1_c1_v1_0
ipx::add_ports_from_hdl [ipx::current_core] -top_level_hdl_file $NOC2x2DIPDIR/hdl/kth_2DNoC_2x2x1_v1_0.vhd -top_module_name kth_2DNoC_2x2x1_c1_v1_0
ipx::remove_bus_interface reset [ipx::current_core]
ipx::remove_bus_interface clk [ipx::current_core]
#getting rid of possible tool complaints
ipx::merge_project_changes files [ipx::current_core] -quiet
ipx::merge_project_changes ports [ipx::current_core] -quiet

#11#Addess range (NA since it is not memory mapped)


#12#Making all HDL generic visible and configurable in the IP GUI



#13#Packaging the IP
set_property previous_version_for_upgrade kth.se:tage:kth_2DNoC_2x2x1_c1:1.0 [ipx::current_core]
set_property core_revision 1 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
close_project -delete
#ipx::unload_core /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_c1/component.xml
ipx::unload_core $NOC2x2DIPDIR/component.xml
#Sometimes one needs to close the project
#close_project

