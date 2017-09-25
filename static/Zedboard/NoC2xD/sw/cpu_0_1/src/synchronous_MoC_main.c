#include "software_configuration.h"

// It is important that the processes uses an alternate send_channel, otherwise execution will be much slower
// Declare prototypes
void p1_init(void);
void p1_main(void);
extern void p4_init(void);
extern void p4_main(void);
extern void p5_init(void);
extern void p5_main(void);
extern void p6_init(void);
extern void p6_main(void);
extern void p7_init(void);
extern void p7_main(void);
void save_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void send_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void get_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void restore_p_context(unsigned char p, unsigned int* p_context_pointer) {}

volatile int *p1_in0=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p12),0);
volatile int *p1_in0_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p12),sizeof(int)/4);
// Channel recv_channel_p1_from_p6 1
volatile int *p1_in1=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p6),0);
volatile int *p1_in1_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p6),sizeof(int)/4);
// Channel recv_channel_p1_from_p4 2
volatile int *p1_in2=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p4),0);
volatile int *p1_in2_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p4),sizeof(int)/4);
// Channel recv_channel_p1_from_p0 3
volatile int *p1_in3=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p0),0);
volatile int *p1_in3_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p1_from_p0),sizeof(int)/4);
// Channel recv_channel_p5_from_p1 4
volatile int *p5_in4=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p5_from_p1),0);
volatile int *p5_in4_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p5_from_p1),sizeof(int)/4);
// Channel recv_channel_p7_from_p1 5
volatile int *p7_in5=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p7_from_p1),0);
volatile int *p7_in5_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p7_from_p1),sizeof(int)/4);
// Channel send_channel_p1_to_p7 0
volatile int *p1_out0=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p7),0);
// Channel send_channel_p1_to_p5 1
volatile int *p1_out1=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p5),0);
// Channel send_channel_p1_to_p0 2
volatile int *p1_out2=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p1_to_p0),0);
// Channel send_channel_p4_to_p1 3
volatile int *p4_out3=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p4_to_p1),0);
// Channel send_channel_p6_to_p2 4
volatile int *p6_out4=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p6_to_p2),0);
// Channel send_channel_p6_to_p1 5
volatile int *p6_out5=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p6_to_p1),0);


unsigned char p4s=1,p5s=1,p6s=0,p7s=0;
unsigned int *p4_context_pointer, *p5_context_pointer,*p6_context_pointer, *p7_context_pointer;

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
	command=(comm<<COMMANDPOS)+(p<<PROCESSPOS)+(1<<SRCPOS)+(0<<DESTPOS);
		// Wait for next GlobalSync to make sure NOC is free
		NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		*p1_out2=command; NOC_RNI_SEND(NOC_RNI_BASE,0,p1_pid,p0_pid,send_channel_p1_to_p0,sizeof(int)/4);
}

unsigned char update_process_status(volatile int *command_address)
{
	unsigned int command;
	command=*command_address;
	if( (command & COMMANDMASK)	>>	COMMANDPOS 	== ACT	)
	{
		if( (command & PROCESSMASK)>>PROCESSPOS == 4) {get_p_context(4, p4_context_pointer); restore_p_context(4, p4_context_pointer); p4s=1;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 5) {get_p_context(5, p5_context_pointer); restore_p_context(5, p5_context_pointer); p5s=1;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 6) {get_p_context(6, p6_context_pointer); restore_p_context(6, p6_context_pointer); p6s=1;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 7) {get_p_context(7, p7_context_pointer); restore_p_context(7, p7_context_pointer); p7s=1;}
		return 1;
	}
	else if( (command & COMMANDMASK)>>COMMANDPOS == DEACT)
	{
		if( (command & PROCESSMASK)>>PROCESSPOS == 4) {save_p_context(4, p4_context_pointer); send_p_context(4, p4_context_pointer); p4s=0;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 5) {save_p_context(5, p5_context_pointer); send_p_context(5, p5_context_pointer); p5s=0;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 6) {save_p_context(6, p6_context_pointer); send_p_context(6, p6_context_pointer); p6s=0;}
		if( (command & PROCESSMASK)>>PROCESSPOS == 7) {save_p_context(7, p7_context_pointer); send_p_context(7, p7_context_pointer); p7s=0;}
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
	send_command(ALIVE,1);
};

int main(void)
{
   p1_init();
   p1_main();

   return 0;
};

void p1_init(){
	// Wait for first GlobalSync to ensure that all processes initialises their output queues in the same sync frame
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	p4_init();
	p5_init();
	p6_init();
	p7_init();
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p1_out0)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p1_pid,p7_pid,send_channel_p1_to_p7,sizeof(int)/4);
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p1_out1)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p1_pid,p5_pid,send_channel_p1_to_p5,sizeof(int)/4);
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p1_out2)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p1_pid,p0_pid,send_channel_p1_to_p0,sizeof(int)/4);
	 //Say I am alive
	 IamAlive();
};

void p1_main(void)
{
	// Wait for a start signal from the master node
	//while(wait_for_start_noc(p1_in3)==0);
	// Clear Synchronizer flag and wait for the synchronous start of the main loop
   NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE);
   while(1) // Loop forever
   {
	  // Wait for GlobalSynchronizer Flag
	   while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		//Respond to Commands
		update_process_status(p1_in3);
		//Executing Processes Based On Status
		 if(p4s) p4_main();
		 //Forwarding
		if(p4s) *p1_out1=*p1_in2; else *p1_out1=*p1_in0;
		// Wait for next GlobalSync to make sure NOC is free
		NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		NOC_RNI_SEND(NOC_RNI_BASE,0,p1_pid,p5_pid,send_channel_p1_to_p5,sizeof(int)/4);
		if(p7s) *p1_out0=*p1_in1;
		// Wait for next GlobalSync to make sure NOC is free
		NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		NOC_RNI_SEND(NOC_RNI_BASE,0,p1_pid,p7_pid,send_channel_p1_to_p7,sizeof(int)/4);
		 if(p5s) p5_main();
		 if(p6s) p6_main();
		 if(p7s) p7_main();
		 //Say I am alive
		 IamAlive();
		 //Clear Synchronisation flag
		 NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE);
   };
};
