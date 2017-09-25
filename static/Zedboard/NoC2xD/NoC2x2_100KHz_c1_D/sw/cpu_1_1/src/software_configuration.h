#ifndef __NOC_SW_CONFIGURATION__
#define __NOC_SW_CONFIGURATION__

#include "xbasic_types.h"
#include "xstatus.h"
#include "xil_io.h"

#define p0_pid 0
#define p1_pid 1
#define p2_pid 2
#define p3_pid 3
#define p4_pid 4
#define p5_pid 5
#define p6_pid 6
#define p7_pid 7
#define p8_pid 8
#define p9_pid 9
#define p10_pid 10
#define p11_pid 11
#define p12_pid 12
#define p13_pid 13
#define recv_channel_p3_from_p0 0
#define recv_channel_p10_from_p0 1
#define recv_channel_p11_from_p0 2
#define send_channel_p3_to_p0 0
#define send_channel_p9_to_p0 1
#define send_channel_p10_to_p0 2
// *****************************************************************************************************************************************
// *
// * The following parameters are used to configure the device driver correctly for this node
// *
// *****************************************************************************************************************************************
#define SIZE_SEND_CHANNELS 2

// Remap global numbering to local ones to make programming easier
#define NOC_RNI_BASE 0x70020000
#define PIO_0_BASE   0x40000000
#define PIO_0_BASE2  0x40000008
//#include <kth_avalon_noc_rni_regs.h> // This does not work for some reason...
#include "kth_axi_rni_static.h"

#define NOC_RNI_RECV_BASE(offset) (NOC_RNI_BASE+KTH_NOC_RNI_INBOX_OFFSET+(offset*KTH_NOC_RNI_MBOX_SIZE_IN_BYTES))
#define NOC_RNI_SEND_BASE(offset) (NOC_RNI_BASE+KTH_NOC_RNI_OUTBOX_OFFSET+(offset*KTH_NOC_RNI_MBOX_SIZE_IN_BYTES))

//************** Define NoC specific prototypes to make programming easier ***************//
#define IOWR(Address,Offset,Data)  Xil_Out32(((Address)+(Offset)), (Xuint32)(Data))
#define IORD(Address,Offset)       Xil_In32(((Address)+(Offset)))

// Declare prototypes
extern int SomethingForMe(int d_pid,int s_pid);

#endif /* __NOC_SW_CONFIGURATION__ */
