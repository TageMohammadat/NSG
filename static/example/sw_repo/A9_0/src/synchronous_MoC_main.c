#include "software_configuration.h"
#include "xil_printf.h";
#include "xil_io.h";

// It is important that the processes uses an alternate send_channel, otherwise execution will be much slower
int xmain(void);

// Channel recv_channel_p0_from_p1
volatile int *p0_in1=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p1),0);
volatile int *p0_in1_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p1),sizeof(int)/4);
// Channel recv_channel_p0_from_p2
volatile int *p0_in2=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p2),0);
volatile int *p0_in2_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p2),sizeof(int)/4);


// Channel send_channel_p0_to_p1
volatile int *p0_out1=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p1),0);

// Channel send_channel_p0_to_p2
volatile int *p0_out2=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p2),0);

// *** DEFINE YOUR PROCESS INIT CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// *
// * Define reset, i.e., process initialization values
// *
// *****************************************************************************************************************************************

int xmain(void)
{
   p0_init();
   p0_main();
   return 0;
};
