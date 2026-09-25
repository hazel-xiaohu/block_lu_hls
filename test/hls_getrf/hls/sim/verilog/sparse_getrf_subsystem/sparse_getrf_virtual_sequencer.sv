//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SPARSE_GETRF_VIRTUAL_SEQUENCER__SV                        
    `define SPARSE_GETRF_VIRTUAL_SEQUENCER__SV                    
                                                                       
    class sparse_getrf_virtual_sequencer extends uvm_sequencer;         
        axi_pkg::axi_virtual_sequencer a_row_sqr; 
        axi_pkg::axi_virtual_sequencer a_col_sqr; 
        axi_pkg::axi_virtual_sequencer a_val_sqr; 
        axi_pkg::axi_virtual_sequencer l_row_sqr; 
        axi_pkg::axi_virtual_sequencer l_col_sqr; 
        axi_pkg::axi_virtual_sequencer l_val_sqr; 
        axi_pkg::axi_virtual_sequencer u_row_sqr; 
        axi_pkg::axi_virtual_sequencer u_col_sqr; 
        axi_pkg::axi_virtual_sequencer u_val_sqr; 
        axi_pkg::axi_virtual_sequencer control_r_sqr; 
        axi_pkg::axi_virtual_sequencer control_sqr; 
 
        function new (string name, uvm_component parent);              
            super.new(name, parent);                                   
            //`uvm_info(this.get_full_name(), "new is called", UVM_LOW)
        endfunction                                                    
                                                                       
        `uvm_component_utils_begin(sparse_getrf_virtual_sequencer)      
        `uvm_component_utils_end                                       
                                                                       
    endclass

`endif
