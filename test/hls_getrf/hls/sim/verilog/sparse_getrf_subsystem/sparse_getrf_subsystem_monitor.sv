//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SPARSE_GETRF_SUBSYSTEM_MONITOR_SV
`define SPARSE_GETRF_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_axi_wtr_a_row)
`uvm_analysis_imp_decl(_axi_rtr_a_row)
`uvm_analysis_imp_decl(_axi_wtr_a_col)
`uvm_analysis_imp_decl(_axi_rtr_a_col)
`uvm_analysis_imp_decl(_axi_wtr_a_val)
`uvm_analysis_imp_decl(_axi_rtr_a_val)
`uvm_analysis_imp_decl(_axi_wtr_l_row)
`uvm_analysis_imp_decl(_axi_rtr_l_row)
`uvm_analysis_imp_decl(_axi_wtr_l_col)
`uvm_analysis_imp_decl(_axi_rtr_l_col)
`uvm_analysis_imp_decl(_axi_wtr_l_val)
`uvm_analysis_imp_decl(_axi_rtr_l_val)
`uvm_analysis_imp_decl(_axi_wtr_u_row)
`uvm_analysis_imp_decl(_axi_rtr_u_row)
`uvm_analysis_imp_decl(_axi_wtr_u_col)
`uvm_analysis_imp_decl(_axi_rtr_u_col)
`uvm_analysis_imp_decl(_axi_wtr_u_val)
`uvm_analysis_imp_decl(_axi_rtr_u_val)
`uvm_analysis_imp_decl(_axi_wtr_control_r)
`uvm_analysis_imp_decl(_axi_rtr_control_r)
`uvm_analysis_imp_decl(_axi_wtr_control)
`uvm_analysis_imp_decl(_axi_rtr_control)

