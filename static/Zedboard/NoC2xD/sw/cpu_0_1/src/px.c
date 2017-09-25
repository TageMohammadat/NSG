#include "software_configuration.h"

// *** DEFINE YOUR CUSTOM INCLUDE FILES BELOW THIS LINE
//Process Status

// *** DEFINE YOUR CUSTOM INCLUDE FILES ABOVE THIS LINE

// *****************************************************************************************************************************************
// *
// * Define dynamic process meta_information
// *
// * Channel priority
// * Length of message in words, excluding the 40-bit heartbeat clock (sent as 2x32 bit words)
// *****************************************************************************************************************************************
int p1_out0_priority=0;
int p1_out0_msg_len=sizeof(int)/4;

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
// Channel recv_channel_p1_from_p12 variable p1_in0
extern volatile int *p1_in0;
extern volatile int *p1_in0_heartbeat;
// Channel recv_channel_p1_from_p6 1
extern volatile int *p1_in1;
extern volatile int *p1_in1_heartbeat;
// Channel recv_channel_p1_from_p4 2
extern volatile int *p1_in2;
extern volatile int *p1_in2_heartbeat;
// Channel recv_channel_p1_from_p0 3
extern volatile int *p1_in3;
extern volatile int *p1_in3_heartbeat;
// Channel recv_channel_p5_from_p1 4
extern volatile int *p5_in4;
extern volatile int *p5_in4_heartbeat;
// Channel recv_channel_p7_from_p1 5
extern volatile int *p7_in5;
extern volatile int *p7_in5_heartbeat;
// Channel send_channel_p1_to_p7 0
extern volatile int *p1_out0;
// Channel send_channel_p1_to_p5 1
extern volatile int *p1_out1;
// Channel send_channel_p1_to_p0 2
extern volatile int *p1_out2;
// Channel send_channel_p4_to_p1 3
extern volatile int *p4_out3;
// Channel send_channel_p6_to_p2 4
extern volatile int *p6_out4;
// Channel send_channel_p6_to_p1 5
extern volatile int *p6_out5;
// *** DEFINE YOUR PROCESS INIT CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// *
// * Define reset, i.e., process initialization values
// *
// *****************************************************************************************************************************************
void p4_init(){
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p4_out3)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p4_pid,p1_pid,send_channel_p4_to_p1,sizeof(int)/4);
}
void p5_init(){}
void p6_init(){
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p6_out4)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p6_pid,p2_pid,send_channel_p6_to_p2,sizeof(int)/4);
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p6_out5)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p6_pid,p1_pid,send_channel_p6_to_p1,sizeof(int)/4);
};
void p7_init(){};
// *** DEFINE YOUR PROCESS INIT CODE ABOVE THIS LINE
void p4_main(){
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p4_out3)=IORD(PIO_0_BASE2,0);NOC_RNI_SEND(NOC_RNI_BASE,0,p4_pid,p1_pid,send_channel_p4_to_p1,sizeof(int)/4);
}
void p5_main(){IOWR(PIO_0_BASE,0,*p5_in4);};
void p6_main(){
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p6_out4)=IORD(PIO_0_BASE2,0); NOC_RNI_SEND(NOC_RNI_BASE,0,p6_pid,p2_pid,send_channel_p6_to_p2,sizeof(int)/4);
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p6_out5)=IORD(PIO_0_BASE2,0); NOC_RNI_SEND(NOC_RNI_BASE,0,p6_pid,p1_pid,send_channel_p6_to_p1,sizeof(int)/4);
};
void p7_main(){IOWR(PIO_0_BASE,0,*p7_in5);};
// *** DEFINE YOUR PROCESS MAIN CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// *
// * Define the process main cycle function
// *
// *****************************************************************************************************************************************
// *** DEFINE YOUR PROCESS MAIN CODE ABOVE THIS LINE
