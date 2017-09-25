#include "software_configuration.h"

// It is important that the processes uses an alternate send_channel, otherwise execution will be much slower
// Declare prototypes
void p3_init(void);
void p3_main(void);
extern void p9_init(void);
extern void p9_main(void);
extern void p10_init(void);
extern void p10_main(void);
extern void p11_init(void);
extern void p11_main(void);
void save_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void send_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void get_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void restore_p_context(unsigned char p, unsigned int* p_context_pointer) {}

// Channel recv_channel_p3_from_p0 0
volatile int *p3_in0=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p3_from_p0),0);
volatile int *p3_in0_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p3_from_p0),sizeof(int)/4);
// Channel recv_channel_p10_from_p0 1
volatile int *p10_in1=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p10_from_p0),0);
volatile int *p10_in1_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p10_from_p0),sizeof(int)/4);
// Channel recv_channel_p11_from_p0 2
volatile int *p11_in2=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p11_from_p0),0);
volatile int *p11_in2_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p11_from_p0),sizeof(int)/4);

// Channel send_channel_p3_to_p0 0
volatile int *p3_out0=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p3_to_p0),0);
// Channel send_channel_p9_to_p0 1
volatile int *p9_out1=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p9_to_p0),0);
// Channel send_channel_p10_to_p0 2
volatile int *p10_out2=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p10_to_p0),0);

//Process Status
unsigned char p9s=0,p10s=0,p11s=0;
unsigned int *p9_context_pointer,*p10_context_pointer, *p11_context_pointer;

//A function to update process status
#define COMMANDMASK 	0x3C000000
#define PROCESSMASK 	0x03FF0000
#define COMMANDPOS		26
#define PROCESSPOS		16
#define SRCPOS			8
#define DESTPOS			0
#define ALLNODES 		0xFF
#define ALLPROCESSES 	0xFF
#define STARTNOC		0x1
#define STOPNOC			0x2
#define ACT   			0x3
#define DEACT 			0x4
#define REALLOCATE		0x5
#define ALIVE 			0x6
#define PROCESSSTTB		0x7
#define PROCESSSTTE		0x8

void send_command (unsigned int comm, unsigned int p)
{
	unsigned int command;
	command=(comm<<COMMANDPOS)+(p<<PROCESSPOS)+(3<<SRCPOS)+(0<<DESTPOS);
		// Wait for next GlobalSync to make sure NOC is free
		NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		*p3_out0=command; NOC_RNI_SEND(NOC_RNI_BASE,0,p3_pid,p0_pid,send_channel_p3_to_p0,sizeof(int)/4);
}

unsigned char update_process_status(volatile int *command_address)
{
	unsigned int command;
	command=*command_address;
	if( (command & COMMANDMASK)	>>	COMMANDPOS 	== ACT	)
	{
		if( (command & PROCESSMASK)>>PROCESSPOS == 9) {get_p_context(9, p9_context_pointer); restore_p_context(9, p9_context_pointer); p9s=1;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 10) {get_p_context(10, p10_context_pointer); restore_p_context(10, p10_context_pointer); p10s=1;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 11) {get_p_context(11, p11_context_pointer); restore_p_context(11, p11_context_pointer); p11s=1;}
		return 1;
	}
	else if( (command & COMMANDMASK)>>COMMANDPOS == DEACT)
	{
		if( (command & PROCESSMASK)>>PROCESSPOS == 9) {save_p_context(9, p9_context_pointer); send_p_context(9, p9_context_pointer); p9s=0;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 10) {save_p_context(10, p10_context_pointer); send_p_context(10, p10_context_pointer); p10s=0;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 11) {save_p_context(11, p11_context_pointer); send_p_context(11, p11_context_pointer); p11s=0;}
		return 1;
	}
	return 0;
}
unsigned char wait_for_start_noc(volatile int *command_address)
{
	unsigned int command;
	command=*command_address;
	if( (command & COMMANDMASK)	>>	COMMANDPOS 	== STARTNOC	) return 1; else return 0;
}


//A function to tell I am alive
void IamAlive(void){
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	send_command(ALIVE,3);
};

int main(void)
{
   p3_init();
   p3_main();
   return 0;
};
void p3_init(void)
{
	// Wait for first GlobalSync to ensure that all processes initialises their output queues in the same sync frame
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	//p9_init();
	//p10_init();
	//p11_init();
	//(*p3_out0)=0;NOC_RNI_SEND(NOC_RNI_BASE,0,p3_pid,p0_pid,send_channel_p3_to_p0,sizeof(int)/4);
	 //Say I am alive
	 IamAlive();
};
void p3_main(void)
{
	//while(wait_for_start_noc(p3_in0)==0);
	// Clear Synchronizer flag and wait for the synchronous start of the main loop
	   NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE);
	   while(1) // Loop forever
	   {
		   // Wait for GlobalSynchronizer Flag
		   while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
			//Respond to Commands
			//update_process_status(p3_in0);
			 //Forwarding ----
			//Executing Processes Based On Status
			 if(p9s) p9_main();
			 if(p10s) p10_main();
			 if(p11s) p11_main();
			 //Say I am alive
			 IamAlive();
			 //Clear Synchronisation flag
			 NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE);
	   };
};
