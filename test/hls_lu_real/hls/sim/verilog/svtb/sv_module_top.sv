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
import sparse_lu_shared_subsystem_pkg::*;
`include "sparse_lu_shared_subsys_test_sequence_lib.sv"
`include "sparse_lu_shared_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_sparse_lu_shared_top.AESL_clock), .reset(apatb_sparse_lu_shared_top.AESL_reset) );
    assign misc_if.dut2tb_ap_ready = apatb_sparse_lu_shared_top.AESL_inst_sparse_lu_shared.ap_ready;
    assign misc_if.dut2tb_ap_done_kernel = apatb_sparse_lu_shared_top.AESL_inst_sparse_lu_shared.ap_done;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    axi_if #(64,4,8,3,1)  axi_a_row_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_a_row_if.AWVALID = apatb_sparse_lu_shared_top.a_row_AWVALID;
    assign apatb_sparse_lu_shared_top.a_row_AWREADY = axi_a_row_if.AWREADY;
    assign axi_a_row_if.AWADDR = apatb_sparse_lu_shared_top.a_row_AWADDR;
    assign axi_a_row_if.AWID = apatb_sparse_lu_shared_top.a_row_AWID;
    assign axi_a_row_if.AWLEN = apatb_sparse_lu_shared_top.a_row_AWLEN;
    assign axi_a_row_if.AWSIZE = apatb_sparse_lu_shared_top.a_row_AWSIZE;
    assign axi_a_row_if.AWBURST = apatb_sparse_lu_shared_top.a_row_AWBURST;
    assign axi_a_row_if.AWLOCK = apatb_sparse_lu_shared_top.a_row_AWLOCK;
    assign axi_a_row_if.AWCACHE = apatb_sparse_lu_shared_top.a_row_AWCACHE;
    assign axi_a_row_if.AWPROT = apatb_sparse_lu_shared_top.a_row_AWPROT;
    assign axi_a_row_if.AWQOS = apatb_sparse_lu_shared_top.a_row_AWQOS;
    assign axi_a_row_if.AWREGION = apatb_sparse_lu_shared_top.a_row_AWREGION;
    assign axi_a_row_if.AWUSER = apatb_sparse_lu_shared_top.a_row_AWUSER;
    assign axi_a_row_if.WVALID = apatb_sparse_lu_shared_top.a_row_WVALID;
    assign apatb_sparse_lu_shared_top.a_row_WREADY = axi_a_row_if.WREADY;
    assign axi_a_row_if.WDATA = apatb_sparse_lu_shared_top.a_row_WDATA;
    assign axi_a_row_if.WSTRB = apatb_sparse_lu_shared_top.a_row_WSTRB;
    assign axi_a_row_if.WLAST = apatb_sparse_lu_shared_top.a_row_WLAST;
    assign axi_a_row_if.WID = apatb_sparse_lu_shared_top.a_row_WID;
    assign axi_a_row_if.WUSER = apatb_sparse_lu_shared_top.a_row_WUSER;
    assign axi_a_row_if.ARVALID = apatb_sparse_lu_shared_top.a_row_ARVALID;
    assign apatb_sparse_lu_shared_top.a_row_ARREADY = axi_a_row_if.ARREADY;
    assign axi_a_row_if.ARADDR = apatb_sparse_lu_shared_top.a_row_ARADDR;
    assign axi_a_row_if.ARID = apatb_sparse_lu_shared_top.a_row_ARID;
    assign axi_a_row_if.ARLEN = apatb_sparse_lu_shared_top.a_row_ARLEN;
    assign axi_a_row_if.ARSIZE = apatb_sparse_lu_shared_top.a_row_ARSIZE;
    assign axi_a_row_if.ARBURST = apatb_sparse_lu_shared_top.a_row_ARBURST;
    assign axi_a_row_if.ARLOCK = apatb_sparse_lu_shared_top.a_row_ARLOCK;
    assign axi_a_row_if.ARCACHE = apatb_sparse_lu_shared_top.a_row_ARCACHE;
    assign axi_a_row_if.ARPROT = apatb_sparse_lu_shared_top.a_row_ARPROT;
    assign axi_a_row_if.ARQOS = apatb_sparse_lu_shared_top.a_row_ARQOS;
    assign axi_a_row_if.ARREGION = apatb_sparse_lu_shared_top.a_row_ARREGION;
    assign axi_a_row_if.ARUSER = apatb_sparse_lu_shared_top.a_row_ARUSER;
    assign apatb_sparse_lu_shared_top.a_row_RVALID = axi_a_row_if.RVALID;
    assign axi_a_row_if.RREADY = apatb_sparse_lu_shared_top.a_row_RREADY;
    assign apatb_sparse_lu_shared_top.a_row_RDATA = axi_a_row_if.RDATA;
    assign apatb_sparse_lu_shared_top.a_row_RLAST = axi_a_row_if.RLAST;
    assign apatb_sparse_lu_shared_top.a_row_RID = axi_a_row_if.RID;
    assign apatb_sparse_lu_shared_top.a_row_RUSER = axi_a_row_if.RUSER;
    assign apatb_sparse_lu_shared_top.a_row_RRESP = axi_a_row_if.RRESP;
    assign apatb_sparse_lu_shared_top.a_row_BVALID = axi_a_row_if.BVALID;
    assign axi_a_row_if.BREADY = apatb_sparse_lu_shared_top.a_row_BREADY;
    assign apatb_sparse_lu_shared_top.a_row_BRESP = axi_a_row_if.BRESP;
    assign apatb_sparse_lu_shared_top.a_row_BID = axi_a_row_if.BID;
    assign apatb_sparse_lu_shared_top.a_row_BUSER = axi_a_row_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_a_row.*", "vif", axi_a_row_if);
    end


    axi_if #(64,4,8,3,1)  axi_a_col_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_a_col_if.AWVALID = apatb_sparse_lu_shared_top.a_col_AWVALID;
    assign apatb_sparse_lu_shared_top.a_col_AWREADY = axi_a_col_if.AWREADY;
    assign axi_a_col_if.AWADDR = apatb_sparse_lu_shared_top.a_col_AWADDR;
    assign axi_a_col_if.AWID = apatb_sparse_lu_shared_top.a_col_AWID;
    assign axi_a_col_if.AWLEN = apatb_sparse_lu_shared_top.a_col_AWLEN;
    assign axi_a_col_if.AWSIZE = apatb_sparse_lu_shared_top.a_col_AWSIZE;
    assign axi_a_col_if.AWBURST = apatb_sparse_lu_shared_top.a_col_AWBURST;
    assign axi_a_col_if.AWLOCK = apatb_sparse_lu_shared_top.a_col_AWLOCK;
    assign axi_a_col_if.AWCACHE = apatb_sparse_lu_shared_top.a_col_AWCACHE;
    assign axi_a_col_if.AWPROT = apatb_sparse_lu_shared_top.a_col_AWPROT;
    assign axi_a_col_if.AWQOS = apatb_sparse_lu_shared_top.a_col_AWQOS;
    assign axi_a_col_if.AWREGION = apatb_sparse_lu_shared_top.a_col_AWREGION;
    assign axi_a_col_if.AWUSER = apatb_sparse_lu_shared_top.a_col_AWUSER;
    assign axi_a_col_if.WVALID = apatb_sparse_lu_shared_top.a_col_WVALID;
    assign apatb_sparse_lu_shared_top.a_col_WREADY = axi_a_col_if.WREADY;
    assign axi_a_col_if.WDATA = apatb_sparse_lu_shared_top.a_col_WDATA;
    assign axi_a_col_if.WSTRB = apatb_sparse_lu_shared_top.a_col_WSTRB;
    assign axi_a_col_if.WLAST = apatb_sparse_lu_shared_top.a_col_WLAST;
    assign axi_a_col_if.WID = apatb_sparse_lu_shared_top.a_col_WID;
    assign axi_a_col_if.WUSER = apatb_sparse_lu_shared_top.a_col_WUSER;
    assign axi_a_col_if.ARVALID = apatb_sparse_lu_shared_top.a_col_ARVALID;
    assign apatb_sparse_lu_shared_top.a_col_ARREADY = axi_a_col_if.ARREADY;
    assign axi_a_col_if.ARADDR = apatb_sparse_lu_shared_top.a_col_ARADDR;
    assign axi_a_col_if.ARID = apatb_sparse_lu_shared_top.a_col_ARID;
    assign axi_a_col_if.ARLEN = apatb_sparse_lu_shared_top.a_col_ARLEN;
    assign axi_a_col_if.ARSIZE = apatb_sparse_lu_shared_top.a_col_ARSIZE;
    assign axi_a_col_if.ARBURST = apatb_sparse_lu_shared_top.a_col_ARBURST;
    assign axi_a_col_if.ARLOCK = apatb_sparse_lu_shared_top.a_col_ARLOCK;
    assign axi_a_col_if.ARCACHE = apatb_sparse_lu_shared_top.a_col_ARCACHE;
    assign axi_a_col_if.ARPROT = apatb_sparse_lu_shared_top.a_col_ARPROT;
    assign axi_a_col_if.ARQOS = apatb_sparse_lu_shared_top.a_col_ARQOS;
    assign axi_a_col_if.ARREGION = apatb_sparse_lu_shared_top.a_col_ARREGION;
    assign axi_a_col_if.ARUSER = apatb_sparse_lu_shared_top.a_col_ARUSER;
    assign apatb_sparse_lu_shared_top.a_col_RVALID = axi_a_col_if.RVALID;
    assign axi_a_col_if.RREADY = apatb_sparse_lu_shared_top.a_col_RREADY;
    assign apatb_sparse_lu_shared_top.a_col_RDATA = axi_a_col_if.RDATA;
    assign apatb_sparse_lu_shared_top.a_col_RLAST = axi_a_col_if.RLAST;
    assign apatb_sparse_lu_shared_top.a_col_RID = axi_a_col_if.RID;
    assign apatb_sparse_lu_shared_top.a_col_RUSER = axi_a_col_if.RUSER;
    assign apatb_sparse_lu_shared_top.a_col_RRESP = axi_a_col_if.RRESP;
    assign apatb_sparse_lu_shared_top.a_col_BVALID = axi_a_col_if.BVALID;
    assign axi_a_col_if.BREADY = apatb_sparse_lu_shared_top.a_col_BREADY;
    assign apatb_sparse_lu_shared_top.a_col_BRESP = axi_a_col_if.BRESP;
    assign apatb_sparse_lu_shared_top.a_col_BID = axi_a_col_if.BID;
    assign apatb_sparse_lu_shared_top.a_col_BUSER = axi_a_col_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_a_col.*", "vif", axi_a_col_if);
    end


    axi_if #(64,4,8,3,1)  axi_a_val_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_a_val_if.AWVALID = apatb_sparse_lu_shared_top.a_val_AWVALID;
    assign apatb_sparse_lu_shared_top.a_val_AWREADY = axi_a_val_if.AWREADY;
    assign axi_a_val_if.AWADDR = apatb_sparse_lu_shared_top.a_val_AWADDR;
    assign axi_a_val_if.AWID = apatb_sparse_lu_shared_top.a_val_AWID;
    assign axi_a_val_if.AWLEN = apatb_sparse_lu_shared_top.a_val_AWLEN;
    assign axi_a_val_if.AWSIZE = apatb_sparse_lu_shared_top.a_val_AWSIZE;
    assign axi_a_val_if.AWBURST = apatb_sparse_lu_shared_top.a_val_AWBURST;
    assign axi_a_val_if.AWLOCK = apatb_sparse_lu_shared_top.a_val_AWLOCK;
    assign axi_a_val_if.AWCACHE = apatb_sparse_lu_shared_top.a_val_AWCACHE;
    assign axi_a_val_if.AWPROT = apatb_sparse_lu_shared_top.a_val_AWPROT;
    assign axi_a_val_if.AWQOS = apatb_sparse_lu_shared_top.a_val_AWQOS;
    assign axi_a_val_if.AWREGION = apatb_sparse_lu_shared_top.a_val_AWREGION;
    assign axi_a_val_if.AWUSER = apatb_sparse_lu_shared_top.a_val_AWUSER;
    assign axi_a_val_if.WVALID = apatb_sparse_lu_shared_top.a_val_WVALID;
    assign apatb_sparse_lu_shared_top.a_val_WREADY = axi_a_val_if.WREADY;
    assign axi_a_val_if.WDATA = apatb_sparse_lu_shared_top.a_val_WDATA;
    assign axi_a_val_if.WSTRB = apatb_sparse_lu_shared_top.a_val_WSTRB;
    assign axi_a_val_if.WLAST = apatb_sparse_lu_shared_top.a_val_WLAST;
    assign axi_a_val_if.WID = apatb_sparse_lu_shared_top.a_val_WID;
    assign axi_a_val_if.WUSER = apatb_sparse_lu_shared_top.a_val_WUSER;
    assign axi_a_val_if.ARVALID = apatb_sparse_lu_shared_top.a_val_ARVALID;
    assign apatb_sparse_lu_shared_top.a_val_ARREADY = axi_a_val_if.ARREADY;
    assign axi_a_val_if.ARADDR = apatb_sparse_lu_shared_top.a_val_ARADDR;
    assign axi_a_val_if.ARID = apatb_sparse_lu_shared_top.a_val_ARID;
    assign axi_a_val_if.ARLEN = apatb_sparse_lu_shared_top.a_val_ARLEN;
    assign axi_a_val_if.ARSIZE = apatb_sparse_lu_shared_top.a_val_ARSIZE;
    assign axi_a_val_if.ARBURST = apatb_sparse_lu_shared_top.a_val_ARBURST;
    assign axi_a_val_if.ARLOCK = apatb_sparse_lu_shared_top.a_val_ARLOCK;
    assign axi_a_val_if.ARCACHE = apatb_sparse_lu_shared_top.a_val_ARCACHE;
    assign axi_a_val_if.ARPROT = apatb_sparse_lu_shared_top.a_val_ARPROT;
    assign axi_a_val_if.ARQOS = apatb_sparse_lu_shared_top.a_val_ARQOS;
    assign axi_a_val_if.ARREGION = apatb_sparse_lu_shared_top.a_val_ARREGION;
    assign axi_a_val_if.ARUSER = apatb_sparse_lu_shared_top.a_val_ARUSER;
    assign apatb_sparse_lu_shared_top.a_val_RVALID = axi_a_val_if.RVALID;
    assign axi_a_val_if.RREADY = apatb_sparse_lu_shared_top.a_val_RREADY;
    assign apatb_sparse_lu_shared_top.a_val_RDATA = axi_a_val_if.RDATA;
    assign apatb_sparse_lu_shared_top.a_val_RLAST = axi_a_val_if.RLAST;
    assign apatb_sparse_lu_shared_top.a_val_RID = axi_a_val_if.RID;
    assign apatb_sparse_lu_shared_top.a_val_RUSER = axi_a_val_if.RUSER;
    assign apatb_sparse_lu_shared_top.a_val_RRESP = axi_a_val_if.RRESP;
    assign apatb_sparse_lu_shared_top.a_val_BVALID = axi_a_val_if.BVALID;
    assign axi_a_val_if.BREADY = apatb_sparse_lu_shared_top.a_val_BREADY;
    assign apatb_sparse_lu_shared_top.a_val_BRESP = axi_a_val_if.BRESP;
    assign apatb_sparse_lu_shared_top.a_val_BID = axi_a_val_if.BID;
    assign apatb_sparse_lu_shared_top.a_val_BUSER = axi_a_val_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_a_val.*", "vif", axi_a_val_if);
    end


    axi_if #(64,4,8,3,1)  axi_l_row_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_l_row_if.AWVALID = apatb_sparse_lu_shared_top.l_row_AWVALID;
    assign apatb_sparse_lu_shared_top.l_row_AWREADY = axi_l_row_if.AWREADY;
    assign axi_l_row_if.AWADDR = apatb_sparse_lu_shared_top.l_row_AWADDR;
    assign axi_l_row_if.AWID = apatb_sparse_lu_shared_top.l_row_AWID;
    assign axi_l_row_if.AWLEN = apatb_sparse_lu_shared_top.l_row_AWLEN;
    assign axi_l_row_if.AWSIZE = apatb_sparse_lu_shared_top.l_row_AWSIZE;
    assign axi_l_row_if.AWBURST = apatb_sparse_lu_shared_top.l_row_AWBURST;
    assign axi_l_row_if.AWLOCK = apatb_sparse_lu_shared_top.l_row_AWLOCK;
    assign axi_l_row_if.AWCACHE = apatb_sparse_lu_shared_top.l_row_AWCACHE;
    assign axi_l_row_if.AWPROT = apatb_sparse_lu_shared_top.l_row_AWPROT;
    assign axi_l_row_if.AWQOS = apatb_sparse_lu_shared_top.l_row_AWQOS;
    assign axi_l_row_if.AWREGION = apatb_sparse_lu_shared_top.l_row_AWREGION;
    assign axi_l_row_if.AWUSER = apatb_sparse_lu_shared_top.l_row_AWUSER;
    assign axi_l_row_if.WVALID = apatb_sparse_lu_shared_top.l_row_WVALID;
    assign apatb_sparse_lu_shared_top.l_row_WREADY = axi_l_row_if.WREADY;
    assign axi_l_row_if.WDATA = apatb_sparse_lu_shared_top.l_row_WDATA;
    assign axi_l_row_if.WSTRB = apatb_sparse_lu_shared_top.l_row_WSTRB;
    assign axi_l_row_if.WLAST = apatb_sparse_lu_shared_top.l_row_WLAST;
    assign axi_l_row_if.WID = apatb_sparse_lu_shared_top.l_row_WID;
    assign axi_l_row_if.WUSER = apatb_sparse_lu_shared_top.l_row_WUSER;
    assign axi_l_row_if.ARVALID = apatb_sparse_lu_shared_top.l_row_ARVALID;
    assign apatb_sparse_lu_shared_top.l_row_ARREADY = axi_l_row_if.ARREADY;
    assign axi_l_row_if.ARADDR = apatb_sparse_lu_shared_top.l_row_ARADDR;
    assign axi_l_row_if.ARID = apatb_sparse_lu_shared_top.l_row_ARID;
    assign axi_l_row_if.ARLEN = apatb_sparse_lu_shared_top.l_row_ARLEN;
    assign axi_l_row_if.ARSIZE = apatb_sparse_lu_shared_top.l_row_ARSIZE;
    assign axi_l_row_if.ARBURST = apatb_sparse_lu_shared_top.l_row_ARBURST;
    assign axi_l_row_if.ARLOCK = apatb_sparse_lu_shared_top.l_row_ARLOCK;
    assign axi_l_row_if.ARCACHE = apatb_sparse_lu_shared_top.l_row_ARCACHE;
    assign axi_l_row_if.ARPROT = apatb_sparse_lu_shared_top.l_row_ARPROT;
    assign axi_l_row_if.ARQOS = apatb_sparse_lu_shared_top.l_row_ARQOS;
    assign axi_l_row_if.ARREGION = apatb_sparse_lu_shared_top.l_row_ARREGION;
    assign axi_l_row_if.ARUSER = apatb_sparse_lu_shared_top.l_row_ARUSER;
    assign apatb_sparse_lu_shared_top.l_row_RVALID = axi_l_row_if.RVALID;
    assign axi_l_row_if.RREADY = apatb_sparse_lu_shared_top.l_row_RREADY;
    assign apatb_sparse_lu_shared_top.l_row_RDATA = axi_l_row_if.RDATA;
    assign apatb_sparse_lu_shared_top.l_row_RLAST = axi_l_row_if.RLAST;
    assign apatb_sparse_lu_shared_top.l_row_RID = axi_l_row_if.RID;
    assign apatb_sparse_lu_shared_top.l_row_RUSER = axi_l_row_if.RUSER;
    assign apatb_sparse_lu_shared_top.l_row_RRESP = axi_l_row_if.RRESP;
    assign apatb_sparse_lu_shared_top.l_row_BVALID = axi_l_row_if.BVALID;
    assign axi_l_row_if.BREADY = apatb_sparse_lu_shared_top.l_row_BREADY;
    assign apatb_sparse_lu_shared_top.l_row_BRESP = axi_l_row_if.BRESP;
    assign apatb_sparse_lu_shared_top.l_row_BID = axi_l_row_if.BID;
    assign apatb_sparse_lu_shared_top.l_row_BUSER = axi_l_row_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_l_row.*", "vif", axi_l_row_if);
    end


    axi_if #(64,4,8,3,1)  axi_l_col_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_l_col_if.AWVALID = apatb_sparse_lu_shared_top.l_col_AWVALID;
    assign apatb_sparse_lu_shared_top.l_col_AWREADY = axi_l_col_if.AWREADY;
    assign axi_l_col_if.AWADDR = apatb_sparse_lu_shared_top.l_col_AWADDR;
    assign axi_l_col_if.AWID = apatb_sparse_lu_shared_top.l_col_AWID;
    assign axi_l_col_if.AWLEN = apatb_sparse_lu_shared_top.l_col_AWLEN;
    assign axi_l_col_if.AWSIZE = apatb_sparse_lu_shared_top.l_col_AWSIZE;
    assign axi_l_col_if.AWBURST = apatb_sparse_lu_shared_top.l_col_AWBURST;
    assign axi_l_col_if.AWLOCK = apatb_sparse_lu_shared_top.l_col_AWLOCK;
    assign axi_l_col_if.AWCACHE = apatb_sparse_lu_shared_top.l_col_AWCACHE;
    assign axi_l_col_if.AWPROT = apatb_sparse_lu_shared_top.l_col_AWPROT;
    assign axi_l_col_if.AWQOS = apatb_sparse_lu_shared_top.l_col_AWQOS;
    assign axi_l_col_if.AWREGION = apatb_sparse_lu_shared_top.l_col_AWREGION;
    assign axi_l_col_if.AWUSER = apatb_sparse_lu_shared_top.l_col_AWUSER;
    assign axi_l_col_if.WVALID = apatb_sparse_lu_shared_top.l_col_WVALID;
    assign apatb_sparse_lu_shared_top.l_col_WREADY = axi_l_col_if.WREADY;
    assign axi_l_col_if.WDATA = apatb_sparse_lu_shared_top.l_col_WDATA;
    assign axi_l_col_if.WSTRB = apatb_sparse_lu_shared_top.l_col_WSTRB;
    assign axi_l_col_if.WLAST = apatb_sparse_lu_shared_top.l_col_WLAST;
    assign axi_l_col_if.WID = apatb_sparse_lu_shared_top.l_col_WID;
    assign axi_l_col_if.WUSER = apatb_sparse_lu_shared_top.l_col_WUSER;
    assign axi_l_col_if.ARVALID = apatb_sparse_lu_shared_top.l_col_ARVALID;
    assign apatb_sparse_lu_shared_top.l_col_ARREADY = axi_l_col_if.ARREADY;
    assign axi_l_col_if.ARADDR = apatb_sparse_lu_shared_top.l_col_ARADDR;
    assign axi_l_col_if.ARID = apatb_sparse_lu_shared_top.l_col_ARID;
    assign axi_l_col_if.ARLEN = apatb_sparse_lu_shared_top.l_col_ARLEN;
    assign axi_l_col_if.ARSIZE = apatb_sparse_lu_shared_top.l_col_ARSIZE;
    assign axi_l_col_if.ARBURST = apatb_sparse_lu_shared_top.l_col_ARBURST;
    assign axi_l_col_if.ARLOCK = apatb_sparse_lu_shared_top.l_col_ARLOCK;
    assign axi_l_col_if.ARCACHE = apatb_sparse_lu_shared_top.l_col_ARCACHE;
    assign axi_l_col_if.ARPROT = apatb_sparse_lu_shared_top.l_col_ARPROT;
    assign axi_l_col_if.ARQOS = apatb_sparse_lu_shared_top.l_col_ARQOS;
    assign axi_l_col_if.ARREGION = apatb_sparse_lu_shared_top.l_col_ARREGION;
    assign axi_l_col_if.ARUSER = apatb_sparse_lu_shared_top.l_col_ARUSER;
    assign apatb_sparse_lu_shared_top.l_col_RVALID = axi_l_col_if.RVALID;
    assign axi_l_col_if.RREADY = apatb_sparse_lu_shared_top.l_col_RREADY;
    assign apatb_sparse_lu_shared_top.l_col_RDATA = axi_l_col_if.RDATA;
    assign apatb_sparse_lu_shared_top.l_col_RLAST = axi_l_col_if.RLAST;
    assign apatb_sparse_lu_shared_top.l_col_RID = axi_l_col_if.RID;
    assign apatb_sparse_lu_shared_top.l_col_RUSER = axi_l_col_if.RUSER;
    assign apatb_sparse_lu_shared_top.l_col_RRESP = axi_l_col_if.RRESP;
    assign apatb_sparse_lu_shared_top.l_col_BVALID = axi_l_col_if.BVALID;
    assign axi_l_col_if.BREADY = apatb_sparse_lu_shared_top.l_col_BREADY;
    assign apatb_sparse_lu_shared_top.l_col_BRESP = axi_l_col_if.BRESP;
    assign apatb_sparse_lu_shared_top.l_col_BID = axi_l_col_if.BID;
    assign apatb_sparse_lu_shared_top.l_col_BUSER = axi_l_col_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_l_col.*", "vif", axi_l_col_if);
    end


    axi_if #(64,4,8,3,1)  axi_l_val_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_l_val_if.AWVALID = apatb_sparse_lu_shared_top.l_val_AWVALID;
    assign apatb_sparse_lu_shared_top.l_val_AWREADY = axi_l_val_if.AWREADY;
    assign axi_l_val_if.AWADDR = apatb_sparse_lu_shared_top.l_val_AWADDR;
    assign axi_l_val_if.AWID = apatb_sparse_lu_shared_top.l_val_AWID;
    assign axi_l_val_if.AWLEN = apatb_sparse_lu_shared_top.l_val_AWLEN;
    assign axi_l_val_if.AWSIZE = apatb_sparse_lu_shared_top.l_val_AWSIZE;
    assign axi_l_val_if.AWBURST = apatb_sparse_lu_shared_top.l_val_AWBURST;
    assign axi_l_val_if.AWLOCK = apatb_sparse_lu_shared_top.l_val_AWLOCK;
    assign axi_l_val_if.AWCACHE = apatb_sparse_lu_shared_top.l_val_AWCACHE;
    assign axi_l_val_if.AWPROT = apatb_sparse_lu_shared_top.l_val_AWPROT;
    assign axi_l_val_if.AWQOS = apatb_sparse_lu_shared_top.l_val_AWQOS;
    assign axi_l_val_if.AWREGION = apatb_sparse_lu_shared_top.l_val_AWREGION;
    assign axi_l_val_if.AWUSER = apatb_sparse_lu_shared_top.l_val_AWUSER;
    assign axi_l_val_if.WVALID = apatb_sparse_lu_shared_top.l_val_WVALID;
    assign apatb_sparse_lu_shared_top.l_val_WREADY = axi_l_val_if.WREADY;
    assign axi_l_val_if.WDATA = apatb_sparse_lu_shared_top.l_val_WDATA;
    assign axi_l_val_if.WSTRB = apatb_sparse_lu_shared_top.l_val_WSTRB;
    assign axi_l_val_if.WLAST = apatb_sparse_lu_shared_top.l_val_WLAST;
    assign axi_l_val_if.WID = apatb_sparse_lu_shared_top.l_val_WID;
    assign axi_l_val_if.WUSER = apatb_sparse_lu_shared_top.l_val_WUSER;
    assign axi_l_val_if.ARVALID = apatb_sparse_lu_shared_top.l_val_ARVALID;
    assign apatb_sparse_lu_shared_top.l_val_ARREADY = axi_l_val_if.ARREADY;
    assign axi_l_val_if.ARADDR = apatb_sparse_lu_shared_top.l_val_ARADDR;
    assign axi_l_val_if.ARID = apatb_sparse_lu_shared_top.l_val_ARID;
    assign axi_l_val_if.ARLEN = apatb_sparse_lu_shared_top.l_val_ARLEN;
    assign axi_l_val_if.ARSIZE = apatb_sparse_lu_shared_top.l_val_ARSIZE;
    assign axi_l_val_if.ARBURST = apatb_sparse_lu_shared_top.l_val_ARBURST;
    assign axi_l_val_if.ARLOCK = apatb_sparse_lu_shared_top.l_val_ARLOCK;
    assign axi_l_val_if.ARCACHE = apatb_sparse_lu_shared_top.l_val_ARCACHE;
    assign axi_l_val_if.ARPROT = apatb_sparse_lu_shared_top.l_val_ARPROT;
    assign axi_l_val_if.ARQOS = apatb_sparse_lu_shared_top.l_val_ARQOS;
    assign axi_l_val_if.ARREGION = apatb_sparse_lu_shared_top.l_val_ARREGION;
    assign axi_l_val_if.ARUSER = apatb_sparse_lu_shared_top.l_val_ARUSER;
    assign apatb_sparse_lu_shared_top.l_val_RVALID = axi_l_val_if.RVALID;
    assign axi_l_val_if.RREADY = apatb_sparse_lu_shared_top.l_val_RREADY;
    assign apatb_sparse_lu_shared_top.l_val_RDATA = axi_l_val_if.RDATA;
    assign apatb_sparse_lu_shared_top.l_val_RLAST = axi_l_val_if.RLAST;
    assign apatb_sparse_lu_shared_top.l_val_RID = axi_l_val_if.RID;
    assign apatb_sparse_lu_shared_top.l_val_RUSER = axi_l_val_if.RUSER;
    assign apatb_sparse_lu_shared_top.l_val_RRESP = axi_l_val_if.RRESP;
    assign apatb_sparse_lu_shared_top.l_val_BVALID = axi_l_val_if.BVALID;
    assign axi_l_val_if.BREADY = apatb_sparse_lu_shared_top.l_val_BREADY;
    assign apatb_sparse_lu_shared_top.l_val_BRESP = axi_l_val_if.BRESP;
    assign apatb_sparse_lu_shared_top.l_val_BID = axi_l_val_if.BID;
    assign apatb_sparse_lu_shared_top.l_val_BUSER = axi_l_val_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_l_val.*", "vif", axi_l_val_if);
    end


    axi_if #(64,4,8,3,1)  axi_u_row_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_u_row_if.AWVALID = apatb_sparse_lu_shared_top.u_row_AWVALID;
    assign apatb_sparse_lu_shared_top.u_row_AWREADY = axi_u_row_if.AWREADY;
    assign axi_u_row_if.AWADDR = apatb_sparse_lu_shared_top.u_row_AWADDR;
    assign axi_u_row_if.AWID = apatb_sparse_lu_shared_top.u_row_AWID;
    assign axi_u_row_if.AWLEN = apatb_sparse_lu_shared_top.u_row_AWLEN;
    assign axi_u_row_if.AWSIZE = apatb_sparse_lu_shared_top.u_row_AWSIZE;
    assign axi_u_row_if.AWBURST = apatb_sparse_lu_shared_top.u_row_AWBURST;
    assign axi_u_row_if.AWLOCK = apatb_sparse_lu_shared_top.u_row_AWLOCK;
    assign axi_u_row_if.AWCACHE = apatb_sparse_lu_shared_top.u_row_AWCACHE;
    assign axi_u_row_if.AWPROT = apatb_sparse_lu_shared_top.u_row_AWPROT;
    assign axi_u_row_if.AWQOS = apatb_sparse_lu_shared_top.u_row_AWQOS;
    assign axi_u_row_if.AWREGION = apatb_sparse_lu_shared_top.u_row_AWREGION;
    assign axi_u_row_if.AWUSER = apatb_sparse_lu_shared_top.u_row_AWUSER;
    assign axi_u_row_if.WVALID = apatb_sparse_lu_shared_top.u_row_WVALID;
    assign apatb_sparse_lu_shared_top.u_row_WREADY = axi_u_row_if.WREADY;
    assign axi_u_row_if.WDATA = apatb_sparse_lu_shared_top.u_row_WDATA;
    assign axi_u_row_if.WSTRB = apatb_sparse_lu_shared_top.u_row_WSTRB;
    assign axi_u_row_if.WLAST = apatb_sparse_lu_shared_top.u_row_WLAST;
    assign axi_u_row_if.WID = apatb_sparse_lu_shared_top.u_row_WID;
    assign axi_u_row_if.WUSER = apatb_sparse_lu_shared_top.u_row_WUSER;
    assign axi_u_row_if.ARVALID = apatb_sparse_lu_shared_top.u_row_ARVALID;
    assign apatb_sparse_lu_shared_top.u_row_ARREADY = axi_u_row_if.ARREADY;
    assign axi_u_row_if.ARADDR = apatb_sparse_lu_shared_top.u_row_ARADDR;
    assign axi_u_row_if.ARID = apatb_sparse_lu_shared_top.u_row_ARID;
    assign axi_u_row_if.ARLEN = apatb_sparse_lu_shared_top.u_row_ARLEN;
    assign axi_u_row_if.ARSIZE = apatb_sparse_lu_shared_top.u_row_ARSIZE;
    assign axi_u_row_if.ARBURST = apatb_sparse_lu_shared_top.u_row_ARBURST;
    assign axi_u_row_if.ARLOCK = apatb_sparse_lu_shared_top.u_row_ARLOCK;
    assign axi_u_row_if.ARCACHE = apatb_sparse_lu_shared_top.u_row_ARCACHE;
    assign axi_u_row_if.ARPROT = apatb_sparse_lu_shared_top.u_row_ARPROT;
    assign axi_u_row_if.ARQOS = apatb_sparse_lu_shared_top.u_row_ARQOS;
    assign axi_u_row_if.ARREGION = apatb_sparse_lu_shared_top.u_row_ARREGION;
    assign axi_u_row_if.ARUSER = apatb_sparse_lu_shared_top.u_row_ARUSER;
    assign apatb_sparse_lu_shared_top.u_row_RVALID = axi_u_row_if.RVALID;
    assign axi_u_row_if.RREADY = apatb_sparse_lu_shared_top.u_row_RREADY;
    assign apatb_sparse_lu_shared_top.u_row_RDATA = axi_u_row_if.RDATA;
    assign apatb_sparse_lu_shared_top.u_row_RLAST = axi_u_row_if.RLAST;
    assign apatb_sparse_lu_shared_top.u_row_RID = axi_u_row_if.RID;
    assign apatb_sparse_lu_shared_top.u_row_RUSER = axi_u_row_if.RUSER;
    assign apatb_sparse_lu_shared_top.u_row_RRESP = axi_u_row_if.RRESP;
    assign apatb_sparse_lu_shared_top.u_row_BVALID = axi_u_row_if.BVALID;
    assign axi_u_row_if.BREADY = apatb_sparse_lu_shared_top.u_row_BREADY;
    assign apatb_sparse_lu_shared_top.u_row_BRESP = axi_u_row_if.BRESP;
    assign apatb_sparse_lu_shared_top.u_row_BID = axi_u_row_if.BID;
    assign apatb_sparse_lu_shared_top.u_row_BUSER = axi_u_row_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_u_row.*", "vif", axi_u_row_if);
    end


    axi_if #(64,4,8,3,1)  axi_u_col_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_u_col_if.AWVALID = apatb_sparse_lu_shared_top.u_col_AWVALID;
    assign apatb_sparse_lu_shared_top.u_col_AWREADY = axi_u_col_if.AWREADY;
    assign axi_u_col_if.AWADDR = apatb_sparse_lu_shared_top.u_col_AWADDR;
    assign axi_u_col_if.AWID = apatb_sparse_lu_shared_top.u_col_AWID;
    assign axi_u_col_if.AWLEN = apatb_sparse_lu_shared_top.u_col_AWLEN;
    assign axi_u_col_if.AWSIZE = apatb_sparse_lu_shared_top.u_col_AWSIZE;
    assign axi_u_col_if.AWBURST = apatb_sparse_lu_shared_top.u_col_AWBURST;
    assign axi_u_col_if.AWLOCK = apatb_sparse_lu_shared_top.u_col_AWLOCK;
    assign axi_u_col_if.AWCACHE = apatb_sparse_lu_shared_top.u_col_AWCACHE;
    assign axi_u_col_if.AWPROT = apatb_sparse_lu_shared_top.u_col_AWPROT;
    assign axi_u_col_if.AWQOS = apatb_sparse_lu_shared_top.u_col_AWQOS;
    assign axi_u_col_if.AWREGION = apatb_sparse_lu_shared_top.u_col_AWREGION;
    assign axi_u_col_if.AWUSER = apatb_sparse_lu_shared_top.u_col_AWUSER;
    assign axi_u_col_if.WVALID = apatb_sparse_lu_shared_top.u_col_WVALID;
    assign apatb_sparse_lu_shared_top.u_col_WREADY = axi_u_col_if.WREADY;
    assign axi_u_col_if.WDATA = apatb_sparse_lu_shared_top.u_col_WDATA;
    assign axi_u_col_if.WSTRB = apatb_sparse_lu_shared_top.u_col_WSTRB;
    assign axi_u_col_if.WLAST = apatb_sparse_lu_shared_top.u_col_WLAST;
    assign axi_u_col_if.WID = apatb_sparse_lu_shared_top.u_col_WID;
    assign axi_u_col_if.WUSER = apatb_sparse_lu_shared_top.u_col_WUSER;
    assign axi_u_col_if.ARVALID = apatb_sparse_lu_shared_top.u_col_ARVALID;
    assign apatb_sparse_lu_shared_top.u_col_ARREADY = axi_u_col_if.ARREADY;
    assign axi_u_col_if.ARADDR = apatb_sparse_lu_shared_top.u_col_ARADDR;
    assign axi_u_col_if.ARID = apatb_sparse_lu_shared_top.u_col_ARID;
    assign axi_u_col_if.ARLEN = apatb_sparse_lu_shared_top.u_col_ARLEN;
    assign axi_u_col_if.ARSIZE = apatb_sparse_lu_shared_top.u_col_ARSIZE;
    assign axi_u_col_if.ARBURST = apatb_sparse_lu_shared_top.u_col_ARBURST;
    assign axi_u_col_if.ARLOCK = apatb_sparse_lu_shared_top.u_col_ARLOCK;
    assign axi_u_col_if.ARCACHE = apatb_sparse_lu_shared_top.u_col_ARCACHE;
    assign axi_u_col_if.ARPROT = apatb_sparse_lu_shared_top.u_col_ARPROT;
    assign axi_u_col_if.ARQOS = apatb_sparse_lu_shared_top.u_col_ARQOS;
    assign axi_u_col_if.ARREGION = apatb_sparse_lu_shared_top.u_col_ARREGION;
    assign axi_u_col_if.ARUSER = apatb_sparse_lu_shared_top.u_col_ARUSER;
    assign apatb_sparse_lu_shared_top.u_col_RVALID = axi_u_col_if.RVALID;
    assign axi_u_col_if.RREADY = apatb_sparse_lu_shared_top.u_col_RREADY;
    assign apatb_sparse_lu_shared_top.u_col_RDATA = axi_u_col_if.RDATA;
    assign apatb_sparse_lu_shared_top.u_col_RLAST = axi_u_col_if.RLAST;
    assign apatb_sparse_lu_shared_top.u_col_RID = axi_u_col_if.RID;
    assign apatb_sparse_lu_shared_top.u_col_RUSER = axi_u_col_if.RUSER;
    assign apatb_sparse_lu_shared_top.u_col_RRESP = axi_u_col_if.RRESP;
    assign apatb_sparse_lu_shared_top.u_col_BVALID = axi_u_col_if.BVALID;
    assign axi_u_col_if.BREADY = apatb_sparse_lu_shared_top.u_col_BREADY;
    assign apatb_sparse_lu_shared_top.u_col_BRESP = axi_u_col_if.BRESP;
    assign apatb_sparse_lu_shared_top.u_col_BID = axi_u_col_if.BID;
    assign apatb_sparse_lu_shared_top.u_col_BUSER = axi_u_col_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_u_col.*", "vif", axi_u_col_if);
    end


    axi_if #(64,4,8,3,1)  axi_u_val_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_u_val_if.AWVALID = apatb_sparse_lu_shared_top.u_val_AWVALID;
    assign apatb_sparse_lu_shared_top.u_val_AWREADY = axi_u_val_if.AWREADY;
    assign axi_u_val_if.AWADDR = apatb_sparse_lu_shared_top.u_val_AWADDR;
    assign axi_u_val_if.AWID = apatb_sparse_lu_shared_top.u_val_AWID;
    assign axi_u_val_if.AWLEN = apatb_sparse_lu_shared_top.u_val_AWLEN;
    assign axi_u_val_if.AWSIZE = apatb_sparse_lu_shared_top.u_val_AWSIZE;
    assign axi_u_val_if.AWBURST = apatb_sparse_lu_shared_top.u_val_AWBURST;
    assign axi_u_val_if.AWLOCK = apatb_sparse_lu_shared_top.u_val_AWLOCK;
    assign axi_u_val_if.AWCACHE = apatb_sparse_lu_shared_top.u_val_AWCACHE;
    assign axi_u_val_if.AWPROT = apatb_sparse_lu_shared_top.u_val_AWPROT;
    assign axi_u_val_if.AWQOS = apatb_sparse_lu_shared_top.u_val_AWQOS;
    assign axi_u_val_if.AWREGION = apatb_sparse_lu_shared_top.u_val_AWREGION;
    assign axi_u_val_if.AWUSER = apatb_sparse_lu_shared_top.u_val_AWUSER;
    assign axi_u_val_if.WVALID = apatb_sparse_lu_shared_top.u_val_WVALID;
    assign apatb_sparse_lu_shared_top.u_val_WREADY = axi_u_val_if.WREADY;
    assign axi_u_val_if.WDATA = apatb_sparse_lu_shared_top.u_val_WDATA;
    assign axi_u_val_if.WSTRB = apatb_sparse_lu_shared_top.u_val_WSTRB;
    assign axi_u_val_if.WLAST = apatb_sparse_lu_shared_top.u_val_WLAST;
    assign axi_u_val_if.WID = apatb_sparse_lu_shared_top.u_val_WID;
    assign axi_u_val_if.WUSER = apatb_sparse_lu_shared_top.u_val_WUSER;
    assign axi_u_val_if.ARVALID = apatb_sparse_lu_shared_top.u_val_ARVALID;
    assign apatb_sparse_lu_shared_top.u_val_ARREADY = axi_u_val_if.ARREADY;
    assign axi_u_val_if.ARADDR = apatb_sparse_lu_shared_top.u_val_ARADDR;
    assign axi_u_val_if.ARID = apatb_sparse_lu_shared_top.u_val_ARID;
    assign axi_u_val_if.ARLEN = apatb_sparse_lu_shared_top.u_val_ARLEN;
    assign axi_u_val_if.ARSIZE = apatb_sparse_lu_shared_top.u_val_ARSIZE;
    assign axi_u_val_if.ARBURST = apatb_sparse_lu_shared_top.u_val_ARBURST;
    assign axi_u_val_if.ARLOCK = apatb_sparse_lu_shared_top.u_val_ARLOCK;
    assign axi_u_val_if.ARCACHE = apatb_sparse_lu_shared_top.u_val_ARCACHE;
    assign axi_u_val_if.ARPROT = apatb_sparse_lu_shared_top.u_val_ARPROT;
    assign axi_u_val_if.ARQOS = apatb_sparse_lu_shared_top.u_val_ARQOS;
    assign axi_u_val_if.ARREGION = apatb_sparse_lu_shared_top.u_val_ARREGION;
    assign axi_u_val_if.ARUSER = apatb_sparse_lu_shared_top.u_val_ARUSER;
    assign apatb_sparse_lu_shared_top.u_val_RVALID = axi_u_val_if.RVALID;
    assign axi_u_val_if.RREADY = apatb_sparse_lu_shared_top.u_val_RREADY;
    assign apatb_sparse_lu_shared_top.u_val_RDATA = axi_u_val_if.RDATA;
    assign apatb_sparse_lu_shared_top.u_val_RLAST = axi_u_val_if.RLAST;
    assign apatb_sparse_lu_shared_top.u_val_RID = axi_u_val_if.RID;
    assign apatb_sparse_lu_shared_top.u_val_RUSER = axi_u_val_if.RUSER;
    assign apatb_sparse_lu_shared_top.u_val_RRESP = axi_u_val_if.RRESP;
    assign apatb_sparse_lu_shared_top.u_val_BVALID = axi_u_val_if.BVALID;
    assign axi_u_val_if.BREADY = apatb_sparse_lu_shared_top.u_val_BREADY;
    assign apatb_sparse_lu_shared_top.u_val_BRESP = axi_u_val_if.BRESP;
    assign apatb_sparse_lu_shared_top.u_val_BID = axi_u_val_if.BID;
    assign apatb_sparse_lu_shared_top.u_val_BUSER = axi_u_val_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_u_val.*", "vif", axi_u_val_if);
    end


    axi_if #(64,4,8,3,1)  axi_x_row_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_x_row_if.AWVALID = apatb_sparse_lu_shared_top.x_row_AWVALID;
    assign apatb_sparse_lu_shared_top.x_row_AWREADY = axi_x_row_if.AWREADY;
    assign axi_x_row_if.AWADDR = apatb_sparse_lu_shared_top.x_row_AWADDR;
    assign axi_x_row_if.AWID = apatb_sparse_lu_shared_top.x_row_AWID;
    assign axi_x_row_if.AWLEN = apatb_sparse_lu_shared_top.x_row_AWLEN;
    assign axi_x_row_if.AWSIZE = apatb_sparse_lu_shared_top.x_row_AWSIZE;
    assign axi_x_row_if.AWBURST = apatb_sparse_lu_shared_top.x_row_AWBURST;
    assign axi_x_row_if.AWLOCK = apatb_sparse_lu_shared_top.x_row_AWLOCK;
    assign axi_x_row_if.AWCACHE = apatb_sparse_lu_shared_top.x_row_AWCACHE;
    assign axi_x_row_if.AWPROT = apatb_sparse_lu_shared_top.x_row_AWPROT;
    assign axi_x_row_if.AWQOS = apatb_sparse_lu_shared_top.x_row_AWQOS;
    assign axi_x_row_if.AWREGION = apatb_sparse_lu_shared_top.x_row_AWREGION;
    assign axi_x_row_if.AWUSER = apatb_sparse_lu_shared_top.x_row_AWUSER;
    assign axi_x_row_if.WVALID = apatb_sparse_lu_shared_top.x_row_WVALID;
    assign apatb_sparse_lu_shared_top.x_row_WREADY = axi_x_row_if.WREADY;
    assign axi_x_row_if.WDATA = apatb_sparse_lu_shared_top.x_row_WDATA;
    assign axi_x_row_if.WSTRB = apatb_sparse_lu_shared_top.x_row_WSTRB;
    assign axi_x_row_if.WLAST = apatb_sparse_lu_shared_top.x_row_WLAST;
    assign axi_x_row_if.WID = apatb_sparse_lu_shared_top.x_row_WID;
    assign axi_x_row_if.WUSER = apatb_sparse_lu_shared_top.x_row_WUSER;
    assign axi_x_row_if.ARVALID = apatb_sparse_lu_shared_top.x_row_ARVALID;
    assign apatb_sparse_lu_shared_top.x_row_ARREADY = axi_x_row_if.ARREADY;
    assign axi_x_row_if.ARADDR = apatb_sparse_lu_shared_top.x_row_ARADDR;
    assign axi_x_row_if.ARID = apatb_sparse_lu_shared_top.x_row_ARID;
    assign axi_x_row_if.ARLEN = apatb_sparse_lu_shared_top.x_row_ARLEN;
    assign axi_x_row_if.ARSIZE = apatb_sparse_lu_shared_top.x_row_ARSIZE;
    assign axi_x_row_if.ARBURST = apatb_sparse_lu_shared_top.x_row_ARBURST;
    assign axi_x_row_if.ARLOCK = apatb_sparse_lu_shared_top.x_row_ARLOCK;
    assign axi_x_row_if.ARCACHE = apatb_sparse_lu_shared_top.x_row_ARCACHE;
    assign axi_x_row_if.ARPROT = apatb_sparse_lu_shared_top.x_row_ARPROT;
    assign axi_x_row_if.ARQOS = apatb_sparse_lu_shared_top.x_row_ARQOS;
    assign axi_x_row_if.ARREGION = apatb_sparse_lu_shared_top.x_row_ARREGION;
    assign axi_x_row_if.ARUSER = apatb_sparse_lu_shared_top.x_row_ARUSER;
    assign apatb_sparse_lu_shared_top.x_row_RVALID = axi_x_row_if.RVALID;
    assign axi_x_row_if.RREADY = apatb_sparse_lu_shared_top.x_row_RREADY;
    assign apatb_sparse_lu_shared_top.x_row_RDATA = axi_x_row_if.RDATA;
    assign apatb_sparse_lu_shared_top.x_row_RLAST = axi_x_row_if.RLAST;
    assign apatb_sparse_lu_shared_top.x_row_RID = axi_x_row_if.RID;
    assign apatb_sparse_lu_shared_top.x_row_RUSER = axi_x_row_if.RUSER;
    assign apatb_sparse_lu_shared_top.x_row_RRESP = axi_x_row_if.RRESP;
    assign apatb_sparse_lu_shared_top.x_row_BVALID = axi_x_row_if.BVALID;
    assign axi_x_row_if.BREADY = apatb_sparse_lu_shared_top.x_row_BREADY;
    assign apatb_sparse_lu_shared_top.x_row_BRESP = axi_x_row_if.BRESP;
    assign apatb_sparse_lu_shared_top.x_row_BID = axi_x_row_if.BID;
    assign apatb_sparse_lu_shared_top.x_row_BUSER = axi_x_row_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_x_row.*", "vif", axi_x_row_if);
    end


    axi_if #(64,4,8,3,1)  axi_x_col_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_x_col_if.AWVALID = apatb_sparse_lu_shared_top.x_col_AWVALID;
    assign apatb_sparse_lu_shared_top.x_col_AWREADY = axi_x_col_if.AWREADY;
    assign axi_x_col_if.AWADDR = apatb_sparse_lu_shared_top.x_col_AWADDR;
    assign axi_x_col_if.AWID = apatb_sparse_lu_shared_top.x_col_AWID;
    assign axi_x_col_if.AWLEN = apatb_sparse_lu_shared_top.x_col_AWLEN;
    assign axi_x_col_if.AWSIZE = apatb_sparse_lu_shared_top.x_col_AWSIZE;
    assign axi_x_col_if.AWBURST = apatb_sparse_lu_shared_top.x_col_AWBURST;
    assign axi_x_col_if.AWLOCK = apatb_sparse_lu_shared_top.x_col_AWLOCK;
    assign axi_x_col_if.AWCACHE = apatb_sparse_lu_shared_top.x_col_AWCACHE;
    assign axi_x_col_if.AWPROT = apatb_sparse_lu_shared_top.x_col_AWPROT;
    assign axi_x_col_if.AWQOS = apatb_sparse_lu_shared_top.x_col_AWQOS;
    assign axi_x_col_if.AWREGION = apatb_sparse_lu_shared_top.x_col_AWREGION;
    assign axi_x_col_if.AWUSER = apatb_sparse_lu_shared_top.x_col_AWUSER;
    assign axi_x_col_if.WVALID = apatb_sparse_lu_shared_top.x_col_WVALID;
    assign apatb_sparse_lu_shared_top.x_col_WREADY = axi_x_col_if.WREADY;
    assign axi_x_col_if.WDATA = apatb_sparse_lu_shared_top.x_col_WDATA;
    assign axi_x_col_if.WSTRB = apatb_sparse_lu_shared_top.x_col_WSTRB;
    assign axi_x_col_if.WLAST = apatb_sparse_lu_shared_top.x_col_WLAST;
    assign axi_x_col_if.WID = apatb_sparse_lu_shared_top.x_col_WID;
    assign axi_x_col_if.WUSER = apatb_sparse_lu_shared_top.x_col_WUSER;
    assign axi_x_col_if.ARVALID = apatb_sparse_lu_shared_top.x_col_ARVALID;
    assign apatb_sparse_lu_shared_top.x_col_ARREADY = axi_x_col_if.ARREADY;
    assign axi_x_col_if.ARADDR = apatb_sparse_lu_shared_top.x_col_ARADDR;
    assign axi_x_col_if.ARID = apatb_sparse_lu_shared_top.x_col_ARID;
    assign axi_x_col_if.ARLEN = apatb_sparse_lu_shared_top.x_col_ARLEN;
    assign axi_x_col_if.ARSIZE = apatb_sparse_lu_shared_top.x_col_ARSIZE;
    assign axi_x_col_if.ARBURST = apatb_sparse_lu_shared_top.x_col_ARBURST;
    assign axi_x_col_if.ARLOCK = apatb_sparse_lu_shared_top.x_col_ARLOCK;
    assign axi_x_col_if.ARCACHE = apatb_sparse_lu_shared_top.x_col_ARCACHE;
    assign axi_x_col_if.ARPROT = apatb_sparse_lu_shared_top.x_col_ARPROT;
    assign axi_x_col_if.ARQOS = apatb_sparse_lu_shared_top.x_col_ARQOS;
    assign axi_x_col_if.ARREGION = apatb_sparse_lu_shared_top.x_col_ARREGION;
    assign axi_x_col_if.ARUSER = apatb_sparse_lu_shared_top.x_col_ARUSER;
    assign apatb_sparse_lu_shared_top.x_col_RVALID = axi_x_col_if.RVALID;
    assign axi_x_col_if.RREADY = apatb_sparse_lu_shared_top.x_col_RREADY;
    assign apatb_sparse_lu_shared_top.x_col_RDATA = axi_x_col_if.RDATA;
    assign apatb_sparse_lu_shared_top.x_col_RLAST = axi_x_col_if.RLAST;
    assign apatb_sparse_lu_shared_top.x_col_RID = axi_x_col_if.RID;
    assign apatb_sparse_lu_shared_top.x_col_RUSER = axi_x_col_if.RUSER;
    assign apatb_sparse_lu_shared_top.x_col_RRESP = axi_x_col_if.RRESP;
    assign apatb_sparse_lu_shared_top.x_col_BVALID = axi_x_col_if.BVALID;
    assign axi_x_col_if.BREADY = apatb_sparse_lu_shared_top.x_col_BREADY;
    assign apatb_sparse_lu_shared_top.x_col_BRESP = axi_x_col_if.BRESP;
    assign apatb_sparse_lu_shared_top.x_col_BID = axi_x_col_if.BID;
    assign apatb_sparse_lu_shared_top.x_col_BUSER = axi_x_col_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_x_col.*", "vif", axi_x_col_if);
    end


    axi_if #(64,4,8,3,1)  axi_x_val_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign axi_x_val_if.AWVALID = apatb_sparse_lu_shared_top.x_val_AWVALID;
    assign apatb_sparse_lu_shared_top.x_val_AWREADY = axi_x_val_if.AWREADY;
    assign axi_x_val_if.AWADDR = apatb_sparse_lu_shared_top.x_val_AWADDR;
    assign axi_x_val_if.AWID = apatb_sparse_lu_shared_top.x_val_AWID;
    assign axi_x_val_if.AWLEN = apatb_sparse_lu_shared_top.x_val_AWLEN;
    assign axi_x_val_if.AWSIZE = apatb_sparse_lu_shared_top.x_val_AWSIZE;
    assign axi_x_val_if.AWBURST = apatb_sparse_lu_shared_top.x_val_AWBURST;
    assign axi_x_val_if.AWLOCK = apatb_sparse_lu_shared_top.x_val_AWLOCK;
    assign axi_x_val_if.AWCACHE = apatb_sparse_lu_shared_top.x_val_AWCACHE;
    assign axi_x_val_if.AWPROT = apatb_sparse_lu_shared_top.x_val_AWPROT;
    assign axi_x_val_if.AWQOS = apatb_sparse_lu_shared_top.x_val_AWQOS;
    assign axi_x_val_if.AWREGION = apatb_sparse_lu_shared_top.x_val_AWREGION;
    assign axi_x_val_if.AWUSER = apatb_sparse_lu_shared_top.x_val_AWUSER;
    assign axi_x_val_if.WVALID = apatb_sparse_lu_shared_top.x_val_WVALID;
    assign apatb_sparse_lu_shared_top.x_val_WREADY = axi_x_val_if.WREADY;
    assign axi_x_val_if.WDATA = apatb_sparse_lu_shared_top.x_val_WDATA;
    assign axi_x_val_if.WSTRB = apatb_sparse_lu_shared_top.x_val_WSTRB;
    assign axi_x_val_if.WLAST = apatb_sparse_lu_shared_top.x_val_WLAST;
    assign axi_x_val_if.WID = apatb_sparse_lu_shared_top.x_val_WID;
    assign axi_x_val_if.WUSER = apatb_sparse_lu_shared_top.x_val_WUSER;
    assign axi_x_val_if.ARVALID = apatb_sparse_lu_shared_top.x_val_ARVALID;
    assign apatb_sparse_lu_shared_top.x_val_ARREADY = axi_x_val_if.ARREADY;
    assign axi_x_val_if.ARADDR = apatb_sparse_lu_shared_top.x_val_ARADDR;
    assign axi_x_val_if.ARID = apatb_sparse_lu_shared_top.x_val_ARID;
    assign axi_x_val_if.ARLEN = apatb_sparse_lu_shared_top.x_val_ARLEN;
    assign axi_x_val_if.ARSIZE = apatb_sparse_lu_shared_top.x_val_ARSIZE;
    assign axi_x_val_if.ARBURST = apatb_sparse_lu_shared_top.x_val_ARBURST;
    assign axi_x_val_if.ARLOCK = apatb_sparse_lu_shared_top.x_val_ARLOCK;
    assign axi_x_val_if.ARCACHE = apatb_sparse_lu_shared_top.x_val_ARCACHE;
    assign axi_x_val_if.ARPROT = apatb_sparse_lu_shared_top.x_val_ARPROT;
    assign axi_x_val_if.ARQOS = apatb_sparse_lu_shared_top.x_val_ARQOS;
    assign axi_x_val_if.ARREGION = apatb_sparse_lu_shared_top.x_val_ARREGION;
    assign axi_x_val_if.ARUSER = apatb_sparse_lu_shared_top.x_val_ARUSER;
    assign apatb_sparse_lu_shared_top.x_val_RVALID = axi_x_val_if.RVALID;
    assign axi_x_val_if.RREADY = apatb_sparse_lu_shared_top.x_val_RREADY;
    assign apatb_sparse_lu_shared_top.x_val_RDATA = axi_x_val_if.RDATA;
    assign apatb_sparse_lu_shared_top.x_val_RLAST = axi_x_val_if.RLAST;
    assign apatb_sparse_lu_shared_top.x_val_RID = axi_x_val_if.RID;
    assign apatb_sparse_lu_shared_top.x_val_RUSER = axi_x_val_if.RUSER;
    assign apatb_sparse_lu_shared_top.x_val_RRESP = axi_x_val_if.RRESP;
    assign apatb_sparse_lu_shared_top.x_val_BVALID = axi_x_val_if.BVALID;
    assign axi_x_val_if.BREADY = apatb_sparse_lu_shared_top.x_val_BREADY;
    assign apatb_sparse_lu_shared_top.x_val_BRESP = axi_x_val_if.BRESP;
    assign apatb_sparse_lu_shared_top.x_val_BID = axi_x_val_if.BID;
    assign apatb_sparse_lu_shared_top.x_val_BUSER = axi_x_val_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_x_val.*", "vif", axi_x_val_if);
    end


    axi_if #(7,4,4,3,1)  axi_control_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign apatb_sparse_lu_shared_top.control_AWADDR = axi_control_if.AWADDR;
    assign apatb_sparse_lu_shared_top.control_AWVALID = axi_control_if.AWVALID;
    assign axi_control_if.AWREADY = apatb_sparse_lu_shared_top.control_AWREADY;
    assign apatb_sparse_lu_shared_top.control_WVALID = axi_control_if.WVALID;
    assign axi_control_if.WREADY = apatb_sparse_lu_shared_top.control_WREADY;
    assign apatb_sparse_lu_shared_top.control_WDATA = axi_control_if.WDATA;
    assign apatb_sparse_lu_shared_top.control_WSTRB = axi_control_if.WSTRB;
    assign apatb_sparse_lu_shared_top.control_ARADDR = axi_control_if.ARADDR;
    assign apatb_sparse_lu_shared_top.control_ARVALID = axi_control_if.ARVALID;
    assign axi_control_if.ARREADY = apatb_sparse_lu_shared_top.control_ARREADY;
    assign axi_control_if.RVALID = apatb_sparse_lu_shared_top.control_RVALID;
    assign apatb_sparse_lu_shared_top.control_RREADY = axi_control_if.RREADY;
    assign axi_control_if.RDATA = apatb_sparse_lu_shared_top.control_RDATA;
    assign axi_control_if.RRESP = apatb_sparse_lu_shared_top.control_RRESP;
    assign axi_control_if.BVALID = apatb_sparse_lu_shared_top.control_BVALID;
    assign apatb_sparse_lu_shared_top.control_BREADY = axi_control_if.BREADY;
    assign axi_control_if.BRESP = apatb_sparse_lu_shared_top.control_BRESP;
    assign axi_control_if.BID = 0;
    assign axi_control_if.RID = 0;
    assign axi_control_if.RLAST = 1;
    initial begin
        uvm_config_db #( virtual axi_if#(7,4,4,3,1) )::set(null, "uvm_test_top.top_env.axi_lite_control.*", "vif", axi_control_if);
    end


    axi_if #(8,4,4,3,1)  axi_control_r_if (.clk  (apatb_sparse_lu_shared_top.AESL_clock), .rst(apatb_sparse_lu_shared_top.AESL_reset));
    assign apatb_sparse_lu_shared_top.control_r_AWADDR = axi_control_r_if.AWADDR;
    assign apatb_sparse_lu_shared_top.control_r_AWVALID = axi_control_r_if.AWVALID;
    assign axi_control_r_if.AWREADY = apatb_sparse_lu_shared_top.control_r_AWREADY;
    assign apatb_sparse_lu_shared_top.control_r_WVALID = axi_control_r_if.WVALID;
    assign axi_control_r_if.WREADY = apatb_sparse_lu_shared_top.control_r_WREADY;
    assign apatb_sparse_lu_shared_top.control_r_WDATA = axi_control_r_if.WDATA;
    assign apatb_sparse_lu_shared_top.control_r_WSTRB = axi_control_r_if.WSTRB;
    assign apatb_sparse_lu_shared_top.control_r_ARADDR = axi_control_r_if.ARADDR;
    assign apatb_sparse_lu_shared_top.control_r_ARVALID = axi_control_r_if.ARVALID;
    assign axi_control_r_if.ARREADY = apatb_sparse_lu_shared_top.control_r_ARREADY;
    assign axi_control_r_if.RVALID = apatb_sparse_lu_shared_top.control_r_RVALID;
    assign apatb_sparse_lu_shared_top.control_r_RREADY = axi_control_r_if.RREADY;
    assign axi_control_r_if.RDATA = apatb_sparse_lu_shared_top.control_r_RDATA;
    assign axi_control_r_if.RRESP = apatb_sparse_lu_shared_top.control_r_RRESP;
    assign axi_control_r_if.BVALID = apatb_sparse_lu_shared_top.control_r_BVALID;
    assign apatb_sparse_lu_shared_top.control_r_BREADY = axi_control_r_if.BREADY;
    assign axi_control_r_if.BRESP = apatb_sparse_lu_shared_top.control_r_BRESP;
    assign axi_control_r_if.BID = 0;
    assign axi_control_r_if.RID = 0;
    assign axi_control_r_if.RLAST = 1;
    initial begin
        uvm_config_db #( virtual axi_if#(8,4,4,3,1) )::set(null, "uvm_test_top.top_env.axi_lite_control_r.*", "vif", axi_control_r_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
