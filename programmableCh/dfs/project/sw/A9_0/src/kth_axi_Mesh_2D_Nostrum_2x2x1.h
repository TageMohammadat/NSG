/**************************************************************************************************************************
* Copyright (c) 2006-2017 Johnny Öberg, KTH Royal Institute of Technology, Sweden.                                          *
* All rights reserved.                                                                                                    *
*                                                                                                                         *
* Redistribution and use in source and binary forms, with or without modification, are permitted                          *
* provided that the following conditions are met:                                                                         *
*                                                                                                                         *
* 1.Redistributions of source code must retain the above copyright notice, this list of conditions                        *
*  and the following disclaimer.                                                                                          *
*                                                                                                                         *
* 2.Redistributions in binary form must reproduce the above copyright notice, this list of conditions                     *
* and the following disclaimer in the documentation and/or other materials provided with the distribution.                *
*                                                                                                                         *
* 3.The name of the author may not be used to endorse or promote products derived from this software                      *
* without specific prior written permission.                                                                              *
*                                                                                                                         *
* THIS SOFTWARE IS PROVIDED BY THE AUTHOR “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,   *
* THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE    *
* AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT *
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)       *
* HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR  *
* OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.       *
**************************************************************************************************************************/

#ifndef __KTH_AXI_MESH_2D_NOSTRUM_2X2X1_H__
#define __KTH_AXI_MESH_2D_NOSTRUM_2X2X1_H__

/***************************** Include Files *******************************/

#include "xil_types.h"
#include "xil_io.h"

/************************** Define Global Data *****************************/
// This device driver assumes that the following definitions are set before
// including this file, since it influences the memory map of the device driver:
// #define NOC_RNI_BASE         -- defines the base address for the local noc RNI
// #define NOC_RNI_ADDRESS_SPAN -- defines the address span for the local noc RNI

#define NR_OF_PROCESSORS 4
#define NR_OF_PROCESSES  4

// Device Memory Map
#define KTH_NOC_RNI_CTRL_OFFSET        0x00000000
#define KTH_NOC_RNI_INBOX_OFFSET       0x00010000
#define KTH_NOC_RNI_OUTBOX_OFFSET      0x00008000
// CTRL Register Offsets
// Write Offsets
#define KTH_NOC_RNI_CLEAR_OFFSET       (KTH_NOC_RNI_CTRL_OFFSET + 0x00000004)
#define KTH_NOC_RNI_SWITCH_OFFSET      (KTH_NOC_RNI_CTRL_OFFSET + 0x00000008)
#define KTH_NOC_RNI_HEARTBEAT_OFFSET   (KTH_NOC_RNI_CTRL_OFFSET + 0x00000010)
#define KTH_NOC_RNI_RESET_OFFSET       (KTH_NOC_RNI_CTRL_OFFSET + 0x00000014)
// Read Offsets
#define KTH_NOC_RNI_STATUS_OFFSET      (KTH_NOC_RNI_CTRL_OFFSET + 0x00000000)
#define KTH_NOC_RNI_IRQ_OFFSET         (KTH_NOC_RNI_CTRL_OFFSET + 0x00000008)

#define KTH_NOC_RNI_MBOX_SIZE_IN_BYTES 0x00000200
#define KTH_NOC_RNI_MBOX_SIZE_IN_WORDS 0x00000080

// Read Channels
#define KTH_NOC_RNI_SYNCHRONIZER_FLAG_OFFSET  (KTH_NOC_RNI_CTRL_OFFSET + 0x0000000C)
#define KTH_NOC_RNI_NODE_NR_OFFSET     (KTH_NOC_RNI_CTRL_OFFSET + 0x00000010)
#define KTH_NOC_RNI_CLOCK_TICK_OFFSET     (KTH_NOC_RNI_CTRL_OFFSET + 0x00000014)
#define KTH_NOC_RNI_MSG_INFO_OFFSET (KTH_NOC_RNI_CTRL_OFFSET + 0x00000080)
#define KTH_NOC_RNI_MSG_CHK_OFFSET  (KTH_NOC_RNI_CTRL_OFFSET + 0x00000100)
// Write Channels
#define KTH_NOC_RNI_SEND_CHANNEL_INFO_OFFSET (KTH_NOC_RNI_CTRL_OFFSET + 0x00000200)
#define KTH_NOC_RNI_RECV_CHANNEL_INFO_OFFSET (KTH_NOC_RNI_CTRL_OFFSET + 0x00000300)

