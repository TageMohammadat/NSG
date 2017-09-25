# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_S_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S_AXI_DATA_WIDTH}
  set C_S_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S_AXI_ADDR_WIDTH}
  set rni_number [ipgui::add_param $IPINST -name "rni_number" -parent ${Page_0}]
  set_property tooltip {RNI Number is an identifier for the network interface. Each Resource, usually a microprocessor, should have a different identifier for the interface to the network} ${rni_number}
  set use_64bit [ipgui::add_param $IPINST -name "use_64bit" -parent ${Page_0}]
  set_property tooltip {Use 64bit is a parameter that sets the datapath width of the RNI should it been interfaced via the Direct Access Port (DAP) which is an alternative access to the NoC from a VLIW processer instead of the Regular AXI-compatible Xilinx Microblaze Microprocessor} ${use_64bit}
  set C_S_AXI_MIN_SIZE [ipgui::add_param $IPINST -name "C_S_AXI_MIN_SIZE" -parent ${Page_0}]
  set_property tooltip {Minimum Memory mapped address range. By design, this value should be 128KB corresponding to 0x20000} ${C_S_AXI_MIN_SIZE}
  set C_USE_WSTRB [ipgui::add_param $IPINST -name "C_USE_WSTRB" -parent ${Page_0}]
  set_property tooltip {Stands for Word strobe, which is a 4 bit parameter to configure which byte within a word is required to enable unaligned read and write accesses.} ${C_USE_WSTRB}
  set C_DPHASE_TIMEOUT [ipgui::add_param $IPINST -name "C_DPHASE_TIMEOUT" -parent ${Page_0}]
  set_property tooltip {Data phase Timeout sets the number of cycle after which the Xilinx IP InterFace (IPIF) can issue timeout for accesses to the RNI from AXI bus masters. By design, this value should be 8} ${C_DPHASE_TIMEOUT}
  ipgui::add_param $IPINST -name "C_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HIGHADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_NUM_REG" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_NUM_MEM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SLV_AWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SLV_DWIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_HIGHADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_BASEADDR { PARAM_VALUE.C_BASEADDR } {
	# Procedure called to update C_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BASEADDR { PARAM_VALUE.C_BASEADDR } {
	# Procedure called to validate C_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_DPHASE_TIMEOUT { PARAM_VALUE.C_DPHASE_TIMEOUT } {
	# Procedure called to update C_DPHASE_TIMEOUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DPHASE_TIMEOUT { PARAM_VALUE.C_DPHASE_TIMEOUT } {
	# Procedure called to validate C_DPHASE_TIMEOUT
	return true
}

proc update_PARAM_VALUE.C_HIGHADDR { PARAM_VALUE.C_HIGHADDR } {
	# Procedure called to update C_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HIGHADDR { PARAM_VALUE.C_HIGHADDR } {
	# Procedure called to validate C_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_NUM_MEM { PARAM_VALUE.C_NUM_MEM } {
	# Procedure called to update C_NUM_MEM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_MEM { PARAM_VALUE.C_NUM_MEM } {
	# Procedure called to validate C_NUM_MEM
	return true
}

proc update_PARAM_VALUE.C_NUM_REG { PARAM_VALUE.C_NUM_REG } {
	# Procedure called to update C_NUM_REG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_REG { PARAM_VALUE.C_NUM_REG } {
	# Procedure called to validate C_NUM_REG
	return true
}

proc update_PARAM_VALUE.C_SLV_AWIDTH { PARAM_VALUE.C_SLV_AWIDTH } {
	# Procedure called to update C_SLV_AWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SLV_AWIDTH { PARAM_VALUE.C_SLV_AWIDTH } {
	# Procedure called to validate C_SLV_AWIDTH
	return true
}

proc update_PARAM_VALUE.C_SLV_DWIDTH { PARAM_VALUE.C_SLV_DWIDTH } {
	# Procedure called to update C_SLV_DWIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SLV_DWIDTH { PARAM_VALUE.C_SLV_DWIDTH } {
	# Procedure called to validate C_SLV_DWIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_MIN_SIZE { PARAM_VALUE.C_S_AXI_MIN_SIZE } {
	# Procedure called to update C_S_AXI_MIN_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_MIN_SIZE { PARAM_VALUE.C_S_AXI_MIN_SIZE } {
	# Procedure called to validate C_S_AXI_MIN_SIZE
	return true
}

