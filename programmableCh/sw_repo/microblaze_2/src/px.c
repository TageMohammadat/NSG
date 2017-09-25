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
// Channel send_channel_p1_to_p0
extern volatile int *p2_out0;

// *** DEFINE YOUR PROCESS INIT CODE ABOVE THIS LINE
// *** DEFINE YOUR PROCESS MAIN CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// *
// * Define the process main cycle function
// *
// *****************************************************************************************************************************************

void p2_init(void)
{
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,-1); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p2_out0)=0xFFF2; NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p2_to_p0,p2_out0_priority,p2_out0_msg_len);//send 0xFFF2 as signature from P2
};

void p2_main(void)
{
	//some initial counter value
	*p2_out0=2;  int led=2;
	   while(1) // Loop forever
	   {
		//wait for the heartbeat signal (GlobalSync).
		//Note: Heartbeat signal periodicity is 1 sec
		NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,-1); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		//send counter value to the ARM node (P0)
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p2_to_p0,p2_out0_priority,1);
		//display the toggling least significant digit of led value at the LED
		IOWR(PIO_0_BASE, 0, led++);
		//increment the next outbox value by 2 (to continue sending even numbers)
		*p2_out0=*p2_out0+2;
	   };
};
// *** DEFINE YOUR PROCESS MAIN CODE ABOVE THIS LINE
