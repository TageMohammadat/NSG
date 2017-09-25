#ifndef __NOC_SW_CONFIGURATION__
#define __NOC_SW_CONFIGURATION__

#include "xbasic_types.h"
#include "xstatus.h"
#include "xil_io.h"

#define p0_pid 0
#define p1_pid 1
#define p2_pid 2
#define p3_pid 3
#define recv_channel_p2_from_p3 0
#define recv_channel_p2_from_p2 1
#define recv_channel_p2_from_p1 2
#define recv_channel_p2_from_p0 3
#define send_channel_p2_to_p3 0
#define send_channel_p2_to_p2 1
#define send_channel_p2_to_p1 2
#define send_channel_p2_to_p0 3
// *****************************************************************************************************************************************
// *
// * The following parameters are used to configure the device driver correctly for this node
// *
// *****************************************************************************************************************************************
#define SIZE_SEND_CHANNELS 2

// Remap global numbering to local ones to make programming easier
#define NOC_RNI_BASE 0x70020000
#define PIO_0_BASE   0x40000000
//#include <kth_avalon_noc_rni_regs.h> // This does not work for some reason...
#include "kth_axi_rni_static.h"

#define NOC_RNI_RECV_BASE(offset) (NOC_RNI_BASE+KTH_NOC_RNI_INBOX_OFFSET+(offset*KTH_NOC_RNI_MBOX_SIZE_IN_BYTES))
#define NOC_RNI_SEND_BASE(offset) (NOC_RNI_BASE+KTH_NOC_RNI_OUTBOX_OFFSET+(offset*KTH_NOC_RNI_MBOX_SIZE_IN_BYTES))

//************** Define NoC specific prototypes to make programming easier ***************//
#define IOWR(Address,Offset,Data)  Xil_Out32(((Address)+(Offset)), (Xuint32)(Data))
#define IORD(Address,Offset)       Xil_In32(((Address)+(Offset)))

// Declare prototypes
extern int SomethingForMe(int d_pid,int s_pid);
extern volatile int *p2_out0,*p2_in0,*p2_in0_heartbeat;

extern void p2_init();
extern void p2_main();

#endif /* __NOC_SW_CONFIGURATION__ */
