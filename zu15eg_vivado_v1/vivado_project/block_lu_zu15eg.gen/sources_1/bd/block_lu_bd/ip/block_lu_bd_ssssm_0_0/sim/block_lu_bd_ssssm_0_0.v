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


// IP VLNV: xilinx.com:hls:large_ssssm:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module block_lu_bd_ssssm_0_0 (
  ap_clk,
  ap_rst_n,
  m_axi_sa0_AWVALID,
  m_axi_sa0_AWREADY,
  m_axi_sa0_AWADDR,
  m_axi_sa0_AWID,
  m_axi_sa0_AWLEN,
  m_axi_sa0_AWSIZE,
  m_axi_sa0_AWBURST,
  m_axi_sa0_AWLOCK,
  m_axi_sa0_AWCACHE,
  m_axi_sa0_AWPROT,
  m_axi_sa0_AWQOS,
  m_axi_sa0_AWREGION,
  m_axi_sa0_AWUSER,
  m_axi_sa0_WVALID,
  m_axi_sa0_WREADY,
  m_axi_sa0_WDATA,
  m_axi_sa0_WSTRB,
  m_axi_sa0_WLAST,
  m_axi_sa0_WID,
  m_axi_sa0_WUSER,
  m_axi_sa0_ARVALID,
  m_axi_sa0_ARREADY,
  m_axi_sa0_ARADDR,
  m_axi_sa0_ARID,
  m_axi_sa0_ARLEN,
  m_axi_sa0_ARSIZE,
  m_axi_sa0_ARBURST,
  m_axi_sa0_ARLOCK,
  m_axi_sa0_ARCACHE,
  m_axi_sa0_ARPROT,
  m_axi_sa0_ARQOS,
  m_axi_sa0_ARREGION,
  m_axi_sa0_ARUSER,
  m_axi_sa0_RVALID,
  m_axi_sa0_RREADY,
  m_axi_sa0_RDATA,
  m_axi_sa0_RLAST,
  m_axi_sa0_RID,
  m_axi_sa0_RUSER,
  m_axi_sa0_RRESP,
  m_axi_sa0_BVALID,
  m_axi_sa0_BREADY,
  m_axi_sa0_BRESP,
  m_axi_sa0_BID,
  m_axi_sa0_BUSER,
  m_axi_sa1_AWVALID,
  m_axi_sa1_AWREADY,
  m_axi_sa1_AWADDR,
  m_axi_sa1_AWID,
  m_axi_sa1_AWLEN,
  m_axi_sa1_AWSIZE,
  m_axi_sa1_AWBURST,
  m_axi_sa1_AWLOCK,
  m_axi_sa1_AWCACHE,
  m_axi_sa1_AWPROT,
  m_axi_sa1_AWQOS,
  m_axi_sa1_AWREGION,
  m_axi_sa1_AWUSER,
  m_axi_sa1_WVALID,
  m_axi_sa1_WREADY,
  m_axi_sa1_WDATA,
  m_axi_sa1_WSTRB,
  m_axi_sa1_WLAST,
  m_axi_sa1_WID,
  m_axi_sa1_WUSER,
  m_axi_sa1_ARVALID,
  m_axi_sa1_ARREADY,
  m_axi_sa1_ARADDR,
  m_axi_sa1_ARID,
  m_axi_sa1_ARLEN,
  m_axi_sa1_ARSIZE,
  m_axi_sa1_ARBURST,
  m_axi_sa1_ARLOCK,
  m_axi_sa1_ARCACHE,
  m_axi_sa1_ARPROT,
  m_axi_sa1_ARQOS,
  m_axi_sa1_ARREGION,
  m_axi_sa1_ARUSER,
  m_axi_sa1_RVALID,
  m_axi_sa1_RREADY,
  m_axi_sa1_RDATA,
  m_axi_sa1_RLAST,
  m_axi_sa1_RID,
  m_axi_sa1_RUSER,
  m_axi_sa1_RRESP,
  m_axi_sa1_BVALID,
  m_axi_sa1_BREADY,
  m_axi_sa1_BRESP,
  m_axi_sa1_BID,
  m_axi_sa1_BUSER,
  m_axi_sa2_AWVALID,
  m_axi_sa2_AWREADY,
  m_axi_sa2_AWADDR,
  m_axi_sa2_AWID,
  m_axi_sa2_AWLEN,
  m_axi_sa2_AWSIZE,
  m_axi_sa2_AWBURST,
  m_axi_sa2_AWLOCK,
  m_axi_sa2_AWCACHE,
  m_axi_sa2_AWPROT,
  m_axi_sa2_AWQOS,
  m_axi_sa2_AWREGION,
  m_axi_sa2_AWUSER,
  m_axi_sa2_WVALID,
  m_axi_sa2_WREADY,
  m_axi_sa2_WDATA,
  m_axi_sa2_WSTRB,
  m_axi_sa2_WLAST,
  m_axi_sa2_WID,
  m_axi_sa2_WUSER,
  m_axi_sa2_ARVALID,
  m_axi_sa2_ARREADY,
  m_axi_sa2_ARADDR,
  m_axi_sa2_ARID,
  m_axi_sa2_ARLEN,
  m_axi_sa2_ARSIZE,
  m_axi_sa2_ARBURST,
  m_axi_sa2_ARLOCK,
  m_axi_sa2_ARCACHE,
  m_axi_sa2_ARPROT,
  m_axi_sa2_ARQOS,
  m_axi_sa2_ARREGION,
  m_axi_sa2_ARUSER,
  m_axi_sa2_RVALID,
  m_axi_sa2_RREADY,
  m_axi_sa2_RDATA,
  m_axi_sa2_RLAST,
  m_axi_sa2_RID,
  m_axi_sa2_RUSER,
  m_axi_sa2_RRESP,
  m_axi_sa2_BVALID,
  m_axi_sa2_BREADY,
  m_axi_sa2_BRESP,
  m_axi_sa2_BID,
  m_axi_sa2_BUSER,
  m_axi_sl0_AWVALID,
  m_axi_sl0_AWREADY,
  m_axi_sl0_AWADDR,
  m_axi_sl0_AWID,
  m_axi_sl0_AWLEN,
  m_axi_sl0_AWSIZE,
  m_axi_sl0_AWBURST,
  m_axi_sl0_AWLOCK,
  m_axi_sl0_AWCACHE,
  m_axi_sl0_AWPROT,
  m_axi_sl0_AWQOS,
  m_axi_sl0_AWREGION,
  m_axi_sl0_AWUSER,
  m_axi_sl0_WVALID,
  m_axi_sl0_WREADY,
  m_axi_sl0_WDATA,
  m_axi_sl0_WSTRB,
  m_axi_sl0_WLAST,
  m_axi_sl0_WID,
  m_axi_sl0_WUSER,
  m_axi_sl0_ARVALID,
  m_axi_sl0_ARREADY,
  m_axi_sl0_ARADDR,
  m_axi_sl0_ARID,
  m_axi_sl0_ARLEN,
  m_axi_sl0_ARSIZE,
  m_axi_sl0_ARBURST,
  m_axi_sl0_ARLOCK,
  m_axi_sl0_ARCACHE,
  m_axi_sl0_ARPROT,
  m_axi_sl0_ARQOS,
  m_axi_sl0_ARREGION,
  m_axi_sl0_ARUSER,
  m_axi_sl0_RVALID,
  m_axi_sl0_RREADY,
  m_axi_sl0_RDATA,
  m_axi_sl0_RLAST,
  m_axi_sl0_RID,
  m_axi_sl0_RUSER,
  m_axi_sl0_RRESP,
  m_axi_sl0_BVALID,
  m_axi_sl0_BREADY,
  m_axi_sl0_BRESP,
  m_axi_sl0_BID,
  m_axi_sl0_BUSER,
  m_axi_sl1_AWVALID,
  m_axi_sl1_AWREADY,
  m_axi_sl1_AWADDR,
  m_axi_sl1_AWID,
  m_axi_sl1_AWLEN,
  m_axi_sl1_AWSIZE,
  m_axi_sl1_AWBURST,
  m_axi_sl1_AWLOCK,
  m_axi_sl1_AWCACHE,
  m_axi_sl1_AWPROT,
  m_axi_sl1_AWQOS,
  m_axi_sl1_AWREGION,
  m_axi_sl1_AWUSER,
  m_axi_sl1_WVALID,
  m_axi_sl1_WREADY,
  m_axi_sl1_WDATA,
  m_axi_sl1_WSTRB,
  m_axi_sl1_WLAST,
  m_axi_sl1_WID,
  m_axi_sl1_WUSER,
  m_axi_sl1_ARVALID,
  m_axi_sl1_ARREADY,
  m_axi_sl1_ARADDR,
  m_axi_sl1_ARID,
  m_axi_sl1_ARLEN,
  m_axi_sl1_ARSIZE,
  m_axi_sl1_ARBURST,
  m_axi_sl1_ARLOCK,
  m_axi_sl1_ARCACHE,
  m_axi_sl1_ARPROT,
  m_axi_sl1_ARQOS,
  m_axi_sl1_ARREGION,
  m_axi_sl1_ARUSER,
  m_axi_sl1_RVALID,
  m_axi_sl1_RREADY,
  m_axi_sl1_RDATA,
  m_axi_sl1_RLAST,
  m_axi_sl1_RID,
  m_axi_sl1_RUSER,
  m_axi_sl1_RRESP,
  m_axi_sl1_BVALID,
  m_axi_sl1_BREADY,
  m_axi_sl1_BRESP,
  m_axi_sl1_BID,
  m_axi_sl1_BUSER,
  m_axi_sl2_AWVALID,
  m_axi_sl2_AWREADY,
  m_axi_sl2_AWADDR,
  m_axi_sl2_AWID,
  m_axi_sl2_AWLEN,
  m_axi_sl2_AWSIZE,
  m_axi_sl2_AWBURST,
  m_axi_sl2_AWLOCK,
  m_axi_sl2_AWCACHE,
  m_axi_sl2_AWPROT,
  m_axi_sl2_AWQOS,
  m_axi_sl2_AWREGION,
  m_axi_sl2_AWUSER,
  m_axi_sl2_WVALID,
  m_axi_sl2_WREADY,
  m_axi_sl2_WDATA,
  m_axi_sl2_WSTRB,
  m_axi_sl2_WLAST,
  m_axi_sl2_WID,
  m_axi_sl2_WUSER,
  m_axi_sl2_ARVALID,
  m_axi_sl2_ARREADY,
  m_axi_sl2_ARADDR,
  m_axi_sl2_ARID,
  m_axi_sl2_ARLEN,
  m_axi_sl2_ARSIZE,
  m_axi_sl2_ARBURST,
  m_axi_sl2_ARLOCK,
  m_axi_sl2_ARCACHE,
  m_axi_sl2_ARPROT,
  m_axi_sl2_ARQOS,
  m_axi_sl2_ARREGION,
  m_axi_sl2_ARUSER,
  m_axi_sl2_RVALID,
  m_axi_sl2_RREADY,
  m_axi_sl2_RDATA,
  m_axi_sl2_RLAST,
  m_axi_sl2_RID,
  m_axi_sl2_RUSER,
  m_axi_sl2_RRESP,
  m_axi_sl2_BVALID,
  m_axi_sl2_BREADY,
  m_axi_sl2_BRESP,
  m_axi_sl2_BID,
  m_axi_sl2_BUSER,
  m_axi_su0_AWVALID,
  m_axi_su0_AWREADY,
  m_axi_su0_AWADDR,
  m_axi_su0_AWID,
  m_axi_su0_AWLEN,
  m_axi_su0_AWSIZE,
  m_axi_su0_AWBURST,
  m_axi_su0_AWLOCK,
  m_axi_su0_AWCACHE,
  m_axi_su0_AWPROT,
  m_axi_su0_AWQOS,
  m_axi_su0_AWREGION,
  m_axi_su0_AWUSER,
  m_axi_su0_WVALID,
  m_axi_su0_WREADY,
  m_axi_su0_WDATA,
  m_axi_su0_WSTRB,
  m_axi_su0_WLAST,
  m_axi_su0_WID,
  m_axi_su0_WUSER,
  m_axi_su0_ARVALID,
  m_axi_su0_ARREADY,
  m_axi_su0_ARADDR,
  m_axi_su0_ARID,
  m_axi_su0_ARLEN,
  m_axi_su0_ARSIZE,
  m_axi_su0_ARBURST,
  m_axi_su0_ARLOCK,
  m_axi_su0_ARCACHE,
  m_axi_su0_ARPROT,
  m_axi_su0_ARQOS,
  m_axi_su0_ARREGION,
  m_axi_su0_ARUSER,
  m_axi_su0_RVALID,
  m_axi_su0_RREADY,
  m_axi_su0_RDATA,
  m_axi_su0_RLAST,
  m_axi_su0_RID,
  m_axi_su0_RUSER,
  m_axi_su0_RRESP,
  m_axi_su0_BVALID,
  m_axi_su0_BREADY,
  m_axi_su0_BRESP,
  m_axi_su0_BID,
  m_axi_su0_BUSER,
  m_axi_su1_AWVALID,
  m_axi_su1_AWREADY,
  m_axi_su1_AWADDR,
  m_axi_su1_AWID,
  m_axi_su1_AWLEN,
  m_axi_su1_AWSIZE,
  m_axi_su1_AWBURST,
  m_axi_su1_AWLOCK,
  m_axi_su1_AWCACHE,
  m_axi_su1_AWPROT,
  m_axi_su1_AWQOS,
  m_axi_su1_AWREGION,
  m_axi_su1_AWUSER,
  m_axi_su1_WVALID,
  m_axi_su1_WREADY,
  m_axi_su1_WDATA,
  m_axi_su1_WSTRB,
  m_axi_su1_WLAST,
  m_axi_su1_WID,
  m_axi_su1_WUSER,
  m_axi_su1_ARVALID,
  m_axi_su1_ARREADY,
  m_axi_su1_ARADDR,
  m_axi_su1_ARID,
  m_axi_su1_ARLEN,
  m_axi_su1_ARSIZE,
  m_axi_su1_ARBURST,
  m_axi_su1_ARLOCK,
  m_axi_su1_ARCACHE,
  m_axi_su1_ARPROT,
  m_axi_su1_ARQOS,
  m_axi_su1_ARREGION,
  m_axi_su1_ARUSER,
  m_axi_su1_RVALID,
  m_axi_su1_RREADY,
  m_axi_su1_RDATA,
  m_axi_su1_RLAST,
  m_axi_su1_RID,
  m_axi_su1_RUSER,
  m_axi_su1_RRESP,
  m_axi_su1_BVALID,
  m_axi_su1_BREADY,
  m_axi_su1_BRESP,
  m_axi_su1_BID,
  m_axi_su1_BUSER,
  m_axi_su2_AWVALID,
  m_axi_su2_AWREADY,
  m_axi_su2_AWADDR,
  m_axi_su2_AWID,
  m_axi_su2_AWLEN,
  m_axi_su2_AWSIZE,
  m_axi_su2_AWBURST,
  m_axi_su2_AWLOCK,
  m_axi_su2_AWCACHE,
  m_axi_su2_AWPROT,
  m_axi_su2_AWQOS,
  m_axi_su2_AWREGION,
  m_axi_su2_AWUSER,
  m_axi_su2_WVALID,
  m_axi_su2_WREADY,
  m_axi_su2_WDATA,
  m_axi_su2_WSTRB,
  m_axi_su2_WLAST,
  m_axi_su2_WID,
  m_axi_su2_WUSER,
  m_axi_su2_ARVALID,
  m_axi_su2_ARREADY,
  m_axi_su2_ARADDR,
  m_axi_su2_ARID,
  m_axi_su2_ARLEN,
  m_axi_su2_ARSIZE,
  m_axi_su2_ARBURST,
  m_axi_su2_ARLOCK,
  m_axi_su2_ARCACHE,
  m_axi_su2_ARPROT,
  m_axi_su2_ARQOS,
  m_axi_su2_ARREGION,
  m_axi_su2_ARUSER,
  m_axi_su2_RVALID,
  m_axi_su2_RREADY,
  m_axi_su2_RDATA,
  m_axi_su2_RLAST,
  m_axi_su2_RID,
  m_axi_su2_RUSER,
  m_axi_su2_RRESP,
  m_axi_su2_BVALID,
  m_axi_su2_BREADY,
  m_axi_su2_BRESP,
  m_axi_su2_BID,
  m_axi_su2_BUSER,
  m_axi_ss0_AWVALID,
  m_axi_ss0_AWREADY,
  m_axi_ss0_AWADDR,
  m_axi_ss0_AWID,
  m_axi_ss0_AWLEN,
  m_axi_ss0_AWSIZE,
  m_axi_ss0_AWBURST,
  m_axi_ss0_AWLOCK,
  m_axi_ss0_AWCACHE,
  m_axi_ss0_AWPROT,
  m_axi_ss0_AWQOS,
  m_axi_ss0_AWREGION,
  m_axi_ss0_AWUSER,
  m_axi_ss0_WVALID,
  m_axi_ss0_WREADY,
  m_axi_ss0_WDATA,
  m_axi_ss0_WSTRB,
  m_axi_ss0_WLAST,
  m_axi_ss0_WID,
  m_axi_ss0_WUSER,
  m_axi_ss0_ARVALID,
  m_axi_ss0_ARREADY,
  m_axi_ss0_ARADDR,
  m_axi_ss0_ARID,
  m_axi_ss0_ARLEN,
  m_axi_ss0_ARSIZE,
  m_axi_ss0_ARBURST,
  m_axi_ss0_ARLOCK,
  m_axi_ss0_ARCACHE,
  m_axi_ss0_ARPROT,
  m_axi_ss0_ARQOS,
  m_axi_ss0_ARREGION,
  m_axi_ss0_ARUSER,
  m_axi_ss0_RVALID,
  m_axi_ss0_RREADY,
  m_axi_ss0_RDATA,
  m_axi_ss0_RLAST,
  m_axi_ss0_RID,
  m_axi_ss0_RUSER,
  m_axi_ss0_RRESP,
  m_axi_ss0_BVALID,
  m_axi_ss0_BREADY,
  m_axi_ss0_BRESP,
  m_axi_ss0_BID,
  m_axi_ss0_BUSER,
  m_axi_ss1_AWVALID,
  m_axi_ss1_AWREADY,
  m_axi_ss1_AWADDR,
  m_axi_ss1_AWID,
  m_axi_ss1_AWLEN,
  m_axi_ss1_AWSIZE,
  m_axi_ss1_AWBURST,
  m_axi_ss1_AWLOCK,
  m_axi_ss1_AWCACHE,
  m_axi_ss1_AWPROT,
  m_axi_ss1_AWQOS,
  m_axi_ss1_AWREGION,
  m_axi_ss1_AWUSER,
  m_axi_ss1_WVALID,
  m_axi_ss1_WREADY,
  m_axi_ss1_WDATA,
  m_axi_ss1_WSTRB,
  m_axi_ss1_WLAST,
  m_axi_ss1_WID,
  m_axi_ss1_WUSER,
  m_axi_ss1_ARVALID,
  m_axi_ss1_ARREADY,
  m_axi_ss1_ARADDR,
  m_axi_ss1_ARID,
  m_axi_ss1_ARLEN,
  m_axi_ss1_ARSIZE,
  m_axi_ss1_ARBURST,
  m_axi_ss1_ARLOCK,
  m_axi_ss1_ARCACHE,
  m_axi_ss1_ARPROT,
  m_axi_ss1_ARQOS,
  m_axi_ss1_ARREGION,
  m_axi_ss1_ARUSER,
  m_axi_ss1_RVALID,
  m_axi_ss1_RREADY,
  m_axi_ss1_RDATA,
  m_axi_ss1_RLAST,
  m_axi_ss1_RID,
  m_axi_ss1_RUSER,
  m_axi_ss1_RRESP,
  m_axi_ss1_BVALID,
  m_axi_ss1_BREADY,
  m_axi_ss1_BRESP,
  m_axi_ss1_BID,
  m_axi_ss1_BUSER,
  m_axi_ss2_AWVALID,
  m_axi_ss2_AWREADY,
  m_axi_ss2_AWADDR,
  m_axi_ss2_AWID,
  m_axi_ss2_AWLEN,
  m_axi_ss2_AWSIZE,
  m_axi_ss2_AWBURST,
  m_axi_ss2_AWLOCK,
  m_axi_ss2_AWCACHE,
  m_axi_ss2_AWPROT,
  m_axi_ss2_AWQOS,
  m_axi_ss2_AWREGION,
  m_axi_ss2_AWUSER,
  m_axi_ss2_WVALID,
  m_axi_ss2_WREADY,
  m_axi_ss2_WDATA,
  m_axi_ss2_WSTRB,
  m_axi_ss2_WLAST,
  m_axi_ss2_WID,
  m_axi_ss2_WUSER,
  m_axi_ss2_ARVALID,
  m_axi_ss2_ARREADY,
  m_axi_ss2_ARADDR,
  m_axi_ss2_ARID,
  m_axi_ss2_ARLEN,
  m_axi_ss2_ARSIZE,
  m_axi_ss2_ARBURST,
  m_axi_ss2_ARLOCK,
  m_axi_ss2_ARCACHE,
  m_axi_ss2_ARPROT,
  m_axi_ss2_ARQOS,
  m_axi_ss2_ARREGION,
  m_axi_ss2_ARUSER,
  m_axi_ss2_RVALID,
  m_axi_ss2_RREADY,
  m_axi_ss2_RDATA,
  m_axi_ss2_RLAST,
  m_axi_ss2_RID,
  m_axi_ss2_RUSER,
  m_axi_ss2_RRESP,
  m_axi_ss2_BVALID,
  m_axi_ss2_BREADY,
  m_axi_ss2_BRESP,
  m_axi_ss2_BID,
  m_axi_ss2_BUSER,
  m_axi_sw0_AWVALID,
  m_axi_sw0_AWREADY,
  m_axi_sw0_AWADDR,
  m_axi_sw0_AWID,
  m_axi_sw0_AWLEN,
  m_axi_sw0_AWSIZE,
  m_axi_sw0_AWBURST,
  m_axi_sw0_AWLOCK,
  m_axi_sw0_AWCACHE,
  m_axi_sw0_AWPROT,
  m_axi_sw0_AWQOS,
  m_axi_sw0_AWREGION,
  m_axi_sw0_AWUSER,
  m_axi_sw0_WVALID,
  m_axi_sw0_WREADY,
  m_axi_sw0_WDATA,
  m_axi_sw0_WSTRB,
  m_axi_sw0_WLAST,
  m_axi_sw0_WID,
  m_axi_sw0_WUSER,
  m_axi_sw0_ARVALID,
  m_axi_sw0_ARREADY,
  m_axi_sw0_ARADDR,
  m_axi_sw0_ARID,
  m_axi_sw0_ARLEN,
  m_axi_sw0_ARSIZE,
  m_axi_sw0_ARBURST,
  m_axi_sw0_ARLOCK,
  m_axi_sw0_ARCACHE,
  m_axi_sw0_ARPROT,
  m_axi_sw0_ARQOS,
  m_axi_sw0_ARREGION,
  m_axi_sw0_ARUSER,
  m_axi_sw0_RVALID,
  m_axi_sw0_RREADY,
  m_axi_sw0_RDATA,
  m_axi_sw0_RLAST,
  m_axi_sw0_RID,
  m_axi_sw0_RUSER,
  m_axi_sw0_RRESP,
  m_axi_sw0_BVALID,
  m_axi_sw0_BREADY,
  m_axi_sw0_BRESP,
  m_axi_sw0_BID,
  m_axi_sw0_BUSER,
  m_axi_sw1_AWVALID,
  m_axi_sw1_AWREADY,
  m_axi_sw1_AWADDR,
  m_axi_sw1_AWID,
  m_axi_sw1_AWLEN,
  m_axi_sw1_AWSIZE,
  m_axi_sw1_AWBURST,
  m_axi_sw1_AWLOCK,
  m_axi_sw1_AWCACHE,
  m_axi_sw1_AWPROT,
  m_axi_sw1_AWQOS,
  m_axi_sw1_AWREGION,
  m_axi_sw1_AWUSER,
  m_axi_sw1_WVALID,
  m_axi_sw1_WREADY,
  m_axi_sw1_WDATA,
  m_axi_sw1_WSTRB,
  m_axi_sw1_WLAST,
  m_axi_sw1_WID,
  m_axi_sw1_WUSER,
  m_axi_sw1_ARVALID,
  m_axi_sw1_ARREADY,
  m_axi_sw1_ARADDR,
  m_axi_sw1_ARID,
  m_axi_sw1_ARLEN,
  m_axi_sw1_ARSIZE,
  m_axi_sw1_ARBURST,
  m_axi_sw1_ARLOCK,
  m_axi_sw1_ARCACHE,
  m_axi_sw1_ARPROT,
  m_axi_sw1_ARQOS,
  m_axi_sw1_ARREGION,
  m_axi_sw1_ARUSER,
  m_axi_sw1_RVALID,
  m_axi_sw1_RREADY,
  m_axi_sw1_RDATA,
  m_axi_sw1_RLAST,
  m_axi_sw1_RID,
  m_axi_sw1_RUSER,
  m_axi_sw1_RRESP,
  m_axi_sw1_BVALID,
  m_axi_sw1_BREADY,
  m_axi_sw1_BRESP,
  m_axi_sw1_BID,
  m_axi_sw1_BUSER,
  rows,
  status,
  status_ap_vld,
  muladds,
  muladds_ap_vld,
  s_axi_control_AWVALID,
  s_axi_control_AWREADY,
  s_axi_control_AWADDR,
  s_axi_control_WVALID,
  s_axi_control_WREADY,
  s_axi_control_WDATA,
  s_axi_control_WSTRB,
  s_axi_control_ARVALID,
  s_axi_control_ARREADY,
  s_axi_control_ARADDR,
  s_axi_control_RVALID,
  s_axi_control_RREADY,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_BVALID,
  s_axi_control_BREADY,
  s_axi_control_BRESP,
  interrupt
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN block_lu_bd_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWVALID" *)
output wire m_axi_sa0_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWREADY" *)
input wire m_axi_sa0_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWADDR" *)
output wire [63 : 0] m_axi_sa0_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWID" *)
output wire [0 : 0] m_axi_sa0_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWLEN" *)
output wire [7 : 0] m_axi_sa0_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWSIZE" *)
output wire [2 : 0] m_axi_sa0_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWBURST" *)
output wire [1 : 0] m_axi_sa0_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWLOCK" *)
output wire [1 : 0] m_axi_sa0_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWCACHE" *)
output wire [3 : 0] m_axi_sa0_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWPROT" *)
output wire [2 : 0] m_axi_sa0_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWQOS" *)
output wire [3 : 0] m_axi_sa0_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWREGION" *)
output wire [3 : 0] m_axi_sa0_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 AWUSER" *)
output wire [0 : 0] m_axi_sa0_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 WVALID" *)
output wire m_axi_sa0_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 WREADY" *)
input wire m_axi_sa0_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 WDATA" *)
output wire [31 : 0] m_axi_sa0_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 WSTRB" *)
output wire [3 : 0] m_axi_sa0_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 WLAST" *)
output wire m_axi_sa0_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 WID" *)
output wire [0 : 0] m_axi_sa0_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 WUSER" *)
output wire [0 : 0] m_axi_sa0_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARVALID" *)
output wire m_axi_sa0_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARREADY" *)
input wire m_axi_sa0_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARADDR" *)
output wire [63 : 0] m_axi_sa0_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARID" *)
output wire [0 : 0] m_axi_sa0_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARLEN" *)
output wire [7 : 0] m_axi_sa0_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARSIZE" *)
output wire [2 : 0] m_axi_sa0_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARBURST" *)
output wire [1 : 0] m_axi_sa0_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARLOCK" *)
output wire [1 : 0] m_axi_sa0_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARCACHE" *)
output wire [3 : 0] m_axi_sa0_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARPROT" *)
output wire [2 : 0] m_axi_sa0_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARQOS" *)
output wire [3 : 0] m_axi_sa0_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARREGION" *)
output wire [3 : 0] m_axi_sa0_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 ARUSER" *)
output wire [0 : 0] m_axi_sa0_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 RVALID" *)
input wire m_axi_sa0_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 RREADY" *)
output wire m_axi_sa0_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 RDATA" *)
input wire [31 : 0] m_axi_sa0_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 RLAST" *)
input wire m_axi_sa0_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 RID" *)
input wire [0 : 0] m_axi_sa0_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 RUSER" *)
input wire [0 : 0] m_axi_sa0_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 RRESP" *)
input wire [1 : 0] m_axi_sa0_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 BVALID" *)
input wire m_axi_sa0_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 BREADY" *)
output wire m_axi_sa0_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 BRESP" *)
input wire [1 : 0] m_axi_sa0_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 BID" *)
input wire [0 : 0] m_axi_sa0_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_sa0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa0 BUSER" *)
input wire [0 : 0] m_axi_sa0_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWVALID" *)
output wire m_axi_sa1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWREADY" *)
input wire m_axi_sa1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWADDR" *)
output wire [63 : 0] m_axi_sa1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWID" *)
output wire [0 : 0] m_axi_sa1_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWLEN" *)
output wire [7 : 0] m_axi_sa1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWSIZE" *)
output wire [2 : 0] m_axi_sa1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWBURST" *)
output wire [1 : 0] m_axi_sa1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWLOCK" *)
output wire [1 : 0] m_axi_sa1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWCACHE" *)
output wire [3 : 0] m_axi_sa1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWPROT" *)
output wire [2 : 0] m_axi_sa1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWQOS" *)
output wire [3 : 0] m_axi_sa1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWREGION" *)
output wire [3 : 0] m_axi_sa1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 AWUSER" *)
output wire [0 : 0] m_axi_sa1_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 WVALID" *)
output wire m_axi_sa1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 WREADY" *)
input wire m_axi_sa1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 WDATA" *)
output wire [31 : 0] m_axi_sa1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 WSTRB" *)
output wire [3 : 0] m_axi_sa1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 WLAST" *)
output wire m_axi_sa1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 WID" *)
output wire [0 : 0] m_axi_sa1_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 WUSER" *)
output wire [0 : 0] m_axi_sa1_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARVALID" *)
output wire m_axi_sa1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARREADY" *)
input wire m_axi_sa1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARADDR" *)
output wire [63 : 0] m_axi_sa1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARID" *)
output wire [0 : 0] m_axi_sa1_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARLEN" *)
output wire [7 : 0] m_axi_sa1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARSIZE" *)
output wire [2 : 0] m_axi_sa1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARBURST" *)
output wire [1 : 0] m_axi_sa1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARLOCK" *)
output wire [1 : 0] m_axi_sa1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARCACHE" *)
output wire [3 : 0] m_axi_sa1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARPROT" *)
output wire [2 : 0] m_axi_sa1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARQOS" *)
output wire [3 : 0] m_axi_sa1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARREGION" *)
output wire [3 : 0] m_axi_sa1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 ARUSER" *)
output wire [0 : 0] m_axi_sa1_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 RVALID" *)
input wire m_axi_sa1_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 RREADY" *)
output wire m_axi_sa1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 RDATA" *)
input wire [31 : 0] m_axi_sa1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 RLAST" *)
input wire m_axi_sa1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 RID" *)
input wire [0 : 0] m_axi_sa1_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 RUSER" *)
input wire [0 : 0] m_axi_sa1_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 RRESP" *)
input wire [1 : 0] m_axi_sa1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 BVALID" *)
input wire m_axi_sa1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 BREADY" *)
output wire m_axi_sa1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 BRESP" *)
input wire [1 : 0] m_axi_sa1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 BID" *)
input wire [0 : 0] m_axi_sa1_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_sa1, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa1 BUSER" *)
input wire [0 : 0] m_axi_sa1_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWVALID" *)
output wire m_axi_sa2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWREADY" *)
input wire m_axi_sa2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWADDR" *)
output wire [63 : 0] m_axi_sa2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWID" *)
output wire [0 : 0] m_axi_sa2_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWLEN" *)
output wire [7 : 0] m_axi_sa2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWSIZE" *)
output wire [2 : 0] m_axi_sa2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWBURST" *)
output wire [1 : 0] m_axi_sa2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWLOCK" *)
output wire [1 : 0] m_axi_sa2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWCACHE" *)
output wire [3 : 0] m_axi_sa2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWPROT" *)
output wire [2 : 0] m_axi_sa2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWQOS" *)
output wire [3 : 0] m_axi_sa2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWREGION" *)
output wire [3 : 0] m_axi_sa2_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 AWUSER" *)
output wire [0 : 0] m_axi_sa2_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 WVALID" *)
output wire m_axi_sa2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 WREADY" *)
input wire m_axi_sa2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 WDATA" *)
output wire [31 : 0] m_axi_sa2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 WSTRB" *)
output wire [3 : 0] m_axi_sa2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 WLAST" *)
output wire m_axi_sa2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 WID" *)
output wire [0 : 0] m_axi_sa2_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 WUSER" *)
output wire [0 : 0] m_axi_sa2_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARVALID" *)
output wire m_axi_sa2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARREADY" *)
input wire m_axi_sa2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARADDR" *)
output wire [63 : 0] m_axi_sa2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARID" *)
output wire [0 : 0] m_axi_sa2_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARLEN" *)
output wire [7 : 0] m_axi_sa2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARSIZE" *)
output wire [2 : 0] m_axi_sa2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARBURST" *)
output wire [1 : 0] m_axi_sa2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARLOCK" *)
output wire [1 : 0] m_axi_sa2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARCACHE" *)
output wire [3 : 0] m_axi_sa2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARPROT" *)
output wire [2 : 0] m_axi_sa2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARQOS" *)
output wire [3 : 0] m_axi_sa2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARREGION" *)
output wire [3 : 0] m_axi_sa2_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 ARUSER" *)
output wire [0 : 0] m_axi_sa2_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 RVALID" *)
input wire m_axi_sa2_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 RREADY" *)
output wire m_axi_sa2_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 RDATA" *)
input wire [31 : 0] m_axi_sa2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 RLAST" *)
input wire m_axi_sa2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 RID" *)
input wire [0 : 0] m_axi_sa2_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 RUSER" *)
input wire [0 : 0] m_axi_sa2_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 RRESP" *)
input wire [1 : 0] m_axi_sa2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 BVALID" *)
input wire m_axi_sa2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 BREADY" *)
output wire m_axi_sa2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 BRESP" *)
input wire [1 : 0] m_axi_sa2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 BID" *)
input wire [0 : 0] m_axi_sa2_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_sa2, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sa2 BUSER" *)
input wire [0 : 0] m_axi_sa2_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWVALID" *)
output wire m_axi_sl0_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWREADY" *)
input wire m_axi_sl0_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWADDR" *)
output wire [63 : 0] m_axi_sl0_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWID" *)
output wire [0 : 0] m_axi_sl0_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWLEN" *)
output wire [7 : 0] m_axi_sl0_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWSIZE" *)
output wire [2 : 0] m_axi_sl0_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWBURST" *)
output wire [1 : 0] m_axi_sl0_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWLOCK" *)
output wire [1 : 0] m_axi_sl0_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWCACHE" *)
output wire [3 : 0] m_axi_sl0_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWPROT" *)
output wire [2 : 0] m_axi_sl0_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWQOS" *)
output wire [3 : 0] m_axi_sl0_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWREGION" *)
output wire [3 : 0] m_axi_sl0_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 AWUSER" *)
output wire [0 : 0] m_axi_sl0_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 WVALID" *)
output wire m_axi_sl0_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 WREADY" *)
input wire m_axi_sl0_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 WDATA" *)
output wire [31 : 0] m_axi_sl0_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 WSTRB" *)
output wire [3 : 0] m_axi_sl0_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 WLAST" *)
output wire m_axi_sl0_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 WID" *)
output wire [0 : 0] m_axi_sl0_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 WUSER" *)
output wire [0 : 0] m_axi_sl0_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARVALID" *)
output wire m_axi_sl0_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARREADY" *)
input wire m_axi_sl0_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARADDR" *)
output wire [63 : 0] m_axi_sl0_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARID" *)
output wire [0 : 0] m_axi_sl0_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARLEN" *)
output wire [7 : 0] m_axi_sl0_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARSIZE" *)
output wire [2 : 0] m_axi_sl0_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARBURST" *)
output wire [1 : 0] m_axi_sl0_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARLOCK" *)
output wire [1 : 0] m_axi_sl0_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARCACHE" *)
output wire [3 : 0] m_axi_sl0_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARPROT" *)
output wire [2 : 0] m_axi_sl0_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARQOS" *)
output wire [3 : 0] m_axi_sl0_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARREGION" *)
output wire [3 : 0] m_axi_sl0_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 ARUSER" *)
output wire [0 : 0] m_axi_sl0_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 RVALID" *)
input wire m_axi_sl0_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 RREADY" *)
output wire m_axi_sl0_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 RDATA" *)
input wire [31 : 0] m_axi_sl0_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 RLAST" *)
input wire m_axi_sl0_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 RID" *)
input wire [0 : 0] m_axi_sl0_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 RUSER" *)
input wire [0 : 0] m_axi_sl0_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 RRESP" *)
input wire [1 : 0] m_axi_sl0_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 BVALID" *)
input wire m_axi_sl0_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 BREADY" *)
output wire m_axi_sl0_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 BRESP" *)
input wire [1 : 0] m_axi_sl0_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 BID" *)
input wire [0 : 0] m_axi_sl0_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_sl0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl0 BUSER" *)
input wire [0 : 0] m_axi_sl0_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWVALID" *)
output wire m_axi_sl1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWREADY" *)
input wire m_axi_sl1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWADDR" *)
output wire [63 : 0] m_axi_sl1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWID" *)
output wire [0 : 0] m_axi_sl1_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWLEN" *)
output wire [7 : 0] m_axi_sl1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWSIZE" *)
output wire [2 : 0] m_axi_sl1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWBURST" *)
output wire [1 : 0] m_axi_sl1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWLOCK" *)
output wire [1 : 0] m_axi_sl1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWCACHE" *)
output wire [3 : 0] m_axi_sl1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWPROT" *)
output wire [2 : 0] m_axi_sl1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWQOS" *)
output wire [3 : 0] m_axi_sl1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWREGION" *)
output wire [3 : 0] m_axi_sl1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 AWUSER" *)
output wire [0 : 0] m_axi_sl1_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 WVALID" *)
output wire m_axi_sl1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 WREADY" *)
input wire m_axi_sl1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 WDATA" *)
output wire [31 : 0] m_axi_sl1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 WSTRB" *)
output wire [3 : 0] m_axi_sl1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 WLAST" *)
output wire m_axi_sl1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 WID" *)
output wire [0 : 0] m_axi_sl1_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 WUSER" *)
output wire [0 : 0] m_axi_sl1_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARVALID" *)
output wire m_axi_sl1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARREADY" *)
input wire m_axi_sl1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARADDR" *)
output wire [63 : 0] m_axi_sl1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARID" *)
output wire [0 : 0] m_axi_sl1_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARLEN" *)
output wire [7 : 0] m_axi_sl1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARSIZE" *)
output wire [2 : 0] m_axi_sl1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARBURST" *)
output wire [1 : 0] m_axi_sl1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARLOCK" *)
output wire [1 : 0] m_axi_sl1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARCACHE" *)
output wire [3 : 0] m_axi_sl1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARPROT" *)
output wire [2 : 0] m_axi_sl1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARQOS" *)
output wire [3 : 0] m_axi_sl1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARREGION" *)
output wire [3 : 0] m_axi_sl1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 ARUSER" *)
output wire [0 : 0] m_axi_sl1_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 RVALID" *)
input wire m_axi_sl1_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 RREADY" *)
output wire m_axi_sl1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 RDATA" *)
input wire [31 : 0] m_axi_sl1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 RLAST" *)
input wire m_axi_sl1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 RID" *)
input wire [0 : 0] m_axi_sl1_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 RUSER" *)
input wire [0 : 0] m_axi_sl1_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 RRESP" *)
input wire [1 : 0] m_axi_sl1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 BVALID" *)
input wire m_axi_sl1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 BREADY" *)
output wire m_axi_sl1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 BRESP" *)
input wire [1 : 0] m_axi_sl1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 BID" *)
input wire [0 : 0] m_axi_sl1_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_sl1, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl1 BUSER" *)
input wire [0 : 0] m_axi_sl1_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWVALID" *)
output wire m_axi_sl2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWREADY" *)
input wire m_axi_sl2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWADDR" *)
output wire [63 : 0] m_axi_sl2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWID" *)
output wire [0 : 0] m_axi_sl2_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWLEN" *)
output wire [7 : 0] m_axi_sl2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWSIZE" *)
output wire [2 : 0] m_axi_sl2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWBURST" *)
output wire [1 : 0] m_axi_sl2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWLOCK" *)
output wire [1 : 0] m_axi_sl2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWCACHE" *)
output wire [3 : 0] m_axi_sl2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWPROT" *)
output wire [2 : 0] m_axi_sl2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWQOS" *)
output wire [3 : 0] m_axi_sl2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWREGION" *)
output wire [3 : 0] m_axi_sl2_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 AWUSER" *)
output wire [0 : 0] m_axi_sl2_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 WVALID" *)
output wire m_axi_sl2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 WREADY" *)
input wire m_axi_sl2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 WDATA" *)
output wire [31 : 0] m_axi_sl2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 WSTRB" *)
output wire [3 : 0] m_axi_sl2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 WLAST" *)
output wire m_axi_sl2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 WID" *)
output wire [0 : 0] m_axi_sl2_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 WUSER" *)
output wire [0 : 0] m_axi_sl2_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARVALID" *)
output wire m_axi_sl2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARREADY" *)
input wire m_axi_sl2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARADDR" *)
output wire [63 : 0] m_axi_sl2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARID" *)
output wire [0 : 0] m_axi_sl2_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARLEN" *)
output wire [7 : 0] m_axi_sl2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARSIZE" *)
output wire [2 : 0] m_axi_sl2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARBURST" *)
output wire [1 : 0] m_axi_sl2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARLOCK" *)
output wire [1 : 0] m_axi_sl2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARCACHE" *)
output wire [3 : 0] m_axi_sl2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARPROT" *)
output wire [2 : 0] m_axi_sl2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARQOS" *)
output wire [3 : 0] m_axi_sl2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARREGION" *)
output wire [3 : 0] m_axi_sl2_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 ARUSER" *)
output wire [0 : 0] m_axi_sl2_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 RVALID" *)
input wire m_axi_sl2_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 RREADY" *)
output wire m_axi_sl2_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 RDATA" *)
input wire [31 : 0] m_axi_sl2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 RLAST" *)
input wire m_axi_sl2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 RID" *)
input wire [0 : 0] m_axi_sl2_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 RUSER" *)
input wire [0 : 0] m_axi_sl2_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 RRESP" *)
input wire [1 : 0] m_axi_sl2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 BVALID" *)
input wire m_axi_sl2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 BREADY" *)
output wire m_axi_sl2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 BRESP" *)
input wire [1 : 0] m_axi_sl2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 BID" *)
input wire [0 : 0] m_axi_sl2_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_sl2, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sl2 BUSER" *)
input wire [0 : 0] m_axi_sl2_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWVALID" *)
output wire m_axi_su0_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWREADY" *)
input wire m_axi_su0_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWADDR" *)
output wire [63 : 0] m_axi_su0_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWID" *)
output wire [0 : 0] m_axi_su0_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWLEN" *)
output wire [7 : 0] m_axi_su0_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWSIZE" *)
output wire [2 : 0] m_axi_su0_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWBURST" *)
output wire [1 : 0] m_axi_su0_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWLOCK" *)
output wire [1 : 0] m_axi_su0_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWCACHE" *)
output wire [3 : 0] m_axi_su0_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWPROT" *)
output wire [2 : 0] m_axi_su0_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWQOS" *)
output wire [3 : 0] m_axi_su0_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWREGION" *)
output wire [3 : 0] m_axi_su0_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 AWUSER" *)
output wire [0 : 0] m_axi_su0_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 WVALID" *)
output wire m_axi_su0_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 WREADY" *)
input wire m_axi_su0_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 WDATA" *)
output wire [31 : 0] m_axi_su0_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 WSTRB" *)
output wire [3 : 0] m_axi_su0_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 WLAST" *)
output wire m_axi_su0_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 WID" *)
output wire [0 : 0] m_axi_su0_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 WUSER" *)
output wire [0 : 0] m_axi_su0_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARVALID" *)
output wire m_axi_su0_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARREADY" *)
input wire m_axi_su0_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARADDR" *)
output wire [63 : 0] m_axi_su0_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARID" *)
output wire [0 : 0] m_axi_su0_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARLEN" *)
output wire [7 : 0] m_axi_su0_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARSIZE" *)
output wire [2 : 0] m_axi_su0_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARBURST" *)
output wire [1 : 0] m_axi_su0_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARLOCK" *)
output wire [1 : 0] m_axi_su0_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARCACHE" *)
output wire [3 : 0] m_axi_su0_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARPROT" *)
output wire [2 : 0] m_axi_su0_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARQOS" *)
output wire [3 : 0] m_axi_su0_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARREGION" *)
output wire [3 : 0] m_axi_su0_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 ARUSER" *)
output wire [0 : 0] m_axi_su0_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 RVALID" *)
input wire m_axi_su0_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 RREADY" *)
output wire m_axi_su0_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 RDATA" *)
input wire [31 : 0] m_axi_su0_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 RLAST" *)
input wire m_axi_su0_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 RID" *)
input wire [0 : 0] m_axi_su0_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 RUSER" *)
input wire [0 : 0] m_axi_su0_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 RRESP" *)
input wire [1 : 0] m_axi_su0_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 BVALID" *)
input wire m_axi_su0_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 BREADY" *)
output wire m_axi_su0_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 BRESP" *)
input wire [1 : 0] m_axi_su0_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 BID" *)
input wire [0 : 0] m_axi_su0_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_su0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su0 BUSER" *)
input wire [0 : 0] m_axi_su0_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWVALID" *)
output wire m_axi_su1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWREADY" *)
input wire m_axi_su1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWADDR" *)
output wire [63 : 0] m_axi_su1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWID" *)
output wire [0 : 0] m_axi_su1_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWLEN" *)
output wire [7 : 0] m_axi_su1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWSIZE" *)
output wire [2 : 0] m_axi_su1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWBURST" *)
output wire [1 : 0] m_axi_su1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWLOCK" *)
output wire [1 : 0] m_axi_su1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWCACHE" *)
output wire [3 : 0] m_axi_su1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWPROT" *)
output wire [2 : 0] m_axi_su1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWQOS" *)
output wire [3 : 0] m_axi_su1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWREGION" *)
output wire [3 : 0] m_axi_su1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 AWUSER" *)
output wire [0 : 0] m_axi_su1_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 WVALID" *)
output wire m_axi_su1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 WREADY" *)
input wire m_axi_su1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 WDATA" *)
output wire [31 : 0] m_axi_su1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 WSTRB" *)
output wire [3 : 0] m_axi_su1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 WLAST" *)
output wire m_axi_su1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 WID" *)
output wire [0 : 0] m_axi_su1_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 WUSER" *)
output wire [0 : 0] m_axi_su1_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARVALID" *)
output wire m_axi_su1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARREADY" *)
input wire m_axi_su1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARADDR" *)
output wire [63 : 0] m_axi_su1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARID" *)
output wire [0 : 0] m_axi_su1_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARLEN" *)
output wire [7 : 0] m_axi_su1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARSIZE" *)
output wire [2 : 0] m_axi_su1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARBURST" *)
output wire [1 : 0] m_axi_su1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARLOCK" *)
output wire [1 : 0] m_axi_su1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARCACHE" *)
output wire [3 : 0] m_axi_su1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARPROT" *)
output wire [2 : 0] m_axi_su1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARQOS" *)
output wire [3 : 0] m_axi_su1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARREGION" *)
output wire [3 : 0] m_axi_su1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 ARUSER" *)
output wire [0 : 0] m_axi_su1_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 RVALID" *)
input wire m_axi_su1_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 RREADY" *)
output wire m_axi_su1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 RDATA" *)
input wire [31 : 0] m_axi_su1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 RLAST" *)
input wire m_axi_su1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 RID" *)
input wire [0 : 0] m_axi_su1_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 RUSER" *)
input wire [0 : 0] m_axi_su1_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 RRESP" *)
input wire [1 : 0] m_axi_su1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 BVALID" *)
input wire m_axi_su1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 BREADY" *)
output wire m_axi_su1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 BRESP" *)
input wire [1 : 0] m_axi_su1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 BID" *)
input wire [0 : 0] m_axi_su1_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_su1, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su1 BUSER" *)
input wire [0 : 0] m_axi_su1_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWVALID" *)
output wire m_axi_su2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWREADY" *)
input wire m_axi_su2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWADDR" *)
output wire [63 : 0] m_axi_su2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWID" *)
output wire [0 : 0] m_axi_su2_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWLEN" *)
output wire [7 : 0] m_axi_su2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWSIZE" *)
output wire [2 : 0] m_axi_su2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWBURST" *)
output wire [1 : 0] m_axi_su2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWLOCK" *)
output wire [1 : 0] m_axi_su2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWCACHE" *)
output wire [3 : 0] m_axi_su2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWPROT" *)
output wire [2 : 0] m_axi_su2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWQOS" *)
output wire [3 : 0] m_axi_su2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWREGION" *)
output wire [3 : 0] m_axi_su2_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 AWUSER" *)
output wire [0 : 0] m_axi_su2_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 WVALID" *)
output wire m_axi_su2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 WREADY" *)
input wire m_axi_su2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 WDATA" *)
output wire [31 : 0] m_axi_su2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 WSTRB" *)
output wire [3 : 0] m_axi_su2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 WLAST" *)
output wire m_axi_su2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 WID" *)
output wire [0 : 0] m_axi_su2_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 WUSER" *)
output wire [0 : 0] m_axi_su2_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARVALID" *)
output wire m_axi_su2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARREADY" *)
input wire m_axi_su2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARADDR" *)
output wire [63 : 0] m_axi_su2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARID" *)
output wire [0 : 0] m_axi_su2_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARLEN" *)
output wire [7 : 0] m_axi_su2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARSIZE" *)
output wire [2 : 0] m_axi_su2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARBURST" *)
output wire [1 : 0] m_axi_su2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARLOCK" *)
output wire [1 : 0] m_axi_su2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARCACHE" *)
output wire [3 : 0] m_axi_su2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARPROT" *)
output wire [2 : 0] m_axi_su2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARQOS" *)
output wire [3 : 0] m_axi_su2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARREGION" *)
output wire [3 : 0] m_axi_su2_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 ARUSER" *)
output wire [0 : 0] m_axi_su2_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 RVALID" *)
input wire m_axi_su2_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 RREADY" *)
output wire m_axi_su2_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 RDATA" *)
input wire [31 : 0] m_axi_su2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 RLAST" *)
input wire m_axi_su2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 RID" *)
input wire [0 : 0] m_axi_su2_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 RUSER" *)
input wire [0 : 0] m_axi_su2_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 RRESP" *)
input wire [1 : 0] m_axi_su2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 BVALID" *)
input wire m_axi_su2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 BREADY" *)
output wire m_axi_su2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 BRESP" *)
input wire [1 : 0] m_axi_su2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 BID" *)
input wire [0 : 0] m_axi_su2_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_su2, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_su2 BUSER" *)
input wire [0 : 0] m_axi_su2_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWVALID" *)
output wire m_axi_ss0_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWREADY" *)
input wire m_axi_ss0_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWADDR" *)
output wire [63 : 0] m_axi_ss0_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWID" *)
output wire [0 : 0] m_axi_ss0_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWLEN" *)
output wire [7 : 0] m_axi_ss0_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWSIZE" *)
output wire [2 : 0] m_axi_ss0_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWBURST" *)
output wire [1 : 0] m_axi_ss0_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWLOCK" *)
output wire [1 : 0] m_axi_ss0_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWCACHE" *)
output wire [3 : 0] m_axi_ss0_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWPROT" *)
output wire [2 : 0] m_axi_ss0_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWQOS" *)
output wire [3 : 0] m_axi_ss0_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWREGION" *)
output wire [3 : 0] m_axi_ss0_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 AWUSER" *)
output wire [0 : 0] m_axi_ss0_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 WVALID" *)
output wire m_axi_ss0_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 WREADY" *)
input wire m_axi_ss0_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 WDATA" *)
output wire [31 : 0] m_axi_ss0_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 WSTRB" *)
output wire [3 : 0] m_axi_ss0_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 WLAST" *)
output wire m_axi_ss0_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 WID" *)
output wire [0 : 0] m_axi_ss0_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 WUSER" *)
output wire [0 : 0] m_axi_ss0_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARVALID" *)
output wire m_axi_ss0_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARREADY" *)
input wire m_axi_ss0_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARADDR" *)
output wire [63 : 0] m_axi_ss0_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARID" *)
output wire [0 : 0] m_axi_ss0_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARLEN" *)
output wire [7 : 0] m_axi_ss0_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARSIZE" *)
output wire [2 : 0] m_axi_ss0_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARBURST" *)
output wire [1 : 0] m_axi_ss0_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARLOCK" *)
output wire [1 : 0] m_axi_ss0_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARCACHE" *)
output wire [3 : 0] m_axi_ss0_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARPROT" *)
output wire [2 : 0] m_axi_ss0_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARQOS" *)
output wire [3 : 0] m_axi_ss0_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARREGION" *)
output wire [3 : 0] m_axi_ss0_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 ARUSER" *)
output wire [0 : 0] m_axi_ss0_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 RVALID" *)
input wire m_axi_ss0_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 RREADY" *)
output wire m_axi_ss0_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 RDATA" *)
input wire [31 : 0] m_axi_ss0_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 RLAST" *)
input wire m_axi_ss0_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 RID" *)
input wire [0 : 0] m_axi_ss0_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 RUSER" *)
input wire [0 : 0] m_axi_ss0_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 RRESP" *)
input wire [1 : 0] m_axi_ss0_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 BVALID" *)
input wire m_axi_ss0_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 BREADY" *)
output wire m_axi_ss0_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 BRESP" *)
input wire [1 : 0] m_axi_ss0_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 BID" *)
input wire [0 : 0] m_axi_ss0_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_ss0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss0 BUSER" *)
input wire [0 : 0] m_axi_ss0_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWVALID" *)
output wire m_axi_ss1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWREADY" *)
input wire m_axi_ss1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWADDR" *)
output wire [63 : 0] m_axi_ss1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWID" *)
output wire [0 : 0] m_axi_ss1_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWLEN" *)
output wire [7 : 0] m_axi_ss1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWSIZE" *)
output wire [2 : 0] m_axi_ss1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWBURST" *)
output wire [1 : 0] m_axi_ss1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWLOCK" *)
output wire [1 : 0] m_axi_ss1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWCACHE" *)
output wire [3 : 0] m_axi_ss1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWPROT" *)
output wire [2 : 0] m_axi_ss1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWQOS" *)
output wire [3 : 0] m_axi_ss1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWREGION" *)
output wire [3 : 0] m_axi_ss1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 AWUSER" *)
output wire [0 : 0] m_axi_ss1_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 WVALID" *)
output wire m_axi_ss1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 WREADY" *)
input wire m_axi_ss1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 WDATA" *)
output wire [31 : 0] m_axi_ss1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 WSTRB" *)
output wire [3 : 0] m_axi_ss1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 WLAST" *)
output wire m_axi_ss1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 WID" *)
output wire [0 : 0] m_axi_ss1_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 WUSER" *)
output wire [0 : 0] m_axi_ss1_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARVALID" *)
output wire m_axi_ss1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARREADY" *)
input wire m_axi_ss1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARADDR" *)
output wire [63 : 0] m_axi_ss1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARID" *)
output wire [0 : 0] m_axi_ss1_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARLEN" *)
output wire [7 : 0] m_axi_ss1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARSIZE" *)
output wire [2 : 0] m_axi_ss1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARBURST" *)
output wire [1 : 0] m_axi_ss1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARLOCK" *)
output wire [1 : 0] m_axi_ss1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARCACHE" *)
output wire [3 : 0] m_axi_ss1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARPROT" *)
output wire [2 : 0] m_axi_ss1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARQOS" *)
output wire [3 : 0] m_axi_ss1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARREGION" *)
output wire [3 : 0] m_axi_ss1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 ARUSER" *)
output wire [0 : 0] m_axi_ss1_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 RVALID" *)
input wire m_axi_ss1_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 RREADY" *)
output wire m_axi_ss1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 RDATA" *)
input wire [31 : 0] m_axi_ss1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 RLAST" *)
input wire m_axi_ss1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 RID" *)
input wire [0 : 0] m_axi_ss1_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 RUSER" *)
input wire [0 : 0] m_axi_ss1_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 RRESP" *)
input wire [1 : 0] m_axi_ss1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 BVALID" *)
input wire m_axi_ss1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 BREADY" *)
output wire m_axi_ss1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 BRESP" *)
input wire [1 : 0] m_axi_ss1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 BID" *)
input wire [0 : 0] m_axi_ss1_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_ss1, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss1 BUSER" *)
input wire [0 : 0] m_axi_ss1_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWVALID" *)
output wire m_axi_ss2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWREADY" *)
input wire m_axi_ss2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWADDR" *)
output wire [63 : 0] m_axi_ss2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWID" *)
output wire [0 : 0] m_axi_ss2_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWLEN" *)
output wire [7 : 0] m_axi_ss2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWSIZE" *)
output wire [2 : 0] m_axi_ss2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWBURST" *)
output wire [1 : 0] m_axi_ss2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWLOCK" *)
output wire [1 : 0] m_axi_ss2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWCACHE" *)
output wire [3 : 0] m_axi_ss2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWPROT" *)
output wire [2 : 0] m_axi_ss2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWQOS" *)
output wire [3 : 0] m_axi_ss2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWREGION" *)
output wire [3 : 0] m_axi_ss2_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 AWUSER" *)
output wire [0 : 0] m_axi_ss2_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 WVALID" *)
output wire m_axi_ss2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 WREADY" *)
input wire m_axi_ss2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 WDATA" *)
output wire [31 : 0] m_axi_ss2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 WSTRB" *)
output wire [3 : 0] m_axi_ss2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 WLAST" *)
output wire m_axi_ss2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 WID" *)
output wire [0 : 0] m_axi_ss2_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 WUSER" *)
output wire [0 : 0] m_axi_ss2_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARVALID" *)
output wire m_axi_ss2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARREADY" *)
input wire m_axi_ss2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARADDR" *)
output wire [63 : 0] m_axi_ss2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARID" *)
output wire [0 : 0] m_axi_ss2_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARLEN" *)
output wire [7 : 0] m_axi_ss2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARSIZE" *)
output wire [2 : 0] m_axi_ss2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARBURST" *)
output wire [1 : 0] m_axi_ss2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARLOCK" *)
output wire [1 : 0] m_axi_ss2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARCACHE" *)
output wire [3 : 0] m_axi_ss2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARPROT" *)
output wire [2 : 0] m_axi_ss2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARQOS" *)
output wire [3 : 0] m_axi_ss2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARREGION" *)
output wire [3 : 0] m_axi_ss2_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 ARUSER" *)
output wire [0 : 0] m_axi_ss2_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 RVALID" *)
input wire m_axi_ss2_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 RREADY" *)
output wire m_axi_ss2_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 RDATA" *)
input wire [31 : 0] m_axi_ss2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 RLAST" *)
input wire m_axi_ss2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 RID" *)
input wire [0 : 0] m_axi_ss2_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 RUSER" *)
input wire [0 : 0] m_axi_ss2_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 RRESP" *)
input wire [1 : 0] m_axi_ss2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 BVALID" *)
input wire m_axi_ss2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 BREADY" *)
output wire m_axi_ss2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 BRESP" *)
input wire [1 : 0] m_axi_ss2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 BID" *)
input wire [0 : 0] m_axi_ss2_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_ss2, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ss2 BUSER" *)
input wire [0 : 0] m_axi_ss2_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWVALID" *)
output wire m_axi_sw0_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWREADY" *)
input wire m_axi_sw0_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWADDR" *)
output wire [63 : 0] m_axi_sw0_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWID" *)
output wire [0 : 0] m_axi_sw0_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWLEN" *)
output wire [7 : 0] m_axi_sw0_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWSIZE" *)
output wire [2 : 0] m_axi_sw0_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWBURST" *)
output wire [1 : 0] m_axi_sw0_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWLOCK" *)
output wire [1 : 0] m_axi_sw0_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWCACHE" *)
output wire [3 : 0] m_axi_sw0_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWPROT" *)
output wire [2 : 0] m_axi_sw0_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWQOS" *)
output wire [3 : 0] m_axi_sw0_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWREGION" *)
output wire [3 : 0] m_axi_sw0_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 AWUSER" *)
output wire [0 : 0] m_axi_sw0_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 WVALID" *)
output wire m_axi_sw0_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 WREADY" *)
input wire m_axi_sw0_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 WDATA" *)
output wire [31 : 0] m_axi_sw0_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 WSTRB" *)
output wire [3 : 0] m_axi_sw0_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 WLAST" *)
output wire m_axi_sw0_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 WID" *)
output wire [0 : 0] m_axi_sw0_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 WUSER" *)
output wire [0 : 0] m_axi_sw0_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARVALID" *)
output wire m_axi_sw0_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARREADY" *)
input wire m_axi_sw0_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARADDR" *)
output wire [63 : 0] m_axi_sw0_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARID" *)
output wire [0 : 0] m_axi_sw0_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARLEN" *)
output wire [7 : 0] m_axi_sw0_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARSIZE" *)
output wire [2 : 0] m_axi_sw0_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARBURST" *)
output wire [1 : 0] m_axi_sw0_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARLOCK" *)
output wire [1 : 0] m_axi_sw0_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARCACHE" *)
output wire [3 : 0] m_axi_sw0_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARPROT" *)
output wire [2 : 0] m_axi_sw0_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARQOS" *)
output wire [3 : 0] m_axi_sw0_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARREGION" *)
output wire [3 : 0] m_axi_sw0_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 ARUSER" *)
output wire [0 : 0] m_axi_sw0_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 RVALID" *)
input wire m_axi_sw0_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 RREADY" *)
output wire m_axi_sw0_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 RDATA" *)
input wire [31 : 0] m_axi_sw0_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 RLAST" *)
input wire m_axi_sw0_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 RID" *)
input wire [0 : 0] m_axi_sw0_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 RUSER" *)
input wire [0 : 0] m_axi_sw0_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 RRESP" *)
input wire [1 : 0] m_axi_sw0_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 BVALID" *)
input wire m_axi_sw0_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 BREADY" *)
output wire m_axi_sw0_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 BRESP" *)
input wire [1 : 0] m_axi_sw0_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 BID" *)
input wire [0 : 0] m_axi_sw0_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_sw0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw0 BUSER" *)
input wire [0 : 0] m_axi_sw0_BUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWVALID" *)
output wire m_axi_sw1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWREADY" *)
input wire m_axi_sw1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWADDR" *)
output wire [63 : 0] m_axi_sw1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWID" *)
output wire [0 : 0] m_axi_sw1_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWLEN" *)
output wire [7 : 0] m_axi_sw1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWSIZE" *)
output wire [2 : 0] m_axi_sw1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWBURST" *)
output wire [1 : 0] m_axi_sw1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWLOCK" *)
output wire [1 : 0] m_axi_sw1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWCACHE" *)
output wire [3 : 0] m_axi_sw1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWPROT" *)
output wire [2 : 0] m_axi_sw1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWQOS" *)
output wire [3 : 0] m_axi_sw1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWREGION" *)
output wire [3 : 0] m_axi_sw1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 AWUSER" *)
output wire [0 : 0] m_axi_sw1_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 WVALID" *)
output wire m_axi_sw1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 WREADY" *)
input wire m_axi_sw1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 WDATA" *)
output wire [31 : 0] m_axi_sw1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 WSTRB" *)
output wire [3 : 0] m_axi_sw1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 WLAST" *)
output wire m_axi_sw1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 WID" *)
output wire [0 : 0] m_axi_sw1_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 WUSER" *)
output wire [0 : 0] m_axi_sw1_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARVALID" *)
output wire m_axi_sw1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARREADY" *)
input wire m_axi_sw1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARADDR" *)
output wire [63 : 0] m_axi_sw1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARID" *)
output wire [0 : 0] m_axi_sw1_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARLEN" *)
output wire [7 : 0] m_axi_sw1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARSIZE" *)
output wire [2 : 0] m_axi_sw1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARBURST" *)
output wire [1 : 0] m_axi_sw1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARLOCK" *)
output wire [1 : 0] m_axi_sw1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARCACHE" *)
output wire [3 : 0] m_axi_sw1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARPROT" *)
output wire [2 : 0] m_axi_sw1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARQOS" *)
output wire [3 : 0] m_axi_sw1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARREGION" *)
output wire [3 : 0] m_axi_sw1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 ARUSER" *)
output wire [0 : 0] m_axi_sw1_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 RVALID" *)
input wire m_axi_sw1_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 RREADY" *)
output wire m_axi_sw1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 RDATA" *)
input wire [31 : 0] m_axi_sw1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 RLAST" *)
input wire m_axi_sw1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 RID" *)
input wire [0 : 0] m_axi_sw1_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 RUSER" *)
input wire [0 : 0] m_axi_sw1_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 RRESP" *)
input wire [1 : 0] m_axi_sw1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 BVALID" *)
input wire m_axi_sw1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 BREADY" *)
output wire m_axi_sw1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 BRESP" *)
input wire [1 : 0] m_axi_sw1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 BID" *)
input wire [0 : 0] m_axi_sw1_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_sw1, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96968727, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_\
BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_sw1 BUSER" *)
input wire [0 : 0] m_axi_sw1_BUSER;
input wire [31 : 0] rows;
output wire [31 : 0] status;
output wire status_ap_vld;
output wire [63 : 0] muladds;
output wire muladds_ap_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [7 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [7 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96968727, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, W\
USER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;

  large_ssssm #(
    .ap_ST_fsm_state1(69'B000000000000000000000000000000000000000000000000000000000000000000001),
    .ap_ST_fsm_state2(69'B000000000000000000000000000000000000000000000000000000000000000000010),
    .ap_ST_fsm_state3(69'B000000000000000000000000000000000000000000000000000000000000000000100),
    .ap_ST_fsm_state4(69'B000000000000000000000000000000000000000000000000000000000000000001000),
    .ap_ST_fsm_state5(69'B000000000000000000000000000000000000000000000000000000000000000010000),
    .ap_ST_fsm_state6(69'B000000000000000000000000000000000000000000000000000000000000000100000),
    .ap_ST_fsm_state7(69'B000000000000000000000000000000000000000000000000000000000000001000000),
    .ap_ST_fsm_state8(69'B000000000000000000000000000000000000000000000000000000000000010000000),
    .ap_ST_fsm_state9(69'B000000000000000000000000000000000000000000000000000000000000100000000),
    .ap_ST_fsm_state10(69'B000000000000000000000000000000000000000000000000000000000001000000000),
    .ap_ST_fsm_state11(69'B000000000000000000000000000000000000000000000000000000000010000000000),
    .ap_ST_fsm_state12(69'B000000000000000000000000000000000000000000000000000000000100000000000),
    .ap_ST_fsm_state13(69'B000000000000000000000000000000000000000000000000000000001000000000000),
    .ap_ST_fsm_state14(69'B000000000000000000000000000000000000000000000000000000010000000000000),
    .ap_ST_fsm_state15(69'B000000000000000000000000000000000000000000000000000000100000000000000),
    .ap_ST_fsm_state16(69'B000000000000000000000000000000000000000000000000000001000000000000000),
    .ap_ST_fsm_state17(69'B000000000000000000000000000000000000000000000000000010000000000000000),
    .ap_ST_fsm_state18(69'B000000000000000000000000000000000000000000000000000100000000000000000),
    .ap_ST_fsm_state19(69'B000000000000000000000000000000000000000000000000001000000000000000000),
    .ap_ST_fsm_state20(69'B000000000000000000000000000000000000000000000000010000000000000000000),
    .ap_ST_fsm_state21(69'B000000000000000000000000000000000000000000000000100000000000000000000),
    .ap_ST_fsm_state22(69'B000000000000000000000000000000000000000000000001000000000000000000000),
    .ap_ST_fsm_state23(69'B000000000000000000000000000000000000000000000010000000000000000000000),
    .ap_ST_fsm_state24(69'B000000000000000000000000000000000000000000000100000000000000000000000),
    .ap_ST_fsm_state25(69'B000000000000000000000000000000000000000000001000000000000000000000000),
    .ap_ST_fsm_state26(69'B000000000000000000000000000000000000000000010000000000000000000000000),
    .ap_ST_fsm_state27(69'B000000000000000000000000000000000000000000100000000000000000000000000),
    .ap_ST_fsm_state28(69'B000000000000000000000000000000000000000001000000000000000000000000000),
    .ap_ST_fsm_state29(69'B000000000000000000000000000000000000000010000000000000000000000000000),
    .ap_ST_fsm_state30(69'B000000000000000000000000000000000000000100000000000000000000000000000),
    .ap_ST_fsm_state31(69'B000000000000000000000000000000000000001000000000000000000000000000000),
    .ap_ST_fsm_state32(69'B000000000000000000000000000000000000010000000000000000000000000000000),
    .ap_ST_fsm_state33(69'B000000000000000000000000000000000000100000000000000000000000000000000),
    .ap_ST_fsm_state34(69'B000000000000000000000000000000000001000000000000000000000000000000000),
    .ap_ST_fsm_state35(69'B000000000000000000000000000000000010000000000000000000000000000000000),
    .ap_ST_fsm_state36(69'B000000000000000000000000000000000100000000000000000000000000000000000),
    .ap_ST_fsm_state37(69'B000000000000000000000000000000001000000000000000000000000000000000000),
    .ap_ST_fsm_state38(69'B000000000000000000000000000000010000000000000000000000000000000000000),
    .ap_ST_fsm_state39(69'B000000000000000000000000000000100000000000000000000000000000000000000),
    .ap_ST_fsm_state40(69'B000000000000000000000000000001000000000000000000000000000000000000000),
    .ap_ST_fsm_state41(69'B000000000000000000000000000010000000000000000000000000000000000000000),
    .ap_ST_fsm_state42(69'B000000000000000000000000000100000000000000000000000000000000000000000),
    .ap_ST_fsm_state43(69'B000000000000000000000000001000000000000000000000000000000000000000000),
    .ap_ST_fsm_state44(69'B000000000000000000000000010000000000000000000000000000000000000000000),
    .ap_ST_fsm_state45(69'B000000000000000000000000100000000000000000000000000000000000000000000),
    .ap_ST_fsm_state46(69'B000000000000000000000001000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state47(69'B000000000000000000000010000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state48(69'B000000000000000000000100000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state49(69'B000000000000000000001000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state50(69'B000000000000000000010000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state51(69'B000000000000000000100000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state52(69'B000000000000000001000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state53(69'B000000000000000010000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state54(69'B000000000000000100000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state55(69'B000000000000001000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state56(69'B000000000000010000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state57(69'B000000000000100000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state58(69'B000000000001000000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state59(69'B000000000010000000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state60(69'B000000000100000000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state61(69'B000000001000000000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state62(69'B000000010000000000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state63(69'B000000100000000000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state64(69'B000001000000000000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state65(69'B000010000000000000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state66(69'B000100000000000000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state67(69'B001000000000000000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state68(69'B010000000000000000000000000000000000000000000000000000000000000000000),
    .ap_ST_fsm_state69(69'B100000000000000000000000000000000000000000000000000000000000000000000),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_S_AXI_CONTROL_ADDR_WIDTH(8),
    .C_S_AXI_DATA_WIDTH(32),
    .C_M_AXI_SA0_ID_WIDTH(1),
    .C_M_AXI_SA0_ADDR_WIDTH(64),
    .C_M_AXI_SA0_DATA_WIDTH(32),
    .C_M_AXI_SA0_AWUSER_WIDTH(1),
    .C_M_AXI_SA0_ARUSER_WIDTH(1),
    .C_M_AXI_SA0_WUSER_WIDTH(1),
    .C_M_AXI_SA0_RUSER_WIDTH(1),
    .C_M_AXI_SA0_BUSER_WIDTH(1),
    .C_M_AXI_SA0_USER_VALUE(0),
    .C_M_AXI_SA0_PROT_VALUE(0),
    .C_M_AXI_SA0_CACHE_VALUE(3),
    .C_M_AXI_DATA_WIDTH(32),
    .C_M_AXI_SA1_ID_WIDTH(1),
    .C_M_AXI_SA1_ADDR_WIDTH(64),
    .C_M_AXI_SA1_DATA_WIDTH(32),
    .C_M_AXI_SA1_AWUSER_WIDTH(1),
    .C_M_AXI_SA1_ARUSER_WIDTH(1),
    .C_M_AXI_SA1_WUSER_WIDTH(1),
    .C_M_AXI_SA1_RUSER_WIDTH(1),
    .C_M_AXI_SA1_BUSER_WIDTH(1),
    .C_M_AXI_SA1_USER_VALUE(0),
    .C_M_AXI_SA1_PROT_VALUE(0),
    .C_M_AXI_SA1_CACHE_VALUE(3),
    .C_M_AXI_SA2_ID_WIDTH(1),
    .C_M_AXI_SA2_ADDR_WIDTH(64),
    .C_M_AXI_SA2_DATA_WIDTH(32),
    .C_M_AXI_SA2_AWUSER_WIDTH(1),
    .C_M_AXI_SA2_ARUSER_WIDTH(1),
    .C_M_AXI_SA2_WUSER_WIDTH(1),
    .C_M_AXI_SA2_RUSER_WIDTH(1),
    .C_M_AXI_SA2_BUSER_WIDTH(1),
    .C_M_AXI_SA2_USER_VALUE(0),
    .C_M_AXI_SA2_PROT_VALUE(0),
    .C_M_AXI_SA2_CACHE_VALUE(3),
    .C_M_AXI_SL0_ID_WIDTH(1),
    .C_M_AXI_SL0_ADDR_WIDTH(64),
    .C_M_AXI_SL0_DATA_WIDTH(32),
    .C_M_AXI_SL0_AWUSER_WIDTH(1),
    .C_M_AXI_SL0_ARUSER_WIDTH(1),
    .C_M_AXI_SL0_WUSER_WIDTH(1),
    .C_M_AXI_SL0_RUSER_WIDTH(1),
    .C_M_AXI_SL0_BUSER_WIDTH(1),
    .C_M_AXI_SL0_USER_VALUE(0),
    .C_M_AXI_SL0_PROT_VALUE(0),
    .C_M_AXI_SL0_CACHE_VALUE(3),
    .C_M_AXI_SL1_ID_WIDTH(1),
    .C_M_AXI_SL1_ADDR_WIDTH(64),
    .C_M_AXI_SL1_DATA_WIDTH(32),
    .C_M_AXI_SL1_AWUSER_WIDTH(1),
    .C_M_AXI_SL1_ARUSER_WIDTH(1),
    .C_M_AXI_SL1_WUSER_WIDTH(1),
    .C_M_AXI_SL1_RUSER_WIDTH(1),
    .C_M_AXI_SL1_BUSER_WIDTH(1),
    .C_M_AXI_SL1_USER_VALUE(0),
    .C_M_AXI_SL1_PROT_VALUE(0),
    .C_M_AXI_SL1_CACHE_VALUE(3),
    .C_M_AXI_SL2_ID_WIDTH(1),
    .C_M_AXI_SL2_ADDR_WIDTH(64),
    .C_M_AXI_SL2_DATA_WIDTH(32),
    .C_M_AXI_SL2_AWUSER_WIDTH(1),
    .C_M_AXI_SL2_ARUSER_WIDTH(1),
    .C_M_AXI_SL2_WUSER_WIDTH(1),
    .C_M_AXI_SL2_RUSER_WIDTH(1),
    .C_M_AXI_SL2_BUSER_WIDTH(1),
    .C_M_AXI_SL2_USER_VALUE(0),
    .C_M_AXI_SL2_PROT_VALUE(0),
    .C_M_AXI_SL2_CACHE_VALUE(3),
    .C_M_AXI_SS0_ID_WIDTH(1),
    .C_M_AXI_SS0_ADDR_WIDTH(64),
    .C_M_AXI_SS0_DATA_WIDTH(32),
    .C_M_AXI_SS0_AWUSER_WIDTH(1),
    .C_M_AXI_SS0_ARUSER_WIDTH(1),
    .C_M_AXI_SS0_WUSER_WIDTH(1),
    .C_M_AXI_SS0_RUSER_WIDTH(1),
    .C_M_AXI_SS0_BUSER_WIDTH(1),
    .C_M_AXI_SS0_USER_VALUE(0),
    .C_M_AXI_SS0_PROT_VALUE(0),
    .C_M_AXI_SS0_CACHE_VALUE(3),
    .C_M_AXI_SS1_ID_WIDTH(1),
    .C_M_AXI_SS1_ADDR_WIDTH(64),
    .C_M_AXI_SS1_DATA_WIDTH(32),
    .C_M_AXI_SS1_AWUSER_WIDTH(1),
    .C_M_AXI_SS1_ARUSER_WIDTH(1),
    .C_M_AXI_SS1_WUSER_WIDTH(1),
    .C_M_AXI_SS1_RUSER_WIDTH(1),
    .C_M_AXI_SS1_BUSER_WIDTH(1),
    .C_M_AXI_SS1_USER_VALUE(0),
    .C_M_AXI_SS1_PROT_VALUE(0),
    .C_M_AXI_SS1_CACHE_VALUE(3),
    .C_M_AXI_SS2_ID_WIDTH(1),
    .C_M_AXI_SS2_ADDR_WIDTH(64),
    .C_M_AXI_SS2_DATA_WIDTH(32),
    .C_M_AXI_SS2_AWUSER_WIDTH(1),
    .C_M_AXI_SS2_ARUSER_WIDTH(1),
    .C_M_AXI_SS2_WUSER_WIDTH(1),
    .C_M_AXI_SS2_RUSER_WIDTH(1),
    .C_M_AXI_SS2_BUSER_WIDTH(1),
    .C_M_AXI_SS2_USER_VALUE(0),
    .C_M_AXI_SS2_PROT_VALUE(0),
    .C_M_AXI_SS2_CACHE_VALUE(3),
    .C_M_AXI_SU0_ID_WIDTH(1),
    .C_M_AXI_SU0_ADDR_WIDTH(64),
    .C_M_AXI_SU0_DATA_WIDTH(32),
    .C_M_AXI_SU0_AWUSER_WIDTH(1),
    .C_M_AXI_SU0_ARUSER_WIDTH(1),
    .C_M_AXI_SU0_WUSER_WIDTH(1),
    .C_M_AXI_SU0_RUSER_WIDTH(1),
    .C_M_AXI_SU0_BUSER_WIDTH(1),
    .C_M_AXI_SU0_USER_VALUE(0),
    .C_M_AXI_SU0_PROT_VALUE(0),
    .C_M_AXI_SU0_CACHE_VALUE(3),
    .C_M_AXI_SU1_ID_WIDTH(1),
    .C_M_AXI_SU1_ADDR_WIDTH(64),
    .C_M_AXI_SU1_DATA_WIDTH(32),
    .C_M_AXI_SU1_AWUSER_WIDTH(1),
    .C_M_AXI_SU1_ARUSER_WIDTH(1),
    .C_M_AXI_SU1_WUSER_WIDTH(1),
    .C_M_AXI_SU1_RUSER_WIDTH(1),
    .C_M_AXI_SU1_BUSER_WIDTH(1),
    .C_M_AXI_SU1_USER_VALUE(0),
    .C_M_AXI_SU1_PROT_VALUE(0),
    .C_M_AXI_SU1_CACHE_VALUE(3),
    .C_M_AXI_SU2_ID_WIDTH(1),
    .C_M_AXI_SU2_ADDR_WIDTH(64),
    .C_M_AXI_SU2_DATA_WIDTH(32),
    .C_M_AXI_SU2_AWUSER_WIDTH(1),
    .C_M_AXI_SU2_ARUSER_WIDTH(1),
    .C_M_AXI_SU2_WUSER_WIDTH(1),
    .C_M_AXI_SU2_RUSER_WIDTH(1),
    .C_M_AXI_SU2_BUSER_WIDTH(1),
    .C_M_AXI_SU2_USER_VALUE(0),
    .C_M_AXI_SU2_PROT_VALUE(0),
    .C_M_AXI_SU2_CACHE_VALUE(3),
    .C_M_AXI_SW0_ID_WIDTH(1),
    .C_M_AXI_SW0_ADDR_WIDTH(64),
    .C_M_AXI_SW0_DATA_WIDTH(32),
    .C_M_AXI_SW0_AWUSER_WIDTH(1),
    .C_M_AXI_SW0_ARUSER_WIDTH(1),
    .C_M_AXI_SW0_WUSER_WIDTH(1),
    .C_M_AXI_SW0_RUSER_WIDTH(1),
    .C_M_AXI_SW0_BUSER_WIDTH(1),
    .C_M_AXI_SW0_USER_VALUE(0),
    .C_M_AXI_SW0_PROT_VALUE(0),
    .C_M_AXI_SW0_CACHE_VALUE(3),
    .C_M_AXI_SW1_ID_WIDTH(1),
    .C_M_AXI_SW1_ADDR_WIDTH(64),
    .C_M_AXI_SW1_DATA_WIDTH(32),
    .C_M_AXI_SW1_AWUSER_WIDTH(1),
    .C_M_AXI_SW1_ARUSER_WIDTH(1),
    .C_M_AXI_SW1_WUSER_WIDTH(1),
    .C_M_AXI_SW1_RUSER_WIDTH(1),
    .C_M_AXI_SW1_BUSER_WIDTH(1),
    .C_M_AXI_SW1_USER_VALUE(0),
    .C_M_AXI_SW1_PROT_VALUE(0),
    .C_M_AXI_SW1_CACHE_VALUE(3),
    .C_M_AXI_WSTRB_WIDTH(4),
    .C_M_AXI_SW1_WSTRB_WIDTH(4),
    .C_M_AXI_SW0_WSTRB_WIDTH(4),
    .C_M_AXI_SU2_WSTRB_WIDTH(4),
    .C_M_AXI_SU1_WSTRB_WIDTH(4),
    .C_M_AXI_SU0_WSTRB_WIDTH(4),
    .C_M_AXI_SS2_WSTRB_WIDTH(4),
    .C_M_AXI_SS1_WSTRB_WIDTH(4),
    .C_S_AXI_CONTROL_WSTRB_WIDTH(4),
    .C_M_AXI_SS0_WSTRB_WIDTH(4),
    .C_M_AXI_SL2_WSTRB_WIDTH(4),
    .C_M_AXI_SL1_WSTRB_WIDTH(4),
    .C_M_AXI_SL0_WSTRB_WIDTH(4),
    .C_M_AXI_SA2_WSTRB_WIDTH(4),
    .C_M_AXI_SA1_WSTRB_WIDTH(4),
    .C_M_AXI_SA0_WSTRB_WIDTH(4),
    .C_S_AXI_WSTRB_WIDTH(4)
  ) inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_sa0_AWVALID(m_axi_sa0_AWVALID),
    .m_axi_sa0_AWREADY(m_axi_sa0_AWREADY),
    .m_axi_sa0_AWADDR(m_axi_sa0_AWADDR),
    .m_axi_sa0_AWID(m_axi_sa0_AWID),
    .m_axi_sa0_AWLEN(m_axi_sa0_AWLEN),
    .m_axi_sa0_AWSIZE(m_axi_sa0_AWSIZE),
    .m_axi_sa0_AWBURST(m_axi_sa0_AWBURST),
    .m_axi_sa0_AWLOCK(m_axi_sa0_AWLOCK),
    .m_axi_sa0_AWCACHE(m_axi_sa0_AWCACHE),
    .m_axi_sa0_AWPROT(m_axi_sa0_AWPROT),
    .m_axi_sa0_AWQOS(m_axi_sa0_AWQOS),
    .m_axi_sa0_AWREGION(m_axi_sa0_AWREGION),
    .m_axi_sa0_AWUSER(m_axi_sa0_AWUSER),
    .m_axi_sa0_WVALID(m_axi_sa0_WVALID),
    .m_axi_sa0_WREADY(m_axi_sa0_WREADY),
    .m_axi_sa0_WDATA(m_axi_sa0_WDATA),
    .m_axi_sa0_WSTRB(m_axi_sa0_WSTRB),
    .m_axi_sa0_WLAST(m_axi_sa0_WLAST),
    .m_axi_sa0_WID(m_axi_sa0_WID),
    .m_axi_sa0_WUSER(m_axi_sa0_WUSER),
    .m_axi_sa0_ARVALID(m_axi_sa0_ARVALID),
    .m_axi_sa0_ARREADY(m_axi_sa0_ARREADY),
    .m_axi_sa0_ARADDR(m_axi_sa0_ARADDR),
    .m_axi_sa0_ARID(m_axi_sa0_ARID),
    .m_axi_sa0_ARLEN(m_axi_sa0_ARLEN),
    .m_axi_sa0_ARSIZE(m_axi_sa0_ARSIZE),
    .m_axi_sa0_ARBURST(m_axi_sa0_ARBURST),
    .m_axi_sa0_ARLOCK(m_axi_sa0_ARLOCK),
    .m_axi_sa0_ARCACHE(m_axi_sa0_ARCACHE),
    .m_axi_sa0_ARPROT(m_axi_sa0_ARPROT),
    .m_axi_sa0_ARQOS(m_axi_sa0_ARQOS),
    .m_axi_sa0_ARREGION(m_axi_sa0_ARREGION),
    .m_axi_sa0_ARUSER(m_axi_sa0_ARUSER),
    .m_axi_sa0_RVALID(m_axi_sa0_RVALID),
    .m_axi_sa0_RREADY(m_axi_sa0_RREADY),
    .m_axi_sa0_RDATA(m_axi_sa0_RDATA),
    .m_axi_sa0_RLAST(m_axi_sa0_RLAST),
    .m_axi_sa0_RID(m_axi_sa0_RID),
    .m_axi_sa0_RUSER(m_axi_sa0_RUSER),
    .m_axi_sa0_RRESP(m_axi_sa0_RRESP),
    .m_axi_sa0_BVALID(m_axi_sa0_BVALID),
    .m_axi_sa0_BREADY(m_axi_sa0_BREADY),
    .m_axi_sa0_BRESP(m_axi_sa0_BRESP),
    .m_axi_sa0_BID(m_axi_sa0_BID),
    .m_axi_sa0_BUSER(m_axi_sa0_BUSER),
    .m_axi_sa1_AWVALID(m_axi_sa1_AWVALID),
    .m_axi_sa1_AWREADY(m_axi_sa1_AWREADY),
    .m_axi_sa1_AWADDR(m_axi_sa1_AWADDR),
    .m_axi_sa1_AWID(m_axi_sa1_AWID),
    .m_axi_sa1_AWLEN(m_axi_sa1_AWLEN),
    .m_axi_sa1_AWSIZE(m_axi_sa1_AWSIZE),
    .m_axi_sa1_AWBURST(m_axi_sa1_AWBURST),
    .m_axi_sa1_AWLOCK(m_axi_sa1_AWLOCK),
    .m_axi_sa1_AWCACHE(m_axi_sa1_AWCACHE),
    .m_axi_sa1_AWPROT(m_axi_sa1_AWPROT),
    .m_axi_sa1_AWQOS(m_axi_sa1_AWQOS),
    .m_axi_sa1_AWREGION(m_axi_sa1_AWREGION),
    .m_axi_sa1_AWUSER(m_axi_sa1_AWUSER),
    .m_axi_sa1_WVALID(m_axi_sa1_WVALID),
    .m_axi_sa1_WREADY(m_axi_sa1_WREADY),
    .m_axi_sa1_WDATA(m_axi_sa1_WDATA),
    .m_axi_sa1_WSTRB(m_axi_sa1_WSTRB),
    .m_axi_sa1_WLAST(m_axi_sa1_WLAST),
    .m_axi_sa1_WID(m_axi_sa1_WID),
    .m_axi_sa1_WUSER(m_axi_sa1_WUSER),
    .m_axi_sa1_ARVALID(m_axi_sa1_ARVALID),
    .m_axi_sa1_ARREADY(m_axi_sa1_ARREADY),
    .m_axi_sa1_ARADDR(m_axi_sa1_ARADDR),
    .m_axi_sa1_ARID(m_axi_sa1_ARID),
    .m_axi_sa1_ARLEN(m_axi_sa1_ARLEN),
    .m_axi_sa1_ARSIZE(m_axi_sa1_ARSIZE),
    .m_axi_sa1_ARBURST(m_axi_sa1_ARBURST),
    .m_axi_sa1_ARLOCK(m_axi_sa1_ARLOCK),
    .m_axi_sa1_ARCACHE(m_axi_sa1_ARCACHE),
    .m_axi_sa1_ARPROT(m_axi_sa1_ARPROT),
    .m_axi_sa1_ARQOS(m_axi_sa1_ARQOS),
    .m_axi_sa1_ARREGION(m_axi_sa1_ARREGION),
    .m_axi_sa1_ARUSER(m_axi_sa1_ARUSER),
    .m_axi_sa1_RVALID(m_axi_sa1_RVALID),
    .m_axi_sa1_RREADY(m_axi_sa1_RREADY),
    .m_axi_sa1_RDATA(m_axi_sa1_RDATA),
    .m_axi_sa1_RLAST(m_axi_sa1_RLAST),
    .m_axi_sa1_RID(m_axi_sa1_RID),
    .m_axi_sa1_RUSER(m_axi_sa1_RUSER),
    .m_axi_sa1_RRESP(m_axi_sa1_RRESP),
    .m_axi_sa1_BVALID(m_axi_sa1_BVALID),
    .m_axi_sa1_BREADY(m_axi_sa1_BREADY),
    .m_axi_sa1_BRESP(m_axi_sa1_BRESP),
    .m_axi_sa1_BID(m_axi_sa1_BID),
    .m_axi_sa1_BUSER(m_axi_sa1_BUSER),
    .m_axi_sa2_AWVALID(m_axi_sa2_AWVALID),
    .m_axi_sa2_AWREADY(m_axi_sa2_AWREADY),
    .m_axi_sa2_AWADDR(m_axi_sa2_AWADDR),
    .m_axi_sa2_AWID(m_axi_sa2_AWID),
    .m_axi_sa2_AWLEN(m_axi_sa2_AWLEN),
    .m_axi_sa2_AWSIZE(m_axi_sa2_AWSIZE),
    .m_axi_sa2_AWBURST(m_axi_sa2_AWBURST),
    .m_axi_sa2_AWLOCK(m_axi_sa2_AWLOCK),
    .m_axi_sa2_AWCACHE(m_axi_sa2_AWCACHE),
    .m_axi_sa2_AWPROT(m_axi_sa2_AWPROT),
    .m_axi_sa2_AWQOS(m_axi_sa2_AWQOS),
    .m_axi_sa2_AWREGION(m_axi_sa2_AWREGION),
    .m_axi_sa2_AWUSER(m_axi_sa2_AWUSER),
    .m_axi_sa2_WVALID(m_axi_sa2_WVALID),
    .m_axi_sa2_WREADY(m_axi_sa2_WREADY),
    .m_axi_sa2_WDATA(m_axi_sa2_WDATA),
    .m_axi_sa2_WSTRB(m_axi_sa2_WSTRB),
    .m_axi_sa2_WLAST(m_axi_sa2_WLAST),
    .m_axi_sa2_WID(m_axi_sa2_WID),
    .m_axi_sa2_WUSER(m_axi_sa2_WUSER),
    .m_axi_sa2_ARVALID(m_axi_sa2_ARVALID),
    .m_axi_sa2_ARREADY(m_axi_sa2_ARREADY),
    .m_axi_sa2_ARADDR(m_axi_sa2_ARADDR),
    .m_axi_sa2_ARID(m_axi_sa2_ARID),
    .m_axi_sa2_ARLEN(m_axi_sa2_ARLEN),
    .m_axi_sa2_ARSIZE(m_axi_sa2_ARSIZE),
    .m_axi_sa2_ARBURST(m_axi_sa2_ARBURST),
    .m_axi_sa2_ARLOCK(m_axi_sa2_ARLOCK),
    .m_axi_sa2_ARCACHE(m_axi_sa2_ARCACHE),
    .m_axi_sa2_ARPROT(m_axi_sa2_ARPROT),
    .m_axi_sa2_ARQOS(m_axi_sa2_ARQOS),
    .m_axi_sa2_ARREGION(m_axi_sa2_ARREGION),
    .m_axi_sa2_ARUSER(m_axi_sa2_ARUSER),
    .m_axi_sa2_RVALID(m_axi_sa2_RVALID),
    .m_axi_sa2_RREADY(m_axi_sa2_RREADY),
    .m_axi_sa2_RDATA(m_axi_sa2_RDATA),
    .m_axi_sa2_RLAST(m_axi_sa2_RLAST),
    .m_axi_sa2_RID(m_axi_sa2_RID),
    .m_axi_sa2_RUSER(m_axi_sa2_RUSER),
    .m_axi_sa2_RRESP(m_axi_sa2_RRESP),
    .m_axi_sa2_BVALID(m_axi_sa2_BVALID),
    .m_axi_sa2_BREADY(m_axi_sa2_BREADY),
    .m_axi_sa2_BRESP(m_axi_sa2_BRESP),
    .m_axi_sa2_BID(m_axi_sa2_BID),
    .m_axi_sa2_BUSER(m_axi_sa2_BUSER),
    .m_axi_sl0_AWVALID(m_axi_sl0_AWVALID),
    .m_axi_sl0_AWREADY(m_axi_sl0_AWREADY),
    .m_axi_sl0_AWADDR(m_axi_sl0_AWADDR),
    .m_axi_sl0_AWID(m_axi_sl0_AWID),
    .m_axi_sl0_AWLEN(m_axi_sl0_AWLEN),
    .m_axi_sl0_AWSIZE(m_axi_sl0_AWSIZE),
    .m_axi_sl0_AWBURST(m_axi_sl0_AWBURST),
    .m_axi_sl0_AWLOCK(m_axi_sl0_AWLOCK),
    .m_axi_sl0_AWCACHE(m_axi_sl0_AWCACHE),
    .m_axi_sl0_AWPROT(m_axi_sl0_AWPROT),
    .m_axi_sl0_AWQOS(m_axi_sl0_AWQOS),
    .m_axi_sl0_AWREGION(m_axi_sl0_AWREGION),
    .m_axi_sl0_AWUSER(m_axi_sl0_AWUSER),
    .m_axi_sl0_WVALID(m_axi_sl0_WVALID),
    .m_axi_sl0_WREADY(m_axi_sl0_WREADY),
    .m_axi_sl0_WDATA(m_axi_sl0_WDATA),
    .m_axi_sl0_WSTRB(m_axi_sl0_WSTRB),
    .m_axi_sl0_WLAST(m_axi_sl0_WLAST),
    .m_axi_sl0_WID(m_axi_sl0_WID),
    .m_axi_sl0_WUSER(m_axi_sl0_WUSER),
    .m_axi_sl0_ARVALID(m_axi_sl0_ARVALID),
    .m_axi_sl0_ARREADY(m_axi_sl0_ARREADY),
    .m_axi_sl0_ARADDR(m_axi_sl0_ARADDR),
    .m_axi_sl0_ARID(m_axi_sl0_ARID),
    .m_axi_sl0_ARLEN(m_axi_sl0_ARLEN),
    .m_axi_sl0_ARSIZE(m_axi_sl0_ARSIZE),
    .m_axi_sl0_ARBURST(m_axi_sl0_ARBURST),
    .m_axi_sl0_ARLOCK(m_axi_sl0_ARLOCK),
    .m_axi_sl0_ARCACHE(m_axi_sl0_ARCACHE),
    .m_axi_sl0_ARPROT(m_axi_sl0_ARPROT),
    .m_axi_sl0_ARQOS(m_axi_sl0_ARQOS),
    .m_axi_sl0_ARREGION(m_axi_sl0_ARREGION),
    .m_axi_sl0_ARUSER(m_axi_sl0_ARUSER),
    .m_axi_sl0_RVALID(m_axi_sl0_RVALID),
    .m_axi_sl0_RREADY(m_axi_sl0_RREADY),
    .m_axi_sl0_RDATA(m_axi_sl0_RDATA),
    .m_axi_sl0_RLAST(m_axi_sl0_RLAST),
    .m_axi_sl0_RID(m_axi_sl0_RID),
    .m_axi_sl0_RUSER(m_axi_sl0_RUSER),
    .m_axi_sl0_RRESP(m_axi_sl0_RRESP),
    .m_axi_sl0_BVALID(m_axi_sl0_BVALID),
    .m_axi_sl0_BREADY(m_axi_sl0_BREADY),
    .m_axi_sl0_BRESP(m_axi_sl0_BRESP),
    .m_axi_sl0_BID(m_axi_sl0_BID),
    .m_axi_sl0_BUSER(m_axi_sl0_BUSER),
    .m_axi_sl1_AWVALID(m_axi_sl1_AWVALID),
    .m_axi_sl1_AWREADY(m_axi_sl1_AWREADY),
    .m_axi_sl1_AWADDR(m_axi_sl1_AWADDR),
    .m_axi_sl1_AWID(m_axi_sl1_AWID),
    .m_axi_sl1_AWLEN(m_axi_sl1_AWLEN),
    .m_axi_sl1_AWSIZE(m_axi_sl1_AWSIZE),
    .m_axi_sl1_AWBURST(m_axi_sl1_AWBURST),
    .m_axi_sl1_AWLOCK(m_axi_sl1_AWLOCK),
    .m_axi_sl1_AWCACHE(m_axi_sl1_AWCACHE),
    .m_axi_sl1_AWPROT(m_axi_sl1_AWPROT),
    .m_axi_sl1_AWQOS(m_axi_sl1_AWQOS),
    .m_axi_sl1_AWREGION(m_axi_sl1_AWREGION),
    .m_axi_sl1_AWUSER(m_axi_sl1_AWUSER),
    .m_axi_sl1_WVALID(m_axi_sl1_WVALID),
    .m_axi_sl1_WREADY(m_axi_sl1_WREADY),
    .m_axi_sl1_WDATA(m_axi_sl1_WDATA),
    .m_axi_sl1_WSTRB(m_axi_sl1_WSTRB),
    .m_axi_sl1_WLAST(m_axi_sl1_WLAST),
    .m_axi_sl1_WID(m_axi_sl1_WID),
    .m_axi_sl1_WUSER(m_axi_sl1_WUSER),
    .m_axi_sl1_ARVALID(m_axi_sl1_ARVALID),
    .m_axi_sl1_ARREADY(m_axi_sl1_ARREADY),
    .m_axi_sl1_ARADDR(m_axi_sl1_ARADDR),
    .m_axi_sl1_ARID(m_axi_sl1_ARID),
    .m_axi_sl1_ARLEN(m_axi_sl1_ARLEN),
    .m_axi_sl1_ARSIZE(m_axi_sl1_ARSIZE),
    .m_axi_sl1_ARBURST(m_axi_sl1_ARBURST),
    .m_axi_sl1_ARLOCK(m_axi_sl1_ARLOCK),
    .m_axi_sl1_ARCACHE(m_axi_sl1_ARCACHE),
    .m_axi_sl1_ARPROT(m_axi_sl1_ARPROT),
    .m_axi_sl1_ARQOS(m_axi_sl1_ARQOS),
    .m_axi_sl1_ARREGION(m_axi_sl1_ARREGION),
    .m_axi_sl1_ARUSER(m_axi_sl1_ARUSER),
    .m_axi_sl1_RVALID(m_axi_sl1_RVALID),
    .m_axi_sl1_RREADY(m_axi_sl1_RREADY),
    .m_axi_sl1_RDATA(m_axi_sl1_RDATA),
    .m_axi_sl1_RLAST(m_axi_sl1_RLAST),
    .m_axi_sl1_RID(m_axi_sl1_RID),
    .m_axi_sl1_RUSER(m_axi_sl1_RUSER),
    .m_axi_sl1_RRESP(m_axi_sl1_RRESP),
    .m_axi_sl1_BVALID(m_axi_sl1_BVALID),
    .m_axi_sl1_BREADY(m_axi_sl1_BREADY),
    .m_axi_sl1_BRESP(m_axi_sl1_BRESP),
    .m_axi_sl1_BID(m_axi_sl1_BID),
    .m_axi_sl1_BUSER(m_axi_sl1_BUSER),
    .m_axi_sl2_AWVALID(m_axi_sl2_AWVALID),
    .m_axi_sl2_AWREADY(m_axi_sl2_AWREADY),
    .m_axi_sl2_AWADDR(m_axi_sl2_AWADDR),
    .m_axi_sl2_AWID(m_axi_sl2_AWID),
    .m_axi_sl2_AWLEN(m_axi_sl2_AWLEN),
    .m_axi_sl2_AWSIZE(m_axi_sl2_AWSIZE),
    .m_axi_sl2_AWBURST(m_axi_sl2_AWBURST),
    .m_axi_sl2_AWLOCK(m_axi_sl2_AWLOCK),
    .m_axi_sl2_AWCACHE(m_axi_sl2_AWCACHE),
    .m_axi_sl2_AWPROT(m_axi_sl2_AWPROT),
    .m_axi_sl2_AWQOS(m_axi_sl2_AWQOS),
    .m_axi_sl2_AWREGION(m_axi_sl2_AWREGION),
    .m_axi_sl2_AWUSER(m_axi_sl2_AWUSER),
    .m_axi_sl2_WVALID(m_axi_sl2_WVALID),
    .m_axi_sl2_WREADY(m_axi_sl2_WREADY),
    .m_axi_sl2_WDATA(m_axi_sl2_WDATA),
    .m_axi_sl2_WSTRB(m_axi_sl2_WSTRB),
    .m_axi_sl2_WLAST(m_axi_sl2_WLAST),
    .m_axi_sl2_WID(m_axi_sl2_WID),
    .m_axi_sl2_WUSER(m_axi_sl2_WUSER),
    .m_axi_sl2_ARVALID(m_axi_sl2_ARVALID),
    .m_axi_sl2_ARREADY(m_axi_sl2_ARREADY),
    .m_axi_sl2_ARADDR(m_axi_sl2_ARADDR),
    .m_axi_sl2_ARID(m_axi_sl2_ARID),
    .m_axi_sl2_ARLEN(m_axi_sl2_ARLEN),
    .m_axi_sl2_ARSIZE(m_axi_sl2_ARSIZE),
    .m_axi_sl2_ARBURST(m_axi_sl2_ARBURST),
    .m_axi_sl2_ARLOCK(m_axi_sl2_ARLOCK),
    .m_axi_sl2_ARCACHE(m_axi_sl2_ARCACHE),
    .m_axi_sl2_ARPROT(m_axi_sl2_ARPROT),
    .m_axi_sl2_ARQOS(m_axi_sl2_ARQOS),
    .m_axi_sl2_ARREGION(m_axi_sl2_ARREGION),
    .m_axi_sl2_ARUSER(m_axi_sl2_ARUSER),
    .m_axi_sl2_RVALID(m_axi_sl2_RVALID),
    .m_axi_sl2_RREADY(m_axi_sl2_RREADY),
    .m_axi_sl2_RDATA(m_axi_sl2_RDATA),
    .m_axi_sl2_RLAST(m_axi_sl2_RLAST),
    .m_axi_sl2_RID(m_axi_sl2_RID),
    .m_axi_sl2_RUSER(m_axi_sl2_RUSER),
    .m_axi_sl2_RRESP(m_axi_sl2_RRESP),
    .m_axi_sl2_BVALID(m_axi_sl2_BVALID),
    .m_axi_sl2_BREADY(m_axi_sl2_BREADY),
    .m_axi_sl2_BRESP(m_axi_sl2_BRESP),
    .m_axi_sl2_BID(m_axi_sl2_BID),
    .m_axi_sl2_BUSER(m_axi_sl2_BUSER),
    .m_axi_su0_AWVALID(m_axi_su0_AWVALID),
    .m_axi_su0_AWREADY(m_axi_su0_AWREADY),
    .m_axi_su0_AWADDR(m_axi_su0_AWADDR),
    .m_axi_su0_AWID(m_axi_su0_AWID),
    .m_axi_su0_AWLEN(m_axi_su0_AWLEN),
    .m_axi_su0_AWSIZE(m_axi_su0_AWSIZE),
    .m_axi_su0_AWBURST(m_axi_su0_AWBURST),
    .m_axi_su0_AWLOCK(m_axi_su0_AWLOCK),
    .m_axi_su0_AWCACHE(m_axi_su0_AWCACHE),
    .m_axi_su0_AWPROT(m_axi_su0_AWPROT),
    .m_axi_su0_AWQOS(m_axi_su0_AWQOS),
    .m_axi_su0_AWREGION(m_axi_su0_AWREGION),
    .m_axi_su0_AWUSER(m_axi_su0_AWUSER),
    .m_axi_su0_WVALID(m_axi_su0_WVALID),
    .m_axi_su0_WREADY(m_axi_su0_WREADY),
    .m_axi_su0_WDATA(m_axi_su0_WDATA),
    .m_axi_su0_WSTRB(m_axi_su0_WSTRB),
    .m_axi_su0_WLAST(m_axi_su0_WLAST),
    .m_axi_su0_WID(m_axi_su0_WID),
    .m_axi_su0_WUSER(m_axi_su0_WUSER),
    .m_axi_su0_ARVALID(m_axi_su0_ARVALID),
    .m_axi_su0_ARREADY(m_axi_su0_ARREADY),
    .m_axi_su0_ARADDR(m_axi_su0_ARADDR),
    .m_axi_su0_ARID(m_axi_su0_ARID),
    .m_axi_su0_ARLEN(m_axi_su0_ARLEN),
    .m_axi_su0_ARSIZE(m_axi_su0_ARSIZE),
    .m_axi_su0_ARBURST(m_axi_su0_ARBURST),
    .m_axi_su0_ARLOCK(m_axi_su0_ARLOCK),
    .m_axi_su0_ARCACHE(m_axi_su0_ARCACHE),
    .m_axi_su0_ARPROT(m_axi_su0_ARPROT),
    .m_axi_su0_ARQOS(m_axi_su0_ARQOS),
    .m_axi_su0_ARREGION(m_axi_su0_ARREGION),
    .m_axi_su0_ARUSER(m_axi_su0_ARUSER),
    .m_axi_su0_RVALID(m_axi_su0_RVALID),
    .m_axi_su0_RREADY(m_axi_su0_RREADY),
    .m_axi_su0_RDATA(m_axi_su0_RDATA),
    .m_axi_su0_RLAST(m_axi_su0_RLAST),
    .m_axi_su0_RID(m_axi_su0_RID),
    .m_axi_su0_RUSER(m_axi_su0_RUSER),
    .m_axi_su0_RRESP(m_axi_su0_RRESP),
    .m_axi_su0_BVALID(m_axi_su0_BVALID),
    .m_axi_su0_BREADY(m_axi_su0_BREADY),
    .m_axi_su0_BRESP(m_axi_su0_BRESP),
    .m_axi_su0_BID(m_axi_su0_BID),
    .m_axi_su0_BUSER(m_axi_su0_BUSER),
    .m_axi_su1_AWVALID(m_axi_su1_AWVALID),
    .m_axi_su1_AWREADY(m_axi_su1_AWREADY),
    .m_axi_su1_AWADDR(m_axi_su1_AWADDR),
    .m_axi_su1_AWID(m_axi_su1_AWID),
    .m_axi_su1_AWLEN(m_axi_su1_AWLEN),
    .m_axi_su1_AWSIZE(m_axi_su1_AWSIZE),
    .m_axi_su1_AWBURST(m_axi_su1_AWBURST),
    .m_axi_su1_AWLOCK(m_axi_su1_AWLOCK),
    .m_axi_su1_AWCACHE(m_axi_su1_AWCACHE),
    .m_axi_su1_AWPROT(m_axi_su1_AWPROT),
    .m_axi_su1_AWQOS(m_axi_su1_AWQOS),
    .m_axi_su1_AWREGION(m_axi_su1_AWREGION),
    .m_axi_su1_AWUSER(m_axi_su1_AWUSER),
    .m_axi_su1_WVALID(m_axi_su1_WVALID),
    .m_axi_su1_WREADY(m_axi_su1_WREADY),
    .m_axi_su1_WDATA(m_axi_su1_WDATA),
    .m_axi_su1_WSTRB(m_axi_su1_WSTRB),
    .m_axi_su1_WLAST(m_axi_su1_WLAST),
    .m_axi_su1_WID(m_axi_su1_WID),
    .m_axi_su1_WUSER(m_axi_su1_WUSER),
    .m_axi_su1_ARVALID(m_axi_su1_ARVALID),
    .m_axi_su1_ARREADY(m_axi_su1_ARREADY),
    .m_axi_su1_ARADDR(m_axi_su1_ARADDR),
    .m_axi_su1_ARID(m_axi_su1_ARID),
    .m_axi_su1_ARLEN(m_axi_su1_ARLEN),
    .m_axi_su1_ARSIZE(m_axi_su1_ARSIZE),
    .m_axi_su1_ARBURST(m_axi_su1_ARBURST),
    .m_axi_su1_ARLOCK(m_axi_su1_ARLOCK),
    .m_axi_su1_ARCACHE(m_axi_su1_ARCACHE),
    .m_axi_su1_ARPROT(m_axi_su1_ARPROT),
    .m_axi_su1_ARQOS(m_axi_su1_ARQOS),
    .m_axi_su1_ARREGION(m_axi_su1_ARREGION),
    .m_axi_su1_ARUSER(m_axi_su1_ARUSER),
    .m_axi_su1_RVALID(m_axi_su1_RVALID),
    .m_axi_su1_RREADY(m_axi_su1_RREADY),
    .m_axi_su1_RDATA(m_axi_su1_RDATA),
    .m_axi_su1_RLAST(m_axi_su1_RLAST),
    .m_axi_su1_RID(m_axi_su1_RID),
    .m_axi_su1_RUSER(m_axi_su1_RUSER),
    .m_axi_su1_RRESP(m_axi_su1_RRESP),
    .m_axi_su1_BVALID(m_axi_su1_BVALID),
    .m_axi_su1_BREADY(m_axi_su1_BREADY),
    .m_axi_su1_BRESP(m_axi_su1_BRESP),
    .m_axi_su1_BID(m_axi_su1_BID),
    .m_axi_su1_BUSER(m_axi_su1_BUSER),
    .m_axi_su2_AWVALID(m_axi_su2_AWVALID),
    .m_axi_su2_AWREADY(m_axi_su2_AWREADY),
    .m_axi_su2_AWADDR(m_axi_su2_AWADDR),
    .m_axi_su2_AWID(m_axi_su2_AWID),
    .m_axi_su2_AWLEN(m_axi_su2_AWLEN),
    .m_axi_su2_AWSIZE(m_axi_su2_AWSIZE),
    .m_axi_su2_AWBURST(m_axi_su2_AWBURST),
    .m_axi_su2_AWLOCK(m_axi_su2_AWLOCK),
    .m_axi_su2_AWCACHE(m_axi_su2_AWCACHE),
    .m_axi_su2_AWPROT(m_axi_su2_AWPROT),
    .m_axi_su2_AWQOS(m_axi_su2_AWQOS),
    .m_axi_su2_AWREGION(m_axi_su2_AWREGION),
    .m_axi_su2_AWUSER(m_axi_su2_AWUSER),
    .m_axi_su2_WVALID(m_axi_su2_WVALID),
    .m_axi_su2_WREADY(m_axi_su2_WREADY),
    .m_axi_su2_WDATA(m_axi_su2_WDATA),
    .m_axi_su2_WSTRB(m_axi_su2_WSTRB),
    .m_axi_su2_WLAST(m_axi_su2_WLAST),
    .m_axi_su2_WID(m_axi_su2_WID),
    .m_axi_su2_WUSER(m_axi_su2_WUSER),
    .m_axi_su2_ARVALID(m_axi_su2_ARVALID),
    .m_axi_su2_ARREADY(m_axi_su2_ARREADY),
    .m_axi_su2_ARADDR(m_axi_su2_ARADDR),
    .m_axi_su2_ARID(m_axi_su2_ARID),
    .m_axi_su2_ARLEN(m_axi_su2_ARLEN),
    .m_axi_su2_ARSIZE(m_axi_su2_ARSIZE),
    .m_axi_su2_ARBURST(m_axi_su2_ARBURST),
    .m_axi_su2_ARLOCK(m_axi_su2_ARLOCK),
    .m_axi_su2_ARCACHE(m_axi_su2_ARCACHE),
    .m_axi_su2_ARPROT(m_axi_su2_ARPROT),
    .m_axi_su2_ARQOS(m_axi_su2_ARQOS),
    .m_axi_su2_ARREGION(m_axi_su2_ARREGION),
    .m_axi_su2_ARUSER(m_axi_su2_ARUSER),
    .m_axi_su2_RVALID(m_axi_su2_RVALID),
    .m_axi_su2_RREADY(m_axi_su2_RREADY),
    .m_axi_su2_RDATA(m_axi_su2_RDATA),
    .m_axi_su2_RLAST(m_axi_su2_RLAST),
    .m_axi_su2_RID(m_axi_su2_RID),
    .m_axi_su2_RUSER(m_axi_su2_RUSER),
    .m_axi_su2_RRESP(m_axi_su2_RRESP),
    .m_axi_su2_BVALID(m_axi_su2_BVALID),
    .m_axi_su2_BREADY(m_axi_su2_BREADY),
    .m_axi_su2_BRESP(m_axi_su2_BRESP),
    .m_axi_su2_BID(m_axi_su2_BID),
    .m_axi_su2_BUSER(m_axi_su2_BUSER),
    .m_axi_ss0_AWVALID(m_axi_ss0_AWVALID),
    .m_axi_ss0_AWREADY(m_axi_ss0_AWREADY),
    .m_axi_ss0_AWADDR(m_axi_ss0_AWADDR),
    .m_axi_ss0_AWID(m_axi_ss0_AWID),
    .m_axi_ss0_AWLEN(m_axi_ss0_AWLEN),
    .m_axi_ss0_AWSIZE(m_axi_ss0_AWSIZE),
    .m_axi_ss0_AWBURST(m_axi_ss0_AWBURST),
    .m_axi_ss0_AWLOCK(m_axi_ss0_AWLOCK),
    .m_axi_ss0_AWCACHE(m_axi_ss0_AWCACHE),
    .m_axi_ss0_AWPROT(m_axi_ss0_AWPROT),
    .m_axi_ss0_AWQOS(m_axi_ss0_AWQOS),
    .m_axi_ss0_AWREGION(m_axi_ss0_AWREGION),
    .m_axi_ss0_AWUSER(m_axi_ss0_AWUSER),
    .m_axi_ss0_WVALID(m_axi_ss0_WVALID),
    .m_axi_ss0_WREADY(m_axi_ss0_WREADY),
    .m_axi_ss0_WDATA(m_axi_ss0_WDATA),
    .m_axi_ss0_WSTRB(m_axi_ss0_WSTRB),
    .m_axi_ss0_WLAST(m_axi_ss0_WLAST),
    .m_axi_ss0_WID(m_axi_ss0_WID),
    .m_axi_ss0_WUSER(m_axi_ss0_WUSER),
    .m_axi_ss0_ARVALID(m_axi_ss0_ARVALID),
    .m_axi_ss0_ARREADY(m_axi_ss0_ARREADY),
    .m_axi_ss0_ARADDR(m_axi_ss0_ARADDR),
    .m_axi_ss0_ARID(m_axi_ss0_ARID),
    .m_axi_ss0_ARLEN(m_axi_ss0_ARLEN),
    .m_axi_ss0_ARSIZE(m_axi_ss0_ARSIZE),
    .m_axi_ss0_ARBURST(m_axi_ss0_ARBURST),
    .m_axi_ss0_ARLOCK(m_axi_ss0_ARLOCK),
    .m_axi_ss0_ARCACHE(m_axi_ss0_ARCACHE),
    .m_axi_ss0_ARPROT(m_axi_ss0_ARPROT),
    .m_axi_ss0_ARQOS(m_axi_ss0_ARQOS),
    .m_axi_ss0_ARREGION(m_axi_ss0_ARREGION),
    .m_axi_ss0_ARUSER(m_axi_ss0_ARUSER),
    .m_axi_ss0_RVALID(m_axi_ss0_RVALID),
    .m_axi_ss0_RREADY(m_axi_ss0_RREADY),
    .m_axi_ss0_RDATA(m_axi_ss0_RDATA),
    .m_axi_ss0_RLAST(m_axi_ss0_RLAST),
    .m_axi_ss0_RID(m_axi_ss0_RID),
    .m_axi_ss0_RUSER(m_axi_ss0_RUSER),
    .m_axi_ss0_RRESP(m_axi_ss0_RRESP),
    .m_axi_ss0_BVALID(m_axi_ss0_BVALID),
    .m_axi_ss0_BREADY(m_axi_ss0_BREADY),
    .m_axi_ss0_BRESP(m_axi_ss0_BRESP),
    .m_axi_ss0_BID(m_axi_ss0_BID),
    .m_axi_ss0_BUSER(m_axi_ss0_BUSER),
    .m_axi_ss1_AWVALID(m_axi_ss1_AWVALID),
    .m_axi_ss1_AWREADY(m_axi_ss1_AWREADY),
    .m_axi_ss1_AWADDR(m_axi_ss1_AWADDR),
    .m_axi_ss1_AWID(m_axi_ss1_AWID),
    .m_axi_ss1_AWLEN(m_axi_ss1_AWLEN),
    .m_axi_ss1_AWSIZE(m_axi_ss1_AWSIZE),
    .m_axi_ss1_AWBURST(m_axi_ss1_AWBURST),
    .m_axi_ss1_AWLOCK(m_axi_ss1_AWLOCK),
    .m_axi_ss1_AWCACHE(m_axi_ss1_AWCACHE),
    .m_axi_ss1_AWPROT(m_axi_ss1_AWPROT),
    .m_axi_ss1_AWQOS(m_axi_ss1_AWQOS),
    .m_axi_ss1_AWREGION(m_axi_ss1_AWREGION),
    .m_axi_ss1_AWUSER(m_axi_ss1_AWUSER),
    .m_axi_ss1_WVALID(m_axi_ss1_WVALID),
    .m_axi_ss1_WREADY(m_axi_ss1_WREADY),
    .m_axi_ss1_WDATA(m_axi_ss1_WDATA),
    .m_axi_ss1_WSTRB(m_axi_ss1_WSTRB),
    .m_axi_ss1_WLAST(m_axi_ss1_WLAST),
    .m_axi_ss1_WID(m_axi_ss1_WID),
    .m_axi_ss1_WUSER(m_axi_ss1_WUSER),
    .m_axi_ss1_ARVALID(m_axi_ss1_ARVALID),
    .m_axi_ss1_ARREADY(m_axi_ss1_ARREADY),
    .m_axi_ss1_ARADDR(m_axi_ss1_ARADDR),
    .m_axi_ss1_ARID(m_axi_ss1_ARID),
    .m_axi_ss1_ARLEN(m_axi_ss1_ARLEN),
    .m_axi_ss1_ARSIZE(m_axi_ss1_ARSIZE),
    .m_axi_ss1_ARBURST(m_axi_ss1_ARBURST),
    .m_axi_ss1_ARLOCK(m_axi_ss1_ARLOCK),
    .m_axi_ss1_ARCACHE(m_axi_ss1_ARCACHE),
    .m_axi_ss1_ARPROT(m_axi_ss1_ARPROT),
    .m_axi_ss1_ARQOS(m_axi_ss1_ARQOS),
    .m_axi_ss1_ARREGION(m_axi_ss1_ARREGION),
    .m_axi_ss1_ARUSER(m_axi_ss1_ARUSER),
    .m_axi_ss1_RVALID(m_axi_ss1_RVALID),
    .m_axi_ss1_RREADY(m_axi_ss1_RREADY),
    .m_axi_ss1_RDATA(m_axi_ss1_RDATA),
    .m_axi_ss1_RLAST(m_axi_ss1_RLAST),
    .m_axi_ss1_RID(m_axi_ss1_RID),
    .m_axi_ss1_RUSER(m_axi_ss1_RUSER),
    .m_axi_ss1_RRESP(m_axi_ss1_RRESP),
    .m_axi_ss1_BVALID(m_axi_ss1_BVALID),
    .m_axi_ss1_BREADY(m_axi_ss1_BREADY),
    .m_axi_ss1_BRESP(m_axi_ss1_BRESP),
    .m_axi_ss1_BID(m_axi_ss1_BID),
    .m_axi_ss1_BUSER(m_axi_ss1_BUSER),
    .m_axi_ss2_AWVALID(m_axi_ss2_AWVALID),
    .m_axi_ss2_AWREADY(m_axi_ss2_AWREADY),
    .m_axi_ss2_AWADDR(m_axi_ss2_AWADDR),
    .m_axi_ss2_AWID(m_axi_ss2_AWID),
    .m_axi_ss2_AWLEN(m_axi_ss2_AWLEN),
    .m_axi_ss2_AWSIZE(m_axi_ss2_AWSIZE),
    .m_axi_ss2_AWBURST(m_axi_ss2_AWBURST),
    .m_axi_ss2_AWLOCK(m_axi_ss2_AWLOCK),
    .m_axi_ss2_AWCACHE(m_axi_ss2_AWCACHE),
    .m_axi_ss2_AWPROT(m_axi_ss2_AWPROT),
    .m_axi_ss2_AWQOS(m_axi_ss2_AWQOS),
    .m_axi_ss2_AWREGION(m_axi_ss2_AWREGION),
    .m_axi_ss2_AWUSER(m_axi_ss2_AWUSER),
    .m_axi_ss2_WVALID(m_axi_ss2_WVALID),
    .m_axi_ss2_WREADY(m_axi_ss2_WREADY),
    .m_axi_ss2_WDATA(m_axi_ss2_WDATA),
    .m_axi_ss2_WSTRB(m_axi_ss2_WSTRB),
    .m_axi_ss2_WLAST(m_axi_ss2_WLAST),
    .m_axi_ss2_WID(m_axi_ss2_WID),
    .m_axi_ss2_WUSER(m_axi_ss2_WUSER),
    .m_axi_ss2_ARVALID(m_axi_ss2_ARVALID),
    .m_axi_ss2_ARREADY(m_axi_ss2_ARREADY),
    .m_axi_ss2_ARADDR(m_axi_ss2_ARADDR),
    .m_axi_ss2_ARID(m_axi_ss2_ARID),
    .m_axi_ss2_ARLEN(m_axi_ss2_ARLEN),
    .m_axi_ss2_ARSIZE(m_axi_ss2_ARSIZE),
    .m_axi_ss2_ARBURST(m_axi_ss2_ARBURST),
    .m_axi_ss2_ARLOCK(m_axi_ss2_ARLOCK),
    .m_axi_ss2_ARCACHE(m_axi_ss2_ARCACHE),
    .m_axi_ss2_ARPROT(m_axi_ss2_ARPROT),
    .m_axi_ss2_ARQOS(m_axi_ss2_ARQOS),
    .m_axi_ss2_ARREGION(m_axi_ss2_ARREGION),
    .m_axi_ss2_ARUSER(m_axi_ss2_ARUSER),
    .m_axi_ss2_RVALID(m_axi_ss2_RVALID),
    .m_axi_ss2_RREADY(m_axi_ss2_RREADY),
    .m_axi_ss2_RDATA(m_axi_ss2_RDATA),
    .m_axi_ss2_RLAST(m_axi_ss2_RLAST),
    .m_axi_ss2_RID(m_axi_ss2_RID),
    .m_axi_ss2_RUSER(m_axi_ss2_RUSER),
    .m_axi_ss2_RRESP(m_axi_ss2_RRESP),
    .m_axi_ss2_BVALID(m_axi_ss2_BVALID),
    .m_axi_ss2_BREADY(m_axi_ss2_BREADY),
    .m_axi_ss2_BRESP(m_axi_ss2_BRESP),
    .m_axi_ss2_BID(m_axi_ss2_BID),
    .m_axi_ss2_BUSER(m_axi_ss2_BUSER),
    .m_axi_sw0_AWVALID(m_axi_sw0_AWVALID),
    .m_axi_sw0_AWREADY(m_axi_sw0_AWREADY),
    .m_axi_sw0_AWADDR(m_axi_sw0_AWADDR),
    .m_axi_sw0_AWID(m_axi_sw0_AWID),
    .m_axi_sw0_AWLEN(m_axi_sw0_AWLEN),
    .m_axi_sw0_AWSIZE(m_axi_sw0_AWSIZE),
    .m_axi_sw0_AWBURST(m_axi_sw0_AWBURST),
    .m_axi_sw0_AWLOCK(m_axi_sw0_AWLOCK),
    .m_axi_sw0_AWCACHE(m_axi_sw0_AWCACHE),
    .m_axi_sw0_AWPROT(m_axi_sw0_AWPROT),
    .m_axi_sw0_AWQOS(m_axi_sw0_AWQOS),
    .m_axi_sw0_AWREGION(m_axi_sw0_AWREGION),
    .m_axi_sw0_AWUSER(m_axi_sw0_AWUSER),
    .m_axi_sw0_WVALID(m_axi_sw0_WVALID),
    .m_axi_sw0_WREADY(m_axi_sw0_WREADY),
    .m_axi_sw0_WDATA(m_axi_sw0_WDATA),
    .m_axi_sw0_WSTRB(m_axi_sw0_WSTRB),
    .m_axi_sw0_WLAST(m_axi_sw0_WLAST),
    .m_axi_sw0_WID(m_axi_sw0_WID),
    .m_axi_sw0_WUSER(m_axi_sw0_WUSER),
    .m_axi_sw0_ARVALID(m_axi_sw0_ARVALID),
    .m_axi_sw0_ARREADY(m_axi_sw0_ARREADY),
    .m_axi_sw0_ARADDR(m_axi_sw0_ARADDR),
    .m_axi_sw0_ARID(m_axi_sw0_ARID),
    .m_axi_sw0_ARLEN(m_axi_sw0_ARLEN),
    .m_axi_sw0_ARSIZE(m_axi_sw0_ARSIZE),
    .m_axi_sw0_ARBURST(m_axi_sw0_ARBURST),
    .m_axi_sw0_ARLOCK(m_axi_sw0_ARLOCK),
    .m_axi_sw0_ARCACHE(m_axi_sw0_ARCACHE),
    .m_axi_sw0_ARPROT(m_axi_sw0_ARPROT),
    .m_axi_sw0_ARQOS(m_axi_sw0_ARQOS),
    .m_axi_sw0_ARREGION(m_axi_sw0_ARREGION),
    .m_axi_sw0_ARUSER(m_axi_sw0_ARUSER),
    .m_axi_sw0_RVALID(m_axi_sw0_RVALID),
    .m_axi_sw0_RREADY(m_axi_sw0_RREADY),
    .m_axi_sw0_RDATA(m_axi_sw0_RDATA),
    .m_axi_sw0_RLAST(m_axi_sw0_RLAST),
    .m_axi_sw0_RID(m_axi_sw0_RID),
    .m_axi_sw0_RUSER(m_axi_sw0_RUSER),
    .m_axi_sw0_RRESP(m_axi_sw0_RRESP),
    .m_axi_sw0_BVALID(m_axi_sw0_BVALID),
    .m_axi_sw0_BREADY(m_axi_sw0_BREADY),
    .m_axi_sw0_BRESP(m_axi_sw0_BRESP),
    .m_axi_sw0_BID(m_axi_sw0_BID),
    .m_axi_sw0_BUSER(m_axi_sw0_BUSER),
    .m_axi_sw1_AWVALID(m_axi_sw1_AWVALID),
    .m_axi_sw1_AWREADY(m_axi_sw1_AWREADY),
    .m_axi_sw1_AWADDR(m_axi_sw1_AWADDR),
    .m_axi_sw1_AWID(m_axi_sw1_AWID),
    .m_axi_sw1_AWLEN(m_axi_sw1_AWLEN),
    .m_axi_sw1_AWSIZE(m_axi_sw1_AWSIZE),
    .m_axi_sw1_AWBURST(m_axi_sw1_AWBURST),
    .m_axi_sw1_AWLOCK(m_axi_sw1_AWLOCK),
    .m_axi_sw1_AWCACHE(m_axi_sw1_AWCACHE),
    .m_axi_sw1_AWPROT(m_axi_sw1_AWPROT),
    .m_axi_sw1_AWQOS(m_axi_sw1_AWQOS),
    .m_axi_sw1_AWREGION(m_axi_sw1_AWREGION),
    .m_axi_sw1_AWUSER(m_axi_sw1_AWUSER),
    .m_axi_sw1_WVALID(m_axi_sw1_WVALID),
    .m_axi_sw1_WREADY(m_axi_sw1_WREADY),
    .m_axi_sw1_WDATA(m_axi_sw1_WDATA),
    .m_axi_sw1_WSTRB(m_axi_sw1_WSTRB),
    .m_axi_sw1_WLAST(m_axi_sw1_WLAST),
    .m_axi_sw1_WID(m_axi_sw1_WID),
    .m_axi_sw1_WUSER(m_axi_sw1_WUSER),
    .m_axi_sw1_ARVALID(m_axi_sw1_ARVALID),
    .m_axi_sw1_ARREADY(m_axi_sw1_ARREADY),
    .m_axi_sw1_ARADDR(m_axi_sw1_ARADDR),
    .m_axi_sw1_ARID(m_axi_sw1_ARID),
    .m_axi_sw1_ARLEN(m_axi_sw1_ARLEN),
    .m_axi_sw1_ARSIZE(m_axi_sw1_ARSIZE),
    .m_axi_sw1_ARBURST(m_axi_sw1_ARBURST),
    .m_axi_sw1_ARLOCK(m_axi_sw1_ARLOCK),
    .m_axi_sw1_ARCACHE(m_axi_sw1_ARCACHE),
    .m_axi_sw1_ARPROT(m_axi_sw1_ARPROT),
    .m_axi_sw1_ARQOS(m_axi_sw1_ARQOS),
    .m_axi_sw1_ARREGION(m_axi_sw1_ARREGION),
    .m_axi_sw1_ARUSER(m_axi_sw1_ARUSER),
    .m_axi_sw1_RVALID(m_axi_sw1_RVALID),
    .m_axi_sw1_RREADY(m_axi_sw1_RREADY),
    .m_axi_sw1_RDATA(m_axi_sw1_RDATA),
    .m_axi_sw1_RLAST(m_axi_sw1_RLAST),
    .m_axi_sw1_RID(m_axi_sw1_RID),
    .m_axi_sw1_RUSER(m_axi_sw1_RUSER),
    .m_axi_sw1_RRESP(m_axi_sw1_RRESP),
    .m_axi_sw1_BVALID(m_axi_sw1_BVALID),
    .m_axi_sw1_BREADY(m_axi_sw1_BREADY),
    .m_axi_sw1_BRESP(m_axi_sw1_BRESP),
    .m_axi_sw1_BID(m_axi_sw1_BID),
    .m_axi_sw1_BUSER(m_axi_sw1_BUSER),
    .rows(rows),
    .status(status),
    .status_ap_vld(status_ap_vld),
    .muladds(muladds),
    .muladds_ap_vld(muladds_ap_vld),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .interrupt(interrupt)
  );
endmodule
