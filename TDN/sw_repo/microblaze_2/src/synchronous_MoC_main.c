#include "xparameters.h"
#include "software_configuration.h"
#include "kth_axi_Mesh_2D_Nostrum_2x2x1.h"

// Channels mapping
// Channel recv_channel_p2_from_p0
volatile message *p2_in0=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p0),0);
volatile message *p2_in0_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p0),sizeof(message)/4);
// Channel send_channel_p2_to_p0
volatile message *p2_out0=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p2_to_p0),0);
int p2_out0_priority=0;
int p2_out0_msg_len=sizeof(message)/4;
// Channel recv_channel_p2_from_p1
volatile message *p2_in1=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p1),0);
volatile message *p2_in1_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p1),sizeof(message)/4);
// Channel send_channel_p2_to_p1
volatile message *p2_out1=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p2_to_p1),0);
int p2_out1_priority=0;
int p2_out1_msg_len=sizeof(message)/4;
// Channel recv_channel_p2_from_p2
volatile message *p2_in2=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p2),0);
volatile message *p2_in2_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p2),sizeof(message)/4);
// Channel send_channel_p2_to_p2
volatile message *p2_out2=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p2_to_p2),0);
int p2_out2_priority=0;
int p2_out2_msg_len=sizeof(message)/4;
// Channel recv_channel_p2_from_p3
volatile message *p2_in3=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p3),0);
volatile message *p2_in3_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p3),sizeof(message)/4);
// Channel send_channel_p2_to_p3
volatile message *p2_out3=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p2_to_p3),0);
int p2_out3_priority=0;
int p2_out3_msg_len=sizeof(message)/4;

int xmain(void)
{
   // Initialize all SMOCs
   p2_init();
   p2_main();
   return 0;
};
