//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef SPARSE_LU_SHARED_SUBSYSTEM_PKG__SV          
    `define SPARSE_LU_SHARED_SUBSYSTEM_PKG__SV      
                                                     
    package sparse_lu_shared_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "sparse_lu_shared_config.sv"           
        `include "sparse_lu_shared_reference_model.sv"  
        `include "sparse_lu_shared_scoreboard.sv"       
        `include "sparse_lu_shared_subsystem_monitor.sv"
        `include "sparse_lu_shared_virtual_sequencer.sv"
        `include "sparse_lu_shared_pkg_sequence_lib.sv" 
        `include "sparse_lu_shared_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
