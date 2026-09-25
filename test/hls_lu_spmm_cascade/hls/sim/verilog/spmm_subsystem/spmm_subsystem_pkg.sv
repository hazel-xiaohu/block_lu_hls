//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef SPMM_SUBSYSTEM_PKG__SV          
    `define SPMM_SUBSYSTEM_PKG__SV      
                                                     
    package spmm_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "spmm_config.sv"           
        `include "spmm_reference_model.sv"  
        `include "spmm_scoreboard.sv"       
        `include "spmm_subsystem_monitor.sv"
        `include "spmm_virtual_sequencer.sv"
        `include "spmm_pkg_sequence_lib.sv" 
        `include "spmm_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
