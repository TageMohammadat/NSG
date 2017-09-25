#include "software_configuration.h"

// It is important that the processes uses an alternate send_channel, otherwise execution will be much slower
// Declare prototypes
extern void p2_init(void);
extern void p2_main(void);

// Channel send_channel_p2_to_p0
volatile int *p2_out0=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p2_to_p0),0);

// Channel recv_channel_p2_from_p0
volatile int *p2_in0=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p0),0);
volatile int *p2_in0_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p0),sizeof(int)/4);

int xmain(void)
{
   p2_init();
   p2_main();
   return 0;
};
