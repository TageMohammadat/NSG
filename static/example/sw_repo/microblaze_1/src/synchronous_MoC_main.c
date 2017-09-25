#include "software_configuration.h"

// It is important that the processes uses an alternate send_channel, otherwise execution will be much slower
// Declare prototypes
// Channel send_channel_p1_to_p0
volatile int *p1_out0=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p0),0);
// Channel recv_channel_p1_from_p0
volatile int *p1_in0=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p0),0);
volatile int *p1_in0_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p0),sizeof(int)/4);

int xmain(void)
{
   p1_init();
   p1_main();
   return 0;
};
