vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/microblaze_v9_5_3
vlib msim/kth_axi_rni_static_v1_00_a
vlib msim/proc_common_v3_00_a
vlib msim/axi_lite_ipif_v1_01_a
vlib msim/axi_lite_ipif_v3_0_3
vlib msim/lib_cdc_v1_0_2
vlib msim/interrupt_control_v3_1_3
vlib msim/axi_gpio_v2_0_9
vlib msim/lib_pkg_v1_0_2
vlib msim/axi_timer_v2_0_8
vlib msim/lmb_v10_v3_0_7
vlib msim/lmb_bram_if_cntlr_v4_0_7
vlib msim/blk_mem_gen_v8_3_1
vlib msim/mdm_v3_2_4
vlib msim/proc_sys_reset_v5_0_8
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_7
vlib msim/fifo_generator_v13_0_1
vlib msim/axi_data_fifo_v2_1_6
vlib msim/axi_crossbar_v2_1_8
vlib msim/util_vector_logic_v2_0
vlib msim/kth_2DNoC_2x2x1_v1_00_a

vmap xil_defaultlib msim/xil_defaultlib
vmap microblaze_v9_5_3 msim/microblaze_v9_5_3
vmap kth_axi_rni_static_v1_00_a msim/kth_axi_rni_static_v1_00_a
vmap proc_common_v3_00_a msim/proc_common_v3_00_a
vmap axi_lite_ipif_v1_01_a msim/axi_lite_ipif_v1_01_a
vmap axi_lite_ipif_v3_0_3 msim/axi_lite_ipif_v3_0_3
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_3 msim/interrupt_control_v3_1_3
vmap axi_gpio_v2_0_9 msim/axi_gpio_v2_0_9
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap axi_timer_v2_0_8 msim/axi_timer_v2_0_8
vmap lmb_v10_v3_0_7 msim/lmb_v10_v3_0_7
vmap lmb_bram_if_cntlr_v4_0_7 msim/lmb_bram_if_cntlr_v4_0_7
vmap blk_mem_gen_v8_3_1 msim/blk_mem_gen_v8_3_1
vmap mdm_v3_2_4 msim/mdm_v3_2_4
vmap proc_sys_reset_v5_0_8 msim/proc_sys_reset_v5_0_8
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_7 msim/axi_register_slice_v2_1_7
vmap fifo_generator_v13_0_1 msim/fifo_generator_v13_0_1
vmap axi_data_fifo_v2_1_6 msim/axi_data_fifo_v2_1_6
vmap axi_crossbar_v2_1_8 msim/axi_crossbar_v2_1_8
vmap util_vector_logic_v2_0 msim/util_vector_logic_v2_0
vmap kth_2DNoC_2x2x1_v1_00_a msim/kth_2DNoC_2x2x1_v1_00_a

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"../../../bd/BD/ip/BD_clk_wiz_0/BD_clk_wiz_0_clk_wiz.v" \
"../../../bd/BD/ip/BD_clk_wiz_0/BD_clk_wiz_0.v" \

vcom -work microblaze_v9_5_3 -64 \
"../../../ipstatic/microblaze_v9_5/hdl/microblaze_v9_5_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_cpu_0_0_0/sim/BD_cpu_0_0_0.vhd" \

vcom -work kth_axi_rni_static_v1_00_a -64 \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/NoC_3D_parallel_package.vhd" \

vcom -work proc_common_v3_00_a -64 \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/proc_common_pkg.vhd" \

vcom -work kth_axi_rni_static_v1_00_a -64 \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/generic_interface_to_noc_static.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/NoC_3D_SW_configuration_package.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/kth_generic_rni_static.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/kth_axi_rni_static_v1_0.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/kth_axi_rni_static.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/rni_memory_64_32.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/rni_memory.vhd" \

vcom -work proc_common_v3_00_a -64 \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/ipif_pkg.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/pselect_f.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/family_support.vhd" \

