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
int p0_out0_priority=0;
int p0_out0_msg_len=sizeof(int)/4;

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
// Channel recv_channel_p0_from_p0
extern volatile int *p0_in0;
extern volatile int *p0_in0_heartbeat;
// Channel recv_channel_p0_from_p1
extern volatile int *p0_in1;
extern volatile int *p0_in1_heartbeat;
// Channel recv_channel_p0_from_p2
extern volatile int *p0_in2;
extern volatile int *p0_in2_heartbeat;

void p0_init(void)
{
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,-1); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
};

void p0_main(void)
{
	   while(1) // Loop forever
	   {
		// Wait GlobalSync
		   NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,-1); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		*p0_in1;
		*p0_in2;
	   };
};
// *** DEFINE YOUR PROCESS MAIN CODE ABOVE THIS LINE
