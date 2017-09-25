

cd $PROJECTFOLDER

# [[ Tcl Console on Vivado ]] #
open_project $PROJECTNAME.xpr
## Generate the bitsteam with ELF
#add_files -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf
add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"
#set_property used_in_simulation 0 [get_files /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf]
set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]
#add_files -fileset sim_1 -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf
add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"

#add_files -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf
add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"
#set_property used_in_simulation 0 [get_files /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf]
set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]
#add_files -fileset sim_1 -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf
add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"

add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"
set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]
add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]
#set_property SCOPED_TO_CELLS { microblaze_1 } [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_CELLS" "microblaze_1" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]

set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]
set_property "SCOPED_TO_CELLS" "microblaze_2" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]

set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]
set_property "SCOPED_TO_CELLS" "microblaze_3" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]
#set_property SCOPED_TO_CELLS { microblaze_1 } [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_CELLS" "microblaze_1" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf}]
#set_property SCOPED_TO_CELLS { microblaze_2 } [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]
set_property "SCOPED_TO_CELLS" "microblaze_2" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]


set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]
set_property "SCOPED_TO_CELLS" "microblaze_3" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]

##
## Generate the bitsteam with ELF
add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"
#set_property used_in_simulation 0 [get_files /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf]
set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]
#add_files -fileset sim_1 -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf
add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"

#add_files -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf
add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"
#set_property used_in_simulation 0 [get_files /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf]
set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]
#add_files -fileset sim_1 -norecurse /home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf
add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"

add_files -norecurse "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"
set_property used_in_simulation 0 [get_files "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]
add_files -fileset sim_1 -norecurse "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]
#set_property SCOPED_TO_CELLS { microblaze_1 } [get_files -all -of_objects [get_fileset sources_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_CELLS" "microblaze_1" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]

set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]
set_property "SCOPED_TO_CELLS" "microblaze_2" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]

#set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]
#set_property "SCOPED_TO_CELLS" "microblaze_3" [get_files -all -of_objects [get_fileset sources_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]
#set_property SCOPED_TO_CELLS { microblaze_1 } [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_1/Debug/microblaze_1.elf}]
set_property "SCOPED_TO_CELLS" "microblaze_1" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_1/Debug/microblaze_1.elf"]"]]

#set_property SCOPED_TO_REF BD [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf}]
#set_property SCOPED_TO_CELLS { microblaze_2 } [get_files -all -of_objects [get_fileset sim_1] {/home/tage/XilinxDev/SAFEPOWER/WP3/ZeroRelease/WP3_2x2Nostrum_ZeroRelease_1703/sw/microblaze_2/Debug/microblaze_2.elf}]
set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]
set_property "SCOPED_TO_CELLS" "microblaze_2" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_2/Debug/microblaze_2.elf"]"]]


set_property "SCOPED_TO_REF" "BD" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]
set_property "SCOPED_TO_CELLS" "microblaze_3" [get_files -all -of_objects [get_fileset sim_1] [list "[file normalize "$PROJDIR/sw/microblaze_3/Debug/microblaze_3.elf"]"]]

reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
### one can start gui to see what is going on
#start_gui
##stop_gui


###################################
#  One may have to wait ~20 mins  #
### wanna take a cup of coffee? ###
###################################

wait_on_run impl_1

#export bitstream to sw
cp $PROJECTNAME.runs/impl_1/BD_wrapper.bit sw/
cp $PROJECTNAME.runs/impl_1/BD_wrapper.hwdef sw/
cp $PROJECTNAME.runs/impl_1/BD_wrapper.mmi sw/
cp $PROJECTNAME.runs/impl_1/BD_wrapper.sysdef sw/
cp $PROJECTNAME.runs/impl_1/BD_wrapper_bd.bmm sw/

#creating a folder for the outputs of the generations in a folder OUTPUTS
cp sw/BD_wrapper.bit ../OUTPUTS/KTH_Bitstream.bit
cp sw/BD_wrapper.hwdef ../OUTPUTS/KTH_HWDEF.hwdef
cp sw/BD_wrapper.mmi ../OUTPUTS/KTH_MMI.mmi
cp sw/BD_wrapper.sysdef ../OUTPUTS/KTH_SYSDEF.sysdef
cp sw/BD_wrapper_bd.bmm ../OUTPUTS/KTH_BMM.bmm

exit

