# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "HeartBeatTimerConst"

}

proc update_PARAM_VALUE.HeartBeatTimerConst { PARAM_VALUE.HeartBeatTimerConst } {
	# Procedure called to update HeartBeatTimerConst when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HeartBeatTimerConst { PARAM_VALUE.HeartBeatTimerConst } {
	# Procedure called to validate HeartBeatTimerConst
	return true
}


proc update_MODELPARAM_VALUE.HeartBeatTimerConst { MODELPARAM_VALUE.HeartBeatTimerConst PARAM_VALUE.HeartBeatTimerConst } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HeartBeatTimerConst}] ${MODELPARAM_VALUE.HeartBeatTimerConst}
}

