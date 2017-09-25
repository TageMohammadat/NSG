## *1* Set up working directory
#################################################################################################################################################################################################################################################################################################################
set WORKDIR "."
set PROJECTFOLDER project
#This IPREPOFOLDER does not propagate in the script. It has to be manually fixed in line: set_property  ip_repo_paths..
set IPREPOFOLDER ip_repo
set SWREPOFOLDER sw_repo
set BOARDCONSTFIL constraints.xdc
set PROJECTNAME project
set PROJDIR [file normalize "$WORKDIR/$PROJECTFOLDER"]
# Design parameters
set HEARTBEATTIMERCONST 50000000
set DESIGNFREQMHz 50