class sparse_getrf_subsystem_monitor extends uvm_component;

    sparse_getrf_reference_model refm;
    sparse_getrf_scoreboard scbd;

    `uvm_component_utils_begin(sparse_getrf_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_axi_wtr_a_row#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) a_row_wtr_imp;
    uvm_analysis_imp_axi_rtr_a_row#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) a_row_rtr_imp;
    uvm_analysis_imp_axi_wtr_a_col#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) a_col_wtr_imp;
    uvm_analysis_imp_axi_rtr_a_col#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) a_col_rtr_imp;
    uvm_analysis_imp_axi_wtr_a_val#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) a_val_wtr_imp;
    uvm_analysis_imp_axi_rtr_a_val#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) a_val_rtr_imp;
    uvm_analysis_imp_axi_wtr_l_row#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) l_row_wtr_imp;
    uvm_analysis_imp_axi_rtr_l_row#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) l_row_rtr_imp;
    uvm_analysis_imp_axi_wtr_l_col#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) l_col_wtr_imp;
    uvm_analysis_imp_axi_rtr_l_col#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) l_col_rtr_imp;
    uvm_analysis_imp_axi_wtr_l_val#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) l_val_wtr_imp;
    uvm_analysis_imp_axi_rtr_l_val#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) l_val_rtr_imp;
    uvm_analysis_imp_axi_wtr_u_row#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) u_row_wtr_imp;
    uvm_analysis_imp_axi_rtr_u_row#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) u_row_rtr_imp;
    uvm_analysis_imp_axi_wtr_u_col#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) u_col_wtr_imp;
    uvm_analysis_imp_axi_rtr_u_col#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) u_col_rtr_imp;
    uvm_analysis_imp_axi_wtr_u_val#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) u_val_wtr_imp;
    uvm_analysis_imp_axi_rtr_u_val#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) u_val_rtr_imp;
    uvm_analysis_imp_axi_wtr_control_r#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) control_r_wtr_imp;
    uvm_analysis_imp_axi_rtr_control_r#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) control_r_rtr_imp;
    uvm_analysis_imp_axi_wtr_control#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) control_wtr_imp;
    uvm_analysis_imp_axi_rtr_control#(axi_pkg::axi_transfer, sparse_getrf_subsystem_monitor) control_rtr_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(sparse_getrf_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = sparse_getrf_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        a_row_wtr_imp = new("a_row_wtr_imp", this);
        a_row_rtr_imp = new("a_row_rtr_imp", this);
        a_col_wtr_imp = new("a_col_wtr_imp", this);
        a_col_rtr_imp = new("a_col_rtr_imp", this);
        a_val_wtr_imp = new("a_val_wtr_imp", this);
        a_val_rtr_imp = new("a_val_rtr_imp", this);
        l_row_wtr_imp = new("l_row_wtr_imp", this);
        l_row_rtr_imp = new("l_row_rtr_imp", this);
        l_col_wtr_imp = new("l_col_wtr_imp", this);
        l_col_rtr_imp = new("l_col_rtr_imp", this);
        l_val_wtr_imp = new("l_val_wtr_imp", this);
        l_val_rtr_imp = new("l_val_rtr_imp", this);
        u_row_wtr_imp = new("u_row_wtr_imp", this);
        u_row_rtr_imp = new("u_row_rtr_imp", this);
        u_col_wtr_imp = new("u_col_wtr_imp", this);
        u_col_rtr_imp = new("u_col_rtr_imp", this);
        u_val_wtr_imp = new("u_val_wtr_imp", this);
        u_val_rtr_imp = new("u_val_rtr_imp", this);
        control_r_wtr_imp = new("control_r_wtr_imp", this);
        control_r_rtr_imp = new("control_r_rtr_imp", this);
        control_wtr_imp = new("control_wtr_imp", this);
        control_rtr_imp = new("control_rtr_imp", this);
    endfunction

    virtual function void write_axi_wtr_a_row(axi_transfer tr);
        refm.write_axi_wtr_a_row(tr);
        scbd.write_axi_wtr_a_row(tr);
    endfunction

    virtual function void write_axi_rtr_a_row(axi_transfer tr);
        refm.write_axi_rtr_a_row(tr);
        scbd.write_axi_rtr_a_row(tr);
    endfunction

    virtual function void write_axi_wtr_a_col(axi_transfer tr);
        refm.write_axi_wtr_a_col(tr);
        scbd.write_axi_wtr_a_col(tr);
    endfunction

    virtual function void write_axi_rtr_a_col(axi_transfer tr);
        refm.write_axi_rtr_a_col(tr);
        scbd.write_axi_rtr_a_col(tr);
    endfunction

    virtual function void write_axi_wtr_a_val(axi_transfer tr);
        refm.write_axi_wtr_a_val(tr);
        scbd.write_axi_wtr_a_val(tr);
    endfunction

    virtual function void write_axi_rtr_a_val(axi_transfer tr);
        refm.write_axi_rtr_a_val(tr);
        scbd.write_axi_rtr_a_val(tr);
    endfunction

    virtual function void write_axi_wtr_l_row(axi_transfer tr);
        refm.write_axi_wtr_l_row(tr);
        scbd.write_axi_wtr_l_row(tr);
    endfunction

    virtual function void write_axi_rtr_l_row(axi_transfer tr);
        refm.write_axi_rtr_l_row(tr);
        scbd.write_axi_rtr_l_row(tr);
    endfunction

    virtual function void write_axi_wtr_l_col(axi_transfer tr);
        refm.write_axi_wtr_l_col(tr);
        scbd.write_axi_wtr_l_col(tr);
    endfunction

    virtual function void write_axi_rtr_l_col(axi_transfer tr);
        refm.write_axi_rtr_l_col(tr);
        scbd.write_axi_rtr_l_col(tr);
    endfunction

    virtual function void write_axi_wtr_l_val(axi_transfer tr);
        refm.write_axi_wtr_l_val(tr);
        scbd.write_axi_wtr_l_val(tr);
    endfunction

    virtual function void write_axi_rtr_l_val(axi_transfer tr);
        refm.write_axi_rtr_l_val(tr);
        scbd.write_axi_rtr_l_val(tr);
    endfunction

    virtual function void write_axi_wtr_u_row(axi_transfer tr);
        refm.write_axi_wtr_u_row(tr);
        scbd.write_axi_wtr_u_row(tr);
    endfunction

    virtual function void write_axi_rtr_u_row(axi_transfer tr);
        refm.write_axi_rtr_u_row(tr);
        scbd.write_axi_rtr_u_row(tr);
    endfunction

    virtual function void write_axi_wtr_u_col(axi_transfer tr);
        refm.write_axi_wtr_u_col(tr);
        scbd.write_axi_wtr_u_col(tr);
    endfunction

    virtual function void write_axi_rtr_u_col(axi_transfer tr);
        refm.write_axi_rtr_u_col(tr);
        scbd.write_axi_rtr_u_col(tr);
    endfunction

    virtual function void write_axi_wtr_u_val(axi_transfer tr);
        refm.write_axi_wtr_u_val(tr);
        scbd.write_axi_wtr_u_val(tr);
    endfunction

    virtual function void write_axi_rtr_u_val(axi_transfer tr);
        refm.write_axi_rtr_u_val(tr);
        scbd.write_axi_rtr_u_val(tr);
    endfunction

    virtual function void write_axi_wtr_control_r(axi_transfer tr);
        refm.write_axi_wtr_control_r(tr);
        scbd.write_axi_wtr_control_r(tr);
    endfunction

    virtual function void write_axi_rtr_control_r(axi_transfer tr);
        refm.write_axi_rtr_control_r(tr);
        scbd.write_axi_rtr_control_r(tr);
    endfunction

    virtual function void write_axi_wtr_control(axi_transfer tr);
        refm.write_axi_wtr_control(tr);
        scbd.write_axi_wtr_control(tr);
    endfunction

    virtual function void write_axi_rtr_control(axi_transfer tr);
        refm.write_axi_rtr_control(tr);
        scbd.write_axi_rtr_control(tr);
    endfunction
endclass
`endif