vcom -work axi_lite_ipif_v1_01_a -64 \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/slave_attachment.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/axi_lite_ipif.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_axi_rni_static_c1_v1_0/hdl/address_decoder.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_kth_axi_rni_static_c1_0_0/sim/BD_kth_axi_rni_static_c1_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_3 -64 \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work lib_cdc_v1_0_2 -64 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work interrupt_control_v3_1_3 -64 \
"../../../ipstatic/interrupt_control_v3_1/hdl/src/vhdl/interrupt_control.vhd" \

vcom -work axi_gpio_v2_0_9 -64 \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/gpio_core.vhd" \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/axi_gpio.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_axi_gpio_0_0/sim/BD_axi_gpio_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 \
"../../../ipstatic/lib_pkg_v1_0/hdl/src/vhdl/lib_pkg.vhd" \

vcom -work axi_timer_v2_0_8 -64 \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/counter_f.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/mux_onehot_f.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/tc_types.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/timer_control.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/count_module.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/tc_core.vhd" \
"../../../ipstatic/axi_timer_v2_0/hdl/src/vhdl/axi_timer.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_axi_timer_0_0/sim/BD_axi_timer_0_0.vhd" \

vcom -work lmb_v10_v3_0_7 -64 \
"../../../ipstatic/lmb_v10_v3_0/hdl/vhdl/lmb_v10.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_dlmb_v10_0/sim/BD_dlmb_v10_0.vhd" \
"../../../bd/BD/ip/BD_ilmb_v10_0/sim/BD_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_7 -64 \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_funcs.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_primitives.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/xor18.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parity.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parityenable.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect_mask.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/axi_interface.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_mux.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_cntlr.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_dlmb_bram_if_cntlr_0/sim/BD_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/BD/ip/BD_ilmb_bram_if_cntlr_0/sim/BD_ilmb_bram_if_cntlr_0.vhd" \

vcom -work blk_mem_gen_v8_3_1 -64 \
"../../../ipstatic/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_lmb_bram_0/sim/BD_lmb_bram_0.vhd" \

vcom -work mdm_v3_2_4 -64 \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_primitives.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/arbiter.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/srl_fifo.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/bus_master.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/jtag_control.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_core.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_mdm_1_0/sim/BD_mdm_1_0.vhd" \

vcom -work proc_sys_reset_v5_0_8 -64 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_rst_clk_wiz_50M_0/sim/BD_rst_clk_wiz_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_7 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vcom -work fifo_generator_v13_0_1 -64 \
"../../../ipstatic/fifo_generator_v13_0/simulation/fifo_generator_vhdl_beh.vhd" \
"../../../ipstatic/fifo_generator_v13_0/hdl/fifo_generator_v13_0_rfs.vhd" \

