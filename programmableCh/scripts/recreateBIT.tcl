

cd $PROJECTFOLDER

# [[ Tcl Console on Vivado ]] #
open_project $PROJECTNAME.xpr

reset_run impl_1 -prev_step 
launch_runs impl_1 -to_step write_bitstream -jobs 8
### one can start gui to see what is going on
#start_gui
##stop_gui


########################################
#     One may have to wait ~5 mins     #
### wanna take a few sips of coffee? ###
########################################

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

