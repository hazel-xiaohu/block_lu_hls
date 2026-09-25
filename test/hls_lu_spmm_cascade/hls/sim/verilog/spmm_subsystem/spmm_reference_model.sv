//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SPMM_REFERENCE_MODEL_SV
`define SPMM_REFERENCE_MODEL_SV
typedef class spmm_reference_model;
class memaccess_axi_state_cbs extends axi_pkg::axi_state_cbs;
    spmm_reference_model refm;
    string memid;
    //function new(string name="memaccess_axi_state_cbs");
    //    super.new(name);
    //endfunction
    virtual function void memmodel_read_fromar(ref logic[7:0] data[$], input longint addr, input longint len);
        if(memid=="arcsr") refm.mem_blk_pages_arcsr.read_elems_pipepage(data, addr, len);
        if(memid=="acid") refm.mem_blk_pages_acid.read_elems_pipepage(data, addr, len);
        if(memid=="aval") refm.mem_blk_pages_aval.read_elems_pipepage(data, addr, len);
        if(memid=="brcsr1") refm.mem_blk_pages_brcsr1.read_elems_pipepage(data, addr, len);
        if(memid=="brcsr2") refm.mem_blk_pages_brcsr2.read_elems_pipepage(data, addr, len);
        if(memid=="brcsr3") refm.mem_blk_pages_brcsr3.read_elems_pipepage(data, addr, len);
        if(memid=="brcsr4") refm.mem_blk_pages_brcsr4.read_elems_pipepage(data, addr, len);
        if(memid=="bval1") refm.mem_blk_pages_bval1.read_elems_pipepage(data, addr, len);
        if(memid=="bcid1") refm.mem_blk_pages_bcid1.read_elems_pipepage(data, addr, len);
        if(memid=="bval2") refm.mem_blk_pages_bval2.read_elems_pipepage(data, addr, len);
        if(memid=="bcid2") refm.mem_blk_pages_bcid2.read_elems_pipepage(data, addr, len);
        if(memid=="bval3") refm.mem_blk_pages_bval3.read_elems_pipepage(data, addr, len);
        if(memid=="bcid3") refm.mem_blk_pages_bcid3.read_elems_pipepage(data, addr, len);
        if(memid=="bval4") refm.mem_blk_pages_bval4.read_elems_pipepage(data, addr, len);
        if(memid=="bcid4") refm.mem_blk_pages_bcid4.read_elems_pipepage(data, addr, len);
        if(memid=="bv1") refm.mem_blk_pages_bv1.read_elems_pipepage(data, addr, len);
        if(memid=="bc1") refm.mem_blk_pages_bc1.read_elems_pipepage(data, addr, len);
        if(memid=="bv2") refm.mem_blk_pages_bv2.read_elems_pipepage(data, addr, len);
        if(memid=="bc2") refm.mem_blk_pages_bc2.read_elems_pipepage(data, addr, len);
        if(memid=="bv3") refm.mem_blk_pages_bv3.read_elems_pipepage(data, addr, len);
        if(memid=="bc3") refm.mem_blk_pages_bc3.read_elems_pipepage(data, addr, len);
        if(memid=="bv4") refm.mem_blk_pages_bv4.read_elems_pipepage(data, addr, len);
        if(memid=="bc4") refm.mem_blk_pages_bc4.read_elems_pipepage(data, addr, len);
        if(memid=="crcsr") refm.mem_blk_pages_crcsr.read_elems_pipepage(data, addr, len);
        if(memid=="ccid") refm.mem_blk_pages_ccid.read_elems_pipepage(data, addr, len);
        if(memid=="cval") refm.mem_blk_pages_cval.read_elems_pipepage(data, addr, len);
    endfunction
endclass

class spmm_reference_model extends uvm_component;
`define TV_IN_arcsr "../tv/cdatafile/c.spmm.autotvin_arcsr.dat"
`define TV_OUT_arcsr "../tv/rtldatafile/rtl.spmm.autotvout_arcsr.dat"
`define TV_IN_OFFSET_A_rcsr "../tv/cdatafile/c.spmm.autotvin_A_rcsr.dat"
`define TV_IN_acid "../tv/cdatafile/c.spmm.autotvin_acid.dat"
`define TV_OUT_acid "../tv/rtldatafile/rtl.spmm.autotvout_acid.dat"
`define TV_IN_OFFSET_A_cid "../tv/cdatafile/c.spmm.autotvin_A_cid.dat"
`define TV_IN_aval "../tv/cdatafile/c.spmm.autotvin_aval.dat"
`define TV_OUT_aval "../tv/rtldatafile/rtl.spmm.autotvout_aval.dat"
`define TV_IN_OFFSET_A_val "../tv/cdatafile/c.spmm.autotvin_A_val.dat"
`define TV_IN_brcsr1 "../tv/cdatafile/c.spmm.autotvin_brcsr1.dat"
`define TV_OUT_brcsr1 "../tv/rtldatafile/rtl.spmm.autotvout_brcsr1.dat"
`define TV_IN_OFFSET_B_rcsr1 "../tv/cdatafile/c.spmm.autotvin_B_rcsr1.dat"
`define TV_IN_brcsr2 "../tv/cdatafile/c.spmm.autotvin_brcsr2.dat"
`define TV_OUT_brcsr2 "../tv/rtldatafile/rtl.spmm.autotvout_brcsr2.dat"
`define TV_IN_OFFSET_B_rcsr2 "../tv/cdatafile/c.spmm.autotvin_B_rcsr2.dat"
`define TV_IN_brcsr3 "../tv/cdatafile/c.spmm.autotvin_brcsr3.dat"
`define TV_OUT_brcsr3 "../tv/rtldatafile/rtl.spmm.autotvout_brcsr3.dat"
`define TV_IN_OFFSET_B_rcsr3 "../tv/cdatafile/c.spmm.autotvin_B_rcsr3.dat"
`define TV_IN_brcsr4 "../tv/cdatafile/c.spmm.autotvin_brcsr4.dat"
`define TV_OUT_brcsr4 "../tv/rtldatafile/rtl.spmm.autotvout_brcsr4.dat"
`define TV_IN_OFFSET_B_rcsr4 "../tv/cdatafile/c.spmm.autotvin_B_rcsr4.dat"
`define TV_IN_bval1 "../tv/cdatafile/c.spmm.autotvin_bval1.dat"
`define TV_OUT_bval1 "../tv/rtldatafile/rtl.spmm.autotvout_bval1.dat"
`define TV_IN_OFFSET_B_val1 "../tv/cdatafile/c.spmm.autotvin_B_val1.dat"
`define TV_IN_bcid1 "../tv/cdatafile/c.spmm.autotvin_bcid1.dat"
`define TV_OUT_bcid1 "../tv/rtldatafile/rtl.spmm.autotvout_bcid1.dat"
`define TV_IN_OFFSET_B_cid1 "../tv/cdatafile/c.spmm.autotvin_B_cid1.dat"
`define TV_IN_bval2 "../tv/cdatafile/c.spmm.autotvin_bval2.dat"
`define TV_OUT_bval2 "../tv/rtldatafile/rtl.spmm.autotvout_bval2.dat"
`define TV_IN_OFFSET_B_val2 "../tv/cdatafile/c.spmm.autotvin_B_val2.dat"
`define TV_IN_bcid2 "../tv/cdatafile/c.spmm.autotvin_bcid2.dat"
`define TV_OUT_bcid2 "../tv/rtldatafile/rtl.spmm.autotvout_bcid2.dat"
`define TV_IN_OFFSET_B_cid2 "../tv/cdatafile/c.spmm.autotvin_B_cid2.dat"
`define TV_IN_bval3 "../tv/cdatafile/c.spmm.autotvin_bval3.dat"
`define TV_OUT_bval3 "../tv/rtldatafile/rtl.spmm.autotvout_bval3.dat"
`define TV_IN_OFFSET_B_val3 "../tv/cdatafile/c.spmm.autotvin_B_val3.dat"
`define TV_IN_bcid3 "../tv/cdatafile/c.spmm.autotvin_bcid3.dat"
`define TV_OUT_bcid3 "../tv/rtldatafile/rtl.spmm.autotvout_bcid3.dat"
`define TV_IN_OFFSET_B_cid3 "../tv/cdatafile/c.spmm.autotvin_B_cid3.dat"
`define TV_IN_bval4 "../tv/cdatafile/c.spmm.autotvin_bval4.dat"
`define TV_OUT_bval4 "../tv/rtldatafile/rtl.spmm.autotvout_bval4.dat"
`define TV_IN_OFFSET_B_val4 "../tv/cdatafile/c.spmm.autotvin_B_val4.dat"
`define TV_IN_bcid4 "../tv/cdatafile/c.spmm.autotvin_bcid4.dat"
`define TV_OUT_bcid4 "../tv/rtldatafile/rtl.spmm.autotvout_bcid4.dat"
`define TV_IN_OFFSET_B_cid4 "../tv/cdatafile/c.spmm.autotvin_B_cid4.dat"
`define TV_IN_bv1 "../tv/cdatafile/c.spmm.autotvin_bv1.dat"
`define TV_OUT_bv1 "../tv/rtldatafile/rtl.spmm.autotvout_bv1.dat"
`define TV_IN_OFFSET_B_val_port1 "../tv/cdatafile/c.spmm.autotvin_B_val_port1.dat"
`define TV_IN_bc1 "../tv/cdatafile/c.spmm.autotvin_bc1.dat"
`define TV_OUT_bc1 "../tv/rtldatafile/rtl.spmm.autotvout_bc1.dat"
`define TV_IN_OFFSET_B_cid_port1 "../tv/cdatafile/c.spmm.autotvin_B_cid_port1.dat"
`define TV_IN_bv2 "../tv/cdatafile/c.spmm.autotvin_bv2.dat"
`define TV_OUT_bv2 "../tv/rtldatafile/rtl.spmm.autotvout_bv2.dat"
`define TV_IN_OFFSET_B_val_port2 "../tv/cdatafile/c.spmm.autotvin_B_val_port2.dat"
`define TV_IN_bc2 "../tv/cdatafile/c.spmm.autotvin_bc2.dat"
`define TV_OUT_bc2 "../tv/rtldatafile/rtl.spmm.autotvout_bc2.dat"
`define TV_IN_OFFSET_B_cid_port2 "../tv/cdatafile/c.spmm.autotvin_B_cid_port2.dat"
`define TV_IN_bv3 "../tv/cdatafile/c.spmm.autotvin_bv3.dat"
`define TV_OUT_bv3 "../tv/rtldatafile/rtl.spmm.autotvout_bv3.dat"
`define TV_IN_OFFSET_B_val_port3 "../tv/cdatafile/c.spmm.autotvin_B_val_port3.dat"
`define TV_IN_bc3 "../tv/cdatafile/c.spmm.autotvin_bc3.dat"
`define TV_OUT_bc3 "../tv/rtldatafile/rtl.spmm.autotvout_bc3.dat"
`define TV_IN_OFFSET_B_cid_port3 "../tv/cdatafile/c.spmm.autotvin_B_cid_port3.dat"
`define TV_IN_bv4 "../tv/cdatafile/c.spmm.autotvin_bv4.dat"
`define TV_OUT_bv4 "../tv/rtldatafile/rtl.spmm.autotvout_bv4.dat"
`define TV_IN_OFFSET_B_val_port4 "../tv/cdatafile/c.spmm.autotvin_B_val_port4.dat"
`define TV_IN_bc4 "../tv/cdatafile/c.spmm.autotvin_bc4.dat"
`define TV_OUT_bc4 "../tv/rtldatafile/rtl.spmm.autotvout_bc4.dat"
`define TV_IN_OFFSET_B_cid_port4 "../tv/cdatafile/c.spmm.autotvin_B_cid_port4.dat"
`define TV_IN_crcsr "../tv/cdatafile/c.spmm.autotvin_crcsr.dat"
`define TV_OUT_crcsr "../tv/rtldatafile/rtl.spmm.autotvout_crcsr.dat"
`define TV_IN_OFFSET_C_rcsr "../tv/cdatafile/c.spmm.autotvin_C_rcsr.dat"
`define TV_IN_ccid "../tv/cdatafile/c.spmm.autotvin_ccid.dat"
`define TV_OUT_ccid "../tv/rtldatafile/rtl.spmm.autotvout_ccid.dat"
`define TV_IN_OFFSET_C_cid "../tv/cdatafile/c.spmm.autotvin_C_cid.dat"
`define TV_IN_cval "../tv/cdatafile/c.spmm.autotvin_cval.dat"
`define TV_OUT_cval "../tv/rtldatafile/rtl.spmm.autotvout_cval.dat"
`define TV_IN_OFFSET_C_val "../tv/cdatafile/c.spmm.autotvin_C_val.dat"
`define TV_IN_A_rcsr "../tv/cdatafile/c.spmm.autotvin_A_rcsr.dat"
`define TV_OUT_A_rcsr ""
`define TV_IN_A_cid "../tv/cdatafile/c.spmm.autotvin_A_cid.dat"
`define TV_OUT_A_cid ""
`define TV_IN_A_val "../tv/cdatafile/c.spmm.autotvin_A_val.dat"
`define TV_OUT_A_val ""
`define TV_IN_B_rcsr1 "../tv/cdatafile/c.spmm.autotvin_B_rcsr1.dat"
`define TV_OUT_B_rcsr1 ""
`define TV_IN_B_rcsr2 "../tv/cdatafile/c.spmm.autotvin_B_rcsr2.dat"
`define TV_OUT_B_rcsr2 ""
`define TV_IN_B_rcsr3 "../tv/cdatafile/c.spmm.autotvin_B_rcsr3.dat"
`define TV_OUT_B_rcsr3 ""
`define TV_IN_B_rcsr4 "../tv/cdatafile/c.spmm.autotvin_B_rcsr4.dat"
`define TV_OUT_B_rcsr4 ""
`define TV_IN_B_val1 "../tv/cdatafile/c.spmm.autotvin_B_val1.dat"
`define TV_OUT_B_val1 ""
`define TV_IN_B_cid1 "../tv/cdatafile/c.spmm.autotvin_B_cid1.dat"
`define TV_OUT_B_cid1 ""
`define TV_IN_B_val2 "../tv/cdatafile/c.spmm.autotvin_B_val2.dat"
`define TV_OUT_B_val2 ""
`define TV_IN_B_cid2 "../tv/cdatafile/c.spmm.autotvin_B_cid2.dat"
`define TV_OUT_B_cid2 ""
`define TV_IN_B_val3 "../tv/cdatafile/c.spmm.autotvin_B_val3.dat"
`define TV_OUT_B_val3 ""
`define TV_IN_B_cid3 "../tv/cdatafile/c.spmm.autotvin_B_cid3.dat"
`define TV_OUT_B_cid3 ""
`define TV_IN_B_val4 "../tv/cdatafile/c.spmm.autotvin_B_val4.dat"
`define TV_OUT_B_val4 ""
`define TV_IN_B_cid4 "../tv/cdatafile/c.spmm.autotvin_B_cid4.dat"
`define TV_OUT_B_cid4 ""
`define TV_IN_B_val_port1 "../tv/cdatafile/c.spmm.autotvin_B_val_port1.dat"
`define TV_OUT_B_val_port1 ""
`define TV_IN_B_cid_port1 "../tv/cdatafile/c.spmm.autotvin_B_cid_port1.dat"
`define TV_OUT_B_cid_port1 ""
`define TV_IN_B_val_port2 "../tv/cdatafile/c.spmm.autotvin_B_val_port2.dat"
`define TV_OUT_B_val_port2 ""
`define TV_IN_B_cid_port2 "../tv/cdatafile/c.spmm.autotvin_B_cid_port2.dat"
`define TV_OUT_B_cid_port2 ""
`define TV_IN_B_val_port3 "../tv/cdatafile/c.spmm.autotvin_B_val_port3.dat"
`define TV_OUT_B_val_port3 ""
`define TV_IN_B_cid_port3 "../tv/cdatafile/c.spmm.autotvin_B_cid_port3.dat"
`define TV_OUT_B_cid_port3 ""
`define TV_IN_B_val_port4 "../tv/cdatafile/c.spmm.autotvin_B_val_port4.dat"
`define TV_OUT_B_val_port4 ""
`define TV_IN_B_cid_port4 "../tv/cdatafile/c.spmm.autotvin_B_cid_port4.dat"
`define TV_OUT_B_cid_port4 ""
`define TV_IN_C_rcsr "../tv/cdatafile/c.spmm.autotvin_C_rcsr.dat"
`define TV_OUT_C_rcsr ""
`define TV_IN_C_cid "../tv/cdatafile/c.spmm.autotvin_C_cid.dat"
`define TV_OUT_C_cid ""
`define TV_IN_C_val "../tv/cdatafile/c.spmm.autotvin_C_val.dat"
`define TV_OUT_C_val ""
`define TV_IN_arnum "../tv/cdatafile/c.spmm.autotvin_arnum.dat"
`define TV_OUT_arnum ""
`define TV_IN_brnum "../tv/cdatafile/c.spmm.autotvin_brnum.dat"
`define TV_OUT_brnum ""
`define TV_IN_B_rcsr_base "../tv/cdatafile/c.spmm.autotvin_B_rcsr_base.dat"
`define TV_OUT_B_rcsr_base ""
`define TV_IN_B_val_base "../tv/cdatafile/c.spmm.autotvin_B_val_base.dat"
`define TV_OUT_B_val_base ""
`define TV_IN_B_cid_base "../tv/cdatafile/c.spmm.autotvin_B_cid_base.dat"
`define TV_OUT_B_cid_base ""
`define TV_IN_r1acc ""
`define TV_OUT_r1acc "../tv/rtldatafile/rtl.spmm.autotvout_r1acc.dat"
`define TV_IN_r1hit ""
`define TV_OUT_r1hit "../tv/rtldatafile/rtl.spmm.autotvout_r1hit.dat"
`define TV_IN_r2acc ""
`define TV_OUT_r2acc "../tv/rtldatafile/rtl.spmm.autotvout_r2acc.dat"
`define TV_IN_r2hit ""
`define TV_OUT_r2hit "../tv/rtldatafile/rtl.spmm.autotvout_r2hit.dat"
`define TV_IN_r3acc ""
`define TV_OUT_r3acc "../tv/rtldatafile/rtl.spmm.autotvout_r3acc.dat"
`define TV_IN_r3hit ""
`define TV_OUT_r3hit "../tv/rtldatafile/rtl.spmm.autotvout_r3hit.dat"
`define TV_IN_r4acc ""
`define TV_OUT_r4acc "../tv/rtldatafile/rtl.spmm.autotvout_r4acc.dat"
`define TV_IN_r4hit ""
`define TV_OUT_r4hit "../tv/rtldatafile/rtl.spmm.autotvout_r4hit.dat"
`define TV_IN_vc1acc ""
`define TV_OUT_vc1acc "../tv/rtldatafile/rtl.spmm.autotvout_vc1acc.dat"
`define TV_IN_vc1hit ""
`define TV_OUT_vc1hit "../tv/rtldatafile/rtl.spmm.autotvout_vc1hit.dat"
`define TV_IN_vc2acc ""
`define TV_OUT_vc2acc "../tv/rtldatafile/rtl.spmm.autotvout_vc2acc.dat"
`define TV_IN_vc2hit ""
`define TV_OUT_vc2hit "../tv/rtldatafile/rtl.spmm.autotvout_vc2hit.dat"
`define TV_IN_vc3acc ""
`define TV_OUT_vc3acc "../tv/rtldatafile/rtl.spmm.autotvout_vc3acc.dat"
`define TV_IN_vc3hit ""
`define TV_OUT_vc3hit "../tv/rtldatafile/rtl.spmm.autotvout_vc3hit.dat"
`define TV_IN_vc4acc ""
`define TV_OUT_vc4acc "../tv/rtldatafile/rtl.spmm.autotvout_vc4acc.dat"
`define TV_IN_vc4hit ""
`define TV_OUT_vc4hit "../tv/rtldatafile/rtl.spmm.autotvout_vc4hit.dat"
`define TV_IN_fnum ""
`define TV_OUT_fnum "../tv/rtldatafile/rtl.spmm.autotvout_fnum.dat"
`define TV_IN_workload_counter1 ""
`define TV_OUT_workload_counter1 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter1.dat"
`define TV_IN_workload_counter2 ""
`define TV_OUT_workload_counter2 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter2.dat"
`define TV_IN_workload_counter3 ""
`define TV_OUT_workload_counter3 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter3.dat"
`define TV_IN_workload_counter4 ""
`define TV_OUT_workload_counter4 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter4.dat"
    bit  write_data_finish_control;
    bit  read_data_finish_ctr;
    bit  write_data_finish_ctr;
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
    spmm_config spmm_cfg;
    virtual interface misc_interface misc_if;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_arcsr;
    int blk_id_arcsr = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_arcsr;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_acid;
    int blk_id_acid = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_acid;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_aval;
    int blk_id_aval = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_aval;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_brcsr1;
    int blk_id_brcsr1 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_brcsr1;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_brcsr2;
    int blk_id_brcsr2 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_brcsr2;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_brcsr3;
    int blk_id_brcsr3 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_brcsr3;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_brcsr4;
    int blk_id_brcsr4 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_brcsr4;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bval1;
    int blk_id_bval1 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bval1;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bcid1;
    int blk_id_bcid1 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bcid1;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bval2;
    int blk_id_bval2 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bval2;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bcid2;
    int blk_id_bcid2 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bcid2;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bval3;
    int blk_id_bval3 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bval3;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bcid3;
    int blk_id_bcid3 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bcid3;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bval4;
    int blk_id_bval4 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bval4;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bcid4;
    int blk_id_bcid4 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bcid4;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bv1;
    int blk_id_bv1 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bv1;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bc1;
    int blk_id_bc1 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bc1;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bv2;
    int blk_id_bv2 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bv2;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bc2;
    int blk_id_bc2 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bc2;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bv3;
    int blk_id_bv3 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bv3;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bc3;
    int blk_id_bc3 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bc3;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bv4;
    int blk_id_bv4 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bv4;

    mem_model_pages_with_diffofst#(128,8) mem_blk_pages_bc4;
    int blk_id_bc4 = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_bc4;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_crcsr;
    int blk_id_crcsr = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_crcsr;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_ccid;
    int blk_id_ccid = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_ccid;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_cval;
    int blk_id_cval = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_cval;

    mem_model_pages#(32,8) mem_blk_pages_ctr_arnum;
    mem_model_pages#(32,8) mem_blk_pages_ctr_brnum;
    mem_model_pages#(32,8) mem_blk_pages_ctr_B_rcsr_base;
    mem_model_pages#(32,8) mem_blk_pages_ctr_B_val_base;
    mem_model_pages#(32,8) mem_blk_pages_ctr_B_cid_base;
    mem_model_pages#(32,8) mem_blk_pages_ctr_r1acc;
    mem_model_pages#(32,8) mem_blk_pages_ctr_r1hit;
    mem_model_pages#(32,8) mem_blk_pages_ctr_r2acc;
    mem_model_pages#(32,8) mem_blk_pages_ctr_r2hit;
    mem_model_pages#(32,8) mem_blk_pages_ctr_r3acc;
    mem_model_pages#(32,8) mem_blk_pages_ctr_r3hit;
    mem_model_pages#(32,8) mem_blk_pages_ctr_r4acc;
    mem_model_pages#(32,8) mem_blk_pages_ctr_r4hit;
    mem_model_pages#(32,8) mem_blk_pages_ctr_vc1acc;
    mem_model_pages#(32,8) mem_blk_pages_ctr_vc1hit;
    mem_model_pages#(32,8) mem_blk_pages_ctr_vc2acc;
    mem_model_pages#(32,8) mem_blk_pages_ctr_vc2hit;
    mem_model_pages#(32,8) mem_blk_pages_ctr_vc3acc;
    mem_model_pages#(32,8) mem_blk_pages_ctr_vc3hit;
    mem_model_pages#(32,8) mem_blk_pages_ctr_vc4acc;
    mem_model_pages#(32,8) mem_blk_pages_ctr_vc4hit;
    mem_model_pages#(32,8) mem_blk_pages_ctr_fnum;
    mem_model_pages#(32,8) mem_blk_pages_ctr_workload_counter1;
    mem_model_pages#(32,8) mem_blk_pages_ctr_workload_counter2;
    mem_model_pages#(32,8) mem_blk_pages_ctr_workload_counter3;
    mem_model_pages#(32,8) mem_blk_pages_ctr_workload_counter4;
    
    `uvm_component_utils_begin(spmm_reference_model)
        `uvm_field_int (trans_num_idx, UVM_DEFAULT)
    `uvm_component_utils_end

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual misc_interface)::get(this, "", "misc_if", misc_if))
            `uvm_fatal(this.get_full_name(), "No misc_if from high level")
        axi_memaccess_cb_arcsr = new;
        axi_memaccess_cb_arcsr.refm = this;
        axi_memaccess_cb_arcsr.memid = "arcsr";
        axi_memaccess_cb_acid = new;
        axi_memaccess_cb_acid.refm = this;
        axi_memaccess_cb_acid.memid = "acid";
        axi_memaccess_cb_aval = new;
        axi_memaccess_cb_aval.refm = this;
        axi_memaccess_cb_aval.memid = "aval";
        axi_memaccess_cb_brcsr1 = new;
        axi_memaccess_cb_brcsr1.refm = this;
        axi_memaccess_cb_brcsr1.memid = "brcsr1";
        axi_memaccess_cb_brcsr2 = new;
        axi_memaccess_cb_brcsr2.refm = this;
        axi_memaccess_cb_brcsr2.memid = "brcsr2";
        axi_memaccess_cb_brcsr3 = new;
        axi_memaccess_cb_brcsr3.refm = this;
        axi_memaccess_cb_brcsr3.memid = "brcsr3";
        axi_memaccess_cb_brcsr4 = new;
        axi_memaccess_cb_brcsr4.refm = this;
        axi_memaccess_cb_brcsr4.memid = "brcsr4";
        axi_memaccess_cb_bval1 = new;
        axi_memaccess_cb_bval1.refm = this;
        axi_memaccess_cb_bval1.memid = "bval1";
        axi_memaccess_cb_bcid1 = new;
        axi_memaccess_cb_bcid1.refm = this;
        axi_memaccess_cb_bcid1.memid = "bcid1";
        axi_memaccess_cb_bval2 = new;
        axi_memaccess_cb_bval2.refm = this;
        axi_memaccess_cb_bval2.memid = "bval2";
        axi_memaccess_cb_bcid2 = new;
        axi_memaccess_cb_bcid2.refm = this;
        axi_memaccess_cb_bcid2.memid = "bcid2";
        axi_memaccess_cb_bval3 = new;
        axi_memaccess_cb_bval3.refm = this;
        axi_memaccess_cb_bval3.memid = "bval3";
        axi_memaccess_cb_bcid3 = new;
        axi_memaccess_cb_bcid3.refm = this;
        axi_memaccess_cb_bcid3.memid = "bcid3";
        axi_memaccess_cb_bval4 = new;
        axi_memaccess_cb_bval4.refm = this;
        axi_memaccess_cb_bval4.memid = "bval4";
        axi_memaccess_cb_bcid4 = new;
        axi_memaccess_cb_bcid4.refm = this;
        axi_memaccess_cb_bcid4.memid = "bcid4";
        axi_memaccess_cb_bv1 = new;
        axi_memaccess_cb_bv1.refm = this;
        axi_memaccess_cb_bv1.memid = "bv1";
        axi_memaccess_cb_bc1 = new;
        axi_memaccess_cb_bc1.refm = this;
        axi_memaccess_cb_bc1.memid = "bc1";
        axi_memaccess_cb_bv2 = new;
        axi_memaccess_cb_bv2.refm = this;
        axi_memaccess_cb_bv2.memid = "bv2";
        axi_memaccess_cb_bc2 = new;
        axi_memaccess_cb_bc2.refm = this;
        axi_memaccess_cb_bc2.memid = "bc2";
        axi_memaccess_cb_bv3 = new;
        axi_memaccess_cb_bv3.refm = this;
        axi_memaccess_cb_bv3.memid = "bv3";
        axi_memaccess_cb_bc3 = new;
        axi_memaccess_cb_bc3.refm = this;
        axi_memaccess_cb_bc3.memid = "bc3";
        axi_memaccess_cb_bv4 = new;
        axi_memaccess_cb_bv4.refm = this;
        axi_memaccess_cb_bv4.memid = "bv4";
        axi_memaccess_cb_bc4 = new;
        axi_memaccess_cb_bc4.refm = this;
        axi_memaccess_cb_bc4.memid = "bc4";
        axi_memaccess_cb_crcsr = new;
        axi_memaccess_cb_crcsr.refm = this;
        axi_memaccess_cb_crcsr.memid = "crcsr";
        axi_memaccess_cb_ccid = new;
        axi_memaccess_cb_ccid.refm = this;
        axi_memaccess_cb_ccid.memid = "ccid";
        axi_memaccess_cb_cval = new;
        axi_memaccess_cb_cval.refm = this;
        axi_memaccess_cb_cval.memid = "cval";
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new (name, parent);
        trans_num_idx= 0;
    endfunction

    virtual task run_phase(uvm_phase phase);
        string fpath[$];
misc_if.dut2tb_ap_done = 0;

        fpath.push_back(`TV_IN_arnum);
        mem_blk_pages_ctr_arnum = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_arnum");
        mem_blk_pages_ctr_arnum.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 16);
        fpath.delete;


        fpath.push_back(`TV_IN_brnum);
        mem_blk_pages_ctr_brnum = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_brnum");
        mem_blk_pages_ctr_brnum.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 32);
        fpath.delete;


        fpath.push_back(`TV_IN_B_rcsr_base);
        mem_blk_pages_ctr_B_rcsr_base = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_B_rcsr_base");
        mem_blk_pages_ctr_B_rcsr_base.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 48);
        fpath.delete;


        fpath.push_back(`TV_IN_B_val_base);
        mem_blk_pages_ctr_B_val_base = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_B_val_base");
        mem_blk_pages_ctr_B_val_base.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 56);
        fpath.delete;


        fpath.push_back(`TV_IN_B_cid_base);
        mem_blk_pages_ctr_B_cid_base = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_B_cid_base");
        mem_blk_pages_ctr_B_cid_base.tvinload_pagechk_atinit(fpath, 1*((32+7)/8), 0, 64);
        fpath.delete;


        mem_blk_pages_ctr_r1acc = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_r1acc");
        mem_blk_pages_ctr_r1acc.init_pages(trans_num_total, 1*((32+7)/8), 72);
        mem_blk_pages_ctr_r1acc.tvoutdump_atinit(`TV_OUT_r1acc);


        mem_blk_pages_ctr_r1hit = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_r1hit");
        mem_blk_pages_ctr_r1hit.init_pages(trans_num_total, 1*((32+7)/8), 88);
        mem_blk_pages_ctr_r1hit.tvoutdump_atinit(`TV_OUT_r1hit);


        mem_blk_pages_ctr_r2acc = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_r2acc");
        mem_blk_pages_ctr_r2acc.init_pages(trans_num_total, 1*((32+7)/8), 104);
        mem_blk_pages_ctr_r2acc.tvoutdump_atinit(`TV_OUT_r2acc);


        mem_blk_pages_ctr_r2hit = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_r2hit");
        mem_blk_pages_ctr_r2hit.init_pages(trans_num_total, 1*((32+7)/8), 120);
        mem_blk_pages_ctr_r2hit.tvoutdump_atinit(`TV_OUT_r2hit);


        mem_blk_pages_ctr_r3acc = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_r3acc");
        mem_blk_pages_ctr_r3acc.init_pages(trans_num_total, 1*((32+7)/8), 136);
        mem_blk_pages_ctr_r3acc.tvoutdump_atinit(`TV_OUT_r3acc);


        mem_blk_pages_ctr_r3hit = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_r3hit");
        mem_blk_pages_ctr_r3hit.init_pages(trans_num_total, 1*((32+7)/8), 152);
        mem_blk_pages_ctr_r3hit.tvoutdump_atinit(`TV_OUT_r3hit);


        mem_blk_pages_ctr_r4acc = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_r4acc");
        mem_blk_pages_ctr_r4acc.init_pages(trans_num_total, 1*((32+7)/8), 168);
        mem_blk_pages_ctr_r4acc.tvoutdump_atinit(`TV_OUT_r4acc);


        mem_blk_pages_ctr_r4hit = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_r4hit");
        mem_blk_pages_ctr_r4hit.init_pages(trans_num_total, 1*((32+7)/8), 184);
        mem_blk_pages_ctr_r4hit.tvoutdump_atinit(`TV_OUT_r4hit);


        mem_blk_pages_ctr_vc1acc = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_vc1acc");
        mem_blk_pages_ctr_vc1acc.init_pages(trans_num_total, 1*((32+7)/8), 264);
        mem_blk_pages_ctr_vc1acc.tvoutdump_atinit(`TV_OUT_vc1acc);


        mem_blk_pages_ctr_vc1hit = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_vc1hit");
        mem_blk_pages_ctr_vc1hit.init_pages(trans_num_total, 1*((32+7)/8), 280);
        mem_blk_pages_ctr_vc1hit.tvoutdump_atinit(`TV_OUT_vc1hit);


        mem_blk_pages_ctr_vc2acc = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_vc2acc");
        mem_blk_pages_ctr_vc2acc.init_pages(trans_num_total, 1*((32+7)/8), 296);
        mem_blk_pages_ctr_vc2acc.tvoutdump_atinit(`TV_OUT_vc2acc);


        mem_blk_pages_ctr_vc2hit = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_vc2hit");
        mem_blk_pages_ctr_vc2hit.init_pages(trans_num_total, 1*((32+7)/8), 312);
        mem_blk_pages_ctr_vc2hit.tvoutdump_atinit(`TV_OUT_vc2hit);


        mem_blk_pages_ctr_vc3acc = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_vc3acc");
        mem_blk_pages_ctr_vc3acc.init_pages(trans_num_total, 1*((32+7)/8), 328);
        mem_blk_pages_ctr_vc3acc.tvoutdump_atinit(`TV_OUT_vc3acc);


        mem_blk_pages_ctr_vc3hit = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_vc3hit");
        mem_blk_pages_ctr_vc3hit.init_pages(trans_num_total, 1*((32+7)/8), 344);
        mem_blk_pages_ctr_vc3hit.tvoutdump_atinit(`TV_OUT_vc3hit);


        mem_blk_pages_ctr_vc4acc = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_vc4acc");
        mem_blk_pages_ctr_vc4acc.init_pages(trans_num_total, 1*((32+7)/8), 360);
        mem_blk_pages_ctr_vc4acc.tvoutdump_atinit(`TV_OUT_vc4acc);


        mem_blk_pages_ctr_vc4hit = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_vc4hit");
        mem_blk_pages_ctr_vc4hit.init_pages(trans_num_total, 1*((32+7)/8), 376);
        mem_blk_pages_ctr_vc4hit.tvoutdump_atinit(`TV_OUT_vc4hit);


        mem_blk_pages_ctr_fnum = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_fnum");
        mem_blk_pages_ctr_fnum.init_pages(trans_num_total, 1*((32+7)/8), 456);
        mem_blk_pages_ctr_fnum.tvoutdump_atinit(`TV_OUT_fnum);


        mem_blk_pages_ctr_workload_counter1 = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_workload_counter1");
        mem_blk_pages_ctr_workload_counter1.init_pages(trans_num_total, 1*((32+7)/8), 472);
        mem_blk_pages_ctr_workload_counter1.tvoutdump_atinit(`TV_OUT_workload_counter1);


        mem_blk_pages_ctr_workload_counter2 = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_workload_counter2");
        mem_blk_pages_ctr_workload_counter2.init_pages(trans_num_total, 1*((32+7)/8), 488);
        mem_blk_pages_ctr_workload_counter2.tvoutdump_atinit(`TV_OUT_workload_counter2);


        mem_blk_pages_ctr_workload_counter3 = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_workload_counter3");
        mem_blk_pages_ctr_workload_counter3.init_pages(trans_num_total, 1*((32+7)/8), 504);
        mem_blk_pages_ctr_workload_counter3.tvoutdump_atinit(`TV_OUT_workload_counter3);


        mem_blk_pages_ctr_workload_counter4 = mem_model_pages#(32,8)::type_id::create("mem_blk_pages_ctr_workload_counter4");
        mem_blk_pages_ctr_workload_counter4.init_pages(trans_num_total, 1*((32+7)/8), 520);
        mem_blk_pages_ctr_workload_counter4.tvoutdump_atinit(`TV_OUT_workload_counter4);

        fpath.push_back(`TV_IN_arcsr);
        mem_blk_pages_arcsr = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_arcsr");
        mem_blk_pages_arcsr.whole_page_size=320;
        mem_blk_pages_arcsr.maxi_bundlevar_fpath["A_rcsr"]=`TV_IN_OFFSET_A_rcsr;
        mem_blk_pages_arcsr.set_binary(1);
        mem_blk_pages_arcsr.tvinload_pagechk_atinit(fpath, 64*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_acid);
        mem_blk_pages_acid = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_acid");
        mem_blk_pages_acid.whole_page_size=4160;
        mem_blk_pages_acid.maxi_bundlevar_fpath["A_cid"]=`TV_IN_OFFSET_A_cid;
        mem_blk_pages_acid.set_binary(1);
        mem_blk_pages_acid.tvinload_pagechk_atinit(fpath, 1024*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_aval);
        mem_blk_pages_aval = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_aval");
        mem_blk_pages_aval.whole_page_size=4160;
        mem_blk_pages_aval.maxi_bundlevar_fpath["A_val"]=`TV_IN_OFFSET_A_val;
        mem_blk_pages_aval.set_binary(1);
        mem_blk_pages_aval.tvinload_pagechk_atinit(fpath, 1024*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_brcsr1);
        mem_blk_pages_brcsr1 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_brcsr1");
        mem_blk_pages_brcsr1.whole_page_size=512;
        mem_blk_pages_brcsr1.maxi_bundlevar_fpath["B_rcsr1"]=`TV_IN_OFFSET_B_rcsr1;
        mem_blk_pages_brcsr1.set_binary(1);
        mem_blk_pages_brcsr1.tvinload_pagechk_atinit(fpath, 16*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_brcsr2);
        mem_blk_pages_brcsr2 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_brcsr2");
        mem_blk_pages_brcsr2.whole_page_size=512;
        mem_blk_pages_brcsr2.maxi_bundlevar_fpath["B_rcsr2"]=`TV_IN_OFFSET_B_rcsr2;
        mem_blk_pages_brcsr2.set_binary(1);
        mem_blk_pages_brcsr2.tvinload_pagechk_atinit(fpath, 16*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_brcsr3);
        mem_blk_pages_brcsr3 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_brcsr3");
        mem_blk_pages_brcsr3.whole_page_size=512;
        mem_blk_pages_brcsr3.maxi_bundlevar_fpath["B_rcsr3"]=`TV_IN_OFFSET_B_rcsr3;
        mem_blk_pages_brcsr3.set_binary(1);
        mem_blk_pages_brcsr3.tvinload_pagechk_atinit(fpath, 16*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_brcsr4);
        mem_blk_pages_brcsr4 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_brcsr4");
        mem_blk_pages_brcsr4.whole_page_size=512;
        mem_blk_pages_brcsr4.maxi_bundlevar_fpath["B_rcsr4"]=`TV_IN_OFFSET_B_rcsr4;
        mem_blk_pages_brcsr4.set_binary(1);
        mem_blk_pages_brcsr4.tvinload_pagechk_atinit(fpath, 16*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bval1);
        mem_blk_pages_bval1 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bval1");
        mem_blk_pages_bval1.whole_page_size=4352;
        mem_blk_pages_bval1.maxi_bundlevar_fpath["B_val1"]=`TV_IN_OFFSET_B_val1;
        mem_blk_pages_bval1.set_binary(1);
        mem_blk_pages_bval1.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bcid1);
        mem_blk_pages_bcid1 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bcid1");
        mem_blk_pages_bcid1.whole_page_size=4352;
        mem_blk_pages_bcid1.maxi_bundlevar_fpath["B_cid1"]=`TV_IN_OFFSET_B_cid1;
        mem_blk_pages_bcid1.set_binary(1);
        mem_blk_pages_bcid1.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bval2);
        mem_blk_pages_bval2 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bval2");
        mem_blk_pages_bval2.whole_page_size=4352;
        mem_blk_pages_bval2.maxi_bundlevar_fpath["B_val2"]=`TV_IN_OFFSET_B_val2;
        mem_blk_pages_bval2.set_binary(1);
        mem_blk_pages_bval2.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bcid2);
        mem_blk_pages_bcid2 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bcid2");
        mem_blk_pages_bcid2.whole_page_size=4352;
        mem_blk_pages_bcid2.maxi_bundlevar_fpath["B_cid2"]=`TV_IN_OFFSET_B_cid2;
        mem_blk_pages_bcid2.set_binary(1);
        mem_blk_pages_bcid2.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bval3);
        mem_blk_pages_bval3 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bval3");
        mem_blk_pages_bval3.whole_page_size=4352;
        mem_blk_pages_bval3.maxi_bundlevar_fpath["B_val3"]=`TV_IN_OFFSET_B_val3;
        mem_blk_pages_bval3.set_binary(1);
        mem_blk_pages_bval3.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bcid3);
        mem_blk_pages_bcid3 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bcid3");
        mem_blk_pages_bcid3.whole_page_size=4352;
        mem_blk_pages_bcid3.maxi_bundlevar_fpath["B_cid3"]=`TV_IN_OFFSET_B_cid3;
        mem_blk_pages_bcid3.set_binary(1);
        mem_blk_pages_bcid3.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bval4);
        mem_blk_pages_bval4 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bval4");
        mem_blk_pages_bval4.whole_page_size=4352;
        mem_blk_pages_bval4.maxi_bundlevar_fpath["B_val4"]=`TV_IN_OFFSET_B_val4;
        mem_blk_pages_bval4.set_binary(1);
        mem_blk_pages_bval4.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bcid4);
        mem_blk_pages_bcid4 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bcid4");
        mem_blk_pages_bcid4.whole_page_size=4352;
        mem_blk_pages_bcid4.maxi_bundlevar_fpath["B_cid4"]=`TV_IN_OFFSET_B_cid4;
        mem_blk_pages_bcid4.set_binary(1);
        mem_blk_pages_bcid4.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bv1);
        mem_blk_pages_bv1 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bv1");
        mem_blk_pages_bv1.whole_page_size=4352;
        mem_blk_pages_bv1.maxi_bundlevar_fpath["B_val_port1"]=`TV_IN_OFFSET_B_val_port1;
        mem_blk_pages_bv1.set_binary(1);
        mem_blk_pages_bv1.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bc1);
        mem_blk_pages_bc1 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bc1");
        mem_blk_pages_bc1.whole_page_size=4352;
        mem_blk_pages_bc1.maxi_bundlevar_fpath["B_cid_port1"]=`TV_IN_OFFSET_B_cid_port1;
        mem_blk_pages_bc1.set_binary(1);
        mem_blk_pages_bc1.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bv2);
        mem_blk_pages_bv2 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bv2");
        mem_blk_pages_bv2.whole_page_size=4352;
        mem_blk_pages_bv2.maxi_bundlevar_fpath["B_val_port2"]=`TV_IN_OFFSET_B_val_port2;
        mem_blk_pages_bv2.set_binary(1);
        mem_blk_pages_bv2.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bc2);
        mem_blk_pages_bc2 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bc2");
        mem_blk_pages_bc2.whole_page_size=4352;
        mem_blk_pages_bc2.maxi_bundlevar_fpath["B_cid_port2"]=`TV_IN_OFFSET_B_cid_port2;
        mem_blk_pages_bc2.set_binary(1);
        mem_blk_pages_bc2.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bv3);
        mem_blk_pages_bv3 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bv3");
        mem_blk_pages_bv3.whole_page_size=4352;
        mem_blk_pages_bv3.maxi_bundlevar_fpath["B_val_port3"]=`TV_IN_OFFSET_B_val_port3;
        mem_blk_pages_bv3.set_binary(1);
        mem_blk_pages_bv3.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bc3);
        mem_blk_pages_bc3 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bc3");
        mem_blk_pages_bc3.whole_page_size=4352;
        mem_blk_pages_bc3.maxi_bundlevar_fpath["B_cid_port3"]=`TV_IN_OFFSET_B_cid_port3;
        mem_blk_pages_bc3.set_binary(1);
        mem_blk_pages_bc3.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bv4);
        mem_blk_pages_bv4 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bv4");
        mem_blk_pages_bv4.whole_page_size=4352;
        mem_blk_pages_bv4.maxi_bundlevar_fpath["B_val_port4"]=`TV_IN_OFFSET_B_val_port4;
        mem_blk_pages_bv4.set_binary(1);
        mem_blk_pages_bv4.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_bc4);
        mem_blk_pages_bc4 = mem_model_pages_with_diffofst#(128,8)::type_id::create("mem_blk_pages_bc4");
        mem_blk_pages_bc4.whole_page_size=4352;
        mem_blk_pages_bc4.maxi_bundlevar_fpath["B_cid_port4"]=`TV_IN_OFFSET_B_cid_port4;
        mem_blk_pages_bc4.set_binary(1);
        mem_blk_pages_bc4.tvinload_pagechk_atinit(fpath, 256*((128+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_crcsr);
        mem_blk_pages_crcsr = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_crcsr");
        mem_blk_pages_crcsr.whole_page_size=320;
        mem_blk_pages_crcsr.maxi_bundlevar_fpath["C_rcsr"]=`TV_IN_OFFSET_C_rcsr;
        mem_blk_pages_crcsr.set_binary(1);
        mem_blk_pages_crcsr.tvinload_pagechk_atinit(fpath, 64*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_ccid);
        mem_blk_pages_ccid = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_ccid");
        mem_blk_pages_ccid.whole_page_size=4164;
        mem_blk_pages_ccid.maxi_bundlevar_fpath["C_cid"]=`TV_IN_OFFSET_C_cid;
        mem_blk_pages_ccid.set_binary(1);
        mem_blk_pages_ccid.tvinload_pagechk_atinit(fpath, 1025*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_cval);
        mem_blk_pages_cval = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_cval");
        mem_blk_pages_cval.whole_page_size=4164;
        mem_blk_pages_cval.maxi_bundlevar_fpath["C_val"]=`TV_IN_OFFSET_C_val;
        mem_blk_pages_cval.set_binary(1);
        mem_blk_pages_cval.tvinload_pagechk_atinit(fpath, 1025*((32+7)/8), 0, 0);
        mem_blk_pages_cval.tvoutdump_atinit(`TV_OUT_cval);
        fpath.delete();

        fork
            forever begin
                wait(write_data_finish_control&&write_data_finish_ctr);
                `uvm_info("", "trigger_allaxilite_data_write_finish", UVM_LOW)
                @(posedge misc_if.clock);
                write_data_finish_control = 0;
                write_data_finish_ctr = 0;
                -> allaxilite_write_data_finish;
            end
            forever begin
                wait(read_data_finish_ctr);
                `uvm_info("", "trigger_allaxilite_data_read_finish", UVM_LOW)
                @(posedge misc_if.clock);
                read_data_finish_ctr = 0;
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
                mem_blk_pages_arcsr.incr_rd_page_idx() ;
                mem_blk_pages_acid.incr_rd_page_idx() ;
                mem_blk_pages_aval.incr_rd_page_idx() ;
                mem_blk_pages_brcsr1.incr_rd_page_idx() ;
                mem_blk_pages_brcsr2.incr_rd_page_idx() ;
                mem_blk_pages_brcsr3.incr_rd_page_idx() ;
                mem_blk_pages_brcsr4.incr_rd_page_idx() ;
                mem_blk_pages_bval1.incr_rd_page_idx() ;
                mem_blk_pages_bcid1.incr_rd_page_idx() ;
                mem_blk_pages_bval2.incr_rd_page_idx() ;
                mem_blk_pages_bcid2.incr_rd_page_idx() ;
                mem_blk_pages_bval3.incr_rd_page_idx() ;
                mem_blk_pages_bcid3.incr_rd_page_idx() ;
                mem_blk_pages_bval4.incr_rd_page_idx() ;
                mem_blk_pages_bcid4.incr_rd_page_idx() ;
                mem_blk_pages_bv1.incr_rd_page_idx() ;
                mem_blk_pages_bc1.incr_rd_page_idx() ;
                mem_blk_pages_bv2.incr_rd_page_idx() ;
                mem_blk_pages_bc2.incr_rd_page_idx() ;
                mem_blk_pages_bv3.incr_rd_page_idx() ;
                mem_blk_pages_bc3.incr_rd_page_idx() ;
                mem_blk_pages_bv4.incr_rd_page_idx() ;
                mem_blk_pages_bc4.incr_rd_page_idx() ;
                mem_blk_pages_crcsr.incr_rd_page_idx() ;
                mem_blk_pages_ccid.incr_rd_page_idx() ;
                mem_blk_pages_cval.incr_rd_page_idx() ;
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

    virtual function void write_axi_wtr_arcsr(axi_pkg::axi_transfer tr);
        mem_blk_pages_arcsr.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_arcsr(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_acid(axi_pkg::axi_transfer tr);
        mem_blk_pages_acid.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_acid(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_aval(axi_pkg::axi_transfer tr);
        mem_blk_pages_aval.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_aval(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_brcsr1(axi_pkg::axi_transfer tr);
        mem_blk_pages_brcsr1.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_brcsr1(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_brcsr2(axi_pkg::axi_transfer tr);
        mem_blk_pages_brcsr2.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_brcsr2(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_brcsr3(axi_pkg::axi_transfer tr);
        mem_blk_pages_brcsr3.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_brcsr3(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_brcsr4(axi_pkg::axi_transfer tr);
        mem_blk_pages_brcsr4.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_brcsr4(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bval1(axi_pkg::axi_transfer tr);
        mem_blk_pages_bval1.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bval1(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bcid1(axi_pkg::axi_transfer tr);
        mem_blk_pages_bcid1.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bcid1(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bval2(axi_pkg::axi_transfer tr);
        mem_blk_pages_bval2.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bval2(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bcid2(axi_pkg::axi_transfer tr);
        mem_blk_pages_bcid2.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bcid2(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bval3(axi_pkg::axi_transfer tr);
        mem_blk_pages_bval3.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bval3(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bcid3(axi_pkg::axi_transfer tr);
        mem_blk_pages_bcid3.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bcid3(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bval4(axi_pkg::axi_transfer tr);
        mem_blk_pages_bval4.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bval4(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bcid4(axi_pkg::axi_transfer tr);
        mem_blk_pages_bcid4.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bcid4(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bv1(axi_pkg::axi_transfer tr);
        mem_blk_pages_bv1.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bv1(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bc1(axi_pkg::axi_transfer tr);
        mem_blk_pages_bc1.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bc1(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bv2(axi_pkg::axi_transfer tr);
        mem_blk_pages_bv2.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bv2(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bc2(axi_pkg::axi_transfer tr);
        mem_blk_pages_bc2.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bc2(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bv3(axi_pkg::axi_transfer tr);
        mem_blk_pages_bv3.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bv3(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bc3(axi_pkg::axi_transfer tr);
        mem_blk_pages_bc3.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bc3(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bv4(axi_pkg::axi_transfer tr);
        mem_blk_pages_bv4.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bv4(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_bc4(axi_pkg::axi_transfer tr);
        mem_blk_pages_bc4.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_bc4(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_crcsr(axi_pkg::axi_transfer tr);
        mem_blk_pages_crcsr.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_crcsr(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_ccid(axi_pkg::axi_transfer tr);
        mem_blk_pages_ccid.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_ccid(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_cval(axi_pkg::axi_transfer tr);
        mem_blk_pages_cval.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_cval(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_control(axi_pkg::axi_transfer tr);
    endfunction
    virtual function void write_axi_rtr_control(axi_pkg::axi_transfer tr);
            `uvm_info("receive axi read data", tr.sprint(), UVM_HIGH)
        if(0) begin //no block ctrl register processing
        end else begin
        end
    endfunction

    virtual function void write_axi_wtr_ctr(axi_pkg::axi_transfer tr);
        if(tr.addr == 0 && tr.len == 0 && tr.data[0][0]==1) begin //addr 0 and bit 0 are parameter
            -> write_start_finish;
            misc_if.tb2dut_ap_start = 1;
        end
    endfunction
    virtual function void write_axi_rtr_ctr(axi_pkg::axi_transfer tr);
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
            mem_blk_pages_ctr_r1acc.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_r1hit.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_r2acc.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_r2hit.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_r3acc.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_r3hit.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_r4acc.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_r4hit.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_vc1acc.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_vc1hit.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_vc2acc.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_vc2hit.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_vc3acc.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_vc3hit.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_vc4acc.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_vc4hit.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_fnum.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_workload_counter1.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_workload_counter2.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_workload_counter3.write_elems_frontpage(tr.data, tr.byte_addr);
            mem_blk_pages_ctr_workload_counter4.write_elems_frontpage(tr.data, tr.byte_addr);
        end
    endfunction
endclass
`endif