vlog -work axi_data_fifo_v2_1_6 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_8 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"../../../bd/BD/ip/BD_xbar_0/sim/BD_xbar_0.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_microblaze_0_0/sim/BD_microblaze_0_0.vhd" \
"../../../bd/BD/ip/BD_kth_axi_rni_static_c1_0_1/sim/BD_kth_axi_rni_static_c1_0_1.vhd" \
"../../../bd/BD/ip/BD_pio_0_0_0/sim/BD_pio_0_0_0.vhd" \
"../../../bd/BD/ip/BD_axi_timer_1_0/sim/BD_axi_timer_1_0.vhd" \
"../../../bd/BD/ip/BD_dlmb_v10_1/sim/BD_dlmb_v10_1.vhd" \
"../../../bd/BD/ip/BD_ilmb_v10_1/sim/BD_ilmb_v10_1.vhd" \
"../../../bd/BD/ip/BD_dlmb_bram_if_cntlr_1/sim/BD_dlmb_bram_if_cntlr_1.vhd" \
"../../../bd/BD/ip/BD_ilmb_bram_if_cntlr_1/sim/BD_ilmb_bram_if_cntlr_1.vhd" \
"../../../bd/BD/ip/BD_lmb_bram_1/sim/BD_lmb_bram_1.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"../../../bd/BD/ip/BD_xbar_1/sim/BD_xbar_1.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_cpu_0_1_0/sim/BD_cpu_0_1_0.vhd" \
"../../../bd/BD/ip/BD_kth_axi_rni_static_c1_1_0/sim/BD_kth_axi_rni_static_c1_1_0.vhd" \
"../../../bd/BD/ip/BD_pio_0_1_0/sim/BD_pio_0_1_0.vhd" \
"../../../bd/BD/ip/BD_axi_timer_2_0/sim/BD_axi_timer_2_0.vhd" \
"../../../bd/BD/ip/BD_dlmb_v10_2/sim/BD_dlmb_v10_2.vhd" \
"../../../bd/BD/ip/BD_ilmb_v10_2/sim/BD_ilmb_v10_2.vhd" \
"../../../bd/BD/ip/BD_dlmb_bram_if_cntlr_2/sim/BD_dlmb_bram_if_cntlr_2.vhd" \
"../../../bd/BD/ip/BD_ilmb_bram_if_cntlr_2/sim/BD_ilmb_bram_if_cntlr_2.vhd" \
"../../../bd/BD/ip/BD_lmb_bram_2/sim/BD_lmb_bram_2.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"../../../bd/BD/ip/BD_xbar_2/sim/BD_xbar_2.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_pio_dpr_0/sim/BD_pio_dpr_0.vhd" \
"../../../bd/BD/ip/BD_cpu_1_0_0/sim/BD_cpu_1_0_0.vhd" \
"../../../bd/BD/ip/BD_kth_axi_rni_static_c1_2_0/sim/BD_kth_axi_rni_static_c1_2_0.vhd" \
"../../../bd/BD/ip/BD_pio_1_0_0/sim/BD_pio_1_0_0.vhd" \
"../../../bd/BD/ip/BD_axi_timer_3_0/sim/BD_axi_timer_3_0.vhd" \
"../../../bd/BD/ip/BD_dlmb_v10_3/sim/BD_dlmb_v10_3.vhd" \
"../../../bd/BD/ip/BD_ilmb_v10_3/sim/BD_ilmb_v10_3.vhd" \
"../../../bd/BD/ip/BD_dlmb_bram_if_cntlr_3/sim/BD_dlmb_bram_if_cntlr_3.vhd" \
"../../../bd/BD/ip/BD_ilmb_bram_if_cntlr_3/sim/BD_ilmb_bram_if_cntlr_3.vhd" \
"../../../bd/BD/ip/BD_lmb_bram_3/sim/BD_lmb_bram_3.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" \
"../../../bd/BD/ip/BD_xbar_3/sim/BD_xbar_3.v" \

vcom -work util_vector_logic_v2_0 -64 \
"../../../bd/BD/ipshared/xilinx.com/util_vector_logic_v2_0/hdl/util_vector_logic.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_inverter_0/sim/BD_inverter_0.vhd" \

vcom -work kth_2DNoC_2x2x1_v1_00_a -64 \
"../../../bd/BD/ipshared/kth.se/kth_2dnoc_2x2x1_c1_v1_0/hdl/kth_2DNoC_2x2x1_v1_0.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_2dnoc_2x2x1_c1_v1_0/hdl/NoC_3D_parallel_package.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_2dnoc_2x2x1_c1_v1_0/hdl/NoC_2D_Parallel.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_2dnoc_2x2x1_c1_v1_0/hdl/NoC_3D_parallel_switch.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_2dnoc_2x2x1_c1_v1_0/hdl/NoC_3D_parallel_recv.vhd" \
"../../../bd/BD/ipshared/kth.se/kth_2dnoc_2x2x1_c1_v1_0/hdl/NoC_3D_parallel_xmitter.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/BD/ip/BD_kth_2DNoC_2x2x1_c1_0_0/sim/BD_kth_2DNoC_2x2x1_c1_0_0.vhd" \
"../../../bd/BD/ipshared/xilinx.com/xlconstant_v1_1/xlconstant.vhd" \
"../../../bd/BD/ip/BD_xlconstant_0_0/sim/BD_xlconstant_0_0.vhd" \
"../../../bd/BD/ip/BD_Ground_1_0/sim/BD_Ground_1_0.vhd" \
"../../../bd/BD/ip/BD_Ground_8_0/sim/BD_Ground_8_0.vhd" \
"../../../bd/BD/ip/BD_Ground_15_0/sim/BD_Ground_15_0.vhd" \
"../../../bd/BD/hdl/BD.vhd" \

vlog -work xil_defaultlib "glbl.v"

