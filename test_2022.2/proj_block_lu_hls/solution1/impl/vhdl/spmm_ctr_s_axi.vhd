-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Tool Version Limit: 2019.12
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity spmm_ctr_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 10;
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
    interrupt             :out  STD_LOGIC;
    arnum                 :out  STD_LOGIC_VECTOR(31 downto 0);
    atnum                 :out  STD_LOGIC_VECTOR(31 downto 0);
    brnum                 :out  STD_LOGIC_VECTOR(31 downto 0);
    btnum                 :out  STD_LOGIC_VECTOR(31 downto 0);
    B_rcsr_base           :out  STD_LOGIC_VECTOR(31 downto 0);
    B_val_base            :out  STD_LOGIC_VECTOR(31 downto 0);
    B_cid_base            :out  STD_LOGIC_VECTOR(31 downto 0);
    r1acc                 :in   STD_LOGIC_VECTOR(31 downto 0);
    r1acc_ap_vld          :in   STD_LOGIC;
    r1hit                 :in   STD_LOGIC_VECTOR(31 downto 0);
    r1hit_ap_vld          :in   STD_LOGIC;
    r2acc                 :in   STD_LOGIC_VECTOR(31 downto 0);
    r2acc_ap_vld          :in   STD_LOGIC;
    r2hit                 :in   STD_LOGIC_VECTOR(31 downto 0);
    r2hit_ap_vld          :in   STD_LOGIC;
    r3acc                 :in   STD_LOGIC_VECTOR(31 downto 0);
    r3acc_ap_vld          :in   STD_LOGIC;
    r3hit                 :in   STD_LOGIC_VECTOR(31 downto 0);
    r3hit_ap_vld          :in   STD_LOGIC;
    r4acc                 :in   STD_LOGIC_VECTOR(31 downto 0);
    r4acc_ap_vld          :in   STD_LOGIC;
    r4hit                 :in   STD_LOGIC_VECTOR(31 downto 0);
    r4hit_ap_vld          :in   STD_LOGIC;
    r5acc                 :out  STD_LOGIC_VECTOR(31 downto 0);
    r5hit                 :out  STD_LOGIC_VECTOR(31 downto 0);
    r6acc                 :out  STD_LOGIC_VECTOR(31 downto 0);
    r6hit                 :out  STD_LOGIC_VECTOR(31 downto 0);
    r7acc                 :out  STD_LOGIC_VECTOR(31 downto 0);
    r7hit                 :out  STD_LOGIC_VECTOR(31 downto 0);
    r8acc                 :out  STD_LOGIC_VECTOR(31 downto 0);
    r8hit                 :out  STD_LOGIC_VECTOR(31 downto 0);
    vc1acc                :in   STD_LOGIC_VECTOR(31 downto 0);
    vc1acc_ap_vld         :in   STD_LOGIC;
    vc1hit                :in   STD_LOGIC_VECTOR(31 downto 0);
    vc1hit_ap_vld         :in   STD_LOGIC;
    vc2acc                :in   STD_LOGIC_VECTOR(31 downto 0);
    vc2acc_ap_vld         :in   STD_LOGIC;
    vc2hit                :in   STD_LOGIC_VECTOR(31 downto 0);
    vc2hit_ap_vld         :in   STD_LOGIC;
    vc3acc                :in   STD_LOGIC_VECTOR(31 downto 0);
    vc3acc_ap_vld         :in   STD_LOGIC;
    vc3hit                :in   STD_LOGIC_VECTOR(31 downto 0);
    vc3hit_ap_vld         :in   STD_LOGIC;
    vc4acc                :in   STD_LOGIC_VECTOR(31 downto 0);
    vc4acc_ap_vld         :in   STD_LOGIC;
    vc4hit                :in   STD_LOGIC_VECTOR(31 downto 0);
    vc4hit_ap_vld         :in   STD_LOGIC;
    vc5acc                :out  STD_LOGIC_VECTOR(31 downto 0);
    vc5hit                :out  STD_LOGIC_VECTOR(31 downto 0);
    vc6acc                :out  STD_LOGIC_VECTOR(31 downto 0);
    vc6hit                :out  STD_LOGIC_VECTOR(31 downto 0);
    vc7acc                :out  STD_LOGIC_VECTOR(31 downto 0);
    vc7hit                :out  STD_LOGIC_VECTOR(31 downto 0);
    vc8acc                :out  STD_LOGIC_VECTOR(31 downto 0);
    vc8hit                :out  STD_LOGIC_VECTOR(31 downto 0);
    fnum                  :in   STD_LOGIC_VECTOR(31 downto 0);
    fnum_ap_vld           :in   STD_LOGIC;
    workload_counter1     :in   STD_LOGIC_VECTOR(31 downto 0);
    workload_counter1_ap_vld :in   STD_LOGIC;
    workload_counter2     :in   STD_LOGIC_VECTOR(31 downto 0);
    workload_counter2_ap_vld :in   STD_LOGIC;
    workload_counter3     :in   STD_LOGIC_VECTOR(31 downto 0);
    workload_counter3_ap_vld :in   STD_LOGIC;
    workload_counter4     :in   STD_LOGIC_VECTOR(31 downto 0);
    workload_counter4_ap_vld :in   STD_LOGIC;
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity spmm_ctr_s_axi;

