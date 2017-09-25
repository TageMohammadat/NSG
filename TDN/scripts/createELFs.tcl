
## Launch and Generate the ELF files
#launch_sdk -workspace $PROJECTFOLDER/sw -hwspec $PROJECTFOLDER/sw/BD_wrapper.hdf
### Alternatively, I'll try to leave this as a note for my future self (to automate the reproduction of the code using tcl in xcst)

## *4* Launching tool
#################################################################################################################################################################################################################################################################################################################
#exit
## command the shell
cd $PROJECTFOLDER/sw

xsdk -batch
setws .

# [[ XSCT Shell on XSDK ]] #
#xsdk -batch
create_project -type hw -name BD_wrapper_hw_platform_0 -hwspec BD_wrapper.hdf
### Create BSP (bsp_0)
create_project -type bsp -name bsp_0 -hwproject BD_wrapper_hw_platform_0 -proc ps7_cortexa9_0 -os standalone
##redefine stdin/out to mdm
configbsp -hw BD_wrapper_hw_platform_0 -bsp bsp_0 stdin mdm
configbsp -hw BD_wrapper_hw_platform_0 -bsp bsp_0 stdout mdm
updatemss -hw BD_wrapper_hw_platform_0 -mss bsp_0/system.mss
regenbsp -hw BD_wrapper_hw_platform_0 -bsp bsp_0
### Create BSP (bsp_1)
create_project -type bsp -name bsp_1 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_1 -os standalone
### Create BSP (bsp_2)
create_project -type bsp -name bsp_2 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_2 -os standalone
### Create BSP (bsp_3)
create_project -type bsp -name bsp_3 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_3 -os standalone
### Create application project for microblaze 1
create_project -type app -name A9_0 -hwproject BD_wrapper_hw_platform_0 -proc ps7_cortexa9_0 -os standalone -lang C -app {Hello World} -bsp bsp_0
### Create application project for microblaze 1
create_project -type app -name microblaze_1 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_1 -os standalone -lang C -app {Hello World} -bsp bsp_1
### Create application project for microblaze 2
create_project -type app -name microblaze_2 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_2 -os standalone -lang C -app {Hello World} -bsp bsp_2
### Create application project for microblaze 3
create_project -type app -name microblaze_3 -hwproject BD_wrapper_hw_platform_0 -proc microblaze_3 -os standalone -lang C -app {Hello World} -bsp bsp_3
getprojects


# [[ Bash Shell from the project parent folder directory ]] #
### Import sources in shell
cp -Rf ../../sw_repo/A9_0/src/ A9_0/
cp -Rf ../../sw_repo/microblaze_1/src/ microblaze_1/
cp -Rf ../../sw_repo/microblaze_2/src/ microblaze_2/
cp -Rf ../../sw_repo/microblaze_3/src/ microblaze_3/



### 		       ###
#One may have to wait#
###		           ###


#***************From here the automation breaks ************************#
# [[ XSCT Shell on XSDK ]] #
setws .

#configure compiler optimisation flags to optimise for size: (did not work!)
#configapp -app A9_0 compiler-misc {-OS}
#configbsp -bsp bsp_0 compiler_flags "-OS"
#updatemss -hw BD_wrapper_hw_platform_0 -mss bsp_0/system.mss
#regenbsp -hw BD_wrapper_hw_platform_0 -bsp bsp_0
#configapp -app microblaze_1 compiler-misc {-OS}
#configbsp -bsp bsp_1 compiler_flags "-OS"
#updatemss -hw BD_wrapper_hw_platform_0 -mss bsp_1/system.mss
#regenbsp -hw BD_wrapper_hw_platform_0 -bsp bsp_1
#configapp -app microblaze_2 compiler-misc {-OS}
#configbsp -bsp bsp_2 compiler_flags "-OS"
#updatemss -hw BD_wrapper_hw_platform_0 -mss bsp_2/system.mss
#regenbsp -hw BD_wrapper_hw_platform_0 -bsp bsp_2
#configapp -app microblaze_3 compiler-misc {-OS}
#configbsp -bsp bsp_3 compiler_flags "-OS"
#updatemss -hw BD_wrapper_hw_platform_0 -mss bsp_3/system.mss
#regenbsp -hw BD_wrapper_hw_platform_0 -bsp bsp_3

#clean -type all
build -type all
mkdir ../../OUTPUTS/ARMsrc
cp -r ../../sw_repo/A9_0  ../../OUTPUTS/ARMsrc
cp -r A9_0/Debug/A9_0.elf  ../../OUTPUTS/A9_0.elf
## exit XSDK
exit
exit
exit
exit
