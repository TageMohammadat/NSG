// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: kth.se:user:kth_2DNoC_2x2x1_c1:1.0
// IP Revision: 6

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
BD_kth_2DNoC_2x2x1_0_0 your_instance_name (
  .clk(clk),                  // input wire clk
  .reset(reset),              // input wire reset
  .To_NoC_0(To_NoC_0),        // input wire [55 : 0] To_NoC_0
  .From_NoC_0(From_NoC_0),    // output wire [55 : 0] From_NoC_0
  .Sync_0(Sync_0),            // output wire [1 : 0] Sync_0
  .HeartBeat_0(HeartBeat_0),  // output wire HeartBeat_0
  .To_NoC_1(To_NoC_1),        // input wire [55 : 0] To_NoC_1
  .From_NoC_1(From_NoC_1),    // output wire [55 : 0] From_NoC_1
  .Sync_1(Sync_1),            // output wire [1 : 0] Sync_1
  .HeartBeat_1(HeartBeat_1),  // output wire HeartBeat_1
  .To_NoC_2(To_NoC_2),        // input wire [55 : 0] To_NoC_2
  .From_NoC_2(From_NoC_2),    // output wire [55 : 0] From_NoC_2
  .Sync_2(Sync_2),            // output wire [1 : 0] Sync_2
  .HeartBeat_2(HeartBeat_2),  // output wire HeartBeat_2
  .To_NoC_3(To_NoC_3),        // input wire [55 : 0] To_NoC_3
  .From_NoC_3(From_NoC_3),    // output wire [55 : 0] From_NoC_3
  .Sync_3(Sync_3),            // output wire [1 : 0] Sync_3
  .HeartBeat_3(HeartBeat_3)  // output wire HeartBeat_3
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