proc update_PARAM_VALUE.C_USE_WSTRB { PARAM_VALUE.C_USE_WSTRB } {
	# Procedure called to update C_USE_WSTRB when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_USE_WSTRB { PARAM_VALUE.C_USE_WSTRB } {
	# Procedure called to validate C_USE_WSTRB
	return true
}

proc update_PARAM_VALUE.rni_number { PARAM_VALUE.rni_number } {
	# Procedure called to update rni_number when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.rni_number { PARAM_VALUE.rni_number } {
	# Procedure called to validate rni_number
	return true
}

proc update_PARAM_VALUE.use_64bit { PARAM_VALUE.use_64bit } {
	# Procedure called to update use_64bit when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.use_64bit { PARAM_VALUE.use_64bit } {
	# Procedure called to validate use_64bit
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_BASEADDR { PARAM_VALUE.C_S_AXI_BASEADDR } {
	# Procedure called to update C_S_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_BASEADDR { PARAM_VALUE.C_S_AXI_BASEADDR } {
	# Procedure called to validate C_S_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S_AXI_HIGHADDR { PARAM_VALUE.C_S_AXI_HIGHADDR } {
	# Procedure called to update C_S_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_HIGHADDR { PARAM_VALUE.C_S_AXI_HIGHADDR } {
	# Procedure called to validate C_S_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.rni_number { MODELPARAM_VALUE.rni_number PARAM_VALUE.rni_number } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.rni_number}] ${MODELPARAM_VALUE.rni_number}
}

proc update_MODELPARAM_VALUE.use_64bit { MODELPARAM_VALUE.use_64bit PARAM_VALUE.use_64bit } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.use_64bit}] ${MODELPARAM_VALUE.use_64bit}
}

proc update_MODELPARAM_VALUE.C_S_AXI_MIN_SIZE { MODELPARAM_VALUE.C_S_AXI_MIN_SIZE PARAM_VALUE.C_S_AXI_MIN_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_MIN_SIZE}] ${MODELPARAM_VALUE.C_S_AXI_MIN_SIZE}
}

proc update_MODELPARAM_VALUE.C_USE_WSTRB { MODELPARAM_VALUE.C_USE_WSTRB PARAM_VALUE.C_USE_WSTRB } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_USE_WSTRB}] ${MODELPARAM_VALUE.C_USE_WSTRB}
}

proc update_MODELPARAM_VALUE.C_DPHASE_TIMEOUT { MODELPARAM_VALUE.C_DPHASE_TIMEOUT PARAM_VALUE.C_DPHASE_TIMEOUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DPHASE_TIMEOUT}] ${MODELPARAM_VALUE.C_DPHASE_TIMEOUT}
}

proc update_MODELPARAM_VALUE.C_BASEADDR { MODELPARAM_VALUE.C_BASEADDR PARAM_VALUE.C_BASEADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BASEADDR}] ${MODELPARAM_VALUE.C_BASEADDR}
}

proc update_MODELPARAM_VALUE.C_HIGHADDR { MODELPARAM_VALUE.C_HIGHADDR PARAM_VALUE.C_HIGHADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HIGHADDR}] ${MODELPARAM_VALUE.C_HIGHADDR}
}

proc update_MODELPARAM_VALUE.C_NUM_REG { MODELPARAM_VALUE.C_NUM_REG PARAM_VALUE.C_NUM_REG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_REG}] ${MODELPARAM_VALUE.C_NUM_REG}
}

proc update_MODELPARAM_VALUE.C_NUM_MEM { MODELPARAM_VALUE.C_NUM_MEM PARAM_VALUE.C_NUM_MEM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_MEM}] ${MODELPARAM_VALUE.C_NUM_MEM}
}

proc update_MODELPARAM_VALUE.C_SLV_AWIDTH { MODELPARAM_VALUE.C_SLV_AWIDTH PARAM_VALUE.C_SLV_AWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SLV_AWIDTH}] ${MODELPARAM_VALUE.C_SLV_AWIDTH}
}

proc update_MODELPARAM_VALUE.C_SLV_DWIDTH { MODELPARAM_VALUE.C_SLV_DWIDTH PARAM_VALUE.C_SLV_DWIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SLV_DWIDTH}] ${MODELPARAM_VALUE.C_SLV_DWIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

