// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:hls:large_getrf_v4:1.0
// IP Revision: 2609280653

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  status_ap_vld,
  muladds_ap_vld,
  divisions_ap_vld,
  s_axi_control_AWADDR,
  s_axi_control_AWVALID,
  s_axi_control_AWREADY,
  s_axi_control_WDATA,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  s_axi_control_WREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_BREADY,
  s_axi_control_ARADDR,
  s_axi_control_ARVALID,
  s_axi_control_ARREADY,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_v4a0_AWID,
  m_axi_v4a0_AWADDR,
  m_axi_v4a0_AWLEN,
  m_axi_v4a0_AWSIZE,
  m_axi_v4a0_AWBURST,
  m_axi_v4a0_AWLOCK,
  m_axi_v4a0_AWREGION,
  m_axi_v4a0_AWCACHE,
  m_axi_v4a0_AWPROT,
  m_axi_v4a0_AWQOS,
  m_axi_v4a0_AWVALID,
  m_axi_v4a0_AWREADY,
  m_axi_v4a0_WID,
  m_axi_v4a0_WDATA,
  m_axi_v4a0_WSTRB,
  m_axi_v4a0_WLAST,
  m_axi_v4a0_WVALID,
  m_axi_v4a0_WREADY,
  m_axi_v4a0_BID,
  m_axi_v4a0_BRESP,
  m_axi_v4a0_BVALID,
  m_axi_v4a0_BREADY,
  m_axi_v4a0_ARID,
  m_axi_v4a0_ARADDR,
  m_axi_v4a0_ARLEN,
  m_axi_v4a0_ARSIZE,
  m_axi_v4a0_ARBURST,
  m_axi_v4a0_ARLOCK,
  m_axi_v4a0_ARREGION,
  m_axi_v4a0_ARCACHE,
  m_axi_v4a0_ARPROT,
  m_axi_v4a0_ARQOS,
  m_axi_v4a0_ARVALID,
  m_axi_v4a0_ARREADY,
  m_axi_v4a0_RID,
  m_axi_v4a0_RDATA,
  m_axi_v4a0_RRESP,
  m_axi_v4a0_RLAST,
  m_axi_v4a0_RVALID,
  m_axi_v4a0_RREADY,
  m_axi_v4a1_AWID,
  m_axi_v4a1_AWADDR,
  m_axi_v4a1_AWLEN,
  m_axi_v4a1_AWSIZE,
  m_axi_v4a1_AWBURST,
  m_axi_v4a1_AWLOCK,
  m_axi_v4a1_AWREGION,
  m_axi_v4a1_AWCACHE,
  m_axi_v4a1_AWPROT,
  m_axi_v4a1_AWQOS,
  m_axi_v4a1_AWVALID,
  m_axi_v4a1_AWREADY,
  m_axi_v4a1_WID,
  m_axi_v4a1_WDATA,
  m_axi_v4a1_WSTRB,
  m_axi_v4a1_WLAST,
  m_axi_v4a1_WVALID,
  m_axi_v4a1_WREADY,
  m_axi_v4a1_BID,
  m_axi_v4a1_BRESP,
  m_axi_v4a1_BVALID,
  m_axi_v4a1_BREADY,
  m_axi_v4a1_ARID,
  m_axi_v4a1_ARADDR,
  m_axi_v4a1_ARLEN,
  m_axi_v4a1_ARSIZE,
  m_axi_v4a1_ARBURST,
  m_axi_v4a1_ARLOCK,
  m_axi_v4a1_ARREGION,
  m_axi_v4a1_ARCACHE,
  m_axi_v4a1_ARPROT,
  m_axi_v4a1_ARQOS,
  m_axi_v4a1_ARVALID,
  m_axi_v4a1_ARREADY,
  m_axi_v4a1_RID,
  m_axi_v4a1_RDATA,
  m_axi_v4a1_RRESP,
  m_axi_v4a1_RLAST,
  m_axi_v4a1_RVALID,
  m_axi_v4a1_RREADY,
  m_axi_v4a2_AWID,
  m_axi_v4a2_AWADDR,
  m_axi_v4a2_AWLEN,
  m_axi_v4a2_AWSIZE,
  m_axi_v4a2_AWBURST,
  m_axi_v4a2_AWLOCK,
  m_axi_v4a2_AWREGION,
  m_axi_v4a2_AWCACHE,
  m_axi_v4a2_AWPROT,
  m_axi_v4a2_AWQOS,
  m_axi_v4a2_AWVALID,
  m_axi_v4a2_AWREADY,
  m_axi_v4a2_WID,
  m_axi_v4a2_WDATA,
  m_axi_v4a2_WSTRB,
  m_axi_v4a2_WLAST,
  m_axi_v4a2_WVALID,
  m_axi_v4a2_WREADY,
  m_axi_v4a2_BID,
  m_axi_v4a2_BRESP,
  m_axi_v4a2_BVALID,
  m_axi_v4a2_BREADY,
  m_axi_v4a2_ARID,
  m_axi_v4a2_ARADDR,
  m_axi_v4a2_ARLEN,
  m_axi_v4a2_ARSIZE,
  m_axi_v4a2_ARBURST,
  m_axi_v4a2_ARLOCK,
  m_axi_v4a2_ARREGION,
  m_axi_v4a2_ARCACHE,
  m_axi_v4a2_ARPROT,
  m_axi_v4a2_ARQOS,
  m_axi_v4a2_ARVALID,
  m_axi_v4a2_ARREADY,
  m_axi_v4a2_RID,
  m_axi_v4a2_RDATA,
  m_axi_v4a2_RRESP,
  m_axi_v4a2_RLAST,
  m_axi_v4a2_RVALID,
  m_axi_v4a2_RREADY,
  m_axi_v4l0_AWID,
  m_axi_v4l0_AWADDR,
  m_axi_v4l0_AWLEN,
  m_axi_v4l0_AWSIZE,
  m_axi_v4l0_AWBURST,
  m_axi_v4l0_AWLOCK,
  m_axi_v4l0_AWREGION,
  m_axi_v4l0_AWCACHE,
  m_axi_v4l0_AWPROT,
  m_axi_v4l0_AWQOS,
  m_axi_v4l0_AWVALID,
  m_axi_v4l0_AWREADY,
  m_axi_v4l0_WID,
  m_axi_v4l0_WDATA,
  m_axi_v4l0_WSTRB,
  m_axi_v4l0_WLAST,
  m_axi_v4l0_WVALID,
  m_axi_v4l0_WREADY,
  m_axi_v4l0_BID,
  m_axi_v4l0_BRESP,
  m_axi_v4l0_BVALID,
  m_axi_v4l0_BREADY,
  m_axi_v4l0_ARID,
  m_axi_v4l0_ARADDR,
  m_axi_v4l0_ARLEN,
  m_axi_v4l0_ARSIZE,
  m_axi_v4l0_ARBURST,
  m_axi_v4l0_ARLOCK,
  m_axi_v4l0_ARREGION,
  m_axi_v4l0_ARCACHE,
  m_axi_v4l0_ARPROT,
  m_axi_v4l0_ARQOS,
  m_axi_v4l0_ARVALID,
  m_axi_v4l0_ARREADY,
  m_axi_v4l0_RID,
  m_axi_v4l0_RDATA,
  m_axi_v4l0_RRESP,
  m_axi_v4l0_RLAST,
  m_axi_v4l0_RVALID,
  m_axi_v4l0_RREADY,
  m_axi_v4l1_AWID,
  m_axi_v4l1_AWADDR,
  m_axi_v4l1_AWLEN,
  m_axi_v4l1_AWSIZE,
  m_axi_v4l1_AWBURST,
  m_axi_v4l1_AWLOCK,
  m_axi_v4l1_AWREGION,
  m_axi_v4l1_AWCACHE,
  m_axi_v4l1_AWPROT,
  m_axi_v4l1_AWQOS,
  m_axi_v4l1_AWVALID,
  m_axi_v4l1_AWREADY,
  m_axi_v4l1_WID,
  m_axi_v4l1_WDATA,
  m_axi_v4l1_WSTRB,
  m_axi_v4l1_WLAST,
  m_axi_v4l1_WVALID,
  m_axi_v4l1_WREADY,
  m_axi_v4l1_BID,
  m_axi_v4l1_BRESP,
  m_axi_v4l1_BVALID,
  m_axi_v4l1_BREADY,
  m_axi_v4l1_ARID,
  m_axi_v4l1_ARADDR,
  m_axi_v4l1_ARLEN,
  m_axi_v4l1_ARSIZE,
  m_axi_v4l1_ARBURST,
  m_axi_v4l1_ARLOCK,
  m_axi_v4l1_ARREGION,
  m_axi_v4l1_ARCACHE,
  m_axi_v4l1_ARPROT,
  m_axi_v4l1_ARQOS,
  m_axi_v4l1_ARVALID,
  m_axi_v4l1_ARREADY,
  m_axi_v4l1_RID,
  m_axi_v4l1_RDATA,
  m_axi_v4l1_RRESP,
  m_axi_v4l1_RLAST,
  m_axi_v4l1_RVALID,
  m_axi_v4l1_RREADY,
  m_axi_v4l2_AWID,
  m_axi_v4l2_AWADDR,
  m_axi_v4l2_AWLEN,
  m_axi_v4l2_AWSIZE,
  m_axi_v4l2_AWBURST,
  m_axi_v4l2_AWLOCK,
  m_axi_v4l2_AWREGION,
  m_axi_v4l2_AWCACHE,
  m_axi_v4l2_AWPROT,
  m_axi_v4l2_AWQOS,
  m_axi_v4l2_AWVALID,
  m_axi_v4l2_AWREADY,
  m_axi_v4l2_WID,
  m_axi_v4l2_WDATA,
  m_axi_v4l2_WSTRB,
  m_axi_v4l2_WLAST,
  m_axi_v4l2_WVALID,
  m_axi_v4l2_WREADY,
  m_axi_v4l2_BID,
  m_axi_v4l2_BRESP,
  m_axi_v4l2_BVALID,
  m_axi_v4l2_BREADY,
  m_axi_v4l2_ARID,
  m_axi_v4l2_ARADDR,
  m_axi_v4l2_ARLEN,
  m_axi_v4l2_ARSIZE,
  m_axi_v4l2_ARBURST,
  m_axi_v4l2_ARLOCK,
  m_axi_v4l2_ARREGION,
  m_axi_v4l2_ARCACHE,
  m_axi_v4l2_ARPROT,
  m_axi_v4l2_ARQOS,
  m_axi_v4l2_ARVALID,
  m_axi_v4l2_ARREADY,
  m_axi_v4l2_RID,
  m_axi_v4l2_RDATA,
  m_axi_v4l2_RRESP,
  m_axi_v4l2_RLAST,
  m_axi_v4l2_RVALID,
  m_axi_v4l2_RREADY,
  m_axi_v4u0_AWID,
  m_axi_v4u0_AWADDR,
  m_axi_v4u0_AWLEN,
  m_axi_v4u0_AWSIZE,
  m_axi_v4u0_AWBURST,
  m_axi_v4u0_AWLOCK,
  m_axi_v4u0_AWREGION,
  m_axi_v4u0_AWCACHE,
  m_axi_v4u0_AWPROT,
  m_axi_v4u0_AWQOS,
  m_axi_v4u0_AWVALID,
  m_axi_v4u0_AWREADY,
  m_axi_v4u0_WID,
  m_axi_v4u0_WDATA,
  m_axi_v4u0_WSTRB,
  m_axi_v4u0_WLAST,
  m_axi_v4u0_WVALID,
  m_axi_v4u0_WREADY,
  m_axi_v4u0_BID,
  m_axi_v4u0_BRESP,
  m_axi_v4u0_BVALID,
  m_axi_v4u0_BREADY,
  m_axi_v4u0_ARID,
  m_axi_v4u0_ARADDR,
  m_axi_v4u0_ARLEN,
  m_axi_v4u0_ARSIZE,
  m_axi_v4u0_ARBURST,
  m_axi_v4u0_ARLOCK,
  m_axi_v4u0_ARREGION,
  m_axi_v4u0_ARCACHE,
  m_axi_v4u0_ARPROT,
  m_axi_v4u0_ARQOS,
  m_axi_v4u0_ARVALID,
  m_axi_v4u0_ARREADY,
  m_axi_v4u0_RID,
  m_axi_v4u0_RDATA,
  m_axi_v4u0_RRESP,
  m_axi_v4u0_RLAST,
  m_axi_v4u0_RVALID,
  m_axi_v4u0_RREADY,
  m_axi_v4u1_AWID,
  m_axi_v4u1_AWADDR,
  m_axi_v4u1_AWLEN,
  m_axi_v4u1_AWSIZE,
  m_axi_v4u1_AWBURST,
  m_axi_v4u1_AWLOCK,
  m_axi_v4u1_AWREGION,
  m_axi_v4u1_AWCACHE,
  m_axi_v4u1_AWPROT,
  m_axi_v4u1_AWQOS,
  m_axi_v4u1_AWVALID,
  m_axi_v4u1_AWREADY,
  m_axi_v4u1_WID,
  m_axi_v4u1_WDATA,
  m_axi_v4u1_WSTRB,
  m_axi_v4u1_WLAST,
  m_axi_v4u1_WVALID,
  m_axi_v4u1_WREADY,
  m_axi_v4u1_BID,
  m_axi_v4u1_BRESP,
  m_axi_v4u1_BVALID,
  m_axi_v4u1_BREADY,
  m_axi_v4u1_ARID,
  m_axi_v4u1_ARADDR,
  m_axi_v4u1_ARLEN,
  m_axi_v4u1_ARSIZE,
  m_axi_v4u1_ARBURST,
  m_axi_v4u1_ARLOCK,
  m_axi_v4u1_ARREGION,
  m_axi_v4u1_ARCACHE,
  m_axi_v4u1_ARPROT,
  m_axi_v4u1_ARQOS,
  m_axi_v4u1_ARVALID,
  m_axi_v4u1_ARREADY,
  m_axi_v4u1_RID,
  m_axi_v4u1_RDATA,
  m_axi_v4u1_RRESP,
  m_axi_v4u1_RLAST,
  m_axi_v4u1_RVALID,
  m_axi_v4u1_RREADY,
  m_axi_v4u2_AWID,
  m_axi_v4u2_AWADDR,
  m_axi_v4u2_AWLEN,
  m_axi_v4u2_AWSIZE,
  m_axi_v4u2_AWBURST,
  m_axi_v4u2_AWLOCK,
  m_axi_v4u2_AWREGION,
  m_axi_v4u2_AWCACHE,
  m_axi_v4u2_AWPROT,
  m_axi_v4u2_AWQOS,
  m_axi_v4u2_AWVALID,
  m_axi_v4u2_AWREADY,
  m_axi_v4u2_WID,
  m_axi_v4u2_WDATA,
  m_axi_v4u2_WSTRB,
  m_axi_v4u2_WLAST,
  m_axi_v4u2_WVALID,
  m_axi_v4u2_WREADY,
  m_axi_v4u2_BID,
  m_axi_v4u2_BRESP,
  m_axi_v4u2_BVALID,
  m_axi_v4u2_BREADY,
  m_axi_v4u2_ARID,
  m_axi_v4u2_ARADDR,
  m_axi_v4u2_ARLEN,
  m_axi_v4u2_ARSIZE,
  m_axi_v4u2_ARBURST,
  m_axi_v4u2_ARLOCK,
  m_axi_v4u2_ARREGION,
  m_axi_v4u2_ARCACHE,
  m_axi_v4u2_ARPROT,
  m_axi_v4u2_ARQOS,
  m_axi_v4u2_ARVALID,
  m_axi_v4u2_ARREADY,
  m_axi_v4u2_RID,
  m_axi_v4u2_RDATA,
  m_axi_v4u2_RRESP,
  m_axi_v4u2_RLAST,
  m_axi_v4u2_RVALID,
  m_axi_v4u2_RREADY,
  m_axi_v4u3_AWID,
  m_axi_v4u3_AWADDR,
  m_axi_v4u3_AWLEN,
  m_axi_v4u3_AWSIZE,
  m_axi_v4u3_AWBURST,
  m_axi_v4u3_AWLOCK,
  m_axi_v4u3_AWREGION,
  m_axi_v4u3_AWCACHE,
  m_axi_v4u3_AWPROT,
  m_axi_v4u3_AWQOS,
  m_axi_v4u3_AWVALID,
  m_axi_v4u3_AWREADY,
  m_axi_v4u3_WID,
  m_axi_v4u3_WDATA,
  m_axi_v4u3_WSTRB,
  m_axi_v4u3_WLAST,
  m_axi_v4u3_WVALID,
  m_axi_v4u3_WREADY,
  m_axi_v4u3_BID,
  m_axi_v4u3_BRESP,
  m_axi_v4u3_BVALID,
  m_axi_v4u3_BREADY,
  m_axi_v4u3_ARID,
  m_axi_v4u3_ARADDR,
  m_axi_v4u3_ARLEN,
  m_axi_v4u3_ARSIZE,
  m_axi_v4u3_ARBURST,
  m_axi_v4u3_ARLOCK,
  m_axi_v4u3_ARREGION,
  m_axi_v4u3_ARCACHE,
  m_axi_v4u3_ARPROT,
  m_axi_v4u3_ARQOS,
  m_axi_v4u3_ARVALID,
  m_axi_v4u3_ARREADY,
  m_axi_v4u3_RID,
  m_axi_v4u3_RDATA,
  m_axi_v4u3_RRESP,
  m_axi_v4u3_RLAST,
  m_axi_v4u3_RVALID,
  m_axi_v4u3_RREADY,
  status,
  muladds,
  divisions
);

