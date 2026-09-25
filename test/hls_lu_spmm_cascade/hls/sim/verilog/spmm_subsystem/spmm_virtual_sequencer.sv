//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SPMM_VIRTUAL_SEQUENCER__SV                        
    `define SPMM_VIRTUAL_SEQUENCER__SV                    
                                                                       
    class spmm_virtual_sequencer extends uvm_sequencer;         
        axi_pkg::axi_virtual_sequencer arcsr_sqr; 
        axi_pkg::axi_virtual_sequencer acid_sqr; 
        axi_pkg::axi_virtual_sequencer aval_sqr; 
        axi_pkg::axi_virtual_sequencer brcsr1_sqr; 
        axi_pkg::axi_virtual_sequencer brcsr2_sqr; 
        axi_pkg::axi_virtual_sequencer brcsr3_sqr; 
        axi_pkg::axi_virtual_sequencer brcsr4_sqr; 
        axi_pkg::axi_virtual_sequencer bval1_sqr; 
        axi_pkg::axi_virtual_sequencer bcid1_sqr; 
        axi_pkg::axi_virtual_sequencer bval2_sqr; 
        axi_pkg::axi_virtual_sequencer bcid2_sqr; 
        axi_pkg::axi_virtual_sequencer bval3_sqr; 
        axi_pkg::axi_virtual_sequencer bcid3_sqr; 
        axi_pkg::axi_virtual_sequencer bval4_sqr; 
        axi_pkg::axi_virtual_sequencer bcid4_sqr; 
        axi_pkg::axi_virtual_sequencer bv1_sqr; 
        axi_pkg::axi_virtual_sequencer bc1_sqr; 
        axi_pkg::axi_virtual_sequencer bv2_sqr; 
        axi_pkg::axi_virtual_sequencer bc2_sqr; 
        axi_pkg::axi_virtual_sequencer bv3_sqr; 
        axi_pkg::axi_virtual_sequencer bc3_sqr; 
        axi_pkg::axi_virtual_sequencer bv4_sqr; 
        axi_pkg::axi_virtual_sequencer bc4_sqr; 
        axi_pkg::axi_virtual_sequencer crcsr_sqr; 
        axi_pkg::axi_virtual_sequencer ccid_sqr; 
        axi_pkg::axi_virtual_sequencer cval_sqr; 
        axi_pkg::axi_virtual_sequencer control_sqr; 
        axi_pkg::axi_virtual_sequencer ctr_sqr; 
 
        function new (string name, uvm_component parent);              
            super.new(name, parent);                                   
            //`uvm_info(this.get_full_name(), "new is called", UVM_LOW)
        endfunction                                                    
                                                                       
        `uvm_component_utils_begin(spmm_virtual_sequencer)      
        `uvm_component_utils_end                                       
                                                                       
    endclass

`endif
