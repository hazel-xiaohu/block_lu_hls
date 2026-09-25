//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SPMM_CONFIG__SV                        
    `define SPMM_CONFIG__SV                    
                                                            
    class spmm_config extends uvm_object;            
                                                            
        int check_ena;                                      
        int cover_ena;                                      
        axi_pkg::axi_cfg arcsr_cfg;
        axi_pkg::axi_cfg acid_cfg;
        axi_pkg::axi_cfg aval_cfg;
        axi_pkg::axi_cfg brcsr1_cfg;
        axi_pkg::axi_cfg brcsr2_cfg;
        axi_pkg::axi_cfg brcsr3_cfg;
        axi_pkg::axi_cfg brcsr4_cfg;
        axi_pkg::axi_cfg bval1_cfg;
        axi_pkg::axi_cfg bcid1_cfg;
        axi_pkg::axi_cfg bval2_cfg;
        axi_pkg::axi_cfg bcid2_cfg;
        axi_pkg::axi_cfg bval3_cfg;
        axi_pkg::axi_cfg bcid3_cfg;
        axi_pkg::axi_cfg bval4_cfg;
        axi_pkg::axi_cfg bcid4_cfg;
        axi_pkg::axi_cfg bv1_cfg;
        axi_pkg::axi_cfg bc1_cfg;
        axi_pkg::axi_cfg bv2_cfg;
        axi_pkg::axi_cfg bc2_cfg;
        axi_pkg::axi_cfg bv3_cfg;
        axi_pkg::axi_cfg bc3_cfg;
        axi_pkg::axi_cfg bv4_cfg;
        axi_pkg::axi_cfg bc4_cfg;
        axi_pkg::axi_cfg crcsr_cfg;
        axi_pkg::axi_cfg ccid_cfg;
        axi_pkg::axi_cfg cval_cfg;
        axi_pkg::axi_cfg control_cfg;
        axi_pkg::axi_cfg ctr_cfg;

        `uvm_object_utils_begin(spmm_config)         
        `uvm_field_object(arcsr_cfg, UVM_DEFAULT);
        `uvm_field_object(acid_cfg, UVM_DEFAULT);
        `uvm_field_object(aval_cfg, UVM_DEFAULT);
        `uvm_field_object(brcsr1_cfg, UVM_DEFAULT);
        `uvm_field_object(brcsr2_cfg, UVM_DEFAULT);
        `uvm_field_object(brcsr3_cfg, UVM_DEFAULT);
        `uvm_field_object(brcsr4_cfg, UVM_DEFAULT);
        `uvm_field_object(bval1_cfg, UVM_DEFAULT);
        `uvm_field_object(bcid1_cfg, UVM_DEFAULT);
        `uvm_field_object(bval2_cfg, UVM_DEFAULT);
        `uvm_field_object(bcid2_cfg, UVM_DEFAULT);
        `uvm_field_object(bval3_cfg, UVM_DEFAULT);
        `uvm_field_object(bcid3_cfg, UVM_DEFAULT);
        `uvm_field_object(bval4_cfg, UVM_DEFAULT);
        `uvm_field_object(bcid4_cfg, UVM_DEFAULT);
        `uvm_field_object(bv1_cfg, UVM_DEFAULT);
        `uvm_field_object(bc1_cfg, UVM_DEFAULT);
        `uvm_field_object(bv2_cfg, UVM_DEFAULT);
        `uvm_field_object(bc2_cfg, UVM_DEFAULT);
        `uvm_field_object(bv3_cfg, UVM_DEFAULT);
        `uvm_field_object(bc3_cfg, UVM_DEFAULT);
        `uvm_field_object(bv4_cfg, UVM_DEFAULT);
        `uvm_field_object(bc4_cfg, UVM_DEFAULT);
        `uvm_field_object(crcsr_cfg, UVM_DEFAULT);
        `uvm_field_object(ccid_cfg, UVM_DEFAULT);
        `uvm_field_object(cval_cfg, UVM_DEFAULT);
        `uvm_field_object(control_cfg, UVM_DEFAULT);
        `uvm_field_object(ctr_cfg, UVM_DEFAULT);
        `uvm_field_int   (check_ena , UVM_DEFAULT)          
        `uvm_field_int   (cover_ena , UVM_DEFAULT)          
        `uvm_object_utils_end                               

        function new (string name = "spmm_config");
            super.new(name);                                
            arcsr_cfg = new("arcsr_cfg", 1);
            acid_cfg = new("acid_cfg", 1);
            aval_cfg = new("aval_cfg", 1);
            brcsr1_cfg = new("brcsr1_cfg", 1);
            brcsr2_cfg = new("brcsr2_cfg", 1);
            brcsr3_cfg = new("brcsr3_cfg", 1);
            brcsr4_cfg = new("brcsr4_cfg", 1);
            bval1_cfg = new("bval1_cfg", 1);
            bcid1_cfg = new("bcid1_cfg", 1);
            bval2_cfg = new("bval2_cfg", 1);
            bcid2_cfg = new("bcid2_cfg", 1);
            bval3_cfg = new("bval3_cfg", 1);
            bcid3_cfg = new("bcid3_cfg", 1);
            bval4_cfg = new("bval4_cfg", 1);
            bcid4_cfg = new("bcid4_cfg", 1);
            bv1_cfg = new("bv1_cfg", 1);
            bc1_cfg = new("bc1_cfg", 1);
            bv2_cfg = new("bv2_cfg", 1);
            bc2_cfg = new("bc2_cfg", 1);
            bv3_cfg = new("bv3_cfg", 1);
            bc3_cfg = new("bc3_cfg", 1);
            bv4_cfg = new("bv4_cfg", 1);
            bc4_cfg = new("bc4_cfg", 1);
            crcsr_cfg = new("crcsr_cfg", 1);
            ccid_cfg = new("ccid_cfg", 1);
            cval_cfg = new("cval_cfg", 1);
            control_cfg = axi_pkg::axi_cfg::type_id::create("control_cfg");
            ctr_cfg = axi_pkg::axi_cfg::type_id::create("ctr_cfg");
        endfunction                                         
                                                            
    endclass                                                
                                                            
`endif                                                      
