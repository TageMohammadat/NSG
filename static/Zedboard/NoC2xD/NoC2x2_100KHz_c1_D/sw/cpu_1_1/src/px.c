#include "software_configuration.h"

// *** DEFINE YOUR CUSTOM INCLUDE FILES BELOW THIS LINE

// *** DEFINE YOUR CUSTOM INCLUDE FILES ABOVE THIS LINE

// *****************************************************************************************************************************************
// *
// * Define dynamic process meta_information
// *
// * Channel priority
// * Length of message in words, excluding the 40-bit heartbeat clock (sent as 2x32 bit words)
// *****************************************************************************************************************************************
int p3_out0_priority=0;
int p3_out0_msg_len=sizeof(int)/4;

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
// Channel recv_channel_p3_from_p0 0
extern volatile int *p3_in0;
extern volatile int *p3_in0_heartbeat;
// Channel recv_channel_p10_from_p0 1
extern volatile int *p10_in1;
extern volatile int *p10_in1_heartbeat;
// Channel recv_channel_p11_from_p0 2
extern volatile int *p11_in2;
extern volatile int *p11_in2_heartbeat;

// Channel send_channel_p3_to_p0 0
extern volatile int *p3_out0;
// Channel send_channel_p9_to_p0 1
extern volatile int *p9_out1;
// Channel send_channel_p10_to_p0 2
extern volatile int *p10_out2;

void inject_delay(int loop){
	int i;
	for(i=0;i<loop;i++);
};

// *** DEFINE YOUR PROCESS INIT CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// * 
// * Define reset, i.e., process initialization values
// *
// *****************************************************************************************************************************************
void p9_init(){*p9_out1=0;NOC_RNI_SEND(NOC_RNI_BASE,0,p9_pid,p0_pid,send_channel_p9_to_p0,sizeof(int)/4);};
void p10_init(){*p10_out2=0;NOC_RNI_SEND(NOC_RNI_BASE,0,p10_pid,p0_pid,send_channel_p10_to_p0,sizeof(int)/4);};
void p11_init(){IOWR(PIO_0_BASE,0,0);};
// *** DEFINE YOUR PROCESS INIT CODE ABOVE THIS LINE
// *** DEFINE YOUR PROCESS MAIN CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// * 
// * Define the process main cycle function
// *
// *****************************************************************************************************************************************
void p9_main(){*p9_out1=IORD(PIO_0_BASE2,0);NOC_RNI_SEND(NOC_RNI_BASE,0,p9_pid,p0_pid,send_channel_p9_to_p0,sizeof(int)/4);inject_delay(40);};
//void p10_main(){*p10_out2=*p10_in1;NOC_RNI_SEND(NOC_RNI_BASE,0,p10_pid,p0_pid,send_channel_p10_to_p0,sizeof(int)/4);};
//void p11_main(){IOWR(PIO_0_BASE,0,IORD(PIO_0_BASE2,0));}; //hack to skip node-to-node communication
void p10_main(){IOWR(PIO_0_BASE,0,IORD(PIO_0_BASE2,0));};
void p11_main(){};

// *** DEFINE YOUR PROCESS MAIN CODE ABOVE THIS LINE

