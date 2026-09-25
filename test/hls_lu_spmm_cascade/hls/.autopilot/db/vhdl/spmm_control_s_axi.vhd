-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
-- Tool Version Limit: 2025.11
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- 
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity spmm_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 9;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    A_rcsr                :out  STD_LOGIC_VECTOR(63 downto 0);
    A_cid                 :out  STD_LOGIC_VECTOR(63 downto 0);
    A_val                 :out  STD_LOGIC_VECTOR(63 downto 0);
    B_rcsr1               :out  STD_LOGIC_VECTOR(63 downto 0);
    B_rcsr2               :out  STD_LOGIC_VECTOR(63 downto 0);
    B_rcsr3               :out  STD_LOGIC_VECTOR(63 downto 0);
    B_rcsr4               :out  STD_LOGIC_VECTOR(63 downto 0);
    B_val1                :out  STD_LOGIC_VECTOR(63 downto 0);
    B_cid1                :out  STD_LOGIC_VECTOR(63 downto 0);
    B_val2                :out  STD_LOGIC_VECTOR(63 downto 0);
    B_cid2                :out  STD_LOGIC_VECTOR(63 downto 0);
    B_val3                :out  STD_LOGIC_VECTOR(63 downto 0);
    B_cid3                :out  STD_LOGIC_VECTOR(63 downto 0);
    B_val4                :out  STD_LOGIC_VECTOR(63 downto 0);
    B_cid4                :out  STD_LOGIC_VECTOR(63 downto 0);
    B_val_port1           :out  STD_LOGIC_VECTOR(63 downto 0);
    B_cid_port1           :out  STD_LOGIC_VECTOR(63 downto 0);
    B_val_port2           :out  STD_LOGIC_VECTOR(63 downto 0);
    B_cid_port2           :out  STD_LOGIC_VECTOR(63 downto 0);
    B_val_port3           :out  STD_LOGIC_VECTOR(63 downto 0);
    B_cid_port3           :out  STD_LOGIC_VECTOR(63 downto 0);
    B_val_port4           :out  STD_LOGIC_VECTOR(63 downto 0);
    B_cid_port4           :out  STD_LOGIC_VECTOR(63 downto 0);
    C_rcsr                :out  STD_LOGIC_VECTOR(63 downto 0);
    C_cid                 :out  STD_LOGIC_VECTOR(63 downto 0);
    C_val                 :out  STD_LOGIC_VECTOR(63 downto 0)
);
end entity spmm_control_s_axi;

