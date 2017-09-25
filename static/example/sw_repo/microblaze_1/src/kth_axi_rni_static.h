/*****************************************************************************
* Filename:          D:\DegreeProject\Zynq\NoCGenerator\FPGA_Designs\Synchronous_demo/drivers/kth_axi_rni_static_v1_00_a/src/kth_axi_rni_static.h
* Version:           1.00.a
* Description:       kth_axi_rni_static Driver Header File
* Date:              Tue Oct 09 12:44:03 2012 (by Create and Import Peripheral Wizard)
*****************************************************************************/

#ifndef __KTH_AXI_RNI_STATIC_H__
#define __KTH_AXI_RNI_STATIC_H__

/***************************** Include Files *******************************/

#include "xil_types.h"
#include "xil_io.h"

/************************** Define Global Data *****************************/
// This device driver assumes that the following definitions are set before
// including this file, since it influences the memory map of the device driver:
// #define NOC_RNI_BASE         -- defines the base address for the local rni unit
// #define NOC_RNI_ADDRESS_SPAN -- defines the address span for the local rni unit

#define NR_OF_PROCESSORS 4
#define NR_OF_PROCESSES  4

/************************** Constant Definitions ***************************/

// Device Masks
#define KTH_NOC_RNI_XMIT_BUSY_MSK  0x00000001
#define KTH_NOC_RNI_CHANNEL_MSK    0x00000001

// Define channel status flags according to hardware interpretation
#define NOC_RNI_CHANNEL_EMPTY  0
#define NOC_RNI_CHANNEL_OPEN   1
#define NOC_RNI_CHANNEL_CLOSED 2

// Message Priority Values
#define PRIO_0 0
#define PRIO_1 1
#define PRIO_2 2
#define PRIO_3 3

// Device Memory Map
#define KTH_NOC_RNI_CTRL_OFFSET        0x00000000
#define KTH_NOC_RNI_STATUS_OFFSET      0x00000000
#define KTH_NOC_RNI_IRQ_OFFSET         0x00000008
#define KTH_NOC_RNI_HEARTBEAT_OFFSET   0x0000000C
#define KTH_NOC_RNI_INBOX_OFFSET       0x00010000
#define KTH_NOC_RNI_OUTBOX_OFFSET      0x00008000
#define KTH_NOC_RNI_MBOX_SIZE_IN_BYTES 0x00000010
#define KTH_NOC_RNI_MBOX_SIZE_IN_WORDS 0x00000004

// CTRL Register Offsets
#define KTH_NOC_RNI_CLEAR_OFFSET    (KTH_NOC_RNI_CTRL_OFFSET + 0x00000004)
#define KTH_NOC_RNI_NODE_NR_OFFSET  (KTH_NOC_RNI_CTRL_OFFSET + 0x00000010)
#define KTH_NOC_RNI_MSG_INFO_OFFSET (KTH_NOC_RNI_CTRL_OFFSET + 0x00000080)
#define KTH_NOC_RNI_MSG_CHK_OFFSET  (KTH_NOC_RNI_CTRL_OFFSET + 0x00000100)
#define KTH_NOC_RNI_SYNCHRONIZER_FLAG_OFFSET  (KTH_NOC_RNI_CTRL_OFFSET + 0x0000000C)

/**************************** Type Definitions *****************************/


/***************** Macros (Inline Functions) Definitions *******************/

#define KTH_RNI_mWriteReg(BaseAddress, RegOffset, Data) \
 	Xil_Out32((BaseAddress) + (RegOffset), (Xuint32)(Data))

#define KTH_RNI_mReadReg(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (RegOffset))

#define PRIO_0 0
#define PRIO_1 1
#define PRIO_2 2
#define PRIO_3 3
// The shift values below are derived from the size of the fields set in the source .xml file
// They correspond to their respective position in the command_reg of the noc_rni
// priority = 2*pid_size+flit_id_size+src_buffer_size
// spid = pid_size+flit_id_size+src_buffer_size
// dpid = flit_id_size+src_buffer_size
// buf  = flit_id_size
// msg_size = 0
#define NOC_SWITCH_SEND(base,priority,spid,dpid,buf,msg_size) KTH_RNI_mWriteReg(base,KTH_NOC_RNI_CTRL_OFFSET,(0x80000000+priority<<(6+SIZE_SEND_CHANNELS))+(spid<<(4+SIZE_SEND_CHANNELS))+(dpid<<(2+SIZE_SEND_CHANNELS))+(buf<<2)+msg_size)
#define NOC_RNI_SEND(base,priority,spid,dpid,buf,msg_size) KTH_RNI_mWriteReg(base,KTH_NOC_RNI_CTRL_OFFSET,(priority<<(6+SIZE_SEND_CHANNELS))+(spid<<(4+SIZE_SEND_CHANNELS))+(dpid<<(2+SIZE_SEND_CHANNELS))+(buf<<2)+msg_size)
#define NOC_RNI_STATUS(base)                   KTH_RNI_mReadReg(base,KTH_NOC_RNI_STATUS_OFFSET)
#define NOC_RNI_CLEAR(base, src)               KTH_RNI_mWriteReg(base,KTH_NOC_RNI_CLEAR_OFFSET, src)
#define NOC_RNI_NODE_NR(base)                  KTH_RNI_mReadReg(base,KTH_NOC_RNI_NODE_NR_OFFSET)
#define NOC_RNI_CHK_MSG(base,channel)          KTH_RNI_mReadReg((base+KTH_NOC_RNI_MSG_CHK_OFFSET),channel)
#define NOC_RNI_READ_SYNCHRONIZER_FLAG(base)   KTH_RNI_mReadReg(base,KTH_NOC_RNI_SYNCHRONIZER_FLAG_OFFSET)
#define NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(base)  KTH_RNI_mWriteReg(base,KTH_NOC_RNI_SYNCHRONIZER_FLAG_OFFSET,0)
#define NOC_RNI_MSG_INFO(base, src)            KTH_RNI_mReadReg(base+KTH_NOC_RNI_MSG_INFO_OFFSET,src)
#define NOC_RNI_MSG_LENGTH(base, src)          (NOC_RNI_MSG_INFO(base,src) % 4)
#define NOC_RNI_DEST_PID(base, src)            ((NOC_RNI_MSG_INFO(base,(src*4)) >> 2) % 16)
#define NOC_RNI_SRC_PID(base, src)             ((NOC_RNI_MSG_INFO(base,(src*4)) >> 6) % 16)

#define NOC_PARAMETER_MAP(base,offset)         (base+offset)
/************************** Function Prototypes ****************************/


#endif /** __KTH_AXI_RNI_STATIC_H__ */
