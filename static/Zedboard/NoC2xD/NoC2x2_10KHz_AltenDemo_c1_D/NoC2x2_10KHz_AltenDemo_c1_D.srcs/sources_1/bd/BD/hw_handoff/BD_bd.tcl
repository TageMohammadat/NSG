
################################################################
# This is a generated script based on design: BD
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source BD_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD_PART em.avnet.com:zed:part0:1.3 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name BD

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: cpu_1_1_local_memory
proc create_hier_cell_cpu_1_1_local_memory { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_cpu_1_1_local_memory() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -from 0 -to 0 -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net cpu_1_1_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net cpu_1_1_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net cpu_1_1_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net cpu_1_1_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net cpu_1_1_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net cpu_1_1_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net cpu_1_1_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: cpu_1_0_local_memory
proc create_hier_cell_cpu_1_0_local_memory { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_cpu_1_0_local_memory() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -from 0 -to 0 -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net cpu_1_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net cpu_1_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net cpu_1_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net cpu_1_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net cpu_1_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net cpu_1_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net cpu_1_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: cpu_0_1_local_memory
proc create_hier_cell_cpu_0_1_local_memory { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_cpu_0_1_local_memory() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -from 0 -to 0 -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net cpu_0_1_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net cpu_0_1_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net cpu_0_1_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net cpu_0_1_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net cpu_0_1_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net cpu_0_1_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net cpu_0_1_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: cpu_0_0_local_memory
proc create_hier_cell_cpu_0_0_local_memory { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_cpu_0_0_local_memory() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -from 0 -to 0 -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net cpu_0_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net cpu_0_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net cpu_0_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net cpu_0_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net cpu_0_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net cpu_0_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net cpu_0_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set BTNC [ create_bd_port -dir I BTNC ]
  set GCLK [ create_bd_port -dir I GCLK ]
  set LD0 [ create_bd_port -dir O -from 0 -to 0 LD0 ]
  set LD1 [ create_bd_port -dir O -from 0 -to 0 LD1 ]
  set LD2 [ create_bd_port -dir O -from 0 -to 0 LD2 ]
  set LD3 [ create_bd_port -dir O -from 0 -to 0 LD3 ]
  set SW0 [ create_bd_port -dir I SW0 ]
  set SW1 [ create_bd_port -dir I SW1 ]
  set SW2 [ create_bd_port -dir I SW2 ]
  set SW3 [ create_bd_port -dir I SW3 ]
  set SW7 [ create_bd_port -dir I SW7 ]

  # Create instance: Ground_1, and set properties
  set Ground_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Ground_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $Ground_1

  # Create instance: Ground_8, and set properties
  set Ground_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Ground_8 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {8} \
 ] $Ground_8

  # Create instance: Ground_15, and set properties
  set Ground_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Ground_15 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {15} \
 ] $Ground_15

  # Create instance: Ground_64, and set properties
  set Ground_64 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 Ground_64 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {64} \
 ] $Ground_64

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_timer_1, and set properties
  set axi_timer_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_1 ]

  # Create instance: axi_timer_2, and set properties
  set axi_timer_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_2 ]

  # Create instance: axi_timer_3, and set properties
  set axi_timer_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_3 ]

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 clk_wiz ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {151.636} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_RESET {false} \
 ] $clk_wiz

  # Create instance: cpu_0_0, and set properties
  set cpu_0_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.5 cpu_0_0 ]
  set_property -dict [ list \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
 ] $cpu_0_0

  # Create instance: cpu_0_0_axi_periph, and set properties
  set cpu_0_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 cpu_0_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {3} \
 ] $cpu_0_0_axi_periph

  # Create instance: cpu_0_0_local_memory
  create_hier_cell_cpu_0_0_local_memory [current_bd_instance .] cpu_0_0_local_memory

  # Create instance: cpu_0_1, and set properties
  set cpu_0_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.5 cpu_0_1 ]
  set_property -dict [ list \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
 ] $cpu_0_1

  # Create instance: cpu_0_1_axi_periph, and set properties
  set cpu_0_1_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 cpu_0_1_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {3} \
 ] $cpu_0_1_axi_periph

  # Create instance: cpu_0_1_local_memory
  create_hier_cell_cpu_0_1_local_memory [current_bd_instance .] cpu_0_1_local_memory

  # Create instance: cpu_1_0, and set properties
  set cpu_1_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.5 cpu_1_0 ]
  set_property -dict [ list \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
 ] $cpu_1_0

  # Create instance: cpu_1_0_axi_periph, and set properties
  set cpu_1_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 cpu_1_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {4} \
 ] $cpu_1_0_axi_periph

  # Create instance: cpu_1_0_local_memory
  create_hier_cell_cpu_1_0_local_memory [current_bd_instance .] cpu_1_0_local_memory

  # Create instance: cpu_1_1, and set properties
  set cpu_1_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.5 cpu_1_1 ]
  set_property -dict [ list \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
 ] $cpu_1_1

  # Create instance: cpu_1_1_axi_periph, and set properties
  set cpu_1_1_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 cpu_1_1_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {3} \
 ] $cpu_1_1_axi_periph

  # Create instance: cpu_1_1_local_memory
  create_hier_cell_cpu_1_1_local_memory [current_bd_instance .] cpu_1_1_local_memory

  # Create instance: inverter, and set properties
  set inverter [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 inverter ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $inverter

  # Create instance: kth_2DNoC_2x2x1_c1_0, and set properties
  set kth_2DNoC_2x2x1_c1_0 [ create_bd_cell -type ip -vlnv kth.se:tage:kth_2DNoC_2x2x1_c1:1.0 kth_2DNoC_2x2x1_c1_0 ]
  set_property -dict [ list \
CONFIG.HeartBeatTimerConst {500} \
 ] $kth_2DNoC_2x2x1_c1_0

  # Create instance: kth_axi_rni_static_c1_0, and set properties
  set kth_axi_rni_static_c1_0 [ create_bd_cell -type ip -vlnv kth.se:tage:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_c1_0 ]
  set_property -dict [ list \
CONFIG.rni_number {0} \
CONFIG.rni_pos {0} \
CONFIG.use_64bit {0} \
 ] $kth_axi_rni_static_c1_0

  # Create instance: kth_axi_rni_static_c1_1, and set properties
  set kth_axi_rni_static_c1_1 [ create_bd_cell -type ip -vlnv kth.se:tage:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_c1_1 ]
  set_property -dict [ list \
CONFIG.rni_number {1} \
CONFIG.rni_pos {1} \
CONFIG.use_64bit {0} \
 ] $kth_axi_rni_static_c1_1

  # Create instance: kth_axi_rni_static_c1_2, and set properties
  set kth_axi_rni_static_c1_2 [ create_bd_cell -type ip -vlnv kth.se:tage:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_c1_2 ]
  set_property -dict [ list \
CONFIG.rni_number {2} \
CONFIG.rni_pos {2} \
CONFIG.use_64bit {0} \
 ] $kth_axi_rni_static_c1_2

  # Create instance: kth_axi_rni_static_c1_3, and set properties
  set kth_axi_rni_static_c1_3 [ create_bd_cell -type ip -vlnv kth.se:tage:kth_axi_rni_static_c1:1.0 kth_axi_rni_static_c1_3 ]
  set_property -dict [ list \
CONFIG.rni_number {3} \
CONFIG.rni_pos {3} \
CONFIG.use_64bit {0} \
 ] $kth_axi_rni_static_c1_3

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]
  set_property -dict [ list \
CONFIG.C_MB_DBG_PORTS {4} \
 ] $mdm_1

  # Create instance: pio_0_0, and set properties
  set pio_0_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 pio_0_0 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {0} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO2_WIDTH {1} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.C_IS_DUAL {1} \
 ] $pio_0_0

  # Create instance: pio_0_1, and set properties
  set pio_0_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 pio_0_1 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {0} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO2_WIDTH {1} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.C_IS_DUAL {1} \
 ] $pio_0_1

  # Create instance: pio_1_0, and set properties
  set pio_1_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 pio_1_0 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {0} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO2_WIDTH {1} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.C_IS_DUAL {1} \
 ] $pio_1_0

  # Create instance: pio_1_1, and set properties
  set pio_1_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 pio_1_1 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {0} \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO2_WIDTH {1} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.C_IS_DUAL {1} \
 ] $pio_1_1

  # Create instance: pio_dpr, and set properties
  set pio_dpr [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 pio_dpr ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_ALL_OUTPUTS {0} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.C_IS_DUAL {0} \
 ] $pio_dpr

  # Create instance: sys_rst, and set properties
  set sys_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 sys_rst ]

  # Create interface connections
  connect_bd_intf_net -intf_net cpu_0_0_M_AXI_DP [get_bd_intf_pins cpu_0_0/M_AXI_DP] [get_bd_intf_pins cpu_0_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net cpu_0_0_axi_periph_M00_AXI [get_bd_intf_pins cpu_0_0_axi_periph/M00_AXI] [get_bd_intf_pins kth_axi_rni_static_c1_0/S_AXI]
  connect_bd_intf_net -intf_net cpu_0_0_axi_periph_M01_AXI [get_bd_intf_pins cpu_0_0_axi_periph/M01_AXI] [get_bd_intf_pins pio_0_0/S_AXI]
  connect_bd_intf_net -intf_net cpu_0_0_axi_periph_M02_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins cpu_0_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net cpu_0_0_debug [get_bd_intf_pins cpu_0_0/DEBUG] [get_bd_intf_pins mdm_1/MBDEBUG_0]
  connect_bd_intf_net -intf_net cpu_0_0_dlmb_1 [get_bd_intf_pins cpu_0_0/DLMB] [get_bd_intf_pins cpu_0_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net cpu_0_0_ilmb_1 [get_bd_intf_pins cpu_0_0/ILMB] [get_bd_intf_pins cpu_0_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net cpu_0_1_M_AXI_DP [get_bd_intf_pins cpu_0_1/M_AXI_DP] [get_bd_intf_pins cpu_0_1_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net cpu_0_1_axi_periph_M00_AXI [get_bd_intf_pins cpu_0_1_axi_periph/M00_AXI] [get_bd_intf_pins kth_axi_rni_static_c1_1/S_AXI]
  connect_bd_intf_net -intf_net cpu_0_1_axi_periph_M01_AXI [get_bd_intf_pins cpu_0_1_axi_periph/M01_AXI] [get_bd_intf_pins pio_0_1/S_AXI]
  connect_bd_intf_net -intf_net cpu_0_1_axi_periph_M02_AXI [get_bd_intf_pins axi_timer_1/S_AXI] [get_bd_intf_pins cpu_0_1_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net cpu_0_1_debug [get_bd_intf_pins cpu_0_1/DEBUG] [get_bd_intf_pins mdm_1/MBDEBUG_1]
  connect_bd_intf_net -intf_net cpu_0_1_dlmb_1 [get_bd_intf_pins cpu_0_1/DLMB] [get_bd_intf_pins cpu_0_1_local_memory/DLMB]
  connect_bd_intf_net -intf_net cpu_0_1_ilmb_1 [get_bd_intf_pins cpu_0_1/ILMB] [get_bd_intf_pins cpu_0_1_local_memory/ILMB]
  connect_bd_intf_net -intf_net cpu_1_0_M_AXI_DP [get_bd_intf_pins cpu_1_0/M_AXI_DP] [get_bd_intf_pins cpu_1_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net cpu_1_0_axi_periph_M00_AXI [get_bd_intf_pins cpu_1_0_axi_periph/M00_AXI] [get_bd_intf_pins kth_axi_rni_static_c1_2/S_AXI]
  connect_bd_intf_net -intf_net cpu_1_0_axi_periph_M01_AXI [get_bd_intf_pins cpu_1_0_axi_periph/M01_AXI] [get_bd_intf_pins pio_1_0/S_AXI]
  connect_bd_intf_net -intf_net cpu_1_0_axi_periph_M02_AXI [get_bd_intf_pins axi_timer_2/S_AXI] [get_bd_intf_pins cpu_1_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net cpu_1_0_axi_periph_M03_AXI [get_bd_intf_pins cpu_1_0_axi_periph/M03_AXI] [get_bd_intf_pins pio_dpr/S_AXI]
  connect_bd_intf_net -intf_net cpu_1_0_debug [get_bd_intf_pins cpu_1_0/DEBUG] [get_bd_intf_pins mdm_1/MBDEBUG_2]
  connect_bd_intf_net -intf_net cpu_1_0_dlmb_1 [get_bd_intf_pins cpu_1_0/DLMB] [get_bd_intf_pins cpu_1_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net cpu_1_0_ilmb_1 [get_bd_intf_pins cpu_1_0/ILMB] [get_bd_intf_pins cpu_1_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net cpu_1_1_M_AXI_DP [get_bd_intf_pins cpu_1_1/M_AXI_DP] [get_bd_intf_pins cpu_1_1_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net cpu_1_1_axi_periph_M00_AXI [get_bd_intf_pins cpu_1_1_axi_periph/M00_AXI] [get_bd_intf_pins kth_axi_rni_static_c1_3/S_AXI]
  connect_bd_intf_net -intf_net cpu_1_1_axi_periph_M01_AXI [get_bd_intf_pins cpu_1_1_axi_periph/M01_AXI] [get_bd_intf_pins pio_1_1/S_AXI]
  connect_bd_intf_net -intf_net cpu_1_1_axi_periph_M02_AXI [get_bd_intf_pins axi_timer_3/S_AXI] [get_bd_intf_pins cpu_1_1_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net cpu_1_1_debug [get_bd_intf_pins cpu_1_1/DEBUG] [get_bd_intf_pins mdm_1/MBDEBUG_3]
  connect_bd_intf_net -intf_net cpu_1_1_dlmb_1 [get_bd_intf_pins cpu_1_1/DLMB] [get_bd_intf_pins cpu_1_1_local_memory/DLMB]
  connect_bd_intf_net -intf_net cpu_1_1_ilmb_1 [get_bd_intf_pins cpu_1_1/ILMB] [get_bd_intf_pins cpu_1_1_local_memory/ILMB]

  # Create port connections
  connect_bd_net -net BTNC_1 [get_bd_ports BTNC] [get_bd_pins inverter/Op1]
  connect_bd_net -net GCLK_1 [get_bd_ports GCLK] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net Ground_15_dout [get_bd_pins Ground_15/dout] [get_bd_pins kth_axi_rni_static_c1_0/dap_address] [get_bd_pins kth_axi_rni_static_c1_1/dap_address] [get_bd_pins kth_axi_rni_static_c1_2/dap_address] [get_bd_pins kth_axi_rni_static_c1_3/dap_address]
  connect_bd_net -net Ground_1_dout [get_bd_pins Ground_1/dout] [get_bd_pins kth_axi_rni_static_c1_0/dap_read] [get_bd_pins kth_axi_rni_static_c1_0/dap_write] [get_bd_pins kth_axi_rni_static_c1_1/dap_read] [get_bd_pins kth_axi_rni_static_c1_1/dap_write] [get_bd_pins kth_axi_rni_static_c1_2/dap_read] [get_bd_pins kth_axi_rni_static_c1_2/dap_write] [get_bd_pins kth_axi_rni_static_c1_3/dap_read] [get_bd_pins kth_axi_rni_static_c1_3/dap_write]
  connect_bd_net -net Ground_64_dout [get_bd_pins Ground_64/dout] [get_bd_pins kth_axi_rni_static_c1_0/dap_writedata] [get_bd_pins kth_axi_rni_static_c1_1/dap_writedata] [get_bd_pins kth_axi_rni_static_c1_2/dap_writedata] [get_bd_pins kth_axi_rni_static_c1_3/dap_writedata]
  connect_bd_net -net Ground_8_dout [get_bd_pins Ground_8/dout] [get_bd_pins kth_axi_rni_static_c1_0/dap_byteenable] [get_bd_pins kth_axi_rni_static_c1_1/dap_byteenable] [get_bd_pins kth_axi_rni_static_c1_2/dap_byteenable] [get_bd_pins kth_axi_rni_static_c1_3/dap_byteenable]
  connect_bd_net -net SW0_1 [get_bd_ports SW0] [get_bd_pins pio_0_0/gpio2_io_i]
  connect_bd_net -net SW1_1 [get_bd_ports SW1] [get_bd_pins pio_0_1/gpio2_io_i]
  connect_bd_net -net SW2_1 [get_bd_ports SW2] [get_bd_pins pio_1_0/gpio2_io_i]
  connect_bd_net -net SW3_1 [get_bd_ports SW3] [get_bd_pins pio_1_1/gpio2_io_i]
  connect_bd_net -net SW7_1 [get_bd_ports SW7] [get_bd_pins pio_dpr/gpio_io_i]
  connect_bd_net -net cpu_1_1_Clk [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_timer_1/s_axi_aclk] [get_bd_pins axi_timer_2/s_axi_aclk] [get_bd_pins axi_timer_3/s_axi_aclk] [get_bd_pins clk_wiz/clk_out1] [get_bd_pins cpu_0_0/Clk] [get_bd_pins cpu_0_0_axi_periph/ACLK] [get_bd_pins cpu_0_0_axi_periph/M00_ACLK] [get_bd_pins cpu_0_0_axi_periph/M01_ACLK] [get_bd_pins cpu_0_0_axi_periph/M02_ACLK] [get_bd_pins cpu_0_0_axi_periph/S00_ACLK] [get_bd_pins cpu_0_0_local_memory/LMB_Clk] [get_bd_pins cpu_0_1/Clk] [get_bd_pins cpu_0_1_axi_periph/ACLK] [get_bd_pins cpu_0_1_axi_periph/M00_ACLK] [get_bd_pins cpu_0_1_axi_periph/M01_ACLK] [get_bd_pins cpu_0_1_axi_periph/M02_ACLK] [get_bd_pins cpu_0_1_axi_periph/S00_ACLK] [get_bd_pins cpu_0_1_local_memory/LMB_Clk] [get_bd_pins cpu_1_0/Clk] [get_bd_pins cpu_1_0_axi_periph/ACLK] [get_bd_pins cpu_1_0_axi_periph/M00_ACLK] [get_bd_pins cpu_1_0_axi_periph/M01_ACLK] [get_bd_pins cpu_1_0_axi_periph/M02_ACLK] [get_bd_pins cpu_1_0_axi_periph/M03_ACLK] [get_bd_pins cpu_1_0_axi_periph/S00_ACLK] [get_bd_pins cpu_1_0_local_memory/LMB_Clk] [get_bd_pins cpu_1_1/Clk] [get_bd_pins cpu_1_1_axi_periph/ACLK] [get_bd_pins cpu_1_1_axi_periph/M00_ACLK] [get_bd_pins cpu_1_1_axi_periph/M01_ACLK] [get_bd_pins cpu_1_1_axi_periph/M02_ACLK] [get_bd_pins cpu_1_1_axi_periph/S00_ACLK] [get_bd_pins cpu_1_1_local_memory/LMB_Clk] [get_bd_pins kth_2DNoC_2x2x1_c1_0/clk] [get_bd_pins kth_axi_rni_static_c1_0/S_AXI_ACLK] [get_bd_pins kth_axi_rni_static_c1_1/S_AXI_ACLK] [get_bd_pins kth_axi_rni_static_c1_2/S_AXI_ACLK] [get_bd_pins kth_axi_rni_static_c1_3/S_AXI_ACLK] [get_bd_pins pio_0_0/s_axi_aclk] [get_bd_pins pio_0_1/s_axi_aclk] [get_bd_pins pio_1_0/s_axi_aclk] [get_bd_pins pio_1_1/s_axi_aclk] [get_bd_pins pio_dpr/s_axi_aclk] [get_bd_pins sys_rst/slowest_sync_clk]
  connect_bd_net -net inverter_Res [get_bd_pins inverter/Res] [get_bd_pins sys_rst/ext_reset_in]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_From_NoC_0 [get_bd_pins kth_2DNoC_2x2x1_c1_0/From_NoC_0] [get_bd_pins kth_axi_rni_static_c1_0/FROM_NOC]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_From_NoC_1 [get_bd_pins kth_2DNoC_2x2x1_c1_0/From_NoC_1] [get_bd_pins kth_axi_rni_static_c1_1/FROM_NOC]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_From_NoC_2 [get_bd_pins kth_2DNoC_2x2x1_c1_0/From_NoC_2] [get_bd_pins kth_axi_rni_static_c1_2/FROM_NOC]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_From_NoC_3 [get_bd_pins kth_2DNoC_2x2x1_c1_0/From_NoC_3] [get_bd_pins kth_axi_rni_static_c1_3/FROM_NOC]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_HeartBeat_0 [get_bd_pins kth_2DNoC_2x2x1_c1_0/HeartBeat_0] [get_bd_pins kth_axi_rni_static_c1_0/HeartBeat]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_HeartBeat_1 [get_bd_pins kth_2DNoC_2x2x1_c1_0/HeartBeat_1] [get_bd_pins kth_axi_rni_static_c1_1/HeartBeat]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_HeartBeat_2 [get_bd_pins kth_2DNoC_2x2x1_c1_0/HeartBeat_2] [get_bd_pins kth_axi_rni_static_c1_2/HeartBeat]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_HeartBeat_3 [get_bd_pins kth_2DNoC_2x2x1_c1_0/HeartBeat_3] [get_bd_pins kth_axi_rni_static_c1_3/HeartBeat]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_Sync_0 [get_bd_pins kth_2DNoC_2x2x1_c1_0/Sync_0] [get_bd_pins kth_axi_rni_static_c1_0/Sync]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_Sync_1 [get_bd_pins kth_2DNoC_2x2x1_c1_0/Sync_1] [get_bd_pins kth_axi_rni_static_c1_1/Sync]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_Sync_2 [get_bd_pins kth_2DNoC_2x2x1_c1_0/Sync_2] [get_bd_pins kth_axi_rni_static_c1_2/Sync]
  connect_bd_net -net kth_2DNoC_2x2x1_c1_0_Sync_3 [get_bd_pins kth_2DNoC_2x2x1_c1_0/Sync_3] [get_bd_pins kth_axi_rni_static_c1_3/Sync]
  connect_bd_net -net kth_axi_rni_static_c1_0_TO_NOC [get_bd_pins kth_2DNoC_2x2x1_c1_0/To_NoC_0] [get_bd_pins kth_axi_rni_static_c1_0/TO_NOC]
  connect_bd_net -net kth_axi_rni_static_c1_1_TO_NOC [get_bd_pins kth_2DNoC_2x2x1_c1_0/To_NoC_1] [get_bd_pins kth_axi_rni_static_c1_1/TO_NOC]
  connect_bd_net -net kth_axi_rni_static_c1_2_TO_NOC [get_bd_pins kth_2DNoC_2x2x1_c1_0/To_NoC_2] [get_bd_pins kth_axi_rni_static_c1_2/TO_NOC]
  connect_bd_net -net kth_axi_rni_static_c1_3_TO_NOC [get_bd_pins kth_2DNoC_2x2x1_c1_0/To_NoC_3] [get_bd_pins kth_axi_rni_static_c1_3/TO_NOC]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins sys_rst/mb_debug_sys_rst]
  connect_bd_net -net pio_0_0_gpio_io_o [get_bd_ports LD0] [get_bd_pins pio_0_0/gpio_io_o]
  connect_bd_net -net pio_0_1_gpio_io_o [get_bd_ports LD1] [get_bd_pins pio_0_1/gpio_io_o]
  connect_bd_net -net pio_1_0_gpio_io_o [get_bd_ports LD2] [get_bd_pins pio_1_0/gpio_io_o]
  connect_bd_net -net pio_1_1_gpio_io_o [get_bd_ports LD3] [get_bd_pins pio_1_1/gpio_io_o]
  connect_bd_net -net rst_clk_wiz_50M_bus_struct_reset [get_bd_pins cpu_0_0_local_memory/SYS_Rst] [get_bd_pins cpu_0_1_local_memory/SYS_Rst] [get_bd_pins cpu_1_0_local_memory/SYS_Rst] [get_bd_pins cpu_1_1_local_memory/SYS_Rst] [get_bd_pins sys_rst/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_50M_interconnect_aresetn [get_bd_pins cpu_0_0_axi_periph/ARESETN] [get_bd_pins cpu_0_1_axi_periph/ARESETN] [get_bd_pins cpu_1_0_axi_periph/ARESETN] [get_bd_pins cpu_1_1_axi_periph/ARESETN] [get_bd_pins sys_rst/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_50M_mb_reset [get_bd_pins cpu_0_0/Reset] [get_bd_pins cpu_0_1/Reset] [get_bd_pins cpu_1_0/Reset] [get_bd_pins cpu_1_1/Reset] [get_bd_pins sys_rst/mb_reset]
  connect_bd_net -net rst_clk_wiz_50M_peripheral_aresetn [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_timer_1/s_axi_aresetn] [get_bd_pins axi_timer_2/s_axi_aresetn] [get_bd_pins axi_timer_3/s_axi_aresetn] [get_bd_pins cpu_0_0_axi_periph/M00_ARESETN] [get_bd_pins cpu_0_0_axi_periph/M01_ARESETN] [get_bd_pins cpu_0_0_axi_periph/M02_ARESETN] [get_bd_pins cpu_0_0_axi_periph/S00_ARESETN] [get_bd_pins cpu_0_1_axi_periph/M00_ARESETN] [get_bd_pins cpu_0_1_axi_periph/M01_ARESETN] [get_bd_pins cpu_0_1_axi_periph/M02_ARESETN] [get_bd_pins cpu_0_1_axi_periph/S00_ARESETN] [get_bd_pins cpu_1_0_axi_periph/M00_ARESETN] [get_bd_pins cpu_1_0_axi_periph/M01_ARESETN] [get_bd_pins cpu_1_0_axi_periph/M02_ARESETN] [get_bd_pins cpu_1_0_axi_periph/M03_ARESETN] [get_bd_pins cpu_1_0_axi_periph/S00_ARESETN] [get_bd_pins cpu_1_1_axi_periph/M00_ARESETN] [get_bd_pins cpu_1_1_axi_periph/M01_ARESETN] [get_bd_pins cpu_1_1_axi_periph/M02_ARESETN] [get_bd_pins cpu_1_1_axi_periph/S00_ARESETN] [get_bd_pins kth_axi_rni_static_c1_0/S_AXI_ARESETN] [get_bd_pins kth_axi_rni_static_c1_1/S_AXI_ARESETN] [get_bd_pins kth_axi_rni_static_c1_2/S_AXI_ARESETN] [get_bd_pins kth_axi_rni_static_c1_3/S_AXI_ARESETN] [get_bd_pins pio_0_0/s_axi_aresetn] [get_bd_pins pio_0_1/s_axi_aresetn] [get_bd_pins pio_1_0/s_axi_aresetn] [get_bd_pins pio_1_1/s_axi_aresetn] [get_bd_pins pio_dpr/s_axi_aresetn] [get_bd_pins sys_rst/peripheral_aresetn]
  connect_bd_net -net sys_rst_peripheral_reset [get_bd_pins kth_2DNoC_2x2x1_c1_0/reset] [get_bd_pins sys_rst/peripheral_reset]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x50000000 [get_bd_addr_spaces cpu_0_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x0 [get_bd_addr_spaces cpu_0_0/Data] [get_bd_addr_segs cpu_0_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x10000 -offset 0x0 [get_bd_addr_spaces cpu_0_0/Instruction] [get_bd_addr_segs cpu_0_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x20000 -offset 0x70020000 [get_bd_addr_spaces cpu_0_0/Data] [get_bd_addr_segs kth_axi_rni_static_c1_0/S_AXI/reg0] SEG_kth_axi_rni_static_c1_0_reg0
  create_bd_addr_seg -range 0x10000 -offset 0x40000000 [get_bd_addr_spaces cpu_0_0/Data] [get_bd_addr_segs pio_0_0/S_AXI/Reg] SEG_pio_0_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x50000000 [get_bd_addr_spaces cpu_0_1/Data] [get_bd_addr_segs axi_timer_1/S_AXI/Reg] SEG_axi_timer_1_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x0 [get_bd_addr_spaces cpu_0_1/Data] [get_bd_addr_segs cpu_0_1_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x10000 -offset 0x0 [get_bd_addr_spaces cpu_0_1/Instruction] [get_bd_addr_segs cpu_0_1_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x20000 -offset 0x70020000 [get_bd_addr_spaces cpu_0_1/Data] [get_bd_addr_segs kth_axi_rni_static_c1_1/S_AXI/reg0] SEG_kth_axi_rni_static_c1_1_reg0
  create_bd_addr_seg -range 0x10000 -offset 0x40000000 [get_bd_addr_spaces cpu_0_1/Data] [get_bd_addr_segs pio_0_1/S_AXI/Reg] SEG_pio_0_1_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x50000000 [get_bd_addr_spaces cpu_1_0/Data] [get_bd_addr_segs axi_timer_2/S_AXI/Reg] SEG_axi_timer_2_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x0 [get_bd_addr_spaces cpu_1_0/Data] [get_bd_addr_segs cpu_1_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x10000 -offset 0x0 [get_bd_addr_spaces cpu_1_0/Instruction] [get_bd_addr_segs cpu_1_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x20000 -offset 0x70020000 [get_bd_addr_spaces cpu_1_0/Data] [get_bd_addr_segs kth_axi_rni_static_c1_2/S_AXI/reg0] SEG_kth_axi_rni_static_c1_2_reg0
  create_bd_addr_seg -range 0x10000 -offset 0x40000000 [get_bd_addr_spaces cpu_1_0/Data] [get_bd_addr_segs pio_1_0/S_AXI/Reg] SEG_pio_1_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x40010000 [get_bd_addr_spaces cpu_1_0/Data] [get_bd_addr_segs pio_dpr/S_AXI/Reg] SEG_pio_dpr_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x50000000 [get_bd_addr_spaces cpu_1_1/Data] [get_bd_addr_segs axi_timer_3/S_AXI/Reg] SEG_axi_timer_3_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x0 [get_bd_addr_spaces cpu_1_1/Data] [get_bd_addr_segs cpu_1_1_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x10000 -offset 0x0 [get_bd_addr_spaces cpu_1_1/Instruction] [get_bd_addr_segs cpu_1_1_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x20000 -offset 0x70020000 [get_bd_addr_spaces cpu_1_1/Data] [get_bd_addr_segs kth_axi_rni_static_c1_3/S_AXI/reg0] SEG_kth_axi_rni_static_c1_3_reg0
  create_bd_addr_seg -range 0x10000 -offset 0x40000000 [get_bd_addr_spaces cpu_1_1/Data] [get_bd_addr_segs pio_1_1/S_AXI/Reg] SEG_pio_1_1_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port SW3 -pg 1 -y -2470 -defaultsOSRD
preplace port GCLK -pg 1 -y 50 -defaultsOSRD
preplace port SW7 -pg 1 -y -110 -defaultsOSRD
preplace port BTNC -pg 1 -y -2600 -defaultsOSRD
preplace port SW0 -pg 1 -y 80 -defaultsOSRD
preplace port SW1 -pg 1 -y 580 -defaultsOSRD
preplace port SW2 -pg 1 -y 600 -defaultsOSRD
preplace portBus LD0 -pg 1 -y -250 -defaultsOSRD
preplace portBus LD1 -pg 1 -y 0 -defaultsOSRD
preplace portBus LD2 -pg 1 -y -2540 -defaultsOSRD
preplace portBus LD3 -pg 1 -y -2520 -defaultsOSRD
preplace inst cpu_0_1_local_memory -pg 1 -lvl 5 -y -140 -defaultsOSRD
preplace inst pio_0_1 -pg 1 -lvl 3 -y 10 -defaultsOSRD
preplace inst Ground_1 -pg 1 -lvl 1 -y -990 -defaultsOSRD
preplace inst kth_axi_rni_static_c1_0 -pg 1 -lvl 1 -y -560 -defaultsOSRD
preplace inst clk_wiz -pg 1 -lvl 1 -y -50 -defaultsOSRD
preplace inst cpu_1_1_axi_periph -pg 1 -lvl 3 -y -2330 -defaultsOSRD
preplace inst cpu_1_0_axi_periph -pg 1 -lvl 1 -y -2300 -defaultsOSRD
preplace inst kth_axi_rni_static_c1_1 -pg 1 -lvl 3 -y -620 -defaultsOSRD
preplace inst kth_axi_rni_static_c1_2 -pg 1 -lvl 1 -y -1680 -defaultsOSRD
preplace inst cpu_0_0_axi_periph -pg 1 -lvl 1 -y 170 -defaultsOSRD
preplace inst sys_rst -pg 1 -lvl 5 -y 640 -defaultsOSRD
preplace inst kth_axi_rni_static_c1_3 -pg 1 -lvl 3 -y -1740 -defaultsOSRD
preplace inst cpu_0_0 -pg 1 -lvl 1 -y -340 -defaultsOSRD
preplace inst cpu_1_0 -pg 1 -lvl 1 -y -1910 -defaultsOSRD
preplace inst cpu_0_1 -pg 1 -lvl 3 -y -180 -defaultsOSRD
preplace inst axi_timer_0 -pg 1 -lvl 2 -y 111 -defaultsOSRD
preplace inst Ground_15 -pg 1 -lvl 1 -y -1170 -defaultsOSRD
preplace inst cpu_1_1 -pg 1 -lvl 3 -y -1960 -defaultsOSRD
preplace inst cpu_0_1_axi_periph -pg 1 -lvl 3 -y 250 -defaultsOSRD
preplace inst axi_timer_1 -pg 1 -lvl 4 -y 300 -defaultsOSRD
preplace inst cpu_0_0_local_memory -pg 1 -lvl 3 -y -360 -defaultsOSRD
preplace inst Ground_64 -pg 1 -lvl 1 -y -1260 -defaultsOSRD
preplace inst axi_timer_2 -pg 1 -lvl 2 -y -2370 -defaultsOSRD
preplace inst mdm_1 -pg 1 -lvl 1 -y 900 -defaultsOSRD
preplace inst Ground_8 -pg 1 -lvl 1 -y -1080 -defaultsOSRD
preplace inst cpu_1_1_local_memory -pg 1 -lvl 4 -y -2040 -defaultsOSRD
preplace inst axi_timer_3 -pg 1 -lvl 5 -y -2290 -defaultsOSRD
preplace inst cpu_1_0_local_memory -pg 1 -lvl 2 -y -2010 -defaultsOSRD
preplace inst pio_1_0 -pg 1 -lvl 1 -y -2060 -defaultsOSRD
preplace inst kth_2DNoC_2x2x1_c1_0 -pg 1 -lvl 2 -y -1190 -defaultsOSRD
preplace inst pio_1_1 -pg 1 -lvl 3 -y -2110 -defaultsOSRD
preplace inst pio_dpr -pg 1 -lvl 6 -y 150 -defaultsOSRD
preplace inst inverter -pg 1 -lvl 1 -y 730 -defaultsOSRD
preplace inst pio_0_0 -pg 1 -lvl 1 -y -190 -defaultsOSRD
preplace netloc cpu_1_1_axi_periph_M01_AXI 1 2 2 NJ -2490 NJ
preplace netloc kth_axi_rni_static_c1_1_TO_NOC 1 1 3 700 -770 N -770 1710
preplace netloc Ground_8_dout 1 0 3 20 -930 NJ -1000 1200
preplace netloc cpu_1_0_axi_periph_M03_AXI 1 1 5 NJ -2570 NJ -2570 NJ -2570 NJ -2570 2480
preplace netloc cpu_0_0_ilmb_1 1 1 2 NJ -370 N
preplace netloc SW1_1 1 0 4 NJ 580 NJ 580 NJ 580 1710
preplace netloc GCLK_1 1 0 1 NJ
preplace netloc cpu_1_1_M_AXI_DP 1 2 2 1190 -2510 1730
preplace netloc SW2_1 1 0 2 NJ 600 NJ
preplace netloc cpu_0_0_M_AXI_DP 1 0 2 -20 -720 NJ
preplace netloc cpu_0_1_axi_periph_M01_AXI 1 2 2 NJ -70 NJ
preplace netloc inverter_Res 1 1 4 690 620 NJ 620 NJ 620 NJ
preplace netloc cpu_1_0_dlmb_1 1 1 1 600
preplace netloc Ground_1_dout 1 0 3 10 -940 NJ -990 1190
preplace netloc cpu_1_0_axi_periph_M02_AXI 1 1 1 600
preplace netloc cpu_1_1_axi_periph_M00_AXI 1 2 2 1180 -2500 1720
preplace netloc kth_2DNoC_2x2x1_c1_0_From_NoC_0 1 0 3 60 -750 NJ -750 NJ
preplace netloc SW0_1 1 0 2 NJ 0 NJ
preplace netloc kth_2DNoC_2x2x1_c1_0_From_NoC_1 1 2 1 1160
preplace netloc kth_2DNoC_2x2x1_c1_0_From_NoC_2 1 0 3 30 -2550 NJ -2550 NJ
preplace netloc kth_2DNoC_2x2x1_c1_0_Sync_0 1 0 3 70 -740 NJ -740 NJ
preplace netloc kth_2DNoC_2x2x1_c1_0_From_NoC_3 1 2 1 1090
preplace netloc cpu_1_0_axi_periph_M01_AXI 1 0 2 50 -2500 570
preplace netloc kth_2DNoC_2x2x1_c1_0_Sync_1 1 2 1 1140
preplace netloc SW3_1 1 0 4 NJ -2580 N -2580 N -2580 1740
preplace netloc kth_2DNoC_2x2x1_c1_0_Sync_2 1 0 3 40 -2540 NJ -2540 NJ
preplace netloc kth_2DNoC_2x2x1_c1_0_Sync_3 1 2 1 1110
preplace netloc cpu_0_1_dlmb_1 1 3 2 NJ -200 2090
preplace netloc cpu_0_0_axi_periph_M01_AXI 1 0 2 70 -100 NJ
preplace netloc cpu_1_0_debug 1 0 2 70 -1830 580
preplace netloc mdm_1_debug_sys_rst 1 1 4 NJ 660 NJ 660 NJ 660 N
preplace netloc cpu_0_1_debug 1 1 2 680 -190 NJ
preplace netloc BTNC_1 1 0 1 -100
preplace netloc cpu_0_1_M_AXI_DP 1 2 2 1190 -90 NJ
preplace netloc rst_clk_wiz_50M_bus_struct_reset 1 1 5 670 -460 1090 -460 NJ -460 2050 -230 2440
preplace netloc cpu_1_0_ilmb_1 1 1 1 610
preplace netloc cpu_0_0_axi_periph_M00_AXI 1 0 2 30 10 NJ
preplace netloc cpu_1_1_Clk 1 0 6 -70 -2520 650 -2520 1070 -2520 1770 -2260 2060 150 N
preplace netloc sys_rst_peripheral_reset 1 1 5 680 -270 N -270 N -270 N -270 2470
preplace netloc pio_1_1_gpio_io_o 1 3 4 NJ -2520 NJ -2520 NJ -2520 NJ
preplace netloc SW7_1 1 0 7 NJ -110 NJ -280 NJ -280 NJ -280 NJ -280 NJ -280 2830
preplace netloc cpu_0_1_axi_periph_M00_AXI 1 2 2 1210 -470 1730
preplace netloc Ground_15_dout 1 0 3 -10 -920 NJ -1030 1170
preplace netloc kth_axi_rni_static_c1_3_TO_NOC 1 1 3 690 -2560 N -2560 NJ
preplace netloc kth_axi_rni_static_c1_2_TO_NOC 1 1 1 640
preplace netloc cpu_0_1_ilmb_1 1 3 2 NJ -180 2040
preplace netloc cpu_0_0_axi_periph_M02_AXI 1 1 1 NJ
preplace netloc pio_0_1_gpio_io_o 1 3 4 NJ 0 NJ 0 NJ 0 NJ
preplace netloc cpu_1_1_axi_periph_M02_AXI 1 3 2 NJ -2340 N
preplace netloc cpu_1_0_axi_periph_M00_AXI 1 0 2 60 -2480 540
preplace netloc kth_axi_rni_static_c1_0_TO_NOC 1 1 1 630
preplace netloc cpu_0_0_debug 1 0 2 40 -710 560
preplace netloc pio_0_0_gpio_io_o 1 1 6 NJ -200 NJ -100 NJ -100 NJ -250 NJ -250 NJ
preplace netloc cpu_1_0_M_AXI_DP 1 0 2 70 -2490 560
preplace netloc rst_clk_wiz_50M_mb_reset 1 0 6 -30 -730 NJ -730 1150 -260 NJ -260 NJ -260 2450
preplace netloc cpu_1_1_debug 1 1 2 660 -2100 NJ
preplace netloc cpu_0_0_dlmb_1 1 1 2 NJ -390 N
preplace netloc cpu_0_1_axi_periph_M02_AXI 1 3 1 NJ
preplace netloc rst_clk_wiz_50M_interconnect_aresetn 1 0 6 -50 -770 NJ -720 NJ 500 NJ 500 NJ 500 2460
preplace netloc rst_clk_wiz_50M_peripheral_aresetn 1 0 6 -60 -2510 NJ -2270 NJ 410 NJ 170 NJ 170 2480
preplace netloc Ground_64_dout 1 0 3 0 -1350 NJ -1350 1180
preplace netloc kth_2DNoC_2x2x1_c1_0_HeartBeat_0 1 0 3 50 -760 NJ -760 NJ
preplace netloc kth_2DNoC_2x2x1_c1_0_HeartBeat_1 1 2 1 1120
preplace netloc kth_2DNoC_2x2x1_c1_0_HeartBeat_2 1 0 3 -40 -2600 NJ -2600 NJ
preplace netloc kth_2DNoC_2x2x1_c1_0_HeartBeat_3 1 2 1 1130
preplace netloc cpu_1_1_dlmb_1 1 3 1 1760
preplace netloc pio_1_0_gpio_io_o 1 1 6 610 -2530 NJ -2540 NJ -2540 NJ -2540 NJ -2540 NJ
preplace netloc cpu_1_1_ilmb_1 1 3 1 1780
levelinfo -pg 1 -130 310 870 1480 1920 2270 2700 3660 -top -2640 -bot 1090
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


