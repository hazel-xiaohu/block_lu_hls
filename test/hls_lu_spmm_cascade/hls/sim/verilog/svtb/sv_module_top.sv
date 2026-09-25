//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SV_MODULE_TOP_SV
`define SV_MODULE_TOP_SV


`timescale 1ns/1ps


`include "uvm_macros.svh"
import uvm_pkg::*;
import file_agent_pkg::*;
import spmm_subsystem_pkg::*;
`include "spmm_subsys_test_sequence_lib.sv"
`include "spmm_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_spmm_top.AESL_clock), .reset(apatb_spmm_top.AESL_reset) );
    assign misc_if.dut2tb_ap_ready = apatb_spmm_top.AESL_inst_spmm.ap_ready;
    assign misc_if.dut2tb_ap_done_kernel = apatb_spmm_top.AESL_inst_spmm.ap_done;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    axi_if #(64,4,8,3,1)  axi_arcsr_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_arcsr_if.AWVALID = apatb_spmm_top.arcsr_AWVALID;
    assign apatb_spmm_top.arcsr_AWREADY = axi_arcsr_if.AWREADY;
    assign axi_arcsr_if.AWADDR = apatb_spmm_top.arcsr_AWADDR;
    assign axi_arcsr_if.AWID = apatb_spmm_top.arcsr_AWID;
    assign axi_arcsr_if.AWLEN = apatb_spmm_top.arcsr_AWLEN;
    assign axi_arcsr_if.AWSIZE = apatb_spmm_top.arcsr_AWSIZE;
    assign axi_arcsr_if.AWBURST = apatb_spmm_top.arcsr_AWBURST;
    assign axi_arcsr_if.AWLOCK = apatb_spmm_top.arcsr_AWLOCK;
    assign axi_arcsr_if.AWCACHE = apatb_spmm_top.arcsr_AWCACHE;
    assign axi_arcsr_if.AWPROT = apatb_spmm_top.arcsr_AWPROT;
    assign axi_arcsr_if.AWQOS = apatb_spmm_top.arcsr_AWQOS;
    assign axi_arcsr_if.AWREGION = apatb_spmm_top.arcsr_AWREGION;
    assign axi_arcsr_if.AWUSER = apatb_spmm_top.arcsr_AWUSER;
    assign axi_arcsr_if.WVALID = apatb_spmm_top.arcsr_WVALID;
    assign apatb_spmm_top.arcsr_WREADY = axi_arcsr_if.WREADY;
    assign axi_arcsr_if.WDATA = apatb_spmm_top.arcsr_WDATA;
    assign axi_arcsr_if.WSTRB = apatb_spmm_top.arcsr_WSTRB;
    assign axi_arcsr_if.WLAST = apatb_spmm_top.arcsr_WLAST;
    assign axi_arcsr_if.WID = apatb_spmm_top.arcsr_WID;
    assign axi_arcsr_if.WUSER = apatb_spmm_top.arcsr_WUSER;
    assign axi_arcsr_if.ARVALID = apatb_spmm_top.arcsr_ARVALID;
    assign apatb_spmm_top.arcsr_ARREADY = axi_arcsr_if.ARREADY;
    assign axi_arcsr_if.ARADDR = apatb_spmm_top.arcsr_ARADDR;
    assign axi_arcsr_if.ARID = apatb_spmm_top.arcsr_ARID;
    assign axi_arcsr_if.ARLEN = apatb_spmm_top.arcsr_ARLEN;
    assign axi_arcsr_if.ARSIZE = apatb_spmm_top.arcsr_ARSIZE;
    assign axi_arcsr_if.ARBURST = apatb_spmm_top.arcsr_ARBURST;
    assign axi_arcsr_if.ARLOCK = apatb_spmm_top.arcsr_ARLOCK;
    assign axi_arcsr_if.ARCACHE = apatb_spmm_top.arcsr_ARCACHE;
    assign axi_arcsr_if.ARPROT = apatb_spmm_top.arcsr_ARPROT;
    assign axi_arcsr_if.ARQOS = apatb_spmm_top.arcsr_ARQOS;
    assign axi_arcsr_if.ARREGION = apatb_spmm_top.arcsr_ARREGION;
    assign axi_arcsr_if.ARUSER = apatb_spmm_top.arcsr_ARUSER;
    assign apatb_spmm_top.arcsr_RVALID = axi_arcsr_if.RVALID;
    assign axi_arcsr_if.RREADY = apatb_spmm_top.arcsr_RREADY;
    assign apatb_spmm_top.arcsr_RDATA = axi_arcsr_if.RDATA;
    assign apatb_spmm_top.arcsr_RLAST = axi_arcsr_if.RLAST;
    assign apatb_spmm_top.arcsr_RID = axi_arcsr_if.RID;
    assign apatb_spmm_top.arcsr_RUSER = axi_arcsr_if.RUSER;
    assign apatb_spmm_top.arcsr_RRESP = axi_arcsr_if.RRESP;
    assign apatb_spmm_top.arcsr_BVALID = axi_arcsr_if.BVALID;
    assign axi_arcsr_if.BREADY = apatb_spmm_top.arcsr_BREADY;
    assign apatb_spmm_top.arcsr_BRESP = axi_arcsr_if.BRESP;
    assign apatb_spmm_top.arcsr_BID = axi_arcsr_if.BID;
    assign apatb_spmm_top.arcsr_BUSER = axi_arcsr_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_arcsr.*", "vif", axi_arcsr_if);
    end


    axi_if #(64,4,8,3,1)  axi_acid_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_acid_if.AWVALID = apatb_spmm_top.acid_AWVALID;
    assign apatb_spmm_top.acid_AWREADY = axi_acid_if.AWREADY;
    assign axi_acid_if.AWADDR = apatb_spmm_top.acid_AWADDR;
    assign axi_acid_if.AWID = apatb_spmm_top.acid_AWID;
    assign axi_acid_if.AWLEN = apatb_spmm_top.acid_AWLEN;
    assign axi_acid_if.AWSIZE = apatb_spmm_top.acid_AWSIZE;
    assign axi_acid_if.AWBURST = apatb_spmm_top.acid_AWBURST;
    assign axi_acid_if.AWLOCK = apatb_spmm_top.acid_AWLOCK;
    assign axi_acid_if.AWCACHE = apatb_spmm_top.acid_AWCACHE;
    assign axi_acid_if.AWPROT = apatb_spmm_top.acid_AWPROT;
    assign axi_acid_if.AWQOS = apatb_spmm_top.acid_AWQOS;
    assign axi_acid_if.AWREGION = apatb_spmm_top.acid_AWREGION;
    assign axi_acid_if.AWUSER = apatb_spmm_top.acid_AWUSER;
    assign axi_acid_if.WVALID = apatb_spmm_top.acid_WVALID;
    assign apatb_spmm_top.acid_WREADY = axi_acid_if.WREADY;
    assign axi_acid_if.WDATA = apatb_spmm_top.acid_WDATA;
    assign axi_acid_if.WSTRB = apatb_spmm_top.acid_WSTRB;
    assign axi_acid_if.WLAST = apatb_spmm_top.acid_WLAST;
    assign axi_acid_if.WID = apatb_spmm_top.acid_WID;
    assign axi_acid_if.WUSER = apatb_spmm_top.acid_WUSER;
    assign axi_acid_if.ARVALID = apatb_spmm_top.acid_ARVALID;
    assign apatb_spmm_top.acid_ARREADY = axi_acid_if.ARREADY;
    assign axi_acid_if.ARADDR = apatb_spmm_top.acid_ARADDR;
    assign axi_acid_if.ARID = apatb_spmm_top.acid_ARID;
    assign axi_acid_if.ARLEN = apatb_spmm_top.acid_ARLEN;
    assign axi_acid_if.ARSIZE = apatb_spmm_top.acid_ARSIZE;
    assign axi_acid_if.ARBURST = apatb_spmm_top.acid_ARBURST;
    assign axi_acid_if.ARLOCK = apatb_spmm_top.acid_ARLOCK;
    assign axi_acid_if.ARCACHE = apatb_spmm_top.acid_ARCACHE;
    assign axi_acid_if.ARPROT = apatb_spmm_top.acid_ARPROT;
    assign axi_acid_if.ARQOS = apatb_spmm_top.acid_ARQOS;
    assign axi_acid_if.ARREGION = apatb_spmm_top.acid_ARREGION;
    assign axi_acid_if.ARUSER = apatb_spmm_top.acid_ARUSER;
    assign apatb_spmm_top.acid_RVALID = axi_acid_if.RVALID;
    assign axi_acid_if.RREADY = apatb_spmm_top.acid_RREADY;
    assign apatb_spmm_top.acid_RDATA = axi_acid_if.RDATA;
    assign apatb_spmm_top.acid_RLAST = axi_acid_if.RLAST;
    assign apatb_spmm_top.acid_RID = axi_acid_if.RID;
    assign apatb_spmm_top.acid_RUSER = axi_acid_if.RUSER;
    assign apatb_spmm_top.acid_RRESP = axi_acid_if.RRESP;
    assign apatb_spmm_top.acid_BVALID = axi_acid_if.BVALID;
    assign axi_acid_if.BREADY = apatb_spmm_top.acid_BREADY;
    assign apatb_spmm_top.acid_BRESP = axi_acid_if.BRESP;
    assign apatb_spmm_top.acid_BID = axi_acid_if.BID;
    assign apatb_spmm_top.acid_BUSER = axi_acid_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_acid.*", "vif", axi_acid_if);
    end


    axi_if #(64,4,8,3,1)  axi_aval_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_aval_if.AWVALID = apatb_spmm_top.aval_AWVALID;
    assign apatb_spmm_top.aval_AWREADY = axi_aval_if.AWREADY;
    assign axi_aval_if.AWADDR = apatb_spmm_top.aval_AWADDR;
    assign axi_aval_if.AWID = apatb_spmm_top.aval_AWID;
    assign axi_aval_if.AWLEN = apatb_spmm_top.aval_AWLEN;
    assign axi_aval_if.AWSIZE = apatb_spmm_top.aval_AWSIZE;
    assign axi_aval_if.AWBURST = apatb_spmm_top.aval_AWBURST;
    assign axi_aval_if.AWLOCK = apatb_spmm_top.aval_AWLOCK;
    assign axi_aval_if.AWCACHE = apatb_spmm_top.aval_AWCACHE;
    assign axi_aval_if.AWPROT = apatb_spmm_top.aval_AWPROT;
    assign axi_aval_if.AWQOS = apatb_spmm_top.aval_AWQOS;
    assign axi_aval_if.AWREGION = apatb_spmm_top.aval_AWREGION;
    assign axi_aval_if.AWUSER = apatb_spmm_top.aval_AWUSER;
    assign axi_aval_if.WVALID = apatb_spmm_top.aval_WVALID;
    assign apatb_spmm_top.aval_WREADY = axi_aval_if.WREADY;
    assign axi_aval_if.WDATA = apatb_spmm_top.aval_WDATA;
    assign axi_aval_if.WSTRB = apatb_spmm_top.aval_WSTRB;
    assign axi_aval_if.WLAST = apatb_spmm_top.aval_WLAST;
    assign axi_aval_if.WID = apatb_spmm_top.aval_WID;
    assign axi_aval_if.WUSER = apatb_spmm_top.aval_WUSER;
    assign axi_aval_if.ARVALID = apatb_spmm_top.aval_ARVALID;
    assign apatb_spmm_top.aval_ARREADY = axi_aval_if.ARREADY;
    assign axi_aval_if.ARADDR = apatb_spmm_top.aval_ARADDR;
    assign axi_aval_if.ARID = apatb_spmm_top.aval_ARID;
    assign axi_aval_if.ARLEN = apatb_spmm_top.aval_ARLEN;
    assign axi_aval_if.ARSIZE = apatb_spmm_top.aval_ARSIZE;
    assign axi_aval_if.ARBURST = apatb_spmm_top.aval_ARBURST;
    assign axi_aval_if.ARLOCK = apatb_spmm_top.aval_ARLOCK;
    assign axi_aval_if.ARCACHE = apatb_spmm_top.aval_ARCACHE;
    assign axi_aval_if.ARPROT = apatb_spmm_top.aval_ARPROT;
    assign axi_aval_if.ARQOS = apatb_spmm_top.aval_ARQOS;
    assign axi_aval_if.ARREGION = apatb_spmm_top.aval_ARREGION;
    assign axi_aval_if.ARUSER = apatb_spmm_top.aval_ARUSER;
    assign apatb_spmm_top.aval_RVALID = axi_aval_if.RVALID;
    assign axi_aval_if.RREADY = apatb_spmm_top.aval_RREADY;
    assign apatb_spmm_top.aval_RDATA = axi_aval_if.RDATA;
    assign apatb_spmm_top.aval_RLAST = axi_aval_if.RLAST;
    assign apatb_spmm_top.aval_RID = axi_aval_if.RID;
    assign apatb_spmm_top.aval_RUSER = axi_aval_if.RUSER;
    assign apatb_spmm_top.aval_RRESP = axi_aval_if.RRESP;
    assign apatb_spmm_top.aval_BVALID = axi_aval_if.BVALID;
    assign axi_aval_if.BREADY = apatb_spmm_top.aval_BREADY;
    assign apatb_spmm_top.aval_BRESP = axi_aval_if.BRESP;
    assign apatb_spmm_top.aval_BID = axi_aval_if.BID;
    assign apatb_spmm_top.aval_BUSER = axi_aval_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_aval.*", "vif", axi_aval_if);
    end


    axi_if #(64,16,8,3,1)  axi_brcsr1_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_brcsr1_if.AWVALID = apatb_spmm_top.brcsr1_AWVALID;
    assign apatb_spmm_top.brcsr1_AWREADY = axi_brcsr1_if.AWREADY;
    assign axi_brcsr1_if.AWADDR = apatb_spmm_top.brcsr1_AWADDR;
    assign axi_brcsr1_if.AWID = apatb_spmm_top.brcsr1_AWID;
    assign axi_brcsr1_if.AWLEN = apatb_spmm_top.brcsr1_AWLEN;
    assign axi_brcsr1_if.AWSIZE = apatb_spmm_top.brcsr1_AWSIZE;
    assign axi_brcsr1_if.AWBURST = apatb_spmm_top.brcsr1_AWBURST;
    assign axi_brcsr1_if.AWLOCK = apatb_spmm_top.brcsr1_AWLOCK;
    assign axi_brcsr1_if.AWCACHE = apatb_spmm_top.brcsr1_AWCACHE;
    assign axi_brcsr1_if.AWPROT = apatb_spmm_top.brcsr1_AWPROT;
    assign axi_brcsr1_if.AWQOS = apatb_spmm_top.brcsr1_AWQOS;
    assign axi_brcsr1_if.AWREGION = apatb_spmm_top.brcsr1_AWREGION;
    assign axi_brcsr1_if.AWUSER = apatb_spmm_top.brcsr1_AWUSER;
    assign axi_brcsr1_if.WVALID = apatb_spmm_top.brcsr1_WVALID;
    assign apatb_spmm_top.brcsr1_WREADY = axi_brcsr1_if.WREADY;
    assign axi_brcsr1_if.WDATA = apatb_spmm_top.brcsr1_WDATA;
    assign axi_brcsr1_if.WSTRB = apatb_spmm_top.brcsr1_WSTRB;
    assign axi_brcsr1_if.WLAST = apatb_spmm_top.brcsr1_WLAST;
    assign axi_brcsr1_if.WID = apatb_spmm_top.brcsr1_WID;
    assign axi_brcsr1_if.WUSER = apatb_spmm_top.brcsr1_WUSER;
    assign axi_brcsr1_if.ARVALID = apatb_spmm_top.brcsr1_ARVALID;
    assign apatb_spmm_top.brcsr1_ARREADY = axi_brcsr1_if.ARREADY;
    assign axi_brcsr1_if.ARADDR = apatb_spmm_top.brcsr1_ARADDR;
    assign axi_brcsr1_if.ARID = apatb_spmm_top.brcsr1_ARID;
    assign axi_brcsr1_if.ARLEN = apatb_spmm_top.brcsr1_ARLEN;
    assign axi_brcsr1_if.ARSIZE = apatb_spmm_top.brcsr1_ARSIZE;
    assign axi_brcsr1_if.ARBURST = apatb_spmm_top.brcsr1_ARBURST;
    assign axi_brcsr1_if.ARLOCK = apatb_spmm_top.brcsr1_ARLOCK;
    assign axi_brcsr1_if.ARCACHE = apatb_spmm_top.brcsr1_ARCACHE;
    assign axi_brcsr1_if.ARPROT = apatb_spmm_top.brcsr1_ARPROT;
    assign axi_brcsr1_if.ARQOS = apatb_spmm_top.brcsr1_ARQOS;
    assign axi_brcsr1_if.ARREGION = apatb_spmm_top.brcsr1_ARREGION;
    assign axi_brcsr1_if.ARUSER = apatb_spmm_top.brcsr1_ARUSER;
    assign apatb_spmm_top.brcsr1_RVALID = axi_brcsr1_if.RVALID;
    assign axi_brcsr1_if.RREADY = apatb_spmm_top.brcsr1_RREADY;
    assign apatb_spmm_top.brcsr1_RDATA = axi_brcsr1_if.RDATA;
    assign apatb_spmm_top.brcsr1_RLAST = axi_brcsr1_if.RLAST;
    assign apatb_spmm_top.brcsr1_RID = axi_brcsr1_if.RID;
    assign apatb_spmm_top.brcsr1_RUSER = axi_brcsr1_if.RUSER;
    assign apatb_spmm_top.brcsr1_RRESP = axi_brcsr1_if.RRESP;
    assign apatb_spmm_top.brcsr1_BVALID = axi_brcsr1_if.BVALID;
    assign axi_brcsr1_if.BREADY = apatb_spmm_top.brcsr1_BREADY;
    assign apatb_spmm_top.brcsr1_BRESP = axi_brcsr1_if.BRESP;
    assign apatb_spmm_top.brcsr1_BID = axi_brcsr1_if.BID;
    assign apatb_spmm_top.brcsr1_BUSER = axi_brcsr1_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_brcsr1.*", "vif", axi_brcsr1_if);
    end


    axi_if #(64,16,8,3,1)  axi_brcsr2_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_brcsr2_if.AWVALID = apatb_spmm_top.brcsr2_AWVALID;
    assign apatb_spmm_top.brcsr2_AWREADY = axi_brcsr2_if.AWREADY;
    assign axi_brcsr2_if.AWADDR = apatb_spmm_top.brcsr2_AWADDR;
    assign axi_brcsr2_if.AWID = apatb_spmm_top.brcsr2_AWID;
    assign axi_brcsr2_if.AWLEN = apatb_spmm_top.brcsr2_AWLEN;
    assign axi_brcsr2_if.AWSIZE = apatb_spmm_top.brcsr2_AWSIZE;
    assign axi_brcsr2_if.AWBURST = apatb_spmm_top.brcsr2_AWBURST;
    assign axi_brcsr2_if.AWLOCK = apatb_spmm_top.brcsr2_AWLOCK;
    assign axi_brcsr2_if.AWCACHE = apatb_spmm_top.brcsr2_AWCACHE;
    assign axi_brcsr2_if.AWPROT = apatb_spmm_top.brcsr2_AWPROT;
    assign axi_brcsr2_if.AWQOS = apatb_spmm_top.brcsr2_AWQOS;
    assign axi_brcsr2_if.AWREGION = apatb_spmm_top.brcsr2_AWREGION;
    assign axi_brcsr2_if.AWUSER = apatb_spmm_top.brcsr2_AWUSER;
    assign axi_brcsr2_if.WVALID = apatb_spmm_top.brcsr2_WVALID;
    assign apatb_spmm_top.brcsr2_WREADY = axi_brcsr2_if.WREADY;
    assign axi_brcsr2_if.WDATA = apatb_spmm_top.brcsr2_WDATA;
    assign axi_brcsr2_if.WSTRB = apatb_spmm_top.brcsr2_WSTRB;
    assign axi_brcsr2_if.WLAST = apatb_spmm_top.brcsr2_WLAST;
    assign axi_brcsr2_if.WID = apatb_spmm_top.brcsr2_WID;
    assign axi_brcsr2_if.WUSER = apatb_spmm_top.brcsr2_WUSER;
    assign axi_brcsr2_if.ARVALID = apatb_spmm_top.brcsr2_ARVALID;
    assign apatb_spmm_top.brcsr2_ARREADY = axi_brcsr2_if.ARREADY;
    assign axi_brcsr2_if.ARADDR = apatb_spmm_top.brcsr2_ARADDR;
    assign axi_brcsr2_if.ARID = apatb_spmm_top.brcsr2_ARID;
    assign axi_brcsr2_if.ARLEN = apatb_spmm_top.brcsr2_ARLEN;
    assign axi_brcsr2_if.ARSIZE = apatb_spmm_top.brcsr2_ARSIZE;
    assign axi_brcsr2_if.ARBURST = apatb_spmm_top.brcsr2_ARBURST;
    assign axi_brcsr2_if.ARLOCK = apatb_spmm_top.brcsr2_ARLOCK;
    assign axi_brcsr2_if.ARCACHE = apatb_spmm_top.brcsr2_ARCACHE;
    assign axi_brcsr2_if.ARPROT = apatb_spmm_top.brcsr2_ARPROT;
    assign axi_brcsr2_if.ARQOS = apatb_spmm_top.brcsr2_ARQOS;
    assign axi_brcsr2_if.ARREGION = apatb_spmm_top.brcsr2_ARREGION;
    assign axi_brcsr2_if.ARUSER = apatb_spmm_top.brcsr2_ARUSER;
    assign apatb_spmm_top.brcsr2_RVALID = axi_brcsr2_if.RVALID;
    assign axi_brcsr2_if.RREADY = apatb_spmm_top.brcsr2_RREADY;
    assign apatb_spmm_top.brcsr2_RDATA = axi_brcsr2_if.RDATA;
    assign apatb_spmm_top.brcsr2_RLAST = axi_brcsr2_if.RLAST;
    assign apatb_spmm_top.brcsr2_RID = axi_brcsr2_if.RID;
    assign apatb_spmm_top.brcsr2_RUSER = axi_brcsr2_if.RUSER;
    assign apatb_spmm_top.brcsr2_RRESP = axi_brcsr2_if.RRESP;
    assign apatb_spmm_top.brcsr2_BVALID = axi_brcsr2_if.BVALID;
    assign axi_brcsr2_if.BREADY = apatb_spmm_top.brcsr2_BREADY;
    assign apatb_spmm_top.brcsr2_BRESP = axi_brcsr2_if.BRESP;
    assign apatb_spmm_top.brcsr2_BID = axi_brcsr2_if.BID;
    assign apatb_spmm_top.brcsr2_BUSER = axi_brcsr2_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_brcsr2.*", "vif", axi_brcsr2_if);
    end


    axi_if #(64,16,8,3,1)  axi_brcsr3_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_brcsr3_if.AWVALID = apatb_spmm_top.brcsr3_AWVALID;
    assign apatb_spmm_top.brcsr3_AWREADY = axi_brcsr3_if.AWREADY;
    assign axi_brcsr3_if.AWADDR = apatb_spmm_top.brcsr3_AWADDR;
    assign axi_brcsr3_if.AWID = apatb_spmm_top.brcsr3_AWID;
    assign axi_brcsr3_if.AWLEN = apatb_spmm_top.brcsr3_AWLEN;
    assign axi_brcsr3_if.AWSIZE = apatb_spmm_top.brcsr3_AWSIZE;
    assign axi_brcsr3_if.AWBURST = apatb_spmm_top.brcsr3_AWBURST;
    assign axi_brcsr3_if.AWLOCK = apatb_spmm_top.brcsr3_AWLOCK;
    assign axi_brcsr3_if.AWCACHE = apatb_spmm_top.brcsr3_AWCACHE;
    assign axi_brcsr3_if.AWPROT = apatb_spmm_top.brcsr3_AWPROT;
    assign axi_brcsr3_if.AWQOS = apatb_spmm_top.brcsr3_AWQOS;
    assign axi_brcsr3_if.AWREGION = apatb_spmm_top.brcsr3_AWREGION;
    assign axi_brcsr3_if.AWUSER = apatb_spmm_top.brcsr3_AWUSER;
    assign axi_brcsr3_if.WVALID = apatb_spmm_top.brcsr3_WVALID;
    assign apatb_spmm_top.brcsr3_WREADY = axi_brcsr3_if.WREADY;
    assign axi_brcsr3_if.WDATA = apatb_spmm_top.brcsr3_WDATA;
    assign axi_brcsr3_if.WSTRB = apatb_spmm_top.brcsr3_WSTRB;
    assign axi_brcsr3_if.WLAST = apatb_spmm_top.brcsr3_WLAST;
    assign axi_brcsr3_if.WID = apatb_spmm_top.brcsr3_WID;
    assign axi_brcsr3_if.WUSER = apatb_spmm_top.brcsr3_WUSER;
    assign axi_brcsr3_if.ARVALID = apatb_spmm_top.brcsr3_ARVALID;
    assign apatb_spmm_top.brcsr3_ARREADY = axi_brcsr3_if.ARREADY;
    assign axi_brcsr3_if.ARADDR = apatb_spmm_top.brcsr3_ARADDR;
    assign axi_brcsr3_if.ARID = apatb_spmm_top.brcsr3_ARID;
    assign axi_brcsr3_if.ARLEN = apatb_spmm_top.brcsr3_ARLEN;
    assign axi_brcsr3_if.ARSIZE = apatb_spmm_top.brcsr3_ARSIZE;
    assign axi_brcsr3_if.ARBURST = apatb_spmm_top.brcsr3_ARBURST;
    assign axi_brcsr3_if.ARLOCK = apatb_spmm_top.brcsr3_ARLOCK;
    assign axi_brcsr3_if.ARCACHE = apatb_spmm_top.brcsr3_ARCACHE;
    assign axi_brcsr3_if.ARPROT = apatb_spmm_top.brcsr3_ARPROT;
    assign axi_brcsr3_if.ARQOS = apatb_spmm_top.brcsr3_ARQOS;
    assign axi_brcsr3_if.ARREGION = apatb_spmm_top.brcsr3_ARREGION;
    assign axi_brcsr3_if.ARUSER = apatb_spmm_top.brcsr3_ARUSER;
    assign apatb_spmm_top.brcsr3_RVALID = axi_brcsr3_if.RVALID;
    assign axi_brcsr3_if.RREADY = apatb_spmm_top.brcsr3_RREADY;
    assign apatb_spmm_top.brcsr3_RDATA = axi_brcsr3_if.RDATA;
    assign apatb_spmm_top.brcsr3_RLAST = axi_brcsr3_if.RLAST;
    assign apatb_spmm_top.brcsr3_RID = axi_brcsr3_if.RID;
    assign apatb_spmm_top.brcsr3_RUSER = axi_brcsr3_if.RUSER;
    assign apatb_spmm_top.brcsr3_RRESP = axi_brcsr3_if.RRESP;
    assign apatb_spmm_top.brcsr3_BVALID = axi_brcsr3_if.BVALID;
    assign axi_brcsr3_if.BREADY = apatb_spmm_top.brcsr3_BREADY;
    assign apatb_spmm_top.brcsr3_BRESP = axi_brcsr3_if.BRESP;
    assign apatb_spmm_top.brcsr3_BID = axi_brcsr3_if.BID;
    assign apatb_spmm_top.brcsr3_BUSER = axi_brcsr3_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_brcsr3.*", "vif", axi_brcsr3_if);
    end


    axi_if #(64,16,8,3,1)  axi_brcsr4_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_brcsr4_if.AWVALID = apatb_spmm_top.brcsr4_AWVALID;
    assign apatb_spmm_top.brcsr4_AWREADY = axi_brcsr4_if.AWREADY;
    assign axi_brcsr4_if.AWADDR = apatb_spmm_top.brcsr4_AWADDR;
    assign axi_brcsr4_if.AWID = apatb_spmm_top.brcsr4_AWID;
    assign axi_brcsr4_if.AWLEN = apatb_spmm_top.brcsr4_AWLEN;
    assign axi_brcsr4_if.AWSIZE = apatb_spmm_top.brcsr4_AWSIZE;
    assign axi_brcsr4_if.AWBURST = apatb_spmm_top.brcsr4_AWBURST;
    assign axi_brcsr4_if.AWLOCK = apatb_spmm_top.brcsr4_AWLOCK;
    assign axi_brcsr4_if.AWCACHE = apatb_spmm_top.brcsr4_AWCACHE;
    assign axi_brcsr4_if.AWPROT = apatb_spmm_top.brcsr4_AWPROT;
    assign axi_brcsr4_if.AWQOS = apatb_spmm_top.brcsr4_AWQOS;
    assign axi_brcsr4_if.AWREGION = apatb_spmm_top.brcsr4_AWREGION;
    assign axi_brcsr4_if.AWUSER = apatb_spmm_top.brcsr4_AWUSER;
    assign axi_brcsr4_if.WVALID = apatb_spmm_top.brcsr4_WVALID;
    assign apatb_spmm_top.brcsr4_WREADY = axi_brcsr4_if.WREADY;
    assign axi_brcsr4_if.WDATA = apatb_spmm_top.brcsr4_WDATA;
    assign axi_brcsr4_if.WSTRB = apatb_spmm_top.brcsr4_WSTRB;
    assign axi_brcsr4_if.WLAST = apatb_spmm_top.brcsr4_WLAST;
    assign axi_brcsr4_if.WID = apatb_spmm_top.brcsr4_WID;
    assign axi_brcsr4_if.WUSER = apatb_spmm_top.brcsr4_WUSER;
    assign axi_brcsr4_if.ARVALID = apatb_spmm_top.brcsr4_ARVALID;
    assign apatb_spmm_top.brcsr4_ARREADY = axi_brcsr4_if.ARREADY;
    assign axi_brcsr4_if.ARADDR = apatb_spmm_top.brcsr4_ARADDR;
    assign axi_brcsr4_if.ARID = apatb_spmm_top.brcsr4_ARID;
    assign axi_brcsr4_if.ARLEN = apatb_spmm_top.brcsr4_ARLEN;
    assign axi_brcsr4_if.ARSIZE = apatb_spmm_top.brcsr4_ARSIZE;
    assign axi_brcsr4_if.ARBURST = apatb_spmm_top.brcsr4_ARBURST;
    assign axi_brcsr4_if.ARLOCK = apatb_spmm_top.brcsr4_ARLOCK;
    assign axi_brcsr4_if.ARCACHE = apatb_spmm_top.brcsr4_ARCACHE;
    assign axi_brcsr4_if.ARPROT = apatb_spmm_top.brcsr4_ARPROT;
    assign axi_brcsr4_if.ARQOS = apatb_spmm_top.brcsr4_ARQOS;
    assign axi_brcsr4_if.ARREGION = apatb_spmm_top.brcsr4_ARREGION;
    assign axi_brcsr4_if.ARUSER = apatb_spmm_top.brcsr4_ARUSER;
    assign apatb_spmm_top.brcsr4_RVALID = axi_brcsr4_if.RVALID;
    assign axi_brcsr4_if.RREADY = apatb_spmm_top.brcsr4_RREADY;
    assign apatb_spmm_top.brcsr4_RDATA = axi_brcsr4_if.RDATA;
    assign apatb_spmm_top.brcsr4_RLAST = axi_brcsr4_if.RLAST;
    assign apatb_spmm_top.brcsr4_RID = axi_brcsr4_if.RID;
    assign apatb_spmm_top.brcsr4_RUSER = axi_brcsr4_if.RUSER;
    assign apatb_spmm_top.brcsr4_RRESP = axi_brcsr4_if.RRESP;
    assign apatb_spmm_top.brcsr4_BVALID = axi_brcsr4_if.BVALID;
    assign axi_brcsr4_if.BREADY = apatb_spmm_top.brcsr4_BREADY;
    assign apatb_spmm_top.brcsr4_BRESP = axi_brcsr4_if.BRESP;
    assign apatb_spmm_top.brcsr4_BID = axi_brcsr4_if.BID;
    assign apatb_spmm_top.brcsr4_BUSER = axi_brcsr4_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_brcsr4.*", "vif", axi_brcsr4_if);
    end


    axi_if #(64,16,8,3,1)  axi_bval1_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bval1_if.AWVALID = apatb_spmm_top.bval1_AWVALID;
    assign apatb_spmm_top.bval1_AWREADY = axi_bval1_if.AWREADY;
    assign axi_bval1_if.AWADDR = apatb_spmm_top.bval1_AWADDR;
    assign axi_bval1_if.AWID = apatb_spmm_top.bval1_AWID;
    assign axi_bval1_if.AWLEN = apatb_spmm_top.bval1_AWLEN;
    assign axi_bval1_if.AWSIZE = apatb_spmm_top.bval1_AWSIZE;
    assign axi_bval1_if.AWBURST = apatb_spmm_top.bval1_AWBURST;
    assign axi_bval1_if.AWLOCK = apatb_spmm_top.bval1_AWLOCK;
    assign axi_bval1_if.AWCACHE = apatb_spmm_top.bval1_AWCACHE;
    assign axi_bval1_if.AWPROT = apatb_spmm_top.bval1_AWPROT;
    assign axi_bval1_if.AWQOS = apatb_spmm_top.bval1_AWQOS;
    assign axi_bval1_if.AWREGION = apatb_spmm_top.bval1_AWREGION;
    assign axi_bval1_if.AWUSER = apatb_spmm_top.bval1_AWUSER;
    assign axi_bval1_if.WVALID = apatb_spmm_top.bval1_WVALID;
    assign apatb_spmm_top.bval1_WREADY = axi_bval1_if.WREADY;
    assign axi_bval1_if.WDATA = apatb_spmm_top.bval1_WDATA;
    assign axi_bval1_if.WSTRB = apatb_spmm_top.bval1_WSTRB;
    assign axi_bval1_if.WLAST = apatb_spmm_top.bval1_WLAST;
    assign axi_bval1_if.WID = apatb_spmm_top.bval1_WID;
    assign axi_bval1_if.WUSER = apatb_spmm_top.bval1_WUSER;
    assign axi_bval1_if.ARVALID = apatb_spmm_top.bval1_ARVALID;
    assign apatb_spmm_top.bval1_ARREADY = axi_bval1_if.ARREADY;
    assign axi_bval1_if.ARADDR = apatb_spmm_top.bval1_ARADDR;
    assign axi_bval1_if.ARID = apatb_spmm_top.bval1_ARID;
    assign axi_bval1_if.ARLEN = apatb_spmm_top.bval1_ARLEN;
    assign axi_bval1_if.ARSIZE = apatb_spmm_top.bval1_ARSIZE;
    assign axi_bval1_if.ARBURST = apatb_spmm_top.bval1_ARBURST;
    assign axi_bval1_if.ARLOCK = apatb_spmm_top.bval1_ARLOCK;
    assign axi_bval1_if.ARCACHE = apatb_spmm_top.bval1_ARCACHE;
    assign axi_bval1_if.ARPROT = apatb_spmm_top.bval1_ARPROT;
    assign axi_bval1_if.ARQOS = apatb_spmm_top.bval1_ARQOS;
    assign axi_bval1_if.ARREGION = apatb_spmm_top.bval1_ARREGION;
    assign axi_bval1_if.ARUSER = apatb_spmm_top.bval1_ARUSER;
    assign apatb_spmm_top.bval1_RVALID = axi_bval1_if.RVALID;
    assign axi_bval1_if.RREADY = apatb_spmm_top.bval1_RREADY;
    assign apatb_spmm_top.bval1_RDATA = axi_bval1_if.RDATA;
    assign apatb_spmm_top.bval1_RLAST = axi_bval1_if.RLAST;
    assign apatb_spmm_top.bval1_RID = axi_bval1_if.RID;
    assign apatb_spmm_top.bval1_RUSER = axi_bval1_if.RUSER;
    assign apatb_spmm_top.bval1_RRESP = axi_bval1_if.RRESP;
    assign apatb_spmm_top.bval1_BVALID = axi_bval1_if.BVALID;
    assign axi_bval1_if.BREADY = apatb_spmm_top.bval1_BREADY;
    assign apatb_spmm_top.bval1_BRESP = axi_bval1_if.BRESP;
    assign apatb_spmm_top.bval1_BID = axi_bval1_if.BID;
    assign apatb_spmm_top.bval1_BUSER = axi_bval1_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bval1.*", "vif", axi_bval1_if);
    end


    axi_if #(64,16,8,3,1)  axi_bcid1_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bcid1_if.AWVALID = apatb_spmm_top.bcid1_AWVALID;
    assign apatb_spmm_top.bcid1_AWREADY = axi_bcid1_if.AWREADY;
    assign axi_bcid1_if.AWADDR = apatb_spmm_top.bcid1_AWADDR;
    assign axi_bcid1_if.AWID = apatb_spmm_top.bcid1_AWID;
    assign axi_bcid1_if.AWLEN = apatb_spmm_top.bcid1_AWLEN;
    assign axi_bcid1_if.AWSIZE = apatb_spmm_top.bcid1_AWSIZE;
    assign axi_bcid1_if.AWBURST = apatb_spmm_top.bcid1_AWBURST;
    assign axi_bcid1_if.AWLOCK = apatb_spmm_top.bcid1_AWLOCK;
    assign axi_bcid1_if.AWCACHE = apatb_spmm_top.bcid1_AWCACHE;
    assign axi_bcid1_if.AWPROT = apatb_spmm_top.bcid1_AWPROT;
    assign axi_bcid1_if.AWQOS = apatb_spmm_top.bcid1_AWQOS;
    assign axi_bcid1_if.AWREGION = apatb_spmm_top.bcid1_AWREGION;
    assign axi_bcid1_if.AWUSER = apatb_spmm_top.bcid1_AWUSER;
    assign axi_bcid1_if.WVALID = apatb_spmm_top.bcid1_WVALID;
    assign apatb_spmm_top.bcid1_WREADY = axi_bcid1_if.WREADY;
    assign axi_bcid1_if.WDATA = apatb_spmm_top.bcid1_WDATA;
    assign axi_bcid1_if.WSTRB = apatb_spmm_top.bcid1_WSTRB;
    assign axi_bcid1_if.WLAST = apatb_spmm_top.bcid1_WLAST;
    assign axi_bcid1_if.WID = apatb_spmm_top.bcid1_WID;
    assign axi_bcid1_if.WUSER = apatb_spmm_top.bcid1_WUSER;
    assign axi_bcid1_if.ARVALID = apatb_spmm_top.bcid1_ARVALID;
    assign apatb_spmm_top.bcid1_ARREADY = axi_bcid1_if.ARREADY;
    assign axi_bcid1_if.ARADDR = apatb_spmm_top.bcid1_ARADDR;
    assign axi_bcid1_if.ARID = apatb_spmm_top.bcid1_ARID;
    assign axi_bcid1_if.ARLEN = apatb_spmm_top.bcid1_ARLEN;
    assign axi_bcid1_if.ARSIZE = apatb_spmm_top.bcid1_ARSIZE;
    assign axi_bcid1_if.ARBURST = apatb_spmm_top.bcid1_ARBURST;
    assign axi_bcid1_if.ARLOCK = apatb_spmm_top.bcid1_ARLOCK;
    assign axi_bcid1_if.ARCACHE = apatb_spmm_top.bcid1_ARCACHE;
    assign axi_bcid1_if.ARPROT = apatb_spmm_top.bcid1_ARPROT;
    assign axi_bcid1_if.ARQOS = apatb_spmm_top.bcid1_ARQOS;
    assign axi_bcid1_if.ARREGION = apatb_spmm_top.bcid1_ARREGION;
    assign axi_bcid1_if.ARUSER = apatb_spmm_top.bcid1_ARUSER;
    assign apatb_spmm_top.bcid1_RVALID = axi_bcid1_if.RVALID;
    assign axi_bcid1_if.RREADY = apatb_spmm_top.bcid1_RREADY;
    assign apatb_spmm_top.bcid1_RDATA = axi_bcid1_if.RDATA;
    assign apatb_spmm_top.bcid1_RLAST = axi_bcid1_if.RLAST;
    assign apatb_spmm_top.bcid1_RID = axi_bcid1_if.RID;
    assign apatb_spmm_top.bcid1_RUSER = axi_bcid1_if.RUSER;
    assign apatb_spmm_top.bcid1_RRESP = axi_bcid1_if.RRESP;
    assign apatb_spmm_top.bcid1_BVALID = axi_bcid1_if.BVALID;
    assign axi_bcid1_if.BREADY = apatb_spmm_top.bcid1_BREADY;
    assign apatb_spmm_top.bcid1_BRESP = axi_bcid1_if.BRESP;
    assign apatb_spmm_top.bcid1_BID = axi_bcid1_if.BID;
    assign apatb_spmm_top.bcid1_BUSER = axi_bcid1_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bcid1.*", "vif", axi_bcid1_if);
    end


    axi_if #(64,16,8,3,1)  axi_bval2_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bval2_if.AWVALID = apatb_spmm_top.bval2_AWVALID;
    assign apatb_spmm_top.bval2_AWREADY = axi_bval2_if.AWREADY;
    assign axi_bval2_if.AWADDR = apatb_spmm_top.bval2_AWADDR;
    assign axi_bval2_if.AWID = apatb_spmm_top.bval2_AWID;
    assign axi_bval2_if.AWLEN = apatb_spmm_top.bval2_AWLEN;
    assign axi_bval2_if.AWSIZE = apatb_spmm_top.bval2_AWSIZE;
    assign axi_bval2_if.AWBURST = apatb_spmm_top.bval2_AWBURST;
    assign axi_bval2_if.AWLOCK = apatb_spmm_top.bval2_AWLOCK;
    assign axi_bval2_if.AWCACHE = apatb_spmm_top.bval2_AWCACHE;
    assign axi_bval2_if.AWPROT = apatb_spmm_top.bval2_AWPROT;
    assign axi_bval2_if.AWQOS = apatb_spmm_top.bval2_AWQOS;
    assign axi_bval2_if.AWREGION = apatb_spmm_top.bval2_AWREGION;
    assign axi_bval2_if.AWUSER = apatb_spmm_top.bval2_AWUSER;
    assign axi_bval2_if.WVALID = apatb_spmm_top.bval2_WVALID;
    assign apatb_spmm_top.bval2_WREADY = axi_bval2_if.WREADY;
    assign axi_bval2_if.WDATA = apatb_spmm_top.bval2_WDATA;
    assign axi_bval2_if.WSTRB = apatb_spmm_top.bval2_WSTRB;
    assign axi_bval2_if.WLAST = apatb_spmm_top.bval2_WLAST;
    assign axi_bval2_if.WID = apatb_spmm_top.bval2_WID;
    assign axi_bval2_if.WUSER = apatb_spmm_top.bval2_WUSER;
    assign axi_bval2_if.ARVALID = apatb_spmm_top.bval2_ARVALID;
    assign apatb_spmm_top.bval2_ARREADY = axi_bval2_if.ARREADY;
    assign axi_bval2_if.ARADDR = apatb_spmm_top.bval2_ARADDR;
    assign axi_bval2_if.ARID = apatb_spmm_top.bval2_ARID;
    assign axi_bval2_if.ARLEN = apatb_spmm_top.bval2_ARLEN;
    assign axi_bval2_if.ARSIZE = apatb_spmm_top.bval2_ARSIZE;
    assign axi_bval2_if.ARBURST = apatb_spmm_top.bval2_ARBURST;
    assign axi_bval2_if.ARLOCK = apatb_spmm_top.bval2_ARLOCK;
    assign axi_bval2_if.ARCACHE = apatb_spmm_top.bval2_ARCACHE;
    assign axi_bval2_if.ARPROT = apatb_spmm_top.bval2_ARPROT;
    assign axi_bval2_if.ARQOS = apatb_spmm_top.bval2_ARQOS;
    assign axi_bval2_if.ARREGION = apatb_spmm_top.bval2_ARREGION;
    assign axi_bval2_if.ARUSER = apatb_spmm_top.bval2_ARUSER;
    assign apatb_spmm_top.bval2_RVALID = axi_bval2_if.RVALID;
    assign axi_bval2_if.RREADY = apatb_spmm_top.bval2_RREADY;
    assign apatb_spmm_top.bval2_RDATA = axi_bval2_if.RDATA;
    assign apatb_spmm_top.bval2_RLAST = axi_bval2_if.RLAST;
    assign apatb_spmm_top.bval2_RID = axi_bval2_if.RID;
    assign apatb_spmm_top.bval2_RUSER = axi_bval2_if.RUSER;
    assign apatb_spmm_top.bval2_RRESP = axi_bval2_if.RRESP;
    assign apatb_spmm_top.bval2_BVALID = axi_bval2_if.BVALID;
    assign axi_bval2_if.BREADY = apatb_spmm_top.bval2_BREADY;
    assign apatb_spmm_top.bval2_BRESP = axi_bval2_if.BRESP;
    assign apatb_spmm_top.bval2_BID = axi_bval2_if.BID;
    assign apatb_spmm_top.bval2_BUSER = axi_bval2_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bval2.*", "vif", axi_bval2_if);
    end


    axi_if #(64,16,8,3,1)  axi_bcid2_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bcid2_if.AWVALID = apatb_spmm_top.bcid2_AWVALID;
    assign apatb_spmm_top.bcid2_AWREADY = axi_bcid2_if.AWREADY;
    assign axi_bcid2_if.AWADDR = apatb_spmm_top.bcid2_AWADDR;
    assign axi_bcid2_if.AWID = apatb_spmm_top.bcid2_AWID;
    assign axi_bcid2_if.AWLEN = apatb_spmm_top.bcid2_AWLEN;
    assign axi_bcid2_if.AWSIZE = apatb_spmm_top.bcid2_AWSIZE;
    assign axi_bcid2_if.AWBURST = apatb_spmm_top.bcid2_AWBURST;
    assign axi_bcid2_if.AWLOCK = apatb_spmm_top.bcid2_AWLOCK;
    assign axi_bcid2_if.AWCACHE = apatb_spmm_top.bcid2_AWCACHE;
    assign axi_bcid2_if.AWPROT = apatb_spmm_top.bcid2_AWPROT;
    assign axi_bcid2_if.AWQOS = apatb_spmm_top.bcid2_AWQOS;
    assign axi_bcid2_if.AWREGION = apatb_spmm_top.bcid2_AWREGION;
    assign axi_bcid2_if.AWUSER = apatb_spmm_top.bcid2_AWUSER;
    assign axi_bcid2_if.WVALID = apatb_spmm_top.bcid2_WVALID;
    assign apatb_spmm_top.bcid2_WREADY = axi_bcid2_if.WREADY;
    assign axi_bcid2_if.WDATA = apatb_spmm_top.bcid2_WDATA;
    assign axi_bcid2_if.WSTRB = apatb_spmm_top.bcid2_WSTRB;
    assign axi_bcid2_if.WLAST = apatb_spmm_top.bcid2_WLAST;
    assign axi_bcid2_if.WID = apatb_spmm_top.bcid2_WID;
    assign axi_bcid2_if.WUSER = apatb_spmm_top.bcid2_WUSER;
    assign axi_bcid2_if.ARVALID = apatb_spmm_top.bcid2_ARVALID;
    assign apatb_spmm_top.bcid2_ARREADY = axi_bcid2_if.ARREADY;
    assign axi_bcid2_if.ARADDR = apatb_spmm_top.bcid2_ARADDR;
    assign axi_bcid2_if.ARID = apatb_spmm_top.bcid2_ARID;
    assign axi_bcid2_if.ARLEN = apatb_spmm_top.bcid2_ARLEN;
    assign axi_bcid2_if.ARSIZE = apatb_spmm_top.bcid2_ARSIZE;
    assign axi_bcid2_if.ARBURST = apatb_spmm_top.bcid2_ARBURST;
    assign axi_bcid2_if.ARLOCK = apatb_spmm_top.bcid2_ARLOCK;
    assign axi_bcid2_if.ARCACHE = apatb_spmm_top.bcid2_ARCACHE;
    assign axi_bcid2_if.ARPROT = apatb_spmm_top.bcid2_ARPROT;
    assign axi_bcid2_if.ARQOS = apatb_spmm_top.bcid2_ARQOS;
    assign axi_bcid2_if.ARREGION = apatb_spmm_top.bcid2_ARREGION;
    assign axi_bcid2_if.ARUSER = apatb_spmm_top.bcid2_ARUSER;
    assign apatb_spmm_top.bcid2_RVALID = axi_bcid2_if.RVALID;
    assign axi_bcid2_if.RREADY = apatb_spmm_top.bcid2_RREADY;
    assign apatb_spmm_top.bcid2_RDATA = axi_bcid2_if.RDATA;
    assign apatb_spmm_top.bcid2_RLAST = axi_bcid2_if.RLAST;
    assign apatb_spmm_top.bcid2_RID = axi_bcid2_if.RID;
    assign apatb_spmm_top.bcid2_RUSER = axi_bcid2_if.RUSER;
    assign apatb_spmm_top.bcid2_RRESP = axi_bcid2_if.RRESP;
    assign apatb_spmm_top.bcid2_BVALID = axi_bcid2_if.BVALID;
    assign axi_bcid2_if.BREADY = apatb_spmm_top.bcid2_BREADY;
    assign apatb_spmm_top.bcid2_BRESP = axi_bcid2_if.BRESP;
    assign apatb_spmm_top.bcid2_BID = axi_bcid2_if.BID;
    assign apatb_spmm_top.bcid2_BUSER = axi_bcid2_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bcid2.*", "vif", axi_bcid2_if);
    end


    axi_if #(64,16,8,3,1)  axi_bval3_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bval3_if.AWVALID = apatb_spmm_top.bval3_AWVALID;
    assign apatb_spmm_top.bval3_AWREADY = axi_bval3_if.AWREADY;
    assign axi_bval3_if.AWADDR = apatb_spmm_top.bval3_AWADDR;
    assign axi_bval3_if.AWID = apatb_spmm_top.bval3_AWID;
    assign axi_bval3_if.AWLEN = apatb_spmm_top.bval3_AWLEN;
    assign axi_bval3_if.AWSIZE = apatb_spmm_top.bval3_AWSIZE;
    assign axi_bval3_if.AWBURST = apatb_spmm_top.bval3_AWBURST;
    assign axi_bval3_if.AWLOCK = apatb_spmm_top.bval3_AWLOCK;
    assign axi_bval3_if.AWCACHE = apatb_spmm_top.bval3_AWCACHE;
    assign axi_bval3_if.AWPROT = apatb_spmm_top.bval3_AWPROT;
    assign axi_bval3_if.AWQOS = apatb_spmm_top.bval3_AWQOS;
    assign axi_bval3_if.AWREGION = apatb_spmm_top.bval3_AWREGION;
    assign axi_bval3_if.AWUSER = apatb_spmm_top.bval3_AWUSER;
    assign axi_bval3_if.WVALID = apatb_spmm_top.bval3_WVALID;
    assign apatb_spmm_top.bval3_WREADY = axi_bval3_if.WREADY;
    assign axi_bval3_if.WDATA = apatb_spmm_top.bval3_WDATA;
    assign axi_bval3_if.WSTRB = apatb_spmm_top.bval3_WSTRB;
    assign axi_bval3_if.WLAST = apatb_spmm_top.bval3_WLAST;
    assign axi_bval3_if.WID = apatb_spmm_top.bval3_WID;
    assign axi_bval3_if.WUSER = apatb_spmm_top.bval3_WUSER;
    assign axi_bval3_if.ARVALID = apatb_spmm_top.bval3_ARVALID;
    assign apatb_spmm_top.bval3_ARREADY = axi_bval3_if.ARREADY;
    assign axi_bval3_if.ARADDR = apatb_spmm_top.bval3_ARADDR;
    assign axi_bval3_if.ARID = apatb_spmm_top.bval3_ARID;
    assign axi_bval3_if.ARLEN = apatb_spmm_top.bval3_ARLEN;
    assign axi_bval3_if.ARSIZE = apatb_spmm_top.bval3_ARSIZE;
    assign axi_bval3_if.ARBURST = apatb_spmm_top.bval3_ARBURST;
    assign axi_bval3_if.ARLOCK = apatb_spmm_top.bval3_ARLOCK;
    assign axi_bval3_if.ARCACHE = apatb_spmm_top.bval3_ARCACHE;
    assign axi_bval3_if.ARPROT = apatb_spmm_top.bval3_ARPROT;
    assign axi_bval3_if.ARQOS = apatb_spmm_top.bval3_ARQOS;
    assign axi_bval3_if.ARREGION = apatb_spmm_top.bval3_ARREGION;
    assign axi_bval3_if.ARUSER = apatb_spmm_top.bval3_ARUSER;
    assign apatb_spmm_top.bval3_RVALID = axi_bval3_if.RVALID;
    assign axi_bval3_if.RREADY = apatb_spmm_top.bval3_RREADY;
    assign apatb_spmm_top.bval3_RDATA = axi_bval3_if.RDATA;
    assign apatb_spmm_top.bval3_RLAST = axi_bval3_if.RLAST;
    assign apatb_spmm_top.bval3_RID = axi_bval3_if.RID;
    assign apatb_spmm_top.bval3_RUSER = axi_bval3_if.RUSER;
    assign apatb_spmm_top.bval3_RRESP = axi_bval3_if.RRESP;
    assign apatb_spmm_top.bval3_BVALID = axi_bval3_if.BVALID;
    assign axi_bval3_if.BREADY = apatb_spmm_top.bval3_BREADY;
    assign apatb_spmm_top.bval3_BRESP = axi_bval3_if.BRESP;
    assign apatb_spmm_top.bval3_BID = axi_bval3_if.BID;
    assign apatb_spmm_top.bval3_BUSER = axi_bval3_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bval3.*", "vif", axi_bval3_if);
    end


    axi_if #(64,16,8,3,1)  axi_bcid3_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bcid3_if.AWVALID = apatb_spmm_top.bcid3_AWVALID;
    assign apatb_spmm_top.bcid3_AWREADY = axi_bcid3_if.AWREADY;
    assign axi_bcid3_if.AWADDR = apatb_spmm_top.bcid3_AWADDR;
    assign axi_bcid3_if.AWID = apatb_spmm_top.bcid3_AWID;
    assign axi_bcid3_if.AWLEN = apatb_spmm_top.bcid3_AWLEN;
    assign axi_bcid3_if.AWSIZE = apatb_spmm_top.bcid3_AWSIZE;
    assign axi_bcid3_if.AWBURST = apatb_spmm_top.bcid3_AWBURST;
    assign axi_bcid3_if.AWLOCK = apatb_spmm_top.bcid3_AWLOCK;
    assign axi_bcid3_if.AWCACHE = apatb_spmm_top.bcid3_AWCACHE;
    assign axi_bcid3_if.AWPROT = apatb_spmm_top.bcid3_AWPROT;
    assign axi_bcid3_if.AWQOS = apatb_spmm_top.bcid3_AWQOS;
    assign axi_bcid3_if.AWREGION = apatb_spmm_top.bcid3_AWREGION;
    assign axi_bcid3_if.AWUSER = apatb_spmm_top.bcid3_AWUSER;
    assign axi_bcid3_if.WVALID = apatb_spmm_top.bcid3_WVALID;
    assign apatb_spmm_top.bcid3_WREADY = axi_bcid3_if.WREADY;
    assign axi_bcid3_if.WDATA = apatb_spmm_top.bcid3_WDATA;
    assign axi_bcid3_if.WSTRB = apatb_spmm_top.bcid3_WSTRB;
    assign axi_bcid3_if.WLAST = apatb_spmm_top.bcid3_WLAST;
    assign axi_bcid3_if.WID = apatb_spmm_top.bcid3_WID;
    assign axi_bcid3_if.WUSER = apatb_spmm_top.bcid3_WUSER;
    assign axi_bcid3_if.ARVALID = apatb_spmm_top.bcid3_ARVALID;
    assign apatb_spmm_top.bcid3_ARREADY = axi_bcid3_if.ARREADY;
    assign axi_bcid3_if.ARADDR = apatb_spmm_top.bcid3_ARADDR;
    assign axi_bcid3_if.ARID = apatb_spmm_top.bcid3_ARID;
    assign axi_bcid3_if.ARLEN = apatb_spmm_top.bcid3_ARLEN;
    assign axi_bcid3_if.ARSIZE = apatb_spmm_top.bcid3_ARSIZE;
    assign axi_bcid3_if.ARBURST = apatb_spmm_top.bcid3_ARBURST;
    assign axi_bcid3_if.ARLOCK = apatb_spmm_top.bcid3_ARLOCK;
    assign axi_bcid3_if.ARCACHE = apatb_spmm_top.bcid3_ARCACHE;
    assign axi_bcid3_if.ARPROT = apatb_spmm_top.bcid3_ARPROT;
    assign axi_bcid3_if.ARQOS = apatb_spmm_top.bcid3_ARQOS;
    assign axi_bcid3_if.ARREGION = apatb_spmm_top.bcid3_ARREGION;
    assign axi_bcid3_if.ARUSER = apatb_spmm_top.bcid3_ARUSER;
    assign apatb_spmm_top.bcid3_RVALID = axi_bcid3_if.RVALID;
    assign axi_bcid3_if.RREADY = apatb_spmm_top.bcid3_RREADY;
    assign apatb_spmm_top.bcid3_RDATA = axi_bcid3_if.RDATA;
    assign apatb_spmm_top.bcid3_RLAST = axi_bcid3_if.RLAST;
    assign apatb_spmm_top.bcid3_RID = axi_bcid3_if.RID;
    assign apatb_spmm_top.bcid3_RUSER = axi_bcid3_if.RUSER;
    assign apatb_spmm_top.bcid3_RRESP = axi_bcid3_if.RRESP;
    assign apatb_spmm_top.bcid3_BVALID = axi_bcid3_if.BVALID;
    assign axi_bcid3_if.BREADY = apatb_spmm_top.bcid3_BREADY;
    assign apatb_spmm_top.bcid3_BRESP = axi_bcid3_if.BRESP;
    assign apatb_spmm_top.bcid3_BID = axi_bcid3_if.BID;
    assign apatb_spmm_top.bcid3_BUSER = axi_bcid3_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bcid3.*", "vif", axi_bcid3_if);
    end


    axi_if #(64,16,8,3,1)  axi_bval4_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bval4_if.AWVALID = apatb_spmm_top.bval4_AWVALID;
    assign apatb_spmm_top.bval4_AWREADY = axi_bval4_if.AWREADY;
    assign axi_bval4_if.AWADDR = apatb_spmm_top.bval4_AWADDR;
    assign axi_bval4_if.AWID = apatb_spmm_top.bval4_AWID;
    assign axi_bval4_if.AWLEN = apatb_spmm_top.bval4_AWLEN;
    assign axi_bval4_if.AWSIZE = apatb_spmm_top.bval4_AWSIZE;
    assign axi_bval4_if.AWBURST = apatb_spmm_top.bval4_AWBURST;
    assign axi_bval4_if.AWLOCK = apatb_spmm_top.bval4_AWLOCK;
    assign axi_bval4_if.AWCACHE = apatb_spmm_top.bval4_AWCACHE;
    assign axi_bval4_if.AWPROT = apatb_spmm_top.bval4_AWPROT;
    assign axi_bval4_if.AWQOS = apatb_spmm_top.bval4_AWQOS;
    assign axi_bval4_if.AWREGION = apatb_spmm_top.bval4_AWREGION;
    assign axi_bval4_if.AWUSER = apatb_spmm_top.bval4_AWUSER;
    assign axi_bval4_if.WVALID = apatb_spmm_top.bval4_WVALID;
    assign apatb_spmm_top.bval4_WREADY = axi_bval4_if.WREADY;
    assign axi_bval4_if.WDATA = apatb_spmm_top.bval4_WDATA;
    assign axi_bval4_if.WSTRB = apatb_spmm_top.bval4_WSTRB;
    assign axi_bval4_if.WLAST = apatb_spmm_top.bval4_WLAST;
    assign axi_bval4_if.WID = apatb_spmm_top.bval4_WID;
    assign axi_bval4_if.WUSER = apatb_spmm_top.bval4_WUSER;
    assign axi_bval4_if.ARVALID = apatb_spmm_top.bval4_ARVALID;
    assign apatb_spmm_top.bval4_ARREADY = axi_bval4_if.ARREADY;
    assign axi_bval4_if.ARADDR = apatb_spmm_top.bval4_ARADDR;
    assign axi_bval4_if.ARID = apatb_spmm_top.bval4_ARID;
    assign axi_bval4_if.ARLEN = apatb_spmm_top.bval4_ARLEN;
    assign axi_bval4_if.ARSIZE = apatb_spmm_top.bval4_ARSIZE;
    assign axi_bval4_if.ARBURST = apatb_spmm_top.bval4_ARBURST;
    assign axi_bval4_if.ARLOCK = apatb_spmm_top.bval4_ARLOCK;
    assign axi_bval4_if.ARCACHE = apatb_spmm_top.bval4_ARCACHE;
    assign axi_bval4_if.ARPROT = apatb_spmm_top.bval4_ARPROT;
    assign axi_bval4_if.ARQOS = apatb_spmm_top.bval4_ARQOS;
    assign axi_bval4_if.ARREGION = apatb_spmm_top.bval4_ARREGION;
    assign axi_bval4_if.ARUSER = apatb_spmm_top.bval4_ARUSER;
    assign apatb_spmm_top.bval4_RVALID = axi_bval4_if.RVALID;
    assign axi_bval4_if.RREADY = apatb_spmm_top.bval4_RREADY;
    assign apatb_spmm_top.bval4_RDATA = axi_bval4_if.RDATA;
    assign apatb_spmm_top.bval4_RLAST = axi_bval4_if.RLAST;
    assign apatb_spmm_top.bval4_RID = axi_bval4_if.RID;
    assign apatb_spmm_top.bval4_RUSER = axi_bval4_if.RUSER;
    assign apatb_spmm_top.bval4_RRESP = axi_bval4_if.RRESP;
    assign apatb_spmm_top.bval4_BVALID = axi_bval4_if.BVALID;
    assign axi_bval4_if.BREADY = apatb_spmm_top.bval4_BREADY;
    assign apatb_spmm_top.bval4_BRESP = axi_bval4_if.BRESP;
    assign apatb_spmm_top.bval4_BID = axi_bval4_if.BID;
    assign apatb_spmm_top.bval4_BUSER = axi_bval4_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bval4.*", "vif", axi_bval4_if);
    end


    axi_if #(64,16,8,3,1)  axi_bcid4_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bcid4_if.AWVALID = apatb_spmm_top.bcid4_AWVALID;
    assign apatb_spmm_top.bcid4_AWREADY = axi_bcid4_if.AWREADY;
    assign axi_bcid4_if.AWADDR = apatb_spmm_top.bcid4_AWADDR;
    assign axi_bcid4_if.AWID = apatb_spmm_top.bcid4_AWID;
    assign axi_bcid4_if.AWLEN = apatb_spmm_top.bcid4_AWLEN;
    assign axi_bcid4_if.AWSIZE = apatb_spmm_top.bcid4_AWSIZE;
    assign axi_bcid4_if.AWBURST = apatb_spmm_top.bcid4_AWBURST;
    assign axi_bcid4_if.AWLOCK = apatb_spmm_top.bcid4_AWLOCK;
    assign axi_bcid4_if.AWCACHE = apatb_spmm_top.bcid4_AWCACHE;
    assign axi_bcid4_if.AWPROT = apatb_spmm_top.bcid4_AWPROT;
    assign axi_bcid4_if.AWQOS = apatb_spmm_top.bcid4_AWQOS;
    assign axi_bcid4_if.AWREGION = apatb_spmm_top.bcid4_AWREGION;
    assign axi_bcid4_if.AWUSER = apatb_spmm_top.bcid4_AWUSER;
    assign axi_bcid4_if.WVALID = apatb_spmm_top.bcid4_WVALID;
    assign apatb_spmm_top.bcid4_WREADY = axi_bcid4_if.WREADY;
    assign axi_bcid4_if.WDATA = apatb_spmm_top.bcid4_WDATA;
    assign axi_bcid4_if.WSTRB = apatb_spmm_top.bcid4_WSTRB;
    assign axi_bcid4_if.WLAST = apatb_spmm_top.bcid4_WLAST;
    assign axi_bcid4_if.WID = apatb_spmm_top.bcid4_WID;
    assign axi_bcid4_if.WUSER = apatb_spmm_top.bcid4_WUSER;
    assign axi_bcid4_if.ARVALID = apatb_spmm_top.bcid4_ARVALID;
    assign apatb_spmm_top.bcid4_ARREADY = axi_bcid4_if.ARREADY;
    assign axi_bcid4_if.ARADDR = apatb_spmm_top.bcid4_ARADDR;
    assign axi_bcid4_if.ARID = apatb_spmm_top.bcid4_ARID;
    assign axi_bcid4_if.ARLEN = apatb_spmm_top.bcid4_ARLEN;
    assign axi_bcid4_if.ARSIZE = apatb_spmm_top.bcid4_ARSIZE;
    assign axi_bcid4_if.ARBURST = apatb_spmm_top.bcid4_ARBURST;
    assign axi_bcid4_if.ARLOCK = apatb_spmm_top.bcid4_ARLOCK;
    assign axi_bcid4_if.ARCACHE = apatb_spmm_top.bcid4_ARCACHE;
    assign axi_bcid4_if.ARPROT = apatb_spmm_top.bcid4_ARPROT;
    assign axi_bcid4_if.ARQOS = apatb_spmm_top.bcid4_ARQOS;
    assign axi_bcid4_if.ARREGION = apatb_spmm_top.bcid4_ARREGION;
    assign axi_bcid4_if.ARUSER = apatb_spmm_top.bcid4_ARUSER;
    assign apatb_spmm_top.bcid4_RVALID = axi_bcid4_if.RVALID;
    assign axi_bcid4_if.RREADY = apatb_spmm_top.bcid4_RREADY;
    assign apatb_spmm_top.bcid4_RDATA = axi_bcid4_if.RDATA;
    assign apatb_spmm_top.bcid4_RLAST = axi_bcid4_if.RLAST;
    assign apatb_spmm_top.bcid4_RID = axi_bcid4_if.RID;
    assign apatb_spmm_top.bcid4_RUSER = axi_bcid4_if.RUSER;
    assign apatb_spmm_top.bcid4_RRESP = axi_bcid4_if.RRESP;
    assign apatb_spmm_top.bcid4_BVALID = axi_bcid4_if.BVALID;
    assign axi_bcid4_if.BREADY = apatb_spmm_top.bcid4_BREADY;
    assign apatb_spmm_top.bcid4_BRESP = axi_bcid4_if.BRESP;
    assign apatb_spmm_top.bcid4_BID = axi_bcid4_if.BID;
    assign apatb_spmm_top.bcid4_BUSER = axi_bcid4_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bcid4.*", "vif", axi_bcid4_if);
    end


    axi_if #(64,16,8,3,1)  axi_bv1_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bv1_if.AWVALID = apatb_spmm_top.bv1_AWVALID;
    assign apatb_spmm_top.bv1_AWREADY = axi_bv1_if.AWREADY;
    assign axi_bv1_if.AWADDR = apatb_spmm_top.bv1_AWADDR;
    assign axi_bv1_if.AWID = apatb_spmm_top.bv1_AWID;
    assign axi_bv1_if.AWLEN = apatb_spmm_top.bv1_AWLEN;
    assign axi_bv1_if.AWSIZE = apatb_spmm_top.bv1_AWSIZE;
    assign axi_bv1_if.AWBURST = apatb_spmm_top.bv1_AWBURST;
    assign axi_bv1_if.AWLOCK = apatb_spmm_top.bv1_AWLOCK;
    assign axi_bv1_if.AWCACHE = apatb_spmm_top.bv1_AWCACHE;
    assign axi_bv1_if.AWPROT = apatb_spmm_top.bv1_AWPROT;
    assign axi_bv1_if.AWQOS = apatb_spmm_top.bv1_AWQOS;
    assign axi_bv1_if.AWREGION = apatb_spmm_top.bv1_AWREGION;
    assign axi_bv1_if.AWUSER = apatb_spmm_top.bv1_AWUSER;
    assign axi_bv1_if.WVALID = apatb_spmm_top.bv1_WVALID;
    assign apatb_spmm_top.bv1_WREADY = axi_bv1_if.WREADY;
    assign axi_bv1_if.WDATA = apatb_spmm_top.bv1_WDATA;
    assign axi_bv1_if.WSTRB = apatb_spmm_top.bv1_WSTRB;
    assign axi_bv1_if.WLAST = apatb_spmm_top.bv1_WLAST;
    assign axi_bv1_if.WID = apatb_spmm_top.bv1_WID;
    assign axi_bv1_if.WUSER = apatb_spmm_top.bv1_WUSER;
    assign axi_bv1_if.ARVALID = apatb_spmm_top.bv1_ARVALID;
    assign apatb_spmm_top.bv1_ARREADY = axi_bv1_if.ARREADY;
    assign axi_bv1_if.ARADDR = apatb_spmm_top.bv1_ARADDR;
    assign axi_bv1_if.ARID = apatb_spmm_top.bv1_ARID;
    assign axi_bv1_if.ARLEN = apatb_spmm_top.bv1_ARLEN;
    assign axi_bv1_if.ARSIZE = apatb_spmm_top.bv1_ARSIZE;
    assign axi_bv1_if.ARBURST = apatb_spmm_top.bv1_ARBURST;
    assign axi_bv1_if.ARLOCK = apatb_spmm_top.bv1_ARLOCK;
    assign axi_bv1_if.ARCACHE = apatb_spmm_top.bv1_ARCACHE;
    assign axi_bv1_if.ARPROT = apatb_spmm_top.bv1_ARPROT;
    assign axi_bv1_if.ARQOS = apatb_spmm_top.bv1_ARQOS;
    assign axi_bv1_if.ARREGION = apatb_spmm_top.bv1_ARREGION;
    assign axi_bv1_if.ARUSER = apatb_spmm_top.bv1_ARUSER;
    assign apatb_spmm_top.bv1_RVALID = axi_bv1_if.RVALID;
    assign axi_bv1_if.RREADY = apatb_spmm_top.bv1_RREADY;
    assign apatb_spmm_top.bv1_RDATA = axi_bv1_if.RDATA;
    assign apatb_spmm_top.bv1_RLAST = axi_bv1_if.RLAST;
    assign apatb_spmm_top.bv1_RID = axi_bv1_if.RID;
    assign apatb_spmm_top.bv1_RUSER = axi_bv1_if.RUSER;
    assign apatb_spmm_top.bv1_RRESP = axi_bv1_if.RRESP;
    assign apatb_spmm_top.bv1_BVALID = axi_bv1_if.BVALID;
    assign axi_bv1_if.BREADY = apatb_spmm_top.bv1_BREADY;
    assign apatb_spmm_top.bv1_BRESP = axi_bv1_if.BRESP;
    assign apatb_spmm_top.bv1_BID = axi_bv1_if.BID;
    assign apatb_spmm_top.bv1_BUSER = axi_bv1_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bv1.*", "vif", axi_bv1_if);
    end


    axi_if #(64,16,8,3,1)  axi_bc1_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bc1_if.AWVALID = apatb_spmm_top.bc1_AWVALID;
    assign apatb_spmm_top.bc1_AWREADY = axi_bc1_if.AWREADY;
    assign axi_bc1_if.AWADDR = apatb_spmm_top.bc1_AWADDR;
    assign axi_bc1_if.AWID = apatb_spmm_top.bc1_AWID;
    assign axi_bc1_if.AWLEN = apatb_spmm_top.bc1_AWLEN;
    assign axi_bc1_if.AWSIZE = apatb_spmm_top.bc1_AWSIZE;
    assign axi_bc1_if.AWBURST = apatb_spmm_top.bc1_AWBURST;
    assign axi_bc1_if.AWLOCK = apatb_spmm_top.bc1_AWLOCK;
    assign axi_bc1_if.AWCACHE = apatb_spmm_top.bc1_AWCACHE;
    assign axi_bc1_if.AWPROT = apatb_spmm_top.bc1_AWPROT;
    assign axi_bc1_if.AWQOS = apatb_spmm_top.bc1_AWQOS;
    assign axi_bc1_if.AWREGION = apatb_spmm_top.bc1_AWREGION;
    assign axi_bc1_if.AWUSER = apatb_spmm_top.bc1_AWUSER;
    assign axi_bc1_if.WVALID = apatb_spmm_top.bc1_WVALID;
    assign apatb_spmm_top.bc1_WREADY = axi_bc1_if.WREADY;
    assign axi_bc1_if.WDATA = apatb_spmm_top.bc1_WDATA;
    assign axi_bc1_if.WSTRB = apatb_spmm_top.bc1_WSTRB;
    assign axi_bc1_if.WLAST = apatb_spmm_top.bc1_WLAST;
    assign axi_bc1_if.WID = apatb_spmm_top.bc1_WID;
    assign axi_bc1_if.WUSER = apatb_spmm_top.bc1_WUSER;
    assign axi_bc1_if.ARVALID = apatb_spmm_top.bc1_ARVALID;
    assign apatb_spmm_top.bc1_ARREADY = axi_bc1_if.ARREADY;
    assign axi_bc1_if.ARADDR = apatb_spmm_top.bc1_ARADDR;
    assign axi_bc1_if.ARID = apatb_spmm_top.bc1_ARID;
    assign axi_bc1_if.ARLEN = apatb_spmm_top.bc1_ARLEN;
    assign axi_bc1_if.ARSIZE = apatb_spmm_top.bc1_ARSIZE;
    assign axi_bc1_if.ARBURST = apatb_spmm_top.bc1_ARBURST;
    assign axi_bc1_if.ARLOCK = apatb_spmm_top.bc1_ARLOCK;
    assign axi_bc1_if.ARCACHE = apatb_spmm_top.bc1_ARCACHE;
    assign axi_bc1_if.ARPROT = apatb_spmm_top.bc1_ARPROT;
    assign axi_bc1_if.ARQOS = apatb_spmm_top.bc1_ARQOS;
    assign axi_bc1_if.ARREGION = apatb_spmm_top.bc1_ARREGION;
    assign axi_bc1_if.ARUSER = apatb_spmm_top.bc1_ARUSER;
    assign apatb_spmm_top.bc1_RVALID = axi_bc1_if.RVALID;
    assign axi_bc1_if.RREADY = apatb_spmm_top.bc1_RREADY;
    assign apatb_spmm_top.bc1_RDATA = axi_bc1_if.RDATA;
    assign apatb_spmm_top.bc1_RLAST = axi_bc1_if.RLAST;
    assign apatb_spmm_top.bc1_RID = axi_bc1_if.RID;
    assign apatb_spmm_top.bc1_RUSER = axi_bc1_if.RUSER;
    assign apatb_spmm_top.bc1_RRESP = axi_bc1_if.RRESP;
    assign apatb_spmm_top.bc1_BVALID = axi_bc1_if.BVALID;
    assign axi_bc1_if.BREADY = apatb_spmm_top.bc1_BREADY;
    assign apatb_spmm_top.bc1_BRESP = axi_bc1_if.BRESP;
    assign apatb_spmm_top.bc1_BID = axi_bc1_if.BID;
    assign apatb_spmm_top.bc1_BUSER = axi_bc1_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bc1.*", "vif", axi_bc1_if);
    end


    axi_if #(64,16,8,3,1)  axi_bv2_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bv2_if.AWVALID = apatb_spmm_top.bv2_AWVALID;
    assign apatb_spmm_top.bv2_AWREADY = axi_bv2_if.AWREADY;
    assign axi_bv2_if.AWADDR = apatb_spmm_top.bv2_AWADDR;
    assign axi_bv2_if.AWID = apatb_spmm_top.bv2_AWID;
    assign axi_bv2_if.AWLEN = apatb_spmm_top.bv2_AWLEN;
    assign axi_bv2_if.AWSIZE = apatb_spmm_top.bv2_AWSIZE;
    assign axi_bv2_if.AWBURST = apatb_spmm_top.bv2_AWBURST;
    assign axi_bv2_if.AWLOCK = apatb_spmm_top.bv2_AWLOCK;
    assign axi_bv2_if.AWCACHE = apatb_spmm_top.bv2_AWCACHE;
    assign axi_bv2_if.AWPROT = apatb_spmm_top.bv2_AWPROT;
    assign axi_bv2_if.AWQOS = apatb_spmm_top.bv2_AWQOS;
    assign axi_bv2_if.AWREGION = apatb_spmm_top.bv2_AWREGION;
    assign axi_bv2_if.AWUSER = apatb_spmm_top.bv2_AWUSER;
    assign axi_bv2_if.WVALID = apatb_spmm_top.bv2_WVALID;
    assign apatb_spmm_top.bv2_WREADY = axi_bv2_if.WREADY;
    assign axi_bv2_if.WDATA = apatb_spmm_top.bv2_WDATA;
    assign axi_bv2_if.WSTRB = apatb_spmm_top.bv2_WSTRB;
    assign axi_bv2_if.WLAST = apatb_spmm_top.bv2_WLAST;
    assign axi_bv2_if.WID = apatb_spmm_top.bv2_WID;
    assign axi_bv2_if.WUSER = apatb_spmm_top.bv2_WUSER;
    assign axi_bv2_if.ARVALID = apatb_spmm_top.bv2_ARVALID;
    assign apatb_spmm_top.bv2_ARREADY = axi_bv2_if.ARREADY;
    assign axi_bv2_if.ARADDR = apatb_spmm_top.bv2_ARADDR;
    assign axi_bv2_if.ARID = apatb_spmm_top.bv2_ARID;
    assign axi_bv2_if.ARLEN = apatb_spmm_top.bv2_ARLEN;
    assign axi_bv2_if.ARSIZE = apatb_spmm_top.bv2_ARSIZE;
    assign axi_bv2_if.ARBURST = apatb_spmm_top.bv2_ARBURST;
    assign axi_bv2_if.ARLOCK = apatb_spmm_top.bv2_ARLOCK;
    assign axi_bv2_if.ARCACHE = apatb_spmm_top.bv2_ARCACHE;
    assign axi_bv2_if.ARPROT = apatb_spmm_top.bv2_ARPROT;
    assign axi_bv2_if.ARQOS = apatb_spmm_top.bv2_ARQOS;
    assign axi_bv2_if.ARREGION = apatb_spmm_top.bv2_ARREGION;
    assign axi_bv2_if.ARUSER = apatb_spmm_top.bv2_ARUSER;
    assign apatb_spmm_top.bv2_RVALID = axi_bv2_if.RVALID;
    assign axi_bv2_if.RREADY = apatb_spmm_top.bv2_RREADY;
    assign apatb_spmm_top.bv2_RDATA = axi_bv2_if.RDATA;
    assign apatb_spmm_top.bv2_RLAST = axi_bv2_if.RLAST;
    assign apatb_spmm_top.bv2_RID = axi_bv2_if.RID;
    assign apatb_spmm_top.bv2_RUSER = axi_bv2_if.RUSER;
    assign apatb_spmm_top.bv2_RRESP = axi_bv2_if.RRESP;
    assign apatb_spmm_top.bv2_BVALID = axi_bv2_if.BVALID;
    assign axi_bv2_if.BREADY = apatb_spmm_top.bv2_BREADY;
    assign apatb_spmm_top.bv2_BRESP = axi_bv2_if.BRESP;
    assign apatb_spmm_top.bv2_BID = axi_bv2_if.BID;
    assign apatb_spmm_top.bv2_BUSER = axi_bv2_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bv2.*", "vif", axi_bv2_if);
    end


    axi_if #(64,16,8,3,1)  axi_bc2_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bc2_if.AWVALID = apatb_spmm_top.bc2_AWVALID;
    assign apatb_spmm_top.bc2_AWREADY = axi_bc2_if.AWREADY;
    assign axi_bc2_if.AWADDR = apatb_spmm_top.bc2_AWADDR;
    assign axi_bc2_if.AWID = apatb_spmm_top.bc2_AWID;
    assign axi_bc2_if.AWLEN = apatb_spmm_top.bc2_AWLEN;
    assign axi_bc2_if.AWSIZE = apatb_spmm_top.bc2_AWSIZE;
    assign axi_bc2_if.AWBURST = apatb_spmm_top.bc2_AWBURST;
    assign axi_bc2_if.AWLOCK = apatb_spmm_top.bc2_AWLOCK;
    assign axi_bc2_if.AWCACHE = apatb_spmm_top.bc2_AWCACHE;
    assign axi_bc2_if.AWPROT = apatb_spmm_top.bc2_AWPROT;
    assign axi_bc2_if.AWQOS = apatb_spmm_top.bc2_AWQOS;
    assign axi_bc2_if.AWREGION = apatb_spmm_top.bc2_AWREGION;
    assign axi_bc2_if.AWUSER = apatb_spmm_top.bc2_AWUSER;
    assign axi_bc2_if.WVALID = apatb_spmm_top.bc2_WVALID;
    assign apatb_spmm_top.bc2_WREADY = axi_bc2_if.WREADY;
    assign axi_bc2_if.WDATA = apatb_spmm_top.bc2_WDATA;
    assign axi_bc2_if.WSTRB = apatb_spmm_top.bc2_WSTRB;
    assign axi_bc2_if.WLAST = apatb_spmm_top.bc2_WLAST;
    assign axi_bc2_if.WID = apatb_spmm_top.bc2_WID;
    assign axi_bc2_if.WUSER = apatb_spmm_top.bc2_WUSER;
    assign axi_bc2_if.ARVALID = apatb_spmm_top.bc2_ARVALID;
    assign apatb_spmm_top.bc2_ARREADY = axi_bc2_if.ARREADY;
    assign axi_bc2_if.ARADDR = apatb_spmm_top.bc2_ARADDR;
    assign axi_bc2_if.ARID = apatb_spmm_top.bc2_ARID;
    assign axi_bc2_if.ARLEN = apatb_spmm_top.bc2_ARLEN;
    assign axi_bc2_if.ARSIZE = apatb_spmm_top.bc2_ARSIZE;
    assign axi_bc2_if.ARBURST = apatb_spmm_top.bc2_ARBURST;
    assign axi_bc2_if.ARLOCK = apatb_spmm_top.bc2_ARLOCK;
    assign axi_bc2_if.ARCACHE = apatb_spmm_top.bc2_ARCACHE;
    assign axi_bc2_if.ARPROT = apatb_spmm_top.bc2_ARPROT;
    assign axi_bc2_if.ARQOS = apatb_spmm_top.bc2_ARQOS;
    assign axi_bc2_if.ARREGION = apatb_spmm_top.bc2_ARREGION;
    assign axi_bc2_if.ARUSER = apatb_spmm_top.bc2_ARUSER;
    assign apatb_spmm_top.bc2_RVALID = axi_bc2_if.RVALID;
    assign axi_bc2_if.RREADY = apatb_spmm_top.bc2_RREADY;
    assign apatb_spmm_top.bc2_RDATA = axi_bc2_if.RDATA;
    assign apatb_spmm_top.bc2_RLAST = axi_bc2_if.RLAST;
    assign apatb_spmm_top.bc2_RID = axi_bc2_if.RID;
    assign apatb_spmm_top.bc2_RUSER = axi_bc2_if.RUSER;
    assign apatb_spmm_top.bc2_RRESP = axi_bc2_if.RRESP;
    assign apatb_spmm_top.bc2_BVALID = axi_bc2_if.BVALID;
    assign axi_bc2_if.BREADY = apatb_spmm_top.bc2_BREADY;
    assign apatb_spmm_top.bc2_BRESP = axi_bc2_if.BRESP;
    assign apatb_spmm_top.bc2_BID = axi_bc2_if.BID;
    assign apatb_spmm_top.bc2_BUSER = axi_bc2_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bc2.*", "vif", axi_bc2_if);
    end


    axi_if #(64,16,8,3,1)  axi_bv3_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bv3_if.AWVALID = apatb_spmm_top.bv3_AWVALID;
    assign apatb_spmm_top.bv3_AWREADY = axi_bv3_if.AWREADY;
    assign axi_bv3_if.AWADDR = apatb_spmm_top.bv3_AWADDR;
    assign axi_bv3_if.AWID = apatb_spmm_top.bv3_AWID;
    assign axi_bv3_if.AWLEN = apatb_spmm_top.bv3_AWLEN;
    assign axi_bv3_if.AWSIZE = apatb_spmm_top.bv3_AWSIZE;
    assign axi_bv3_if.AWBURST = apatb_spmm_top.bv3_AWBURST;
    assign axi_bv3_if.AWLOCK = apatb_spmm_top.bv3_AWLOCK;
    assign axi_bv3_if.AWCACHE = apatb_spmm_top.bv3_AWCACHE;
    assign axi_bv3_if.AWPROT = apatb_spmm_top.bv3_AWPROT;
    assign axi_bv3_if.AWQOS = apatb_spmm_top.bv3_AWQOS;
    assign axi_bv3_if.AWREGION = apatb_spmm_top.bv3_AWREGION;
    assign axi_bv3_if.AWUSER = apatb_spmm_top.bv3_AWUSER;
    assign axi_bv3_if.WVALID = apatb_spmm_top.bv3_WVALID;
    assign apatb_spmm_top.bv3_WREADY = axi_bv3_if.WREADY;
    assign axi_bv3_if.WDATA = apatb_spmm_top.bv3_WDATA;
    assign axi_bv3_if.WSTRB = apatb_spmm_top.bv3_WSTRB;
    assign axi_bv3_if.WLAST = apatb_spmm_top.bv3_WLAST;
    assign axi_bv3_if.WID = apatb_spmm_top.bv3_WID;
    assign axi_bv3_if.WUSER = apatb_spmm_top.bv3_WUSER;
    assign axi_bv3_if.ARVALID = apatb_spmm_top.bv3_ARVALID;
    assign apatb_spmm_top.bv3_ARREADY = axi_bv3_if.ARREADY;
    assign axi_bv3_if.ARADDR = apatb_spmm_top.bv3_ARADDR;
    assign axi_bv3_if.ARID = apatb_spmm_top.bv3_ARID;
    assign axi_bv3_if.ARLEN = apatb_spmm_top.bv3_ARLEN;
    assign axi_bv3_if.ARSIZE = apatb_spmm_top.bv3_ARSIZE;
    assign axi_bv3_if.ARBURST = apatb_spmm_top.bv3_ARBURST;
    assign axi_bv3_if.ARLOCK = apatb_spmm_top.bv3_ARLOCK;
    assign axi_bv3_if.ARCACHE = apatb_spmm_top.bv3_ARCACHE;
    assign axi_bv3_if.ARPROT = apatb_spmm_top.bv3_ARPROT;
    assign axi_bv3_if.ARQOS = apatb_spmm_top.bv3_ARQOS;
    assign axi_bv3_if.ARREGION = apatb_spmm_top.bv3_ARREGION;
    assign axi_bv3_if.ARUSER = apatb_spmm_top.bv3_ARUSER;
    assign apatb_spmm_top.bv3_RVALID = axi_bv3_if.RVALID;
    assign axi_bv3_if.RREADY = apatb_spmm_top.bv3_RREADY;
    assign apatb_spmm_top.bv3_RDATA = axi_bv3_if.RDATA;
    assign apatb_spmm_top.bv3_RLAST = axi_bv3_if.RLAST;
    assign apatb_spmm_top.bv3_RID = axi_bv3_if.RID;
    assign apatb_spmm_top.bv3_RUSER = axi_bv3_if.RUSER;
    assign apatb_spmm_top.bv3_RRESP = axi_bv3_if.RRESP;
    assign apatb_spmm_top.bv3_BVALID = axi_bv3_if.BVALID;
    assign axi_bv3_if.BREADY = apatb_spmm_top.bv3_BREADY;
    assign apatb_spmm_top.bv3_BRESP = axi_bv3_if.BRESP;
    assign apatb_spmm_top.bv3_BID = axi_bv3_if.BID;
    assign apatb_spmm_top.bv3_BUSER = axi_bv3_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bv3.*", "vif", axi_bv3_if);
    end


    axi_if #(64,16,8,3,1)  axi_bc3_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bc3_if.AWVALID = apatb_spmm_top.bc3_AWVALID;
    assign apatb_spmm_top.bc3_AWREADY = axi_bc3_if.AWREADY;
    assign axi_bc3_if.AWADDR = apatb_spmm_top.bc3_AWADDR;
    assign axi_bc3_if.AWID = apatb_spmm_top.bc3_AWID;
    assign axi_bc3_if.AWLEN = apatb_spmm_top.bc3_AWLEN;
    assign axi_bc3_if.AWSIZE = apatb_spmm_top.bc3_AWSIZE;
    assign axi_bc3_if.AWBURST = apatb_spmm_top.bc3_AWBURST;
    assign axi_bc3_if.AWLOCK = apatb_spmm_top.bc3_AWLOCK;
    assign axi_bc3_if.AWCACHE = apatb_spmm_top.bc3_AWCACHE;
    assign axi_bc3_if.AWPROT = apatb_spmm_top.bc3_AWPROT;
    assign axi_bc3_if.AWQOS = apatb_spmm_top.bc3_AWQOS;
    assign axi_bc3_if.AWREGION = apatb_spmm_top.bc3_AWREGION;
    assign axi_bc3_if.AWUSER = apatb_spmm_top.bc3_AWUSER;
    assign axi_bc3_if.WVALID = apatb_spmm_top.bc3_WVALID;
    assign apatb_spmm_top.bc3_WREADY = axi_bc3_if.WREADY;
    assign axi_bc3_if.WDATA = apatb_spmm_top.bc3_WDATA;
    assign axi_bc3_if.WSTRB = apatb_spmm_top.bc3_WSTRB;
    assign axi_bc3_if.WLAST = apatb_spmm_top.bc3_WLAST;
    assign axi_bc3_if.WID = apatb_spmm_top.bc3_WID;
    assign axi_bc3_if.WUSER = apatb_spmm_top.bc3_WUSER;
    assign axi_bc3_if.ARVALID = apatb_spmm_top.bc3_ARVALID;
    assign apatb_spmm_top.bc3_ARREADY = axi_bc3_if.ARREADY;
    assign axi_bc3_if.ARADDR = apatb_spmm_top.bc3_ARADDR;
    assign axi_bc3_if.ARID = apatb_spmm_top.bc3_ARID;
    assign axi_bc3_if.ARLEN = apatb_spmm_top.bc3_ARLEN;
    assign axi_bc3_if.ARSIZE = apatb_spmm_top.bc3_ARSIZE;
    assign axi_bc3_if.ARBURST = apatb_spmm_top.bc3_ARBURST;
    assign axi_bc3_if.ARLOCK = apatb_spmm_top.bc3_ARLOCK;
    assign axi_bc3_if.ARCACHE = apatb_spmm_top.bc3_ARCACHE;
    assign axi_bc3_if.ARPROT = apatb_spmm_top.bc3_ARPROT;
    assign axi_bc3_if.ARQOS = apatb_spmm_top.bc3_ARQOS;
    assign axi_bc3_if.ARREGION = apatb_spmm_top.bc3_ARREGION;
    assign axi_bc3_if.ARUSER = apatb_spmm_top.bc3_ARUSER;
    assign apatb_spmm_top.bc3_RVALID = axi_bc3_if.RVALID;
    assign axi_bc3_if.RREADY = apatb_spmm_top.bc3_RREADY;
    assign apatb_spmm_top.bc3_RDATA = axi_bc3_if.RDATA;
    assign apatb_spmm_top.bc3_RLAST = axi_bc3_if.RLAST;
    assign apatb_spmm_top.bc3_RID = axi_bc3_if.RID;
    assign apatb_spmm_top.bc3_RUSER = axi_bc3_if.RUSER;
    assign apatb_spmm_top.bc3_RRESP = axi_bc3_if.RRESP;
    assign apatb_spmm_top.bc3_BVALID = axi_bc3_if.BVALID;
    assign axi_bc3_if.BREADY = apatb_spmm_top.bc3_BREADY;
    assign apatb_spmm_top.bc3_BRESP = axi_bc3_if.BRESP;
    assign apatb_spmm_top.bc3_BID = axi_bc3_if.BID;
    assign apatb_spmm_top.bc3_BUSER = axi_bc3_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bc3.*", "vif", axi_bc3_if);
    end


    axi_if #(64,16,8,3,1)  axi_bv4_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bv4_if.AWVALID = apatb_spmm_top.bv4_AWVALID;
    assign apatb_spmm_top.bv4_AWREADY = axi_bv4_if.AWREADY;
    assign axi_bv4_if.AWADDR = apatb_spmm_top.bv4_AWADDR;
    assign axi_bv4_if.AWID = apatb_spmm_top.bv4_AWID;
    assign axi_bv4_if.AWLEN = apatb_spmm_top.bv4_AWLEN;
    assign axi_bv4_if.AWSIZE = apatb_spmm_top.bv4_AWSIZE;
    assign axi_bv4_if.AWBURST = apatb_spmm_top.bv4_AWBURST;
    assign axi_bv4_if.AWLOCK = apatb_spmm_top.bv4_AWLOCK;
    assign axi_bv4_if.AWCACHE = apatb_spmm_top.bv4_AWCACHE;
    assign axi_bv4_if.AWPROT = apatb_spmm_top.bv4_AWPROT;
    assign axi_bv4_if.AWQOS = apatb_spmm_top.bv4_AWQOS;
    assign axi_bv4_if.AWREGION = apatb_spmm_top.bv4_AWREGION;
    assign axi_bv4_if.AWUSER = apatb_spmm_top.bv4_AWUSER;
    assign axi_bv4_if.WVALID = apatb_spmm_top.bv4_WVALID;
    assign apatb_spmm_top.bv4_WREADY = axi_bv4_if.WREADY;
    assign axi_bv4_if.WDATA = apatb_spmm_top.bv4_WDATA;
    assign axi_bv4_if.WSTRB = apatb_spmm_top.bv4_WSTRB;
    assign axi_bv4_if.WLAST = apatb_spmm_top.bv4_WLAST;
    assign axi_bv4_if.WID = apatb_spmm_top.bv4_WID;
    assign axi_bv4_if.WUSER = apatb_spmm_top.bv4_WUSER;
    assign axi_bv4_if.ARVALID = apatb_spmm_top.bv4_ARVALID;
    assign apatb_spmm_top.bv4_ARREADY = axi_bv4_if.ARREADY;
    assign axi_bv4_if.ARADDR = apatb_spmm_top.bv4_ARADDR;
    assign axi_bv4_if.ARID = apatb_spmm_top.bv4_ARID;
    assign axi_bv4_if.ARLEN = apatb_spmm_top.bv4_ARLEN;
    assign axi_bv4_if.ARSIZE = apatb_spmm_top.bv4_ARSIZE;
    assign axi_bv4_if.ARBURST = apatb_spmm_top.bv4_ARBURST;
    assign axi_bv4_if.ARLOCK = apatb_spmm_top.bv4_ARLOCK;
    assign axi_bv4_if.ARCACHE = apatb_spmm_top.bv4_ARCACHE;
    assign axi_bv4_if.ARPROT = apatb_spmm_top.bv4_ARPROT;
    assign axi_bv4_if.ARQOS = apatb_spmm_top.bv4_ARQOS;
    assign axi_bv4_if.ARREGION = apatb_spmm_top.bv4_ARREGION;
    assign axi_bv4_if.ARUSER = apatb_spmm_top.bv4_ARUSER;
    assign apatb_spmm_top.bv4_RVALID = axi_bv4_if.RVALID;
    assign axi_bv4_if.RREADY = apatb_spmm_top.bv4_RREADY;
    assign apatb_spmm_top.bv4_RDATA = axi_bv4_if.RDATA;
    assign apatb_spmm_top.bv4_RLAST = axi_bv4_if.RLAST;
    assign apatb_spmm_top.bv4_RID = axi_bv4_if.RID;
    assign apatb_spmm_top.bv4_RUSER = axi_bv4_if.RUSER;
    assign apatb_spmm_top.bv4_RRESP = axi_bv4_if.RRESP;
    assign apatb_spmm_top.bv4_BVALID = axi_bv4_if.BVALID;
    assign axi_bv4_if.BREADY = apatb_spmm_top.bv4_BREADY;
    assign apatb_spmm_top.bv4_BRESP = axi_bv4_if.BRESP;
    assign apatb_spmm_top.bv4_BID = axi_bv4_if.BID;
    assign apatb_spmm_top.bv4_BUSER = axi_bv4_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bv4.*", "vif", axi_bv4_if);
    end


    axi_if #(64,16,8,3,1)  axi_bc4_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_bc4_if.AWVALID = apatb_spmm_top.bc4_AWVALID;
    assign apatb_spmm_top.bc4_AWREADY = axi_bc4_if.AWREADY;
    assign axi_bc4_if.AWADDR = apatb_spmm_top.bc4_AWADDR;
    assign axi_bc4_if.AWID = apatb_spmm_top.bc4_AWID;
    assign axi_bc4_if.AWLEN = apatb_spmm_top.bc4_AWLEN;
    assign axi_bc4_if.AWSIZE = apatb_spmm_top.bc4_AWSIZE;
    assign axi_bc4_if.AWBURST = apatb_spmm_top.bc4_AWBURST;
    assign axi_bc4_if.AWLOCK = apatb_spmm_top.bc4_AWLOCK;
    assign axi_bc4_if.AWCACHE = apatb_spmm_top.bc4_AWCACHE;
    assign axi_bc4_if.AWPROT = apatb_spmm_top.bc4_AWPROT;
    assign axi_bc4_if.AWQOS = apatb_spmm_top.bc4_AWQOS;
    assign axi_bc4_if.AWREGION = apatb_spmm_top.bc4_AWREGION;
    assign axi_bc4_if.AWUSER = apatb_spmm_top.bc4_AWUSER;
    assign axi_bc4_if.WVALID = apatb_spmm_top.bc4_WVALID;
    assign apatb_spmm_top.bc4_WREADY = axi_bc4_if.WREADY;
    assign axi_bc4_if.WDATA = apatb_spmm_top.bc4_WDATA;
    assign axi_bc4_if.WSTRB = apatb_spmm_top.bc4_WSTRB;
    assign axi_bc4_if.WLAST = apatb_spmm_top.bc4_WLAST;
    assign axi_bc4_if.WID = apatb_spmm_top.bc4_WID;
    assign axi_bc4_if.WUSER = apatb_spmm_top.bc4_WUSER;
    assign axi_bc4_if.ARVALID = apatb_spmm_top.bc4_ARVALID;
    assign apatb_spmm_top.bc4_ARREADY = axi_bc4_if.ARREADY;
    assign axi_bc4_if.ARADDR = apatb_spmm_top.bc4_ARADDR;
    assign axi_bc4_if.ARID = apatb_spmm_top.bc4_ARID;
    assign axi_bc4_if.ARLEN = apatb_spmm_top.bc4_ARLEN;
    assign axi_bc4_if.ARSIZE = apatb_spmm_top.bc4_ARSIZE;
    assign axi_bc4_if.ARBURST = apatb_spmm_top.bc4_ARBURST;
    assign axi_bc4_if.ARLOCK = apatb_spmm_top.bc4_ARLOCK;
    assign axi_bc4_if.ARCACHE = apatb_spmm_top.bc4_ARCACHE;
    assign axi_bc4_if.ARPROT = apatb_spmm_top.bc4_ARPROT;
    assign axi_bc4_if.ARQOS = apatb_spmm_top.bc4_ARQOS;
    assign axi_bc4_if.ARREGION = apatb_spmm_top.bc4_ARREGION;
    assign axi_bc4_if.ARUSER = apatb_spmm_top.bc4_ARUSER;
    assign apatb_spmm_top.bc4_RVALID = axi_bc4_if.RVALID;
    assign axi_bc4_if.RREADY = apatb_spmm_top.bc4_RREADY;
    assign apatb_spmm_top.bc4_RDATA = axi_bc4_if.RDATA;
    assign apatb_spmm_top.bc4_RLAST = axi_bc4_if.RLAST;
    assign apatb_spmm_top.bc4_RID = axi_bc4_if.RID;
    assign apatb_spmm_top.bc4_RUSER = axi_bc4_if.RUSER;
    assign apatb_spmm_top.bc4_RRESP = axi_bc4_if.RRESP;
    assign apatb_spmm_top.bc4_BVALID = axi_bc4_if.BVALID;
    assign axi_bc4_if.BREADY = apatb_spmm_top.bc4_BREADY;
    assign apatb_spmm_top.bc4_BRESP = axi_bc4_if.BRESP;
    assign apatb_spmm_top.bc4_BID = axi_bc4_if.BID;
    assign apatb_spmm_top.bc4_BUSER = axi_bc4_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,16,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_bc4.*", "vif", axi_bc4_if);
    end


    axi_if #(64,4,8,3,1)  axi_crcsr_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_crcsr_if.AWVALID = apatb_spmm_top.crcsr_AWVALID;
    assign apatb_spmm_top.crcsr_AWREADY = axi_crcsr_if.AWREADY;
    assign axi_crcsr_if.AWADDR = apatb_spmm_top.crcsr_AWADDR;
    assign axi_crcsr_if.AWID = apatb_spmm_top.crcsr_AWID;
    assign axi_crcsr_if.AWLEN = apatb_spmm_top.crcsr_AWLEN;
    assign axi_crcsr_if.AWSIZE = apatb_spmm_top.crcsr_AWSIZE;
    assign axi_crcsr_if.AWBURST = apatb_spmm_top.crcsr_AWBURST;
    assign axi_crcsr_if.AWLOCK = apatb_spmm_top.crcsr_AWLOCK;
    assign axi_crcsr_if.AWCACHE = apatb_spmm_top.crcsr_AWCACHE;
    assign axi_crcsr_if.AWPROT = apatb_spmm_top.crcsr_AWPROT;
    assign axi_crcsr_if.AWQOS = apatb_spmm_top.crcsr_AWQOS;
    assign axi_crcsr_if.AWREGION = apatb_spmm_top.crcsr_AWREGION;
    assign axi_crcsr_if.AWUSER = apatb_spmm_top.crcsr_AWUSER;
    assign axi_crcsr_if.WVALID = apatb_spmm_top.crcsr_WVALID;
    assign apatb_spmm_top.crcsr_WREADY = axi_crcsr_if.WREADY;
    assign axi_crcsr_if.WDATA = apatb_spmm_top.crcsr_WDATA;
    assign axi_crcsr_if.WSTRB = apatb_spmm_top.crcsr_WSTRB;
    assign axi_crcsr_if.WLAST = apatb_spmm_top.crcsr_WLAST;
    assign axi_crcsr_if.WID = apatb_spmm_top.crcsr_WID;
    assign axi_crcsr_if.WUSER = apatb_spmm_top.crcsr_WUSER;
    assign axi_crcsr_if.ARVALID = apatb_spmm_top.crcsr_ARVALID;
    assign apatb_spmm_top.crcsr_ARREADY = axi_crcsr_if.ARREADY;
    assign axi_crcsr_if.ARADDR = apatb_spmm_top.crcsr_ARADDR;
    assign axi_crcsr_if.ARID = apatb_spmm_top.crcsr_ARID;
    assign axi_crcsr_if.ARLEN = apatb_spmm_top.crcsr_ARLEN;
    assign axi_crcsr_if.ARSIZE = apatb_spmm_top.crcsr_ARSIZE;
    assign axi_crcsr_if.ARBURST = apatb_spmm_top.crcsr_ARBURST;
    assign axi_crcsr_if.ARLOCK = apatb_spmm_top.crcsr_ARLOCK;
    assign axi_crcsr_if.ARCACHE = apatb_spmm_top.crcsr_ARCACHE;
    assign axi_crcsr_if.ARPROT = apatb_spmm_top.crcsr_ARPROT;
    assign axi_crcsr_if.ARQOS = apatb_spmm_top.crcsr_ARQOS;
    assign axi_crcsr_if.ARREGION = apatb_spmm_top.crcsr_ARREGION;
    assign axi_crcsr_if.ARUSER = apatb_spmm_top.crcsr_ARUSER;
    assign apatb_spmm_top.crcsr_RVALID = axi_crcsr_if.RVALID;
    assign axi_crcsr_if.RREADY = apatb_spmm_top.crcsr_RREADY;
    assign apatb_spmm_top.crcsr_RDATA = axi_crcsr_if.RDATA;
    assign apatb_spmm_top.crcsr_RLAST = axi_crcsr_if.RLAST;
    assign apatb_spmm_top.crcsr_RID = axi_crcsr_if.RID;
    assign apatb_spmm_top.crcsr_RUSER = axi_crcsr_if.RUSER;
    assign apatb_spmm_top.crcsr_RRESP = axi_crcsr_if.RRESP;
    assign apatb_spmm_top.crcsr_BVALID = axi_crcsr_if.BVALID;
    assign axi_crcsr_if.BREADY = apatb_spmm_top.crcsr_BREADY;
    assign apatb_spmm_top.crcsr_BRESP = axi_crcsr_if.BRESP;
    assign apatb_spmm_top.crcsr_BID = axi_crcsr_if.BID;
    assign apatb_spmm_top.crcsr_BUSER = axi_crcsr_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_crcsr.*", "vif", axi_crcsr_if);
    end


    axi_if #(64,4,8,3,1)  axi_ccid_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_ccid_if.AWVALID = apatb_spmm_top.ccid_AWVALID;
    assign apatb_spmm_top.ccid_AWREADY = axi_ccid_if.AWREADY;
    assign axi_ccid_if.AWADDR = apatb_spmm_top.ccid_AWADDR;
    assign axi_ccid_if.AWID = apatb_spmm_top.ccid_AWID;
    assign axi_ccid_if.AWLEN = apatb_spmm_top.ccid_AWLEN;
    assign axi_ccid_if.AWSIZE = apatb_spmm_top.ccid_AWSIZE;
    assign axi_ccid_if.AWBURST = apatb_spmm_top.ccid_AWBURST;
    assign axi_ccid_if.AWLOCK = apatb_spmm_top.ccid_AWLOCK;
    assign axi_ccid_if.AWCACHE = apatb_spmm_top.ccid_AWCACHE;
    assign axi_ccid_if.AWPROT = apatb_spmm_top.ccid_AWPROT;
    assign axi_ccid_if.AWQOS = apatb_spmm_top.ccid_AWQOS;
    assign axi_ccid_if.AWREGION = apatb_spmm_top.ccid_AWREGION;
    assign axi_ccid_if.AWUSER = apatb_spmm_top.ccid_AWUSER;
    assign axi_ccid_if.WVALID = apatb_spmm_top.ccid_WVALID;
    assign apatb_spmm_top.ccid_WREADY = axi_ccid_if.WREADY;
    assign axi_ccid_if.WDATA = apatb_spmm_top.ccid_WDATA;
    assign axi_ccid_if.WSTRB = apatb_spmm_top.ccid_WSTRB;
    assign axi_ccid_if.WLAST = apatb_spmm_top.ccid_WLAST;
    assign axi_ccid_if.WID = apatb_spmm_top.ccid_WID;
    assign axi_ccid_if.WUSER = apatb_spmm_top.ccid_WUSER;
    assign axi_ccid_if.ARVALID = apatb_spmm_top.ccid_ARVALID;
    assign apatb_spmm_top.ccid_ARREADY = axi_ccid_if.ARREADY;
    assign axi_ccid_if.ARADDR = apatb_spmm_top.ccid_ARADDR;
    assign axi_ccid_if.ARID = apatb_spmm_top.ccid_ARID;
    assign axi_ccid_if.ARLEN = apatb_spmm_top.ccid_ARLEN;
    assign axi_ccid_if.ARSIZE = apatb_spmm_top.ccid_ARSIZE;
    assign axi_ccid_if.ARBURST = apatb_spmm_top.ccid_ARBURST;
    assign axi_ccid_if.ARLOCK = apatb_spmm_top.ccid_ARLOCK;
    assign axi_ccid_if.ARCACHE = apatb_spmm_top.ccid_ARCACHE;
    assign axi_ccid_if.ARPROT = apatb_spmm_top.ccid_ARPROT;
    assign axi_ccid_if.ARQOS = apatb_spmm_top.ccid_ARQOS;
    assign axi_ccid_if.ARREGION = apatb_spmm_top.ccid_ARREGION;
    assign axi_ccid_if.ARUSER = apatb_spmm_top.ccid_ARUSER;
    assign apatb_spmm_top.ccid_RVALID = axi_ccid_if.RVALID;
    assign axi_ccid_if.RREADY = apatb_spmm_top.ccid_RREADY;
    assign apatb_spmm_top.ccid_RDATA = axi_ccid_if.RDATA;
    assign apatb_spmm_top.ccid_RLAST = axi_ccid_if.RLAST;
    assign apatb_spmm_top.ccid_RID = axi_ccid_if.RID;
    assign apatb_spmm_top.ccid_RUSER = axi_ccid_if.RUSER;
    assign apatb_spmm_top.ccid_RRESP = axi_ccid_if.RRESP;
    assign apatb_spmm_top.ccid_BVALID = axi_ccid_if.BVALID;
    assign axi_ccid_if.BREADY = apatb_spmm_top.ccid_BREADY;
    assign apatb_spmm_top.ccid_BRESP = axi_ccid_if.BRESP;
    assign apatb_spmm_top.ccid_BID = axi_ccid_if.BID;
    assign apatb_spmm_top.ccid_BUSER = axi_ccid_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_ccid.*", "vif", axi_ccid_if);
    end


    axi_if #(64,4,8,3,1)  axi_cval_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign axi_cval_if.AWVALID = apatb_spmm_top.cval_AWVALID;
    assign apatb_spmm_top.cval_AWREADY = axi_cval_if.AWREADY;
    assign axi_cval_if.AWADDR = apatb_spmm_top.cval_AWADDR;
    assign axi_cval_if.AWID = apatb_spmm_top.cval_AWID;
    assign axi_cval_if.AWLEN = apatb_spmm_top.cval_AWLEN;
    assign axi_cval_if.AWSIZE = apatb_spmm_top.cval_AWSIZE;
    assign axi_cval_if.AWBURST = apatb_spmm_top.cval_AWBURST;
    assign axi_cval_if.AWLOCK = apatb_spmm_top.cval_AWLOCK;
    assign axi_cval_if.AWCACHE = apatb_spmm_top.cval_AWCACHE;
    assign axi_cval_if.AWPROT = apatb_spmm_top.cval_AWPROT;
    assign axi_cval_if.AWQOS = apatb_spmm_top.cval_AWQOS;
    assign axi_cval_if.AWREGION = apatb_spmm_top.cval_AWREGION;
    assign axi_cval_if.AWUSER = apatb_spmm_top.cval_AWUSER;
    assign axi_cval_if.WVALID = apatb_spmm_top.cval_WVALID;
    assign apatb_spmm_top.cval_WREADY = axi_cval_if.WREADY;
    assign axi_cval_if.WDATA = apatb_spmm_top.cval_WDATA;
    assign axi_cval_if.WSTRB = apatb_spmm_top.cval_WSTRB;
    assign axi_cval_if.WLAST = apatb_spmm_top.cval_WLAST;
    assign axi_cval_if.WID = apatb_spmm_top.cval_WID;
    assign axi_cval_if.WUSER = apatb_spmm_top.cval_WUSER;
    assign axi_cval_if.ARVALID = apatb_spmm_top.cval_ARVALID;
    assign apatb_spmm_top.cval_ARREADY = axi_cval_if.ARREADY;
    assign axi_cval_if.ARADDR = apatb_spmm_top.cval_ARADDR;
    assign axi_cval_if.ARID = apatb_spmm_top.cval_ARID;
    assign axi_cval_if.ARLEN = apatb_spmm_top.cval_ARLEN;
    assign axi_cval_if.ARSIZE = apatb_spmm_top.cval_ARSIZE;
    assign axi_cval_if.ARBURST = apatb_spmm_top.cval_ARBURST;
    assign axi_cval_if.ARLOCK = apatb_spmm_top.cval_ARLOCK;
    assign axi_cval_if.ARCACHE = apatb_spmm_top.cval_ARCACHE;
    assign axi_cval_if.ARPROT = apatb_spmm_top.cval_ARPROT;
    assign axi_cval_if.ARQOS = apatb_spmm_top.cval_ARQOS;
    assign axi_cval_if.ARREGION = apatb_spmm_top.cval_ARREGION;
    assign axi_cval_if.ARUSER = apatb_spmm_top.cval_ARUSER;
    assign apatb_spmm_top.cval_RVALID = axi_cval_if.RVALID;
    assign axi_cval_if.RREADY = apatb_spmm_top.cval_RREADY;
    assign apatb_spmm_top.cval_RDATA = axi_cval_if.RDATA;
    assign apatb_spmm_top.cval_RLAST = axi_cval_if.RLAST;
    assign apatb_spmm_top.cval_RID = axi_cval_if.RID;
    assign apatb_spmm_top.cval_RUSER = axi_cval_if.RUSER;
    assign apatb_spmm_top.cval_RRESP = axi_cval_if.RRESP;
    assign apatb_spmm_top.cval_BVALID = axi_cval_if.BVALID;
    assign axi_cval_if.BREADY = apatb_spmm_top.cval_BREADY;
    assign apatb_spmm_top.cval_BRESP = axi_cval_if.BRESP;
    assign apatb_spmm_top.cval_BID = axi_cval_if.BID;
    assign apatb_spmm_top.cval_BUSER = axi_cval_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_cval.*", "vif", axi_cval_if);
    end


    axi_if #(9,4,4,3,1)  axi_control_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign apatb_spmm_top.control_AWADDR = axi_control_if.AWADDR;
    assign apatb_spmm_top.control_AWVALID = axi_control_if.AWVALID;
    assign axi_control_if.AWREADY = apatb_spmm_top.control_AWREADY;
    assign apatb_spmm_top.control_WVALID = axi_control_if.WVALID;
    assign axi_control_if.WREADY = apatb_spmm_top.control_WREADY;
    assign apatb_spmm_top.control_WDATA = axi_control_if.WDATA;
    assign apatb_spmm_top.control_WSTRB = axi_control_if.WSTRB;
    assign apatb_spmm_top.control_ARADDR = axi_control_if.ARADDR;
    assign apatb_spmm_top.control_ARVALID = axi_control_if.ARVALID;
    assign axi_control_if.ARREADY = apatb_spmm_top.control_ARREADY;
    assign axi_control_if.RVALID = apatb_spmm_top.control_RVALID;
    assign apatb_spmm_top.control_RREADY = axi_control_if.RREADY;
    assign axi_control_if.RDATA = apatb_spmm_top.control_RDATA;
    assign axi_control_if.RRESP = apatb_spmm_top.control_RRESP;
    assign axi_control_if.BVALID = apatb_spmm_top.control_BVALID;
    assign apatb_spmm_top.control_BREADY = axi_control_if.BREADY;
    assign axi_control_if.BRESP = apatb_spmm_top.control_BRESP;
    assign axi_control_if.BID = 0;
    assign axi_control_if.RID = 0;
    assign axi_control_if.RLAST = 1;
    initial begin
        uvm_config_db #( virtual axi_if#(9,4,4,3,1) )::set(null, "uvm_test_top.top_env.axi_lite_control.*", "vif", axi_control_if);
    end


    axi_if #(10,4,4,3,1)  axi_ctr_if (.clk  (apatb_spmm_top.AESL_clock), .rst(apatb_spmm_top.AESL_reset));
    assign apatb_spmm_top.ctr_AWADDR = axi_ctr_if.AWADDR;
    assign apatb_spmm_top.ctr_AWVALID = axi_ctr_if.AWVALID;
    assign axi_ctr_if.AWREADY = apatb_spmm_top.ctr_AWREADY;
    assign apatb_spmm_top.ctr_WVALID = axi_ctr_if.WVALID;
    assign axi_ctr_if.WREADY = apatb_spmm_top.ctr_WREADY;
    assign apatb_spmm_top.ctr_WDATA = axi_ctr_if.WDATA;
    assign apatb_spmm_top.ctr_WSTRB = axi_ctr_if.WSTRB;
    assign apatb_spmm_top.ctr_ARADDR = axi_ctr_if.ARADDR;
    assign apatb_spmm_top.ctr_ARVALID = axi_ctr_if.ARVALID;
    assign axi_ctr_if.ARREADY = apatb_spmm_top.ctr_ARREADY;
    assign axi_ctr_if.RVALID = apatb_spmm_top.ctr_RVALID;
    assign apatb_spmm_top.ctr_RREADY = axi_ctr_if.RREADY;
    assign axi_ctr_if.RDATA = apatb_spmm_top.ctr_RDATA;
    assign axi_ctr_if.RRESP = apatb_spmm_top.ctr_RRESP;
    assign axi_ctr_if.BVALID = apatb_spmm_top.ctr_BVALID;
    assign apatb_spmm_top.ctr_BREADY = axi_ctr_if.BREADY;
    assign axi_ctr_if.BRESP = apatb_spmm_top.ctr_BRESP;
    assign axi_ctr_if.BID = 0;
    assign axi_ctr_if.RID = 0;
    assign axi_ctr_if.RLAST = 1;
    initial begin
        uvm_config_db #( virtual axi_if#(10,4,4,3,1) )::set(null, "uvm_test_top.top_env.axi_lite_ctr.*", "vif", axi_ctr_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
