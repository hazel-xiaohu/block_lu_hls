//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef SPMM_SCOREBOARD__SV                                                       
    `define SPMM_SCOREBOARD__SV                                                   
                                                                                               
                                                                                               
    class spmm_scoreboard extends uvm_component;                                        
                                                                                               
        spmm_reference_model refm;                                                      
                                                                                               
                                                                                               
        `uvm_component_utils_begin(spmm_scoreboard)                                     
        `uvm_field_object(refm  , UVM_DEFAULT)                                                 
        `uvm_component_utils_end                                                               
                                                                                               
        virtual function void build_phase(uvm_phase phase);                                    
            if (!uvm_config_db #(spmm_reference_model)::get(this, "", "refm", refm))
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
                end
                forever begin
                    @refm.allaxilite_write_data_finish;
                    `uvm_info(this.get_full_name(), "receive allaxilite_write_finish axilite write_mem_page_process", UVM_LOW)
                    void'(refm.mem_blk_pages_ctr_arnum.pages.pop_front());
                    void'(refm.mem_blk_pages_ctr_brnum.pages.pop_front());
                    void'(refm.mem_blk_pages_ctr_B_rcsr_base.pages.pop_front());
                    void'(refm.mem_blk_pages_ctr_B_val_base.pages.pop_front());
                    void'(refm.mem_blk_pages_ctr_B_cid_base.pages.pop_front());
                end
                forever begin
                    @refm.allaxilite_read_data_finish;
                    `uvm_info(this.get_full_name(), "receive allaxilite_read_finish axilite_read_mem_page_process", UVM_LOW)
                    refm.mem_blk_pages_ctr_r1acc.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_r1hit.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_r2acc.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_r2hit.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_r3acc.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_r3hit.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_r4acc.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_r4hit.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_vc1acc.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_vc1hit.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_vc2acc.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_vc2hit.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_vc3acc.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_vc3hit.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_vc4acc.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_vc4hit.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_fnum.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_workload_counter1.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_workload_counter2.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_workload_counter3.tvout_dump_frontpage(1);
                    refm.mem_blk_pages_ctr_workload_counter4.tvout_dump_frontpage(1);
                end
                                                                                               
                forever begin
                    @refm.dut2tb_ap_done;
                    `uvm_info(this.get_full_name(), "receive dut2tb_ap_done and do axim dump", UVM_LOW)
                            refm.mem_blk_pages_arcsr.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_acid.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_aval.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_brcsr1.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_brcsr2.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_brcsr3.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_brcsr4.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bval1.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bcid1.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bval2.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bcid2.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bval3.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bcid3.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bval4.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bcid4.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bv1.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bc1.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bv2.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bc2.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bv3.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bc3.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bv4.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_bc4.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_crcsr.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_ccid.tvout_dump_frontpage(0);
                            refm.mem_blk_pages_cval.tvout_dump_frontpage(1);
                end                                                                            
                begin                                                                          
                    @refm.finish;                                                              
                    `uvm_info(this.get_full_name(), "receive FINISH", UVM_LOW)               
                end                                                                            
            join                                                                               
        endtask                                                                                
                                                                                               
        virtual function void write_axi_wtr_arcsr(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_arcsr(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_acid(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_acid(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_aval(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_aval(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_brcsr1(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_brcsr1(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_brcsr2(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_brcsr2(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_brcsr3(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_brcsr3(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_brcsr4(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_brcsr4(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bval1(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bval1(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bcid1(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bcid1(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bval2(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bval2(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bcid2(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bcid2(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bval3(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bval3(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bcid3(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bcid3(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bval4(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bval4(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bcid4(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bcid4(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bv1(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bv1(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bc1(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bc1(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bv2(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bv2(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bc2(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bc2(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bv3(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bv3(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bc3(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bc3(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bv4(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bv4(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_bc4(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_bc4(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_crcsr(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_crcsr(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_ccid(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_ccid(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_cval(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_cval(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_control(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_control(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_wtr_ctr(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_ctr(axi_pkg::axi_transfer tr);
        endfunction

    endclass                                                                                   
                                                                                               
`endif                                                                                         
