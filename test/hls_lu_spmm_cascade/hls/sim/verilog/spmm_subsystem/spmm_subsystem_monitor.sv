//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SPMM_SUBSYSTEM_MONITOR_SV
`define SPMM_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_axi_wtr_arcsr)
`uvm_analysis_imp_decl(_axi_rtr_arcsr)
`uvm_analysis_imp_decl(_axi_wtr_acid)
`uvm_analysis_imp_decl(_axi_rtr_acid)
`uvm_analysis_imp_decl(_axi_wtr_aval)
`uvm_analysis_imp_decl(_axi_rtr_aval)
`uvm_analysis_imp_decl(_axi_wtr_brcsr1)
`uvm_analysis_imp_decl(_axi_rtr_brcsr1)
`uvm_analysis_imp_decl(_axi_wtr_brcsr2)
`uvm_analysis_imp_decl(_axi_rtr_brcsr2)
`uvm_analysis_imp_decl(_axi_wtr_brcsr3)
`uvm_analysis_imp_decl(_axi_rtr_brcsr3)
`uvm_analysis_imp_decl(_axi_wtr_brcsr4)
`uvm_analysis_imp_decl(_axi_rtr_brcsr4)
`uvm_analysis_imp_decl(_axi_wtr_bval1)
`uvm_analysis_imp_decl(_axi_rtr_bval1)
`uvm_analysis_imp_decl(_axi_wtr_bcid1)
`uvm_analysis_imp_decl(_axi_rtr_bcid1)
`uvm_analysis_imp_decl(_axi_wtr_bval2)
`uvm_analysis_imp_decl(_axi_rtr_bval2)
`uvm_analysis_imp_decl(_axi_wtr_bcid2)
`uvm_analysis_imp_decl(_axi_rtr_bcid2)
`uvm_analysis_imp_decl(_axi_wtr_bval3)
`uvm_analysis_imp_decl(_axi_rtr_bval3)
`uvm_analysis_imp_decl(_axi_wtr_bcid3)
`uvm_analysis_imp_decl(_axi_rtr_bcid3)
`uvm_analysis_imp_decl(_axi_wtr_bval4)
`uvm_analysis_imp_decl(_axi_rtr_bval4)
`uvm_analysis_imp_decl(_axi_wtr_bcid4)
`uvm_analysis_imp_decl(_axi_rtr_bcid4)
`uvm_analysis_imp_decl(_axi_wtr_bv1)
`uvm_analysis_imp_decl(_axi_rtr_bv1)
`uvm_analysis_imp_decl(_axi_wtr_bc1)
`uvm_analysis_imp_decl(_axi_rtr_bc1)
`uvm_analysis_imp_decl(_axi_wtr_bv2)
`uvm_analysis_imp_decl(_axi_rtr_bv2)
`uvm_analysis_imp_decl(_axi_wtr_bc2)
`uvm_analysis_imp_decl(_axi_rtr_bc2)
`uvm_analysis_imp_decl(_axi_wtr_bv3)
`uvm_analysis_imp_decl(_axi_rtr_bv3)
`uvm_analysis_imp_decl(_axi_wtr_bc3)
`uvm_analysis_imp_decl(_axi_rtr_bc3)
`uvm_analysis_imp_decl(_axi_wtr_bv4)
`uvm_analysis_imp_decl(_axi_rtr_bv4)
`uvm_analysis_imp_decl(_axi_wtr_bc4)
`uvm_analysis_imp_decl(_axi_rtr_bc4)
`uvm_analysis_imp_decl(_axi_wtr_crcsr)
`uvm_analysis_imp_decl(_axi_rtr_crcsr)
`uvm_analysis_imp_decl(_axi_wtr_ccid)
`uvm_analysis_imp_decl(_axi_rtr_ccid)
`uvm_analysis_imp_decl(_axi_wtr_cval)
`uvm_analysis_imp_decl(_axi_rtr_cval)
`uvm_analysis_imp_decl(_axi_wtr_control)
`uvm_analysis_imp_decl(_axi_rtr_control)
`uvm_analysis_imp_decl(_axi_wtr_ctr)
`uvm_analysis_imp_decl(_axi_rtr_ctr)

