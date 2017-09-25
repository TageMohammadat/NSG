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
int p2_out0_priority=0;
int p2_out0_msg_len=sizeof(int)/4;

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

// Channel recv_channel_p2_from_p6 0
extern volatile int *p2_in0;
extern volatile int *p2_in0_heartbeat;
// Channel recv_channel_p2_from_p0 1
extern volatile int *p2_in1;
extern volatile int *p2_in1_heartbeat;
// Channel recv_channel_p13_from_p2 2
extern volatile int *p13_in2;
extern volatile int *p13_in2_heartbeat;
// Channel send_channel_p2_to_p13 0
extern volatile int *p2_out0;
// Channel send_channel_p2_to_p0 1
extern volatile int *p2_out1;
// Channel send_channel_p12_to_p1 2
extern volatile int *p12_out2;

// *** DEFINE YOUR PROCESS INIT CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// * 
// * Define reset, i.e., process initialization values
// *
// *****************************************************************************************************************************************
void p8_init(void){IOWR(PIO_0_BASE,0,0);};
void p12_init(void){
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p12_out2)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p12_pid,p1_pid,send_channel_p12_to_p1,sizeof(int)/4);};
void p13_init(void){};
void p8_main(void){IOWR(PIO_0_BASE,0,IORD(PIO_0_BASE2,0));};
void p12_main(void){
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p12_out2)=IORD(PIO_0_BASE2,0); NOC_RNI_SEND(NOC_RNI_BASE,0,p12_pid,p1_pid,send_channel_p12_to_p1,sizeof(int)/4);};
void p13_main(void){IOWR(PIO_0_BASE,0,*p13_in2);};
// *** DEFINE YOUR PROCESS INIT CODE ABOVE THIS LINE
// *** DEFINE YOUR PROCESS MAIN CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// * 
// * Define the process main cycle function
// *
// *****************************************************************************************************************************************
// *** DEFINE YOUR PROCESS MAIN CODE ABOVE THIS LINE
