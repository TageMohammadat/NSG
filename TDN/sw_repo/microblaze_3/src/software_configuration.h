#ifndef __NOC_SW_CONFIGURATION__
#define __NOC_SW_CONFIGURATION__

#include "xstatus.h"
#include "xil_io.h"

#define p0_pid 0
#define p1_pid 1
#define p2_pid 2
#define p3_pid 3

#define SMOC 0
#define COMB 1
#define recv_channel_p3_from_p3 0
#define recv_channel_p3_from_p2 1
#define recv_channel_p3_from_p1 2
#define recv_channel_p3_from_p0 3
#define send_channel_p3_to_p3 0
#define send_channel_p3_to_p2 1
#define send_channel_p3_to_p1 2
#define send_channel_p3_to_p0 3
// *****************************************************************************************************************************************
// *
// * The following parameters are used to configure the device driver correctly for this node
// *
// *****************************************************************************************************************************************
#define SIZE_SEND_CHANNELS 2

// Remap global numbering to local ones to make programming easier
#define NOC_RNI_BASE XPAR_KTH_AXI_MESH_2D_NOSTRUM_TDN_2X2X1_0_BASEADDR
#define PIO_0_BASE XPAR_GPIO_0_BASEADDR

#include "kth_axi_Mesh_2D_Nostrum_2x2x1.h"

#define NOC_RNI_RECV_BASE(offset) (NOC_RNI_BASE+KTH_NOC_RNI_INBOX_OFFSET+(offset*KTH_NOC_RNI_MBOX_SIZE_IN_BYTES))
#define NOC_RNI_SEND_BASE(offset) (NOC_RNI_BASE+KTH_NOC_RNI_OUTBOX_OFFSET+(offset*KTH_NOC_RNI_MBOX_SIZE_IN_BYTES))

//************** Define NoC specific prototypes to make programming easier ***************//
#define IOWR(Address,Offset,Data)  Xil_Out32(((Address)+(Offset)), (Data))
#define IORD(Address,Offset)       Xil_In32(((Address)+(Offset)))

extern int SomethingForMe(int d_pid,int s_pid);


// Declare prototypes
extern void p3_init(void);
extern void p3_main(void);

// Declare message size
typedef struct { int x[64]; } message;

// Channel recv/send_channel_p3_from/to_p0
extern volatile message *p3_in0,*p3_in0_heartbeat,*p3_out0;
extern int p3_out0_priority,p3_out0_msg_len;
// Channel recv/send_channel_p3_from/to_p1
extern volatile message *p3_in1,*p3_in1_heartbeat,*p3_out1;
extern int p3_out1_priority,p3_out1_msg_len;
// Channel recv/send_channel_p3_from/to_p2
extern volatile message *p3_in2,*p3_in2_heartbeat,*p3_out2;
extern int p3_out2_priority,p3_out2_msg_len;
// Channel recv/send_channel_p3_from/to_p3
extern volatile message *p3_in3,*p3_in3_heartbeat,*p3_out3;
extern int p3_out3_priority,p3_out3_msg_len;

//xmain where init and main px are called
extern int xmain(void);

#endif /* __NOC_SW_CONFIGURATION__ */
