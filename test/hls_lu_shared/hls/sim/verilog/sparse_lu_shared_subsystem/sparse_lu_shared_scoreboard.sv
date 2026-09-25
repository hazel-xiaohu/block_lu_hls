//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SPARSE_LU_SHARED_SCOREBOARD__SV                                                       
    `define SPARSE_LU_SHARED_SCOREBOARD__SV                                                   
                                                                                               
                                                                                               
    class sparse_lu_shared_scoreboard extends uvm_component;                                        
                                                                                               
        sparse_lu_shared_reference_model refm;                                                      
                                                                                               
                                                                                               
        `uvm_component_utils_begin(sparse_lu_shared_scoreboard)                                     
        `uvm_field_object(refm  , UVM_DEFAULT)                                                 
        `uvm_component_utils_end                                                               
                                                                                               
        virtual function void build_phase(uvm_phase phase);                                    
            if (!uvm_config_db #(sparse_lu_shared_reference_model)::get(this, "", "refm", refm))
                `uvm_fatal(this.get_full_name(), "No refm from high level")                  
            `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM) 
                                                                                               
        endfunction                                                                            
                                                                                               
        function new (string name = "", uvm_component parent = null);                        
            super.new(name, parent);                                                           
        endfunction                                                                            
                                                                                               
        virtual task run_phase(uvm_phase phase);                                               

            fork                                                                               
                forever begin
                    @refm.allaxilite_write_data_finish;
                    `uvm_info(this.get_full_name(), "receive allaxilite_write_finish axilite write_mem_page_process", UVM_LOW)
                    void'(refm.mem_blk_pages_control_operation.pages.pop_front());
                    void'(refm.mem_blk_pages_control_n.pages.pop_front());
                    void'(refm.mem_blk_pages_control_a_nnz.pages.pop_front());
                    void'(refm.mem_blk_pages_control_l_nnz.pages.pop_front());
                    void'(refm.mem_blk_pages_control_u_nnz.pages.pop_front());
                    void'(refm.mem_blk_pages_control_x_rows.pages.pop_front());
                    void'(refm.mem_blk_pages_control_x_cols.pages.pop_front());
                    void'(refm.mem_blk_pages_control_x_nnz.pages.pop_front());
                    void'(refm.mem_blk_pages_control_pivot_eps.pages.pop_front());
                end
                forever begin
                    @refm.allaxilite_read_data_finish;
                    `uvm_info(this.get_full_name(), "receive allaxilite_read_finish axilite_read_mem_page_process", UVM_LOW)
                    refm.mem_blk_pages_control_status.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_control_failed_row.tvout_dump_frontpage(1);
                end
                forever begin
                    @refm.allaxilite_write_data_finish;
                    `uvm_info(this.get_full_name(), "receive allaxilite_write_finish axilite write_mem_page_process", UVM_LOW)
                end
                                                                                               
                forever begin
                    @refm.dut2tb_ap_done;
                    `uvm_info(this.get_full_name(), "receive dut2tb_ap_done and do axim dump", UVM_LOW)
                            refm.mem_blk_pages_a_row.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_a_col.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_a_val.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_l_row.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_l_col.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_l_val.tvout_dump_frontpage(1);
                            refm.mem_blk_pages_u_row.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_u_col.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_u_val.tvout_dump_frontpage(1);
                            refm.mem_blk_pages_x_row.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_x_col.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_x_val.tvout_dump_frontpage(1);
                end                                                                            
                begin                                                                          
                    @refm.finish;                                                              
                    `uvm_info(this.get_full_name(), "receive FINISH", UVM_LOW)               
                end                                                                            
            join                                                                               
        endtask                                                                                
                                                                                               
        virtual function void write_axi_wtr_a_row(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_a_row(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_a_col(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_a_col(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_a_val(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_a_val(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_l_row(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_l_row(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_l_col(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_l_col(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_l_val(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_l_val(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_u_row(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_u_row(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_u_col(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_u_col(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_u_val(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_u_val(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_x_row(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_x_row(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_x_col(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_x_col(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_x_val(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_x_val(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_control(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_control(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_control_r(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_control_r(axi_pkg::axi_transfer tr);
        endfunction

    endclass                                                                                   
                                                                                               
`endif                                                                                         
