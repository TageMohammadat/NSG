#include "software_configuration.h"

// It is important that the processes uses an alternate send_channel, otherwise execution will be much slower
// Declare prototypes
void p2_init(void);
void p2_main(void);
extern void p8_init(void);
extern void p8_main(void);
extern void p12_init(void);
extern void p12_main(void);
extern void p13_init(void);
extern void p13_main(void);

void save_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void send_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void get_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void restore_p_context(unsigned char p, unsigned int* p_context_pointer) {}

// Channel recv_channel_p2_from_p6 0
volatile int *p2_in0=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p6),0);
volatile int *p2_in0_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p6),sizeof(int)/4);
// Channel recv_channel_p2_from_p0 1
volatile int *p2_in1=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p0),0);
volatile int *p2_in1_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p2_from_p0),sizeof(int)/4);
// Channel recv_channel_p13_from_p2 2
volatile int *p13_in2=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p13_from_p2),0);
volatile int *p13_in2_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p13_from_p2),sizeof(int)/4);

// Channel send_channel_p2_to_p3 variable p2_out0
volatile int *p2_out0=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p2_to_p13),0);
// Channel send_channel_p2_to_p0 1
volatile int *p2_out1=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p2_to_p0),0);
// Channel send_channel_p12_to_p1 2
volatile int *p12_out2=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p12_to_p1),0);

//Process Status
unsigned char p8s=1,p12s=0,p13s=0;
unsigned int *p8_context_pointer, *p12_context_pointer,*p13_context_pointer;

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
	command=(comm<<COMMANDPOS)+(p<<PROCESSPOS)+(2<<SRCPOS)+(0<<DESTPOS);
		// Wait for next GlobalSync to make sure NOC is free
		NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		*p2_out1=command; NOC_RNI_SEND(NOC_RNI_BASE,0,p2_pid,p0_pid,send_channel_p2_to_p0,sizeof(int)/4);
}

unsigned char update_process_status(volatile int *command_address)
{
	unsigned int command;
	command=*command_address;
	//Add a hack to control the process re-allocation by a switch, it can be overridden by commands from Master node
	if( IORD(PIO_DPR_BASE,0)==1 )
	{get_p_context(8, p8_context_pointer); restore_p_context(8, p8_context_pointer); p8s=1;}
	else
	{save_p_context(8, p8_context_pointer); send_p_context(8, p8_context_pointer); p8s=0;}

	if( (command & COMMANDMASK)	>>	COMMANDPOS 	== ACT	)
	{
		if( (command & PROCESSMASK)>>PROCESSPOS == 8 ) {get_p_context(8, p8_context_pointer); restore_p_context(8, p8_context_pointer); p8s=1;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 12) {get_p_context(12, p12_context_pointer); restore_p_context(12, p12_context_pointer); p12s=1;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 13) {get_p_context(13, p13_context_pointer); restore_p_context(13, p13_context_pointer); p13s=1;}
		return 1;
	}
	else if( (command & COMMANDMASK)>>COMMANDPOS == DEACT)
	{
		if( (command & PROCESSMASK)>>PROCESSPOS == 8 ) {save_p_context(8, p8_context_pointer); send_p_context(8, p8_context_pointer); p8s=0;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 12) {save_p_context(12, p12_context_pointer); send_p_context(12, p12_context_pointer); p12s=0;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 13) {save_p_context(13, p13_context_pointer); send_p_context(13, p13_context_pointer); p13s=0;}
		return 1;
	}
	return 0;
}
unsigned char wait_for_start_noc(volatile int *command_address)
{
	unsigned int command;
	command=*command_address;
	if( command > 0) return 1; else return 0;
	//if( (command & COMMANDMASK)	>>	COMMANDPOS 	== STARTNOC	) return 1; else return 0;
}


//A function to tell I am alive
void IamAlive(void){
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	send_command(ALIVE,2);
};

int main(void)
{
	//Test if a node works
	//while(1) p8_main();
	p2_init();
	p2_main();
	return 0;
};

void p2_init(void)
{
	// Wait for first GlobalSync to ensure that all processes initialises their output queues in the same sync frame
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	if(p8s) p8_init();
	if(p12s) p12_init();
	if(p13s) p13_init();
	//(*p2_out0)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p2_pid,p13_pid,send_channel_p2_to_p13,sizeof(int)/4);
	//(*p2_out1)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p2_pid,p0_pid,send_channel_p2_to_p0,sizeof(int)/4);
	IamAlive();
};

void p2_main(void)
{
	//while(wait_for_start_noc(p2_in1)==0);
	// Clear Synchronizer flag and wait for the synchronous start of the main loop
	   NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE);
	   while(1) // Loop forever
	   {
		   // Wait for GlobalSynchronizer Flag
		   while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
			//Respond to Commands
			update_process_status(p2_in1);
			 //Forwarding
			if(p13s) *p2_out0=*p2_in0; NOC_RNI_SEND(NOC_RNI_BASE,0,p2_pid,p13_pid,send_channel_p2_to_p13,sizeof(int)/4);
			//Executing Processes Based On Status
			 if(p8s) p8_main();
			 if(p12s) p12_main();
			 if(p13s) p13_main();
			 //Say I am alive
			 IamAlive();
			 //Clear Synchronisation flag
			 NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE);
	   };
};