/***************** Macros (Inline Functions) Definitions *******************/

#define KTH_RNI_mWriteReg(BaseAddress, RegOffset, Data) \
 	Xil_Out32((BaseAddress) + (RegOffset), (Data))

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
#define NOC_RNI_SEND(base,channel,priority,msg_size) KTH_RNI_mWriteReg(base,0,((channel<<12)+(priority<<10)+(msg_size)))
#define NOC_SWITCH_SEND(base,priority,spid,dpid,buf,msg_size) KTH_RNI_mWriteReg(base,KTH_NOC_RNI_CTRL_OFFSET,(0x80000000+priority<<(11+SIZE_SEND_CHANNELS))+(spid<<(9+SIZE_SEND_CHANNELS))+(dpid<<(7+SIZE_SEND_CHANNELS))+(buf<<7)+msg_size)
#define NOC_RNI_CLEAR(base, src)               KTH_RNI_mWriteReg(base,KTH_NOC_RNI_CLEAR_OFFSET, src)
#define NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(base,channel)  KTH_RNI_mWriteReg(base,KTH_NOC_RNI_SYNCHRONIZER_FLAG_OFFSET,channel)
#define NOC_RNI_SEND_CHANNEL_INFO(base,channel,tdn,ud,ns,ew,dpid,spid)    KTH_RNI_mWriteReg(base,KTH_NOC_RNI_SEND_CHANNEL_INFO_OFFSET+(channel<<2),(tdn<<28)+(ud<<24)+(ns<<20)+(ew<<16)+(dpid<<8)+spid)
#define NOC_RNI_RECV_CHANNEL_INFO(base,channel,type,dpid,spid)        KTH_RNI_mWriteReg(base,KTH_NOC_RNI_RECV_CHANNEL_INFO_OFFSET+(channel<<2),(type<<16)+(dpid<<8)+spid)
#define NOC_RNI_NODE_NR(base)                  KTH_RNI_mReadReg(base,KTH_NOC_RNI_NODE_NR_OFFSET)
#define NOC_RNI_STATUS(base)                   KTH_RNI_mReadReg(base,KTH_NOC_RNI_STATUS_OFFSET)
#define NOC_RNI_READ_CLOCK(base)               KTH_RNI_mReadReg(base,KTH_NOC_RNI_CLOCK_TICK_OFFSET,0)
#define NOC_RNI_RECV_CHANNEL_STATUS(base,channel)         KTH_RNI_mReadReg(base+KTH_NOC_RNI_MSG_CHK_OFFSET,channel<<2)
#define NOC_RNI_READ_SYNCHRONIZER_FLAG(base)   KTH_RNI_mReadReg(base,KTH_NOC_RNI_SYNCHRONIZER_FLAG_OFFSET)
#define NOC_RNI_READ_SYNCHRONIZER_FLAG(base)   KTH_RNI_mReadReg(base,KTH_NOC_RNI_SYNCHRONIZER_FLAG_OFFSET)
#define NOC_RNI_MSG_INFO(base, src)            KTH_RNI_mReadReg(base,KTH_NOC_RNI_MSG_INFO_OFFSET,src)
#define NOC_RNI_MSG_LENGTH(base, src)          (NOC_RNI_MSG_INFO(base,src) % 128)
#define NOC_RNI_DEST_PID(base, src)            ((NOC_RNI_MSG_INFO(base,src) >> 7) % 4)
#define NOC_RNI_SRC_PID(base, src)             ((NOC_RNI_MSG_INFO(base,src) >> 9) % 4)

#define NOC_PARAMETER_MAP(base,offset)         (base+offset)
// Define channel status flags according to hardware interpretation
#define NOC_RNI_CHANNEL_EMPTY 0
#define NOC_RNI_CHANNEL_OPEN 1
#define NOC_RNI_CHANNEL_CLOSED 2

#endif /* __KTH_AXI_MESH_2D_NOSTRUM_2X2X1_H__ */
