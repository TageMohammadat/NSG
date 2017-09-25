#include "software_configuration.h"
#include "xil_printf.h";
#include "xil_io.h";

// *** DEFINE YOUR CUSTOM INCLUDE FILES BELOW THIS LINE

// *** DEFINE YOUR CUSTOM INCLUDE FILES ABOVE THIS LINE

// *****************************************************************************************************************************************
// *
// * Define dynamic process meta_information
// *
// * Channel priority
// * Length of message in words, excluding the 40-bit heartbeat clock (sent as 2x32 bit words)
// *****************************************************************************************************************************************

// *****************************************************************************************************************************************
// * #define Parameter Memory map to speed up execution of program
// * A parameter map is a pointer to the RNI where communication data is stored
// * A parameter map consist of a base address, a channel number, and the offset to the start of the parameter (based on previous parameters)
// *
// * Naming convention <process_name>_<direction>_<parameter_name>
// * Each transmission has a heartbeat number associated with it, counting the number of heartbeats since last reset, to make debugging easier
// *
// * Parameters defined for each Send/Recv channel:
// * <channel_type> *<channel_variable_name>
// * int <channel_variable_name>_heartbeat
// *
// *****************************************************************************************************************************************

// Channels mapping
// Channel recv_channel_p0_from_p0
volatile message *p0_in0=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p0),0);
volatile message *p0_in0_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p0),sizeof(message)/4);
// Channel send_channel_p0_to_p0
volatile message *p0_out0=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p0),0);
int p0_out0_priority=0;
int p0_out0_msg_len=sizeof(message)/4;
// Channel recv_channel_p0_from_p1
volatile message *p0_in1=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p1),0);
volatile message *p0_in1_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p1),sizeof(message)/4);
// Channel send_channel_p0_to_p1
volatile message *p0_out1=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p1),0);
int p0_out1_priority=0;
int p0_out1_msg_len=sizeof(message)/4;
// Channel recv_channel_p0_from_p2
volatile message *p0_in2=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p2),0);
volatile message *p0_in2_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p2),sizeof(message)/4);
// Channel send_channel_p0_to_p2
volatile message *p0_out2=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p2),0);
int p0_out2_priority=0;
int p0_out2_msg_len=sizeof(message)/4;
// Channel recv_channel_p0_from_p3
volatile message *p0_in3=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p3),0);
volatile message *p0_in3_heartbeat=(message *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p3),sizeof(message)/4);
// Channel send_channel_p0_to_p3
volatile message *p0_out3=(message *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p3),0);
int p0_out3_priority=0;
int p0_out3_msg_len=sizeof(message)/4;


// *** DEFINE YOUR PROCESS INIT CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// *
// * Define reset, i.e., process initialization values
// *
// *****************************************************************************************************************************************

int xmain(void)
{    
  
  //for non-secure PL access (see p 38, Enabling Secure Access to the PL: A Case Study, UG1019)
	//Xil_Out32(0xF8000008,0xDF0D);
	//Xil_Out32(0xF8000240,0x0);
	//Xil_Out32(0xF890001C,0x1);
	//Xil_Out32(0xF8000004,0x767B);
	// ... others possibly follow

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