class spmm_subsystem_monitor extends uvm_component;

    spmm_reference_model refm;
    spmm_scoreboard scbd;

    `uvm_component_utils_begin(spmm_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_axi_wtr_arcsr#(axi_pkg::axi_transfer, spmm_subsystem_monitor) arcsr_wtr_imp;
    uvm_analysis_imp_axi_rtr_arcsr#(axi_pkg::axi_transfer, spmm_subsystem_monitor) arcsr_rtr_imp;
    uvm_analysis_imp_axi_wtr_acid#(axi_pkg::axi_transfer, spmm_subsystem_monitor) acid_wtr_imp;
    uvm_analysis_imp_axi_rtr_acid#(axi_pkg::axi_transfer, spmm_subsystem_monitor) acid_rtr_imp;
    uvm_analysis_imp_axi_wtr_aval#(axi_pkg::axi_transfer, spmm_subsystem_monitor) aval_wtr_imp;
    uvm_analysis_imp_axi_rtr_aval#(axi_pkg::axi_transfer, spmm_subsystem_monitor) aval_rtr_imp;
    uvm_analysis_imp_axi_wtr_brcsr1#(axi_pkg::axi_transfer, spmm_subsystem_monitor) brcsr1_wtr_imp;
    uvm_analysis_imp_axi_rtr_brcsr1#(axi_pkg::axi_transfer, spmm_subsystem_monitor) brcsr1_rtr_imp;
    uvm_analysis_imp_axi_wtr_brcsr2#(axi_pkg::axi_transfer, spmm_subsystem_monitor) brcsr2_wtr_imp;
    uvm_analysis_imp_axi_rtr_brcsr2#(axi_pkg::axi_transfer, spmm_subsystem_monitor) brcsr2_rtr_imp;
    uvm_analysis_imp_axi_wtr_brcsr3#(axi_pkg::axi_transfer, spmm_subsystem_monitor) brcsr3_wtr_imp;
    uvm_analysis_imp_axi_rtr_brcsr3#(axi_pkg::axi_transfer, spmm_subsystem_monitor) brcsr3_rtr_imp;
    uvm_analysis_imp_axi_wtr_brcsr4#(axi_pkg::axi_transfer, spmm_subsystem_monitor) brcsr4_wtr_imp;
    uvm_analysis_imp_axi_rtr_brcsr4#(axi_pkg::axi_transfer, spmm_subsystem_monitor) brcsr4_rtr_imp;
    uvm_analysis_imp_axi_wtr_bval1#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bval1_wtr_imp;
    uvm_analysis_imp_axi_rtr_bval1#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bval1_rtr_imp;
    uvm_analysis_imp_axi_wtr_bcid1#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bcid1_wtr_imp;
    uvm_analysis_imp_axi_rtr_bcid1#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bcid1_rtr_imp;
    uvm_analysis_imp_axi_wtr_bval2#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bval2_wtr_imp;
    uvm_analysis_imp_axi_rtr_bval2#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bval2_rtr_imp;
    uvm_analysis_imp_axi_wtr_bcid2#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bcid2_wtr_imp;
    uvm_analysis_imp_axi_rtr_bcid2#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bcid2_rtr_imp;
    uvm_analysis_imp_axi_wtr_bval3#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bval3_wtr_imp;
    uvm_analysis_imp_axi_rtr_bval3#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bval3_rtr_imp;
    uvm_analysis_imp_axi_wtr_bcid3#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bcid3_wtr_imp;
    uvm_analysis_imp_axi_rtr_bcid3#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bcid3_rtr_imp;
    uvm_analysis_imp_axi_wtr_bval4#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bval4_wtr_imp;
    uvm_analysis_imp_axi_rtr_bval4#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bval4_rtr_imp;
    uvm_analysis_imp_axi_wtr_bcid4#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bcid4_wtr_imp;
    uvm_analysis_imp_axi_rtr_bcid4#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bcid4_rtr_imp;
    uvm_analysis_imp_axi_wtr_bv1#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bv1_wtr_imp;
    uvm_analysis_imp_axi_rtr_bv1#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bv1_rtr_imp;
    uvm_analysis_imp_axi_wtr_bc1#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bc1_wtr_imp;
    uvm_analysis_imp_axi_rtr_bc1#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bc1_rtr_imp;
    uvm_analysis_imp_axi_wtr_bv2#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bv2_wtr_imp;
    uvm_analysis_imp_axi_rtr_bv2#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bv2_rtr_imp;
    uvm_analysis_imp_axi_wtr_bc2#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bc2_wtr_imp;
    uvm_analysis_imp_axi_rtr_bc2#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bc2_rtr_imp;
    uvm_analysis_imp_axi_wtr_bv3#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bv3_wtr_imp;
    uvm_analysis_imp_axi_rtr_bv3#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bv3_rtr_imp;
    uvm_analysis_imp_axi_wtr_bc3#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bc3_wtr_imp;
    uvm_analysis_imp_axi_rtr_bc3#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bc3_rtr_imp;
    uvm_analysis_imp_axi_wtr_bv4#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bv4_wtr_imp;
    uvm_analysis_imp_axi_rtr_bv4#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bv4_rtr_imp;
    uvm_analysis_imp_axi_wtr_bc4#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bc4_wtr_imp;
    uvm_analysis_imp_axi_rtr_bc4#(axi_pkg::axi_transfer, spmm_subsystem_monitor) bc4_rtr_imp;
    uvm_analysis_imp_axi_wtr_crcsr#(axi_pkg::axi_transfer, spmm_subsystem_monitor) crcsr_wtr_imp;
    uvm_analysis_imp_axi_rtr_crcsr#(axi_pkg::axi_transfer, spmm_subsystem_monitor) crcsr_rtr_imp;
    uvm_analysis_imp_axi_wtr_ccid#(axi_pkg::axi_transfer, spmm_subsystem_monitor) ccid_wtr_imp;
    uvm_analysis_imp_axi_rtr_ccid#(axi_pkg::axi_transfer, spmm_subsystem_monitor) ccid_rtr_imp;
    uvm_analysis_imp_axi_wtr_cval#(axi_pkg::axi_transfer, spmm_subsystem_monitor) cval_wtr_imp;
    uvm_analysis_imp_axi_rtr_cval#(axi_pkg::axi_transfer, spmm_subsystem_monitor) cval_rtr_imp;
    uvm_analysis_imp_axi_wtr_control#(axi_pkg::axi_transfer, spmm_subsystem_monitor) control_wtr_imp;
    uvm_analysis_imp_axi_rtr_control#(axi_pkg::axi_transfer, spmm_subsystem_monitor) control_rtr_imp;
    uvm_analysis_imp_axi_wtr_ctr#(axi_pkg::axi_transfer, spmm_subsystem_monitor) ctr_wtr_imp;
    uvm_analysis_imp_axi_rtr_ctr#(axi_pkg::axi_transfer, spmm_subsystem_monitor) ctr_rtr_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(spmm_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = spmm_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        arcsr_wtr_imp = new("arcsr_wtr_imp", this);
        arcsr_rtr_imp = new("arcsr_rtr_imp", this);
        acid_wtr_imp = new("acid_wtr_imp", this);
        acid_rtr_imp = new("acid_rtr_imp", this);
        aval_wtr_imp = new("aval_wtr_imp", this);
        aval_rtr_imp = new("aval_rtr_imp", this);
        brcsr1_wtr_imp = new("brcsr1_wtr_imp", this);
        brcsr1_rtr_imp = new("brcsr1_rtr_imp", this);
        brcsr2_wtr_imp = new("brcsr2_wtr_imp", this);
        brcsr2_rtr_imp = new("brcsr2_rtr_imp", this);
        brcsr3_wtr_imp = new("brcsr3_wtr_imp", this);
        brcsr3_rtr_imp = new("brcsr3_rtr_imp", this);
        brcsr4_wtr_imp = new("brcsr4_wtr_imp", this);
        brcsr4_rtr_imp = new("brcsr4_rtr_imp", this);
        bval1_wtr_imp = new("bval1_wtr_imp", this);
        bval1_rtr_imp = new("bval1_rtr_imp", this);
        bcid1_wtr_imp = new("bcid1_wtr_imp", this);
        bcid1_rtr_imp = new("bcid1_rtr_imp", this);
        bval2_wtr_imp = new("bval2_wtr_imp", this);
        bval2_rtr_imp = new("bval2_rtr_imp", this);
        bcid2_wtr_imp = new("bcid2_wtr_imp", this);
        bcid2_rtr_imp = new("bcid2_rtr_imp", this);
        bval3_wtr_imp = new("bval3_wtr_imp", this);
        bval3_rtr_imp = new("bval3_rtr_imp", this);
        bcid3_wtr_imp = new("bcid3_wtr_imp", this);
        bcid3_rtr_imp = new("bcid3_rtr_imp", this);
        bval4_wtr_imp = new("bval4_wtr_imp", this);
        bval4_rtr_imp = new("bval4_rtr_imp", this);
        bcid4_wtr_imp = new("bcid4_wtr_imp", this);
        bcid4_rtr_imp = new("bcid4_rtr_imp", this);
        bv1_wtr_imp = new("bv1_wtr_imp", this);
        bv1_rtr_imp = new("bv1_rtr_imp", this);
        bc1_wtr_imp = new("bc1_wtr_imp", this);
        bc1_rtr_imp = new("bc1_rtr_imp", this);
        bv2_wtr_imp = new("bv2_wtr_imp", this);
        bv2_rtr_imp = new("bv2_rtr_imp", this);
        bc2_wtr_imp = new("bc2_wtr_imp", this);
        bc2_rtr_imp = new("bc2_rtr_imp", this);
        bv3_wtr_imp = new("bv3_wtr_imp", this);
        bv3_rtr_imp = new("bv3_rtr_imp", this);
        bc3_wtr_imp = new("bc3_wtr_imp", this);
        bc3_rtr_imp = new("bc3_rtr_imp", this);
        bv4_wtr_imp = new("bv4_wtr_imp", this);
        bv4_rtr_imp = new("bv4_rtr_imp", this);
        bc4_wtr_imp = new("bc4_wtr_imp", this);
        bc4_rtr_imp = new("bc4_rtr_imp", this);
        crcsr_wtr_imp = new("crcsr_wtr_imp", this);
        crcsr_rtr_imp = new("crcsr_rtr_imp", this);
        ccid_wtr_imp = new("ccid_wtr_imp", this);
        ccid_rtr_imp = new("ccid_rtr_imp", this);
        cval_wtr_imp = new("cval_wtr_imp", this);
        cval_rtr_imp = new("cval_rtr_imp", this);
        control_wtr_imp = new("control_wtr_imp", this);
        control_rtr_imp = new("control_rtr_imp", this);
        ctr_wtr_imp = new("ctr_wtr_imp", this);
        ctr_rtr_imp = new("ctr_rtr_imp", this);
    endfunction

    virtual function void write_axi_wtr_arcsr(axi_transfer tr);
        refm.write_axi_wtr_arcsr(tr);
        scbd.write_axi_wtr_arcsr(tr);
    endfunction

    virtual function void write_axi_rtr_arcsr(axi_transfer tr);
        refm.write_axi_rtr_arcsr(tr);
        scbd.write_axi_rtr_arcsr(tr);
    endfunction

    virtual function void write_axi_wtr_acid(axi_transfer tr);
        refm.write_axi_wtr_acid(tr);
        scbd.write_axi_wtr_acid(tr);
    endfunction

    virtual function void write_axi_rtr_acid(axi_transfer tr);
        refm.write_axi_rtr_acid(tr);
        scbd.write_axi_rtr_acid(tr);
    endfunction

    virtual function void write_axi_wtr_aval(axi_transfer tr);
        refm.write_axi_wtr_aval(tr);
        scbd.write_axi_wtr_aval(tr);
    endfunction

    virtual function void write_axi_rtr_aval(axi_transfer tr);
        refm.write_axi_rtr_aval(tr);
        scbd.write_axi_rtr_aval(tr);
    endfunction

    virtual function void write_axi_wtr_brcsr1(axi_transfer tr);
        refm.write_axi_wtr_brcsr1(tr);
        scbd.write_axi_wtr_brcsr1(tr);
    endfunction

    virtual function void write_axi_rtr_brcsr1(axi_transfer tr);
        refm.write_axi_rtr_brcsr1(tr);
        scbd.write_axi_rtr_brcsr1(tr);
    endfunction

    virtual function void write_axi_wtr_brcsr2(axi_transfer tr);
        refm.write_axi_wtr_brcsr2(tr);
        scbd.write_axi_wtr_brcsr2(tr);
    endfunction

    virtual function void write_axi_rtr_brcsr2(axi_transfer tr);
        refm.write_axi_rtr_brcsr2(tr);
        scbd.write_axi_rtr_brcsr2(tr);
    endfunction

    virtual function void write_axi_wtr_brcsr3(axi_transfer tr);
        refm.write_axi_wtr_brcsr3(tr);
        scbd.write_axi_wtr_brcsr3(tr);
    endfunction

    virtual function void write_axi_rtr_brcsr3(axi_transfer tr);
        refm.write_axi_rtr_brcsr3(tr);
        scbd.write_axi_rtr_brcsr3(tr);
    endfunction

    virtual function void write_axi_wtr_brcsr4(axi_transfer tr);
        refm.write_axi_wtr_brcsr4(tr);
        scbd.write_axi_wtr_brcsr4(tr);
    endfunction

    virtual function void write_axi_rtr_brcsr4(axi_transfer tr);
        refm.write_axi_rtr_brcsr4(tr);
        scbd.write_axi_rtr_brcsr4(tr);
    endfunction

    virtual function void write_axi_wtr_bval1(axi_transfer tr);
        refm.write_axi_wtr_bval1(tr);
        scbd.write_axi_wtr_bval1(tr);
    endfunction

    virtual function void write_axi_rtr_bval1(axi_transfer tr);
        refm.write_axi_rtr_bval1(tr);
        scbd.write_axi_rtr_bval1(tr);
    endfunction

    virtual function void write_axi_wtr_bcid1(axi_transfer tr);
        refm.write_axi_wtr_bcid1(tr);
        scbd.write_axi_wtr_bcid1(tr);
    endfunction

    virtual function void write_axi_rtr_bcid1(axi_transfer tr);
        refm.write_axi_rtr_bcid1(tr);
        scbd.write_axi_rtr_bcid1(tr);
    endfunction

    virtual function void write_axi_wtr_bval2(axi_transfer tr);
        refm.write_axi_wtr_bval2(tr);
        scbd.write_axi_wtr_bval2(tr);
    endfunction

    virtual function void write_axi_rtr_bval2(axi_transfer tr);
        refm.write_axi_rtr_bval2(tr);
        scbd.write_axi_rtr_bval2(tr);
    endfunction

    virtual function void write_axi_wtr_bcid2(axi_transfer tr);
        refm.write_axi_wtr_bcid2(tr);
        scbd.write_axi_wtr_bcid2(tr);
    endfunction

    virtual function void write_axi_rtr_bcid2(axi_transfer tr);
        refm.write_axi_rtr_bcid2(tr);
        scbd.write_axi_rtr_bcid2(tr);
    endfunction

    virtual function void write_axi_wtr_bval3(axi_transfer tr);
        refm.write_axi_wtr_bval3(tr);
        scbd.write_axi_wtr_bval3(tr);
    endfunction

    virtual function void write_axi_rtr_bval3(axi_transfer tr);
        refm.write_axi_rtr_bval3(tr);
        scbd.write_axi_rtr_bval3(tr);
    endfunction

    virtual function void write_axi_wtr_bcid3(axi_transfer tr);
        refm.write_axi_wtr_bcid3(tr);
        scbd.write_axi_wtr_bcid3(tr);
    endfunction

    virtual function void write_axi_rtr_bcid3(axi_transfer tr);
        refm.write_axi_rtr_bcid3(tr);
        scbd.write_axi_rtr_bcid3(tr);
    endfunction

    virtual function void write_axi_wtr_bval4(axi_transfer tr);
        refm.write_axi_wtr_bval4(tr);
        scbd.write_axi_wtr_bval4(tr);
    endfunction

    virtual function void write_axi_rtr_bval4(axi_transfer tr);
        refm.write_axi_rtr_bval4(tr);
        scbd.write_axi_rtr_bval4(tr);
    endfunction

    virtual function void write_axi_wtr_bcid4(axi_transfer tr);
        refm.write_axi_wtr_bcid4(tr);
        scbd.write_axi_wtr_bcid4(tr);
    endfunction

    virtual function void write_axi_rtr_bcid4(axi_transfer tr);
        refm.write_axi_rtr_bcid4(tr);
        scbd.write_axi_rtr_bcid4(tr);
    endfunction

    virtual function void write_axi_wtr_bv1(axi_transfer tr);
        refm.write_axi_wtr_bv1(tr);
        scbd.write_axi_wtr_bv1(tr);
    endfunction

    virtual function void write_axi_rtr_bv1(axi_transfer tr);
        refm.write_axi_rtr_bv1(tr);
        scbd.write_axi_rtr_bv1(tr);
    endfunction

    virtual function void write_axi_wtr_bc1(axi_transfer tr);
        refm.write_axi_wtr_bc1(tr);
        scbd.write_axi_wtr_bc1(tr);
    endfunction

    virtual function void write_axi_rtr_bc1(axi_transfer tr);
        refm.write_axi_rtr_bc1(tr);
        scbd.write_axi_rtr_bc1(tr);
    endfunction

    virtual function void write_axi_wtr_bv2(axi_transfer tr);
        refm.write_axi_wtr_bv2(tr);
        scbd.write_axi_wtr_bv2(tr);
    endfunction

    virtual function void write_axi_rtr_bv2(axi_transfer tr);
        refm.write_axi_rtr_bv2(tr);
        scbd.write_axi_rtr_bv2(tr);
    endfunction

    virtual function void write_axi_wtr_bc2(axi_transfer tr);
        refm.write_axi_wtr_bc2(tr);
        scbd.write_axi_wtr_bc2(tr);
    endfunction

    virtual function void write_axi_rtr_bc2(axi_transfer tr);
        refm.write_axi_rtr_bc2(tr);
        scbd.write_axi_rtr_bc2(tr);
    endfunction

    virtual function void write_axi_wtr_bv3(axi_transfer tr);
        refm.write_axi_wtr_bv3(tr);
        scbd.write_axi_wtr_bv3(tr);
    endfunction

    virtual function void write_axi_rtr_bv3(axi_transfer tr);
        refm.write_axi_rtr_bv3(tr);
        scbd.write_axi_rtr_bv3(tr);
    endfunction

    virtual function void write_axi_wtr_bc3(axi_transfer tr);
        refm.write_axi_wtr_bc3(tr);
        scbd.write_axi_wtr_bc3(tr);
    endfunction

    virtual function void write_axi_rtr_bc3(axi_transfer tr);
        refm.write_axi_rtr_bc3(tr);
        scbd.write_axi_rtr_bc3(tr);
    endfunction

    virtual function void write_axi_wtr_bv4(axi_transfer tr);
        refm.write_axi_wtr_bv4(tr);
        scbd.write_axi_wtr_bv4(tr);
    endfunction

    virtual function void write_axi_rtr_bv4(axi_transfer tr);
        refm.write_axi_rtr_bv4(tr);
        scbd.write_axi_rtr_bv4(tr);
    endfunction

    virtual function void write_axi_wtr_bc4(axi_transfer tr);
        refm.write_axi_wtr_bc4(tr);
        scbd.write_axi_wtr_bc4(tr);
    endfunction

    virtual function void write_axi_rtr_bc4(axi_transfer tr);
        refm.write_axi_rtr_bc4(tr);
        scbd.write_axi_rtr_bc4(tr);
    endfunction

    virtual function void write_axi_wtr_crcsr(axi_transfer tr);
        refm.write_axi_wtr_crcsr(tr);
        scbd.write_axi_wtr_crcsr(tr);
    endfunction

    virtual function void write_axi_rtr_crcsr(axi_transfer tr);
        refm.write_axi_rtr_crcsr(tr);
        scbd.write_axi_rtr_crcsr(tr);
    endfunction

    virtual function void write_axi_wtr_ccid(axi_transfer tr);
        refm.write_axi_wtr_ccid(tr);
        scbd.write_axi_wtr_ccid(tr);
    endfunction

    virtual function void write_axi_rtr_ccid(axi_transfer tr);
        refm.write_axi_rtr_ccid(tr);
        scbd.write_axi_rtr_ccid(tr);
    endfunction

    virtual function void write_axi_wtr_cval(axi_transfer tr);
        refm.write_axi_wtr_cval(tr);
        scbd.write_axi_wtr_cval(tr);
    endfunction

    virtual function void write_axi_rtr_cval(axi_transfer tr);
        refm.write_axi_rtr_cval(tr);
        scbd.write_axi_rtr_cval(tr);
    endfunction

    virtual function void write_axi_wtr_control(axi_transfer tr);
        refm.write_axi_wtr_control(tr);
        scbd.write_axi_wtr_control(tr);
    endfunction

    virtual function void write_axi_rtr_control(axi_transfer tr);
        refm.write_axi_rtr_control(tr);
        scbd.write_axi_rtr_control(tr);
    endfunction

    virtual function void write_axi_wtr_ctr(axi_transfer tr);
        refm.write_axi_wtr_ctr(tr);
        scbd.write_axi_wtr_ctr(tr);
    endfunction

    virtual function void write_axi_rtr_ctr(axi_transfer tr);
        refm.write_axi_rtr_ctr(tr);
        scbd.write_axi_rtr_ctr(tr);
    endfunction
endclass
`endif
