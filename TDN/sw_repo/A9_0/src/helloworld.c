/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

//Generic C includes and definitions
#include <stdio.h>

//Platform-specific includes and definitions
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"

//NoC-specific includes and definitions
#include "software_configuration.h"
#include "kth_axi_Mesh_2D_Nostrum_2x2x1.h"
extern void p0_init();
extern void p0_main();
extern int xmain();

//Application specific includes and definitions

int main()
{

    //Platform initialisations:
    init_platform();
    //for non-secure PL access (see p 38, Enabling Secure Access to the PL: A Case Study, UG1019)
	//Xil_Out32(0xF8000008,0xDF0D);
	//Xil_Out32(0xF8000240,0x0);
	//Xil_Out32(0xF890001C,0x1);
	//Xil_Out32(0xF8000004,0x767B);
	// ... others possibly follow
    print("Hello World\n\r");

   //call the main execution loop
   xmain();
   
   //Alternatively:
   //1. Nostrum channels initial configurations
   //p0_init();
   //2. call main (cyclic) process
   //p0_main();

    cleanup_platform();
    return 0;
}
