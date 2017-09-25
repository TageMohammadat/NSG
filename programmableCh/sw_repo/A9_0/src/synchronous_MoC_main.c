#include "software_configuration.h"
#include "xil_printf.h";
#include "xil_io.h";

// It is important that the processes uses an alternate send_channel, otherwise execution will be much slower
// Declare prototypes
extern void p0_init(void);
extern void p0_main(void);

// Channel recv_channel_p0_from_p1
volatile int *p0_in1=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p1),0);
volatile int *p0_in1_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p1),sizeof(int)/4);
// Channel recv_channel_p0_from_p2
volatile int *p0_in2=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p2),0);
volatile int *p0_in2_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p2),sizeof(int)/4);


// *** DEFINE YOUR PROCESS INIT CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// *
// * Define reset, i.e., process initialization values
// *
// *****************************************************************************************************************************************

int xmain(void)
{
   // Send Channel, TDN, Target z, y, x, Source PID, Dest PID
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p3,0,0,1,1,p3_pid,p0_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p2,0,0,1,0,p2_pid,p0_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p1,0,0,0,1,p1_pid,p0_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p0,0,0,0,0,p0_pid,p0_pid);
   // Recv Channels - Dest MoC Type, Dest PID, Source PID
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p3,SMOC,p0_pid,p3_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p2,SMOC,p0_pid,p2_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p1,SMOC,p0_pid,p1_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p0,SMOC,p0_pid,p0_pid);

   p0_init();
   p0_main();
   return 0;
};
