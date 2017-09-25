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
// Channel send_channel_p0_to_p1 variable p0_out0
extern volatile int *p0_out0;
// Channel recv_channel_p0_from_p3 variable p0_in0
extern volatile int *p0_in0;
extern volatile int *p0_in0_heartbeat;

volatile int *command_address=0xFF00; //shared memory status
volatile int *outbox_to_NoC1=0xFF10; //shared memory inbox for local cloud
volatile int *inbox_from_NoC1=0xFF20; //shared memory outbox for local
volatile int *outbox_to_local_cloud=0xFF30; //shared memory inbox for local cloud
volatile int *inbox_from_local_cloud=0xFF40; //shared memory outbox for local

extern void send_command (unsigned int comm, unsigned int p, unsigned int src, unsigned int dest);
extern void relay_command_from_local_cloud(volatile int *command_address);
// *** DEFINE YOUR PROCESS INIT CODE ABOVE THIS LINE
// *** DEFINE YOUR PROCESS MAIN CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// * 
// * Define the process main cycle function
// *
// *****************************************************************************************************************************************
extern unsigned char p4s,p5s,p6s,p7s,p9s,p10s,p11s,p8s,p12s,p13s;
extern void inject_delay(int loop);

void p0_main(void)
{
	// Clear Synchronizer flag and wait for the synchronous start of the main loop
	   NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE);
	   while(1) // Loop forever
	   {
		   // Wait for GlobalSynchronizer Flag
		   while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		   start_noc();
			//Respond to Commands
		   //relay_command_from_local_cloud(command_address);
			 //Forwarding
		   //offchip_onchip_message_forwarding();
		   //Executing Processes Based On Status
		   //do other stuff
		   //Clear Synchronisation flag
		   NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE);
	   };
};
// *** DEFINE YOUR PROCESS MAIN CODE ABOVE THIS LINE
