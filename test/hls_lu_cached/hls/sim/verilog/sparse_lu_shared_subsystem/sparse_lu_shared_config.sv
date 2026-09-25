//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SPARSE_LU_SHARED_CONFIG__SV                        
    `define SPARSE_LU_SHARED_CONFIG__SV                    
                                                            
    class sparse_lu_shared_config extends uvm_object;            
                                                            
        int check_ena;                                      
        int cover_ena;                                      
        axi_pkg::axi_cfg a_row_cfg;
        axi_pkg::axi_cfg a_col_cfg;
        axi_pkg::axi_cfg a_val_cfg;
        axi_pkg::axi_cfg l_row_cfg;
        axi_pkg::axi_cfg l_col_cfg;
        axi_pkg::axi_cfg l_val_cfg;
        axi_pkg::axi_cfg u_row_cfg;
        axi_pkg::axi_cfg u_col_cfg;
        axi_pkg::axi_cfg u_val_cfg;
        axi_pkg::axi_cfg x_row_cfg;
        axi_pkg::axi_cfg x_col_cfg;
        axi_pkg::axi_cfg x_val_cfg;
        axi_pkg::axi_cfg control_cfg;
        axi_pkg::axi_cfg control_r_cfg;

        `uvm_object_utils_begin(sparse_lu_shared_config)         
        `uvm_field_object(a_row_cfg, UVM_DEFAULT);
        `uvm_field_object(a_col_cfg, UVM_DEFAULT);
        `uvm_field_object(a_val_cfg, UVM_DEFAULT);
        `uvm_field_object(l_row_cfg, UVM_DEFAULT);
        `uvm_field_object(l_col_cfg, UVM_DEFAULT);
        `uvm_field_object(l_val_cfg, UVM_DEFAULT);
        `uvm_field_object(u_row_cfg, UVM_DEFAULT);
        `uvm_field_object(u_col_cfg, UVM_DEFAULT);
        `uvm_field_object(u_val_cfg, UVM_DEFAULT);
        `uvm_field_object(x_row_cfg, UVM_DEFAULT);
        `uvm_field_object(x_col_cfg, UVM_DEFAULT);
        `uvm_field_object(x_val_cfg, UVM_DEFAULT);
        `uvm_field_object(control_cfg, UVM_DEFAULT);
        `uvm_field_object(control_r_cfg, UVM_DEFAULT);
        `uvm_field_int   (check_ena , UVM_DEFAULT)          
        `uvm_field_int   (cover_ena , UVM_DEFAULT)          
        `uvm_object_utils_end                               

        function new (string name = "sparse_lu_shared_config");
            super.new(name);                                
            a_row_cfg = new("a_row_cfg", 1);
            a_col_cfg = new("a_col_cfg", 1);
            a_val_cfg = new("a_val_cfg", 1);
            l_row_cfg = new("l_row_cfg", 1);
            l_col_cfg = new("l_col_cfg", 1);
            l_val_cfg = new("l_val_cfg", 1);
            u_row_cfg = new("u_row_cfg", 1);
            u_col_cfg = new("u_col_cfg", 1);
            u_val_cfg = new("u_val_cfg", 1);
            x_row_cfg = new("x_row_cfg", 1);
            x_col_cfg = new("x_col_cfg", 1);
            x_val_cfg = new("x_val_cfg", 1);
            control_cfg = axi_pkg::axi_cfg::type_id::create("control_cfg");
            control_r_cfg = axi_pkg::axi_cfg::type_id::create("control_r_cfg");
        endfunction                                         
                                                            
    endclass                                                
                                                            
`endif                                                      
