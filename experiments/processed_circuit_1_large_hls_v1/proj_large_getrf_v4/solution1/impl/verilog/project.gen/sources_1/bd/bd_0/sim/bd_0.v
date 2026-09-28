//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Mon Sep 28 06:54:35 2026
//Host        : team-fceo5ww5pmwf-main running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_rst_n,
    divisions,
    divisions_ap_vld,
    interrupt,
    m_axi_v4a0_araddr,
    m_axi_v4a0_arburst,
    m_axi_v4a0_arcache,
    m_axi_v4a0_arid,
    m_axi_v4a0_arlen,
    m_axi_v4a0_arlock,
    m_axi_v4a0_arprot,
    m_axi_v4a0_arqos,
    m_axi_v4a0_arready,
    m_axi_v4a0_arregion,
    m_axi_v4a0_arsize,
    m_axi_v4a0_arvalid,
    m_axi_v4a0_awaddr,
    m_axi_v4a0_awburst,
    m_axi_v4a0_awcache,
    m_axi_v4a0_awid,
    m_axi_v4a0_awlen,
    m_axi_v4a0_awlock,
    m_axi_v4a0_awprot,
    m_axi_v4a0_awqos,
    m_axi_v4a0_awready,
    m_axi_v4a0_awregion,
    m_axi_v4a0_awsize,
    m_axi_v4a0_awvalid,
    m_axi_v4a0_bid,
    m_axi_v4a0_bready,
    m_axi_v4a0_bresp,
    m_axi_v4a0_bvalid,
    m_axi_v4a0_rdata,
    m_axi_v4a0_rid,
    m_axi_v4a0_rlast,
    m_axi_v4a0_rready,
    m_axi_v4a0_rresp,
    m_axi_v4a0_rvalid,
    m_axi_v4a0_wdata,
    m_axi_v4a0_wid,
    m_axi_v4a0_wlast,
    m_axi_v4a0_wready,
    m_axi_v4a0_wstrb,
    m_axi_v4a0_wvalid,
    m_axi_v4a1_araddr,
    m_axi_v4a1_arburst,
    m_axi_v4a1_arcache,
    m_axi_v4a1_arid,
    m_axi_v4a1_arlen,
    m_axi_v4a1_arlock,
    m_axi_v4a1_arprot,
    m_axi_v4a1_arqos,
    m_axi_v4a1_arready,
    m_axi_v4a1_arregion,
    m_axi_v4a1_arsize,
    m_axi_v4a1_arvalid,
    m_axi_v4a1_awaddr,
    m_axi_v4a1_awburst,
    m_axi_v4a1_awcache,
    m_axi_v4a1_awid,
    m_axi_v4a1_awlen,
    m_axi_v4a1_awlock,
    m_axi_v4a1_awprot,
    m_axi_v4a1_awqos,
    m_axi_v4a1_awready,
    m_axi_v4a1_awregion,
    m_axi_v4a1_awsize,
    m_axi_v4a1_awvalid,
    m_axi_v4a1_bid,
    m_axi_v4a1_bready,
    m_axi_v4a1_bresp,
    m_axi_v4a1_bvalid,
    m_axi_v4a1_rdata,
    m_axi_v4a1_rid,
    m_axi_v4a1_rlast,
    m_axi_v4a1_rready,
    m_axi_v4a1_rresp,
    m_axi_v4a1_rvalid,
    m_axi_v4a1_wdata,
    m_axi_v4a1_wid,
    m_axi_v4a1_wlast,
    m_axi_v4a1_wready,
    m_axi_v4a1_wstrb,
    m_axi_v4a1_wvalid,
    m_axi_v4a2_araddr,
    m_axi_v4a2_arburst,
    m_axi_v4a2_arcache,
    m_axi_v4a2_arid,
    m_axi_v4a2_arlen,
    m_axi_v4a2_arlock,
    m_axi_v4a2_arprot,
    m_axi_v4a2_arqos,
    m_axi_v4a2_arready,
    m_axi_v4a2_arregion,
    m_axi_v4a2_arsize,
    m_axi_v4a2_arvalid,
    m_axi_v4a2_awaddr,
    m_axi_v4a2_awburst,
    m_axi_v4a2_awcache,
    m_axi_v4a2_awid,
    m_axi_v4a2_awlen,
    m_axi_v4a2_awlock,
    m_axi_v4a2_awprot,
    m_axi_v4a2_awqos,
    m_axi_v4a2_awready,
    m_axi_v4a2_awregion,
    m_axi_v4a2_awsize,
    m_axi_v4a2_awvalid,
    m_axi_v4a2_bid,
    m_axi_v4a2_bready,
    m_axi_v4a2_bresp,
    m_axi_v4a2_bvalid,
    m_axi_v4a2_rdata,
    m_axi_v4a2_rid,
    m_axi_v4a2_rlast,
    m_axi_v4a2_rready,
    m_axi_v4a2_rresp,
    m_axi_v4a2_rvalid,
    m_axi_v4a2_wdata,
    m_axi_v4a2_wid,
    m_axi_v4a2_wlast,
    m_axi_v4a2_wready,
    m_axi_v4a2_wstrb,
    m_axi_v4a2_wvalid,
    m_axi_v4l0_araddr,
    m_axi_v4l0_arburst,
    m_axi_v4l0_arcache,
    m_axi_v4l0_arid,
    m_axi_v4l0_arlen,
    m_axi_v4l0_arlock,
    m_axi_v4l0_arprot,
    m_axi_v4l0_arqos,
    m_axi_v4l0_arready,
    m_axi_v4l0_arregion,
    m_axi_v4l0_arsize,
    m_axi_v4l0_arvalid,
    m_axi_v4l0_awaddr,
    m_axi_v4l0_awburst,
    m_axi_v4l0_awcache,
    m_axi_v4l0_awid,
    m_axi_v4l0_awlen,
    m_axi_v4l0_awlock,
    m_axi_v4l0_awprot,
    m_axi_v4l0_awqos,
    m_axi_v4l0_awready,
    m_axi_v4l0_awregion,
    m_axi_v4l0_awsize,
    m_axi_v4l0_awvalid,
    m_axi_v4l0_bid,
    m_axi_v4l0_bready,
    m_axi_v4l0_bresp,
    m_axi_v4l0_bvalid,
    m_axi_v4l0_rdata,
    m_axi_v4l0_rid,
    m_axi_v4l0_rlast,
    m_axi_v4l0_rready,
    m_axi_v4l0_rresp,
    m_axi_v4l0_rvalid,
    m_axi_v4l0_wdata,
    m_axi_v4l0_wid,
    m_axi_v4l0_wlast,
    m_axi_v4l0_wready,
    m_axi_v4l0_wstrb,
    m_axi_v4l0_wvalid,
    m_axi_v4l1_araddr,
    m_axi_v4l1_arburst,
    m_axi_v4l1_arcache,
    m_axi_v4l1_arid,
    m_axi_v4l1_arlen,
    m_axi_v4l1_arlock,
    m_axi_v4l1_arprot,
    m_axi_v4l1_arqos,
    m_axi_v4l1_arready,
    m_axi_v4l1_arregion,
    m_axi_v4l1_arsize,
    m_axi_v4l1_arvalid,
    m_axi_v4l1_awaddr,
    m_axi_v4l1_awburst,
    m_axi_v4l1_awcache,
    m_axi_v4l1_awid,
    m_axi_v4l1_awlen,
    m_axi_v4l1_awlock,
    m_axi_v4l1_awprot,
    m_axi_v4l1_awqos,
    m_axi_v4l1_awready,
    m_axi_v4l1_awregion,
    m_axi_v4l1_awsize,
    m_axi_v4l1_awvalid,
    m_axi_v4l1_bid,
    m_axi_v4l1_bready,
    m_axi_v4l1_bresp,
    m_axi_v4l1_bvalid,
    m_axi_v4l1_rdata,
    m_axi_v4l1_rid,
    m_axi_v4l1_rlast,
    m_axi_v4l1_rready,
    m_axi_v4l1_rresp,
    m_axi_v4l1_rvalid,
    m_axi_v4l1_wdata,
    m_axi_v4l1_wid,
    m_axi_v4l1_wlast,
    m_axi_v4l1_wready,
    m_axi_v4l1_wstrb,
    m_axi_v4l1_wvalid,
    m_axi_v4l2_araddr,
    m_axi_v4l2_arburst,
    m_axi_v4l2_arcache,
    m_axi_v4l2_arid,
    m_axi_v4l2_arlen,
    m_axi_v4l2_arlock,
    m_axi_v4l2_arprot,
    m_axi_v4l2_arqos,
    m_axi_v4l2_arready,
    m_axi_v4l2_arregion,
    m_axi_v4l2_arsize,
    m_axi_v4l2_arvalid,
    m_axi_v4l2_awaddr,
    m_axi_v4l2_awburst,
    m_axi_v4l2_awcache,
    m_axi_v4l2_awid,
    m_axi_v4l2_awlen,
    m_axi_v4l2_awlock,
    m_axi_v4l2_awprot,
    m_axi_v4l2_awqos,
    m_axi_v4l2_awready,
    m_axi_v4l2_awregion,
    m_axi_v4l2_awsize,
    m_axi_v4l2_awvalid,
    m_axi_v4l2_bid,
    m_axi_v4l2_bready,
    m_axi_v4l2_bresp,
    m_axi_v4l2_bvalid,
    m_axi_v4l2_rdata,
    m_axi_v4l2_rid,
    m_axi_v4l2_rlast,
    m_axi_v4l2_rready,
    m_axi_v4l2_rresp,
    m_axi_v4l2_rvalid,
    m_axi_v4l2_wdata,
    m_axi_v4l2_wid,
    m_axi_v4l2_wlast,
    m_axi_v4l2_wready,
    m_axi_v4l2_wstrb,
    m_axi_v4l2_wvalid,
    m_axi_v4u0_araddr,
    m_axi_v4u0_arburst,
    m_axi_v4u0_arcache,
    m_axi_v4u0_arid,
    m_axi_v4u0_arlen,
    m_axi_v4u0_arlock,
    m_axi_v4u0_arprot,
    m_axi_v4u0_arqos,
    m_axi_v4u0_arready,
    m_axi_v4u0_arregion,
    m_axi_v4u0_arsize,
    m_axi_v4u0_arvalid,
    m_axi_v4u0_awaddr,
    m_axi_v4u0_awburst,
    m_axi_v4u0_awcache,
    m_axi_v4u0_awid,
    m_axi_v4u0_awlen,
    m_axi_v4u0_awlock,
    m_axi_v4u0_awprot,
    m_axi_v4u0_awqos,
    m_axi_v4u0_awready,
    m_axi_v4u0_awregion,
    m_axi_v4u0_awsize,
    m_axi_v4u0_awvalid,
    m_axi_v4u0_bid,
    m_axi_v4u0_bready,
    m_axi_v4u0_bresp,
    m_axi_v4u0_bvalid,
    m_axi_v4u0_rdata,
    m_axi_v4u0_rid,
    m_axi_v4u0_rlast,
    m_axi_v4u0_rready,
    m_axi_v4u0_rresp,
    m_axi_v4u0_rvalid,
    m_axi_v4u0_wdata,
    m_axi_v4u0_wid,
    m_axi_v4u0_wlast,
    m_axi_v4u0_wready,
    m_axi_v4u0_wstrb,
    m_axi_v4u0_wvalid,
    m_axi_v4u1_araddr,
    m_axi_v4u1_arburst,
    m_axi_v4u1_arcache,
    m_axi_v4u1_arid,
    m_axi_v4u1_arlen,
    m_axi_v4u1_arlock,
    m_axi_v4u1_arprot,
    m_axi_v4u1_arqos,
    m_axi_v4u1_arready,
    m_axi_v4u1_arregion,
    m_axi_v4u1_arsize,
    m_axi_v4u1_arvalid,
    m_axi_v4u1_awaddr,
    m_axi_v4u1_awburst,
    m_axi_v4u1_awcache,
    m_axi_v4u1_awid,
    m_axi_v4u1_awlen,
    m_axi_v4u1_awlock,
    m_axi_v4u1_awprot,
    m_axi_v4u1_awqos,
    m_axi_v4u1_awready,
    m_axi_v4u1_awregion,
    m_axi_v4u1_awsize,
    m_axi_v4u1_awvalid,
    m_axi_v4u1_bid,
    m_axi_v4u1_bready,
    m_axi_v4u1_bresp,
    m_axi_v4u1_bvalid,
    m_axi_v4u1_rdata,
    m_axi_v4u1_rid,
    m_axi_v4u1_rlast,
    m_axi_v4u1_rready,
    m_axi_v4u1_rresp,
    m_axi_v4u1_rvalid,
    m_axi_v4u1_wdata,
    m_axi_v4u1_wid,
    m_axi_v4u1_wlast,
    m_axi_v4u1_wready,
    m_axi_v4u1_wstrb,
    m_axi_v4u1_wvalid,
    m_axi_v4u2_araddr,
    m_axi_v4u2_arburst,
    m_axi_v4u2_arcache,
    m_axi_v4u2_arid,
    m_axi_v4u2_arlen,
    m_axi_v4u2_arlock,
    m_axi_v4u2_arprot,
    m_axi_v4u2_arqos,
    m_axi_v4u2_arready,
    m_axi_v4u2_arregion,
    m_axi_v4u2_arsize,
    m_axi_v4u2_arvalid,
    m_axi_v4u2_awaddr,
    m_axi_v4u2_awburst,
    m_axi_v4u2_awcache,
    m_axi_v4u2_awid,
    m_axi_v4u2_awlen,
    m_axi_v4u2_awlock,
    m_axi_v4u2_awprot,
    m_axi_v4u2_awqos,
    m_axi_v4u2_awready,
    m_axi_v4u2_awregion,
    m_axi_v4u2_awsize,
    m_axi_v4u2_awvalid,
    m_axi_v4u2_bid,
    m_axi_v4u2_bready,
    m_axi_v4u2_bresp,
    m_axi_v4u2_bvalid,
    m_axi_v4u2_rdata,
    m_axi_v4u2_rid,
    m_axi_v4u2_rlast,
    m_axi_v4u2_rready,
    m_axi_v4u2_rresp,
    m_axi_v4u2_rvalid,
    m_axi_v4u2_wdata,
    m_axi_v4u2_wid,
    m_axi_v4u2_wlast,
    m_axi_v4u2_wready,
    m_axi_v4u2_wstrb,
    m_axi_v4u2_wvalid,
    m_axi_v4u3_araddr,
    m_axi_v4u3_arburst,
    m_axi_v4u3_arcache,
    m_axi_v4u3_arid,
    m_axi_v4u3_arlen,
    m_axi_v4u3_arlock,
    m_axi_v4u3_arprot,
    m_axi_v4u3_arqos,
    m_axi_v4u3_arready,
    m_axi_v4u3_arregion,
    m_axi_v4u3_arsize,
    m_axi_v4u3_arvalid,
    m_axi_v4u3_awaddr,
    m_axi_v4u3_awburst,
    m_axi_v4u3_awcache,
    m_axi_v4u3_awid,
    m_axi_v4u3_awlen,
    m_axi_v4u3_awlock,
    m_axi_v4u3_awprot,
    m_axi_v4u3_awqos,
    m_axi_v4u3_awready,
    m_axi_v4u3_awregion,
    m_axi_v4u3_awsize,
    m_axi_v4u3_awvalid,
    m_axi_v4u3_bid,
    m_axi_v4u3_bready,
    m_axi_v4u3_bresp,
    m_axi_v4u3_bvalid,
    m_axi_v4u3_rdata,
    m_axi_v4u3_rid,
    m_axi_v4u3_rlast,
    m_axi_v4u3_rready,
    m_axi_v4u3_rresp,
    m_axi_v4u3_rvalid,
    m_axi_v4u3_wdata,
    m_axi_v4u3_wid,
    m_axi_v4u3_wlast,
    m_axi_v4u3_wready,
    m_axi_v4u3_wstrb,
    m_axi_v4u3_wvalid,
    muladds,
    muladds_ap_vld,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid,
    status,
    status_ap_vld);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF m_axi_v4a0:m_axi_v4a1:m_axi_v4a2:m_axi_v4l0:m_axi_v4l1:m_axi_v4l2:m_axi_v4u0:m_axi_v4u1:m_axi_v4u2:m_axi_v4u3:s_axi_control, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DIVISIONS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DIVISIONS, LAYERED_METADATA undef" *) output [63:0]divisions;
  output divisions_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4a0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_v4a0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [1:0]m_axi_v4a0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [3:0]m_axi_v4a0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [0:0]m_axi_v4a0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [7:0]m_axi_v4a0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [1:0]m_axi_v4a0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [2:0]m_axi_v4a0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [3:0]m_axi_v4a0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) input m_axi_v4a0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [3:0]m_axi_v4a0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [2:0]m_axi_v4a0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output m_axi_v4a0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [63:0]m_axi_v4a0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [1:0]m_axi_v4a0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [3:0]m_axi_v4a0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [0:0]m_axi_v4a0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [7:0]m_axi_v4a0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [1:0]m_axi_v4a0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [2:0]m_axi_v4a0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [3:0]m_axi_v4a0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) input m_axi_v4a0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [3:0]m_axi_v4a0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [2:0]m_axi_v4a0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output m_axi_v4a0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) input [0:0]m_axi_v4a0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output m_axi_v4a0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) input [1:0]m_axi_v4a0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) input m_axi_v4a0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) input [31:0]m_axi_v4a0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) input [0:0]m_axi_v4a0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) input m_axi_v4a0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output m_axi_v4a0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) input [1:0]m_axi_v4a0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) input m_axi_v4a0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [31:0]m_axi_v4a0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [0:0]m_axi_v4a0_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output m_axi_v4a0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) input m_axi_v4a0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output [3:0]m_axi_v4a0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 " *) output m_axi_v4a0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4a1, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_v4a1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [1:0]m_axi_v4a1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [3:0]m_axi_v4a1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [0:0]m_axi_v4a1_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [7:0]m_axi_v4a1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [1:0]m_axi_v4a1_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [2:0]m_axi_v4a1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [3:0]m_axi_v4a1_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) input m_axi_v4a1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [3:0]m_axi_v4a1_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [2:0]m_axi_v4a1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output m_axi_v4a1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [63:0]m_axi_v4a1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [1:0]m_axi_v4a1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [3:0]m_axi_v4a1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [0:0]m_axi_v4a1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [7:0]m_axi_v4a1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [1:0]m_axi_v4a1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [2:0]m_axi_v4a1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [3:0]m_axi_v4a1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) input m_axi_v4a1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [3:0]m_axi_v4a1_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [2:0]m_axi_v4a1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output m_axi_v4a1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) input [0:0]m_axi_v4a1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output m_axi_v4a1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) input [1:0]m_axi_v4a1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) input m_axi_v4a1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) input [31:0]m_axi_v4a1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) input [0:0]m_axi_v4a1_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) input m_axi_v4a1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output m_axi_v4a1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) input [1:0]m_axi_v4a1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) input m_axi_v4a1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [31:0]m_axi_v4a1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [0:0]m_axi_v4a1_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output m_axi_v4a1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) input m_axi_v4a1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output [3:0]m_axi_v4a1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 " *) output m_axi_v4a1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4a2, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_v4a2_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [1:0]m_axi_v4a2_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [3:0]m_axi_v4a2_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [0:0]m_axi_v4a2_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [7:0]m_axi_v4a2_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [1:0]m_axi_v4a2_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [2:0]m_axi_v4a2_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [3:0]m_axi_v4a2_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) input m_axi_v4a2_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [3:0]m_axi_v4a2_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [2:0]m_axi_v4a2_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output m_axi_v4a2_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [63:0]m_axi_v4a2_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [1:0]m_axi_v4a2_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [3:0]m_axi_v4a2_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [0:0]m_axi_v4a2_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [7:0]m_axi_v4a2_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [1:0]m_axi_v4a2_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [2:0]m_axi_v4a2_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [3:0]m_axi_v4a2_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) input m_axi_v4a2_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [3:0]m_axi_v4a2_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [2:0]m_axi_v4a2_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output m_axi_v4a2_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) input [0:0]m_axi_v4a2_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output m_axi_v4a2_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) input [1:0]m_axi_v4a2_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) input m_axi_v4a2_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) input [31:0]m_axi_v4a2_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) input [0:0]m_axi_v4a2_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) input m_axi_v4a2_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output m_axi_v4a2_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) input [1:0]m_axi_v4a2_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) input m_axi_v4a2_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [31:0]m_axi_v4a2_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [0:0]m_axi_v4a2_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output m_axi_v4a2_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) input m_axi_v4a2_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output [3:0]m_axi_v4a2_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 " *) output m_axi_v4a2_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4l0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_v4l0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [1:0]m_axi_v4l0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [3:0]m_axi_v4l0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [0:0]m_axi_v4l0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [7:0]m_axi_v4l0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [1:0]m_axi_v4l0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [2:0]m_axi_v4l0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [3:0]m_axi_v4l0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) input m_axi_v4l0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [3:0]m_axi_v4l0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [2:0]m_axi_v4l0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output m_axi_v4l0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [63:0]m_axi_v4l0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [1:0]m_axi_v4l0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [3:0]m_axi_v4l0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [0:0]m_axi_v4l0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [7:0]m_axi_v4l0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [1:0]m_axi_v4l0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [2:0]m_axi_v4l0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [3:0]m_axi_v4l0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) input m_axi_v4l0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [3:0]m_axi_v4l0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [2:0]m_axi_v4l0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output m_axi_v4l0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) input [0:0]m_axi_v4l0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output m_axi_v4l0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) input [1:0]m_axi_v4l0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) input m_axi_v4l0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) input [31:0]m_axi_v4l0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) input [0:0]m_axi_v4l0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) input m_axi_v4l0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output m_axi_v4l0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) input [1:0]m_axi_v4l0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) input m_axi_v4l0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [31:0]m_axi_v4l0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [0:0]m_axi_v4l0_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output m_axi_v4l0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) input m_axi_v4l0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output [3:0]m_axi_v4l0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 " *) output m_axi_v4l0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4l1, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_v4l1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [1:0]m_axi_v4l1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [3:0]m_axi_v4l1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [0:0]m_axi_v4l1_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [7:0]m_axi_v4l1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [1:0]m_axi_v4l1_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [2:0]m_axi_v4l1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [3:0]m_axi_v4l1_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) input m_axi_v4l1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [3:0]m_axi_v4l1_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [2:0]m_axi_v4l1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output m_axi_v4l1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [63:0]m_axi_v4l1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [1:0]m_axi_v4l1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [3:0]m_axi_v4l1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [0:0]m_axi_v4l1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [7:0]m_axi_v4l1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [1:0]m_axi_v4l1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [2:0]m_axi_v4l1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [3:0]m_axi_v4l1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) input m_axi_v4l1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [3:0]m_axi_v4l1_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [2:0]m_axi_v4l1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output m_axi_v4l1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) input [0:0]m_axi_v4l1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output m_axi_v4l1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) input [1:0]m_axi_v4l1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) input m_axi_v4l1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) input [31:0]m_axi_v4l1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) input [0:0]m_axi_v4l1_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) input m_axi_v4l1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output m_axi_v4l1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) input [1:0]m_axi_v4l1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) input m_axi_v4l1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [31:0]m_axi_v4l1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [0:0]m_axi_v4l1_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output m_axi_v4l1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) input m_axi_v4l1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output [3:0]m_axi_v4l1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 " *) output m_axi_v4l1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4l2, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_v4l2_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [1:0]m_axi_v4l2_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [3:0]m_axi_v4l2_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [0:0]m_axi_v4l2_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [7:0]m_axi_v4l2_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [1:0]m_axi_v4l2_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [2:0]m_axi_v4l2_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [3:0]m_axi_v4l2_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) input m_axi_v4l2_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [3:0]m_axi_v4l2_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [2:0]m_axi_v4l2_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output m_axi_v4l2_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [63:0]m_axi_v4l2_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [1:0]m_axi_v4l2_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [3:0]m_axi_v4l2_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [0:0]m_axi_v4l2_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [7:0]m_axi_v4l2_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [1:0]m_axi_v4l2_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [2:0]m_axi_v4l2_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [3:0]m_axi_v4l2_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) input m_axi_v4l2_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [3:0]m_axi_v4l2_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [2:0]m_axi_v4l2_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output m_axi_v4l2_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) input [0:0]m_axi_v4l2_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output m_axi_v4l2_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) input [1:0]m_axi_v4l2_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) input m_axi_v4l2_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) input [31:0]m_axi_v4l2_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) input [0:0]m_axi_v4l2_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) input m_axi_v4l2_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output m_axi_v4l2_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) input [1:0]m_axi_v4l2_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) input m_axi_v4l2_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [31:0]m_axi_v4l2_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [0:0]m_axi_v4l2_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output m_axi_v4l2_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) input m_axi_v4l2_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output [3:0]m_axi_v4l2_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 " *) output m_axi_v4l2_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4u0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_v4u0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [1:0]m_axi_v4u0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [3:0]m_axi_v4u0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [0:0]m_axi_v4u0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [7:0]m_axi_v4u0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [1:0]m_axi_v4u0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [2:0]m_axi_v4u0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [3:0]m_axi_v4u0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) input m_axi_v4u0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [3:0]m_axi_v4u0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [2:0]m_axi_v4u0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output m_axi_v4u0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [63:0]m_axi_v4u0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [1:0]m_axi_v4u0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [3:0]m_axi_v4u0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [0:0]m_axi_v4u0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [7:0]m_axi_v4u0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [1:0]m_axi_v4u0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [2:0]m_axi_v4u0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [3:0]m_axi_v4u0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) input m_axi_v4u0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [3:0]m_axi_v4u0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [2:0]m_axi_v4u0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output m_axi_v4u0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) input [0:0]m_axi_v4u0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output m_axi_v4u0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) input [1:0]m_axi_v4u0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) input m_axi_v4u0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) input [31:0]m_axi_v4u0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) input [0:0]m_axi_v4u0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) input m_axi_v4u0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output m_axi_v4u0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) input [1:0]m_axi_v4u0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) input m_axi_v4u0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [31:0]m_axi_v4u0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [0:0]m_axi_v4u0_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output m_axi_v4u0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) input m_axi_v4u0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output [3:0]m_axi_v4u0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 " *) output m_axi_v4u0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4u1, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_v4u1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [1:0]m_axi_v4u1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [3:0]m_axi_v4u1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [0:0]m_axi_v4u1_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [7:0]m_axi_v4u1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [1:0]m_axi_v4u1_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [2:0]m_axi_v4u1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [3:0]m_axi_v4u1_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) input m_axi_v4u1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [3:0]m_axi_v4u1_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [2:0]m_axi_v4u1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output m_axi_v4u1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [63:0]m_axi_v4u1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [1:0]m_axi_v4u1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [3:0]m_axi_v4u1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [0:0]m_axi_v4u1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [7:0]m_axi_v4u1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [1:0]m_axi_v4u1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [2:0]m_axi_v4u1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [3:0]m_axi_v4u1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) input m_axi_v4u1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [3:0]m_axi_v4u1_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [2:0]m_axi_v4u1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output m_axi_v4u1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) input [0:0]m_axi_v4u1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output m_axi_v4u1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) input [1:0]m_axi_v4u1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) input m_axi_v4u1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) input [31:0]m_axi_v4u1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) input [0:0]m_axi_v4u1_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) input m_axi_v4u1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output m_axi_v4u1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) input [1:0]m_axi_v4u1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) input m_axi_v4u1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [31:0]m_axi_v4u1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [0:0]m_axi_v4u1_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output m_axi_v4u1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) input m_axi_v4u1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output [3:0]m_axi_v4u1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 " *) output m_axi_v4u1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4u2, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_v4u2_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [1:0]m_axi_v4u2_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [3:0]m_axi_v4u2_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [0:0]m_axi_v4u2_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [7:0]m_axi_v4u2_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [1:0]m_axi_v4u2_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [2:0]m_axi_v4u2_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [3:0]m_axi_v4u2_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) input m_axi_v4u2_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [3:0]m_axi_v4u2_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [2:0]m_axi_v4u2_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output m_axi_v4u2_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [63:0]m_axi_v4u2_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [1:0]m_axi_v4u2_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [3:0]m_axi_v4u2_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [0:0]m_axi_v4u2_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [7:0]m_axi_v4u2_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [1:0]m_axi_v4u2_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [2:0]m_axi_v4u2_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [3:0]m_axi_v4u2_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) input m_axi_v4u2_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [3:0]m_axi_v4u2_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [2:0]m_axi_v4u2_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output m_axi_v4u2_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) input [0:0]m_axi_v4u2_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output m_axi_v4u2_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) input [1:0]m_axi_v4u2_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) input m_axi_v4u2_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) input [31:0]m_axi_v4u2_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) input [0:0]m_axi_v4u2_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) input m_axi_v4u2_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output m_axi_v4u2_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) input [1:0]m_axi_v4u2_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) input m_axi_v4u2_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [31:0]m_axi_v4u2_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [0:0]m_axi_v4u2_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output m_axi_v4u2_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) input m_axi_v4u2_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output [3:0]m_axi_v4u2_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 " *) output m_axi_v4u2_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4u3, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_v4u3_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [1:0]m_axi_v4u3_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [3:0]m_axi_v4u3_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [0:0]m_axi_v4u3_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [7:0]m_axi_v4u3_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [1:0]m_axi_v4u3_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [2:0]m_axi_v4u3_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [3:0]m_axi_v4u3_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) input m_axi_v4u3_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [3:0]m_axi_v4u3_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [2:0]m_axi_v4u3_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output m_axi_v4u3_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [63:0]m_axi_v4u3_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [1:0]m_axi_v4u3_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [3:0]m_axi_v4u3_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [0:0]m_axi_v4u3_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [7:0]m_axi_v4u3_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [1:0]m_axi_v4u3_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [2:0]m_axi_v4u3_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [3:0]m_axi_v4u3_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) input m_axi_v4u3_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [3:0]m_axi_v4u3_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [2:0]m_axi_v4u3_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output m_axi_v4u3_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) input [0:0]m_axi_v4u3_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output m_axi_v4u3_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) input [1:0]m_axi_v4u3_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) input m_axi_v4u3_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) input [31:0]m_axi_v4u3_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) input [0:0]m_axi_v4u3_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) input m_axi_v4u3_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output m_axi_v4u3_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) input [1:0]m_axi_v4u3_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) input m_axi_v4u3_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [31:0]m_axi_v4u3_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [0:0]m_axi_v4u3_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output m_axi_v4u3_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) input m_axi_v4u3_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output [3:0]m_axi_v4u3_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 " *) output m_axi_v4u3_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MULADDS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MULADDS, LAYERED_METADATA undef" *) output [63:0]muladds;
  output muladds_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [7:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [7:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.STATUS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.STATUS, LAYERED_METADATA undef" *) output [31:0]status;
  output status_ap_vld;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [63:0]hls_inst_divisions;
  wire hls_inst_divisions_ap_vld;
  wire hls_inst_interrupt;
  wire [63:0]hls_inst_m_axi_v4a0_ARADDR;
  wire [1:0]hls_inst_m_axi_v4a0_ARBURST;
  wire [3:0]hls_inst_m_axi_v4a0_ARCACHE;
  wire [0:0]hls_inst_m_axi_v4a0_ARID;
  wire [7:0]hls_inst_m_axi_v4a0_ARLEN;
  wire [1:0]hls_inst_m_axi_v4a0_ARLOCK;
  wire [2:0]hls_inst_m_axi_v4a0_ARPROT;
  wire [3:0]hls_inst_m_axi_v4a0_ARQOS;
  wire hls_inst_m_axi_v4a0_ARREADY;
  wire [3:0]hls_inst_m_axi_v4a0_ARREGION;
  wire [2:0]hls_inst_m_axi_v4a0_ARSIZE;
  wire hls_inst_m_axi_v4a0_ARVALID;
  wire [63:0]hls_inst_m_axi_v4a0_AWADDR;
  wire [1:0]hls_inst_m_axi_v4a0_AWBURST;
  wire [3:0]hls_inst_m_axi_v4a0_AWCACHE;
  wire [0:0]hls_inst_m_axi_v4a0_AWID;
  wire [7:0]hls_inst_m_axi_v4a0_AWLEN;
  wire [1:0]hls_inst_m_axi_v4a0_AWLOCK;
  wire [2:0]hls_inst_m_axi_v4a0_AWPROT;
  wire [3:0]hls_inst_m_axi_v4a0_AWQOS;
  wire hls_inst_m_axi_v4a0_AWREADY;
  wire [3:0]hls_inst_m_axi_v4a0_AWREGION;
  wire [2:0]hls_inst_m_axi_v4a0_AWSIZE;
  wire hls_inst_m_axi_v4a0_AWVALID;
  wire [0:0]hls_inst_m_axi_v4a0_BID;
  wire hls_inst_m_axi_v4a0_BREADY;
  wire [1:0]hls_inst_m_axi_v4a0_BRESP;
  wire hls_inst_m_axi_v4a0_BVALID;
  wire [31:0]hls_inst_m_axi_v4a0_RDATA;
  wire [0:0]hls_inst_m_axi_v4a0_RID;
  wire hls_inst_m_axi_v4a0_RLAST;
  wire hls_inst_m_axi_v4a0_RREADY;
  wire [1:0]hls_inst_m_axi_v4a0_RRESP;
  wire hls_inst_m_axi_v4a0_RVALID;
  wire [31:0]hls_inst_m_axi_v4a0_WDATA;
  wire [0:0]hls_inst_m_axi_v4a0_WID;
  wire hls_inst_m_axi_v4a0_WLAST;
  wire hls_inst_m_axi_v4a0_WREADY;
  wire [3:0]hls_inst_m_axi_v4a0_WSTRB;
  wire hls_inst_m_axi_v4a0_WVALID;
  wire [63:0]hls_inst_m_axi_v4a1_ARADDR;
  wire [1:0]hls_inst_m_axi_v4a1_ARBURST;
  wire [3:0]hls_inst_m_axi_v4a1_ARCACHE;
  wire [0:0]hls_inst_m_axi_v4a1_ARID;
  wire [7:0]hls_inst_m_axi_v4a1_ARLEN;
  wire [1:0]hls_inst_m_axi_v4a1_ARLOCK;
  wire [2:0]hls_inst_m_axi_v4a1_ARPROT;
  wire [3:0]hls_inst_m_axi_v4a1_ARQOS;
  wire hls_inst_m_axi_v4a1_ARREADY;
  wire [3:0]hls_inst_m_axi_v4a1_ARREGION;
  wire [2:0]hls_inst_m_axi_v4a1_ARSIZE;
  wire hls_inst_m_axi_v4a1_ARVALID;
  wire [63:0]hls_inst_m_axi_v4a1_AWADDR;
  wire [1:0]hls_inst_m_axi_v4a1_AWBURST;
  wire [3:0]hls_inst_m_axi_v4a1_AWCACHE;
  wire [0:0]hls_inst_m_axi_v4a1_AWID;
  wire [7:0]hls_inst_m_axi_v4a1_AWLEN;
  wire [1:0]hls_inst_m_axi_v4a1_AWLOCK;
  wire [2:0]hls_inst_m_axi_v4a1_AWPROT;
  wire [3:0]hls_inst_m_axi_v4a1_AWQOS;
  wire hls_inst_m_axi_v4a1_AWREADY;
  wire [3:0]hls_inst_m_axi_v4a1_AWREGION;
  wire [2:0]hls_inst_m_axi_v4a1_AWSIZE;
  wire hls_inst_m_axi_v4a1_AWVALID;
  wire [0:0]hls_inst_m_axi_v4a1_BID;
  wire hls_inst_m_axi_v4a1_BREADY;
  wire [1:0]hls_inst_m_axi_v4a1_BRESP;
  wire hls_inst_m_axi_v4a1_BVALID;
  wire [31:0]hls_inst_m_axi_v4a1_RDATA;
  wire [0:0]hls_inst_m_axi_v4a1_RID;
  wire hls_inst_m_axi_v4a1_RLAST;
  wire hls_inst_m_axi_v4a1_RREADY;
  wire [1:0]hls_inst_m_axi_v4a1_RRESP;
  wire hls_inst_m_axi_v4a1_RVALID;
  wire [31:0]hls_inst_m_axi_v4a1_WDATA;
  wire [0:0]hls_inst_m_axi_v4a1_WID;
  wire hls_inst_m_axi_v4a1_WLAST;
  wire hls_inst_m_axi_v4a1_WREADY;
  wire [3:0]hls_inst_m_axi_v4a1_WSTRB;
  wire hls_inst_m_axi_v4a1_WVALID;
  wire [63:0]hls_inst_m_axi_v4a2_ARADDR;
  wire [1:0]hls_inst_m_axi_v4a2_ARBURST;
  wire [3:0]hls_inst_m_axi_v4a2_ARCACHE;
  wire [0:0]hls_inst_m_axi_v4a2_ARID;
  wire [7:0]hls_inst_m_axi_v4a2_ARLEN;
  wire [1:0]hls_inst_m_axi_v4a2_ARLOCK;
  wire [2:0]hls_inst_m_axi_v4a2_ARPROT;
  wire [3:0]hls_inst_m_axi_v4a2_ARQOS;
  wire hls_inst_m_axi_v4a2_ARREADY;
  wire [3:0]hls_inst_m_axi_v4a2_ARREGION;
  wire [2:0]hls_inst_m_axi_v4a2_ARSIZE;
  wire hls_inst_m_axi_v4a2_ARVALID;
  wire [63:0]hls_inst_m_axi_v4a2_AWADDR;
  wire [1:0]hls_inst_m_axi_v4a2_AWBURST;
  wire [3:0]hls_inst_m_axi_v4a2_AWCACHE;
  wire [0:0]hls_inst_m_axi_v4a2_AWID;
  wire [7:0]hls_inst_m_axi_v4a2_AWLEN;
  wire [1:0]hls_inst_m_axi_v4a2_AWLOCK;
  wire [2:0]hls_inst_m_axi_v4a2_AWPROT;
  wire [3:0]hls_inst_m_axi_v4a2_AWQOS;
  wire hls_inst_m_axi_v4a2_AWREADY;
  wire [3:0]hls_inst_m_axi_v4a2_AWREGION;
  wire [2:0]hls_inst_m_axi_v4a2_AWSIZE;
  wire hls_inst_m_axi_v4a2_AWVALID;
  wire [0:0]hls_inst_m_axi_v4a2_BID;
  wire hls_inst_m_axi_v4a2_BREADY;
  wire [1:0]hls_inst_m_axi_v4a2_BRESP;
  wire hls_inst_m_axi_v4a2_BVALID;
  wire [31:0]hls_inst_m_axi_v4a2_RDATA;
  wire [0:0]hls_inst_m_axi_v4a2_RID;
  wire hls_inst_m_axi_v4a2_RLAST;
  wire hls_inst_m_axi_v4a2_RREADY;
  wire [1:0]hls_inst_m_axi_v4a2_RRESP;
  wire hls_inst_m_axi_v4a2_RVALID;
  wire [31:0]hls_inst_m_axi_v4a2_WDATA;
  wire [0:0]hls_inst_m_axi_v4a2_WID;
  wire hls_inst_m_axi_v4a2_WLAST;
  wire hls_inst_m_axi_v4a2_WREADY;
  wire [3:0]hls_inst_m_axi_v4a2_WSTRB;
  wire hls_inst_m_axi_v4a2_WVALID;
  wire [63:0]hls_inst_m_axi_v4l0_ARADDR;
  wire [1:0]hls_inst_m_axi_v4l0_ARBURST;
  wire [3:0]hls_inst_m_axi_v4l0_ARCACHE;
  wire [0:0]hls_inst_m_axi_v4l0_ARID;
  wire [7:0]hls_inst_m_axi_v4l0_ARLEN;
  wire [1:0]hls_inst_m_axi_v4l0_ARLOCK;
  wire [2:0]hls_inst_m_axi_v4l0_ARPROT;
  wire [3:0]hls_inst_m_axi_v4l0_ARQOS;
  wire hls_inst_m_axi_v4l0_ARREADY;
  wire [3:0]hls_inst_m_axi_v4l0_ARREGION;
  wire [2:0]hls_inst_m_axi_v4l0_ARSIZE;
  wire hls_inst_m_axi_v4l0_ARVALID;
  wire [63:0]hls_inst_m_axi_v4l0_AWADDR;
  wire [1:0]hls_inst_m_axi_v4l0_AWBURST;
  wire [3:0]hls_inst_m_axi_v4l0_AWCACHE;
  wire [0:0]hls_inst_m_axi_v4l0_AWID;
  wire [7:0]hls_inst_m_axi_v4l0_AWLEN;
  wire [1:0]hls_inst_m_axi_v4l0_AWLOCK;
  wire [2:0]hls_inst_m_axi_v4l0_AWPROT;
  wire [3:0]hls_inst_m_axi_v4l0_AWQOS;
  wire hls_inst_m_axi_v4l0_AWREADY;
  wire [3:0]hls_inst_m_axi_v4l0_AWREGION;
  wire [2:0]hls_inst_m_axi_v4l0_AWSIZE;
  wire hls_inst_m_axi_v4l0_AWVALID;
  wire [0:0]hls_inst_m_axi_v4l0_BID;
  wire hls_inst_m_axi_v4l0_BREADY;
  wire [1:0]hls_inst_m_axi_v4l0_BRESP;
  wire hls_inst_m_axi_v4l0_BVALID;
  wire [31:0]hls_inst_m_axi_v4l0_RDATA;
  wire [0:0]hls_inst_m_axi_v4l0_RID;
  wire hls_inst_m_axi_v4l0_RLAST;
  wire hls_inst_m_axi_v4l0_RREADY;
  wire [1:0]hls_inst_m_axi_v4l0_RRESP;
  wire hls_inst_m_axi_v4l0_RVALID;
  wire [31:0]hls_inst_m_axi_v4l0_WDATA;
  wire [0:0]hls_inst_m_axi_v4l0_WID;
  wire hls_inst_m_axi_v4l0_WLAST;
  wire hls_inst_m_axi_v4l0_WREADY;
  wire [3:0]hls_inst_m_axi_v4l0_WSTRB;
  wire hls_inst_m_axi_v4l0_WVALID;
  wire [63:0]hls_inst_m_axi_v4l1_ARADDR;
  wire [1:0]hls_inst_m_axi_v4l1_ARBURST;
  wire [3:0]hls_inst_m_axi_v4l1_ARCACHE;
  wire [0:0]hls_inst_m_axi_v4l1_ARID;
  wire [7:0]hls_inst_m_axi_v4l1_ARLEN;
  wire [1:0]hls_inst_m_axi_v4l1_ARLOCK;
  wire [2:0]hls_inst_m_axi_v4l1_ARPROT;
  wire [3:0]hls_inst_m_axi_v4l1_ARQOS;
  wire hls_inst_m_axi_v4l1_ARREADY;
  wire [3:0]hls_inst_m_axi_v4l1_ARREGION;
  wire [2:0]hls_inst_m_axi_v4l1_ARSIZE;
  wire hls_inst_m_axi_v4l1_ARVALID;
  wire [63:0]hls_inst_m_axi_v4l1_AWADDR;
  wire [1:0]hls_inst_m_axi_v4l1_AWBURST;
  wire [3:0]hls_inst_m_axi_v4l1_AWCACHE;
  wire [0:0]hls_inst_m_axi_v4l1_AWID;
  wire [7:0]hls_inst_m_axi_v4l1_AWLEN;
  wire [1:0]hls_inst_m_axi_v4l1_AWLOCK;
  wire [2:0]hls_inst_m_axi_v4l1_AWPROT;
  wire [3:0]hls_inst_m_axi_v4l1_AWQOS;
  wire hls_inst_m_axi_v4l1_AWREADY;
  wire [3:0]hls_inst_m_axi_v4l1_AWREGION;
  wire [2:0]hls_inst_m_axi_v4l1_AWSIZE;
  wire hls_inst_m_axi_v4l1_AWVALID;
  wire [0:0]hls_inst_m_axi_v4l1_BID;
  wire hls_inst_m_axi_v4l1_BREADY;
  wire [1:0]hls_inst_m_axi_v4l1_BRESP;
  wire hls_inst_m_axi_v4l1_BVALID;
  wire [31:0]hls_inst_m_axi_v4l1_RDATA;
  wire [0:0]hls_inst_m_axi_v4l1_RID;
  wire hls_inst_m_axi_v4l1_RLAST;
  wire hls_inst_m_axi_v4l1_RREADY;
  wire [1:0]hls_inst_m_axi_v4l1_RRESP;
  wire hls_inst_m_axi_v4l1_RVALID;
  wire [31:0]hls_inst_m_axi_v4l1_WDATA;
  wire [0:0]hls_inst_m_axi_v4l1_WID;
  wire hls_inst_m_axi_v4l1_WLAST;
  wire hls_inst_m_axi_v4l1_WREADY;
  wire [3:0]hls_inst_m_axi_v4l1_WSTRB;
  wire hls_inst_m_axi_v4l1_WVALID;
  wire [63:0]hls_inst_m_axi_v4l2_ARADDR;
  wire [1:0]hls_inst_m_axi_v4l2_ARBURST;
  wire [3:0]hls_inst_m_axi_v4l2_ARCACHE;
  wire [0:0]hls_inst_m_axi_v4l2_ARID;
  wire [7:0]hls_inst_m_axi_v4l2_ARLEN;
  wire [1:0]hls_inst_m_axi_v4l2_ARLOCK;
  wire [2:0]hls_inst_m_axi_v4l2_ARPROT;
  wire [3:0]hls_inst_m_axi_v4l2_ARQOS;
  wire hls_inst_m_axi_v4l2_ARREADY;
  wire [3:0]hls_inst_m_axi_v4l2_ARREGION;
  wire [2:0]hls_inst_m_axi_v4l2_ARSIZE;
  wire hls_inst_m_axi_v4l2_ARVALID;
  wire [63:0]hls_inst_m_axi_v4l2_AWADDR;
  wire [1:0]hls_inst_m_axi_v4l2_AWBURST;
  wire [3:0]hls_inst_m_axi_v4l2_AWCACHE;
  wire [0:0]hls_inst_m_axi_v4l2_AWID;
  wire [7:0]hls_inst_m_axi_v4l2_AWLEN;
  wire [1:0]hls_inst_m_axi_v4l2_AWLOCK;
  wire [2:0]hls_inst_m_axi_v4l2_AWPROT;
  wire [3:0]hls_inst_m_axi_v4l2_AWQOS;
  wire hls_inst_m_axi_v4l2_AWREADY;
  wire [3:0]hls_inst_m_axi_v4l2_AWREGION;
  wire [2:0]hls_inst_m_axi_v4l2_AWSIZE;
  wire hls_inst_m_axi_v4l2_AWVALID;
  wire [0:0]hls_inst_m_axi_v4l2_BID;
  wire hls_inst_m_axi_v4l2_BREADY;
  wire [1:0]hls_inst_m_axi_v4l2_BRESP;
  wire hls_inst_m_axi_v4l2_BVALID;
  wire [31:0]hls_inst_m_axi_v4l2_RDATA;
  wire [0:0]hls_inst_m_axi_v4l2_RID;
  wire hls_inst_m_axi_v4l2_RLAST;
  wire hls_inst_m_axi_v4l2_RREADY;
  wire [1:0]hls_inst_m_axi_v4l2_RRESP;
  wire hls_inst_m_axi_v4l2_RVALID;
  wire [31:0]hls_inst_m_axi_v4l2_WDATA;
  wire [0:0]hls_inst_m_axi_v4l2_WID;
  wire hls_inst_m_axi_v4l2_WLAST;
  wire hls_inst_m_axi_v4l2_WREADY;
  wire [3:0]hls_inst_m_axi_v4l2_WSTRB;
  wire hls_inst_m_axi_v4l2_WVALID;
  wire [63:0]hls_inst_m_axi_v4u0_ARADDR;
  wire [1:0]hls_inst_m_axi_v4u0_ARBURST;
  wire [3:0]hls_inst_m_axi_v4u0_ARCACHE;
  wire [0:0]hls_inst_m_axi_v4u0_ARID;
  wire [7:0]hls_inst_m_axi_v4u0_ARLEN;
  wire [1:0]hls_inst_m_axi_v4u0_ARLOCK;
  wire [2:0]hls_inst_m_axi_v4u0_ARPROT;
  wire [3:0]hls_inst_m_axi_v4u0_ARQOS;
  wire hls_inst_m_axi_v4u0_ARREADY;
  wire [3:0]hls_inst_m_axi_v4u0_ARREGION;
  wire [2:0]hls_inst_m_axi_v4u0_ARSIZE;
  wire hls_inst_m_axi_v4u0_ARVALID;
  wire [63:0]hls_inst_m_axi_v4u0_AWADDR;
  wire [1:0]hls_inst_m_axi_v4u0_AWBURST;
  wire [3:0]hls_inst_m_axi_v4u0_AWCACHE;
  wire [0:0]hls_inst_m_axi_v4u0_AWID;
  wire [7:0]hls_inst_m_axi_v4u0_AWLEN;
  wire [1:0]hls_inst_m_axi_v4u0_AWLOCK;
  wire [2:0]hls_inst_m_axi_v4u0_AWPROT;
  wire [3:0]hls_inst_m_axi_v4u0_AWQOS;
  wire hls_inst_m_axi_v4u0_AWREADY;
  wire [3:0]hls_inst_m_axi_v4u0_AWREGION;
  wire [2:0]hls_inst_m_axi_v4u0_AWSIZE;
  wire hls_inst_m_axi_v4u0_AWVALID;
  wire [0:0]hls_inst_m_axi_v4u0_BID;
  wire hls_inst_m_axi_v4u0_BREADY;
  wire [1:0]hls_inst_m_axi_v4u0_BRESP;
  wire hls_inst_m_axi_v4u0_BVALID;
  wire [31:0]hls_inst_m_axi_v4u0_RDATA;
  wire [0:0]hls_inst_m_axi_v4u0_RID;
  wire hls_inst_m_axi_v4u0_RLAST;
  wire hls_inst_m_axi_v4u0_RREADY;
  wire [1:0]hls_inst_m_axi_v4u0_RRESP;
  wire hls_inst_m_axi_v4u0_RVALID;
  wire [31:0]hls_inst_m_axi_v4u0_WDATA;
  wire [0:0]hls_inst_m_axi_v4u0_WID;
  wire hls_inst_m_axi_v4u0_WLAST;
  wire hls_inst_m_axi_v4u0_WREADY;
  wire [3:0]hls_inst_m_axi_v4u0_WSTRB;
  wire hls_inst_m_axi_v4u0_WVALID;
  wire [63:0]hls_inst_m_axi_v4u1_ARADDR;
  wire [1:0]hls_inst_m_axi_v4u1_ARBURST;
  wire [3:0]hls_inst_m_axi_v4u1_ARCACHE;
  wire [0:0]hls_inst_m_axi_v4u1_ARID;
  wire [7:0]hls_inst_m_axi_v4u1_ARLEN;
  wire [1:0]hls_inst_m_axi_v4u1_ARLOCK;
  wire [2:0]hls_inst_m_axi_v4u1_ARPROT;
  wire [3:0]hls_inst_m_axi_v4u1_ARQOS;
  wire hls_inst_m_axi_v4u1_ARREADY;
  wire [3:0]hls_inst_m_axi_v4u1_ARREGION;
  wire [2:0]hls_inst_m_axi_v4u1_ARSIZE;
  wire hls_inst_m_axi_v4u1_ARVALID;
  wire [63:0]hls_inst_m_axi_v4u1_AWADDR;
  wire [1:0]hls_inst_m_axi_v4u1_AWBURST;
  wire [3:0]hls_inst_m_axi_v4u1_AWCACHE;
  wire [0:0]hls_inst_m_axi_v4u1_AWID;
  wire [7:0]hls_inst_m_axi_v4u1_AWLEN;
  wire [1:0]hls_inst_m_axi_v4u1_AWLOCK;
  wire [2:0]hls_inst_m_axi_v4u1_AWPROT;
  wire [3:0]hls_inst_m_axi_v4u1_AWQOS;
  wire hls_inst_m_axi_v4u1_AWREADY;
  wire [3:0]hls_inst_m_axi_v4u1_AWREGION;
  wire [2:0]hls_inst_m_axi_v4u1_AWSIZE;
  wire hls_inst_m_axi_v4u1_AWVALID;
  wire [0:0]hls_inst_m_axi_v4u1_BID;
  wire hls_inst_m_axi_v4u1_BREADY;
  wire [1:0]hls_inst_m_axi_v4u1_BRESP;
  wire hls_inst_m_axi_v4u1_BVALID;
  wire [31:0]hls_inst_m_axi_v4u1_RDATA;
  wire [0:0]hls_inst_m_axi_v4u1_RID;
  wire hls_inst_m_axi_v4u1_RLAST;
  wire hls_inst_m_axi_v4u1_RREADY;
  wire [1:0]hls_inst_m_axi_v4u1_RRESP;
  wire hls_inst_m_axi_v4u1_RVALID;
  wire [31:0]hls_inst_m_axi_v4u1_WDATA;
  wire [0:0]hls_inst_m_axi_v4u1_WID;
  wire hls_inst_m_axi_v4u1_WLAST;
  wire hls_inst_m_axi_v4u1_WREADY;
  wire [3:0]hls_inst_m_axi_v4u1_WSTRB;
  wire hls_inst_m_axi_v4u1_WVALID;
  wire [63:0]hls_inst_m_axi_v4u2_ARADDR;
  wire [1:0]hls_inst_m_axi_v4u2_ARBURST;
  wire [3:0]hls_inst_m_axi_v4u2_ARCACHE;
  wire [0:0]hls_inst_m_axi_v4u2_ARID;
  wire [7:0]hls_inst_m_axi_v4u2_ARLEN;
  wire [1:0]hls_inst_m_axi_v4u2_ARLOCK;
  wire [2:0]hls_inst_m_axi_v4u2_ARPROT;
  wire [3:0]hls_inst_m_axi_v4u2_ARQOS;
  wire hls_inst_m_axi_v4u2_ARREADY;
  wire [3:0]hls_inst_m_axi_v4u2_ARREGION;
  wire [2:0]hls_inst_m_axi_v4u2_ARSIZE;
  wire hls_inst_m_axi_v4u2_ARVALID;
  wire [63:0]hls_inst_m_axi_v4u2_AWADDR;
  wire [1:0]hls_inst_m_axi_v4u2_AWBURST;
  wire [3:0]hls_inst_m_axi_v4u2_AWCACHE;
  wire [0:0]hls_inst_m_axi_v4u2_AWID;
  wire [7:0]hls_inst_m_axi_v4u2_AWLEN;
  wire [1:0]hls_inst_m_axi_v4u2_AWLOCK;
  wire [2:0]hls_inst_m_axi_v4u2_AWPROT;
  wire [3:0]hls_inst_m_axi_v4u2_AWQOS;
  wire hls_inst_m_axi_v4u2_AWREADY;
  wire [3:0]hls_inst_m_axi_v4u2_AWREGION;
  wire [2:0]hls_inst_m_axi_v4u2_AWSIZE;
  wire hls_inst_m_axi_v4u2_AWVALID;
  wire [0:0]hls_inst_m_axi_v4u2_BID;
  wire hls_inst_m_axi_v4u2_BREADY;
  wire [1:0]hls_inst_m_axi_v4u2_BRESP;
  wire hls_inst_m_axi_v4u2_BVALID;
  wire [31:0]hls_inst_m_axi_v4u2_RDATA;
  wire [0:0]hls_inst_m_axi_v4u2_RID;
  wire hls_inst_m_axi_v4u2_RLAST;
  wire hls_inst_m_axi_v4u2_RREADY;
  wire [1:0]hls_inst_m_axi_v4u2_RRESP;
  wire hls_inst_m_axi_v4u2_RVALID;
  wire [31:0]hls_inst_m_axi_v4u2_WDATA;
  wire [0:0]hls_inst_m_axi_v4u2_WID;
  wire hls_inst_m_axi_v4u2_WLAST;
  wire hls_inst_m_axi_v4u2_WREADY;
  wire [3:0]hls_inst_m_axi_v4u2_WSTRB;
  wire hls_inst_m_axi_v4u2_WVALID;
  wire [63:0]hls_inst_m_axi_v4u3_ARADDR;
  wire [1:0]hls_inst_m_axi_v4u3_ARBURST;
  wire [3:0]hls_inst_m_axi_v4u3_ARCACHE;
  wire [0:0]hls_inst_m_axi_v4u3_ARID;
  wire [7:0]hls_inst_m_axi_v4u3_ARLEN;
  wire [1:0]hls_inst_m_axi_v4u3_ARLOCK;
  wire [2:0]hls_inst_m_axi_v4u3_ARPROT;
  wire [3:0]hls_inst_m_axi_v4u3_ARQOS;
  wire hls_inst_m_axi_v4u3_ARREADY;
  wire [3:0]hls_inst_m_axi_v4u3_ARREGION;
  wire [2:0]hls_inst_m_axi_v4u3_ARSIZE;
  wire hls_inst_m_axi_v4u3_ARVALID;
  wire [63:0]hls_inst_m_axi_v4u3_AWADDR;
  wire [1:0]hls_inst_m_axi_v4u3_AWBURST;
  wire [3:0]hls_inst_m_axi_v4u3_AWCACHE;
  wire [0:0]hls_inst_m_axi_v4u3_AWID;
  wire [7:0]hls_inst_m_axi_v4u3_AWLEN;
  wire [1:0]hls_inst_m_axi_v4u3_AWLOCK;
  wire [2:0]hls_inst_m_axi_v4u3_AWPROT;
  wire [3:0]hls_inst_m_axi_v4u3_AWQOS;
  wire hls_inst_m_axi_v4u3_AWREADY;
  wire [3:0]hls_inst_m_axi_v4u3_AWREGION;
  wire [2:0]hls_inst_m_axi_v4u3_AWSIZE;
  wire hls_inst_m_axi_v4u3_AWVALID;
  wire [0:0]hls_inst_m_axi_v4u3_BID;
  wire hls_inst_m_axi_v4u3_BREADY;
  wire [1:0]hls_inst_m_axi_v4u3_BRESP;
  wire hls_inst_m_axi_v4u3_BVALID;
  wire [31:0]hls_inst_m_axi_v4u3_RDATA;
  wire [0:0]hls_inst_m_axi_v4u3_RID;
  wire hls_inst_m_axi_v4u3_RLAST;
  wire hls_inst_m_axi_v4u3_RREADY;
  wire [1:0]hls_inst_m_axi_v4u3_RRESP;
  wire hls_inst_m_axi_v4u3_RVALID;
  wire [31:0]hls_inst_m_axi_v4u3_WDATA;
  wire [0:0]hls_inst_m_axi_v4u3_WID;
  wire hls_inst_m_axi_v4u3_WLAST;
  wire hls_inst_m_axi_v4u3_WREADY;
  wire [3:0]hls_inst_m_axi_v4u3_WSTRB;
  wire hls_inst_m_axi_v4u3_WVALID;
  wire [63:0]hls_inst_muladds;
  wire hls_inst_muladds_ap_vld;
  wire [31:0]hls_inst_status;
  wire hls_inst_status_ap_vld;
  wire [7:0]s_axi_control_0_1_ARADDR;
  wire s_axi_control_0_1_ARREADY;
  wire s_axi_control_0_1_ARVALID;
  wire [7:0]s_axi_control_0_1_AWADDR;
  wire s_axi_control_0_1_AWREADY;
  wire s_axi_control_0_1_AWVALID;
  wire s_axi_control_0_1_BREADY;
  wire [1:0]s_axi_control_0_1_BRESP;
  wire s_axi_control_0_1_BVALID;
  wire [31:0]s_axi_control_0_1_RDATA;
  wire s_axi_control_0_1_RREADY;
  wire [1:0]s_axi_control_0_1_RRESP;
  wire s_axi_control_0_1_RVALID;
  wire [31:0]s_axi_control_0_1_WDATA;
  wire s_axi_control_0_1_WREADY;
  wire [3:0]s_axi_control_0_1_WSTRB;
  wire s_axi_control_0_1_WVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign divisions[63:0] = hls_inst_divisions;
  assign divisions_ap_vld = hls_inst_divisions_ap_vld;
  assign hls_inst_m_axi_v4a0_ARREADY = m_axi_v4a0_arready;
  assign hls_inst_m_axi_v4a0_AWREADY = m_axi_v4a0_awready;
  assign hls_inst_m_axi_v4a0_BID = m_axi_v4a0_bid[0];
  assign hls_inst_m_axi_v4a0_BRESP = m_axi_v4a0_bresp[1:0];
  assign hls_inst_m_axi_v4a0_BVALID = m_axi_v4a0_bvalid;
  assign hls_inst_m_axi_v4a0_RDATA = m_axi_v4a0_rdata[31:0];
  assign hls_inst_m_axi_v4a0_RID = m_axi_v4a0_rid[0];
  assign hls_inst_m_axi_v4a0_RLAST = m_axi_v4a0_rlast;
  assign hls_inst_m_axi_v4a0_RRESP = m_axi_v4a0_rresp[1:0];
  assign hls_inst_m_axi_v4a0_RVALID = m_axi_v4a0_rvalid;
  assign hls_inst_m_axi_v4a0_WREADY = m_axi_v4a0_wready;
  assign hls_inst_m_axi_v4a1_ARREADY = m_axi_v4a1_arready;
  assign hls_inst_m_axi_v4a1_AWREADY = m_axi_v4a1_awready;
  assign hls_inst_m_axi_v4a1_BID = m_axi_v4a1_bid[0];
  assign hls_inst_m_axi_v4a1_BRESP = m_axi_v4a1_bresp[1:0];
  assign hls_inst_m_axi_v4a1_BVALID = m_axi_v4a1_bvalid;
  assign hls_inst_m_axi_v4a1_RDATA = m_axi_v4a1_rdata[31:0];
  assign hls_inst_m_axi_v4a1_RID = m_axi_v4a1_rid[0];
  assign hls_inst_m_axi_v4a1_RLAST = m_axi_v4a1_rlast;
  assign hls_inst_m_axi_v4a1_RRESP = m_axi_v4a1_rresp[1:0];
  assign hls_inst_m_axi_v4a1_RVALID = m_axi_v4a1_rvalid;
  assign hls_inst_m_axi_v4a1_WREADY = m_axi_v4a1_wready;
  assign hls_inst_m_axi_v4a2_ARREADY = m_axi_v4a2_arready;
  assign hls_inst_m_axi_v4a2_AWREADY = m_axi_v4a2_awready;
  assign hls_inst_m_axi_v4a2_BID = m_axi_v4a2_bid[0];
  assign hls_inst_m_axi_v4a2_BRESP = m_axi_v4a2_bresp[1:0];
  assign hls_inst_m_axi_v4a2_BVALID = m_axi_v4a2_bvalid;
  assign hls_inst_m_axi_v4a2_RDATA = m_axi_v4a2_rdata[31:0];
  assign hls_inst_m_axi_v4a2_RID = m_axi_v4a2_rid[0];
  assign hls_inst_m_axi_v4a2_RLAST = m_axi_v4a2_rlast;
  assign hls_inst_m_axi_v4a2_RRESP = m_axi_v4a2_rresp[1:0];
  assign hls_inst_m_axi_v4a2_RVALID = m_axi_v4a2_rvalid;
  assign hls_inst_m_axi_v4a2_WREADY = m_axi_v4a2_wready;
  assign hls_inst_m_axi_v4l0_ARREADY = m_axi_v4l0_arready;
  assign hls_inst_m_axi_v4l0_AWREADY = m_axi_v4l0_awready;
  assign hls_inst_m_axi_v4l0_BID = m_axi_v4l0_bid[0];
  assign hls_inst_m_axi_v4l0_BRESP = m_axi_v4l0_bresp[1:0];
  assign hls_inst_m_axi_v4l0_BVALID = m_axi_v4l0_bvalid;
  assign hls_inst_m_axi_v4l0_RDATA = m_axi_v4l0_rdata[31:0];
  assign hls_inst_m_axi_v4l0_RID = m_axi_v4l0_rid[0];
  assign hls_inst_m_axi_v4l0_RLAST = m_axi_v4l0_rlast;
  assign hls_inst_m_axi_v4l0_RRESP = m_axi_v4l0_rresp[1:0];
  assign hls_inst_m_axi_v4l0_RVALID = m_axi_v4l0_rvalid;
  assign hls_inst_m_axi_v4l0_WREADY = m_axi_v4l0_wready;
  assign hls_inst_m_axi_v4l1_ARREADY = m_axi_v4l1_arready;
  assign hls_inst_m_axi_v4l1_AWREADY = m_axi_v4l1_awready;
  assign hls_inst_m_axi_v4l1_BID = m_axi_v4l1_bid[0];
  assign hls_inst_m_axi_v4l1_BRESP = m_axi_v4l1_bresp[1:0];
  assign hls_inst_m_axi_v4l1_BVALID = m_axi_v4l1_bvalid;
  assign hls_inst_m_axi_v4l1_RDATA = m_axi_v4l1_rdata[31:0];
  assign hls_inst_m_axi_v4l1_RID = m_axi_v4l1_rid[0];
  assign hls_inst_m_axi_v4l1_RLAST = m_axi_v4l1_rlast;
  assign hls_inst_m_axi_v4l1_RRESP = m_axi_v4l1_rresp[1:0];
  assign hls_inst_m_axi_v4l1_RVALID = m_axi_v4l1_rvalid;
  assign hls_inst_m_axi_v4l1_WREADY = m_axi_v4l1_wready;
  assign hls_inst_m_axi_v4l2_ARREADY = m_axi_v4l2_arready;
  assign hls_inst_m_axi_v4l2_AWREADY = m_axi_v4l2_awready;
  assign hls_inst_m_axi_v4l2_BID = m_axi_v4l2_bid[0];
  assign hls_inst_m_axi_v4l2_BRESP = m_axi_v4l2_bresp[1:0];
  assign hls_inst_m_axi_v4l2_BVALID = m_axi_v4l2_bvalid;
  assign hls_inst_m_axi_v4l2_RDATA = m_axi_v4l2_rdata[31:0];
  assign hls_inst_m_axi_v4l2_RID = m_axi_v4l2_rid[0];
  assign hls_inst_m_axi_v4l2_RLAST = m_axi_v4l2_rlast;
  assign hls_inst_m_axi_v4l2_RRESP = m_axi_v4l2_rresp[1:0];
  assign hls_inst_m_axi_v4l2_RVALID = m_axi_v4l2_rvalid;
  assign hls_inst_m_axi_v4l2_WREADY = m_axi_v4l2_wready;
  assign hls_inst_m_axi_v4u0_ARREADY = m_axi_v4u0_arready;
  assign hls_inst_m_axi_v4u0_AWREADY = m_axi_v4u0_awready;
  assign hls_inst_m_axi_v4u0_BID = m_axi_v4u0_bid[0];
  assign hls_inst_m_axi_v4u0_BRESP = m_axi_v4u0_bresp[1:0];
  assign hls_inst_m_axi_v4u0_BVALID = m_axi_v4u0_bvalid;
  assign hls_inst_m_axi_v4u0_RDATA = m_axi_v4u0_rdata[31:0];
  assign hls_inst_m_axi_v4u0_RID = m_axi_v4u0_rid[0];
  assign hls_inst_m_axi_v4u0_RLAST = m_axi_v4u0_rlast;
  assign hls_inst_m_axi_v4u0_RRESP = m_axi_v4u0_rresp[1:0];
  assign hls_inst_m_axi_v4u0_RVALID = m_axi_v4u0_rvalid;
  assign hls_inst_m_axi_v4u0_WREADY = m_axi_v4u0_wready;
  assign hls_inst_m_axi_v4u1_ARREADY = m_axi_v4u1_arready;
  assign hls_inst_m_axi_v4u1_AWREADY = m_axi_v4u1_awready;
  assign hls_inst_m_axi_v4u1_BID = m_axi_v4u1_bid[0];
  assign hls_inst_m_axi_v4u1_BRESP = m_axi_v4u1_bresp[1:0];
  assign hls_inst_m_axi_v4u1_BVALID = m_axi_v4u1_bvalid;
  assign hls_inst_m_axi_v4u1_RDATA = m_axi_v4u1_rdata[31:0];
  assign hls_inst_m_axi_v4u1_RID = m_axi_v4u1_rid[0];
  assign hls_inst_m_axi_v4u1_RLAST = m_axi_v4u1_rlast;
  assign hls_inst_m_axi_v4u1_RRESP = m_axi_v4u1_rresp[1:0];
  assign hls_inst_m_axi_v4u1_RVALID = m_axi_v4u1_rvalid;
  assign hls_inst_m_axi_v4u1_WREADY = m_axi_v4u1_wready;
  assign hls_inst_m_axi_v4u2_ARREADY = m_axi_v4u2_arready;
  assign hls_inst_m_axi_v4u2_AWREADY = m_axi_v4u2_awready;
  assign hls_inst_m_axi_v4u2_BID = m_axi_v4u2_bid[0];
  assign hls_inst_m_axi_v4u2_BRESP = m_axi_v4u2_bresp[1:0];
  assign hls_inst_m_axi_v4u2_BVALID = m_axi_v4u2_bvalid;
  assign hls_inst_m_axi_v4u2_RDATA = m_axi_v4u2_rdata[31:0];
  assign hls_inst_m_axi_v4u2_RID = m_axi_v4u2_rid[0];
  assign hls_inst_m_axi_v4u2_RLAST = m_axi_v4u2_rlast;
  assign hls_inst_m_axi_v4u2_RRESP = m_axi_v4u2_rresp[1:0];
  assign hls_inst_m_axi_v4u2_RVALID = m_axi_v4u2_rvalid;
  assign hls_inst_m_axi_v4u2_WREADY = m_axi_v4u2_wready;
  assign hls_inst_m_axi_v4u3_ARREADY = m_axi_v4u3_arready;
  assign hls_inst_m_axi_v4u3_AWREADY = m_axi_v4u3_awready;
  assign hls_inst_m_axi_v4u3_BID = m_axi_v4u3_bid[0];
  assign hls_inst_m_axi_v4u3_BRESP = m_axi_v4u3_bresp[1:0];
  assign hls_inst_m_axi_v4u3_BVALID = m_axi_v4u3_bvalid;
  assign hls_inst_m_axi_v4u3_RDATA = m_axi_v4u3_rdata[31:0];
  assign hls_inst_m_axi_v4u3_RID = m_axi_v4u3_rid[0];
  assign hls_inst_m_axi_v4u3_RLAST = m_axi_v4u3_rlast;
  assign hls_inst_m_axi_v4u3_RRESP = m_axi_v4u3_rresp[1:0];
  assign hls_inst_m_axi_v4u3_RVALID = m_axi_v4u3_rvalid;
  assign hls_inst_m_axi_v4u3_WREADY = m_axi_v4u3_wready;
  assign interrupt = hls_inst_interrupt;
  assign m_axi_v4a0_araddr[63:0] = hls_inst_m_axi_v4a0_ARADDR;
  assign m_axi_v4a0_arburst[1:0] = hls_inst_m_axi_v4a0_ARBURST;
  assign m_axi_v4a0_arcache[3:0] = hls_inst_m_axi_v4a0_ARCACHE;
  assign m_axi_v4a0_arid[0] = hls_inst_m_axi_v4a0_ARID;
  assign m_axi_v4a0_arlen[7:0] = hls_inst_m_axi_v4a0_ARLEN;
  assign m_axi_v4a0_arlock[1:0] = hls_inst_m_axi_v4a0_ARLOCK;
  assign m_axi_v4a0_arprot[2:0] = hls_inst_m_axi_v4a0_ARPROT;
  assign m_axi_v4a0_arqos[3:0] = hls_inst_m_axi_v4a0_ARQOS;
  assign m_axi_v4a0_arregion[3:0] = hls_inst_m_axi_v4a0_ARREGION;
  assign m_axi_v4a0_arsize[2:0] = hls_inst_m_axi_v4a0_ARSIZE;
  assign m_axi_v4a0_arvalid = hls_inst_m_axi_v4a0_ARVALID;
  assign m_axi_v4a0_awaddr[63:0] = hls_inst_m_axi_v4a0_AWADDR;
  assign m_axi_v4a0_awburst[1:0] = hls_inst_m_axi_v4a0_AWBURST;
  assign m_axi_v4a0_awcache[3:0] = hls_inst_m_axi_v4a0_AWCACHE;
  assign m_axi_v4a0_awid[0] = hls_inst_m_axi_v4a0_AWID;
  assign m_axi_v4a0_awlen[7:0] = hls_inst_m_axi_v4a0_AWLEN;
  assign m_axi_v4a0_awlock[1:0] = hls_inst_m_axi_v4a0_AWLOCK;
  assign m_axi_v4a0_awprot[2:0] = hls_inst_m_axi_v4a0_AWPROT;
  assign m_axi_v4a0_awqos[3:0] = hls_inst_m_axi_v4a0_AWQOS;
  assign m_axi_v4a0_awregion[3:0] = hls_inst_m_axi_v4a0_AWREGION;
  assign m_axi_v4a0_awsize[2:0] = hls_inst_m_axi_v4a0_AWSIZE;
  assign m_axi_v4a0_awvalid = hls_inst_m_axi_v4a0_AWVALID;
  assign m_axi_v4a0_bready = hls_inst_m_axi_v4a0_BREADY;
  assign m_axi_v4a0_rready = hls_inst_m_axi_v4a0_RREADY;
  assign m_axi_v4a0_wdata[31:0] = hls_inst_m_axi_v4a0_WDATA;
  assign m_axi_v4a0_wid[0] = hls_inst_m_axi_v4a0_WID;
  assign m_axi_v4a0_wlast = hls_inst_m_axi_v4a0_WLAST;
  assign m_axi_v4a0_wstrb[3:0] = hls_inst_m_axi_v4a0_WSTRB;
  assign m_axi_v4a0_wvalid = hls_inst_m_axi_v4a0_WVALID;
  assign m_axi_v4a1_araddr[63:0] = hls_inst_m_axi_v4a1_ARADDR;
  assign m_axi_v4a1_arburst[1:0] = hls_inst_m_axi_v4a1_ARBURST;
  assign m_axi_v4a1_arcache[3:0] = hls_inst_m_axi_v4a1_ARCACHE;
  assign m_axi_v4a1_arid[0] = hls_inst_m_axi_v4a1_ARID;
  assign m_axi_v4a1_arlen[7:0] = hls_inst_m_axi_v4a1_ARLEN;
  assign m_axi_v4a1_arlock[1:0] = hls_inst_m_axi_v4a1_ARLOCK;
  assign m_axi_v4a1_arprot[2:0] = hls_inst_m_axi_v4a1_ARPROT;
  assign m_axi_v4a1_arqos[3:0] = hls_inst_m_axi_v4a1_ARQOS;
  assign m_axi_v4a1_arregion[3:0] = hls_inst_m_axi_v4a1_ARREGION;
  assign m_axi_v4a1_arsize[2:0] = hls_inst_m_axi_v4a1_ARSIZE;
  assign m_axi_v4a1_arvalid = hls_inst_m_axi_v4a1_ARVALID;
  assign m_axi_v4a1_awaddr[63:0] = hls_inst_m_axi_v4a1_AWADDR;
  assign m_axi_v4a1_awburst[1:0] = hls_inst_m_axi_v4a1_AWBURST;
  assign m_axi_v4a1_awcache[3:0] = hls_inst_m_axi_v4a1_AWCACHE;
  assign m_axi_v4a1_awid[0] = hls_inst_m_axi_v4a1_AWID;
  assign m_axi_v4a1_awlen[7:0] = hls_inst_m_axi_v4a1_AWLEN;
  assign m_axi_v4a1_awlock[1:0] = hls_inst_m_axi_v4a1_AWLOCK;
  assign m_axi_v4a1_awprot[2:0] = hls_inst_m_axi_v4a1_AWPROT;
  assign m_axi_v4a1_awqos[3:0] = hls_inst_m_axi_v4a1_AWQOS;
  assign m_axi_v4a1_awregion[3:0] = hls_inst_m_axi_v4a1_AWREGION;
  assign m_axi_v4a1_awsize[2:0] = hls_inst_m_axi_v4a1_AWSIZE;
  assign m_axi_v4a1_awvalid = hls_inst_m_axi_v4a1_AWVALID;
  assign m_axi_v4a1_bready = hls_inst_m_axi_v4a1_BREADY;
  assign m_axi_v4a1_rready = hls_inst_m_axi_v4a1_RREADY;
  assign m_axi_v4a1_wdata[31:0] = hls_inst_m_axi_v4a1_WDATA;
  assign m_axi_v4a1_wid[0] = hls_inst_m_axi_v4a1_WID;
  assign m_axi_v4a1_wlast = hls_inst_m_axi_v4a1_WLAST;
  assign m_axi_v4a1_wstrb[3:0] = hls_inst_m_axi_v4a1_WSTRB;
  assign m_axi_v4a1_wvalid = hls_inst_m_axi_v4a1_WVALID;
  assign m_axi_v4a2_araddr[63:0] = hls_inst_m_axi_v4a2_ARADDR;
  assign m_axi_v4a2_arburst[1:0] = hls_inst_m_axi_v4a2_ARBURST;
  assign m_axi_v4a2_arcache[3:0] = hls_inst_m_axi_v4a2_ARCACHE;
  assign m_axi_v4a2_arid[0] = hls_inst_m_axi_v4a2_ARID;
  assign m_axi_v4a2_arlen[7:0] = hls_inst_m_axi_v4a2_ARLEN;
  assign m_axi_v4a2_arlock[1:0] = hls_inst_m_axi_v4a2_ARLOCK;
  assign m_axi_v4a2_arprot[2:0] = hls_inst_m_axi_v4a2_ARPROT;
  assign m_axi_v4a2_arqos[3:0] = hls_inst_m_axi_v4a2_ARQOS;
  assign m_axi_v4a2_arregion[3:0] = hls_inst_m_axi_v4a2_ARREGION;
  assign m_axi_v4a2_arsize[2:0] = hls_inst_m_axi_v4a2_ARSIZE;
  assign m_axi_v4a2_arvalid = hls_inst_m_axi_v4a2_ARVALID;
  assign m_axi_v4a2_awaddr[63:0] = hls_inst_m_axi_v4a2_AWADDR;
  assign m_axi_v4a2_awburst[1:0] = hls_inst_m_axi_v4a2_AWBURST;
  assign m_axi_v4a2_awcache[3:0] = hls_inst_m_axi_v4a2_AWCACHE;
  assign m_axi_v4a2_awid[0] = hls_inst_m_axi_v4a2_AWID;
  assign m_axi_v4a2_awlen[7:0] = hls_inst_m_axi_v4a2_AWLEN;
  assign m_axi_v4a2_awlock[1:0] = hls_inst_m_axi_v4a2_AWLOCK;
  assign m_axi_v4a2_awprot[2:0] = hls_inst_m_axi_v4a2_AWPROT;
  assign m_axi_v4a2_awqos[3:0] = hls_inst_m_axi_v4a2_AWQOS;
  assign m_axi_v4a2_awregion[3:0] = hls_inst_m_axi_v4a2_AWREGION;
  assign m_axi_v4a2_awsize[2:0] = hls_inst_m_axi_v4a2_AWSIZE;
  assign m_axi_v4a2_awvalid = hls_inst_m_axi_v4a2_AWVALID;
  assign m_axi_v4a2_bready = hls_inst_m_axi_v4a2_BREADY;
  assign m_axi_v4a2_rready = hls_inst_m_axi_v4a2_RREADY;
  assign m_axi_v4a2_wdata[31:0] = hls_inst_m_axi_v4a2_WDATA;
  assign m_axi_v4a2_wid[0] = hls_inst_m_axi_v4a2_WID;
  assign m_axi_v4a2_wlast = hls_inst_m_axi_v4a2_WLAST;
  assign m_axi_v4a2_wstrb[3:0] = hls_inst_m_axi_v4a2_WSTRB;
  assign m_axi_v4a2_wvalid = hls_inst_m_axi_v4a2_WVALID;
  assign m_axi_v4l0_araddr[63:0] = hls_inst_m_axi_v4l0_ARADDR;
  assign m_axi_v4l0_arburst[1:0] = hls_inst_m_axi_v4l0_ARBURST;
  assign m_axi_v4l0_arcache[3:0] = hls_inst_m_axi_v4l0_ARCACHE;
  assign m_axi_v4l0_arid[0] = hls_inst_m_axi_v4l0_ARID;
  assign m_axi_v4l0_arlen[7:0] = hls_inst_m_axi_v4l0_ARLEN;
  assign m_axi_v4l0_arlock[1:0] = hls_inst_m_axi_v4l0_ARLOCK;
  assign m_axi_v4l0_arprot[2:0] = hls_inst_m_axi_v4l0_ARPROT;
  assign m_axi_v4l0_arqos[3:0] = hls_inst_m_axi_v4l0_ARQOS;
  assign m_axi_v4l0_arregion[3:0] = hls_inst_m_axi_v4l0_ARREGION;
  assign m_axi_v4l0_arsize[2:0] = hls_inst_m_axi_v4l0_ARSIZE;
  assign m_axi_v4l0_arvalid = hls_inst_m_axi_v4l0_ARVALID;
  assign m_axi_v4l0_awaddr[63:0] = hls_inst_m_axi_v4l0_AWADDR;
  assign m_axi_v4l0_awburst[1:0] = hls_inst_m_axi_v4l0_AWBURST;
  assign m_axi_v4l0_awcache[3:0] = hls_inst_m_axi_v4l0_AWCACHE;
  assign m_axi_v4l0_awid[0] = hls_inst_m_axi_v4l0_AWID;
  assign m_axi_v4l0_awlen[7:0] = hls_inst_m_axi_v4l0_AWLEN;
  assign m_axi_v4l0_awlock[1:0] = hls_inst_m_axi_v4l0_AWLOCK;
  assign m_axi_v4l0_awprot[2:0] = hls_inst_m_axi_v4l0_AWPROT;
  assign m_axi_v4l0_awqos[3:0] = hls_inst_m_axi_v4l0_AWQOS;
  assign m_axi_v4l0_awregion[3:0] = hls_inst_m_axi_v4l0_AWREGION;
  assign m_axi_v4l0_awsize[2:0] = hls_inst_m_axi_v4l0_AWSIZE;
  assign m_axi_v4l0_awvalid = hls_inst_m_axi_v4l0_AWVALID;
  assign m_axi_v4l0_bready = hls_inst_m_axi_v4l0_BREADY;
  assign m_axi_v4l0_rready = hls_inst_m_axi_v4l0_RREADY;
  assign m_axi_v4l0_wdata[31:0] = hls_inst_m_axi_v4l0_WDATA;
  assign m_axi_v4l0_wid[0] = hls_inst_m_axi_v4l0_WID;
  assign m_axi_v4l0_wlast = hls_inst_m_axi_v4l0_WLAST;
  assign m_axi_v4l0_wstrb[3:0] = hls_inst_m_axi_v4l0_WSTRB;
  assign m_axi_v4l0_wvalid = hls_inst_m_axi_v4l0_WVALID;
  assign m_axi_v4l1_araddr[63:0] = hls_inst_m_axi_v4l1_ARADDR;
  assign m_axi_v4l1_arburst[1:0] = hls_inst_m_axi_v4l1_ARBURST;
  assign m_axi_v4l1_arcache[3:0] = hls_inst_m_axi_v4l1_ARCACHE;
  assign m_axi_v4l1_arid[0] = hls_inst_m_axi_v4l1_ARID;
  assign m_axi_v4l1_arlen[7:0] = hls_inst_m_axi_v4l1_ARLEN;
  assign m_axi_v4l1_arlock[1:0] = hls_inst_m_axi_v4l1_ARLOCK;
  assign m_axi_v4l1_arprot[2:0] = hls_inst_m_axi_v4l1_ARPROT;
  assign m_axi_v4l1_arqos[3:0] = hls_inst_m_axi_v4l1_ARQOS;
  assign m_axi_v4l1_arregion[3:0] = hls_inst_m_axi_v4l1_ARREGION;
  assign m_axi_v4l1_arsize[2:0] = hls_inst_m_axi_v4l1_ARSIZE;
  assign m_axi_v4l1_arvalid = hls_inst_m_axi_v4l1_ARVALID;
  assign m_axi_v4l1_awaddr[63:0] = hls_inst_m_axi_v4l1_AWADDR;
  assign m_axi_v4l1_awburst[1:0] = hls_inst_m_axi_v4l1_AWBURST;
  assign m_axi_v4l1_awcache[3:0] = hls_inst_m_axi_v4l1_AWCACHE;
  assign m_axi_v4l1_awid[0] = hls_inst_m_axi_v4l1_AWID;
  assign m_axi_v4l1_awlen[7:0] = hls_inst_m_axi_v4l1_AWLEN;
  assign m_axi_v4l1_awlock[1:0] = hls_inst_m_axi_v4l1_AWLOCK;
  assign m_axi_v4l1_awprot[2:0] = hls_inst_m_axi_v4l1_AWPROT;
  assign m_axi_v4l1_awqos[3:0] = hls_inst_m_axi_v4l1_AWQOS;
  assign m_axi_v4l1_awregion[3:0] = hls_inst_m_axi_v4l1_AWREGION;
  assign m_axi_v4l1_awsize[2:0] = hls_inst_m_axi_v4l1_AWSIZE;
  assign m_axi_v4l1_awvalid = hls_inst_m_axi_v4l1_AWVALID;
  assign m_axi_v4l1_bready = hls_inst_m_axi_v4l1_BREADY;
  assign m_axi_v4l1_rready = hls_inst_m_axi_v4l1_RREADY;
  assign m_axi_v4l1_wdata[31:0] = hls_inst_m_axi_v4l1_WDATA;
  assign m_axi_v4l1_wid[0] = hls_inst_m_axi_v4l1_WID;
  assign m_axi_v4l1_wlast = hls_inst_m_axi_v4l1_WLAST;
  assign m_axi_v4l1_wstrb[3:0] = hls_inst_m_axi_v4l1_WSTRB;
  assign m_axi_v4l1_wvalid = hls_inst_m_axi_v4l1_WVALID;
  assign m_axi_v4l2_araddr[63:0] = hls_inst_m_axi_v4l2_ARADDR;
  assign m_axi_v4l2_arburst[1:0] = hls_inst_m_axi_v4l2_ARBURST;
  assign m_axi_v4l2_arcache[3:0] = hls_inst_m_axi_v4l2_ARCACHE;
  assign m_axi_v4l2_arid[0] = hls_inst_m_axi_v4l2_ARID;
  assign m_axi_v4l2_arlen[7:0] = hls_inst_m_axi_v4l2_ARLEN;
  assign m_axi_v4l2_arlock[1:0] = hls_inst_m_axi_v4l2_ARLOCK;
  assign m_axi_v4l2_arprot[2:0] = hls_inst_m_axi_v4l2_ARPROT;
  assign m_axi_v4l2_arqos[3:0] = hls_inst_m_axi_v4l2_ARQOS;
  assign m_axi_v4l2_arregion[3:0] = hls_inst_m_axi_v4l2_ARREGION;
  assign m_axi_v4l2_arsize[2:0] = hls_inst_m_axi_v4l2_ARSIZE;
  assign m_axi_v4l2_arvalid = hls_inst_m_axi_v4l2_ARVALID;
  assign m_axi_v4l2_awaddr[63:0] = hls_inst_m_axi_v4l2_AWADDR;
  assign m_axi_v4l2_awburst[1:0] = hls_inst_m_axi_v4l2_AWBURST;
  assign m_axi_v4l2_awcache[3:0] = hls_inst_m_axi_v4l2_AWCACHE;
  assign m_axi_v4l2_awid[0] = hls_inst_m_axi_v4l2_AWID;
  assign m_axi_v4l2_awlen[7:0] = hls_inst_m_axi_v4l2_AWLEN;
  assign m_axi_v4l2_awlock[1:0] = hls_inst_m_axi_v4l2_AWLOCK;
  assign m_axi_v4l2_awprot[2:0] = hls_inst_m_axi_v4l2_AWPROT;
  assign m_axi_v4l2_awqos[3:0] = hls_inst_m_axi_v4l2_AWQOS;
  assign m_axi_v4l2_awregion[3:0] = hls_inst_m_axi_v4l2_AWREGION;
  assign m_axi_v4l2_awsize[2:0] = hls_inst_m_axi_v4l2_AWSIZE;
  assign m_axi_v4l2_awvalid = hls_inst_m_axi_v4l2_AWVALID;
  assign m_axi_v4l2_bready = hls_inst_m_axi_v4l2_BREADY;
  assign m_axi_v4l2_rready = hls_inst_m_axi_v4l2_RREADY;
  assign m_axi_v4l2_wdata[31:0] = hls_inst_m_axi_v4l2_WDATA;
  assign m_axi_v4l2_wid[0] = hls_inst_m_axi_v4l2_WID;
  assign m_axi_v4l2_wlast = hls_inst_m_axi_v4l2_WLAST;
  assign m_axi_v4l2_wstrb[3:0] = hls_inst_m_axi_v4l2_WSTRB;
  assign m_axi_v4l2_wvalid = hls_inst_m_axi_v4l2_WVALID;
  assign m_axi_v4u0_araddr[63:0] = hls_inst_m_axi_v4u0_ARADDR;
  assign m_axi_v4u0_arburst[1:0] = hls_inst_m_axi_v4u0_ARBURST;
  assign m_axi_v4u0_arcache[3:0] = hls_inst_m_axi_v4u0_ARCACHE;
  assign m_axi_v4u0_arid[0] = hls_inst_m_axi_v4u0_ARID;
  assign m_axi_v4u0_arlen[7:0] = hls_inst_m_axi_v4u0_ARLEN;
  assign m_axi_v4u0_arlock[1:0] = hls_inst_m_axi_v4u0_ARLOCK;
  assign m_axi_v4u0_arprot[2:0] = hls_inst_m_axi_v4u0_ARPROT;
  assign m_axi_v4u0_arqos[3:0] = hls_inst_m_axi_v4u0_ARQOS;
  assign m_axi_v4u0_arregion[3:0] = hls_inst_m_axi_v4u0_ARREGION;
  assign m_axi_v4u0_arsize[2:0] = hls_inst_m_axi_v4u0_ARSIZE;
  assign m_axi_v4u0_arvalid = hls_inst_m_axi_v4u0_ARVALID;
  assign m_axi_v4u0_awaddr[63:0] = hls_inst_m_axi_v4u0_AWADDR;
  assign m_axi_v4u0_awburst[1:0] = hls_inst_m_axi_v4u0_AWBURST;
  assign m_axi_v4u0_awcache[3:0] = hls_inst_m_axi_v4u0_AWCACHE;
  assign m_axi_v4u0_awid[0] = hls_inst_m_axi_v4u0_AWID;
  assign m_axi_v4u0_awlen[7:0] = hls_inst_m_axi_v4u0_AWLEN;
  assign m_axi_v4u0_awlock[1:0] = hls_inst_m_axi_v4u0_AWLOCK;
  assign m_axi_v4u0_awprot[2:0] = hls_inst_m_axi_v4u0_AWPROT;
  assign m_axi_v4u0_awqos[3:0] = hls_inst_m_axi_v4u0_AWQOS;
  assign m_axi_v4u0_awregion[3:0] = hls_inst_m_axi_v4u0_AWREGION;
  assign m_axi_v4u0_awsize[2:0] = hls_inst_m_axi_v4u0_AWSIZE;
  assign m_axi_v4u0_awvalid = hls_inst_m_axi_v4u0_AWVALID;
  assign m_axi_v4u0_bready = hls_inst_m_axi_v4u0_BREADY;
  assign m_axi_v4u0_rready = hls_inst_m_axi_v4u0_RREADY;
  assign m_axi_v4u0_wdata[31:0] = hls_inst_m_axi_v4u0_WDATA;
  assign m_axi_v4u0_wid[0] = hls_inst_m_axi_v4u0_WID;
  assign m_axi_v4u0_wlast = hls_inst_m_axi_v4u0_WLAST;
  assign m_axi_v4u0_wstrb[3:0] = hls_inst_m_axi_v4u0_WSTRB;
  assign m_axi_v4u0_wvalid = hls_inst_m_axi_v4u0_WVALID;
  assign m_axi_v4u1_araddr[63:0] = hls_inst_m_axi_v4u1_ARADDR;
  assign m_axi_v4u1_arburst[1:0] = hls_inst_m_axi_v4u1_ARBURST;
  assign m_axi_v4u1_arcache[3:0] = hls_inst_m_axi_v4u1_ARCACHE;
  assign m_axi_v4u1_arid[0] = hls_inst_m_axi_v4u1_ARID;
  assign m_axi_v4u1_arlen[7:0] = hls_inst_m_axi_v4u1_ARLEN;
  assign m_axi_v4u1_arlock[1:0] = hls_inst_m_axi_v4u1_ARLOCK;
  assign m_axi_v4u1_arprot[2:0] = hls_inst_m_axi_v4u1_ARPROT;
  assign m_axi_v4u1_arqos[3:0] = hls_inst_m_axi_v4u1_ARQOS;
  assign m_axi_v4u1_arregion[3:0] = hls_inst_m_axi_v4u1_ARREGION;
  assign m_axi_v4u1_arsize[2:0] = hls_inst_m_axi_v4u1_ARSIZE;
  assign m_axi_v4u1_arvalid = hls_inst_m_axi_v4u1_ARVALID;
  assign m_axi_v4u1_awaddr[63:0] = hls_inst_m_axi_v4u1_AWADDR;
  assign m_axi_v4u1_awburst[1:0] = hls_inst_m_axi_v4u1_AWBURST;
  assign m_axi_v4u1_awcache[3:0] = hls_inst_m_axi_v4u1_AWCACHE;
  assign m_axi_v4u1_awid[0] = hls_inst_m_axi_v4u1_AWID;
  assign m_axi_v4u1_awlen[7:0] = hls_inst_m_axi_v4u1_AWLEN;
  assign m_axi_v4u1_awlock[1:0] = hls_inst_m_axi_v4u1_AWLOCK;
  assign m_axi_v4u1_awprot[2:0] = hls_inst_m_axi_v4u1_AWPROT;
  assign m_axi_v4u1_awqos[3:0] = hls_inst_m_axi_v4u1_AWQOS;
  assign m_axi_v4u1_awregion[3:0] = hls_inst_m_axi_v4u1_AWREGION;
  assign m_axi_v4u1_awsize[2:0] = hls_inst_m_axi_v4u1_AWSIZE;
  assign m_axi_v4u1_awvalid = hls_inst_m_axi_v4u1_AWVALID;
  assign m_axi_v4u1_bready = hls_inst_m_axi_v4u1_BREADY;
  assign m_axi_v4u1_rready = hls_inst_m_axi_v4u1_RREADY;
  assign m_axi_v4u1_wdata[31:0] = hls_inst_m_axi_v4u1_WDATA;
  assign m_axi_v4u1_wid[0] = hls_inst_m_axi_v4u1_WID;
  assign m_axi_v4u1_wlast = hls_inst_m_axi_v4u1_WLAST;
  assign m_axi_v4u1_wstrb[3:0] = hls_inst_m_axi_v4u1_WSTRB;
  assign m_axi_v4u1_wvalid = hls_inst_m_axi_v4u1_WVALID;
  assign m_axi_v4u2_araddr[63:0] = hls_inst_m_axi_v4u2_ARADDR;
  assign m_axi_v4u2_arburst[1:0] = hls_inst_m_axi_v4u2_ARBURST;
  assign m_axi_v4u2_arcache[3:0] = hls_inst_m_axi_v4u2_ARCACHE;
  assign m_axi_v4u2_arid[0] = hls_inst_m_axi_v4u2_ARID;
  assign m_axi_v4u2_arlen[7:0] = hls_inst_m_axi_v4u2_ARLEN;
  assign m_axi_v4u2_arlock[1:0] = hls_inst_m_axi_v4u2_ARLOCK;
  assign m_axi_v4u2_arprot[2:0] = hls_inst_m_axi_v4u2_ARPROT;
  assign m_axi_v4u2_arqos[3:0] = hls_inst_m_axi_v4u2_ARQOS;
  assign m_axi_v4u2_arregion[3:0] = hls_inst_m_axi_v4u2_ARREGION;
  assign m_axi_v4u2_arsize[2:0] = hls_inst_m_axi_v4u2_ARSIZE;
  assign m_axi_v4u2_arvalid = hls_inst_m_axi_v4u2_ARVALID;
  assign m_axi_v4u2_awaddr[63:0] = hls_inst_m_axi_v4u2_AWADDR;
  assign m_axi_v4u2_awburst[1:0] = hls_inst_m_axi_v4u2_AWBURST;
  assign m_axi_v4u2_awcache[3:0] = hls_inst_m_axi_v4u2_AWCACHE;
  assign m_axi_v4u2_awid[0] = hls_inst_m_axi_v4u2_AWID;
  assign m_axi_v4u2_awlen[7:0] = hls_inst_m_axi_v4u2_AWLEN;
  assign m_axi_v4u2_awlock[1:0] = hls_inst_m_axi_v4u2_AWLOCK;
  assign m_axi_v4u2_awprot[2:0] = hls_inst_m_axi_v4u2_AWPROT;
  assign m_axi_v4u2_awqos[3:0] = hls_inst_m_axi_v4u2_AWQOS;
  assign m_axi_v4u2_awregion[3:0] = hls_inst_m_axi_v4u2_AWREGION;
  assign m_axi_v4u2_awsize[2:0] = hls_inst_m_axi_v4u2_AWSIZE;
  assign m_axi_v4u2_awvalid = hls_inst_m_axi_v4u2_AWVALID;
  assign m_axi_v4u2_bready = hls_inst_m_axi_v4u2_BREADY;
  assign m_axi_v4u2_rready = hls_inst_m_axi_v4u2_RREADY;
  assign m_axi_v4u2_wdata[31:0] = hls_inst_m_axi_v4u2_WDATA;
  assign m_axi_v4u2_wid[0] = hls_inst_m_axi_v4u2_WID;
  assign m_axi_v4u2_wlast = hls_inst_m_axi_v4u2_WLAST;
  assign m_axi_v4u2_wstrb[3:0] = hls_inst_m_axi_v4u2_WSTRB;
  assign m_axi_v4u2_wvalid = hls_inst_m_axi_v4u2_WVALID;
  assign m_axi_v4u3_araddr[63:0] = hls_inst_m_axi_v4u3_ARADDR;
  assign m_axi_v4u3_arburst[1:0] = hls_inst_m_axi_v4u3_ARBURST;
  assign m_axi_v4u3_arcache[3:0] = hls_inst_m_axi_v4u3_ARCACHE;
  assign m_axi_v4u3_arid[0] = hls_inst_m_axi_v4u3_ARID;
  assign m_axi_v4u3_arlen[7:0] = hls_inst_m_axi_v4u3_ARLEN;
  assign m_axi_v4u3_arlock[1:0] = hls_inst_m_axi_v4u3_ARLOCK;
  assign m_axi_v4u3_arprot[2:0] = hls_inst_m_axi_v4u3_ARPROT;
  assign m_axi_v4u3_arqos[3:0] = hls_inst_m_axi_v4u3_ARQOS;
  assign m_axi_v4u3_arregion[3:0] = hls_inst_m_axi_v4u3_ARREGION;
  assign m_axi_v4u3_arsize[2:0] = hls_inst_m_axi_v4u3_ARSIZE;
  assign m_axi_v4u3_arvalid = hls_inst_m_axi_v4u3_ARVALID;
  assign m_axi_v4u3_awaddr[63:0] = hls_inst_m_axi_v4u3_AWADDR;
  assign m_axi_v4u3_awburst[1:0] = hls_inst_m_axi_v4u3_AWBURST;
  assign m_axi_v4u3_awcache[3:0] = hls_inst_m_axi_v4u3_AWCACHE;
  assign m_axi_v4u3_awid[0] = hls_inst_m_axi_v4u3_AWID;
  assign m_axi_v4u3_awlen[7:0] = hls_inst_m_axi_v4u3_AWLEN;
  assign m_axi_v4u3_awlock[1:0] = hls_inst_m_axi_v4u3_AWLOCK;
  assign m_axi_v4u3_awprot[2:0] = hls_inst_m_axi_v4u3_AWPROT;
  assign m_axi_v4u3_awqos[3:0] = hls_inst_m_axi_v4u3_AWQOS;
  assign m_axi_v4u3_awregion[3:0] = hls_inst_m_axi_v4u3_AWREGION;
  assign m_axi_v4u3_awsize[2:0] = hls_inst_m_axi_v4u3_AWSIZE;
  assign m_axi_v4u3_awvalid = hls_inst_m_axi_v4u3_AWVALID;
  assign m_axi_v4u3_bready = hls_inst_m_axi_v4u3_BREADY;
  assign m_axi_v4u3_rready = hls_inst_m_axi_v4u3_RREADY;
  assign m_axi_v4u3_wdata[31:0] = hls_inst_m_axi_v4u3_WDATA;
  assign m_axi_v4u3_wid[0] = hls_inst_m_axi_v4u3_WID;
  assign m_axi_v4u3_wlast = hls_inst_m_axi_v4u3_WLAST;
  assign m_axi_v4u3_wstrb[3:0] = hls_inst_m_axi_v4u3_WSTRB;
  assign m_axi_v4u3_wvalid = hls_inst_m_axi_v4u3_WVALID;
  assign muladds[63:0] = hls_inst_muladds;
  assign muladds_ap_vld = hls_inst_muladds_ap_vld;
  assign s_axi_control_0_1_ARADDR = s_axi_control_araddr[7:0];
  assign s_axi_control_0_1_ARVALID = s_axi_control_arvalid;
  assign s_axi_control_0_1_AWADDR = s_axi_control_awaddr[7:0];
  assign s_axi_control_0_1_AWVALID = s_axi_control_awvalid;
  assign s_axi_control_0_1_BREADY = s_axi_control_bready;
  assign s_axi_control_0_1_RREADY = s_axi_control_rready;
  assign s_axi_control_0_1_WDATA = s_axi_control_wdata[31:0];
  assign s_axi_control_0_1_WSTRB = s_axi_control_wstrb[3:0];
  assign s_axi_control_0_1_WVALID = s_axi_control_wvalid;
  assign s_axi_control_arready = s_axi_control_0_1_ARREADY;
  assign s_axi_control_awready = s_axi_control_0_1_AWREADY;
  assign s_axi_control_bresp[1:0] = s_axi_control_0_1_BRESP;
  assign s_axi_control_bvalid = s_axi_control_0_1_BVALID;
  assign s_axi_control_rdata[31:0] = s_axi_control_0_1_RDATA;
  assign s_axi_control_rresp[1:0] = s_axi_control_0_1_RRESP;
  assign s_axi_control_rvalid = s_axi_control_0_1_RVALID;
  assign s_axi_control_wready = s_axi_control_0_1_WREADY;
  assign status[31:0] = hls_inst_status;
  assign status_ap_vld = hls_inst_status_ap_vld;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .divisions(hls_inst_divisions),
        .divisions_ap_vld(hls_inst_divisions_ap_vld),
        .interrupt(hls_inst_interrupt),
        .m_axi_v4a0_ARADDR(hls_inst_m_axi_v4a0_ARADDR),
        .m_axi_v4a0_ARBURST(hls_inst_m_axi_v4a0_ARBURST),
        .m_axi_v4a0_ARCACHE(hls_inst_m_axi_v4a0_ARCACHE),
        .m_axi_v4a0_ARID(hls_inst_m_axi_v4a0_ARID),
        .m_axi_v4a0_ARLEN(hls_inst_m_axi_v4a0_ARLEN),
        .m_axi_v4a0_ARLOCK(hls_inst_m_axi_v4a0_ARLOCK),
        .m_axi_v4a0_ARPROT(hls_inst_m_axi_v4a0_ARPROT),
        .m_axi_v4a0_ARQOS(hls_inst_m_axi_v4a0_ARQOS),
        .m_axi_v4a0_ARREADY(hls_inst_m_axi_v4a0_ARREADY),
        .m_axi_v4a0_ARREGION(hls_inst_m_axi_v4a0_ARREGION),
        .m_axi_v4a0_ARSIZE(hls_inst_m_axi_v4a0_ARSIZE),
        .m_axi_v4a0_ARVALID(hls_inst_m_axi_v4a0_ARVALID),
        .m_axi_v4a0_AWADDR(hls_inst_m_axi_v4a0_AWADDR),
        .m_axi_v4a0_AWBURST(hls_inst_m_axi_v4a0_AWBURST),
        .m_axi_v4a0_AWCACHE(hls_inst_m_axi_v4a0_AWCACHE),
        .m_axi_v4a0_AWID(hls_inst_m_axi_v4a0_AWID),
        .m_axi_v4a0_AWLEN(hls_inst_m_axi_v4a0_AWLEN),
        .m_axi_v4a0_AWLOCK(hls_inst_m_axi_v4a0_AWLOCK),
        .m_axi_v4a0_AWPROT(hls_inst_m_axi_v4a0_AWPROT),
        .m_axi_v4a0_AWQOS(hls_inst_m_axi_v4a0_AWQOS),
        .m_axi_v4a0_AWREADY(hls_inst_m_axi_v4a0_AWREADY),
        .m_axi_v4a0_AWREGION(hls_inst_m_axi_v4a0_AWREGION),
        .m_axi_v4a0_AWSIZE(hls_inst_m_axi_v4a0_AWSIZE),
        .m_axi_v4a0_AWVALID(hls_inst_m_axi_v4a0_AWVALID),
        .m_axi_v4a0_BID(hls_inst_m_axi_v4a0_BID),
        .m_axi_v4a0_BREADY(hls_inst_m_axi_v4a0_BREADY),
        .m_axi_v4a0_BRESP(hls_inst_m_axi_v4a0_BRESP),
        .m_axi_v4a0_BVALID(hls_inst_m_axi_v4a0_BVALID),
        .m_axi_v4a0_RDATA(hls_inst_m_axi_v4a0_RDATA),
        .m_axi_v4a0_RID(hls_inst_m_axi_v4a0_RID),
        .m_axi_v4a0_RLAST(hls_inst_m_axi_v4a0_RLAST),
        .m_axi_v4a0_RREADY(hls_inst_m_axi_v4a0_RREADY),
        .m_axi_v4a0_RRESP(hls_inst_m_axi_v4a0_RRESP),
        .m_axi_v4a0_RVALID(hls_inst_m_axi_v4a0_RVALID),
        .m_axi_v4a0_WDATA(hls_inst_m_axi_v4a0_WDATA),
        .m_axi_v4a0_WID(hls_inst_m_axi_v4a0_WID),
        .m_axi_v4a0_WLAST(hls_inst_m_axi_v4a0_WLAST),
        .m_axi_v4a0_WREADY(hls_inst_m_axi_v4a0_WREADY),
        .m_axi_v4a0_WSTRB(hls_inst_m_axi_v4a0_WSTRB),
        .m_axi_v4a0_WVALID(hls_inst_m_axi_v4a0_WVALID),
        .m_axi_v4a1_ARADDR(hls_inst_m_axi_v4a1_ARADDR),
        .m_axi_v4a1_ARBURST(hls_inst_m_axi_v4a1_ARBURST),
        .m_axi_v4a1_ARCACHE(hls_inst_m_axi_v4a1_ARCACHE),
        .m_axi_v4a1_ARID(hls_inst_m_axi_v4a1_ARID),
        .m_axi_v4a1_ARLEN(hls_inst_m_axi_v4a1_ARLEN),
        .m_axi_v4a1_ARLOCK(hls_inst_m_axi_v4a1_ARLOCK),
        .m_axi_v4a1_ARPROT(hls_inst_m_axi_v4a1_ARPROT),
        .m_axi_v4a1_ARQOS(hls_inst_m_axi_v4a1_ARQOS),
        .m_axi_v4a1_ARREADY(hls_inst_m_axi_v4a1_ARREADY),
        .m_axi_v4a1_ARREGION(hls_inst_m_axi_v4a1_ARREGION),
        .m_axi_v4a1_ARSIZE(hls_inst_m_axi_v4a1_ARSIZE),
        .m_axi_v4a1_ARVALID(hls_inst_m_axi_v4a1_ARVALID),
        .m_axi_v4a1_AWADDR(hls_inst_m_axi_v4a1_AWADDR),
        .m_axi_v4a1_AWBURST(hls_inst_m_axi_v4a1_AWBURST),
        .m_axi_v4a1_AWCACHE(hls_inst_m_axi_v4a1_AWCACHE),
        .m_axi_v4a1_AWID(hls_inst_m_axi_v4a1_AWID),
        .m_axi_v4a1_AWLEN(hls_inst_m_axi_v4a1_AWLEN),
        .m_axi_v4a1_AWLOCK(hls_inst_m_axi_v4a1_AWLOCK),
        .m_axi_v4a1_AWPROT(hls_inst_m_axi_v4a1_AWPROT),
        .m_axi_v4a1_AWQOS(hls_inst_m_axi_v4a1_AWQOS),
        .m_axi_v4a1_AWREADY(hls_inst_m_axi_v4a1_AWREADY),
        .m_axi_v4a1_AWREGION(hls_inst_m_axi_v4a1_AWREGION),
        .m_axi_v4a1_AWSIZE(hls_inst_m_axi_v4a1_AWSIZE),
        .m_axi_v4a1_AWVALID(hls_inst_m_axi_v4a1_AWVALID),
        .m_axi_v4a1_BID(hls_inst_m_axi_v4a1_BID),
        .m_axi_v4a1_BREADY(hls_inst_m_axi_v4a1_BREADY),
        .m_axi_v4a1_BRESP(hls_inst_m_axi_v4a1_BRESP),
        .m_axi_v4a1_BVALID(hls_inst_m_axi_v4a1_BVALID),
        .m_axi_v4a1_RDATA(hls_inst_m_axi_v4a1_RDATA),
        .m_axi_v4a1_RID(hls_inst_m_axi_v4a1_RID),
        .m_axi_v4a1_RLAST(hls_inst_m_axi_v4a1_RLAST),
        .m_axi_v4a1_RREADY(hls_inst_m_axi_v4a1_RREADY),
        .m_axi_v4a1_RRESP(hls_inst_m_axi_v4a1_RRESP),
        .m_axi_v4a1_RVALID(hls_inst_m_axi_v4a1_RVALID),
        .m_axi_v4a1_WDATA(hls_inst_m_axi_v4a1_WDATA),
        .m_axi_v4a1_WID(hls_inst_m_axi_v4a1_WID),
        .m_axi_v4a1_WLAST(hls_inst_m_axi_v4a1_WLAST),
        .m_axi_v4a1_WREADY(hls_inst_m_axi_v4a1_WREADY),
        .m_axi_v4a1_WSTRB(hls_inst_m_axi_v4a1_WSTRB),
        .m_axi_v4a1_WVALID(hls_inst_m_axi_v4a1_WVALID),
        .m_axi_v4a2_ARADDR(hls_inst_m_axi_v4a2_ARADDR),
        .m_axi_v4a2_ARBURST(hls_inst_m_axi_v4a2_ARBURST),
        .m_axi_v4a2_ARCACHE(hls_inst_m_axi_v4a2_ARCACHE),
        .m_axi_v4a2_ARID(hls_inst_m_axi_v4a2_ARID),
        .m_axi_v4a2_ARLEN(hls_inst_m_axi_v4a2_ARLEN),
        .m_axi_v4a2_ARLOCK(hls_inst_m_axi_v4a2_ARLOCK),
        .m_axi_v4a2_ARPROT(hls_inst_m_axi_v4a2_ARPROT),
        .m_axi_v4a2_ARQOS(hls_inst_m_axi_v4a2_ARQOS),
        .m_axi_v4a2_ARREADY(hls_inst_m_axi_v4a2_ARREADY),
        .m_axi_v4a2_ARREGION(hls_inst_m_axi_v4a2_ARREGION),
        .m_axi_v4a2_ARSIZE(hls_inst_m_axi_v4a2_ARSIZE),
        .m_axi_v4a2_ARVALID(hls_inst_m_axi_v4a2_ARVALID),
        .m_axi_v4a2_AWADDR(hls_inst_m_axi_v4a2_AWADDR),
        .m_axi_v4a2_AWBURST(hls_inst_m_axi_v4a2_AWBURST),
        .m_axi_v4a2_AWCACHE(hls_inst_m_axi_v4a2_AWCACHE),
        .m_axi_v4a2_AWID(hls_inst_m_axi_v4a2_AWID),
        .m_axi_v4a2_AWLEN(hls_inst_m_axi_v4a2_AWLEN),
        .m_axi_v4a2_AWLOCK(hls_inst_m_axi_v4a2_AWLOCK),
        .m_axi_v4a2_AWPROT(hls_inst_m_axi_v4a2_AWPROT),
        .m_axi_v4a2_AWQOS(hls_inst_m_axi_v4a2_AWQOS),
        .m_axi_v4a2_AWREADY(hls_inst_m_axi_v4a2_AWREADY),
        .m_axi_v4a2_AWREGION(hls_inst_m_axi_v4a2_AWREGION),
        .m_axi_v4a2_AWSIZE(hls_inst_m_axi_v4a2_AWSIZE),
        .m_axi_v4a2_AWVALID(hls_inst_m_axi_v4a2_AWVALID),
        .m_axi_v4a2_BID(hls_inst_m_axi_v4a2_BID),
        .m_axi_v4a2_BREADY(hls_inst_m_axi_v4a2_BREADY),
        .m_axi_v4a2_BRESP(hls_inst_m_axi_v4a2_BRESP),
        .m_axi_v4a2_BVALID(hls_inst_m_axi_v4a2_BVALID),
        .m_axi_v4a2_RDATA(hls_inst_m_axi_v4a2_RDATA),
        .m_axi_v4a2_RID(hls_inst_m_axi_v4a2_RID),
        .m_axi_v4a2_RLAST(hls_inst_m_axi_v4a2_RLAST),
        .m_axi_v4a2_RREADY(hls_inst_m_axi_v4a2_RREADY),
        .m_axi_v4a2_RRESP(hls_inst_m_axi_v4a2_RRESP),
        .m_axi_v4a2_RVALID(hls_inst_m_axi_v4a2_RVALID),
        .m_axi_v4a2_WDATA(hls_inst_m_axi_v4a2_WDATA),
        .m_axi_v4a2_WID(hls_inst_m_axi_v4a2_WID),
        .m_axi_v4a2_WLAST(hls_inst_m_axi_v4a2_WLAST),
        .m_axi_v4a2_WREADY(hls_inst_m_axi_v4a2_WREADY),
        .m_axi_v4a2_WSTRB(hls_inst_m_axi_v4a2_WSTRB),
        .m_axi_v4a2_WVALID(hls_inst_m_axi_v4a2_WVALID),
        .m_axi_v4l0_ARADDR(hls_inst_m_axi_v4l0_ARADDR),
        .m_axi_v4l0_ARBURST(hls_inst_m_axi_v4l0_ARBURST),
        .m_axi_v4l0_ARCACHE(hls_inst_m_axi_v4l0_ARCACHE),
        .m_axi_v4l0_ARID(hls_inst_m_axi_v4l0_ARID),
        .m_axi_v4l0_ARLEN(hls_inst_m_axi_v4l0_ARLEN),
        .m_axi_v4l0_ARLOCK(hls_inst_m_axi_v4l0_ARLOCK),
        .m_axi_v4l0_ARPROT(hls_inst_m_axi_v4l0_ARPROT),
        .m_axi_v4l0_ARQOS(hls_inst_m_axi_v4l0_ARQOS),
        .m_axi_v4l0_ARREADY(hls_inst_m_axi_v4l0_ARREADY),
        .m_axi_v4l0_ARREGION(hls_inst_m_axi_v4l0_ARREGION),
        .m_axi_v4l0_ARSIZE(hls_inst_m_axi_v4l0_ARSIZE),
        .m_axi_v4l0_ARVALID(hls_inst_m_axi_v4l0_ARVALID),
        .m_axi_v4l0_AWADDR(hls_inst_m_axi_v4l0_AWADDR),
        .m_axi_v4l0_AWBURST(hls_inst_m_axi_v4l0_AWBURST),
        .m_axi_v4l0_AWCACHE(hls_inst_m_axi_v4l0_AWCACHE),
        .m_axi_v4l0_AWID(hls_inst_m_axi_v4l0_AWID),
        .m_axi_v4l0_AWLEN(hls_inst_m_axi_v4l0_AWLEN),
        .m_axi_v4l0_AWLOCK(hls_inst_m_axi_v4l0_AWLOCK),
        .m_axi_v4l0_AWPROT(hls_inst_m_axi_v4l0_AWPROT),
        .m_axi_v4l0_AWQOS(hls_inst_m_axi_v4l0_AWQOS),
        .m_axi_v4l0_AWREADY(hls_inst_m_axi_v4l0_AWREADY),
        .m_axi_v4l0_AWREGION(hls_inst_m_axi_v4l0_AWREGION),
        .m_axi_v4l0_AWSIZE(hls_inst_m_axi_v4l0_AWSIZE),
        .m_axi_v4l0_AWVALID(hls_inst_m_axi_v4l0_AWVALID),
        .m_axi_v4l0_BID(hls_inst_m_axi_v4l0_BID),
        .m_axi_v4l0_BREADY(hls_inst_m_axi_v4l0_BREADY),
        .m_axi_v4l0_BRESP(hls_inst_m_axi_v4l0_BRESP),
        .m_axi_v4l0_BVALID(hls_inst_m_axi_v4l0_BVALID),
        .m_axi_v4l0_RDATA(hls_inst_m_axi_v4l0_RDATA),
        .m_axi_v4l0_RID(hls_inst_m_axi_v4l0_RID),
        .m_axi_v4l0_RLAST(hls_inst_m_axi_v4l0_RLAST),
        .m_axi_v4l0_RREADY(hls_inst_m_axi_v4l0_RREADY),
        .m_axi_v4l0_RRESP(hls_inst_m_axi_v4l0_RRESP),
        .m_axi_v4l0_RVALID(hls_inst_m_axi_v4l0_RVALID),
        .m_axi_v4l0_WDATA(hls_inst_m_axi_v4l0_WDATA),
        .m_axi_v4l0_WID(hls_inst_m_axi_v4l0_WID),
        .m_axi_v4l0_WLAST(hls_inst_m_axi_v4l0_WLAST),
        .m_axi_v4l0_WREADY(hls_inst_m_axi_v4l0_WREADY),
        .m_axi_v4l0_WSTRB(hls_inst_m_axi_v4l0_WSTRB),
        .m_axi_v4l0_WVALID(hls_inst_m_axi_v4l0_WVALID),
        .m_axi_v4l1_ARADDR(hls_inst_m_axi_v4l1_ARADDR),
        .m_axi_v4l1_ARBURST(hls_inst_m_axi_v4l1_ARBURST),
        .m_axi_v4l1_ARCACHE(hls_inst_m_axi_v4l1_ARCACHE),
        .m_axi_v4l1_ARID(hls_inst_m_axi_v4l1_ARID),
        .m_axi_v4l1_ARLEN(hls_inst_m_axi_v4l1_ARLEN),
        .m_axi_v4l1_ARLOCK(hls_inst_m_axi_v4l1_ARLOCK),
        .m_axi_v4l1_ARPROT(hls_inst_m_axi_v4l1_ARPROT),
        .m_axi_v4l1_ARQOS(hls_inst_m_axi_v4l1_ARQOS),
        .m_axi_v4l1_ARREADY(hls_inst_m_axi_v4l1_ARREADY),
        .m_axi_v4l1_ARREGION(hls_inst_m_axi_v4l1_ARREGION),
        .m_axi_v4l1_ARSIZE(hls_inst_m_axi_v4l1_ARSIZE),
        .m_axi_v4l1_ARVALID(hls_inst_m_axi_v4l1_ARVALID),
        .m_axi_v4l1_AWADDR(hls_inst_m_axi_v4l1_AWADDR),
        .m_axi_v4l1_AWBURST(hls_inst_m_axi_v4l1_AWBURST),
        .m_axi_v4l1_AWCACHE(hls_inst_m_axi_v4l1_AWCACHE),
        .m_axi_v4l1_AWID(hls_inst_m_axi_v4l1_AWID),
        .m_axi_v4l1_AWLEN(hls_inst_m_axi_v4l1_AWLEN),
        .m_axi_v4l1_AWLOCK(hls_inst_m_axi_v4l1_AWLOCK),
        .m_axi_v4l1_AWPROT(hls_inst_m_axi_v4l1_AWPROT),
        .m_axi_v4l1_AWQOS(hls_inst_m_axi_v4l1_AWQOS),
        .m_axi_v4l1_AWREADY(hls_inst_m_axi_v4l1_AWREADY),
        .m_axi_v4l1_AWREGION(hls_inst_m_axi_v4l1_AWREGION),
        .m_axi_v4l1_AWSIZE(hls_inst_m_axi_v4l1_AWSIZE),
        .m_axi_v4l1_AWVALID(hls_inst_m_axi_v4l1_AWVALID),
        .m_axi_v4l1_BID(hls_inst_m_axi_v4l1_BID),
        .m_axi_v4l1_BREADY(hls_inst_m_axi_v4l1_BREADY),
        .m_axi_v4l1_BRESP(hls_inst_m_axi_v4l1_BRESP),
        .m_axi_v4l1_BVALID(hls_inst_m_axi_v4l1_BVALID),
        .m_axi_v4l1_RDATA(hls_inst_m_axi_v4l1_RDATA),
        .m_axi_v4l1_RID(hls_inst_m_axi_v4l1_RID),
        .m_axi_v4l1_RLAST(hls_inst_m_axi_v4l1_RLAST),
        .m_axi_v4l1_RREADY(hls_inst_m_axi_v4l1_RREADY),
        .m_axi_v4l1_RRESP(hls_inst_m_axi_v4l1_RRESP),
        .m_axi_v4l1_RVALID(hls_inst_m_axi_v4l1_RVALID),
        .m_axi_v4l1_WDATA(hls_inst_m_axi_v4l1_WDATA),
        .m_axi_v4l1_WID(hls_inst_m_axi_v4l1_WID),
        .m_axi_v4l1_WLAST(hls_inst_m_axi_v4l1_WLAST),
        .m_axi_v4l1_WREADY(hls_inst_m_axi_v4l1_WREADY),
        .m_axi_v4l1_WSTRB(hls_inst_m_axi_v4l1_WSTRB),
        .m_axi_v4l1_WVALID(hls_inst_m_axi_v4l1_WVALID),
        .m_axi_v4l2_ARADDR(hls_inst_m_axi_v4l2_ARADDR),
        .m_axi_v4l2_ARBURST(hls_inst_m_axi_v4l2_ARBURST),
        .m_axi_v4l2_ARCACHE(hls_inst_m_axi_v4l2_ARCACHE),
        .m_axi_v4l2_ARID(hls_inst_m_axi_v4l2_ARID),
        .m_axi_v4l2_ARLEN(hls_inst_m_axi_v4l2_ARLEN),
        .m_axi_v4l2_ARLOCK(hls_inst_m_axi_v4l2_ARLOCK),
        .m_axi_v4l2_ARPROT(hls_inst_m_axi_v4l2_ARPROT),
        .m_axi_v4l2_ARQOS(hls_inst_m_axi_v4l2_ARQOS),
        .m_axi_v4l2_ARREADY(hls_inst_m_axi_v4l2_ARREADY),
        .m_axi_v4l2_ARREGION(hls_inst_m_axi_v4l2_ARREGION),
        .m_axi_v4l2_ARSIZE(hls_inst_m_axi_v4l2_ARSIZE),
        .m_axi_v4l2_ARVALID(hls_inst_m_axi_v4l2_ARVALID),
        .m_axi_v4l2_AWADDR(hls_inst_m_axi_v4l2_AWADDR),
        .m_axi_v4l2_AWBURST(hls_inst_m_axi_v4l2_AWBURST),
        .m_axi_v4l2_AWCACHE(hls_inst_m_axi_v4l2_AWCACHE),
        .m_axi_v4l2_AWID(hls_inst_m_axi_v4l2_AWID),
        .m_axi_v4l2_AWLEN(hls_inst_m_axi_v4l2_AWLEN),
        .m_axi_v4l2_AWLOCK(hls_inst_m_axi_v4l2_AWLOCK),
        .m_axi_v4l2_AWPROT(hls_inst_m_axi_v4l2_AWPROT),
        .m_axi_v4l2_AWQOS(hls_inst_m_axi_v4l2_AWQOS),
        .m_axi_v4l2_AWREADY(hls_inst_m_axi_v4l2_AWREADY),
        .m_axi_v4l2_AWREGION(hls_inst_m_axi_v4l2_AWREGION),
        .m_axi_v4l2_AWSIZE(hls_inst_m_axi_v4l2_AWSIZE),
        .m_axi_v4l2_AWVALID(hls_inst_m_axi_v4l2_AWVALID),
        .m_axi_v4l2_BID(hls_inst_m_axi_v4l2_BID),
        .m_axi_v4l2_BREADY(hls_inst_m_axi_v4l2_BREADY),
        .m_axi_v4l2_BRESP(hls_inst_m_axi_v4l2_BRESP),
        .m_axi_v4l2_BVALID(hls_inst_m_axi_v4l2_BVALID),
        .m_axi_v4l2_RDATA(hls_inst_m_axi_v4l2_RDATA),
        .m_axi_v4l2_RID(hls_inst_m_axi_v4l2_RID),
        .m_axi_v4l2_RLAST(hls_inst_m_axi_v4l2_RLAST),
        .m_axi_v4l2_RREADY(hls_inst_m_axi_v4l2_RREADY),
        .m_axi_v4l2_RRESP(hls_inst_m_axi_v4l2_RRESP),
        .m_axi_v4l2_RVALID(hls_inst_m_axi_v4l2_RVALID),
        .m_axi_v4l2_WDATA(hls_inst_m_axi_v4l2_WDATA),
        .m_axi_v4l2_WID(hls_inst_m_axi_v4l2_WID),
        .m_axi_v4l2_WLAST(hls_inst_m_axi_v4l2_WLAST),
        .m_axi_v4l2_WREADY(hls_inst_m_axi_v4l2_WREADY),
        .m_axi_v4l2_WSTRB(hls_inst_m_axi_v4l2_WSTRB),
        .m_axi_v4l2_WVALID(hls_inst_m_axi_v4l2_WVALID),
        .m_axi_v4u0_ARADDR(hls_inst_m_axi_v4u0_ARADDR),
        .m_axi_v4u0_ARBURST(hls_inst_m_axi_v4u0_ARBURST),
        .m_axi_v4u0_ARCACHE(hls_inst_m_axi_v4u0_ARCACHE),
        .m_axi_v4u0_ARID(hls_inst_m_axi_v4u0_ARID),
        .m_axi_v4u0_ARLEN(hls_inst_m_axi_v4u0_ARLEN),
        .m_axi_v4u0_ARLOCK(hls_inst_m_axi_v4u0_ARLOCK),
        .m_axi_v4u0_ARPROT(hls_inst_m_axi_v4u0_ARPROT),
        .m_axi_v4u0_ARQOS(hls_inst_m_axi_v4u0_ARQOS),
        .m_axi_v4u0_ARREADY(hls_inst_m_axi_v4u0_ARREADY),
        .m_axi_v4u0_ARREGION(hls_inst_m_axi_v4u0_ARREGION),
        .m_axi_v4u0_ARSIZE(hls_inst_m_axi_v4u0_ARSIZE),
        .m_axi_v4u0_ARVALID(hls_inst_m_axi_v4u0_ARVALID),
        .m_axi_v4u0_AWADDR(hls_inst_m_axi_v4u0_AWADDR),
        .m_axi_v4u0_AWBURST(hls_inst_m_axi_v4u0_AWBURST),
        .m_axi_v4u0_AWCACHE(hls_inst_m_axi_v4u0_AWCACHE),
        .m_axi_v4u0_AWID(hls_inst_m_axi_v4u0_AWID),
        .m_axi_v4u0_AWLEN(hls_inst_m_axi_v4u0_AWLEN),
        .m_axi_v4u0_AWLOCK(hls_inst_m_axi_v4u0_AWLOCK),
        .m_axi_v4u0_AWPROT(hls_inst_m_axi_v4u0_AWPROT),
        .m_axi_v4u0_AWQOS(hls_inst_m_axi_v4u0_AWQOS),
        .m_axi_v4u0_AWREADY(hls_inst_m_axi_v4u0_AWREADY),
        .m_axi_v4u0_AWREGION(hls_inst_m_axi_v4u0_AWREGION),
        .m_axi_v4u0_AWSIZE(hls_inst_m_axi_v4u0_AWSIZE),
        .m_axi_v4u0_AWVALID(hls_inst_m_axi_v4u0_AWVALID),
        .m_axi_v4u0_BID(hls_inst_m_axi_v4u0_BID),
        .m_axi_v4u0_BREADY(hls_inst_m_axi_v4u0_BREADY),
        .m_axi_v4u0_BRESP(hls_inst_m_axi_v4u0_BRESP),
        .m_axi_v4u0_BVALID(hls_inst_m_axi_v4u0_BVALID),
        .m_axi_v4u0_RDATA(hls_inst_m_axi_v4u0_RDATA),
        .m_axi_v4u0_RID(hls_inst_m_axi_v4u0_RID),
        .m_axi_v4u0_RLAST(hls_inst_m_axi_v4u0_RLAST),
        .m_axi_v4u0_RREADY(hls_inst_m_axi_v4u0_RREADY),
        .m_axi_v4u0_RRESP(hls_inst_m_axi_v4u0_RRESP),
        .m_axi_v4u0_RVALID(hls_inst_m_axi_v4u0_RVALID),
        .m_axi_v4u0_WDATA(hls_inst_m_axi_v4u0_WDATA),
        .m_axi_v4u0_WID(hls_inst_m_axi_v4u0_WID),
        .m_axi_v4u0_WLAST(hls_inst_m_axi_v4u0_WLAST),
        .m_axi_v4u0_WREADY(hls_inst_m_axi_v4u0_WREADY),
        .m_axi_v4u0_WSTRB(hls_inst_m_axi_v4u0_WSTRB),
        .m_axi_v4u0_WVALID(hls_inst_m_axi_v4u0_WVALID),
        .m_axi_v4u1_ARADDR(hls_inst_m_axi_v4u1_ARADDR),
        .m_axi_v4u1_ARBURST(hls_inst_m_axi_v4u1_ARBURST),
        .m_axi_v4u1_ARCACHE(hls_inst_m_axi_v4u1_ARCACHE),
        .m_axi_v4u1_ARID(hls_inst_m_axi_v4u1_ARID),
        .m_axi_v4u1_ARLEN(hls_inst_m_axi_v4u1_ARLEN),
        .m_axi_v4u1_ARLOCK(hls_inst_m_axi_v4u1_ARLOCK),
        .m_axi_v4u1_ARPROT(hls_inst_m_axi_v4u1_ARPROT),
        .m_axi_v4u1_ARQOS(hls_inst_m_axi_v4u1_ARQOS),
        .m_axi_v4u1_ARREADY(hls_inst_m_axi_v4u1_ARREADY),
        .m_axi_v4u1_ARREGION(hls_inst_m_axi_v4u1_ARREGION),
        .m_axi_v4u1_ARSIZE(hls_inst_m_axi_v4u1_ARSIZE),
        .m_axi_v4u1_ARVALID(hls_inst_m_axi_v4u1_ARVALID),
        .m_axi_v4u1_AWADDR(hls_inst_m_axi_v4u1_AWADDR),
        .m_axi_v4u1_AWBURST(hls_inst_m_axi_v4u1_AWBURST),
        .m_axi_v4u1_AWCACHE(hls_inst_m_axi_v4u1_AWCACHE),
        .m_axi_v4u1_AWID(hls_inst_m_axi_v4u1_AWID),
        .m_axi_v4u1_AWLEN(hls_inst_m_axi_v4u1_AWLEN),
        .m_axi_v4u1_AWLOCK(hls_inst_m_axi_v4u1_AWLOCK),
        .m_axi_v4u1_AWPROT(hls_inst_m_axi_v4u1_AWPROT),
        .m_axi_v4u1_AWQOS(hls_inst_m_axi_v4u1_AWQOS),
        .m_axi_v4u1_AWREADY(hls_inst_m_axi_v4u1_AWREADY),
        .m_axi_v4u1_AWREGION(hls_inst_m_axi_v4u1_AWREGION),
        .m_axi_v4u1_AWSIZE(hls_inst_m_axi_v4u1_AWSIZE),
        .m_axi_v4u1_AWVALID(hls_inst_m_axi_v4u1_AWVALID),
        .m_axi_v4u1_BID(hls_inst_m_axi_v4u1_BID),
        .m_axi_v4u1_BREADY(hls_inst_m_axi_v4u1_BREADY),
        .m_axi_v4u1_BRESP(hls_inst_m_axi_v4u1_BRESP),
        .m_axi_v4u1_BVALID(hls_inst_m_axi_v4u1_BVALID),
        .m_axi_v4u1_RDATA(hls_inst_m_axi_v4u1_RDATA),
        .m_axi_v4u1_RID(hls_inst_m_axi_v4u1_RID),
        .m_axi_v4u1_RLAST(hls_inst_m_axi_v4u1_RLAST),
        .m_axi_v4u1_RREADY(hls_inst_m_axi_v4u1_RREADY),
        .m_axi_v4u1_RRESP(hls_inst_m_axi_v4u1_RRESP),
        .m_axi_v4u1_RVALID(hls_inst_m_axi_v4u1_RVALID),
        .m_axi_v4u1_WDATA(hls_inst_m_axi_v4u1_WDATA),
        .m_axi_v4u1_WID(hls_inst_m_axi_v4u1_WID),
        .m_axi_v4u1_WLAST(hls_inst_m_axi_v4u1_WLAST),
        .m_axi_v4u1_WREADY(hls_inst_m_axi_v4u1_WREADY),
        .m_axi_v4u1_WSTRB(hls_inst_m_axi_v4u1_WSTRB),
        .m_axi_v4u1_WVALID(hls_inst_m_axi_v4u1_WVALID),
        .m_axi_v4u2_ARADDR(hls_inst_m_axi_v4u2_ARADDR),
        .m_axi_v4u2_ARBURST(hls_inst_m_axi_v4u2_ARBURST),
        .m_axi_v4u2_ARCACHE(hls_inst_m_axi_v4u2_ARCACHE),
        .m_axi_v4u2_ARID(hls_inst_m_axi_v4u2_ARID),
        .m_axi_v4u2_ARLEN(hls_inst_m_axi_v4u2_ARLEN),
        .m_axi_v4u2_ARLOCK(hls_inst_m_axi_v4u2_ARLOCK),
        .m_axi_v4u2_ARPROT(hls_inst_m_axi_v4u2_ARPROT),
        .m_axi_v4u2_ARQOS(hls_inst_m_axi_v4u2_ARQOS),
        .m_axi_v4u2_ARREADY(hls_inst_m_axi_v4u2_ARREADY),
        .m_axi_v4u2_ARREGION(hls_inst_m_axi_v4u2_ARREGION),
        .m_axi_v4u2_ARSIZE(hls_inst_m_axi_v4u2_ARSIZE),
        .m_axi_v4u2_ARVALID(hls_inst_m_axi_v4u2_ARVALID),
        .m_axi_v4u2_AWADDR(hls_inst_m_axi_v4u2_AWADDR),
        .m_axi_v4u2_AWBURST(hls_inst_m_axi_v4u2_AWBURST),
        .m_axi_v4u2_AWCACHE(hls_inst_m_axi_v4u2_AWCACHE),
        .m_axi_v4u2_AWID(hls_inst_m_axi_v4u2_AWID),
        .m_axi_v4u2_AWLEN(hls_inst_m_axi_v4u2_AWLEN),
        .m_axi_v4u2_AWLOCK(hls_inst_m_axi_v4u2_AWLOCK),
        .m_axi_v4u2_AWPROT(hls_inst_m_axi_v4u2_AWPROT),
        .m_axi_v4u2_AWQOS(hls_inst_m_axi_v4u2_AWQOS),
        .m_axi_v4u2_AWREADY(hls_inst_m_axi_v4u2_AWREADY),
        .m_axi_v4u2_AWREGION(hls_inst_m_axi_v4u2_AWREGION),
        .m_axi_v4u2_AWSIZE(hls_inst_m_axi_v4u2_AWSIZE),
        .m_axi_v4u2_AWVALID(hls_inst_m_axi_v4u2_AWVALID),
        .m_axi_v4u2_BID(hls_inst_m_axi_v4u2_BID),
        .m_axi_v4u2_BREADY(hls_inst_m_axi_v4u2_BREADY),
        .m_axi_v4u2_BRESP(hls_inst_m_axi_v4u2_BRESP),
        .m_axi_v4u2_BVALID(hls_inst_m_axi_v4u2_BVALID),
        .m_axi_v4u2_RDATA(hls_inst_m_axi_v4u2_RDATA),
        .m_axi_v4u2_RID(hls_inst_m_axi_v4u2_RID),
        .m_axi_v4u2_RLAST(hls_inst_m_axi_v4u2_RLAST),
        .m_axi_v4u2_RREADY(hls_inst_m_axi_v4u2_RREADY),
        .m_axi_v4u2_RRESP(hls_inst_m_axi_v4u2_RRESP),
        .m_axi_v4u2_RVALID(hls_inst_m_axi_v4u2_RVALID),
        .m_axi_v4u2_WDATA(hls_inst_m_axi_v4u2_WDATA),
        .m_axi_v4u2_WID(hls_inst_m_axi_v4u2_WID),
        .m_axi_v4u2_WLAST(hls_inst_m_axi_v4u2_WLAST),
        .m_axi_v4u2_WREADY(hls_inst_m_axi_v4u2_WREADY),
        .m_axi_v4u2_WSTRB(hls_inst_m_axi_v4u2_WSTRB),
        .m_axi_v4u2_WVALID(hls_inst_m_axi_v4u2_WVALID),
        .m_axi_v4u3_ARADDR(hls_inst_m_axi_v4u3_ARADDR),
        .m_axi_v4u3_ARBURST(hls_inst_m_axi_v4u3_ARBURST),
        .m_axi_v4u3_ARCACHE(hls_inst_m_axi_v4u3_ARCACHE),
        .m_axi_v4u3_ARID(hls_inst_m_axi_v4u3_ARID),
        .m_axi_v4u3_ARLEN(hls_inst_m_axi_v4u3_ARLEN),
        .m_axi_v4u3_ARLOCK(hls_inst_m_axi_v4u3_ARLOCK),
        .m_axi_v4u3_ARPROT(hls_inst_m_axi_v4u3_ARPROT),
        .m_axi_v4u3_ARQOS(hls_inst_m_axi_v4u3_ARQOS),
        .m_axi_v4u3_ARREADY(hls_inst_m_axi_v4u3_ARREADY),
        .m_axi_v4u3_ARREGION(hls_inst_m_axi_v4u3_ARREGION),
        .m_axi_v4u3_ARSIZE(hls_inst_m_axi_v4u3_ARSIZE),
        .m_axi_v4u3_ARVALID(hls_inst_m_axi_v4u3_ARVALID),
        .m_axi_v4u3_AWADDR(hls_inst_m_axi_v4u3_AWADDR),
        .m_axi_v4u3_AWBURST(hls_inst_m_axi_v4u3_AWBURST),
        .m_axi_v4u3_AWCACHE(hls_inst_m_axi_v4u3_AWCACHE),
        .m_axi_v4u3_AWID(hls_inst_m_axi_v4u3_AWID),
        .m_axi_v4u3_AWLEN(hls_inst_m_axi_v4u3_AWLEN),
        .m_axi_v4u3_AWLOCK(hls_inst_m_axi_v4u3_AWLOCK),
        .m_axi_v4u3_AWPROT(hls_inst_m_axi_v4u3_AWPROT),
        .m_axi_v4u3_AWQOS(hls_inst_m_axi_v4u3_AWQOS),
        .m_axi_v4u3_AWREADY(hls_inst_m_axi_v4u3_AWREADY),
        .m_axi_v4u3_AWREGION(hls_inst_m_axi_v4u3_AWREGION),
        .m_axi_v4u3_AWSIZE(hls_inst_m_axi_v4u3_AWSIZE),
        .m_axi_v4u3_AWVALID(hls_inst_m_axi_v4u3_AWVALID),
        .m_axi_v4u3_BID(hls_inst_m_axi_v4u3_BID),
        .m_axi_v4u3_BREADY(hls_inst_m_axi_v4u3_BREADY),
        .m_axi_v4u3_BRESP(hls_inst_m_axi_v4u3_BRESP),
        .m_axi_v4u3_BVALID(hls_inst_m_axi_v4u3_BVALID),
        .m_axi_v4u3_RDATA(hls_inst_m_axi_v4u3_RDATA),
        .m_axi_v4u3_RID(hls_inst_m_axi_v4u3_RID),
        .m_axi_v4u3_RLAST(hls_inst_m_axi_v4u3_RLAST),
        .m_axi_v4u3_RREADY(hls_inst_m_axi_v4u3_RREADY),
        .m_axi_v4u3_RRESP(hls_inst_m_axi_v4u3_RRESP),
        .m_axi_v4u3_RVALID(hls_inst_m_axi_v4u3_RVALID),
        .m_axi_v4u3_WDATA(hls_inst_m_axi_v4u3_WDATA),
        .m_axi_v4u3_WID(hls_inst_m_axi_v4u3_WID),
        .m_axi_v4u3_WLAST(hls_inst_m_axi_v4u3_WLAST),
        .m_axi_v4u3_WREADY(hls_inst_m_axi_v4u3_WREADY),
        .m_axi_v4u3_WSTRB(hls_inst_m_axi_v4u3_WSTRB),
        .m_axi_v4u3_WVALID(hls_inst_m_axi_v4u3_WVALID),
        .muladds(hls_inst_muladds),
        .muladds_ap_vld(hls_inst_muladds_ap_vld),
        .s_axi_control_ARADDR(s_axi_control_0_1_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_0_1_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_0_1_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_0_1_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_0_1_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_0_1_AWVALID),
        .s_axi_control_BREADY(s_axi_control_0_1_BREADY),
        .s_axi_control_BRESP(s_axi_control_0_1_BRESP),
        .s_axi_control_BVALID(s_axi_control_0_1_BVALID),
        .s_axi_control_RDATA(s_axi_control_0_1_RDATA),
        .s_axi_control_RREADY(s_axi_control_0_1_RREADY),
        .s_axi_control_RRESP(s_axi_control_0_1_RRESP),
        .s_axi_control_RVALID(s_axi_control_0_1_RVALID),
        .s_axi_control_WDATA(s_axi_control_0_1_WDATA),
        .s_axi_control_WREADY(s_axi_control_0_1_WREADY),
        .s_axi_control_WSTRB(s_axi_control_0_1_WSTRB),
        .s_axi_control_WVALID(s_axi_control_0_1_WVALID),
        .status(hls_inst_status),
        .status_ap_vld(hls_inst_status_ap_vld));
endmodule