output wire status_ap_vld;
output wire muladds_ap_vld;
output wire divisions_ap_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [7 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [7 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 200000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:m_axi_v4a0:m_axi_v4a1:m_axi_v4a2:m_axi_v4l0:m_axi_v4l1:m_axi_v4l2:m_axi_v4u0:m_axi_v4u1:m_axi_v4u2:m_axi_v4u3, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWID" *)
output wire [0 : 0] m_axi_v4a0_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWADDR" *)
output wire [63 : 0] m_axi_v4a0_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWLEN" *)
output wire [7 : 0] m_axi_v4a0_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWSIZE" *)
output wire [2 : 0] m_axi_v4a0_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWBURST" *)
output wire [1 : 0] m_axi_v4a0_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWLOCK" *)
output wire [1 : 0] m_axi_v4a0_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWREGION" *)
output wire [3 : 0] m_axi_v4a0_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWCACHE" *)
output wire [3 : 0] m_axi_v4a0_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWPROT" *)
output wire [2 : 0] m_axi_v4a0_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWQOS" *)
output wire [3 : 0] m_axi_v4a0_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWVALID" *)
output wire m_axi_v4a0_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 AWREADY" *)
input wire m_axi_v4a0_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 WID" *)
output wire [0 : 0] m_axi_v4a0_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 WDATA" *)
output wire [31 : 0] m_axi_v4a0_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 WSTRB" *)
output wire [3 : 0] m_axi_v4a0_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 WLAST" *)
output wire m_axi_v4a0_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 WVALID" *)
output wire m_axi_v4a0_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 WREADY" *)
input wire m_axi_v4a0_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 BID" *)
input wire [0 : 0] m_axi_v4a0_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 BRESP" *)
input wire [1 : 0] m_axi_v4a0_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 BVALID" *)
input wire m_axi_v4a0_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 BREADY" *)
output wire m_axi_v4a0_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARID" *)
output wire [0 : 0] m_axi_v4a0_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARADDR" *)
output wire [63 : 0] m_axi_v4a0_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARLEN" *)
output wire [7 : 0] m_axi_v4a0_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARSIZE" *)
output wire [2 : 0] m_axi_v4a0_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARBURST" *)
output wire [1 : 0] m_axi_v4a0_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARLOCK" *)
output wire [1 : 0] m_axi_v4a0_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARREGION" *)
output wire [3 : 0] m_axi_v4a0_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARCACHE" *)
output wire [3 : 0] m_axi_v4a0_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARPROT" *)
output wire [2 : 0] m_axi_v4a0_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARQOS" *)
output wire [3 : 0] m_axi_v4a0_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARVALID" *)
output wire m_axi_v4a0_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 ARREADY" *)
input wire m_axi_v4a0_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 RID" *)
input wire [0 : 0] m_axi_v4a0_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 RDATA" *)
input wire [31 : 0] m_axi_v4a0_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 RRESP" *)
input wire [1 : 0] m_axi_v4a0_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 RLAST" *)
input wire m_axi_v4a0_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 RVALID" *)
input wire m_axi_v4a0_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4a0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN b\
d_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a0 RREADY" *)
output wire m_axi_v4a0_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWID" *)
output wire [0 : 0] m_axi_v4a1_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWADDR" *)
output wire [63 : 0] m_axi_v4a1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWLEN" *)
output wire [7 : 0] m_axi_v4a1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWSIZE" *)
output wire [2 : 0] m_axi_v4a1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWBURST" *)
output wire [1 : 0] m_axi_v4a1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWLOCK" *)
output wire [1 : 0] m_axi_v4a1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWREGION" *)
output wire [3 : 0] m_axi_v4a1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWCACHE" *)
output wire [3 : 0] m_axi_v4a1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWPROT" *)
output wire [2 : 0] m_axi_v4a1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWQOS" *)
output wire [3 : 0] m_axi_v4a1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWVALID" *)
output wire m_axi_v4a1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 AWREADY" *)
input wire m_axi_v4a1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 WID" *)
output wire [0 : 0] m_axi_v4a1_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 WDATA" *)
output wire [31 : 0] m_axi_v4a1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 WSTRB" *)
output wire [3 : 0] m_axi_v4a1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 WLAST" *)
output wire m_axi_v4a1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 WVALID" *)
output wire m_axi_v4a1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 WREADY" *)
input wire m_axi_v4a1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 BID" *)
input wire [0 : 0] m_axi_v4a1_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 BRESP" *)
input wire [1 : 0] m_axi_v4a1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 BVALID" *)
input wire m_axi_v4a1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 BREADY" *)
output wire m_axi_v4a1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARID" *)
output wire [0 : 0] m_axi_v4a1_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARADDR" *)
output wire [63 : 0] m_axi_v4a1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARLEN" *)
output wire [7 : 0] m_axi_v4a1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARSIZE" *)
output wire [2 : 0] m_axi_v4a1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARBURST" *)
output wire [1 : 0] m_axi_v4a1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARLOCK" *)
output wire [1 : 0] m_axi_v4a1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARREGION" *)
output wire [3 : 0] m_axi_v4a1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARCACHE" *)
output wire [3 : 0] m_axi_v4a1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARPROT" *)
output wire [2 : 0] m_axi_v4a1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARQOS" *)
output wire [3 : 0] m_axi_v4a1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARVALID" *)
output wire m_axi_v4a1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 ARREADY" *)
input wire m_axi_v4a1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 RID" *)
input wire [0 : 0] m_axi_v4a1_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 RDATA" *)
input wire [31 : 0] m_axi_v4a1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 RRESP" *)
input wire [1 : 0] m_axi_v4a1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 RLAST" *)
input wire m_axi_v4a1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 RVALID" *)
input wire m_axi_v4a1_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4a1, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN b\
d_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a1 RREADY" *)
output wire m_axi_v4a1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWID" *)
output wire [0 : 0] m_axi_v4a2_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWADDR" *)
output wire [63 : 0] m_axi_v4a2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWLEN" *)
output wire [7 : 0] m_axi_v4a2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWSIZE" *)
output wire [2 : 0] m_axi_v4a2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWBURST" *)
output wire [1 : 0] m_axi_v4a2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWLOCK" *)
output wire [1 : 0] m_axi_v4a2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWREGION" *)
output wire [3 : 0] m_axi_v4a2_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWCACHE" *)
output wire [3 : 0] m_axi_v4a2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWPROT" *)
output wire [2 : 0] m_axi_v4a2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWQOS" *)
output wire [3 : 0] m_axi_v4a2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWVALID" *)
output wire m_axi_v4a2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 AWREADY" *)
input wire m_axi_v4a2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 WID" *)
output wire [0 : 0] m_axi_v4a2_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 WDATA" *)
output wire [31 : 0] m_axi_v4a2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 WSTRB" *)
output wire [3 : 0] m_axi_v4a2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 WLAST" *)
output wire m_axi_v4a2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 WVALID" *)
output wire m_axi_v4a2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 WREADY" *)
input wire m_axi_v4a2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 BID" *)
input wire [0 : 0] m_axi_v4a2_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 BRESP" *)
input wire [1 : 0] m_axi_v4a2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 BVALID" *)
input wire m_axi_v4a2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 BREADY" *)
output wire m_axi_v4a2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARID" *)
output wire [0 : 0] m_axi_v4a2_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARADDR" *)
output wire [63 : 0] m_axi_v4a2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARLEN" *)
output wire [7 : 0] m_axi_v4a2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARSIZE" *)
output wire [2 : 0] m_axi_v4a2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARBURST" *)
output wire [1 : 0] m_axi_v4a2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARLOCK" *)
output wire [1 : 0] m_axi_v4a2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARREGION" *)
output wire [3 : 0] m_axi_v4a2_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARCACHE" *)
output wire [3 : 0] m_axi_v4a2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARPROT" *)
output wire [2 : 0] m_axi_v4a2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARQOS" *)
output wire [3 : 0] m_axi_v4a2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARVALID" *)
output wire m_axi_v4a2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 ARREADY" *)
input wire m_axi_v4a2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 RID" *)
input wire [0 : 0] m_axi_v4a2_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 RDATA" *)
input wire [31 : 0] m_axi_v4a2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 RRESP" *)
input wire [1 : 0] m_axi_v4a2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 RLAST" *)
input wire m_axi_v4a2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 RVALID" *)
input wire m_axi_v4a2_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4a2, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN b\
d_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4a2 RREADY" *)
output wire m_axi_v4a2_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWID" *)
output wire [0 : 0] m_axi_v4l0_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWADDR" *)
output wire [63 : 0] m_axi_v4l0_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWLEN" *)
output wire [7 : 0] m_axi_v4l0_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWSIZE" *)
output wire [2 : 0] m_axi_v4l0_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWBURST" *)
output wire [1 : 0] m_axi_v4l0_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWLOCK" *)
output wire [1 : 0] m_axi_v4l0_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWREGION" *)
output wire [3 : 0] m_axi_v4l0_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWCACHE" *)
output wire [3 : 0] m_axi_v4l0_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWPROT" *)
output wire [2 : 0] m_axi_v4l0_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWQOS" *)
output wire [3 : 0] m_axi_v4l0_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWVALID" *)
output wire m_axi_v4l0_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 AWREADY" *)
input wire m_axi_v4l0_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 WID" *)
output wire [0 : 0] m_axi_v4l0_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 WDATA" *)
output wire [31 : 0] m_axi_v4l0_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 WSTRB" *)
output wire [3 : 0] m_axi_v4l0_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 WLAST" *)
output wire m_axi_v4l0_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 WVALID" *)
output wire m_axi_v4l0_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 WREADY" *)
input wire m_axi_v4l0_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 BID" *)
input wire [0 : 0] m_axi_v4l0_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 BRESP" *)
input wire [1 : 0] m_axi_v4l0_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 BVALID" *)
input wire m_axi_v4l0_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 BREADY" *)
output wire m_axi_v4l0_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARID" *)
output wire [0 : 0] m_axi_v4l0_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARADDR" *)
output wire [63 : 0] m_axi_v4l0_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARLEN" *)
output wire [7 : 0] m_axi_v4l0_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARSIZE" *)
output wire [2 : 0] m_axi_v4l0_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARBURST" *)
output wire [1 : 0] m_axi_v4l0_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARLOCK" *)
output wire [1 : 0] m_axi_v4l0_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARREGION" *)
output wire [3 : 0] m_axi_v4l0_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARCACHE" *)
output wire [3 : 0] m_axi_v4l0_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARPROT" *)
output wire [2 : 0] m_axi_v4l0_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARQOS" *)
output wire [3 : 0] m_axi_v4l0_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARVALID" *)
output wire m_axi_v4l0_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 ARREADY" *)
input wire m_axi_v4l0_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 RID" *)
input wire [0 : 0] m_axi_v4l0_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 RDATA" *)
input wire [31 : 0] m_axi_v4l0_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 RRESP" *)
input wire [1 : 0] m_axi_v4l0_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 RLAST" *)
input wire m_axi_v4l0_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 RVALID" *)
input wire m_axi_v4l0_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4l0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN b\
d_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l0 RREADY" *)
output wire m_axi_v4l0_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWID" *)
output wire [0 : 0] m_axi_v4l1_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWADDR" *)
output wire [63 : 0] m_axi_v4l1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWLEN" *)
output wire [7 : 0] m_axi_v4l1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWSIZE" *)
output wire [2 : 0] m_axi_v4l1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWBURST" *)
output wire [1 : 0] m_axi_v4l1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWLOCK" *)
output wire [1 : 0] m_axi_v4l1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWREGION" *)
output wire [3 : 0] m_axi_v4l1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWCACHE" *)
output wire [3 : 0] m_axi_v4l1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWPROT" *)
output wire [2 : 0] m_axi_v4l1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWQOS" *)
output wire [3 : 0] m_axi_v4l1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWVALID" *)
output wire m_axi_v4l1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 AWREADY" *)
input wire m_axi_v4l1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 WID" *)
output wire [0 : 0] m_axi_v4l1_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 WDATA" *)
output wire [31 : 0] m_axi_v4l1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 WSTRB" *)
output wire [3 : 0] m_axi_v4l1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 WLAST" *)
output wire m_axi_v4l1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 WVALID" *)
output wire m_axi_v4l1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 WREADY" *)
input wire m_axi_v4l1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 BID" *)
input wire [0 : 0] m_axi_v4l1_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 BRESP" *)
input wire [1 : 0] m_axi_v4l1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 BVALID" *)
input wire m_axi_v4l1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 BREADY" *)
output wire m_axi_v4l1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARID" *)
output wire [0 : 0] m_axi_v4l1_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARADDR" *)
output wire [63 : 0] m_axi_v4l1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARLEN" *)
output wire [7 : 0] m_axi_v4l1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARSIZE" *)
output wire [2 : 0] m_axi_v4l1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARBURST" *)
output wire [1 : 0] m_axi_v4l1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARLOCK" *)
output wire [1 : 0] m_axi_v4l1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARREGION" *)
output wire [3 : 0] m_axi_v4l1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARCACHE" *)
output wire [3 : 0] m_axi_v4l1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARPROT" *)
output wire [2 : 0] m_axi_v4l1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARQOS" *)
output wire [3 : 0] m_axi_v4l1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARVALID" *)
output wire m_axi_v4l1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 ARREADY" *)
input wire m_axi_v4l1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 RID" *)
input wire [0 : 0] m_axi_v4l1_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 RDATA" *)
input wire [31 : 0] m_axi_v4l1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 RRESP" *)
input wire [1 : 0] m_axi_v4l1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 RLAST" *)
input wire m_axi_v4l1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 RVALID" *)
input wire m_axi_v4l1_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4l1, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN b\
d_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l1 RREADY" *)
output wire m_axi_v4l1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWID" *)
output wire [0 : 0] m_axi_v4l2_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWADDR" *)
output wire [63 : 0] m_axi_v4l2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWLEN" *)
output wire [7 : 0] m_axi_v4l2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWSIZE" *)
output wire [2 : 0] m_axi_v4l2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWBURST" *)
output wire [1 : 0] m_axi_v4l2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWLOCK" *)
output wire [1 : 0] m_axi_v4l2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWREGION" *)
output wire [3 : 0] m_axi_v4l2_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWCACHE" *)
output wire [3 : 0] m_axi_v4l2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWPROT" *)
output wire [2 : 0] m_axi_v4l2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWQOS" *)
output wire [3 : 0] m_axi_v4l2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWVALID" *)
output wire m_axi_v4l2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 AWREADY" *)
input wire m_axi_v4l2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 WID" *)
output wire [0 : 0] m_axi_v4l2_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 WDATA" *)
output wire [31 : 0] m_axi_v4l2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 WSTRB" *)
output wire [3 : 0] m_axi_v4l2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 WLAST" *)
output wire m_axi_v4l2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 WVALID" *)
output wire m_axi_v4l2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 WREADY" *)
input wire m_axi_v4l2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 BID" *)
input wire [0 : 0] m_axi_v4l2_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 BRESP" *)
input wire [1 : 0] m_axi_v4l2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 BVALID" *)
input wire m_axi_v4l2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 BREADY" *)
output wire m_axi_v4l2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARID" *)
output wire [0 : 0] m_axi_v4l2_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARADDR" *)
output wire [63 : 0] m_axi_v4l2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARLEN" *)
output wire [7 : 0] m_axi_v4l2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARSIZE" *)
output wire [2 : 0] m_axi_v4l2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARBURST" *)
output wire [1 : 0] m_axi_v4l2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARLOCK" *)
output wire [1 : 0] m_axi_v4l2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARREGION" *)
output wire [3 : 0] m_axi_v4l2_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARCACHE" *)
output wire [3 : 0] m_axi_v4l2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARPROT" *)
output wire [2 : 0] m_axi_v4l2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARQOS" *)
output wire [3 : 0] m_axi_v4l2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARVALID" *)
output wire m_axi_v4l2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 ARREADY" *)
input wire m_axi_v4l2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 RID" *)
input wire [0 : 0] m_axi_v4l2_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 RDATA" *)
input wire [31 : 0] m_axi_v4l2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 RRESP" *)
input wire [1 : 0] m_axi_v4l2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 RLAST" *)
input wire m_axi_v4l2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 RVALID" *)
input wire m_axi_v4l2_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4l2, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN \
bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4l2 RREADY" *)
output wire m_axi_v4l2_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWID" *)
output wire [0 : 0] m_axi_v4u0_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWADDR" *)
output wire [63 : 0] m_axi_v4u0_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWLEN" *)
output wire [7 : 0] m_axi_v4u0_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWSIZE" *)
output wire [2 : 0] m_axi_v4u0_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWBURST" *)
output wire [1 : 0] m_axi_v4u0_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWLOCK" *)
output wire [1 : 0] m_axi_v4u0_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWREGION" *)
output wire [3 : 0] m_axi_v4u0_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWCACHE" *)
output wire [3 : 0] m_axi_v4u0_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWPROT" *)
output wire [2 : 0] m_axi_v4u0_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWQOS" *)
output wire [3 : 0] m_axi_v4u0_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWVALID" *)
output wire m_axi_v4u0_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 AWREADY" *)
input wire m_axi_v4u0_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 WID" *)
output wire [0 : 0] m_axi_v4u0_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 WDATA" *)
output wire [31 : 0] m_axi_v4u0_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 WSTRB" *)
output wire [3 : 0] m_axi_v4u0_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 WLAST" *)
output wire m_axi_v4u0_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 WVALID" *)
output wire m_axi_v4u0_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 WREADY" *)
input wire m_axi_v4u0_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 BID" *)
input wire [0 : 0] m_axi_v4u0_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 BRESP" *)
input wire [1 : 0] m_axi_v4u0_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 BVALID" *)
input wire m_axi_v4u0_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 BREADY" *)
output wire m_axi_v4u0_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARID" *)
output wire [0 : 0] m_axi_v4u0_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARADDR" *)
output wire [63 : 0] m_axi_v4u0_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARLEN" *)
output wire [7 : 0] m_axi_v4u0_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARSIZE" *)
output wire [2 : 0] m_axi_v4u0_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARBURST" *)
output wire [1 : 0] m_axi_v4u0_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARLOCK" *)
output wire [1 : 0] m_axi_v4u0_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARREGION" *)
output wire [3 : 0] m_axi_v4u0_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARCACHE" *)
output wire [3 : 0] m_axi_v4u0_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARPROT" *)
output wire [2 : 0] m_axi_v4u0_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARQOS" *)
output wire [3 : 0] m_axi_v4u0_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARVALID" *)
output wire m_axi_v4u0_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 ARREADY" *)
input wire m_axi_v4u0_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 RID" *)
input wire [0 : 0] m_axi_v4u0_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 RDATA" *)
input wire [31 : 0] m_axi_v4u0_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 RRESP" *)
input wire [1 : 0] m_axi_v4u0_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 RLAST" *)
input wire m_axi_v4u0_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 RVALID" *)
input wire m_axi_v4u0_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4u0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN b\
d_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u0 RREADY" *)
output wire m_axi_v4u0_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWID" *)
output wire [0 : 0] m_axi_v4u1_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWADDR" *)
output wire [63 : 0] m_axi_v4u1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWLEN" *)
output wire [7 : 0] m_axi_v4u1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWSIZE" *)
output wire [2 : 0] m_axi_v4u1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWBURST" *)
output wire [1 : 0] m_axi_v4u1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWLOCK" *)
output wire [1 : 0] m_axi_v4u1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWREGION" *)
output wire [3 : 0] m_axi_v4u1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWCACHE" *)
output wire [3 : 0] m_axi_v4u1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWPROT" *)
output wire [2 : 0] m_axi_v4u1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWQOS" *)
output wire [3 : 0] m_axi_v4u1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWVALID" *)
output wire m_axi_v4u1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 AWREADY" *)
input wire m_axi_v4u1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 WID" *)
output wire [0 : 0] m_axi_v4u1_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 WDATA" *)
output wire [31 : 0] m_axi_v4u1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 WSTRB" *)
output wire [3 : 0] m_axi_v4u1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 WLAST" *)
output wire m_axi_v4u1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 WVALID" *)
output wire m_axi_v4u1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 WREADY" *)
input wire m_axi_v4u1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 BID" *)
input wire [0 : 0] m_axi_v4u1_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 BRESP" *)
input wire [1 : 0] m_axi_v4u1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 BVALID" *)
input wire m_axi_v4u1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 BREADY" *)
output wire m_axi_v4u1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARID" *)
output wire [0 : 0] m_axi_v4u1_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARADDR" *)
output wire [63 : 0] m_axi_v4u1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARLEN" *)
output wire [7 : 0] m_axi_v4u1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARSIZE" *)
output wire [2 : 0] m_axi_v4u1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARBURST" *)
output wire [1 : 0] m_axi_v4u1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARLOCK" *)
output wire [1 : 0] m_axi_v4u1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARREGION" *)
output wire [3 : 0] m_axi_v4u1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARCACHE" *)
output wire [3 : 0] m_axi_v4u1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARPROT" *)
output wire [2 : 0] m_axi_v4u1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARQOS" *)
output wire [3 : 0] m_axi_v4u1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARVALID" *)
output wire m_axi_v4u1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 ARREADY" *)
input wire m_axi_v4u1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 RID" *)
input wire [0 : 0] m_axi_v4u1_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 RDATA" *)
input wire [31 : 0] m_axi_v4u1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 RRESP" *)
input wire [1 : 0] m_axi_v4u1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 RLAST" *)
input wire m_axi_v4u1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 RVALID" *)
input wire m_axi_v4u1_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4u1, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN b\
d_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u1 RREADY" *)
output wire m_axi_v4u1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWID" *)
output wire [0 : 0] m_axi_v4u2_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWADDR" *)
output wire [63 : 0] m_axi_v4u2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWLEN" *)
output wire [7 : 0] m_axi_v4u2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWSIZE" *)
output wire [2 : 0] m_axi_v4u2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWBURST" *)
output wire [1 : 0] m_axi_v4u2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWLOCK" *)
output wire [1 : 0] m_axi_v4u2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWREGION" *)
output wire [3 : 0] m_axi_v4u2_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWCACHE" *)
output wire [3 : 0] m_axi_v4u2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWPROT" *)
output wire [2 : 0] m_axi_v4u2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWQOS" *)
output wire [3 : 0] m_axi_v4u2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWVALID" *)
output wire m_axi_v4u2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 AWREADY" *)
input wire m_axi_v4u2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 WID" *)
output wire [0 : 0] m_axi_v4u2_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 WDATA" *)
output wire [31 : 0] m_axi_v4u2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 WSTRB" *)
output wire [3 : 0] m_axi_v4u2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 WLAST" *)
output wire m_axi_v4u2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 WVALID" *)
output wire m_axi_v4u2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 WREADY" *)
input wire m_axi_v4u2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 BID" *)
input wire [0 : 0] m_axi_v4u2_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 BRESP" *)
input wire [1 : 0] m_axi_v4u2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 BVALID" *)
input wire m_axi_v4u2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 BREADY" *)
output wire m_axi_v4u2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARID" *)
output wire [0 : 0] m_axi_v4u2_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARADDR" *)
output wire [63 : 0] m_axi_v4u2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARLEN" *)
output wire [7 : 0] m_axi_v4u2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARSIZE" *)
output wire [2 : 0] m_axi_v4u2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARBURST" *)
output wire [1 : 0] m_axi_v4u2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARLOCK" *)
output wire [1 : 0] m_axi_v4u2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARREGION" *)
output wire [3 : 0] m_axi_v4u2_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARCACHE" *)
output wire [3 : 0] m_axi_v4u2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARPROT" *)
output wire [2 : 0] m_axi_v4u2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARQOS" *)
output wire [3 : 0] m_axi_v4u2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARVALID" *)
output wire m_axi_v4u2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 ARREADY" *)
input wire m_axi_v4u2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 RID" *)
input wire [0 : 0] m_axi_v4u2_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 RDATA" *)
input wire [31 : 0] m_axi_v4u2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 RRESP" *)
input wire [1 : 0] m_axi_v4u2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 RLAST" *)
input wire m_axi_v4u2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 RVALID" *)
input wire m_axi_v4u2_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4u2, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN \
bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u2 RREADY" *)
output wire m_axi_v4u2_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWID" *)
output wire [0 : 0] m_axi_v4u3_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWADDR" *)
output wire [63 : 0] m_axi_v4u3_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWLEN" *)
output wire [7 : 0] m_axi_v4u3_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWSIZE" *)
output wire [2 : 0] m_axi_v4u3_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWBURST" *)
output wire [1 : 0] m_axi_v4u3_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWLOCK" *)
output wire [1 : 0] m_axi_v4u3_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWREGION" *)
output wire [3 : 0] m_axi_v4u3_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWCACHE" *)
output wire [3 : 0] m_axi_v4u3_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWPROT" *)
output wire [2 : 0] m_axi_v4u3_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWQOS" *)
output wire [3 : 0] m_axi_v4u3_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWVALID" *)
output wire m_axi_v4u3_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 AWREADY" *)
input wire m_axi_v4u3_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 WID" *)
output wire [0 : 0] m_axi_v4u3_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 WDATA" *)
output wire [31 : 0] m_axi_v4u3_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 WSTRB" *)
output wire [3 : 0] m_axi_v4u3_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 WLAST" *)
output wire m_axi_v4u3_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 WVALID" *)
output wire m_axi_v4u3_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 WREADY" *)
input wire m_axi_v4u3_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 BID" *)
input wire [0 : 0] m_axi_v4u3_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 BRESP" *)
input wire [1 : 0] m_axi_v4u3_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 BVALID" *)
input wire m_axi_v4u3_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 BREADY" *)
output wire m_axi_v4u3_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARID" *)
output wire [0 : 0] m_axi_v4u3_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARADDR" *)
output wire [63 : 0] m_axi_v4u3_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARLEN" *)
output wire [7 : 0] m_axi_v4u3_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARSIZE" *)
output wire [2 : 0] m_axi_v4u3_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARBURST" *)
output wire [1 : 0] m_axi_v4u3_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARLOCK" *)
output wire [1 : 0] m_axi_v4u3_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARREGION" *)
output wire [3 : 0] m_axi_v4u3_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARCACHE" *)
output wire [3 : 0] m_axi_v4u3_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARPROT" *)
output wire [2 : 0] m_axi_v4u3_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARQOS" *)
output wire [3 : 0] m_axi_v4u3_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARVALID" *)
output wire m_axi_v4u3_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 ARREADY" *)
input wire m_axi_v4u3_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 RID" *)
input wire [0 : 0] m_axi_v4u3_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 RDATA" *)
input wire [31 : 0] m_axi_v4u3_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 RRESP" *)
input wire [1 : 0] m_axi_v4u3_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 RLAST" *)
input wire m_axi_v4u3_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 RVALID" *)
input wire m_axi_v4u3_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_v4u3, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 200000000.0, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN b\
d_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_v4u3 RREADY" *)
output wire m_axi_v4u3_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME status, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 status DATA" *)
output wire [31 : 0] status;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME muladds, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 muladds DATA" *)
output wire [63 : 0] muladds;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME divisions, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 divisions DATA" *)
output wire [63 : 0] divisions;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  large_getrf_v4 #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(8),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_M_AXI_V4A0_ID_WIDTH(1),
    .C_M_AXI_V4A0_ADDR_WIDTH(64),
    .C_M_AXI_V4A0_DATA_WIDTH(32),
    .C_M_AXI_V4A0_AWUSER_WIDTH(1),
    .C_M_AXI_V4A0_ARUSER_WIDTH(1),
    .C_M_AXI_V4A0_WUSER_WIDTH(1),
    .C_M_AXI_V4A0_RUSER_WIDTH(1),
    .C_M_AXI_V4A0_BUSER_WIDTH(1),
    .C_M_AXI_V4A0_USER_VALUE(32'H00000000),
    .C_M_AXI_V4A0_PROT_VALUE(3'B000),
    .C_M_AXI_V4A0_CACHE_VALUE(4'B0011),
    .C_M_AXI_V4A1_ID_WIDTH(1),
    .C_M_AXI_V4A1_ADDR_WIDTH(64),
    .C_M_AXI_V4A1_DATA_WIDTH(32),
    .C_M_AXI_V4A1_AWUSER_WIDTH(1),
    .C_M_AXI_V4A1_ARUSER_WIDTH(1),
    .C_M_AXI_V4A1_WUSER_WIDTH(1),
    .C_M_AXI_V4A1_RUSER_WIDTH(1),
    .C_M_AXI_V4A1_BUSER_WIDTH(1),
    .C_M_AXI_V4A1_USER_VALUE(32'H00000000),
    .C_M_AXI_V4A1_PROT_VALUE(3'B000),
    .C_M_AXI_V4A1_CACHE_VALUE(4'B0011),
    .C_M_AXI_V4A2_ID_WIDTH(1),
    .C_M_AXI_V4A2_ADDR_WIDTH(64),
    .C_M_AXI_V4A2_DATA_WIDTH(32),
    .C_M_AXI_V4A2_AWUSER_WIDTH(1),
    .C_M_AXI_V4A2_ARUSER_WIDTH(1),
    .C_M_AXI_V4A2_WUSER_WIDTH(1),
    .C_M_AXI_V4A2_RUSER_WIDTH(1),
    .C_M_AXI_V4A2_BUSER_WIDTH(1),
    .C_M_AXI_V4A2_USER_VALUE(32'H00000000),
    .C_M_AXI_V4A2_PROT_VALUE(3'B000),
    .C_M_AXI_V4A2_CACHE_VALUE(4'B0011),
    .C_M_AXI_V4L0_ID_WIDTH(1),
    .C_M_AXI_V4L0_ADDR_WIDTH(64),
    .C_M_AXI_V4L0_DATA_WIDTH(32),
    .C_M_AXI_V4L0_AWUSER_WIDTH(1),
    .C_M_AXI_V4L0_ARUSER_WIDTH(1),
    .C_M_AXI_V4L0_WUSER_WIDTH(1),
    .C_M_AXI_V4L0_RUSER_WIDTH(1),
    .C_M_AXI_V4L0_BUSER_WIDTH(1),
    .C_M_AXI_V4L0_USER_VALUE(32'H00000000),
    .C_M_AXI_V4L0_PROT_VALUE(3'B000),
    .C_M_AXI_V4L0_CACHE_VALUE(4'B0011),
    .C_M_AXI_V4L1_ID_WIDTH(1),
    .C_M_AXI_V4L1_ADDR_WIDTH(64),
    .C_M_AXI_V4L1_DATA_WIDTH(32),
    .C_M_AXI_V4L1_AWUSER_WIDTH(1),
    .C_M_AXI_V4L1_ARUSER_WIDTH(1),
    .C_M_AXI_V4L1_WUSER_WIDTH(1),
    .C_M_AXI_V4L1_RUSER_WIDTH(1),
    .C_M_AXI_V4L1_BUSER_WIDTH(1),
    .C_M_AXI_V4L1_USER_VALUE(32'H00000000),
    .C_M_AXI_V4L1_PROT_VALUE(3'B000),
    .C_M_AXI_V4L1_CACHE_VALUE(4'B0011),
    .C_M_AXI_V4L2_ID_WIDTH(1),
    .C_M_AXI_V4L2_ADDR_WIDTH(64),
    .C_M_AXI_V4L2_DATA_WIDTH(32),
    .C_M_AXI_V4L2_AWUSER_WIDTH(1),
    .C_M_AXI_V4L2_ARUSER_WIDTH(1),
    .C_M_AXI_V4L2_WUSER_WIDTH(1),
    .C_M_AXI_V4L2_RUSER_WIDTH(1),
    .C_M_AXI_V4L2_BUSER_WIDTH(1),
    .C_M_AXI_V4L2_USER_VALUE(32'H00000000),
    .C_M_AXI_V4L2_PROT_VALUE(3'B000),
    .C_M_AXI_V4L2_CACHE_VALUE(4'B0011),
    .C_M_AXI_V4U0_ID_WIDTH(1),
    .C_M_AXI_V4U0_ADDR_WIDTH(64),
    .C_M_AXI_V4U0_DATA_WIDTH(32),
    .C_M_AXI_V4U0_AWUSER_WIDTH(1),
    .C_M_AXI_V4U0_ARUSER_WIDTH(1),
    .C_M_AXI_V4U0_WUSER_WIDTH(1),
    .C_M_AXI_V4U0_RUSER_WIDTH(1),
    .C_M_AXI_V4U0_BUSER_WIDTH(1),
    .C_M_AXI_V4U0_USER_VALUE(32'H00000000),
    .C_M_AXI_V4U0_PROT_VALUE(3'B000),
    .C_M_AXI_V4U0_CACHE_VALUE(4'B0011),
    .C_M_AXI_V4U1_ID_WIDTH(1),
    .C_M_AXI_V4U1_ADDR_WIDTH(64),
    .C_M_AXI_V4U1_DATA_WIDTH(32),
    .C_M_AXI_V4U1_AWUSER_WIDTH(1),
    .C_M_AXI_V4U1_ARUSER_WIDTH(1),
    .C_M_AXI_V4U1_WUSER_WIDTH(1),
    .C_M_AXI_V4U1_RUSER_WIDTH(1),
    .C_M_AXI_V4U1_BUSER_WIDTH(1),
    .C_M_AXI_V4U1_USER_VALUE(32'H00000000),
    .C_M_AXI_V4U1_PROT_VALUE(3'B000),
    .C_M_AXI_V4U1_CACHE_VALUE(4'B0011),
    .C_M_AXI_V4U2_ID_WIDTH(1),
    .C_M_AXI_V4U2_ADDR_WIDTH(64),
    .C_M_AXI_V4U2_DATA_WIDTH(32),
    .C_M_AXI_V4U2_AWUSER_WIDTH(1),
    .C_M_AXI_V4U2_ARUSER_WIDTH(1),
    .C_M_AXI_V4U2_WUSER_WIDTH(1),
    .C_M_AXI_V4U2_RUSER_WIDTH(1),
    .C_M_AXI_V4U2_BUSER_WIDTH(1),
    .C_M_AXI_V4U2_USER_VALUE(32'H00000000),
    .C_M_AXI_V4U2_PROT_VALUE(3'B000),
    .C_M_AXI_V4U2_CACHE_VALUE(4'B0011),
    .C_M_AXI_V4U3_ID_WIDTH(1),
    .C_M_AXI_V4U3_ADDR_WIDTH(64),
    .C_M_AXI_V4U3_DATA_WIDTH(32),
    .C_M_AXI_V4U3_AWUSER_WIDTH(1),
    .C_M_AXI_V4U3_ARUSER_WIDTH(1),
    .C_M_AXI_V4U3_WUSER_WIDTH(1),
    .C_M_AXI_V4U3_RUSER_WIDTH(1),
    .C_M_AXI_V4U3_BUSER_WIDTH(1),
    .C_M_AXI_V4U3_USER_VALUE(32'H00000000),
    .C_M_AXI_V4U3_PROT_VALUE(3'B000),
    .C_M_AXI_V4U3_CACHE_VALUE(4'B0011)
  ) inst (
    .status_ap_vld(status_ap_vld),
    .muladds_ap_vld(muladds_ap_vld),
    .divisions_ap_vld(divisions_ap_vld),
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_v4a0_AWID(m_axi_v4a0_AWID),
    .m_axi_v4a0_AWADDR(m_axi_v4a0_AWADDR),
    .m_axi_v4a0_AWLEN(m_axi_v4a0_AWLEN),
    .m_axi_v4a0_AWSIZE(m_axi_v4a0_AWSIZE),
    .m_axi_v4a0_AWBURST(m_axi_v4a0_AWBURST),
    .m_axi_v4a0_AWLOCK(m_axi_v4a0_AWLOCK),
    .m_axi_v4a0_AWREGION(m_axi_v4a0_AWREGION),
    .m_axi_v4a0_AWCACHE(m_axi_v4a0_AWCACHE),
    .m_axi_v4a0_AWPROT(m_axi_v4a0_AWPROT),
    .m_axi_v4a0_AWQOS(m_axi_v4a0_AWQOS),
    .m_axi_v4a0_AWUSER(),
    .m_axi_v4a0_AWVALID(m_axi_v4a0_AWVALID),
    .m_axi_v4a0_AWREADY(m_axi_v4a0_AWREADY),
    .m_axi_v4a0_WID(m_axi_v4a0_WID),
    .m_axi_v4a0_WDATA(m_axi_v4a0_WDATA),
    .m_axi_v4a0_WSTRB(m_axi_v4a0_WSTRB),
    .m_axi_v4a0_WLAST(m_axi_v4a0_WLAST),
    .m_axi_v4a0_WUSER(),
    .m_axi_v4a0_WVALID(m_axi_v4a0_WVALID),
    .m_axi_v4a0_WREADY(m_axi_v4a0_WREADY),
    .m_axi_v4a0_BID(m_axi_v4a0_BID),
    .m_axi_v4a0_BRESP(m_axi_v4a0_BRESP),
    .m_axi_v4a0_BUSER(1'B0),
    .m_axi_v4a0_BVALID(m_axi_v4a0_BVALID),
    .m_axi_v4a0_BREADY(m_axi_v4a0_BREADY),
    .m_axi_v4a0_ARID(m_axi_v4a0_ARID),
    .m_axi_v4a0_ARADDR(m_axi_v4a0_ARADDR),
    .m_axi_v4a0_ARLEN(m_axi_v4a0_ARLEN),
    .m_axi_v4a0_ARSIZE(m_axi_v4a0_ARSIZE),
    .m_axi_v4a0_ARBURST(m_axi_v4a0_ARBURST),
    .m_axi_v4a0_ARLOCK(m_axi_v4a0_ARLOCK),
    .m_axi_v4a0_ARREGION(m_axi_v4a0_ARREGION),
    .m_axi_v4a0_ARCACHE(m_axi_v4a0_ARCACHE),
    .m_axi_v4a0_ARPROT(m_axi_v4a0_ARPROT),
    .m_axi_v4a0_ARQOS(m_axi_v4a0_ARQOS),
    .m_axi_v4a0_ARUSER(),
    .m_axi_v4a0_ARVALID(m_axi_v4a0_ARVALID),
    .m_axi_v4a0_ARREADY(m_axi_v4a0_ARREADY),
    .m_axi_v4a0_RID(m_axi_v4a0_RID),
    .m_axi_v4a0_RDATA(m_axi_v4a0_RDATA),
    .m_axi_v4a0_RRESP(m_axi_v4a0_RRESP),
    .m_axi_v4a0_RLAST(m_axi_v4a0_RLAST),
    .m_axi_v4a0_RUSER(1'B0),
    .m_axi_v4a0_RVALID(m_axi_v4a0_RVALID),
    .m_axi_v4a0_RREADY(m_axi_v4a0_RREADY),
    .m_axi_v4a1_AWID(m_axi_v4a1_AWID),
    .m_axi_v4a1_AWADDR(m_axi_v4a1_AWADDR),
    .m_axi_v4a1_AWLEN(m_axi_v4a1_AWLEN),
    .m_axi_v4a1_AWSIZE(m_axi_v4a1_AWSIZE),
    .m_axi_v4a1_AWBURST(m_axi_v4a1_AWBURST),
    .m_axi_v4a1_AWLOCK(m_axi_v4a1_AWLOCK),
    .m_axi_v4a1_AWREGION(m_axi_v4a1_AWREGION),
    .m_axi_v4a1_AWCACHE(m_axi_v4a1_AWCACHE),
    .m_axi_v4a1_AWPROT(m_axi_v4a1_AWPROT),
    .m_axi_v4a1_AWQOS(m_axi_v4a1_AWQOS),
    .m_axi_v4a1_AWUSER(),
    .m_axi_v4a1_AWVALID(m_axi_v4a1_AWVALID),
    .m_axi_v4a1_AWREADY(m_axi_v4a1_AWREADY),
    .m_axi_v4a1_WID(m_axi_v4a1_WID),
    .m_axi_v4a1_WDATA(m_axi_v4a1_WDATA),
    .m_axi_v4a1_WSTRB(m_axi_v4a1_WSTRB),
    .m_axi_v4a1_WLAST(m_axi_v4a1_WLAST),
    .m_axi_v4a1_WUSER(),
    .m_axi_v4a1_WVALID(m_axi_v4a1_WVALID),
    .m_axi_v4a1_WREADY(m_axi_v4a1_WREADY),
    .m_axi_v4a1_BID(m_axi_v4a1_BID),
    .m_axi_v4a1_BRESP(m_axi_v4a1_BRESP),
    .m_axi_v4a1_BUSER(1'B0),
    .m_axi_v4a1_BVALID(m_axi_v4a1_BVALID),
    .m_axi_v4a1_BREADY(m_axi_v4a1_BREADY),
    .m_axi_v4a1_ARID(m_axi_v4a1_ARID),
    .m_axi_v4a1_ARADDR(m_axi_v4a1_ARADDR),
    .m_axi_v4a1_ARLEN(m_axi_v4a1_ARLEN),
    .m_axi_v4a1_ARSIZE(m_axi_v4a1_ARSIZE),
    .m_axi_v4a1_ARBURST(m_axi_v4a1_ARBURST),
    .m_axi_v4a1_ARLOCK(m_axi_v4a1_ARLOCK),
    .m_axi_v4a1_ARREGION(m_axi_v4a1_ARREGION),
    .m_axi_v4a1_ARCACHE(m_axi_v4a1_ARCACHE),
    .m_axi_v4a1_ARPROT(m_axi_v4a1_ARPROT),
    .m_axi_v4a1_ARQOS(m_axi_v4a1_ARQOS),
    .m_axi_v4a1_ARUSER(),
    .m_axi_v4a1_ARVALID(m_axi_v4a1_ARVALID),
    .m_axi_v4a1_ARREADY(m_axi_v4a1_ARREADY),
    .m_axi_v4a1_RID(m_axi_v4a1_RID),
    .m_axi_v4a1_RDATA(m_axi_v4a1_RDATA),
    .m_axi_v4a1_RRESP(m_axi_v4a1_RRESP),
    .m_axi_v4a1_RLAST(m_axi_v4a1_RLAST),
    .m_axi_v4a1_RUSER(1'B0),
    .m_axi_v4a1_RVALID(m_axi_v4a1_RVALID),
    .m_axi_v4a1_RREADY(m_axi_v4a1_RREADY),
    .m_axi_v4a2_AWID(m_axi_v4a2_AWID),
    .m_axi_v4a2_AWADDR(m_axi_v4a2_AWADDR),
    .m_axi_v4a2_AWLEN(m_axi_v4a2_AWLEN),
    .m_axi_v4a2_AWSIZE(m_axi_v4a2_AWSIZE),
    .m_axi_v4a2_AWBURST(m_axi_v4a2_AWBURST),
    .m_axi_v4a2_AWLOCK(m_axi_v4a2_AWLOCK),
    .m_axi_v4a2_AWREGION(m_axi_v4a2_AWREGION),
    .m_axi_v4a2_AWCACHE(m_axi_v4a2_AWCACHE),
    .m_axi_v4a2_AWPROT(m_axi_v4a2_AWPROT),
    .m_axi_v4a2_AWQOS(m_axi_v4a2_AWQOS),
    .m_axi_v4a2_AWUSER(),
    .m_axi_v4a2_AWVALID(m_axi_v4a2_AWVALID),
    .m_axi_v4a2_AWREADY(m_axi_v4a2_AWREADY),
    .m_axi_v4a2_WID(m_axi_v4a2_WID),
    .m_axi_v4a2_WDATA(m_axi_v4a2_WDATA),
    .m_axi_v4a2_WSTRB(m_axi_v4a2_WSTRB),
    .m_axi_v4a2_WLAST(m_axi_v4a2_WLAST),
    .m_axi_v4a2_WUSER(),
    .m_axi_v4a2_WVALID(m_axi_v4a2_WVALID),
    .m_axi_v4a2_WREADY(m_axi_v4a2_WREADY),
    .m_axi_v4a2_BID(m_axi_v4a2_BID),
    .m_axi_v4a2_BRESP(m_axi_v4a2_BRESP),
    .m_axi_v4a2_BUSER(1'B0),
    .m_axi_v4a2_BVALID(m_axi_v4a2_BVALID),
    .m_axi_v4a2_BREADY(m_axi_v4a2_BREADY),
    .m_axi_v4a2_ARID(m_axi_v4a2_ARID),
    .m_axi_v4a2_ARADDR(m_axi_v4a2_ARADDR),
    .m_axi_v4a2_ARLEN(m_axi_v4a2_ARLEN),
    .m_axi_v4a2_ARSIZE(m_axi_v4a2_ARSIZE),
    .m_axi_v4a2_ARBURST(m_axi_v4a2_ARBURST),
    .m_axi_v4a2_ARLOCK(m_axi_v4a2_ARLOCK),
    .m_axi_v4a2_ARREGION(m_axi_v4a2_ARREGION),
    .m_axi_v4a2_ARCACHE(m_axi_v4a2_ARCACHE),
    .m_axi_v4a2_ARPROT(m_axi_v4a2_ARPROT),
    .m_axi_v4a2_ARQOS(m_axi_v4a2_ARQOS),
    .m_axi_v4a2_ARUSER(),
    .m_axi_v4a2_ARVALID(m_axi_v4a2_ARVALID),
    .m_axi_v4a2_ARREADY(m_axi_v4a2_ARREADY),
    .m_axi_v4a2_RID(m_axi_v4a2_RID),
    .m_axi_v4a2_RDATA(m_axi_v4a2_RDATA),
    .m_axi_v4a2_RRESP(m_axi_v4a2_RRESP),
    .m_axi_v4a2_RLAST(m_axi_v4a2_RLAST),
    .m_axi_v4a2_RUSER(1'B0),
    .m_axi_v4a2_RVALID(m_axi_v4a2_RVALID),
    .m_axi_v4a2_RREADY(m_axi_v4a2_RREADY),
    .m_axi_v4l0_AWID(m_axi_v4l0_AWID),
    .m_axi_v4l0_AWADDR(m_axi_v4l0_AWADDR),
    .m_axi_v4l0_AWLEN(m_axi_v4l0_AWLEN),
    .m_axi_v4l0_AWSIZE(m_axi_v4l0_AWSIZE),
    .m_axi_v4l0_AWBURST(m_axi_v4l0_AWBURST),
    .m_axi_v4l0_AWLOCK(m_axi_v4l0_AWLOCK),
    .m_axi_v4l0_AWREGION(m_axi_v4l0_AWREGION),
    .m_axi_v4l0_AWCACHE(m_axi_v4l0_AWCACHE),
    .m_axi_v4l0_AWPROT(m_axi_v4l0_AWPROT),
    .m_axi_v4l0_AWQOS(m_axi_v4l0_AWQOS),
    .m_axi_v4l0_AWUSER(),
    .m_axi_v4l0_AWVALID(m_axi_v4l0_AWVALID),
    .m_axi_v4l0_AWREADY(m_axi_v4l0_AWREADY),
    .m_axi_v4l0_WID(m_axi_v4l0_WID),
    .m_axi_v4l0_WDATA(m_axi_v4l0_WDATA),
    .m_axi_v4l0_WSTRB(m_axi_v4l0_WSTRB),
    .m_axi_v4l0_WLAST(m_axi_v4l0_WLAST),
    .m_axi_v4l0_WUSER(),
    .m_axi_v4l0_WVALID(m_axi_v4l0_WVALID),
    .m_axi_v4l0_WREADY(m_axi_v4l0_WREADY),
    .m_axi_v4l0_BID(m_axi_v4l0_BID),
    .m_axi_v4l0_BRESP(m_axi_v4l0_BRESP),
    .m_axi_v4l0_BUSER(1'B0),
    .m_axi_v4l0_BVALID(m_axi_v4l0_BVALID),
    .m_axi_v4l0_BREADY(m_axi_v4l0_BREADY),
    .m_axi_v4l0_ARID(m_axi_v4l0_ARID),
    .m_axi_v4l0_ARADDR(m_axi_v4l0_ARADDR),
    .m_axi_v4l0_ARLEN(m_axi_v4l0_ARLEN),
    .m_axi_v4l0_ARSIZE(m_axi_v4l0_ARSIZE),
    .m_axi_v4l0_ARBURST(m_axi_v4l0_ARBURST),
    .m_axi_v4l0_ARLOCK(m_axi_v4l0_ARLOCK),
    .m_axi_v4l0_ARREGION(m_axi_v4l0_ARREGION),
    .m_axi_v4l0_ARCACHE(m_axi_v4l0_ARCACHE),
    .m_axi_v4l0_ARPROT(m_axi_v4l0_ARPROT),
    .m_axi_v4l0_ARQOS(m_axi_v4l0_ARQOS),
    .m_axi_v4l0_ARUSER(),
    .m_axi_v4l0_ARVALID(m_axi_v4l0_ARVALID),
    .m_axi_v4l0_ARREADY(m_axi_v4l0_ARREADY),
    .m_axi_v4l0_RID(m_axi_v4l0_RID),
    .m_axi_v4l0_RDATA(m_axi_v4l0_RDATA),
    .m_axi_v4l0_RRESP(m_axi_v4l0_RRESP),
    .m_axi_v4l0_RLAST(m_axi_v4l0_RLAST),
    .m_axi_v4l0_RUSER(1'B0),
    .m_axi_v4l0_RVALID(m_axi_v4l0_RVALID),
    .m_axi_v4l0_RREADY(m_axi_v4l0_RREADY),
    .m_axi_v4l1_AWID(m_axi_v4l1_AWID),
    .m_axi_v4l1_AWADDR(m_axi_v4l1_AWADDR),
    .m_axi_v4l1_AWLEN(m_axi_v4l1_AWLEN),
    .m_axi_v4l1_AWSIZE(m_axi_v4l1_AWSIZE),
    .m_axi_v4l1_AWBURST(m_axi_v4l1_AWBURST),
    .m_axi_v4l1_AWLOCK(m_axi_v4l1_AWLOCK),
    .m_axi_v4l1_AWREGION(m_axi_v4l1_AWREGION),
    .m_axi_v4l1_AWCACHE(m_axi_v4l1_AWCACHE),
    .m_axi_v4l1_AWPROT(m_axi_v4l1_AWPROT),
    .m_axi_v4l1_AWQOS(m_axi_v4l1_AWQOS),
    .m_axi_v4l1_AWUSER(),
    .m_axi_v4l1_AWVALID(m_axi_v4l1_AWVALID),
    .m_axi_v4l1_AWREADY(m_axi_v4l1_AWREADY),
    .m_axi_v4l1_WID(m_axi_v4l1_WID),
    .m_axi_v4l1_WDATA(m_axi_v4l1_WDATA),
    .m_axi_v4l1_WSTRB(m_axi_v4l1_WSTRB),
    .m_axi_v4l1_WLAST(m_axi_v4l1_WLAST),
    .m_axi_v4l1_WUSER(),
    .m_axi_v4l1_WVALID(m_axi_v4l1_WVALID),
    .m_axi_v4l1_WREADY(m_axi_v4l1_WREADY),
    .m_axi_v4l1_BID(m_axi_v4l1_BID),
    .m_axi_v4l1_BRESP(m_axi_v4l1_BRESP),
    .m_axi_v4l1_BUSER(1'B0),
    .m_axi_v4l1_BVALID(m_axi_v4l1_BVALID),
    .m_axi_v4l1_BREADY(m_axi_v4l1_BREADY),
    .m_axi_v4l1_ARID(m_axi_v4l1_ARID),
    .m_axi_v4l1_ARADDR(m_axi_v4l1_ARADDR),
    .m_axi_v4l1_ARLEN(m_axi_v4l1_ARLEN),
    .m_axi_v4l1_ARSIZE(m_axi_v4l1_ARSIZE),
    .m_axi_v4l1_ARBURST(m_axi_v4l1_ARBURST),
    .m_axi_v4l1_ARLOCK(m_axi_v4l1_ARLOCK),
    .m_axi_v4l1_ARREGION(m_axi_v4l1_ARREGION),
    .m_axi_v4l1_ARCACHE(m_axi_v4l1_ARCACHE),
    .m_axi_v4l1_ARPROT(m_axi_v4l1_ARPROT),
    .m_axi_v4l1_ARQOS(m_axi_v4l1_ARQOS),
    .m_axi_v4l1_ARUSER(),
    .m_axi_v4l1_ARVALID(m_axi_v4l1_ARVALID),
    .m_axi_v4l1_ARREADY(m_axi_v4l1_ARREADY),
    .m_axi_v4l1_RID(m_axi_v4l1_RID),
    .m_axi_v4l1_RDATA(m_axi_v4l1_RDATA),
    .m_axi_v4l1_RRESP(m_axi_v4l1_RRESP),
    .m_axi_v4l1_RLAST(m_axi_v4l1_RLAST),
    .m_axi_v4l1_RUSER(1'B0),
    .m_axi_v4l1_RVALID(m_axi_v4l1_RVALID),
    .m_axi_v4l1_RREADY(m_axi_v4l1_RREADY),
    .m_axi_v4l2_AWID(m_axi_v4l2_AWID),
    .m_axi_v4l2_AWADDR(m_axi_v4l2_AWADDR),
    .m_axi_v4l2_AWLEN(m_axi_v4l2_AWLEN),
    .m_axi_v4l2_AWSIZE(m_axi_v4l2_AWSIZE),
    .m_axi_v4l2_AWBURST(m_axi_v4l2_AWBURST),
    .m_axi_v4l2_AWLOCK(m_axi_v4l2_AWLOCK),
    .m_axi_v4l2_AWREGION(m_axi_v4l2_AWREGION),
    .m_axi_v4l2_AWCACHE(m_axi_v4l2_AWCACHE),
    .m_axi_v4l2_AWPROT(m_axi_v4l2_AWPROT),
    .m_axi_v4l2_AWQOS(m_axi_v4l2_AWQOS),
    .m_axi_v4l2_AWUSER(),
    .m_axi_v4l2_AWVALID(m_axi_v4l2_AWVALID),
    .m_axi_v4l2_AWREADY(m_axi_v4l2_AWREADY),
    .m_axi_v4l2_WID(m_axi_v4l2_WID),
    .m_axi_v4l2_WDATA(m_axi_v4l2_WDATA),
    .m_axi_v4l2_WSTRB(m_axi_v4l2_WSTRB),
    .m_axi_v4l2_WLAST(m_axi_v4l2_WLAST),
    .m_axi_v4l2_WUSER(),
    .m_axi_v4l2_WVALID(m_axi_v4l2_WVALID),
    .m_axi_v4l2_WREADY(m_axi_v4l2_WREADY),
    .m_axi_v4l2_BID(m_axi_v4l2_BID),
    .m_axi_v4l2_BRESP(m_axi_v4l2_BRESP),
    .m_axi_v4l2_BUSER(1'B0),
    .m_axi_v4l2_BVALID(m_axi_v4l2_BVALID),
    .m_axi_v4l2_BREADY(m_axi_v4l2_BREADY),
    .m_axi_v4l2_ARID(m_axi_v4l2_ARID),
    .m_axi_v4l2_ARADDR(m_axi_v4l2_ARADDR),
    .m_axi_v4l2_ARLEN(m_axi_v4l2_ARLEN),
    .m_axi_v4l2_ARSIZE(m_axi_v4l2_ARSIZE),
    .m_axi_v4l2_ARBURST(m_axi_v4l2_ARBURST),
    .m_axi_v4l2_ARLOCK(m_axi_v4l2_ARLOCK),
    .m_axi_v4l2_ARREGION(m_axi_v4l2_ARREGION),
    .m_axi_v4l2_ARCACHE(m_axi_v4l2_ARCACHE),
    .m_axi_v4l2_ARPROT(m_axi_v4l2_ARPROT),
    .m_axi_v4l2_ARQOS(m_axi_v4l2_ARQOS),
    .m_axi_v4l2_ARUSER(),
    .m_axi_v4l2_ARVALID(m_axi_v4l2_ARVALID),
    .m_axi_v4l2_ARREADY(m_axi_v4l2_ARREADY),
    .m_axi_v4l2_RID(m_axi_v4l2_RID),
    .m_axi_v4l2_RDATA(m_axi_v4l2_RDATA),
    .m_axi_v4l2_RRESP(m_axi_v4l2_RRESP),
    .m_axi_v4l2_RLAST(m_axi_v4l2_RLAST),
    .m_axi_v4l2_RUSER(1'B0),
    .m_axi_v4l2_RVALID(m_axi_v4l2_RVALID),
    .m_axi_v4l2_RREADY(m_axi_v4l2_RREADY),
    .m_axi_v4u0_AWID(m_axi_v4u0_AWID),
    .m_axi_v4u0_AWADDR(m_axi_v4u0_AWADDR),
    .m_axi_v4u0_AWLEN(m_axi_v4u0_AWLEN),
    .m_axi_v4u0_AWSIZE(m_axi_v4u0_AWSIZE),
    .m_axi_v4u0_AWBURST(m_axi_v4u0_AWBURST),
    .m_axi_v4u0_AWLOCK(m_axi_v4u0_AWLOCK),
    .m_axi_v4u0_AWREGION(m_axi_v4u0_AWREGION),
    .m_axi_v4u0_AWCACHE(m_axi_v4u0_AWCACHE),
    .m_axi_v4u0_AWPROT(m_axi_v4u0_AWPROT),
    .m_axi_v4u0_AWQOS(m_axi_v4u0_AWQOS),
    .m_axi_v4u0_AWUSER(),
    .m_axi_v4u0_AWVALID(m_axi_v4u0_AWVALID),
    .m_axi_v4u0_AWREADY(m_axi_v4u0_AWREADY),
    .m_axi_v4u0_WID(m_axi_v4u0_WID),
    .m_axi_v4u0_WDATA(m_axi_v4u0_WDATA),
    .m_axi_v4u0_WSTRB(m_axi_v4u0_WSTRB),
    .m_axi_v4u0_WLAST(m_axi_v4u0_WLAST),
    .m_axi_v4u0_WUSER(),
    .m_axi_v4u0_WVALID(m_axi_v4u0_WVALID),
    .m_axi_v4u0_WREADY(m_axi_v4u0_WREADY),
    .m_axi_v4u0_BID(m_axi_v4u0_BID),
    .m_axi_v4u0_BRESP(m_axi_v4u0_BRESP),
    .m_axi_v4u0_BUSER(1'B0),
    .m_axi_v4u0_BVALID(m_axi_v4u0_BVALID),
    .m_axi_v4u0_BREADY(m_axi_v4u0_BREADY),
    .m_axi_v4u0_ARID(m_axi_v4u0_ARID),
    .m_axi_v4u0_ARADDR(m_axi_v4u0_ARADDR),
    .m_axi_v4u0_ARLEN(m_axi_v4u0_ARLEN),
    .m_axi_v4u0_ARSIZE(m_axi_v4u0_ARSIZE),
    .m_axi_v4u0_ARBURST(m_axi_v4u0_ARBURST),
    .m_axi_v4u0_ARLOCK(m_axi_v4u0_ARLOCK),
    .m_axi_v4u0_ARREGION(m_axi_v4u0_ARREGION),
    .m_axi_v4u0_ARCACHE(m_axi_v4u0_ARCACHE),
    .m_axi_v4u0_ARPROT(m_axi_v4u0_ARPROT),
    .m_axi_v4u0_ARQOS(m_axi_v4u0_ARQOS),
    .m_axi_v4u0_ARUSER(),
    .m_axi_v4u0_ARVALID(m_axi_v4u0_ARVALID),
    .m_axi_v4u0_ARREADY(m_axi_v4u0_ARREADY),
    .m_axi_v4u0_RID(m_axi_v4u0_RID),
    .m_axi_v4u0_RDATA(m_axi_v4u0_RDATA),
    .m_axi_v4u0_RRESP(m_axi_v4u0_RRESP),
    .m_axi_v4u0_RLAST(m_axi_v4u0_RLAST),
    .m_axi_v4u0_RUSER(1'B0),
    .m_axi_v4u0_RVALID(m_axi_v4u0_RVALID),
    .m_axi_v4u0_RREADY(m_axi_v4u0_RREADY),
    .m_axi_v4u1_AWID(m_axi_v4u1_AWID),
    .m_axi_v4u1_AWADDR(m_axi_v4u1_AWADDR),
    .m_axi_v4u1_AWLEN(m_axi_v4u1_AWLEN),
    .m_axi_v4u1_AWSIZE(m_axi_v4u1_AWSIZE),
    .m_axi_v4u1_AWBURST(m_axi_v4u1_AWBURST),
    .m_axi_v4u1_AWLOCK(m_axi_v4u1_AWLOCK),
    .m_axi_v4u1_AWREGION(m_axi_v4u1_AWREGION),
    .m_axi_v4u1_AWCACHE(m_axi_v4u1_AWCACHE),
    .m_axi_v4u1_AWPROT(m_axi_v4u1_AWPROT),
    .m_axi_v4u1_AWQOS(m_axi_v4u1_AWQOS),
    .m_axi_v4u1_AWUSER(),
    .m_axi_v4u1_AWVALID(m_axi_v4u1_AWVALID),
    .m_axi_v4u1_AWREADY(m_axi_v4u1_AWREADY),
    .m_axi_v4u1_WID(m_axi_v4u1_WID),
    .m_axi_v4u1_WDATA(m_axi_v4u1_WDATA),
    .m_axi_v4u1_WSTRB(m_axi_v4u1_WSTRB),
    .m_axi_v4u1_WLAST(m_axi_v4u1_WLAST),
    .m_axi_v4u1_WUSER(),
    .m_axi_v4u1_WVALID(m_axi_v4u1_WVALID),
    .m_axi_v4u1_WREADY(m_axi_v4u1_WREADY),
    .m_axi_v4u1_BID(m_axi_v4u1_BID),
    .m_axi_v4u1_BRESP(m_axi_v4u1_BRESP),
    .m_axi_v4u1_BUSER(1'B0),
    .m_axi_v4u1_BVALID(m_axi_v4u1_BVALID),
    .m_axi_v4u1_BREADY(m_axi_v4u1_BREADY),
    .m_axi_v4u1_ARID(m_axi_v4u1_ARID),
    .m_axi_v4u1_ARADDR(m_axi_v4u1_ARADDR),
    .m_axi_v4u1_ARLEN(m_axi_v4u1_ARLEN),
    .m_axi_v4u1_ARSIZE(m_axi_v4u1_ARSIZE),
    .m_axi_v4u1_ARBURST(m_axi_v4u1_ARBURST),
    .m_axi_v4u1_ARLOCK(m_axi_v4u1_ARLOCK),
    .m_axi_v4u1_ARREGION(m_axi_v4u1_ARREGION),
    .m_axi_v4u1_ARCACHE(m_axi_v4u1_ARCACHE),
    .m_axi_v4u1_ARPROT(m_axi_v4u1_ARPROT),
    .m_axi_v4u1_ARQOS(m_axi_v4u1_ARQOS),
    .m_axi_v4u1_ARUSER(),
    .m_axi_v4u1_ARVALID(m_axi_v4u1_ARVALID),
    .m_axi_v4u1_ARREADY(m_axi_v4u1_ARREADY),
    .m_axi_v4u1_RID(m_axi_v4u1_RID),
    .m_axi_v4u1_RDATA(m_axi_v4u1_RDATA),
    .m_axi_v4u1_RRESP(m_axi_v4u1_RRESP),
    .m_axi_v4u1_RLAST(m_axi_v4u1_RLAST),
    .m_axi_v4u1_RUSER(1'B0),
    .m_axi_v4u1_RVALID(m_axi_v4u1_RVALID),
    .m_axi_v4u1_RREADY(m_axi_v4u1_RREADY),
    .m_axi_v4u2_AWID(m_axi_v4u2_AWID),
    .m_axi_v4u2_AWADDR(m_axi_v4u2_AWADDR),
    .m_axi_v4u2_AWLEN(m_axi_v4u2_AWLEN),
    .m_axi_v4u2_AWSIZE(m_axi_v4u2_AWSIZE),
    .m_axi_v4u2_AWBURST(m_axi_v4u2_AWBURST),
    .m_axi_v4u2_AWLOCK(m_axi_v4u2_AWLOCK),
    .m_axi_v4u2_AWREGION(m_axi_v4u2_AWREGION),
    .m_axi_v4u2_AWCACHE(m_axi_v4u2_AWCACHE),
    .m_axi_v4u2_AWPROT(m_axi_v4u2_AWPROT),
    .m_axi_v4u2_AWQOS(m_axi_v4u2_AWQOS),
    .m_axi_v4u2_AWUSER(),
    .m_axi_v4u2_AWVALID(m_axi_v4u2_AWVALID),
    .m_axi_v4u2_AWREADY(m_axi_v4u2_AWREADY),
    .m_axi_v4u2_WID(m_axi_v4u2_WID),
    .m_axi_v4u2_WDATA(m_axi_v4u2_WDATA),
    .m_axi_v4u2_WSTRB(m_axi_v4u2_WSTRB),
    .m_axi_v4u2_WLAST(m_axi_v4u2_WLAST),
    .m_axi_v4u2_WUSER(),
    .m_axi_v4u2_WVALID(m_axi_v4u2_WVALID),
    .m_axi_v4u2_WREADY(m_axi_v4u2_WREADY),
    .m_axi_v4u2_BID(m_axi_v4u2_BID),
    .m_axi_v4u2_BRESP(m_axi_v4u2_BRESP),
    .m_axi_v4u2_BUSER(1'B0),
    .m_axi_v4u2_BVALID(m_axi_v4u2_BVALID),
    .m_axi_v4u2_BREADY(m_axi_v4u2_BREADY),
    .m_axi_v4u2_ARID(m_axi_v4u2_ARID),
    .m_axi_v4u2_ARADDR(m_axi_v4u2_ARADDR),
    .m_axi_v4u2_ARLEN(m_axi_v4u2_ARLEN),
    .m_axi_v4u2_ARSIZE(m_axi_v4u2_ARSIZE),
    .m_axi_v4u2_ARBURST(m_axi_v4u2_ARBURST),
    .m_axi_v4u2_ARLOCK(m_axi_v4u2_ARLOCK),
    .m_axi_v4u2_ARREGION(m_axi_v4u2_ARREGION),
    .m_axi_v4u2_ARCACHE(m_axi_v4u2_ARCACHE),
    .m_axi_v4u2_ARPROT(m_axi_v4u2_ARPROT),
    .m_axi_v4u2_ARQOS(m_axi_v4u2_ARQOS),
    .m_axi_v4u2_ARUSER(),
    .m_axi_v4u2_ARVALID(m_axi_v4u2_ARVALID),
    .m_axi_v4u2_ARREADY(m_axi_v4u2_ARREADY),
    .m_axi_v4u2_RID(m_axi_v4u2_RID),
    .m_axi_v4u2_RDATA(m_axi_v4u2_RDATA),
    .m_axi_v4u2_RRESP(m_axi_v4u2_RRESP),
    .m_axi_v4u2_RLAST(m_axi_v4u2_RLAST),
    .m_axi_v4u2_RUSER(1'B0),
    .m_axi_v4u2_RVALID(m_axi_v4u2_RVALID),
    .m_axi_v4u2_RREADY(m_axi_v4u2_RREADY),
    .m_axi_v4u3_AWID(m_axi_v4u3_AWID),
    .m_axi_v4u3_AWADDR(m_axi_v4u3_AWADDR),
    .m_axi_v4u3_AWLEN(m_axi_v4u3_AWLEN),
    .m_axi_v4u3_AWSIZE(m_axi_v4u3_AWSIZE),
    .m_axi_v4u3_AWBURST(m_axi_v4u3_AWBURST),
    .m_axi_v4u3_AWLOCK(m_axi_v4u3_AWLOCK),
    .m_axi_v4u3_AWREGION(m_axi_v4u3_AWREGION),
    .m_axi_v4u3_AWCACHE(m_axi_v4u3_AWCACHE),
    .m_axi_v4u3_AWPROT(m_axi_v4u3_AWPROT),
    .m_axi_v4u3_AWQOS(m_axi_v4u3_AWQOS),
    .m_axi_v4u3_AWUSER(),
    .m_axi_v4u3_AWVALID(m_axi_v4u3_AWVALID),
    .m_axi_v4u3_AWREADY(m_axi_v4u3_AWREADY),
    .m_axi_v4u3_WID(m_axi_v4u3_WID),
    .m_axi_v4u3_WDATA(m_axi_v4u3_WDATA),
    .m_axi_v4u3_WSTRB(m_axi_v4u3_WSTRB),
    .m_axi_v4u3_WLAST(m_axi_v4u3_WLAST),
    .m_axi_v4u3_WUSER(),
    .m_axi_v4u3_WVALID(m_axi_v4u3_WVALID),
    .m_axi_v4u3_WREADY(m_axi_v4u3_WREADY),
    .m_axi_v4u3_BID(m_axi_v4u3_BID),
    .m_axi_v4u3_BRESP(m_axi_v4u3_BRESP),
    .m_axi_v4u3_BUSER(1'B0),
    .m_axi_v4u3_BVALID(m_axi_v4u3_BVALID),
    .m_axi_v4u3_BREADY(m_axi_v4u3_BREADY),
    .m_axi_v4u3_ARID(m_axi_v4u3_ARID),
    .m_axi_v4u3_ARADDR(m_axi_v4u3_ARADDR),
    .m_axi_v4u3_ARLEN(m_axi_v4u3_ARLEN),
    .m_axi_v4u3_ARSIZE(m_axi_v4u3_ARSIZE),
    .m_axi_v4u3_ARBURST(m_axi_v4u3_ARBURST),
    .m_axi_v4u3_ARLOCK(m_axi_v4u3_ARLOCK),
    .m_axi_v4u3_ARREGION(m_axi_v4u3_ARREGION),
    .m_axi_v4u3_ARCACHE(m_axi_v4u3_ARCACHE),
    .m_axi_v4u3_ARPROT(m_axi_v4u3_ARPROT),
    .m_axi_v4u3_ARQOS(m_axi_v4u3_ARQOS),
    .m_axi_v4u3_ARUSER(),
    .m_axi_v4u3_ARVALID(m_axi_v4u3_ARVALID),
    .m_axi_v4u3_ARREADY(m_axi_v4u3_ARREADY),
    .m_axi_v4u3_RID(m_axi_v4u3_RID),
    .m_axi_v4u3_RDATA(m_axi_v4u3_RDATA),
    .m_axi_v4u3_RRESP(m_axi_v4u3_RRESP),
    .m_axi_v4u3_RLAST(m_axi_v4u3_RLAST),
    .m_axi_v4u3_RUSER(1'B0),
    .m_axi_v4u3_RVALID(m_axi_v4u3_RVALID),
    .m_axi_v4u3_RREADY(m_axi_v4u3_RREADY),
    .status(status),
    .muladds(muladds),
    .divisions(divisions)
  );
endmodule
