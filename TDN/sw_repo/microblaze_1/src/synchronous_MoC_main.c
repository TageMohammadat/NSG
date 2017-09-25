#include "xparameters.h"
#include "software_configuration.h"
#include "kth_axi_Mesh_2D_Nostrum_2x2x1.h"


// Channels mapping
// Channel recv_channel_p1_from_p0
volatile message *p1_in0=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p0),0);
volatile message *p1_in0_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p0),sizeof(message)/4);
// Channel send_channel_p1_to_p0
volatile message *p1_out0=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p0),0);
int p1_out0_priority=0;
int p1_out0_msg_len=sizeof(message)/4;
// Channel recv_channel_p1_from_p1
volatile message *p1_in1=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p1),0);
volatile message *p1_in1_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p1),sizeof(message)/4);
// Channel send_channel_p1_to_p1
volatile message *p1_out1=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p1),0);
int p1_out1_priority=0;
int p1_out1_msg_len=sizeof(message)/4;
// Channel recv_channel_p1_from_p2
volatile message *p1_in2=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p2),0);
volatile message *p1_in2_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p2),sizeof(message)/4);
// Channel send_channel_p1_to_p2
volatile message *p1_out2=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p2),0);
int p1_out2_priority=0;
int p1_out2_msg_len=sizeof(message)/4;
// Channel recv_channel_p1_from_p3
volatile message *p1_in3=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p3),0);
volatile message *p1_in3_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p3),sizeof(message)/4);
// Channel send_channel_p1_to_p3
volatile message *p1_out3=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p3),0);
int p1_out3_priority=0;
int p1_out3_msg_len=sizeof(message)/4;

int xmain(void)
{

   p1_init();
   p1_main();
   return 0;
};
