set_property SRC_FILE_INFO {cfile:/home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_clk_wiz_0/BD_clk_wiz_0.xdc rfile:../../../NoC2x2_100KHz_AltenDemo_c1_D.srcs/sources_1/bd/BD/ip/BD_clk_wiz_0/BD_clk_wiz_0.xdc id:1 order:EARLY scoped_inst:BD_i/clk_wiz/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/tage/DegreeProject/Zedboard/NoC2xD/NoC2x2_100KHz_AltenDemo_c1_D/NoC2x2_100KHz_AltenDemo_c1_D.srcs/constrs_1/imports/NoC2xD/zedboard_master_XDC_RevC_D_v2.xdc rfile:../../../NoC2x2_100KHz_AltenDemo_c1_D.srcs/constrs_1/imports/NoC2xD/zedboard_master_XDC_RevC_D_v2.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:XDC file:2 line:77 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y9 [get_ports {GCLK}];  # "GCLK"
set_property src_info {type:XDC file:2 line:172 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T22 [get_ports {LD0}];  # "LD0"
set_property src_info {type:XDC file:2 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T21 [get_ports {LD1}];  # "LD1"
set_property src_info {type:XDC file:2 line:178 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U22 [get_ports {LD2}];  # "LD2"
set_property src_info {type:XDC file:2 line:182 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U21 [get_ports {LD3}];  # "LD3"
set_property src_info {type:XDC file:2 line:186 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U14 [get_ports {LD7}];  # "LD7"
set_property src_info {type:XDC file:2 line:208 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P16 [get_ports {BTNC}];  # "BTNC"
set_property src_info {type:XDC file:2 line:240 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F22 [get_ports {SW0}];  # "SW0"
set_property src_info {type:XDC file:2 line:241 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G22 [get_ports {SW1}];  # "SW1"
set_property src_info {type:XDC file:2 line:242 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H22 [get_ports {SW2}];  # "SW2"
set_property src_info {type:XDC file:2 line:243 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F21 [get_ports {SW3}];  # "SW3"
set_property src_info {type:XDC file:2 line:247 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN M15 [get_ports {SW7}];  # "SW7"
set_property src_info {type:XDC file:2 line:365 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]]
set_property src_info {type:XDC file:2 line:370 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]]; #Unused otherwise, this line would be uncommented
set_property src_info {type:XDC file:2 line:375 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]]; #Unused otherwise, this line would be uncommented
set_property src_info {type:XDC file:2 line:378 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]]; #Unused otherwise, this line would be uncommented
