#include "software_configuration.h"

// It is important that the processes uses an alternate send_channel, otherwise execution will be much slower
// Declare prototypes
void p0_init(void);
extern void p0_main(void);
void save_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void send_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void get_p_context(unsigned char p, unsigned int* p_context_pointer) {}
void restore_p_context(unsigned char p, unsigned int* p_context_pointer) {}

// Channel recv_channel_p0_from_p10 0
volatile int *p0_in0=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p10),0);
volatile int *p0_in0_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p10),sizeof(int)/4);
// Channel recv_channel_p0_from_p9 1
volatile int *p0_in1=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p9),0);
volatile int *p0_in1_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p9),sizeof(int)/4);
// Channel recv_channel_p0_from_p3 2
volatile int *p0_in2=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p3),0);
volatile int *p0_in2_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p3),sizeof(int)/4);
// Channel recv_channel_p0_from_p2 3
volatile int *p0_in3=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p2),0);
volatile int *p0_in3_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p2),sizeof(int)/4);
// Channel recv_channel_p0_from_p1 4
volatile int *p0_in4=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p1),0);
volatile int *p0_in4_heartbeat=(int *)NOC_PARAMETER_MAP(NOC_RNI_RECV_BASE(recv_channel_p0_from_p1),sizeof(int)/4);

// Channel send_channel_p0_to_p10 0
volatile int *p0_out0=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p10),0);
// Channel send_channel_p0_to_p11 1
volatile int *p0_out1=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p11),0);
// Channel send_channel_p0_to_p2 2
volatile int *p0_out2=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p2),0);
// Channel send_channel_p0_to_p3 3
volatile int *p0_out3=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p3),0);
// Channel send_channel_p0_to_p1 4
volatile int *p0_out4=(int *)NOC_PARAMETER_MAP(NOC_RNI_SEND_BASE(send_channel_p0_to_p1),0);

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

//Process status
unsigned char p4s=1,p5s=1,p6s=0,p7s=0,p9s=1,p10s=1,p11s=1,p8s=1,p12s=0,p13s=0;
unsigned int *p4_context_pointer, *p5_context_pointer,*p6_context_pointer, *p7_context_pointer,*p8_context_pointer, *p9_context_pointer,*p10_context_pointer, *p11_context_pointer,*p12_context_pointer,*p13_context_pointer;

void send_command (unsigned int comm, unsigned int p, unsigned int src, unsigned int dest)
{
	unsigned int command;
	command=(comm<<COMMANDPOS)+(p<<PROCESSPOS)+(src<<SRCPOS)+(dest<<DESTPOS);
	if(dest==1 || dest==ALLNODES ){
		// Wait for next GlobalSync to make sure NOC is free
		NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		*p0_out4=command; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p1_pid,send_channel_p0_to_p1,sizeof(int)/4);}
	if(dest==2 || dest==ALLNODES ){
		// Wait for next GlobalSync to make sure NOC is free
		NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		*p0_out2=command; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p2_pid,send_channel_p0_to_p2,sizeof(int)/4);}
	if(dest==3 || dest==ALLNODES ){
		// Wait for next GlobalSync to make sure NOC is free
		NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		*p0_out3=command; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p3_pid,send_channel_p0_to_p3,sizeof(int)/4);}
}

void start_noc(void)
{
	send_command(STARTNOC,ALLPROCESSES,0,2);
}

extern volatile int *command_address; //shared memory status
extern volatile int *outbox_to_NoC1; //shared memory inbox for local cloud
extern volatile int *inbox_from_NoC1; //shared memory outbox for local
extern volatile int *outbox_to_local_cloud; //shared memory inbox for local cloud
extern volatile int *inbox_from_local_cloud; //shared memory outbox for local

void relay_command_from_local_cloud(volatile int *command_address)
{
	*p0_out4=*command_address; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p1_pid,send_channel_p0_to_p1,sizeof(int)/4);
	*p0_out2=*command_address; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p2_pid,send_channel_p0_to_p2,sizeof(int)/4);
	*p0_out3=*command_address; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p3_pid,send_channel_p0_to_p3,sizeof(int)/4);
	unsigned int command;
	command=*command_address;
	if( (command & COMMANDMASK)	>>	COMMANDPOS 	== ACT	)
	{
		if( (command & PROCESSMASK)>>PROCESSPOS == 10) 	{get_p_context(10, p10_context_pointer); restore_p_context(10, p10_context_pointer); p10s=1;}
	}
	else if( (command & COMMANDMASK)>>COMMANDPOS == DEACT)
	{
		if( (command & PROCESSMASK)>>PROCESSPOS == 10) {save_p_context(10, p10_context_pointer); send_p_context(10, p10_context_pointer); p10s=0;}
	}
}

void inject_delay(int loop){
	int i;
	for(i=0;i<loop;i++);
};

void offchip_onchip_message_forwarding (void)
{

	if( p10s == 1)
	{
		inject_delay(20);
		(*p0_out0)=*p0_in1; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p10_pid,send_channel_p0_to_p10,sizeof(int)/4);
		inject_delay(40);
		(*p0_out1)=*p0_in0; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p11_pid,send_channel_p0_to_p11,sizeof(int)/4);
	}
	else
	{
		inject_delay(20);
		(*p0_out0)=*p0_in1; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p10_pid,send_channel_p0_to_p10,sizeof(int)/4);
		inject_delay(40);
		(*p0_out1)=*p0_in0; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p11_pid,send_channel_p0_to_p11,sizeof(int)/4);
	}
}

// *** DEFINE YOUR PROCESS INIT CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// *
// * Define reset, i.e., process initialization values
// *
// *****************************************************************************************************************************************
void p0_init(void)
{
	// Wait for first GlobalSync to ensure that all processes initialises their output queues in the same sync frame
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p0_out0)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p10_pid,send_channel_p0_to_p10,sizeof(int)/4);
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p0_out1)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p11_pid,send_channel_p0_to_p11,sizeof(int)/4);
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p0_out2)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p2_pid,send_channel_p0_to_p2,sizeof(int)/4);
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p0_out3)=0; NOC_RNI_SEND(NOC_RNI_BASE,0,p0_pid,p3_pid,send_channel_p0_to_p3,sizeof(int)/4);
	// Wait for next GlobalSync to make sure NOC is free
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	*command_address=0; //shared memory status
	*outbox_to_NoC1=0; //shared memory inbox for local cloud
	*outbox_to_local_cloud=0; //shared memory inbox for local cloud
	start_noc();
};

//int MoCmain(void) //when it is called by another main
int main(void)
{
   p0_init();
   p0_main();
   return 0;
};
