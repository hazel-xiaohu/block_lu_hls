//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef SPARSE_GETRF_SUBSYSTEM_PKG__SV          
    `define SPARSE_GETRF_SUBSYSTEM_PKG__SV      
                                                     
    package sparse_getrf_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "sparse_getrf_config.sv"           
        `include "sparse_getrf_reference_model.sv"  
        `include "sparse_getrf_scoreboard.sv"       
        `include "sparse_getrf_subsystem_monitor.sv"
        `include "sparse_getrf_virtual_sequencer.sv"
        `include "sparse_getrf_pkg_sequence_lib.sv" 
        `include "sparse_getrf_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