-- ------------------------Address Info-------------------
-- Protocol Used: ap_ctrl_none
--
-- 0x000 : reserved
-- 0x004 : reserved
-- 0x008 : reserved
-- 0x00c : reserved
-- 0x010 : Data signal of A_rcsr
--         bit 31~0 - A_rcsr[31:0] (Read/Write)
-- 0x014 : Data signal of A_rcsr
--         bit 31~0 - A_rcsr[63:32] (Read/Write)
-- 0x018 : reserved
-- 0x01c : Data signal of A_cid
--         bit 31~0 - A_cid[31:0] (Read/Write)
-- 0x020 : Data signal of A_cid
--         bit 31~0 - A_cid[63:32] (Read/Write)
-- 0x024 : reserved
-- 0x028 : Data signal of A_val
--         bit 31~0 - A_val[31:0] (Read/Write)
-- 0x02c : Data signal of A_val
--         bit 31~0 - A_val[63:32] (Read/Write)
-- 0x030 : reserved
-- 0x034 : Data signal of B_rcsr1
--         bit 31~0 - B_rcsr1[31:0] (Read/Write)
-- 0x038 : Data signal of B_rcsr1
--         bit 31~0 - B_rcsr1[63:32] (Read/Write)
-- 0x03c : reserved
-- 0x040 : Data signal of B_rcsr2
--         bit 31~0 - B_rcsr2[31:0] (Read/Write)
-- 0x044 : Data signal of B_rcsr2
--         bit 31~0 - B_rcsr2[63:32] (Read/Write)
-- 0x048 : reserved
-- 0x04c : Data signal of B_rcsr3
--         bit 31~0 - B_rcsr3[31:0] (Read/Write)
-- 0x050 : Data signal of B_rcsr3
--         bit 31~0 - B_rcsr3[63:32] (Read/Write)
-- 0x054 : reserved
-- 0x058 : Data signal of B_rcsr4
--         bit 31~0 - B_rcsr4[31:0] (Read/Write)
-- 0x05c : Data signal of B_rcsr4
--         bit 31~0 - B_rcsr4[63:32] (Read/Write)
-- 0x060 : reserved
-- 0x064 : Data signal of B_val1
--         bit 31~0 - B_val1[31:0] (Read/Write)
-- 0x068 : Data signal of B_val1
--         bit 31~0 - B_val1[63:32] (Read/Write)
-- 0x06c : reserved
-- 0x070 : Data signal of B_cid1
--         bit 31~0 - B_cid1[31:0] (Read/Write)
-- 0x074 : Data signal of B_cid1
--         bit 31~0 - B_cid1[63:32] (Read/Write)
-- 0x078 : reserved
-- 0x07c : Data signal of B_val2
--         bit 31~0 - B_val2[31:0] (Read/Write)
-- 0x080 : Data signal of B_val2
--         bit 31~0 - B_val2[63:32] (Read/Write)
-- 0x084 : reserved
-- 0x088 : Data signal of B_cid2
--         bit 31~0 - B_cid2[31:0] (Read/Write)
-- 0x08c : Data signal of B_cid2
--         bit 31~0 - B_cid2[63:32] (Read/Write)
-- 0x090 : reserved
-- 0x094 : Data signal of B_val3
--         bit 31~0 - B_val3[31:0] (Read/Write)
-- 0x098 : Data signal of B_val3
--         bit 31~0 - B_val3[63:32] (Read/Write)
-- 0x09c : reserved
-- 0x0a0 : Data signal of B_cid3
--         bit 31~0 - B_cid3[31:0] (Read/Write)
-- 0x0a4 : Data signal of B_cid3
--         bit 31~0 - B_cid3[63:32] (Read/Write)
-- 0x0a8 : reserved
-- 0x0ac : Data signal of B_val4
--         bit 31~0 - B_val4[31:0] (Read/Write)
-- 0x0b0 : Data signal of B_val4
--         bit 31~0 - B_val4[63:32] (Read/Write)
-- 0x0b4 : reserved
-- 0x0b8 : Data signal of B_cid4
--         bit 31~0 - B_cid4[31:0] (Read/Write)
-- 0x0bc : Data signal of B_cid4
--         bit 31~0 - B_cid4[63:32] (Read/Write)
-- 0x0c0 : reserved
-- 0x0c4 : Data signal of B_val_port1
--         bit 31~0 - B_val_port1[31:0] (Read/Write)
-- 0x0c8 : Data signal of B_val_port1
--         bit 31~0 - B_val_port1[63:32] (Read/Write)
-- 0x0cc : reserved
-- 0x0d0 : Data signal of B_cid_port1
--         bit 31~0 - B_cid_port1[31:0] (Read/Write)
-- 0x0d4 : Data signal of B_cid_port1
--         bit 31~0 - B_cid_port1[63:32] (Read/Write)
-- 0x0d8 : reserved
-- 0x0dc : Data signal of B_val_port2
--         bit 31~0 - B_val_port2[31:0] (Read/Write)
-- 0x0e0 : Data signal of B_val_port2
--         bit 31~0 - B_val_port2[63:32] (Read/Write)
-- 0x0e4 : reserved
-- 0x0e8 : Data signal of B_cid_port2
--         bit 31~0 - B_cid_port2[31:0] (Read/Write)
-- 0x0ec : Data signal of B_cid_port2
--         bit 31~0 - B_cid_port2[63:32] (Read/Write)
-- 0x0f0 : reserved
-- 0x0f4 : Data signal of B_val_port3
--         bit 31~0 - B_val_port3[31:0] (Read/Write)
-- 0x0f8 : Data signal of B_val_port3
--         bit 31~0 - B_val_port3[63:32] (Read/Write)
-- 0x0fc : reserved
-- 0x100 : Data signal of B_cid_port3
--         bit 31~0 - B_cid_port3[31:0] (Read/Write)
-- 0x104 : Data signal of B_cid_port3
--         bit 31~0 - B_cid_port3[63:32] (Read/Write)
-- 0x108 : reserved
-- 0x10c : Data signal of B_val_port4
--         bit 31~0 - B_val_port4[31:0] (Read/Write)
-- 0x110 : Data signal of B_val_port4
--         bit 31~0 - B_val_port4[63:32] (Read/Write)
-- 0x114 : reserved
-- 0x118 : Data signal of B_cid_port4
--         bit 31~0 - B_cid_port4[31:0] (Read/Write)
-- 0x11c : Data signal of B_cid_port4
--         bit 31~0 - B_cid_port4[63:32] (Read/Write)
-- 0x120 : reserved
-- 0x124 : Data signal of C_rcsr
--         bit 31~0 - C_rcsr[31:0] (Read/Write)
-- 0x128 : Data signal of C_rcsr
--         bit 31~0 - C_rcsr[63:32] (Read/Write)
-- 0x12c : reserved
-- 0x130 : Data signal of C_cid
--         bit 31~0 - C_cid[31:0] (Read/Write)
-- 0x134 : Data signal of C_cid
--         bit 31~0 - C_cid[63:32] (Read/Write)
-- 0x138 : reserved
-- 0x13c : Data signal of C_val
--         bit 31~0 - C_val[31:0] (Read/Write)
-- 0x140 : Data signal of C_val
--         bit 31~0 - C_val[63:32] (Read/Write)
-- 0x144 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of spmm_control_s_axi is
attribute DowngradeIPIdentifiedWarnings : STRING;
attribute DowngradeIPIdentifiedWarnings of behave : architecture is "yes";
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_A_RCSR_DATA_0      : INTEGER := 16#010#;
    constant ADDR_A_RCSR_DATA_1      : INTEGER := 16#014#;
    constant ADDR_A_RCSR_CTRL        : INTEGER := 16#018#;
    constant ADDR_A_CID_DATA_0       : INTEGER := 16#01c#;
    constant ADDR_A_CID_DATA_1       : INTEGER := 16#020#;
    constant ADDR_A_CID_CTRL         : INTEGER := 16#024#;
    constant ADDR_A_VAL_DATA_0       : INTEGER := 16#028#;
    constant ADDR_A_VAL_DATA_1       : INTEGER := 16#02c#;
    constant ADDR_A_VAL_CTRL         : INTEGER := 16#030#;
    constant ADDR_B_RCSR1_DATA_0     : INTEGER := 16#034#;
    constant ADDR_B_RCSR1_DATA_1     : INTEGER := 16#038#;
    constant ADDR_B_RCSR1_CTRL       : INTEGER := 16#03c#;
    constant ADDR_B_RCSR2_DATA_0     : INTEGER := 16#040#;
    constant ADDR_B_RCSR2_DATA_1     : INTEGER := 16#044#;
    constant ADDR_B_RCSR2_CTRL       : INTEGER := 16#048#;
    constant ADDR_B_RCSR3_DATA_0     : INTEGER := 16#04c#;
    constant ADDR_B_RCSR3_DATA_1     : INTEGER := 16#050#;
    constant ADDR_B_RCSR3_CTRL       : INTEGER := 16#054#;
    constant ADDR_B_RCSR4_DATA_0     : INTEGER := 16#058#;
    constant ADDR_B_RCSR4_DATA_1     : INTEGER := 16#05c#;
    constant ADDR_B_RCSR4_CTRL       : INTEGER := 16#060#;
    constant ADDR_B_VAL1_DATA_0      : INTEGER := 16#064#;
    constant ADDR_B_VAL1_DATA_1      : INTEGER := 16#068#;
    constant ADDR_B_VAL1_CTRL        : INTEGER := 16#06c#;
    constant ADDR_B_CID1_DATA_0      : INTEGER := 16#070#;
    constant ADDR_B_CID1_DATA_1      : INTEGER := 16#074#;
    constant ADDR_B_CID1_CTRL        : INTEGER := 16#078#;
    constant ADDR_B_VAL2_DATA_0      : INTEGER := 16#07c#;
    constant ADDR_B_VAL2_DATA_1      : INTEGER := 16#080#;
    constant ADDR_B_VAL2_CTRL        : INTEGER := 16#084#;
    constant ADDR_B_CID2_DATA_0      : INTEGER := 16#088#;
    constant ADDR_B_CID2_DATA_1      : INTEGER := 16#08c#;
    constant ADDR_B_CID2_CTRL        : INTEGER := 16#090#;
    constant ADDR_B_VAL3_DATA_0      : INTEGER := 16#094#;
    constant ADDR_B_VAL3_DATA_1      : INTEGER := 16#098#;
    constant ADDR_B_VAL3_CTRL        : INTEGER := 16#09c#;
    constant ADDR_B_CID3_DATA_0      : INTEGER := 16#0a0#;
    constant ADDR_B_CID3_DATA_1      : INTEGER := 16#0a4#;
    constant ADDR_B_CID3_CTRL        : INTEGER := 16#0a8#;
    constant ADDR_B_VAL4_DATA_0      : INTEGER := 16#0ac#;
    constant ADDR_B_VAL4_DATA_1      : INTEGER := 16#0b0#;
    constant ADDR_B_VAL4_CTRL        : INTEGER := 16#0b4#;
    constant ADDR_B_CID4_DATA_0      : INTEGER := 16#0b8#;
    constant ADDR_B_CID4_DATA_1      : INTEGER := 16#0bc#;
    constant ADDR_B_CID4_CTRL        : INTEGER := 16#0c0#;
    constant ADDR_B_VAL_PORT1_DATA_0 : INTEGER := 16#0c4#;
    constant ADDR_B_VAL_PORT1_DATA_1 : INTEGER := 16#0c8#;
    constant ADDR_B_VAL_PORT1_CTRL   : INTEGER := 16#0cc#;
    constant ADDR_B_CID_PORT1_DATA_0 : INTEGER := 16#0d0#;
    constant ADDR_B_CID_PORT1_DATA_1 : INTEGER := 16#0d4#;
    constant ADDR_B_CID_PORT1_CTRL   : INTEGER := 16#0d8#;
    constant ADDR_B_VAL_PORT2_DATA_0 : INTEGER := 16#0dc#;
    constant ADDR_B_VAL_PORT2_DATA_1 : INTEGER := 16#0e0#;
    constant ADDR_B_VAL_PORT2_CTRL   : INTEGER := 16#0e4#;
    constant ADDR_B_CID_PORT2_DATA_0 : INTEGER := 16#0e8#;
    constant ADDR_B_CID_PORT2_DATA_1 : INTEGER := 16#0ec#;
    constant ADDR_B_CID_PORT2_CTRL   : INTEGER := 16#0f0#;
    constant ADDR_B_VAL_PORT3_DATA_0 : INTEGER := 16#0f4#;
    constant ADDR_B_VAL_PORT3_DATA_1 : INTEGER := 16#0f8#;
    constant ADDR_B_VAL_PORT3_CTRL   : INTEGER := 16#0fc#;
    constant ADDR_B_CID_PORT3_DATA_0 : INTEGER := 16#100#;
    constant ADDR_B_CID_PORT3_DATA_1 : INTEGER := 16#104#;
    constant ADDR_B_CID_PORT3_CTRL   : INTEGER := 16#108#;
    constant ADDR_B_VAL_PORT4_DATA_0 : INTEGER := 16#10c#;
    constant ADDR_B_VAL_PORT4_DATA_1 : INTEGER := 16#110#;
    constant ADDR_B_VAL_PORT4_CTRL   : INTEGER := 16#114#;
    constant ADDR_B_CID_PORT4_DATA_0 : INTEGER := 16#118#;
    constant ADDR_B_CID_PORT4_DATA_1 : INTEGER := 16#11c#;
    constant ADDR_B_CID_PORT4_CTRL   : INTEGER := 16#120#;
    constant ADDR_C_RCSR_DATA_0      : INTEGER := 16#124#;
    constant ADDR_C_RCSR_DATA_1      : INTEGER := 16#128#;
    constant ADDR_C_RCSR_CTRL        : INTEGER := 16#12c#;
    constant ADDR_C_CID_DATA_0       : INTEGER := 16#130#;
    constant ADDR_C_CID_DATA_1       : INTEGER := 16#134#;
    constant ADDR_C_CID_CTRL         : INTEGER := 16#138#;
    constant ADDR_C_VAL_DATA_0       : INTEGER := 16#13c#;
    constant ADDR_C_VAL_DATA_1       : INTEGER := 16#140#;
    constant ADDR_C_VAL_CTRL         : INTEGER := 16#144#;
    constant ADDR_BITS         : INTEGER := 9;

    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    signal BVALID_t            : STD_LOGIC;
    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    -- internal registers
    signal int_A_rcsr          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_A_cid           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_A_val           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_rcsr1         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_rcsr2         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_rcsr3         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_rcsr4         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_val1          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_cid1          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_val2          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_cid2          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_val3          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_cid3          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_val4          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_cid4          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_val_port1     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_cid_port1     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_val_port2     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_cid_port2     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_val_port3     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_cid_port3     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_val_port4     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_B_cid_port4     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_C_rcsr          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_C_cid           : UNSIGNED(63 downto 0) := (others => '0');
    signal int_C_val           : UNSIGNED(63 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BVALID_t  <=  '1' when wstate = wrresp else '0';
    BVALID    <=  BVALID_t;
    BRESP     <=  "00";  -- OKAY
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY, BVALID_t)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1' and BVALID_t = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 2) & (1 downto 0 => '0'));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_A_RCSR_DATA_0 =>
                        rdata_data <= RESIZE(int_A_rcsr(31 downto 0), 32);
                    when ADDR_A_RCSR_DATA_1 =>
                        rdata_data <= RESIZE(int_A_rcsr(63 downto 32), 32);
                    when ADDR_A_CID_DATA_0 =>
                        rdata_data <= RESIZE(int_A_cid(31 downto 0), 32);
                    when ADDR_A_CID_DATA_1 =>
                        rdata_data <= RESIZE(int_A_cid(63 downto 32), 32);
                    when ADDR_A_VAL_DATA_0 =>
                        rdata_data <= RESIZE(int_A_val(31 downto 0), 32);
                    when ADDR_A_VAL_DATA_1 =>
                        rdata_data <= RESIZE(int_A_val(63 downto 32), 32);
                    when ADDR_B_RCSR1_DATA_0 =>
                        rdata_data <= RESIZE(int_B_rcsr1(31 downto 0), 32);
                    when ADDR_B_RCSR1_DATA_1 =>
                        rdata_data <= RESIZE(int_B_rcsr1(63 downto 32), 32);
                    when ADDR_B_RCSR2_DATA_0 =>
                        rdata_data <= RESIZE(int_B_rcsr2(31 downto 0), 32);
                    when ADDR_B_RCSR2_DATA_1 =>
                        rdata_data <= RESIZE(int_B_rcsr2(63 downto 32), 32);
                    when ADDR_B_RCSR3_DATA_0 =>
                        rdata_data <= RESIZE(int_B_rcsr3(31 downto 0), 32);
                    when ADDR_B_RCSR3_DATA_1 =>
                        rdata_data <= RESIZE(int_B_rcsr3(63 downto 32), 32);
                    when ADDR_B_RCSR4_DATA_0 =>
                        rdata_data <= RESIZE(int_B_rcsr4(31 downto 0), 32);
                    when ADDR_B_RCSR4_DATA_1 =>
                        rdata_data <= RESIZE(int_B_rcsr4(63 downto 32), 32);
                    when ADDR_B_VAL1_DATA_0 =>
                        rdata_data <= RESIZE(int_B_val1(31 downto 0), 32);
                    when ADDR_B_VAL1_DATA_1 =>
                        rdata_data <= RESIZE(int_B_val1(63 downto 32), 32);
                    when ADDR_B_CID1_DATA_0 =>
                        rdata_data <= RESIZE(int_B_cid1(31 downto 0), 32);
                    when ADDR_B_CID1_DATA_1 =>
                        rdata_data <= RESIZE(int_B_cid1(63 downto 32), 32);
                    when ADDR_B_VAL2_DATA_0 =>
                        rdata_data <= RESIZE(int_B_val2(31 downto 0), 32);
                    when ADDR_B_VAL2_DATA_1 =>
                        rdata_data <= RESIZE(int_B_val2(63 downto 32), 32);
                    when ADDR_B_CID2_DATA_0 =>
                        rdata_data <= RESIZE(int_B_cid2(31 downto 0), 32);
                    when ADDR_B_CID2_DATA_1 =>
                        rdata_data <= RESIZE(int_B_cid2(63 downto 32), 32);
                    when ADDR_B_VAL3_DATA_0 =>
                        rdata_data <= RESIZE(int_B_val3(31 downto 0), 32);
                    when ADDR_B_VAL3_DATA_1 =>
                        rdata_data <= RESIZE(int_B_val3(63 downto 32), 32);
                    when ADDR_B_CID3_DATA_0 =>
                        rdata_data <= RESIZE(int_B_cid3(31 downto 0), 32);
                    when ADDR_B_CID3_DATA_1 =>
                        rdata_data <= RESIZE(int_B_cid3(63 downto 32), 32);
                    when ADDR_B_VAL4_DATA_0 =>
                        rdata_data <= RESIZE(int_B_val4(31 downto 0), 32);
                    when ADDR_B_VAL4_DATA_1 =>
                        rdata_data <= RESIZE(int_B_val4(63 downto 32), 32);
                    when ADDR_B_CID4_DATA_0 =>
                        rdata_data <= RESIZE(int_B_cid4(31 downto 0), 32);
                    when ADDR_B_CID4_DATA_1 =>
                        rdata_data <= RESIZE(int_B_cid4(63 downto 32), 32);
                    when ADDR_B_VAL_PORT1_DATA_0 =>
                        rdata_data <= RESIZE(int_B_val_port1(31 downto 0), 32);
                    when ADDR_B_VAL_PORT1_DATA_1 =>
                        rdata_data <= RESIZE(int_B_val_port1(63 downto 32), 32);
                    when ADDR_B_CID_PORT1_DATA_0 =>
                        rdata_data <= RESIZE(int_B_cid_port1(31 downto 0), 32);
                    when ADDR_B_CID_PORT1_DATA_1 =>
                        rdata_data <= RESIZE(int_B_cid_port1(63 downto 32), 32);
                    when ADDR_B_VAL_PORT2_DATA_0 =>
                        rdata_data <= RESIZE(int_B_val_port2(31 downto 0), 32);
                    when ADDR_B_VAL_PORT2_DATA_1 =>
                        rdata_data <= RESIZE(int_B_val_port2(63 downto 32), 32);
                    when ADDR_B_CID_PORT2_DATA_0 =>
                        rdata_data <= RESIZE(int_B_cid_port2(31 downto 0), 32);
                    when ADDR_B_CID_PORT2_DATA_1 =>
                        rdata_data <= RESIZE(int_B_cid_port2(63 downto 32), 32);
                    when ADDR_B_VAL_PORT3_DATA_0 =>
                        rdata_data <= RESIZE(int_B_val_port3(31 downto 0), 32);
                    when ADDR_B_VAL_PORT3_DATA_1 =>
                        rdata_data <= RESIZE(int_B_val_port3(63 downto 32), 32);
                    when ADDR_B_CID_PORT3_DATA_0 =>
                        rdata_data <= RESIZE(int_B_cid_port3(31 downto 0), 32);
                    when ADDR_B_CID_PORT3_DATA_1 =>
                        rdata_data <= RESIZE(int_B_cid_port3(63 downto 32), 32);
                    when ADDR_B_VAL_PORT4_DATA_0 =>
                        rdata_data <= RESIZE(int_B_val_port4(31 downto 0), 32);
                    when ADDR_B_VAL_PORT4_DATA_1 =>
                        rdata_data <= RESIZE(int_B_val_port4(63 downto 32), 32);
                    when ADDR_B_CID_PORT4_DATA_0 =>
                        rdata_data <= RESIZE(int_B_cid_port4(31 downto 0), 32);
                    when ADDR_B_CID_PORT4_DATA_1 =>
                        rdata_data <= RESIZE(int_B_cid_port4(63 downto 32), 32);
                    when ADDR_C_RCSR_DATA_0 =>
                        rdata_data <= RESIZE(int_C_rcsr(31 downto 0), 32);
                    when ADDR_C_RCSR_DATA_1 =>
                        rdata_data <= RESIZE(int_C_rcsr(63 downto 32), 32);
                    when ADDR_C_CID_DATA_0 =>
                        rdata_data <= RESIZE(int_C_cid(31 downto 0), 32);
                    when ADDR_C_CID_DATA_1 =>
                        rdata_data <= RESIZE(int_C_cid(63 downto 32), 32);
                    when ADDR_C_VAL_DATA_0 =>
                        rdata_data <= RESIZE(int_C_val(31 downto 0), 32);
                    when ADDR_C_VAL_DATA_1 =>
                        rdata_data <= RESIZE(int_C_val(63 downto 32), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    A_rcsr               <= STD_LOGIC_VECTOR(int_A_rcsr);
    A_cid                <= STD_LOGIC_VECTOR(int_A_cid);
    A_val                <= STD_LOGIC_VECTOR(int_A_val);
    B_rcsr1              <= STD_LOGIC_VECTOR(int_B_rcsr1);
    B_rcsr2              <= STD_LOGIC_VECTOR(int_B_rcsr2);
    B_rcsr3              <= STD_LOGIC_VECTOR(int_B_rcsr3);
    B_rcsr4              <= STD_LOGIC_VECTOR(int_B_rcsr4);
    B_val1               <= STD_LOGIC_VECTOR(int_B_val1);
    B_cid1               <= STD_LOGIC_VECTOR(int_B_cid1);
    B_val2               <= STD_LOGIC_VECTOR(int_B_val2);
    B_cid2               <= STD_LOGIC_VECTOR(int_B_cid2);
    B_val3               <= STD_LOGIC_VECTOR(int_B_val3);
    B_cid3               <= STD_LOGIC_VECTOR(int_B_cid3);
    B_val4               <= STD_LOGIC_VECTOR(int_B_val4);
    B_cid4               <= STD_LOGIC_VECTOR(int_B_cid4);
    B_val_port1          <= STD_LOGIC_VECTOR(int_B_val_port1);
    B_cid_port1          <= STD_LOGIC_VECTOR(int_B_cid_port1);
    B_val_port2          <= STD_LOGIC_VECTOR(int_B_val_port2);
    B_cid_port2          <= STD_LOGIC_VECTOR(int_B_cid_port2);
    B_val_port3          <= STD_LOGIC_VECTOR(int_B_val_port3);
    B_cid_port3          <= STD_LOGIC_VECTOR(int_B_cid_port3);
    B_val_port4          <= STD_LOGIC_VECTOR(int_B_val_port4);
    B_cid_port4          <= STD_LOGIC_VECTOR(int_B_cid_port4);
    C_rcsr               <= STD_LOGIC_VECTOR(int_C_rcsr);
    C_cid                <= STD_LOGIC_VECTOR(int_C_cid);
    C_val                <= STD_LOGIC_VECTOR(int_C_val);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_rcsr(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_RCSR_DATA_0) then
                    int_A_rcsr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_rcsr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_rcsr(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_RCSR_DATA_1) then
                    int_A_rcsr(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_rcsr(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_cid(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_CID_DATA_0) then
                    int_A_cid(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_cid(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_cid(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_CID_DATA_1) then
                    int_A_cid(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_cid(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_val(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_VAL_DATA_0) then
                    int_A_val(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_val(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_A_val(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_A_VAL_DATA_1) then
                    int_A_val(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_A_val(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_rcsr1(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_RCSR1_DATA_0) then
                    int_B_rcsr1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_rcsr1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_rcsr1(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_RCSR1_DATA_1) then
                    int_B_rcsr1(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_rcsr1(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_rcsr2(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_RCSR2_DATA_0) then
                    int_B_rcsr2(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_rcsr2(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_rcsr2(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_RCSR2_DATA_1) then
                    int_B_rcsr2(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_rcsr2(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_rcsr3(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_RCSR3_DATA_0) then
                    int_B_rcsr3(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_rcsr3(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_rcsr3(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_RCSR3_DATA_1) then
                    int_B_rcsr3(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_rcsr3(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_rcsr4(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_RCSR4_DATA_0) then
                    int_B_rcsr4(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_rcsr4(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_rcsr4(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_RCSR4_DATA_1) then
                    int_B_rcsr4(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_rcsr4(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val1(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL1_DATA_0) then
                    int_B_val1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val1(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL1_DATA_1) then
                    int_B_val1(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val1(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid1(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID1_DATA_0) then
                    int_B_cid1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid1(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID1_DATA_1) then
                    int_B_cid1(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid1(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val2(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL2_DATA_0) then
                    int_B_val2(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val2(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val2(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL2_DATA_1) then
                    int_B_val2(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val2(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid2(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID2_DATA_0) then
                    int_B_cid2(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid2(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid2(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID2_DATA_1) then
                    int_B_cid2(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid2(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val3(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL3_DATA_0) then
                    int_B_val3(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val3(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val3(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL3_DATA_1) then
                    int_B_val3(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val3(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid3(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID3_DATA_0) then
                    int_B_cid3(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid3(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid3(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID3_DATA_1) then
                    int_B_cid3(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid3(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val4(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL4_DATA_0) then
                    int_B_val4(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val4(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val4(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL4_DATA_1) then
                    int_B_val4(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val4(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid4(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID4_DATA_0) then
                    int_B_cid4(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid4(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid4(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID4_DATA_1) then
                    int_B_cid4(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid4(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val_port1(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL_PORT1_DATA_0) then
                    int_B_val_port1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val_port1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val_port1(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL_PORT1_DATA_1) then
                    int_B_val_port1(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val_port1(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid_port1(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID_PORT1_DATA_0) then
                    int_B_cid_port1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid_port1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid_port1(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID_PORT1_DATA_1) then
                    int_B_cid_port1(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid_port1(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val_port2(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL_PORT2_DATA_0) then
                    int_B_val_port2(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val_port2(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val_port2(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL_PORT2_DATA_1) then
                    int_B_val_port2(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val_port2(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid_port2(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID_PORT2_DATA_0) then
                    int_B_cid_port2(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid_port2(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid_port2(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID_PORT2_DATA_1) then
                    int_B_cid_port2(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid_port2(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val_port3(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL_PORT3_DATA_0) then
                    int_B_val_port3(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val_port3(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val_port3(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL_PORT3_DATA_1) then
                    int_B_val_port3(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val_port3(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid_port3(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID_PORT3_DATA_0) then
                    int_B_cid_port3(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid_port3(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid_port3(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID_PORT3_DATA_1) then
                    int_B_cid_port3(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid_port3(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val_port4(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL_PORT4_DATA_0) then
                    int_B_val_port4(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val_port4(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_val_port4(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL_PORT4_DATA_1) then
                    int_B_val_port4(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val_port4(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid_port4(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID_PORT4_DATA_0) then
                    int_B_cid_port4(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid_port4(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_B_cid_port4(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID_PORT4_DATA_1) then
                    int_B_cid_port4(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid_port4(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_C_rcsr(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_C_RCSR_DATA_0) then
                    int_C_rcsr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_C_rcsr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_C_rcsr(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_C_RCSR_DATA_1) then
                    int_C_rcsr(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_C_rcsr(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_C_cid(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_C_CID_DATA_0) then
                    int_C_cid(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_C_cid(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_C_cid(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_C_CID_DATA_1) then
                    int_C_cid(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_C_cid(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_C_val(31 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_C_VAL_DATA_0) then
                    int_C_val(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_C_val(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_C_val(63 downto 32) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_C_VAL_DATA_1) then
                    int_C_val(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_C_val(63 downto 32));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