-- ------------------------Address Info-------------------
-- 0x000 : Control signals
--         bit 0  - ap_start (Read/Write/COH)
--         bit 1  - ap_done (Read/COR)
--         bit 2  - ap_idle (Read)
--         bit 3  - ap_ready (Read/COR)
--         bit 7  - auto_restart (Read/Write)
--         bit 9  - interrupt (Read)
--         others - reserved
-- 0x004 : Global Interrupt Enable Register
--         bit 0  - Global Interrupt Enable (Read/Write)
--         others - reserved
-- 0x008 : IP Interrupt Enable Register (Read/Write)
--         bit 0 - enable ap_done interrupt (Read/Write)
--         bit 1 - enable ap_ready interrupt (Read/Write)
--         others - reserved
-- 0x00c : IP Interrupt Status Register (Read/TOW)
--         bit 0 - ap_done (Read/TOW)
--         bit 1 - ap_ready (Read/TOW)
--         others - reserved
-- 0x010 : Data signal of arnum
--         bit 31~0 - arnum[31:0] (Read/Write)
-- 0x014 : reserved
-- 0x018 : Data signal of atnum
--         bit 31~0 - atnum[31:0] (Read/Write)
-- 0x01c : reserved
-- 0x020 : Data signal of brnum
--         bit 31~0 - brnum[31:0] (Read/Write)
-- 0x024 : reserved
-- 0x028 : Data signal of btnum
--         bit 31~0 - btnum[31:0] (Read/Write)
-- 0x02c : reserved
-- 0x030 : Data signal of B_rcsr_base
--         bit 31~0 - B_rcsr_base[31:0] (Read/Write)
-- 0x034 : reserved
-- 0x038 : Data signal of B_val_base
--         bit 31~0 - B_val_base[31:0] (Read/Write)
-- 0x03c : reserved
-- 0x040 : Data signal of B_cid_base
--         bit 31~0 - B_cid_base[31:0] (Read/Write)
-- 0x044 : reserved
-- 0x048 : Data signal of r1acc
--         bit 31~0 - r1acc[31:0] (Read)
-- 0x04c : Control signal of r1acc
--         bit 0  - r1acc_ap_vld (Read/COR)
--         others - reserved
-- 0x058 : Data signal of r1hit
--         bit 31~0 - r1hit[31:0] (Read)
-- 0x05c : Control signal of r1hit
--         bit 0  - r1hit_ap_vld (Read/COR)
--         others - reserved
-- 0x068 : Data signal of r2acc
--         bit 31~0 - r2acc[31:0] (Read)
-- 0x06c : Control signal of r2acc
--         bit 0  - r2acc_ap_vld (Read/COR)
--         others - reserved
-- 0x078 : Data signal of r2hit
--         bit 31~0 - r2hit[31:0] (Read)
-- 0x07c : Control signal of r2hit
--         bit 0  - r2hit_ap_vld (Read/COR)
--         others - reserved
-- 0x088 : Data signal of r3acc
--         bit 31~0 - r3acc[31:0] (Read)
-- 0x08c : Control signal of r3acc
--         bit 0  - r3acc_ap_vld (Read/COR)
--         others - reserved
-- 0x098 : Data signal of r3hit
--         bit 31~0 - r3hit[31:0] (Read)
-- 0x09c : Control signal of r3hit
--         bit 0  - r3hit_ap_vld (Read/COR)
--         others - reserved
-- 0x0a8 : Data signal of r4acc
--         bit 31~0 - r4acc[31:0] (Read)
-- 0x0ac : Control signal of r4acc
--         bit 0  - r4acc_ap_vld (Read/COR)
--         others - reserved
-- 0x0b8 : Data signal of r4hit
--         bit 31~0 - r4hit[31:0] (Read)
-- 0x0bc : Control signal of r4hit
--         bit 0  - r4hit_ap_vld (Read/COR)
--         others - reserved
-- 0x0c8 : Data signal of r5acc
--         bit 31~0 - r5acc[31:0] (Read/Write)
-- 0x0cc : reserved
-- 0x0d0 : Data signal of r5hit
--         bit 31~0 - r5hit[31:0] (Read/Write)
-- 0x0d4 : reserved
-- 0x0d8 : Data signal of r6acc
--         bit 31~0 - r6acc[31:0] (Read/Write)
-- 0x0dc : reserved
-- 0x0e0 : Data signal of r6hit
--         bit 31~0 - r6hit[31:0] (Read/Write)
-- 0x0e4 : reserved
-- 0x0e8 : Data signal of r7acc
--         bit 31~0 - r7acc[31:0] (Read/Write)
-- 0x0ec : reserved
-- 0x0f0 : Data signal of r7hit
--         bit 31~0 - r7hit[31:0] (Read/Write)
-- 0x0f4 : reserved
-- 0x0f8 : Data signal of r8acc
--         bit 31~0 - r8acc[31:0] (Read/Write)
-- 0x0fc : reserved
-- 0x100 : Data signal of r8hit
--         bit 31~0 - r8hit[31:0] (Read/Write)
-- 0x104 : reserved
-- 0x108 : Data signal of vc1acc
--         bit 31~0 - vc1acc[31:0] (Read)
-- 0x10c : Control signal of vc1acc
--         bit 0  - vc1acc_ap_vld (Read/COR)
--         others - reserved
-- 0x118 : Data signal of vc1hit
--         bit 31~0 - vc1hit[31:0] (Read)
-- 0x11c : Control signal of vc1hit
--         bit 0  - vc1hit_ap_vld (Read/COR)
--         others - reserved
-- 0x128 : Data signal of vc2acc
--         bit 31~0 - vc2acc[31:0] (Read)
-- 0x12c : Control signal of vc2acc
--         bit 0  - vc2acc_ap_vld (Read/COR)
--         others - reserved
-- 0x138 : Data signal of vc2hit
--         bit 31~0 - vc2hit[31:0] (Read)
-- 0x13c : Control signal of vc2hit
--         bit 0  - vc2hit_ap_vld (Read/COR)
--         others - reserved
-- 0x148 : Data signal of vc3acc
--         bit 31~0 - vc3acc[31:0] (Read)
-- 0x14c : Control signal of vc3acc
--         bit 0  - vc3acc_ap_vld (Read/COR)
--         others - reserved
-- 0x158 : Data signal of vc3hit
--         bit 31~0 - vc3hit[31:0] (Read)
-- 0x15c : Control signal of vc3hit
--         bit 0  - vc3hit_ap_vld (Read/COR)
--         others - reserved
-- 0x168 : Data signal of vc4acc
--         bit 31~0 - vc4acc[31:0] (Read)
-- 0x16c : Control signal of vc4acc
--         bit 0  - vc4acc_ap_vld (Read/COR)
--         others - reserved
-- 0x178 : Data signal of vc4hit
--         bit 31~0 - vc4hit[31:0] (Read)
-- 0x17c : Control signal of vc4hit
--         bit 0  - vc4hit_ap_vld (Read/COR)
--         others - reserved
-- 0x188 : Data signal of vc5acc
--         bit 31~0 - vc5acc[31:0] (Read/Write)
-- 0x18c : reserved
-- 0x190 : Data signal of vc5hit
--         bit 31~0 - vc5hit[31:0] (Read/Write)
-- 0x194 : reserved
-- 0x198 : Data signal of vc6acc
--         bit 31~0 - vc6acc[31:0] (Read/Write)
-- 0x19c : reserved
-- 0x1a0 : Data signal of vc6hit
--         bit 31~0 - vc6hit[31:0] (Read/Write)
-- 0x1a4 : reserved
-- 0x1a8 : Data signal of vc7acc
--         bit 31~0 - vc7acc[31:0] (Read/Write)
-- 0x1ac : reserved
-- 0x1b0 : Data signal of vc7hit
--         bit 31~0 - vc7hit[31:0] (Read/Write)
-- 0x1b4 : reserved
-- 0x1b8 : Data signal of vc8acc
--         bit 31~0 - vc8acc[31:0] (Read/Write)
-- 0x1bc : reserved
-- 0x1c0 : Data signal of vc8hit
--         bit 31~0 - vc8hit[31:0] (Read/Write)
-- 0x1c4 : reserved
-- 0x1c8 : Data signal of fnum
--         bit 31~0 - fnum[31:0] (Read)
-- 0x1cc : Control signal of fnum
--         bit 0  - fnum_ap_vld (Read/COR)
--         others - reserved
-- 0x1d8 : Data signal of workload_counter1
--         bit 31~0 - workload_counter1[31:0] (Read)
-- 0x1dc : Control signal of workload_counter1
--         bit 0  - workload_counter1_ap_vld (Read/COR)
--         others - reserved
-- 0x1e8 : Data signal of workload_counter2
--         bit 31~0 - workload_counter2[31:0] (Read)
-- 0x1ec : Control signal of workload_counter2
--         bit 0  - workload_counter2_ap_vld (Read/COR)
--         others - reserved
-- 0x1f8 : Data signal of workload_counter3
--         bit 31~0 - workload_counter3[31:0] (Read)
-- 0x1fc : Control signal of workload_counter3
--         bit 0  - workload_counter3_ap_vld (Read/COR)
--         others - reserved
-- 0x208 : Data signal of workload_counter4
--         bit 31~0 - workload_counter4[31:0] (Read)
-- 0x20c : Control signal of workload_counter4
--         bit 0  - workload_counter4_ap_vld (Read/COR)
--         others - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of spmm_ctr_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL                  : INTEGER := 16#000#;
    constant ADDR_GIE                      : INTEGER := 16#004#;
    constant ADDR_IER                      : INTEGER := 16#008#;
    constant ADDR_ISR                      : INTEGER := 16#00c#;
    constant ADDR_ARNUM_DATA_0             : INTEGER := 16#010#;
    constant ADDR_ARNUM_CTRL               : INTEGER := 16#014#;
    constant ADDR_ATNUM_DATA_0             : INTEGER := 16#018#;
    constant ADDR_ATNUM_CTRL               : INTEGER := 16#01c#;
    constant ADDR_BRNUM_DATA_0             : INTEGER := 16#020#;
    constant ADDR_BRNUM_CTRL               : INTEGER := 16#024#;
    constant ADDR_BTNUM_DATA_0             : INTEGER := 16#028#;
    constant ADDR_BTNUM_CTRL               : INTEGER := 16#02c#;
    constant ADDR_B_RCSR_BASE_DATA_0       : INTEGER := 16#030#;
    constant ADDR_B_RCSR_BASE_CTRL         : INTEGER := 16#034#;
    constant ADDR_B_VAL_BASE_DATA_0        : INTEGER := 16#038#;
    constant ADDR_B_VAL_BASE_CTRL          : INTEGER := 16#03c#;
    constant ADDR_B_CID_BASE_DATA_0        : INTEGER := 16#040#;
    constant ADDR_B_CID_BASE_CTRL          : INTEGER := 16#044#;
    constant ADDR_R1ACC_DATA_0             : INTEGER := 16#048#;
    constant ADDR_R1ACC_CTRL               : INTEGER := 16#04c#;
    constant ADDR_R1HIT_DATA_0             : INTEGER := 16#058#;
    constant ADDR_R1HIT_CTRL               : INTEGER := 16#05c#;
    constant ADDR_R2ACC_DATA_0             : INTEGER := 16#068#;
    constant ADDR_R2ACC_CTRL               : INTEGER := 16#06c#;
    constant ADDR_R2HIT_DATA_0             : INTEGER := 16#078#;
    constant ADDR_R2HIT_CTRL               : INTEGER := 16#07c#;
    constant ADDR_R3ACC_DATA_0             : INTEGER := 16#088#;
    constant ADDR_R3ACC_CTRL               : INTEGER := 16#08c#;
    constant ADDR_R3HIT_DATA_0             : INTEGER := 16#098#;
    constant ADDR_R3HIT_CTRL               : INTEGER := 16#09c#;
    constant ADDR_R4ACC_DATA_0             : INTEGER := 16#0a8#;
    constant ADDR_R4ACC_CTRL               : INTEGER := 16#0ac#;
    constant ADDR_R4HIT_DATA_0             : INTEGER := 16#0b8#;
    constant ADDR_R4HIT_CTRL               : INTEGER := 16#0bc#;
    constant ADDR_R5ACC_DATA_0             : INTEGER := 16#0c8#;
    constant ADDR_R5ACC_CTRL               : INTEGER := 16#0cc#;
    constant ADDR_R5HIT_DATA_0             : INTEGER := 16#0d0#;
    constant ADDR_R5HIT_CTRL               : INTEGER := 16#0d4#;
    constant ADDR_R6ACC_DATA_0             : INTEGER := 16#0d8#;
    constant ADDR_R6ACC_CTRL               : INTEGER := 16#0dc#;
    constant ADDR_R6HIT_DATA_0             : INTEGER := 16#0e0#;
    constant ADDR_R6HIT_CTRL               : INTEGER := 16#0e4#;
    constant ADDR_R7ACC_DATA_0             : INTEGER := 16#0e8#;
    constant ADDR_R7ACC_CTRL               : INTEGER := 16#0ec#;
    constant ADDR_R7HIT_DATA_0             : INTEGER := 16#0f0#;
    constant ADDR_R7HIT_CTRL               : INTEGER := 16#0f4#;
    constant ADDR_R8ACC_DATA_0             : INTEGER := 16#0f8#;
    constant ADDR_R8ACC_CTRL               : INTEGER := 16#0fc#;
    constant ADDR_R8HIT_DATA_0             : INTEGER := 16#100#;
    constant ADDR_R8HIT_CTRL               : INTEGER := 16#104#;
    constant ADDR_VC1ACC_DATA_0            : INTEGER := 16#108#;
    constant ADDR_VC1ACC_CTRL              : INTEGER := 16#10c#;
    constant ADDR_VC1HIT_DATA_0            : INTEGER := 16#118#;
    constant ADDR_VC1HIT_CTRL              : INTEGER := 16#11c#;
    constant ADDR_VC2ACC_DATA_0            : INTEGER := 16#128#;
    constant ADDR_VC2ACC_CTRL              : INTEGER := 16#12c#;
    constant ADDR_VC2HIT_DATA_0            : INTEGER := 16#138#;
    constant ADDR_VC2HIT_CTRL              : INTEGER := 16#13c#;
    constant ADDR_VC3ACC_DATA_0            : INTEGER := 16#148#;
    constant ADDR_VC3ACC_CTRL              : INTEGER := 16#14c#;
    constant ADDR_VC3HIT_DATA_0            : INTEGER := 16#158#;
    constant ADDR_VC3HIT_CTRL              : INTEGER := 16#15c#;
    constant ADDR_VC4ACC_DATA_0            : INTEGER := 16#168#;
    constant ADDR_VC4ACC_CTRL              : INTEGER := 16#16c#;
    constant ADDR_VC4HIT_DATA_0            : INTEGER := 16#178#;
    constant ADDR_VC4HIT_CTRL              : INTEGER := 16#17c#;
    constant ADDR_VC5ACC_DATA_0            : INTEGER := 16#188#;
    constant ADDR_VC5ACC_CTRL              : INTEGER := 16#18c#;
    constant ADDR_VC5HIT_DATA_0            : INTEGER := 16#190#;
    constant ADDR_VC5HIT_CTRL              : INTEGER := 16#194#;
    constant ADDR_VC6ACC_DATA_0            : INTEGER := 16#198#;
    constant ADDR_VC6ACC_CTRL              : INTEGER := 16#19c#;
    constant ADDR_VC6HIT_DATA_0            : INTEGER := 16#1a0#;
    constant ADDR_VC6HIT_CTRL              : INTEGER := 16#1a4#;
    constant ADDR_VC7ACC_DATA_0            : INTEGER := 16#1a8#;
    constant ADDR_VC7ACC_CTRL              : INTEGER := 16#1ac#;
    constant ADDR_VC7HIT_DATA_0            : INTEGER := 16#1b0#;
    constant ADDR_VC7HIT_CTRL              : INTEGER := 16#1b4#;
    constant ADDR_VC8ACC_DATA_0            : INTEGER := 16#1b8#;
    constant ADDR_VC8ACC_CTRL              : INTEGER := 16#1bc#;
    constant ADDR_VC8HIT_DATA_0            : INTEGER := 16#1c0#;
    constant ADDR_VC8HIT_CTRL              : INTEGER := 16#1c4#;
    constant ADDR_FNUM_DATA_0              : INTEGER := 16#1c8#;
    constant ADDR_FNUM_CTRL                : INTEGER := 16#1cc#;
    constant ADDR_WORKLOAD_COUNTER1_DATA_0 : INTEGER := 16#1d8#;
    constant ADDR_WORKLOAD_COUNTER1_CTRL   : INTEGER := 16#1dc#;
    constant ADDR_WORKLOAD_COUNTER2_DATA_0 : INTEGER := 16#1e8#;
    constant ADDR_WORKLOAD_COUNTER2_CTRL   : INTEGER := 16#1ec#;
    constant ADDR_WORKLOAD_COUNTER3_DATA_0 : INTEGER := 16#1f8#;
    constant ADDR_WORKLOAD_COUNTER3_CTRL   : INTEGER := 16#1fc#;
    constant ADDR_WORKLOAD_COUNTER4_DATA_0 : INTEGER := 16#208#;
    constant ADDR_WORKLOAD_COUNTER4_CTRL   : INTEGER := 16#20c#;
    constant ADDR_BITS         : INTEGER := 10;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_interrupt       : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_arnum           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_atnum           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_brnum           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_btnum           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_rcsr_base     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_val_base      : UNSIGNED(31 downto 0) := (others => '0');
    signal int_B_cid_base      : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r1acc_ap_vld    : STD_LOGIC;
    signal int_r1acc           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r1hit_ap_vld    : STD_LOGIC;
    signal int_r1hit           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r2acc_ap_vld    : STD_LOGIC;
    signal int_r2acc           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r2hit_ap_vld    : STD_LOGIC;
    signal int_r2hit           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r3acc_ap_vld    : STD_LOGIC;
    signal int_r3acc           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r3hit_ap_vld    : STD_LOGIC;
    signal int_r3hit           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r4acc_ap_vld    : STD_LOGIC;
    signal int_r4acc           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r4hit_ap_vld    : STD_LOGIC;
    signal int_r4hit           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r5acc           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r5hit           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r6acc           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r6hit           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r7acc           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r7hit           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r8acc           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_r8hit           : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc1acc_ap_vld   : STD_LOGIC;
    signal int_vc1acc          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc1hit_ap_vld   : STD_LOGIC;
    signal int_vc1hit          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc2acc_ap_vld   : STD_LOGIC;
    signal int_vc2acc          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc2hit_ap_vld   : STD_LOGIC;
    signal int_vc2hit          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc3acc_ap_vld   : STD_LOGIC;
    signal int_vc3acc          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc3hit_ap_vld   : STD_LOGIC;
    signal int_vc3hit          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc4acc_ap_vld   : STD_LOGIC;
    signal int_vc4acc          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc4hit_ap_vld   : STD_LOGIC;
    signal int_vc4hit          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc5acc          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc5hit          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc6acc          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc6hit          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc7acc          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc7hit          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc8acc          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_vc8hit          : UNSIGNED(31 downto 0) := (others => '0');
    signal int_fnum_ap_vld     : STD_LOGIC;
    signal int_fnum            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_workload_counter1_ap_vld : STD_LOGIC;
    signal int_workload_counter1 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_workload_counter2_ap_vld : STD_LOGIC;
    signal int_workload_counter2 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_workload_counter3_ap_vld : STD_LOGIC;
    signal int_workload_counter3 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_workload_counter4_ap_vld : STD_LOGIC;
    signal int_workload_counter4 : UNSIGNED(31 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
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

    process (wstate, AWVALID, WVALID, BREADY)
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
            if (BREADY = '1') then
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
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
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
                    when ADDR_AP_CTRL =>
                        rdata_data(9) <= int_interrupt;
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_ARNUM_DATA_0 =>
                        rdata_data <= RESIZE(int_arnum(31 downto 0), 32);
                    when ADDR_ATNUM_DATA_0 =>
                        rdata_data <= RESIZE(int_atnum(31 downto 0), 32);
                    when ADDR_BRNUM_DATA_0 =>
                        rdata_data <= RESIZE(int_brnum(31 downto 0), 32);
                    when ADDR_BTNUM_DATA_0 =>
                        rdata_data <= RESIZE(int_btnum(31 downto 0), 32);
                    when ADDR_B_RCSR_BASE_DATA_0 =>
                        rdata_data <= RESIZE(int_B_rcsr_base(31 downto 0), 32);
                    when ADDR_B_VAL_BASE_DATA_0 =>
                        rdata_data <= RESIZE(int_B_val_base(31 downto 0), 32);
                    when ADDR_B_CID_BASE_DATA_0 =>
                        rdata_data <= RESIZE(int_B_cid_base(31 downto 0), 32);
                    when ADDR_R1ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_r1acc(31 downto 0), 32);
                    when ADDR_R1ACC_CTRL =>
                        rdata_data(0) <= int_r1acc_ap_vld;
                    when ADDR_R1HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_r1hit(31 downto 0), 32);
                    when ADDR_R1HIT_CTRL =>
                        rdata_data(0) <= int_r1hit_ap_vld;
                    when ADDR_R2ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_r2acc(31 downto 0), 32);
                    when ADDR_R2ACC_CTRL =>
                        rdata_data(0) <= int_r2acc_ap_vld;
                    when ADDR_R2HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_r2hit(31 downto 0), 32);
                    when ADDR_R2HIT_CTRL =>
                        rdata_data(0) <= int_r2hit_ap_vld;
                    when ADDR_R3ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_r3acc(31 downto 0), 32);
                    when ADDR_R3ACC_CTRL =>
                        rdata_data(0) <= int_r3acc_ap_vld;
                    when ADDR_R3HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_r3hit(31 downto 0), 32);
                    when ADDR_R3HIT_CTRL =>
                        rdata_data(0) <= int_r3hit_ap_vld;
                    when ADDR_R4ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_r4acc(31 downto 0), 32);
                    when ADDR_R4ACC_CTRL =>
                        rdata_data(0) <= int_r4acc_ap_vld;
                    when ADDR_R4HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_r4hit(31 downto 0), 32);
                    when ADDR_R4HIT_CTRL =>
                        rdata_data(0) <= int_r4hit_ap_vld;
                    when ADDR_R5ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_r5acc(31 downto 0), 32);
                    when ADDR_R5HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_r5hit(31 downto 0), 32);
                    when ADDR_R6ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_r6acc(31 downto 0), 32);
                    when ADDR_R6HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_r6hit(31 downto 0), 32);
                    when ADDR_R7ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_r7acc(31 downto 0), 32);
                    when ADDR_R7HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_r7hit(31 downto 0), 32);
                    when ADDR_R8ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_r8acc(31 downto 0), 32);
                    when ADDR_R8HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_r8hit(31 downto 0), 32);
                    when ADDR_VC1ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_vc1acc(31 downto 0), 32);
                    when ADDR_VC1ACC_CTRL =>
                        rdata_data(0) <= int_vc1acc_ap_vld;
                    when ADDR_VC1HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_vc1hit(31 downto 0), 32);
                    when ADDR_VC1HIT_CTRL =>
                        rdata_data(0) <= int_vc1hit_ap_vld;
                    when ADDR_VC2ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_vc2acc(31 downto 0), 32);
                    when ADDR_VC2ACC_CTRL =>
                        rdata_data(0) <= int_vc2acc_ap_vld;
                    when ADDR_VC2HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_vc2hit(31 downto 0), 32);
                    when ADDR_VC2HIT_CTRL =>
                        rdata_data(0) <= int_vc2hit_ap_vld;
                    when ADDR_VC3ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_vc3acc(31 downto 0), 32);
                    when ADDR_VC3ACC_CTRL =>
                        rdata_data(0) <= int_vc3acc_ap_vld;
                    when ADDR_VC3HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_vc3hit(31 downto 0), 32);
                    when ADDR_VC3HIT_CTRL =>
                        rdata_data(0) <= int_vc3hit_ap_vld;
                    when ADDR_VC4ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_vc4acc(31 downto 0), 32);
                    when ADDR_VC4ACC_CTRL =>
                        rdata_data(0) <= int_vc4acc_ap_vld;
                    when ADDR_VC4HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_vc4hit(31 downto 0), 32);
                    when ADDR_VC4HIT_CTRL =>
                        rdata_data(0) <= int_vc4hit_ap_vld;
                    when ADDR_VC5ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_vc5acc(31 downto 0), 32);
                    when ADDR_VC5HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_vc5hit(31 downto 0), 32);
                    when ADDR_VC6ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_vc6acc(31 downto 0), 32);
                    when ADDR_VC6HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_vc6hit(31 downto 0), 32);
                    when ADDR_VC7ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_vc7acc(31 downto 0), 32);
                    when ADDR_VC7HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_vc7hit(31 downto 0), 32);
                    when ADDR_VC8ACC_DATA_0 =>
                        rdata_data <= RESIZE(int_vc8acc(31 downto 0), 32);
                    when ADDR_VC8HIT_DATA_0 =>
                        rdata_data <= RESIZE(int_vc8hit(31 downto 0), 32);
                    when ADDR_FNUM_DATA_0 =>
                        rdata_data <= RESIZE(int_fnum(31 downto 0), 32);
                    when ADDR_FNUM_CTRL =>
                        rdata_data(0) <= int_fnum_ap_vld;
                    when ADDR_WORKLOAD_COUNTER1_DATA_0 =>
                        rdata_data <= RESIZE(int_workload_counter1(31 downto 0), 32);
                    when ADDR_WORKLOAD_COUNTER1_CTRL =>
                        rdata_data(0) <= int_workload_counter1_ap_vld;
                    when ADDR_WORKLOAD_COUNTER2_DATA_0 =>
                        rdata_data <= RESIZE(int_workload_counter2(31 downto 0), 32);
                    when ADDR_WORKLOAD_COUNTER2_CTRL =>
                        rdata_data(0) <= int_workload_counter2_ap_vld;
                    when ADDR_WORKLOAD_COUNTER3_DATA_0 =>
                        rdata_data <= RESIZE(int_workload_counter3(31 downto 0), 32);
                    when ADDR_WORKLOAD_COUNTER3_CTRL =>
                        rdata_data(0) <= int_workload_counter3_ap_vld;
                    when ADDR_WORKLOAD_COUNTER4_DATA_0 =>
                        rdata_data <= RESIZE(int_workload_counter4(31 downto 0), 32);
                    when ADDR_WORKLOAD_COUNTER4_CTRL =>
                        rdata_data(0) <= int_workload_counter4_ap_vld;
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_interrupt;
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);
    arnum                <= STD_LOGIC_VECTOR(int_arnum);
    atnum                <= STD_LOGIC_VECTOR(int_atnum);
    brnum                <= STD_LOGIC_VECTOR(int_brnum);
    btnum                <= STD_LOGIC_VECTOR(int_btnum);
    B_rcsr_base          <= STD_LOGIC_VECTOR(int_B_rcsr_base);
    B_val_base           <= STD_LOGIC_VECTOR(int_B_val_base);
    B_cid_base           <= STD_LOGIC_VECTOR(int_B_cid_base);
    r5acc                <= STD_LOGIC_VECTOR(int_r5acc);
    r5hit                <= STD_LOGIC_VECTOR(int_r5hit);
    r6acc                <= STD_LOGIC_VECTOR(int_r6acc);
    r6hit                <= STD_LOGIC_VECTOR(int_r6hit);
    r7acc                <= STD_LOGIC_VECTOR(int_r7acc);
    r7hit                <= STD_LOGIC_VECTOR(int_r7hit);
    r8acc                <= STD_LOGIC_VECTOR(int_r8acc);
    r8hit                <= STD_LOGIC_VECTOR(int_r8hit);
    vc5acc               <= STD_LOGIC_VECTOR(int_vc5acc);
    vc5hit               <= STD_LOGIC_VECTOR(int_vc5hit);
    vc6acc               <= STD_LOGIC_VECTOR(int_vc6acc);
    vc6hit               <= STD_LOGIC_VECTOR(int_vc6hit);
    vc7acc               <= STD_LOGIC_VECTOR(int_vc7acc);
    vc7hit               <= STD_LOGIC_VECTOR(int_vc7hit);
    vc8acc               <= STD_LOGIC_VECTOR(int_vc8acc);
    vc8hit               <= STD_LOGIC_VECTOR(int_vc8hit);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_interrupt <= '0';
            elsif (ACLK_EN = '1') then
                if (int_gie = '1' and (int_isr(0) or int_isr(1)) = '1') then
                    int_interrupt <= '1';
                else
                    int_interrupt <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ARNUM_DATA_0) then
                    int_arnum(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_arnum(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ATNUM_DATA_0) then
                    int_atnum(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_atnum(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BRNUM_DATA_0) then
                    int_brnum(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_brnum(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BTNUM_DATA_0) then
                    int_btnum(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_btnum(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_RCSR_BASE_DATA_0) then
                    int_B_rcsr_base(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_rcsr_base(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_VAL_BASE_DATA_0) then
                    int_B_val_base(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_val_base(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_B_CID_BASE_DATA_0) then
                    int_B_cid_base(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_B_cid_base(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r1acc <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (r1acc_ap_vld = '1') then
                    int_r1acc <= UNSIGNED(r1acc);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r1acc_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (r1acc_ap_vld = '1') then
                    int_r1acc_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_R1ACC_CTRL) then
                    int_r1acc_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r1hit <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (r1hit_ap_vld = '1') then
                    int_r1hit <= UNSIGNED(r1hit);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r1hit_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (r1hit_ap_vld = '1') then
                    int_r1hit_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_R1HIT_CTRL) then
                    int_r1hit_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r2acc <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (r2acc_ap_vld = '1') then
                    int_r2acc <= UNSIGNED(r2acc);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r2acc_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (r2acc_ap_vld = '1') then
                    int_r2acc_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_R2ACC_CTRL) then
                    int_r2acc_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r2hit <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (r2hit_ap_vld = '1') then
                    int_r2hit <= UNSIGNED(r2hit);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r2hit_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (r2hit_ap_vld = '1') then
                    int_r2hit_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_R2HIT_CTRL) then
                    int_r2hit_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r3acc <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (r3acc_ap_vld = '1') then
                    int_r3acc <= UNSIGNED(r3acc);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r3acc_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (r3acc_ap_vld = '1') then
                    int_r3acc_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_R3ACC_CTRL) then
                    int_r3acc_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r3hit <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (r3hit_ap_vld = '1') then
                    int_r3hit <= UNSIGNED(r3hit);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r3hit_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (r3hit_ap_vld = '1') then
                    int_r3hit_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_R3HIT_CTRL) then
                    int_r3hit_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r4acc <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (r4acc_ap_vld = '1') then
                    int_r4acc <= UNSIGNED(r4acc);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r4acc_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (r4acc_ap_vld = '1') then
                    int_r4acc_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_R4ACC_CTRL) then
                    int_r4acc_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r4hit <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (r4hit_ap_vld = '1') then
                    int_r4hit <= UNSIGNED(r4hit);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_r4hit_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (r4hit_ap_vld = '1') then
                    int_r4hit_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_R4HIT_CTRL) then
                    int_r4hit_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_R5ACC_DATA_0) then
                    int_r5acc(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_r5acc(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_R5HIT_DATA_0) then
                    int_r5hit(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_r5hit(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_R6ACC_DATA_0) then
                    int_r6acc(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_r6acc(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_R6HIT_DATA_0) then
                    int_r6hit(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_r6hit(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_R7ACC_DATA_0) then
                    int_r7acc(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_r7acc(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_R7HIT_DATA_0) then
                    int_r7hit(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_r7hit(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_R8ACC_DATA_0) then
                    int_r8acc(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_r8acc(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_R8HIT_DATA_0) then
                    int_r8hit(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_r8hit(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc1acc <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vc1acc_ap_vld = '1') then
                    int_vc1acc <= UNSIGNED(vc1acc);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc1acc_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vc1acc_ap_vld = '1') then
                    int_vc1acc_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VC1ACC_CTRL) then
                    int_vc1acc_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc1hit <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vc1hit_ap_vld = '1') then
                    int_vc1hit <= UNSIGNED(vc1hit);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc1hit_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vc1hit_ap_vld = '1') then
                    int_vc1hit_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VC1HIT_CTRL) then
                    int_vc1hit_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc2acc <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vc2acc_ap_vld = '1') then
                    int_vc2acc <= UNSIGNED(vc2acc);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc2acc_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vc2acc_ap_vld = '1') then
                    int_vc2acc_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VC2ACC_CTRL) then
                    int_vc2acc_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc2hit <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vc2hit_ap_vld = '1') then
                    int_vc2hit <= UNSIGNED(vc2hit);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc2hit_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vc2hit_ap_vld = '1') then
                    int_vc2hit_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VC2HIT_CTRL) then
                    int_vc2hit_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc3acc <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vc3acc_ap_vld = '1') then
                    int_vc3acc <= UNSIGNED(vc3acc);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc3acc_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vc3acc_ap_vld = '1') then
                    int_vc3acc_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VC3ACC_CTRL) then
                    int_vc3acc_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc3hit <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vc3hit_ap_vld = '1') then
                    int_vc3hit <= UNSIGNED(vc3hit);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc3hit_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vc3hit_ap_vld = '1') then
                    int_vc3hit_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VC3HIT_CTRL) then
                    int_vc3hit_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc4acc <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vc4acc_ap_vld = '1') then
                    int_vc4acc <= UNSIGNED(vc4acc);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc4acc_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vc4acc_ap_vld = '1') then
                    int_vc4acc_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VC4ACC_CTRL) then
                    int_vc4acc_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc4hit <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (vc4hit_ap_vld = '1') then
                    int_vc4hit <= UNSIGNED(vc4hit);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_vc4hit_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (vc4hit_ap_vld = '1') then
                    int_vc4hit_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_VC4HIT_CTRL) then
                    int_vc4hit_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_VC5ACC_DATA_0) then
                    int_vc5acc(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_vc5acc(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_VC5HIT_DATA_0) then
                    int_vc5hit(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_vc5hit(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_VC6ACC_DATA_0) then
                    int_vc6acc(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_vc6acc(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_VC6HIT_DATA_0) then
                    int_vc6hit(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_vc6hit(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_VC7ACC_DATA_0) then
                    int_vc7acc(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_vc7acc(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_VC7HIT_DATA_0) then
                    int_vc7hit(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_vc7hit(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_VC8ACC_DATA_0) then
                    int_vc8acc(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_vc8acc(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_VC8HIT_DATA_0) then
                    int_vc8hit(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_vc8hit(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_fnum <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (fnum_ap_vld = '1') then
                    int_fnum <= UNSIGNED(fnum);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_fnum_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (fnum_ap_vld = '1') then
                    int_fnum_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_FNUM_CTRL) then
                    int_fnum_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_workload_counter1 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (workload_counter1_ap_vld = '1') then
                    int_workload_counter1 <= UNSIGNED(workload_counter1);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_workload_counter1_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (workload_counter1_ap_vld = '1') then
                    int_workload_counter1_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_WORKLOAD_COUNTER1_CTRL) then
                    int_workload_counter1_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_workload_counter2 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (workload_counter2_ap_vld = '1') then
                    int_workload_counter2 <= UNSIGNED(workload_counter2);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_workload_counter2_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (workload_counter2_ap_vld = '1') then
                    int_workload_counter2_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_WORKLOAD_COUNTER2_CTRL) then
                    int_workload_counter2_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_workload_counter3 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (workload_counter3_ap_vld = '1') then
                    int_workload_counter3 <= UNSIGNED(workload_counter3);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_workload_counter3_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (workload_counter3_ap_vld = '1') then
                    int_workload_counter3_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_WORKLOAD_COUNTER3_CTRL) then
                    int_workload_counter3_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_workload_counter4 <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (workload_counter4_ap_vld = '1') then
                    int_workload_counter4 <= UNSIGNED(workload_counter4);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_workload_counter4_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (workload_counter4_ap_vld = '1') then
                    int_workload_counter4_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_WORKLOAD_COUNTER4_CTRL) then
                    int_workload_counter4_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
