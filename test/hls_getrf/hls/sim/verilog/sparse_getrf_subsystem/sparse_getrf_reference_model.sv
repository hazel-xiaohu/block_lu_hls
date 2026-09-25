//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SPARSE_GETRF_REFERENCE_MODEL_SV
`define SPARSE_GETRF_REFERENCE_MODEL_SV
typedef class sparse_getrf_reference_model;
class memaccess_axi_state_cbs extends axi_pkg::axi_state_cbs;
    sparse_getrf_reference_model refm;
    string memid;
    //function new(string name="memaccess_axi_state_cbs");
    //    super.new(name);
    //endfunction
    virtual function void memmodel_read_fromar(ref logic[7:0] data[$], input longint addr, input longint len);
        if(memid=="a_row") refm.mem_blk_pages_a_row.read_elems_pipepage(data, addr, len);
        if(memid=="a_col") refm.mem_blk_pages_a_col.read_elems_pipepage(data, addr, len);
        if(memid=="a_val") refm.mem_blk_pages_a_val.read_elems_pipepage(data, addr, len);
        if(memid=="l_row") refm.mem_blk_pages_l_row.read_elems_pipepage(data, addr, len);
        if(memid=="l_col") refm.mem_blk_pages_l_col.read_elems_pipepage(data, addr, len);
        if(memid=="l_val") refm.mem_blk_pages_l_val.read_elems_pipepage(data, addr, len);
        if(memid=="u_row") refm.mem_blk_pages_u_row.read_elems_pipepage(data, addr, len);
        if(memid=="u_col") refm.mem_blk_pages_u_col.read_elems_pipepage(data, addr, len);
        if(memid=="u_val") refm.mem_blk_pages_u_val.read_elems_pipepage(data, addr, len);
    endfunction
endclass

class sparse_getrf_reference_model extends uvm_component;
`define TV_IN_a_row "../tv/cdatafile/c.sparse_getrf.autotvin_a_row.dat"
`define TV_OUT_a_row "../tv/rtldatafile/rtl.sparse_getrf.autotvout_a_row.dat"
`define TV_IN_OFFSET_A_rcsr "../tv/cdatafile/c.sparse_getrf.autotvin_A_rcsr.dat"
`define TV_IN_a_col "../tv/cdatafile/c.sparse_getrf.autotvin_a_col.dat"
`define TV_OUT_a_col "../tv/rtldatafile/rtl.sparse_getrf.autotvout_a_col.dat"
`define TV_IN_OFFSET_A_cid "../tv/cdatafile/c.sparse_getrf.autotvin_A_cid.dat"
`define TV_IN_a_val "../tv/cdatafile/c.sparse_getrf.autotvin_a_val.dat"
`define TV_OUT_a_val "../tv/rtldatafile/rtl.sparse_getrf.autotvout_a_val.dat"
`define TV_IN_OFFSET_A_val_r "../tv/cdatafile/c.sparse_getrf.autotvin_A_val_r.dat"
`define TV_IN_l_row "../tv/cdatafile/c.sparse_getrf.autotvin_l_row.dat"
`define TV_OUT_l_row "../tv/rtldatafile/rtl.sparse_getrf.autotvout_l_row.dat"
`define TV_IN_OFFSET_L_rcsr "../tv/cdatafile/c.sparse_getrf.autotvin_L_rcsr.dat"
`define TV_IN_l_col "../tv/cdatafile/c.sparse_getrf.autotvin_l_col.dat"
`define TV_OUT_l_col "../tv/rtldatafile/rtl.sparse_getrf.autotvout_l_col.dat"
`define TV_IN_OFFSET_L_cid "../tv/cdatafile/c.sparse_getrf.autotvin_L_cid.dat"
`define TV_IN_l_val "../tv/cdatafile/c.sparse_getrf.autotvin_l_val.dat"
`define TV_OUT_l_val "../tv/rtldatafile/rtl.sparse_getrf.autotvout_l_val.dat"
`define TV_IN_OFFSET_L_val_r "../tv/cdatafile/c.sparse_getrf.autotvin_L_val_r.dat"
`define TV_IN_u_row "../tv/cdatafile/c.sparse_getrf.autotvin_u_row.dat"
`define TV_OUT_u_row "../tv/rtldatafile/rtl.sparse_getrf.autotvout_u_row.dat"
`define TV_IN_OFFSET_U_rcsr "../tv/cdatafile/c.sparse_getrf.autotvin_U_rcsr.dat"
`define TV_IN_u_col "../tv/cdatafile/c.sparse_getrf.autotvin_u_col.dat"
`define TV_OUT_u_col "../tv/rtldatafile/rtl.sparse_getrf.autotvout_u_col.dat"
`define TV_IN_OFFSET_U_cid "../tv/cdatafile/c.sparse_getrf.autotvin_U_cid.dat"
`define TV_IN_u_val "../tv/cdatafile/c.sparse_getrf.autotvin_u_val.dat"
`define TV_OUT_u_val "../tv/rtldatafile/rtl.sparse_getrf.autotvout_u_val.dat"
`define TV_IN_OFFSET_U_val_r "../tv/cdatafile/c.sparse_getrf.autotvin_U_val_r.dat"
`define TV_IN_A_rcsr "../tv/cdatafile/c.sparse_getrf.autotvin_A_rcsr.dat"
`define TV_OUT_A_rcsr ""
`define TV_IN_A_cid "../tv/cdatafile/c.sparse_getrf.autotvin_A_cid.dat"
`define TV_OUT_A_cid ""
`define TV_IN_A_val_r "../tv/cdatafile/c.sparse_getrf.autotvin_A_val_r.dat"
`define TV_OUT_A_val_r ""
`define TV_IN_L_rcsr "../tv/cdatafile/c.sparse_getrf.autotvin_L_rcsr.dat"
`define TV_OUT_L_rcsr ""
`define TV_IN_L_cid "../tv/cdatafile/c.sparse_getrf.autotvin_L_cid.dat"
`define TV_OUT_L_cid ""
`define TV_IN_L_val_r "../tv/cdatafile/c.sparse_getrf.autotvin_L_val_r.dat"
`define TV_OUT_L_val_r ""
`define TV_IN_U_rcsr "../tv/cdatafile/c.sparse_getrf.autotvin_U_rcsr.dat"
`define TV_OUT_U_rcsr ""
`define TV_IN_U_cid "../tv/cdatafile/c.sparse_getrf.autotvin_U_cid.dat"
`define TV_OUT_U_cid ""
`define TV_IN_U_val_r "../tv/cdatafile/c.sparse_getrf.autotvin_U_val_r.dat"
`define TV_OUT_U_val_r ""
`define TV_IN_n "../tv/cdatafile/c.sparse_getrf.autotvin_n.dat"
`define TV_OUT_n ""
`define TV_IN_a_nnz "../tv/cdatafile/c.sparse_getrf.autotvin_a_nnz.dat"
`define TV_OUT_a_nnz ""
`define TV_IN_l_nnz "../tv/cdatafile/c.sparse_getrf.autotvin_l_nnz.dat"
`define TV_OUT_l_nnz ""
`define TV_IN_u_nnz "../tv/cdatafile/c.sparse_getrf.autotvin_u_nnz.dat"
`define TV_OUT_u_nnz ""
`define TV_IN_pivot_eps "../tv/cdatafile/c.sparse_getrf.autotvin_pivot_eps.dat"
`define TV_OUT_pivot_eps ""
`define TV_IN_status ""
`define TV_OUT_status "../tv/rtldatafile/rtl.sparse_getrf.autotvout_status.dat"
`define TV_IN_failed_row ""
`define TV_OUT_failed_row "../tv/rtldatafile/rtl.sparse_getrf.autotvout_failed_row.dat"
    bit  write_data_finish_control_r;
    bit  read_data_finish_control;
    bit  write_data_finish_control;
    event allaxilite_read_data_finish;
    event allaxilite_read_one_transaction_finish;
    event allaxilite_write_data_finish;
    event allaxilite_write_one_transaction_finish;
    event write_start_finish;
    int trans_num_total = 1;
    int trans_num_idx;
    int ap_done_cnt=1;
    event dut2tb_ap_ready;
    event dut2tb_ap_done;
    event ap_ready_for_nexttrans;
    event ap_done_for_nexttrans;
    event finish;
    sparse_getrf_config sparse_getrf_cfg;
    virtual interface misc_interface misc_if;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_a_row;
    int blk_id_a_row = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_a_row;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_a_col;
    int blk_id_a_col = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_a_col;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_a_val;
    int blk_id_a_val = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_a_val;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_l_row;
    int blk_id_l_row = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_l_row;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_l_col;
    int blk_id_l_col = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_l_col;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_l_val;
    int blk_id_l_val = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_l_val;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_u_row;
    int blk_id_u_row = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_u_row;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_u_col;
    int blk_id_u_col = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_u_col;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_u_val;
    int blk_id_u_val = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_u_val;

    mem_model_pages#(32,8) mem_blk_pages_control_n;
    mem_model_pages#(32,8) mem_blk_pages_control_a_nnz;
    mem_model_pages#(32,8) mem_blk_pages_control_l_nnz;
    mem_model_pages#(32,8) mem_blk_pages_control_u_nnz;
    mem_model_pages#(32,8) mem_blk_pages_control_pivot_eps;
    mem_model_pages#(32,8) mem_blk_pages_control_status;
    mem_model_pages#(32,8) mem_blk_pages_control_failed_row;
    
    `uvm_component_utils_begin(sparse_getrf_reference_model)
        `uvm_field_int (trans_num_idx, UVM_DEFAULT)
    `uvm_component_utils_end

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual misc_interface)::get(this, "", "misc_if", misc_if))
            `uvm_fatal(this.get_full_name(), "No misc_if from high level")
        axi_memaccess_cb_a_row = new;
        axi_memaccess_cb_a_row.refm = this;
        axi_memaccess_cb_a_row.memid = "a_row";
        axi_memaccess_cb_a_col = new;
        axi_memaccess_cb_a_col.refm = this;
        axi_memaccess_cb_a_col.memid = "a_col";
        axi_memaccess_cb_a_val = new;
        axi_memaccess_cb_a_val.refm = this;
        axi_memaccess_cb_a_val.memid = "a_val";
        axi_memaccess_cb_l_row = new;
        axi_memaccess_cb_l_row.refm = this;
        axi_memaccess_cb_l_row.memid = "l_row";
        axi_memaccess_cb_l_col = new;
        axi_memaccess_cb_l_col.refm = this;
        axi_memaccess_cb_l_col.memid = "l_col";
        axi_memaccess_cb_l_val = new;
        axi_memaccess_cb_l_val.refm = this;
        axi_memaccess_cb_l_val.memid = "l_val";
        axi_memaccess_cb_u_row = new;
        axi_memaccess_cb_u_row.refm = this;
        axi_memaccess_cb_u_row.memid = "u_row";
        axi_memaccess_cb_u_col = new;
        axi_memaccess_cb_u_col.refm = this;
        axi_memaccess_cb_u_col.memid = "u_col";
        axi_memaccess_cb_u_val = new;
        axi_memaccess_cb_u_val.refm = this;
        axi_memaccess_cb_u_val.memid = "u_val";
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new (name, parent);
        trans_num_idx= 0;
    endfunction

    virtual task run_phase(uvm_phase phase);
        string fpath[$];
