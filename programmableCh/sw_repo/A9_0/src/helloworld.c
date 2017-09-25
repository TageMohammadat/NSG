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


#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "software_configuration.h"
#include "kth_axi_Mesh_2D_Nostrum_2x2x1.h"

extern volatile int *p0_in1;
extern volatile int *p0_in2;

int main()
{
    init_platform();
    //for non-secure PL access (see p 38, Enabling Secure Access to the PL: A Case Study, UG1019)
	//Xil_Out32(0xF8000008,0xDF0D);
	//Xil_Out32(0xF8000240,0x0);
	//Xil_Out32(0xF890001C,0x1);
	//Xil_Out32(0xF8000004,0x767B);
	// ... others possibly follow

   // Send Channel, TDN, Target z, y, x, Source PID, Dest PID
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p3,1,0,1,0,p3_pid,p0_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p2,1,0,1,1,p2_pid,p0_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p1,1,0,0,1,p1_pid,p0_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p0,1,0,0,0,p0_pid,p0_pid);
   // Recv Channels - Dest MoC Type, Dest PID, Source PID
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p3,SMOC,p0_pid,p3_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p2,SMOC,p0_pid,p2_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p1,SMOC,p0_pid,p1_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p0,SMOC,p0_pid,p0_pid);
   // Wait for first Heartbeat (=GlobalSynchronizer Flag)
   // to ensure that all SMOC processes initializes their output queues in the same sync frame
   while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
   // Initialize all SMOCs
   p0_init();

    print("Hello World\n\r");

    while(1) // Loop forever
    	   {
    		// Wait for a heart beat signal which gives a guarantee that a monotonically consistent behavior can be assumed as long as:
    		// computation + communication time for one loop at both the sender and receiver sides is < 1 s
    		// In principle the heartbeat can be configured to a period of 1 micro second, but since:
    			// 1. printf takes typically long (fractions of a second) and
    			// 2. the output is expected to be monitored by a human,
    		// It is deemed appropriate to set it to 1 sec period.
    		// Otherwise, 2 millisecond seems to be a good starting period for the public demonstrator
    		NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,-1); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
    		printf("message from P1: %d \n",*p0_in1);
    		printf("message from P2: %d \n",*p0_in2);
    	   }

    cleanup_platform();
    return 0;
}
