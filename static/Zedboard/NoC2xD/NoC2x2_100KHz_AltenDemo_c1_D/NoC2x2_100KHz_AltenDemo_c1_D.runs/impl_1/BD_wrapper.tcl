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
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.cache/wt [current_project]
  set_property parent.project_path /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.xpr [current_project]
  set_property ip_repo_paths {
  /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.cache/ip
  /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_axi_rni_static_1.0-c1
  /home/tage/DegreeProject/Zedboard/NoC2xD/ip_repo/kth_2DNoC_2x2x1_1.0-c1
} [current_project]
  set_property ip_output_repo /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.cache/ip [current_project]
  add_files -quiet /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.runs/synth_1/BD_wrapper.dcp
  add_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/BD.bmm
  set_property SCOPED_TO_REF BD [get_files -all /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/BD.bmm]
  set_property SCOPED_TO_CELLS {} [get_files -all /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/BD.bmm]
  add_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_0_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF BD [get_files -all /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_0_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS cpu_0_0 [get_files -all /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_0_0_0/data/mb_bootloop_le.elf]
  add_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_microblaze_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF BD [get_files -all /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_microblaze_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS cpu_0_1 [get_files -all /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_microblaze_0_0/data/mb_bootloop_le.elf]
  add_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_0_1_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF BD [get_files -all /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_0_1_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS cpu_1_0 [get_files -all /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_0_1_0/data/mb_bootloop_le.elf]
  add_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_1_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF BD [get_files -all /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_1_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS cpu_1_1 [get_files -all /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_1_0_0/data/mb_bootloop_le.elf]
  read_xdc -prop_thru_buffers -ref BD_clk_wiz_0 -cells inst /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_clk_wiz_0/BD_clk_wiz_0_board.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_clk_wiz_0/BD_clk_wiz_0_board.xdc]
  read_xdc -ref BD_clk_wiz_0 -cells inst /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_clk_wiz_0/BD_clk_wiz_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_clk_wiz_0/BD_clk_wiz_0.xdc]
  read_xdc -ref BD_cpu_0_0_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_0_0_0/BD_cpu_0_0_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_0_0_0/BD_cpu_0_0_0.xdc]
  read_xdc -prop_thru_buffers -ref BD_axi_gpio_0_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_axi_gpio_0_0/BD_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_axi_gpio_0_0/BD_axi_gpio_0_0_board.xdc]
  read_xdc -ref BD_axi_gpio_0_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_axi_gpio_0_0/BD_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_axi_gpio_0_0/BD_axi_gpio_0_0.xdc]
  read_xdc -ref BD_dlmb_v10_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_0/BD_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_0/BD_dlmb_v10_0.xdc]
  read_xdc -ref BD_ilmb_v10_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_0/BD_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_0/BD_ilmb_v10_0.xdc]
  read_xdc -ref BD_mdm_1_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_mdm_1_0/BD_mdm_1_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_mdm_1_0/BD_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref BD_rst_clk_wiz_50M_0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_rst_clk_wiz_50M_0/BD_rst_clk_wiz_50M_0_board.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_rst_clk_wiz_50M_0/BD_rst_clk_wiz_50M_0_board.xdc]
  read_xdc -ref BD_rst_clk_wiz_50M_0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_rst_clk_wiz_50M_0/BD_rst_clk_wiz_50M_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_rst_clk_wiz_50M_0/BD_rst_clk_wiz_50M_0.xdc]
  read_xdc -ref BD_microblaze_0_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_microblaze_0_0/BD_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_microblaze_0_0/BD_microblaze_0_0.xdc]
  read_xdc -prop_thru_buffers -ref BD_pio_0_0_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_0_0_0/BD_pio_0_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_0_0_0/BD_pio_0_0_0_board.xdc]
  read_xdc -ref BD_pio_0_0_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_0_0_0/BD_pio_0_0_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_0_0_0/BD_pio_0_0_0.xdc]
  read_xdc -ref BD_dlmb_v10_1 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_1/BD_dlmb_v10_1.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_1/BD_dlmb_v10_1.xdc]
  read_xdc -ref BD_ilmb_v10_1 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_1/BD_ilmb_v10_1.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_1/BD_ilmb_v10_1.xdc]
  read_xdc -ref BD_cpu_0_1_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_0_1_0/BD_cpu_0_1_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_0_1_0/BD_cpu_0_1_0.xdc]
  read_xdc -prop_thru_buffers -ref BD_pio_0_1_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_0_1_0/BD_pio_0_1_0_board.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_0_1_0/BD_pio_0_1_0_board.xdc]
  read_xdc -ref BD_pio_0_1_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_0_1_0/BD_pio_0_1_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_0_1_0/BD_pio_0_1_0.xdc]
  read_xdc -ref BD_dlmb_v10_2 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_2/BD_dlmb_v10_2.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_2/BD_dlmb_v10_2.xdc]
  read_xdc -ref BD_ilmb_v10_2 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_2/BD_ilmb_v10_2.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_2/BD_ilmb_v10_2.xdc]
  read_xdc -prop_thru_buffers -ref BD_pio_dpr_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_dpr_0/BD_pio_dpr_0_board.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_dpr_0/BD_pio_dpr_0_board.xdc]
  read_xdc -ref BD_pio_dpr_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_dpr_0/BD_pio_dpr_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_dpr_0/BD_pio_dpr_0.xdc]
  read_xdc -ref BD_cpu_1_0_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_1_0_0/BD_cpu_1_0_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_cpu_1_0_0/BD_cpu_1_0_0.xdc]
  read_xdc -prop_thru_buffers -ref BD_pio_1_0_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_1_0_0/BD_pio_1_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_1_0_0/BD_pio_1_0_0_board.xdc]
  read_xdc -ref BD_pio_1_0_0 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_1_0_0/BD_pio_1_0_0.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_pio_1_0_0/BD_pio_1_0_0.xdc]
  read_xdc -ref BD_dlmb_v10_3 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_3/BD_dlmb_v10_3.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_dlmb_v10_3/BD_dlmb_v10_3.xdc]
  read_xdc -ref BD_ilmb_v10_3 -cells U0 /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_3/BD_ilmb_v10_3.xdc
  set_property processing_order EARLY [get_files /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_ilmb_v10_3/BD_ilmb_v10_3.xdc]
  read_xdc /home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/constrs_1/imports/NoC2xD/zedboard_master_XDC_RevC_D_v2.xdc
  link_design -top BD_wrapper -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
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
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file BD_wrapper.hwdef}
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
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force BD_wrapper_routed.dcp
  report_drc -file BD_wrapper_drc_routed.rpt -pb BD_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file BD_wrapper_timing_summary_routed.rpt -rpx BD_wrapper_timing_summary_routed.rpx
  report_power -file BD_wrapper_power_routed.rpt -pb BD_wrapper_power_summary_routed.pb
  report_route_status -file BD_wrapper_route_status.rpt -pb BD_wrapper_route_status.pb
  report_clock_utilization -file BD_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force BD_wrapper.mmi }
  catch { write_bmm -force BD_wrapper_bd.bmm }
  write_bitstream -force BD_wrapper.bit 
  catch { write_sysdef -hwdef BD_wrapper.hwdef -bitfile BD_wrapper.bit -meminfo BD_wrapper.mmi -file BD_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

