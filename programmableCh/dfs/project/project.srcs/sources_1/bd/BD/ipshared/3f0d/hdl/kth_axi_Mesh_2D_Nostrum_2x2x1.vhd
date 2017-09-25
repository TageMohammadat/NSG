-------------------------------------------------------------------------------------------------------------------------
-- Copyright (c) 2006-2017 Johnny Öberg, KTH Royal Institute of Technology, Sweden. 
-- All rights reserved. 
-- 
-- Redistribution and use in source and binary forms, with or without modification, are permitted provided that the
-- following conditions are met: 
--
-- 1.Redistributions of source code must retain the above copyright notice, this list of conditions and the following
-- disclaimer. 
--
-- 2.Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following
-- disclaimer in the documentation and/or other materials provided with the distribution. 
-- 
-- 3.The name of the author may not be used to endorse or promote products derived from this software without specific
-- prior written permission.
-- 
-- THIS SOFTWARE IS PROVIDED BY THE AUTHOR “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
-- THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
-- AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
-- LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
-- HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
-- OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-------------------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use work.noc_configuration_package.all;
use work.NoC_Mesh_2D_Nostrum_package.all;
use work.NoC_Mesh_2D_Nostrum_axi_wrapper_package.all;

ENTITY kth_axi_Mesh_2D_Nostrum_2x2x1 IS
   GENERIC(
      C_S00_AXI_BASEADDR:integer;
      C_S00_AXI_HIGHADDR:integer;
      C_S01_AXI_BASEADDR:integer;
      C_S01_AXI_HIGHADDR:integer;
      C_S02_AXI_BASEADDR:integer;
      C_S02_AXI_HIGHADDR:integer;
      C_S03_AXI_BASEADDR:integer;
      C_S03_AXI_HIGHADDR:integer
          );
   PORT(
    -- NoC Node 0
        NoC_Irq_0:OUT std_logic;
        -- AXI Slave Port 0
        S_AXI_0_ACLK                     : in  std_logic;
        S_AXI_0_ARESETN                  : in  std_logic;
        S_AXI_0_AWADDR                   : in  std_logic_vector(16 downto 0); -- (C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_0_AWVALID                  : in  std_logic;
        S_AXI_0_AWPROT                   : in  std_logic_vector(2 downto 0);
        S_AXI_0_WDATA                    : in  std_logic_vector(31 downto 0); -- (C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_0_WSTRB                    : in  std_logic_vector(3 downto 0); -- ((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_0_WVALID                   : in  std_logic;
        S_AXI_0_BREADY                   : in  std_logic;
        S_AXI_0_ARADDR                   : in  std_logic_vector(16 downto 0); -- (C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_0_ARPROT                   : in  std_logic_vector(2 downto 0);
        S_AXI_0_ARVALID                  : in  std_logic;
        S_AXI_0_RREADY                   : in  std_logic;
        S_AXI_0_ARREADY                  : out std_logic;
        S_AXI_0_RDATA                    : out std_logic_vector(31 downto 0); -- (C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_0_RRESP                    : out std_logic_vector(1 downto 0);
        S_AXI_0_RVALID                   : out std_logic;
        S_AXI_0_WREADY                   : out std_logic;
        S_AXI_0_BRESP                    : out std_logic_vector(1 downto 0);
        S_AXI_0_BVALID                   : out std_logic;
        S_AXI_0_AWREADY                  : out std_logic;
    -- NoC Node 1
        NoC_Irq_1:OUT std_logic;
        -- AXI Slave Port 1
        S_AXI_1_ACLK                     : in  std_logic;
        S_AXI_1_ARESETN                  : in  std_logic;
        S_AXI_1_AWADDR                   : in  std_logic_vector(16 downto 0); -- (C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_1_AWVALID                  : in  std_logic;
        S_AXI_1_AWPROT                   : in  std_logic_vector(2 downto 0);
        S_AXI_1_WDATA                    : in  std_logic_vector(31 downto 0); -- (C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_1_WSTRB                    : in  std_logic_vector(3 downto 0); -- ((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_1_WVALID                   : in  std_logic;
        S_AXI_1_BREADY                   : in  std_logic;
        S_AXI_1_ARADDR                   : in  std_logic_vector(16 downto 0); -- (C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_1_ARPROT                   : in  std_logic_vector(2 downto 0);
        S_AXI_1_ARVALID                  : in  std_logic;
        S_AXI_1_RREADY                   : in  std_logic;
        S_AXI_1_ARREADY                  : out std_logic;
        S_AXI_1_RDATA                    : out std_logic_vector(31 downto 0); -- (C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_1_RRESP                    : out std_logic_vector(1 downto 0);
        S_AXI_1_RVALID                   : out std_logic;
        S_AXI_1_WREADY                   : out std_logic;
        S_AXI_1_BRESP                    : out std_logic_vector(1 downto 0);
        S_AXI_1_BVALID                   : out std_logic;
        S_AXI_1_AWREADY                  : out std_logic;
    -- NoC Node 2
        NoC_Irq_2:OUT std_logic;
        -- AXI Slave Port 2
        S_AXI_2_ACLK                     : in  std_logic;
        S_AXI_2_ARESETN                  : in  std_logic;
        S_AXI_2_AWADDR                   : in  std_logic_vector(16 downto 0); -- (C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_2_AWVALID                  : in  std_logic;
        S_AXI_2_AWPROT                   : in  std_logic_vector(2 downto 0);
        S_AXI_2_WDATA                    : in  std_logic_vector(31 downto 0); -- (C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_2_WSTRB                    : in  std_logic_vector(3 downto 0); -- ((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_2_WVALID                   : in  std_logic;
        S_AXI_2_BREADY                   : in  std_logic;
        S_AXI_2_ARADDR                   : in  std_logic_vector(16 downto 0); -- (C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_2_ARPROT                   : in  std_logic_vector(2 downto 0);
        S_AXI_2_ARVALID                  : in  std_logic;
        S_AXI_2_RREADY                   : in  std_logic;
        S_AXI_2_ARREADY                  : out std_logic;
        S_AXI_2_RDATA                    : out std_logic_vector(31 downto 0); -- (C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_2_RRESP                    : out std_logic_vector(1 downto 0);
        S_AXI_2_RVALID                   : out std_logic;
        S_AXI_2_WREADY                   : out std_logic;
        S_AXI_2_BRESP                    : out std_logic_vector(1 downto 0);
        S_AXI_2_BVALID                   : out std_logic;
        S_AXI_2_AWREADY                  : out std_logic;
    -- NoC Node 3
        NoC_Irq_3:OUT std_logic;
        -- AXI Slave Port 3
        S_AXI_3_ACLK                     : in  std_logic;
        S_AXI_3_ARESETN                  : in  std_logic;
        S_AXI_3_AWADDR                   : in  std_logic_vector(16 downto 0); -- (C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_3_AWVALID                  : in  std_logic;
        S_AXI_3_AWPROT                   : in  std_logic_vector(2 downto 0);
        S_AXI_3_WDATA                    : in  std_logic_vector(31 downto 0); -- (C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_3_WSTRB                    : in  std_logic_vector(3 downto 0); -- ((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_3_WVALID                   : in  std_logic;
        S_AXI_3_BREADY                   : in  std_logic;
        S_AXI_3_ARADDR                   : in  std_logic_vector(16 downto 0); -- (C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_3_ARPROT                   : in  std_logic_vector(2 downto 0);
        S_AXI_3_ARVALID                  : in  std_logic;
        S_AXI_3_RREADY                   : in  std_logic;
        S_AXI_3_ARREADY                  : out std_logic;
        S_AXI_3_RDATA                    : out std_logic_vector(31 downto 0); -- (C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_3_RRESP                    : out std_logic_vector(1 downto 0);
        S_AXI_3_RVALID                   : out std_logic;
        S_AXI_3_WREADY                   : out std_logic;
        S_AXI_3_BRESP                    : out std_logic_vector(1 downto 0);
        S_AXI_3_BVALID                   : out std_logic;
        S_AXI_3_AWREADY                  : out std_logic
           );
END kth_axi_Mesh_2D_Nostrum_2x2x1;

architecture vivado_interface_map of kth_axi_Mesh_2D_Nostrum_2x2x1 is
   component kth_axi_Mesh_2D_Nostrum_noc
      port(
           -- Axi Slave Memory port
           s_axi_aclk	    : in axi_onebit_vector;  -- std_logic
           s_axi_aresetn	: in axi_onebit_vector;  -- std_logic
           s_axi_awaddr	: in axi_address_vector; -- std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
           s_axi_awprot	: in axi_threebit_vector;  -- std_logic_vector(2 downto 0);
           s_axi_awvalid	: in axi_onebit_vector;  -- std_logic
           s_axi_awready	: out axi_onebit_vector; -- std_logic
           s_axi_wdata	: in axi_bus_vector;     -- std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
           s_axi_wstrb	: in axi_byteenable_vector; -- std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
           s_axi_wvalid	: in axi_onebit_vector;  -- std_logic
           s_axi_wready	: out axi_onebit_vector; -- std_logic;
           s_axi_bresp	: out axi_twobit_vector;   -- std_logic_vector(1 downto 0);
           s_axi_bvalid	: out axi_onebit_vector; -- std_logic;
           s_axi_bready	: in axi_onebit_vector;  -- std_logic;
           s_axi_araddr	: in axi_address_vector;     -- std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
           s_axi_arprot	: in axi_threebit_vector;  -- std_logic_vector(2 downto 0);
           s_axi_arvalid	: in axi_onebit_vector;  -- std_logic;
           s_axi_arready	: out axi_onebit_vector; -- std_logic;
           s_axi_rdata	: out axi_bus_vector;    -- std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
           s_axi_rresp	: out axi_twobit_vector;   -- std_logic_vector(1 downto 0);
           s_axi_rvalid	: out axi_onebit_vector; -- std_logic;
           s_axi_rready	: in axi_onebit_vector;  -- std_logic;

           -- Direct Access Port
           dap_address:IN dap_address_vector;
           dap_read:IN dap_signal_vector;
           dap_write:IN dap_signal_vector;
           dap_byteenable:IN dap_byteenable_vector;
           dap_writedata:IN dap_bus_vector;
           dap_readdata:OUT dap_bus_vector;
           -- NoCIrq port
           NoC_Irq: OUT axi_onebit_vector

           );
   end component;

   -- Axi Slave ports
   signal s_axi_aclk    : axi_onebit_vector;  -- std_logic
   signal s_axi_aresetn : axi_onebit_vector;  -- std_logic
   signal s_axi_awaddr  : axi_address_vector; -- std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
   signal s_axi_awprot  : axi_threebit_vector;  -- std_logic_vector(2 downto 0);
   signal s_axi_awvalid : axi_onebit_vector;  -- std_logic
   signal s_axi_awready : axi_onebit_vector; -- std_logic
   signal s_axi_wdata   : axi_bus_vector;     -- std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
   signal s_axi_wstrb   : axi_byteenable_vector; -- std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
   signal s_axi_wvalid  : axi_onebit_vector;  -- std_logic
   signal s_axi_wready  : axi_onebit_vector; -- std_logic;
   signal s_axi_bresp   : axi_twobit_vector;   -- std_logic_vector(1 downto 0);
   signal s_axi_bvalid  : axi_onebit_vector; -- std_logic;
   signal s_axi_bready  : axi_onebit_vector;  -- std_logic;
   signal s_axi_araddr  : axi_address_vector;     -- std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
   signal s_axi_arprot  : axi_threebit_vector;  -- std_logic_vector(2 downto 0);
   signal s_axi_arvalid : axi_onebit_vector;  -- std_logic;
   signal s_axi_arready : axi_onebit_vector; -- std_logic;
   signal s_axi_rdata   : axi_bus_vector;    -- std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
   signal s_axi_rresp   : axi_twobit_vector;   -- std_logic_vector(1 downto 0);
   signal s_axi_rvalid  : axi_onebit_vector; -- std_logic;
   signal s_axi_rready  : axi_onebit_vector;  -- std_logic;
   -- Direct Access Port
   signal dap_address:dap_address_vector;
   signal dap_writedata:dap_bus_vector;
   signal dap_readdata:dap_bus_vector;
   signal dap_byteenable:dap_byteenable_vector;
   signal dap_read:dap_signal_vector;
   signal dap_write:dap_signal_vector;
   signal NoC_Irq:axi_onebit_vector;

begin

NOC: kth_axi_Mesh_2D_Nostrum_noc
     port map(
  -- Axi Slave ports
	s_axi_aclk	  => s_axi_aclk,
	s_axi_aresetn => s_axi_aresetn,
	s_axi_awaddr  => s_axi_awaddr,
	s_axi_awprot  => s_axi_awprot,
	s_axi_awvalid => s_axi_awvalid,
	s_axi_awready => s_axi_awready,
	s_axi_wdata   => s_axi_wdata,
	s_axi_wstrb   => s_axi_wstrb,
	s_axi_wvalid  => s_axi_wvalid,
	s_axi_wready  => s_axi_wready,
	s_axi_bresp   => s_axi_bresp,
	s_axi_bvalid  => s_axi_bvalid,
	s_axi_bready  => s_axi_bready,
	s_axi_araddr  => s_axi_araddr,
	s_axi_arprot  => s_axi_arprot,
	s_axi_arvalid => s_axi_arvalid,
	s_axi_arready => s_axi_arready,
	s_axi_rdata   => s_axi_rdata,
	s_axi_rresp   => s_axi_rresp,
	s_axi_rvalid  => s_axi_rvalid,
	s_axi_rready  => s_axi_rready,

              -- Direct Access Port
              dap_address => dap_address,
              dap_write => dap_write,
              dap_read => dap_read,
              dap_byteenable => dap_byteenable,
              dap_readdata => dap_readdata,
              dap_writedata => dap_writedata,
              NoC_Irq => NoC_Irq     );

   -- Map Axi interfaces

	  -- Axi slave memory port 0
	  s_axi_aclk(0)	<= s_axi_0_aclk;
	  s_axi_aresetn(0) <= s_axi_0_aresetn;
	  s_axi_awaddr(0)  <= s_axi_0_awaddr;
	  s_axi_awprot(0)  <= s_axi_0_awprot;
	  s_axi_awvalid(0) <= s_axi_0_awvalid;
	  s_axi_0_awready  <= s_axi_awready(0);
	  s_axi_wdata(0)   <= s_axi_0_wdata;
	  s_axi_wstrb(0)   <= s_axi_0_wstrb;
	  s_axi_wvalid(0)  <= s_axi_0_wvalid;
	  s_axi_0_wready   <= s_axi_wready(0);
	  s_axi_0_bresp    <= s_axi_bresp(0);
	  s_axi_0_bvalid   <= s_axi_bvalid(0);
	  s_axi_bready(0)  <= s_axi_0_bready;
	  s_axi_araddr(0)  <= s_axi_0_araddr;
	  s_axi_arprot(0)  <= s_axi_0_arprot;
	  s_axi_arvalid(0) <= s_axi_0_arvalid;
	  s_axi_0_arready  <= s_axi_arready(0);
	  s_axi_0_rdata    <= s_axi_rdata(0);
	  s_axi_0_rresp    <= s_axi_rresp(0);
	  s_axi_0_rvalid   <= s_axi_rvalid(0);
	  s_axi_rready(0)  <= s_axi_0_rready;
   -- Direct Access Port 0
   dap_address(0)    <= (others=>'0');
   dap_read(0)       <= '0';
   dap_write(0)      <= '0';
   dap_writedata(0)  <= (others=>'0');
   dap_byteenable(0) <= (others=>'0');
   NoC_Irq_0 <= NoC_Irq(0);
	  -- Axi slave memory port 1
	  s_axi_aclk(1)	<= s_axi_1_aclk;
	  s_axi_aresetn(1) <= s_axi_1_aresetn;
	  s_axi_awaddr(1)  <= s_axi_1_awaddr;
	  s_axi_awprot(1)  <= s_axi_1_awprot;
	  s_axi_awvalid(1) <= s_axi_1_awvalid;
	  s_axi_1_awready  <= s_axi_awready(1);
	  s_axi_wdata(1)   <= s_axi_1_wdata;
	  s_axi_wstrb(1)   <= s_axi_1_wstrb;
	  s_axi_wvalid(1)  <= s_axi_1_wvalid;
	  s_axi_1_wready   <= s_axi_wready(1);
	  s_axi_1_bresp    <= s_axi_bresp(1);
	  s_axi_1_bvalid   <= s_axi_bvalid(1);
	  s_axi_bready(1)  <= s_axi_1_bready;
	  s_axi_araddr(1)  <= s_axi_1_araddr;
	  s_axi_arprot(1)  <= s_axi_1_arprot;
	  s_axi_arvalid(1) <= s_axi_1_arvalid;
	  s_axi_1_arready  <= s_axi_arready(1);
	  s_axi_1_rdata    <= s_axi_rdata(1);
	  s_axi_1_rresp    <= s_axi_rresp(1);
	  s_axi_1_rvalid   <= s_axi_rvalid(1);
	  s_axi_rready(1)  <= s_axi_1_rready;
   -- Direct Access Port 1
   dap_address(1)    <= (others=>'0');
   dap_read(1)       <= '0';
   dap_write(1)      <= '0';
   dap_writedata(1)  <= (others=>'0');
   dap_byteenable(1) <= (others=>'0');
   NoC_Irq_1 <= NoC_Irq(1);
	  -- Axi slave memory port 2
	  s_axi_aclk(2)	<= s_axi_2_aclk;
	  s_axi_aresetn(2) <= s_axi_2_aresetn;
	  s_axi_awaddr(2)  <= s_axi_2_awaddr;
	  s_axi_awprot(2)  <= s_axi_2_awprot;
	  s_axi_awvalid(2) <= s_axi_2_awvalid;
	  s_axi_2_awready  <= s_axi_awready(2);
	  s_axi_wdata(2)   <= s_axi_2_wdata;
	  s_axi_wstrb(2)   <= s_axi_2_wstrb;
	  s_axi_wvalid(2)  <= s_axi_2_wvalid;
	  s_axi_2_wready   <= s_axi_wready(2);
	  s_axi_2_bresp    <= s_axi_bresp(2);
	  s_axi_2_bvalid   <= s_axi_bvalid(2);
	  s_axi_bready(2)  <= s_axi_2_bready;
	  s_axi_araddr(2)  <= s_axi_2_araddr;
	  s_axi_arprot(2)  <= s_axi_2_arprot;
	  s_axi_arvalid(2) <= s_axi_2_arvalid;
	  s_axi_2_arready  <= s_axi_arready(2);
	  s_axi_2_rdata    <= s_axi_rdata(2);
	  s_axi_2_rresp    <= s_axi_rresp(2);
	  s_axi_2_rvalid   <= s_axi_rvalid(2);
	  s_axi_rready(2)  <= s_axi_2_rready;
   -- Direct Access Port 2
   dap_address(2)    <= (others=>'0');
   dap_read(2)       <= '0';
   dap_write(2)      <= '0';
   dap_writedata(2)  <= (others=>'0');
   dap_byteenable(2) <= (others=>'0');
   NoC_Irq_2 <= NoC_Irq(2);
	  -- Axi slave memory port 3
	  s_axi_aclk(3)	<= s_axi_3_aclk;
	  s_axi_aresetn(3) <= s_axi_3_aresetn;
	  s_axi_awaddr(3)  <= s_axi_3_awaddr;
	  s_axi_awprot(3)  <= s_axi_3_awprot;
	  s_axi_awvalid(3) <= s_axi_3_awvalid;
	  s_axi_3_awready  <= s_axi_awready(3);
	  s_axi_wdata(3)   <= s_axi_3_wdata;
	  s_axi_wstrb(3)   <= s_axi_3_wstrb;
	  s_axi_wvalid(3)  <= s_axi_3_wvalid;
	  s_axi_3_wready   <= s_axi_wready(3);
	  s_axi_3_bresp    <= s_axi_bresp(3);
	  s_axi_3_bvalid   <= s_axi_bvalid(3);
	  s_axi_bready(3)  <= s_axi_3_bready;
	  s_axi_araddr(3)  <= s_axi_3_araddr;
	  s_axi_arprot(3)  <= s_axi_3_arprot;
	  s_axi_arvalid(3) <= s_axi_3_arvalid;
	  s_axi_3_arready  <= s_axi_arready(3);
	  s_axi_3_rdata    <= s_axi_rdata(3);
	  s_axi_3_rresp    <= s_axi_rresp(3);
	  s_axi_3_rvalid   <= s_axi_rvalid(3);
	  s_axi_rready(3)  <= s_axi_3_rready;
   -- Direct Access Port 3
   dap_address(3)    <= (others=>'0');
   dap_read(3)       <= '0';
   dap_write(3)      <= '0';
   dap_writedata(3)  <= (others=>'0');
   dap_byteenable(3) <= (others=>'0');
   NoC_Irq_3 <= NoC_Irq(3);
end vivado_interface_map;
