/***************************** Include Files *******************************/
#include "kth_axi_Mesh_2D_Nostrum_2x2x1.h"
#include "xparameters.h"
#include "stdio.h"
#include "xil_io.h"

XStatus KTH_AXI_MESH_2D_NOSTRUM_2X2X1_Reg_SelfTest(void * baseaddr_p)
{
   u32 baseaddr;

   baseaddr = (u32)baseaddr_p;

   xil_printf("******************************
");
   xil_printf("* NoC Peripheral Self Test
");
   xil_printf("******************************

");
   xil_printf("Hello from NoC node nr 20024672
",NOC_RNI_NODE_NR(base_addr));
    return XST_SUCCESS;
};
