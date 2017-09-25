
from0-to-BIT:
	make from0-to-ELFs
	make BIT

from0-to-HDF:
	make HDF

from0-to-ELFs:
	make from0-to-HDF
	make ELFs

elf:
	chmod a+x scripts/generateall.sh
	./scripts/generateall.sh

run:
	chmod a+x scripts/runall.sh
	./scripts/runall.sh

runelfs:
	chmod a+x scripts/runelfs.sh
	./scripts/runelfs.sh

HDF:
	make clean
	chmod a+x scripts/createHDF.sh
	./scripts/createHDF.sh


ELFs:
	chmod a+x scripts/createELFs.sh
	./scripts/createELFs.sh

reELFs:
	chmod a+x scripts/recreateELFs.sh
	./scripts/recreateELFs.sh

BIT:
	chmod a+x scripts/createBIT.sh
	./scripts/createBIT.sh

reBIT:
	chmod a+x scripts/recreateBIT.sh
	./scripts/recreateBIT.sh

reELFs-to-BIT:
	make reELFs
	make reBIT

reELFs-to-runEXE:
	make reELFs-to-BIT
	make runEXE

updateBIT:
	make reELFs-to-BIT
	

updateBOARD:
	make reELFs-to-runEXE


openVIVADO:
	chmod a+x scripts/openVIVADO.sh
	./scripts/openVIVADO.sh

openXSDK:
	chmod a+x scripts/openXSDK.sh
	./scripts/openXSDK.sh

runEXE:
	make runelfs

EXE:
	make runEXE

from0-to-runEXE:
	make from0-to-BIT
	make runEXE

from0toHDF:
	make from0-to-HDF

from0toELFs:
	make from0-to-ELFs

from0toBIT:
	make from0-to-BIT

from0toEXE:
	make from0-to-runEXE
	rm -rfv .Xil SDK.log vivado*
X:
	make from0toEXE

all:
	make run

clean: 
	rm -rfv project .Xil OUTPUTS vivado* web*

