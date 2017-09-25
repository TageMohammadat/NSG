proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part xilinx.com:zc702:part0:1.2 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/tage/git/NoC/programmableCh/dfs/project/project.cache/wt [current_project]
  set_property parent.project_path /home/tage/git/NoC/programmableCh/dfs/project/project.xpr [current_project]
  set_property ip_repo_paths /home/tage/git/NoC/programmableCh/dfs/ip_repo/kth_axi_Mesh_2D_Nostrum_2x2x1_1.0 [current_project]
  set_property ip_output_repo /home/tage/git/NoC/programmableCh/dfs/project/project.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.runs/synth_1/BD_wrapper.dcp
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_1_0/BD_axi_gpio_1_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_1_0/BD_axi_gpio_1_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_2_0/BD_axi_gpio_2_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_2_0/BD_axi_gpio_2_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_3_0/BD_axi_gpio_3_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_3_0/BD_axi_gpio_3_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_1_0/BD_axi_pwm_pause_1_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_1_0/BD_axi_pwm_pause_1_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_2_0/BD_axi_pwm_pause_2_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_2_0/BD_axi_pwm_pause_2_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_3_0/BD_axi_pwm_pause_3_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_3_0/BD_axi_pwm_pause_3_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_0/BD_microblaze_1_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_0/BD_microblaze_1_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_0/BD_dlmb_v10_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_0/BD_dlmb_v10_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_0/BD_ilmb_v10_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_0/BD_ilmb_v10_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_bram_if_cntlr_0/BD_dlmb_bram_if_cntlr_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_bram_if_cntlr_0/BD_dlmb_bram_if_cntlr_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_bram_if_cntlr_0/BD_ilmb_bram_if_cntlr_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_bram_if_cntlr_0/BD_ilmb_bram_if_cntlr_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_lmb_bram_0/BD_lmb_bram_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_lmb_bram_0/BD_lmb_bram_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_axi_intc_0/BD_microblaze_1_axi_intc_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_axi_intc_0/BD_microblaze_1_axi_intc_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_xlconcat_0/BD_microblaze_1_xlconcat_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_xlconcat_0/BD_microblaze_1_xlconcat_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_mdm_1_0/BD_mdm_1_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_mdm_1_0/BD_mdm_1_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_rst_clk_wiz_0_100M_0/BD_rst_clk_wiz_0_100M_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_rst_clk_wiz_0_100M_0/BD_rst_clk_wiz_0_100M_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_0/BD_microblaze_2_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_0/BD_microblaze_2_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_1/BD_dlmb_v10_1.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_1/BD_dlmb_v10_1.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_1/BD_ilmb_v10_1.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_1/BD_ilmb_v10_1.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_bram_if_cntlr_1/BD_dlmb_bram_if_cntlr_1.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_bram_if_cntlr_1/BD_dlmb_bram_if_cntlr_1.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_bram_if_cntlr_1/BD_ilmb_bram_if_cntlr_1.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_bram_if_cntlr_1/BD_ilmb_bram_if_cntlr_1.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_lmb_bram_1/BD_lmb_bram_1.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_lmb_bram_1/BD_lmb_bram_1.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_axi_intc_0/BD_microblaze_2_axi_intc_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_axi_intc_0/BD_microblaze_2_axi_intc_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_xlconcat_0/BD_microblaze_2_xlconcat_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_xlconcat_0/BD_microblaze_2_xlconcat_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_0/BD_microblaze_3_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_0/BD_microblaze_3_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_2/BD_dlmb_v10_2.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_2/BD_dlmb_v10_2.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_2/BD_ilmb_v10_2.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_2/BD_ilmb_v10_2.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_bram_if_cntlr_2/BD_dlmb_bram_if_cntlr_2.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_bram_if_cntlr_2/BD_dlmb_bram_if_cntlr_2.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_bram_if_cntlr_2/BD_ilmb_bram_if_cntlr_2.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_bram_if_cntlr_2/BD_ilmb_bram_if_cntlr_2.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_lmb_bram_2/BD_lmb_bram_2.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_lmb_bram_2/BD_lmb_bram_2.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_axi_intc_0/BD_microblaze_3_axi_intc_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_axi_intc_0/BD_microblaze_3_axi_intc_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_xlconcat_0/BD_microblaze_3_xlconcat_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_xlconcat_0/BD_microblaze_3_xlconcat_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_util_vector_logic_0_0/BD_util_vector_logic_0_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_util_vector_logic_0_0/BD_util_vector_logic_0_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_processing_system7_0_0/BD_processing_system7_0_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_processing_system7_0_0/BD_processing_system7_0_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0/BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0/BD_kth_axi_Mesh_2D_Nostrum_2x2x1_0_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_xbar_0/BD_xbar_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_xbar_0/BD_xbar_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_xbar_1/BD_xbar_1.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_xbar_1/BD_xbar_1.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_xbar_2/BD_xbar_2.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_xbar_2/BD_xbar_2.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_xbar_3/BD_xbar_3.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_xbar_3/BD_xbar_3.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_protocol_converter_0_0/BD_axi_protocol_converter_0_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_protocol_converter_0_0/BD_axi_protocol_converter_0_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_xbar_4/BD_xbar_4.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_xbar_4/BD_xbar_4.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_0_0/BD_axi_perf_mon_0_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_0_0/BD_axi_perf_mon_0_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_1_0/BD_axi_perf_mon_1_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_1_0/BD_axi_perf_mon_1_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_2_0/BD_axi_perf_mon_2_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_2_0/BD_axi_perf_mon_2_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_3_0/BD_axi_perf_mon_3_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_3_0/BD_axi_perf_mon_3_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_0_0/BD_axi_timer_0_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_0_0/BD_axi_timer_0_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_1_0/BD_axi_timer_1_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_1_0/BD_axi_timer_1_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_2_0/BD_axi_timer_2_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_2_0/BD_axi_timer_2_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_3_0/BD_axi_timer_3_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_3_0/BD_axi_timer_3_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_mdm_0/BD_axi_clock_converter_mdm_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_mdm_0/BD_axi_clock_converter_mdm_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni0_0/BD_axi_clock_converter_ni0_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni0_0/BD_axi_clock_converter_ni0_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni1_0/BD_axi_clock_converter_ni1_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni1_0/BD_axi_clock_converter_ni1_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni2_0/BD_axi_clock_converter_ni2_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni2_0/BD_axi_clock_converter_ni2_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni3_0/BD_axi_clock_converter_ni3_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni3_0/BD_axi_clock_converter_ni3_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_util_vector_logic_1_0/BD_util_vector_logic_1_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_util_vector_logic_1_0/BD_util_vector_logic_1_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_s00_data_fifo_0/BD_s00_data_fifo_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_s00_data_fifo_0/BD_s00_data_fifo_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_s01_data_fifo_0/BD_s01_data_fifo_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_s01_data_fifo_0/BD_s01_data_fifo_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_s02_data_fifo_0/BD_s02_data_fifo_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_s02_data_fifo_0/BD_s02_data_fifo_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_s03_data_fifo_0/BD_s03_data_fifo_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_s03_data_fifo_0/BD_s03_data_fifo_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_m00_data_fifo_0/BD_m00_data_fifo_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_m00_data_fifo_0/BD_m00_data_fifo_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_auto_pc_0/BD_auto_pc_0.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_auto_pc_0/BD_auto_pc_0.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_auto_pc_1/BD_auto_pc_1.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_auto_pc_1/BD_auto_pc_1.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_auto_pc_2/BD_auto_pc_2.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_auto_pc_2/BD_auto_pc_2.dcp]
  add_files -quiet /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_auto_pc_3/BD_auto_pc_3.dcp
  set_property netlist_only true [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_auto_pc_3/BD_auto_pc_3.dcp]
  add_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/BD.bmm
  set_property SCOPED_TO_REF BD [get_files -all /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/BD.bmm]
  add_files /home/tage/git/NoC/programmableCh/dfs/project/sw/microblaze_1/Debug/microblaze_1.elf
  set_property SCOPED_TO_REF BD [get_files -all /home/tage/git/NoC/programmableCh/dfs/project/sw/microblaze_1/Debug/microblaze_1.elf]
  set_property SCOPED_TO_CELLS microblaze_1 [get_files -all /home/tage/git/NoC/programmableCh/dfs/project/sw/microblaze_1/Debug/microblaze_1.elf]
  add_files /home/tage/git/NoC/programmableCh/dfs/project/sw/microblaze_2/Debug/microblaze_2.elf
  set_property SCOPED_TO_REF BD [get_files -all /home/tage/git/NoC/programmableCh/dfs/project/sw/microblaze_2/Debug/microblaze_2.elf]
  set_property SCOPED_TO_CELLS microblaze_2 [get_files -all /home/tage/git/NoC/programmableCh/dfs/project/sw/microblaze_2/Debug/microblaze_2.elf]
  add_files /home/tage/git/NoC/programmableCh/dfs/project/sw/microblaze_3/Debug/microblaze_3.elf
  set_property SCOPED_TO_REF BD [get_files -all /home/tage/git/NoC/programmableCh/dfs/project/sw/microblaze_3/Debug/microblaze_3.elf]
  set_property SCOPED_TO_CELLS microblaze_3 [get_files -all /home/tage/git/NoC/programmableCh/dfs/project/sw/microblaze_3/Debug/microblaze_3.elf]
  read_xdc -prop_thru_buffers -ref BD_axi_gpio_1_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_1_0/BD_axi_gpio_1_0_board.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_1_0/BD_axi_gpio_1_0_board.xdc]
  read_xdc -ref BD_axi_gpio_1_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_1_0/BD_axi_gpio_1_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_1_0/BD_axi_gpio_1_0.xdc]
  read_xdc -prop_thru_buffers -ref BD_axi_gpio_2_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_2_0/BD_axi_gpio_2_0_board.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_2_0/BD_axi_gpio_2_0_board.xdc]
  read_xdc -ref BD_axi_gpio_2_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_2_0/BD_axi_gpio_2_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_2_0/BD_axi_gpio_2_0.xdc]
  read_xdc -prop_thru_buffers -ref BD_axi_gpio_3_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_3_0/BD_axi_gpio_3_0_board.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_3_0/BD_axi_gpio_3_0_board.xdc]
  read_xdc -ref BD_axi_gpio_3_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_3_0/BD_axi_gpio_3_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_gpio_3_0/BD_axi_gpio_3_0.xdc]
  read_xdc -ref BD_axi_pwm_pause_1_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_1_0/BD_axi_pwm_pause_1_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_1_0/BD_axi_pwm_pause_1_0.xdc]
  read_xdc -ref BD_axi_pwm_pause_2_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_2_0/BD_axi_pwm_pause_2_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_2_0/BD_axi_pwm_pause_2_0.xdc]
  read_xdc -ref BD_axi_pwm_pause_3_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_3_0/BD_axi_pwm_pause_3_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_pwm_pause_3_0/BD_axi_pwm_pause_3_0.xdc]
  read_xdc -ref BD_microblaze_1_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_0/BD_microblaze_1_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_0/BD_microblaze_1_0.xdc]
  read_xdc -ref BD_dlmb_v10_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_0/BD_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_0/BD_dlmb_v10_0.xdc]
  read_xdc -ref BD_ilmb_v10_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_0/BD_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_0/BD_ilmb_v10_0.xdc]
  read_xdc -ref BD_microblaze_1_axi_intc_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_axi_intc_0/BD_microblaze_1_axi_intc_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_axi_intc_0/BD_microblaze_1_axi_intc_0.xdc]
  read_xdc -ref BD_mdm_1_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_mdm_1_0/BD_mdm_1_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_mdm_1_0/BD_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref BD_rst_clk_wiz_0_100M_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_rst_clk_wiz_0_100M_0/BD_rst_clk_wiz_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_rst_clk_wiz_0_100M_0/BD_rst_clk_wiz_0_100M_0_board.xdc]
  read_xdc -ref BD_rst_clk_wiz_0_100M_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_rst_clk_wiz_0_100M_0/BD_rst_clk_wiz_0_100M_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_rst_clk_wiz_0_100M_0/BD_rst_clk_wiz_0_100M_0.xdc]
  read_xdc -ref BD_microblaze_2_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_0/BD_microblaze_2_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_0/BD_microblaze_2_0.xdc]
  read_xdc -ref BD_dlmb_v10_1 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_1/BD_dlmb_v10_1.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_1/BD_dlmb_v10_1.xdc]
  read_xdc -ref BD_ilmb_v10_1 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_1/BD_ilmb_v10_1.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_1/BD_ilmb_v10_1.xdc]
  read_xdc -ref BD_microblaze_2_axi_intc_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_axi_intc_0/BD_microblaze_2_axi_intc_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_axi_intc_0/BD_microblaze_2_axi_intc_0.xdc]
  read_xdc -ref BD_microblaze_3_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_0/BD_microblaze_3_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_0/BD_microblaze_3_0.xdc]
  read_xdc -ref BD_dlmb_v10_2 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_2/BD_dlmb_v10_2.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_2/BD_dlmb_v10_2.xdc]
  read_xdc -ref BD_ilmb_v10_2 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_2/BD_ilmb_v10_2.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_2/BD_ilmb_v10_2.xdc]
  read_xdc -ref BD_microblaze_3_axi_intc_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_axi_intc_0/BD_microblaze_3_axi_intc_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_axi_intc_0/BD_microblaze_3_axi_intc_0.xdc]
  read_xdc -ref BD_processing_system7_0_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_processing_system7_0_0/BD_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_processing_system7_0_0/BD_processing_system7_0_0.xdc]
  read_xdc -ref BD_axi_perf_mon_0_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_0_0/BD_axi_perf_mon_0_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_0_0/BD_axi_perf_mon_0_0.xdc]
  read_xdc -ref BD_axi_perf_mon_1_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_1_0/BD_axi_perf_mon_1_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_1_0/BD_axi_perf_mon_1_0.xdc]
  read_xdc -ref BD_axi_perf_mon_2_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_2_0/BD_axi_perf_mon_2_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_2_0/BD_axi_perf_mon_2_0.xdc]
  read_xdc -ref BD_axi_perf_mon_3_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_3_0/BD_axi_perf_mon_3_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_3_0/BD_axi_perf_mon_3_0.xdc]
  read_xdc -ref BD_axi_timer_0_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_0_0/BD_axi_timer_0_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_0_0/BD_axi_timer_0_0.xdc]
  read_xdc -ref BD_axi_timer_1_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_1_0/BD_axi_timer_1_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_1_0/BD_axi_timer_1_0.xdc]
  read_xdc -ref BD_axi_timer_2_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_2_0/BD_axi_timer_2_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_2_0/BD_axi_timer_2_0.xdc]
  read_xdc -ref BD_axi_timer_3_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_3_0/BD_axi_timer_3_0.xdc
  set_property processing_order EARLY [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_timer_3_0/BD_axi_timer_3_0.xdc]
  read_xdc /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/constrs_1/imports/dfs/constraints.xdc
  read_xdc -ref BD_microblaze_1_axi_intc_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_axi_intc_0/BD_microblaze_1_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_1_axi_intc_0/BD_microblaze_1_axi_intc_0_clocks.xdc]
  read_xdc -ref BD_microblaze_2_axi_intc_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_axi_intc_0/BD_microblaze_2_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_2_axi_intc_0/BD_microblaze_2_axi_intc_0_clocks.xdc]
  read_xdc -ref BD_microblaze_3_axi_intc_0 -cells U0 /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_axi_intc_0/BD_microblaze_3_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_microblaze_3_axi_intc_0/BD_microblaze_3_axi_intc_0_clocks.xdc]
  read_xdc -ref BD_axi_perf_mon_0_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_0_0/BD_axi_perf_mon_0_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_0_0/BD_axi_perf_mon_0_0_clocks.xdc]
  read_xdc -ref BD_axi_perf_mon_1_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_1_0/BD_axi_perf_mon_1_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_1_0/BD_axi_perf_mon_1_0_clocks.xdc]
  read_xdc -ref BD_axi_perf_mon_2_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_2_0/BD_axi_perf_mon_2_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_2_0/BD_axi_perf_mon_2_0_clocks.xdc]
  read_xdc -ref BD_axi_perf_mon_3_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_3_0/BD_axi_perf_mon_3_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_perf_mon_3_0/BD_axi_perf_mon_3_0_clocks.xdc]
  read_xdc -ref BD_axi_clock_converter_mdm_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_mdm_0/BD_axi_clock_converter_mdm_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_mdm_0/BD_axi_clock_converter_mdm_0_clocks.xdc]
  read_xdc -ref BD_axi_clock_converter_ni0_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni0_0/BD_axi_clock_converter_ni0_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni0_0/BD_axi_clock_converter_ni0_0_clocks.xdc]
  read_xdc -ref BD_axi_clock_converter_ni1_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni1_0/BD_axi_clock_converter_ni1_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni1_0/BD_axi_clock_converter_ni1_0_clocks.xdc]
  read_xdc -ref BD_axi_clock_converter_ni2_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni2_0/BD_axi_clock_converter_ni2_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni2_0/BD_axi_clock_converter_ni2_0_clocks.xdc]
  read_xdc -ref BD_axi_clock_converter_ni3_0 -cells inst /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni3_0/BD_axi_clock_converter_ni3_0_clocks.xdc
  set_property processing_order LATE [get_files /home/tage/git/NoC/programmableCh/dfs/project/project.srcs/sources_1/bd/BD/ip/BD_axi_clock_converter_ni3_0/BD_axi_clock_converter_ni3_0_clocks.xdc]
  link_design -top BD_wrapper -part xc7z020clg484-1
  write_hwdef -file BD_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force BD_wrapper_opt.dcp
  report_drc -file BD_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force BD_wrapper_placed.dcp
  report_io -file BD_wrapper_io_placed.rpt
  report_utilization -file BD_wrapper_utilization_placed.rpt -pb BD_wrapper_utilization_placed.pb
  report_control_sets -verbose -file BD_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force BD_wrapper_routed.dcp
  report_drc -file BD_wrapper_drc_routed.rpt -pb BD_wrapper_drc_routed.pb -rpx BD_wrapper_drc_routed.rpx
  report_methodology -file BD_wrapper_methodology_drc_routed.rpt -rpx BD_wrapper_methodology_drc_routed.rpx
  report_timing_summary -warn_on_violation -max_paths 10 -file BD_wrapper_timing_summary_routed.rpt -rpx BD_wrapper_timing_summary_routed.rpx
  report_power -file BD_wrapper_power_routed.rpt -pb BD_wrapper_power_summary_routed.pb -rpx BD_wrapper_power_routed.rpx
  report_route_status -file BD_wrapper_route_status.rpt -pb BD_wrapper_route_status.pb
  report_clock_utilization -file BD_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force BD_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force BD_wrapper.mmi }
  catch { write_bmm -force BD_wrapper_bd.bmm }
  write_bitstream -force -no_partial_bitfile BD_wrapper.bit 
  catch { write_sysdef -hwdef BD_wrapper.hwdef -bitfile BD_wrapper.bit -meminfo BD_wrapper.mmi -file BD_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

