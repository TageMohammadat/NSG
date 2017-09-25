

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "kth_2DNoC_2x2x1" "NUM_INSTANCES" "DEVICE_ID"  "C_S00_AXI_BASEADDR" "C_S00_AXI_HIGHADDR"
}
