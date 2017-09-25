library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library kth_axi_rni_static_v1_00_a;
use kth_axi_rni_static_v1_00_a.all;

entity kth_axi_rni_static_v1_0 is
	generic (
		-- Users to add parameters here
                    rni_number : integer := 0;
                    use_64bit : integer := 0;
                    C_S_AXI_MIN_SIZE               : std_logic_vector     := X"00020000";
                    C_USE_WSTRB                    : integer              := 0;
                    C_DPHASE_TIMEOUT               : integer              := 8;
                    C_BASEADDR                     : std_logic_vector     := X"70020000";
                    C_HIGHADDR                     : std_logic_vector     := X"7003FFFF";
                    C_FAMILY                       : string               := "zynq";
                    C_NUM_REG                      : integer              := 1;
                    C_NUM_MEM                      : integer              := 1;
                    C_SLV_AWIDTH                   : integer              := 32;
                    C_SLV_DWIDTH                   : integer              := 32;
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S_AXI
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
                    TO_NOC : out std_logic_vector(53 downto 0);
                    FROM_NOC : in std_logic_vector(53 downto 0);
                    Sync : in std_logic_vector(1 downto 0);
                    HeartBeat : in std_logic;
                    NoC_IRQ : out std_logic;
                    dap_address : in std_logic_vector(14 downto 0);
                    dap_readdata : out std_logic_vector(63 downto 0);
                    dap_writedata : in std_logic_vector(63 downto 0);
                    dap_read : in std_logic;
                    dap_write : in std_logic;
                    dap_byteenable : in std_logic_vector(7 downto 0);
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S_AXI
        S_AXI_ACLK    : in std_logic;
        S_AXI_ARESETN    : in std_logic;
        S_AXI_AWADDR    : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT    : in std_logic_vector(2 downto 0);
        S_AXI_AWVALID    : in std_logic;
        S_AXI_AWREADY    : out std_logic;
        S_AXI_WDATA    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB    : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID    : in std_logic;
        S_AXI_WREADY    : out std_logic;
        S_AXI_BRESP    : out std_logic_vector(1 downto 0);
        S_AXI_BVALID    : out std_logic;
        S_AXI_BREADY    : in std_logic;
        S_AXI_ARADDR    : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT    : in std_logic_vector(2 downto 0);
        S_AXI_ARVALID    : in std_logic;
        S_AXI_ARREADY    : out std_logic;
        S_AXI_RDATA    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP    : out std_logic_vector(1 downto 0);
        S_AXI_RVALID    : out std_logic;
        S_AXI_RREADY    : in std_logic
	);
end kth_axi_rni_static_v1_0;

architecture arch_imp of kth_axi_rni_static_v1_0 is

	-- component declaration
  component kth_axi_rni_static is
        generic (
          RNI_NUMBER : INTEGER;
          USE_64BIT : INTEGER;
          C_S_AXI_DATA_WIDTH : INTEGER;
          C_S_AXI_ADDR_WIDTH : INTEGER;
          C_S_AXI_MIN_SIZE : std_logic_vector;
          C_USE_WSTRB : INTEGER;
          C_DPHASE_TIMEOUT : INTEGER;
          C_BASEADDR : std_logic_vector;
          C_HIGHADDR : std_logic_vector;
          C_FAMILY : STRING;
          C_NUM_REG : INTEGER;
          C_NUM_MEM : INTEGER;
          C_SLV_AWIDTH : INTEGER;
          C_SLV_DWIDTH : INTEGER
        );
        port (
          TO_NOC : out std_logic_vector(53 downto 0);
          FROM_NOC : in std_logic_vector(53 downto 0);
          Sync : in std_logic_vector(1 downto 0);
          HeartBeat : in std_logic;
          NoC_IRQ : out std_logic;
          dap_address : in std_logic_vector(14 downto 0);
          dap_readdata : out std_logic_vector(63 downto 0);
          dap_writedata : in std_logic_vector(63 downto 0);
          dap_read : in std_logic;
          dap_write : in std_logic;
          dap_byteenable : in std_logic_vector(7 downto 0);
          S_AXI_ACLK : in std_logic;
          S_AXI_ARESETN : in std_logic;
          S_AXI_AWADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
          S_AXI_AWVALID : in std_logic;
          S_AXI_WDATA : in std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
          S_AXI_WSTRB : in std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
          S_AXI_WVALID : in std_logic;
          S_AXI_BREADY : in std_logic;
          S_AXI_ARADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
          S_AXI_ARVALID : in std_logic;
          S_AXI_RREADY : in std_logic;
          S_AXI_ARREADY : out std_logic;
          S_AXI_RDATA : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
          S_AXI_RRESP : out std_logic_vector(1 downto 0);
          S_AXI_RVALID : out std_logic;
          S_AXI_WREADY : out std_logic;
          S_AXI_BRESP : out std_logic_vector(1 downto 0);
          S_AXI_BVALID : out std_logic;
          S_AXI_AWREADY : out std_logic
        );
      end component;
begin

	-- Add user logic here
    kth_axi_rni_static_0 : kth_axi_rni_static
      generic map (
        RNI_NUMBER => RNI_NUMBER,
        USE_64BIT => USE_64BIT,
        C_S_AXI_DATA_WIDTH => C_S_AXI_DATA_WIDTH,
        C_S_AXI_ADDR_WIDTH => C_S_AXI_ADDR_WIDTH,
        C_S_AXI_MIN_SIZE => C_S_AXI_MIN_SIZE,
        C_USE_WSTRB => C_USE_WSTRB,
        C_DPHASE_TIMEOUT => C_DPHASE_TIMEOUT,
        C_BASEADDR => C_BASEADDR,
        C_HIGHADDR => C_HIGHADDR,
        C_FAMILY => C_FAMILY,
        C_NUM_REG => C_NUM_REG,
        C_NUM_MEM => C_NUM_MEM,
        C_SLV_AWIDTH => C_SLV_AWIDTH,
        C_SLV_DWIDTH => C_SLV_DWIDTH
      )
      port map (
        TO_NOC => TO_NOC,
        FROM_NOC => FROM_NOC,
        Sync => Sync,
        HeartBeat => HeartBeat,
        NoC_IRQ => NoC_IRQ,
        dap_address => dap_address,
        dap_readdata => dap_readdata,
        dap_writedata => dap_writedata,
        dap_read => dap_read,
        dap_write => dap_write,
        dap_byteenable => dap_byteenable,
        S_AXI_ACLK => S_AXI_ACLK,
        S_AXI_ARESETN => S_AXI_ARESETN,
        S_AXI_AWADDR => S_AXI_AWADDR,
        S_AXI_AWVALID => S_AXI_AWVALID,
        S_AXI_WDATA => S_AXI_WDATA,
        S_AXI_WSTRB => S_AXI_WSTRB,
        S_AXI_WVALID => S_AXI_WVALID,
        S_AXI_BREADY => S_AXI_BREADY,
        S_AXI_ARADDR => S_AXI_ARADDR,
        S_AXI_ARVALID => S_AXI_ARVALID,
        S_AXI_RREADY => S_AXI_RREADY,
        S_AXI_ARREADY => S_AXI_ARREADY,
        S_AXI_RDATA => S_AXI_RDATA,
        S_AXI_RRESP => S_AXI_RRESP,
        S_AXI_RVALID => S_AXI_RVALID,
        S_AXI_WREADY => S_AXI_WREADY,
        S_AXI_BRESP => S_AXI_BRESP,
        S_AXI_BVALID => S_AXI_BVALID,
        S_AXI_AWREADY => S_AXI_AWREADY
      );
	-- User logic ends

end arch_imp;