misc_if.dut2tb_ap_done = 0;

        fpath.push_back(`TV_IN_n);
        mem_blk_pages_control_n = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_control_n");
        mem_blk_pages_control_n.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 16);
        fpath.delete;


        fpath.push_back(`TV_IN_a_nnz);
        mem_blk_pages_control_a_nnz = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_control_a_nnz");
        mem_blk_pages_control_a_nnz.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 24);
        fpath.delete;


        fpath.push_back(`TV_IN_l_nnz);
        mem_blk_pages_control_l_nnz = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_control_l_nnz");
        mem_blk_pages_control_l_nnz.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 32);
        fpath.delete;


        fpath.push_back(`TV_IN_u_nnz);
        mem_blk_pages_control_u_nnz = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_control_u_nnz");
        mem_blk_pages_control_u_nnz.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 40);
        fpath.delete;


        fpath.push_back(`TV_IN_pivot_eps);
        mem_blk_pages_control_pivot_eps = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_control_pivot_eps");
        mem_blk_pages_control_pivot_eps.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 48);
        fpath.delete;


        mem_blk_pages_control_status = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_control_status");
        mem_blk_pages_control_status.init_pages(trans_num_total, 1*((32+7)/8), 56);
        mem_blk_pages_control_status.tvoutdump_atinit(`TV_OUT_status);


        mem_blk_pages_control_failed_row = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_control_failed_row");
        mem_blk_pages_control_failed_row.init_pages(trans_num_total, 1*((32+7)/8), 72);
        mem_blk_pages_control_failed_row.tvoutdump_atinit(`TV_OUT_failed_row);

        fpath.push_back(`TV_IN_a_row);
        mem_blk_pages_a_row = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_a_row");
        mem_blk_pages_a_row.whole_page_size=324;
        mem_blk_pages_a_row.maxi_bundlevar_fpath["A_rcsr"]=`TV_IN_OFFSET_A_rcsr;
        mem_blk_pages_a_row.set_binary(1);
        mem_blk_pages_a_row.tvinload_pagechk_atinit(fpath, 65*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_a_col);
        mem_blk_pages_a_col = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_a_col");
        mem_blk_pages_a_col.whole_page_size=4160;
        mem_blk_pages_a_col.maxi_bundlevar_fpath["A_cid"]=`TV_IN_OFFSET_A_cid;
        mem_blk_pages_a_col.set_binary(1);
        mem_blk_pages_a_col.tvinload_pagechk_atinit(fpath, 1024*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_a_val);
        mem_blk_pages_a_val = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_a_val");
        mem_blk_pages_a_val.whole_page_size=4160;
        mem_blk_pages_a_val.maxi_bundlevar_fpath["A_val_r"]=`TV_IN_OFFSET_A_val_r;
        mem_blk_pages_a_val.set_binary(1);
        mem_blk_pages_a_val.tvinload_pagechk_atinit(fpath, 1024*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_l_row);
        mem_blk_pages_l_row = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_l_row");
        mem_blk_pages_l_row.whole_page_size=324;
        mem_blk_pages_l_row.maxi_bundlevar_fpath["L_rcsr"]=`TV_IN_OFFSET_L_rcsr;
        mem_blk_pages_l_row.set_binary(1);
        mem_blk_pages_l_row.tvinload_pagechk_atinit(fpath, 65*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_l_col);
        mem_blk_pages_l_col = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_l_col");
        mem_blk_pages_l_col.whole_page_size=8256;
        mem_blk_pages_l_col.maxi_bundlevar_fpath["L_cid"]=`TV_IN_OFFSET_L_cid;
        mem_blk_pages_l_col.set_binary(1);
        mem_blk_pages_l_col.tvinload_pagechk_atinit(fpath, 2048*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_l_val);
        mem_blk_pages_l_val = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_l_val");
        mem_blk_pages_l_val.whole_page_size=8256;
        mem_blk_pages_l_val.maxi_bundlevar_fpath["L_val_r"]=`TV_IN_OFFSET_L_val_r;
        mem_blk_pages_l_val.set_binary(1);
        mem_blk_pages_l_val.tvinload_pagechk_atinit(fpath, 2048*((32+7)/8), 0, 0);
        mem_blk_pages_l_val.tvoutdump_atinit(`TV_OUT_l_val);
        fpath.delete();

        fpath.push_back(`TV_IN_u_row);
        mem_blk_pages_u_row = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_u_row");
        mem_blk_pages_u_row.whole_page_size=324;
        mem_blk_pages_u_row.maxi_bundlevar_fpath["U_rcsr"]=`TV_IN_OFFSET_U_rcsr;
        mem_blk_pages_u_row.set_binary(1);
        mem_blk_pages_u_row.tvinload_pagechk_atinit(fpath, 65*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_u_col);
        mem_blk_pages_u_col = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_u_col");
        mem_blk_pages_u_col.whole_page_size=8256;
        mem_blk_pages_u_col.maxi_bundlevar_fpath["U_cid"]=`TV_IN_OFFSET_U_cid;
        mem_blk_pages_u_col.set_binary(1);
        mem_blk_pages_u_col.tvinload_pagechk_atinit(fpath, 2048*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_u_val);
        mem_blk_pages_u_val = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_u_val");
        mem_blk_pages_u_val.whole_page_size=8256;
        mem_blk_pages_u_val.maxi_bundlevar_fpath["U_val_r"]=`TV_IN_OFFSET_U_val_r;
        mem_blk_pages_u_val.set_binary(1);
        mem_blk_pages_u_val.tvinload_pagechk_atinit(fpath, 2048*((32+7)/8), 0, 0);
        mem_blk_pages_u_val.tvoutdump_atinit(`TV_OUT_u_val);
        fpath.delete();

        fork
            forever begin
                wait(write_data_finish_control_r&&write_data_finish_control);
                `uvm_info("", "trigger_allaxilite_data_write_finish", UVM_LOW)
                @(posedge misc_if.clock);
                write_data_finish_control_r = 0;
                write_data_finish_control = 0;
                -> allaxilite_write_data_finish;
            end
            forever begin
                wait(read_data_finish_control);
                `uvm_info("", "trigger_allaxilite_data_read_finish", UVM_LOW)
                @(posedge misc_if.clock);
                read_data_finish_control = 0;
                -> allaxilite_read_data_finish;
            end
            forever begin
                //this is non-pipeline case
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                @allaxilite_read_data_finish;
                @(posedge misc_if.clock);
                @allaxilite_write_data_finish;
                @(posedge misc_if.clock);
                -> ap_ready_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_ready_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_ready_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_ready_for_nexttrans = 0;
                    end
                join_none
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        -> misc_if.dut2tb_ap_done_evt;
                        #0;
                        -> misc_if.dut2tb_ap_ready_evt;
                    end
                join_none
                @allaxilite_read_data_finish;
                @(posedge misc_if.clock);
                -> ap_done_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_done_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_done_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_done_for_nexttrans = 0;
                    end
                join_none
            end

            for(int i=1; i<1; i++) begin
                @dut2tb_ap_ready;
                mem_blk_pages_a_row.incr_rd_page_idx() ;
                mem_blk_pages_a_col.incr_rd_page_idx() ;
                mem_blk_pages_a_val.incr_rd_page_idx() ;
                mem_blk_pages_l_row.incr_rd_page_idx() ;
                mem_blk_pages_l_col.incr_rd_page_idx() ;
                mem_blk_pages_l_val.incr_rd_page_idx() ;
                mem_blk_pages_u_row.incr_rd_page_idx() ;
                mem_blk_pages_u_col.incr_rd_page_idx() ;
                mem_blk_pages_u_val.incr_rd_page_idx() ;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_ready === 1)   break;
                end
                @(posedge misc_if.clock);
                `uvm_info(this.get_full_name(), "trigger event DUT2TB_AP_READY", UVM_LOW)
                -> dut2tb_ap_ready;
                 misc_if.tb2dut_ap_start = 0;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_done_kernel === 1)   break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        `uvm_info(this.get_full_name(), "trigger event dut2tb_ap_done_kernel_evt", UVM_LOW)
                        -> misc_if.dut2tb_ap_done_kernel_evt;
                    end
                join_none
            end
        join
    endtask

    virtual function void write_axi_wtr_a_row(axi_pkg::axi_transfer tr);
        mem_blk_pages_a_row.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_a_row(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_a_col(axi_pkg::axi_transfer tr);
        mem_blk_pages_a_col.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_a_col(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_a_val(axi_pkg::axi_transfer tr);
        mem_blk_pages_a_val.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_a_val(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_l_row(axi_pkg::axi_transfer tr);
        mem_blk_pages_l_row.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_l_row(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_l_col(axi_pkg::axi_transfer tr);
        mem_blk_pages_l_col.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_l_col(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_l_val(axi_pkg::axi_transfer tr);
        mem_blk_pages_l_val.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_l_val(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_u_row(axi_pkg::axi_transfer tr);
        mem_blk_pages_u_row.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_u_row(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_u_col(axi_pkg::axi_transfer tr);
        mem_blk_pages_u_col.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_u_col(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_u_val(axi_pkg::axi_transfer tr);
        mem_blk_pages_u_val.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_u_val(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_control_r(axi_pkg::axi_transfer tr);
    endfunction
    virtual function void write_axi_rtr_control_r(axi_pkg::axi_transfer tr);
            `uvm_info("receive axi read data", tr.sprint(), UVM_HIGH)
        if(0) begin //no block ctrl register processing
        end else begin
        end
    endfunction

    virtual function void write_axi_wtr_control(axi_pkg::axi_transfer tr);
        if(tr.addr == 0 && tr.len == 0 && tr.data[0][0]==1) begin //addr 0 and bit 0 are parameter
            -> write_start_finish;
            misc_if.tb2dut_ap_start = 1;
        end
    endfunction
    virtual function void write_axi_rtr_control(axi_pkg::axi_transfer tr);
            `uvm_info("receive axi read data", tr.sprint(), UVM_HIGH)
        if(tr.addr == 0 && tr.len == 0) begin
            if(tr.data[0][1]==1) begin  //bit 1 is parameter
                `uvm_info("status polling", "ap_done is polled", UVM_LOW);
                fork
                    begin
                        misc_if.dut2tb_ap_done = 1;
                        @(posedge misc_if.clock);
                        #0;
                        misc_if.dut2tb_ap_done = 0;
                        misc_if.tb2dut_ap_continue = 0;
                        -> dut2tb_ap_done;
                    end
                join_none
            end
            begin
                misc_if.dut2tb_ap_idle = tr.data[0][2];
            end
        end else begin
            mem_blk_pages_control_status.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_control_failed_row.write_elems_frontpage(tr.data, tr.byte_addr);
        end
    endfunction
endclass
`endif
