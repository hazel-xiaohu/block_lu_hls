
`include "dump_file_agent.svh"
`include "csv_file_dump.svh"
`include "sample_agent.svh"
`include "loop_sample_agent.svh"
`include "sample_manager.svh"
`include "nodf_module_interface.svh"
`include "nodf_module_monitor.svh"
`include "seq_loop_interface.svh"
`include "seq_loop_monitor.svh"
`include "upc_loop_interface.svh"
`include "upc_loop_monitor.svh"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);




    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_large_getrf_v4.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_large_getrf_v4.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_large_getrf_v4.ap_done;
    assign module_intf_1.ap_continue = 1'b1;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;
    nodf_module_intf module_intf_2(clock,reset);
    assign module_intf_2.ap_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_47_1_fu_1332.ap_start;
    assign module_intf_2.ap_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_47_1_fu_1332.ap_ready;
    assign module_intf_2.ap_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_47_1_fu_1332.ap_done;
    assign module_intf_2.ap_continue = 1'b1;
    assign module_intf_2.finish = finish;
    csv_file_dump mstatus_csv_dumper_2;
    nodf_module_monitor module_monitor_2;
    nodf_module_intf module_intf_3(clock,reset);
    assign module_intf_3.ap_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_start;
    assign module_intf_3.ap_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_ready;
    assign module_intf_3.ap_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_done;
    assign module_intf_3.ap_continue = 1'b1;
    assign module_intf_3.finish = finish;
    csv_file_dump mstatus_csv_dumper_3;
    nodf_module_monitor module_monitor_3;
    nodf_module_intf module_intf_4(clock,reset);
    assign module_intf_4.ap_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_start;
    assign module_intf_4.ap_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_ready;
    assign module_intf_4.ap_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_done;
    assign module_intf_4.ap_continue = 1'b1;
    assign module_intf_4.finish = finish;
    csv_file_dump mstatus_csv_dumper_4;
    nodf_module_monitor module_monitor_4;
    nodf_module_intf module_intf_5(clock,reset);
    assign module_intf_5.ap_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_start;
    assign module_intf_5.ap_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_ready;
    assign module_intf_5.ap_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_done;
    assign module_intf_5.ap_continue = 1'b1;
    assign module_intf_5.finish = finish;
    csv_file_dump mstatus_csv_dumper_5;
    nodf_module_monitor module_monitor_5;
    nodf_module_intf module_intf_6(clock,reset);
    assign module_intf_6.ap_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_start;
    assign module_intf_6.ap_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_ready;
    assign module_intf_6.ap_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_done;
    assign module_intf_6.ap_continue = 1'b1;
    assign module_intf_6.finish = finish;
    csv_file_dump mstatus_csv_dumper_6;
    nodf_module_monitor module_monitor_6;
    nodf_module_intf module_intf_7(clock,reset);
    assign module_intf_7.ap_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_98_11_fu_1414.ap_start;
    assign module_intf_7.ap_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_98_11_fu_1414.ap_ready;
    assign module_intf_7.ap_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_98_11_fu_1414.ap_done;
    assign module_intf_7.ap_continue = 1'b1;
    assign module_intf_7.finish = finish;
    csv_file_dump mstatus_csv_dumper_7;
    nodf_module_monitor module_monitor_7;
    nodf_module_intf module_intf_8(clock,reset);
    assign module_intf_8.ap_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_start;
    assign module_intf_8.ap_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_ready;
    assign module_intf_8.ap_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_done;
    assign module_intf_8.ap_continue = 1'b1;
    assign module_intf_8.finish = finish;
    csv_file_dump mstatus_csv_dumper_8;
    nodf_module_monitor module_monitor_8;
    nodf_module_intf module_intf_9(clock,reset);
    assign module_intf_9.ap_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_start;
    assign module_intf_9.ap_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_ready;
    assign module_intf_9.ap_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_done;
    assign module_intf_9.ap_continue = 1'b1;
    assign module_intf_9.finish = finish;
    csv_file_dump mstatus_csv_dumper_9;
    nodf_module_monitor module_monitor_9;
    nodf_module_intf module_intf_10(clock,reset);
    assign module_intf_10.ap_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_start;
    assign module_intf_10.ap_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_ready;
    assign module_intf_10.ap_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_done;
    assign module_intf_10.ap_continue = 1'b1;
    assign module_intf_10.finish = finish;
    csv_file_dump mstatus_csv_dumper_10;
    nodf_module_monitor module_monitor_10;

    seq_loop_intf#(148) seq_loop_intf_1(clock,reset);
    assign seq_loop_intf_1.pre_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state93;
    assign seq_loop_intf_1.pre_states_valid[0] = 1'b1;
    assign seq_loop_intf_1.pre_loop_state1 = 148'h0;
    assign seq_loop_intf_1.pre_states_valid[1] = 1'b0;
    assign seq_loop_intf_1.pre_loop_state2 = 148'h0;
    assign seq_loop_intf_1.pre_states_valid[2] = 1'b0;
    assign seq_loop_intf_1.pre_loop_state3 = 148'h0;
    assign seq_loop_intf_1.pre_states_valid[3] = 1'b0;
    assign seq_loop_intf_1.post_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state97;
    assign seq_loop_intf_1.post_states_valid[0] = 1'b1;
    assign seq_loop_intf_1.post_loop_state1 = AESL_inst_large_getrf_v4.ap_ST_fsm_state99;
    assign seq_loop_intf_1.post_states_valid[1] = 1'b1;
    assign seq_loop_intf_1.quit_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state94;
    assign seq_loop_intf_1.quit_states_valid[0] = 1'b1;
    assign seq_loop_intf_1.quit_loop_state1 = 148'h0;
    assign seq_loop_intf_1.quit_states_valid[1] = 1'b0;
    assign seq_loop_intf_1.cur_state = AESL_inst_large_getrf_v4.ap_CS_fsm;
    assign seq_loop_intf_1.iter_start_state = AESL_inst_large_getrf_v4.ap_ST_fsm_state94;
    assign seq_loop_intf_1.iter_end_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state96;
    assign seq_loop_intf_1.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_1.one_state_loop = 1'b0;
    assign seq_loop_intf_1.one_state_block = 1'b0;
    assign seq_loop_intf_1.finish = finish;
    csv_file_dump seq_loop_csv_dumper_1;
    seq_loop_monitor #(148) seq_loop_monitor_1;
    seq_loop_intf#(148) seq_loop_intf_2(clock,reset);
    assign seq_loop_intf_2.pre_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state38;
    assign seq_loop_intf_2.pre_states_valid[0] = 1'b1;
    assign seq_loop_intf_2.pre_loop_state1 = AESL_inst_large_getrf_v4.ap_ST_fsm_state80;
    assign seq_loop_intf_2.pre_states_valid[1] = 1'b1;
    assign seq_loop_intf_2.pre_loop_state2 = AESL_inst_large_getrf_v4.ap_ST_fsm_state71;
    assign seq_loop_intf_2.pre_states_valid[2] = 1'b1;
    assign seq_loop_intf_2.pre_loop_state3 = AESL_inst_large_getrf_v4.ap_ST_fsm_state106;
    assign seq_loop_intf_2.pre_states_valid[3] = 1'b1;
    assign seq_loop_intf_2.post_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state107;
    assign seq_loop_intf_2.post_states_valid[0] = 1'b1;
    assign seq_loop_intf_2.post_loop_state1 = AESL_inst_large_getrf_v4.ap_ST_fsm_state148;
    assign seq_loop_intf_2.post_states_valid[1] = 1'b1;
    assign seq_loop_intf_2.quit_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state81;
    assign seq_loop_intf_2.quit_states_valid[0] = 1'b1;
    assign seq_loop_intf_2.quit_loop_state1 = AESL_inst_large_getrf_v4.ap_ST_fsm_state93;
    assign seq_loop_intf_2.quit_states_valid[1] = 1'b1;
    assign seq_loop_intf_2.cur_state = AESL_inst_large_getrf_v4.ap_CS_fsm;
    assign seq_loop_intf_2.iter_start_state = AESL_inst_large_getrf_v4.ap_ST_fsm_state81;
    assign seq_loop_intf_2.iter_end_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state98;
    assign seq_loop_intf_2.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_2.one_state_loop = 1'b0;
    assign seq_loop_intf_2.one_state_block = 1'b0;
    assign seq_loop_intf_2.finish = finish;
    csv_file_dump seq_loop_csv_dumper_2;
    seq_loop_monitor #(148) seq_loop_monitor_2;
    seq_loop_intf#(148) seq_loop_intf_3(clock,reset);
    assign seq_loop_intf_3.pre_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state28;
    assign seq_loop_intf_3.pre_states_valid[0] = 1'b1;
    assign seq_loop_intf_3.pre_loop_state1 = 148'h0;
    assign seq_loop_intf_3.pre_states_valid[1] = 1'b0;
    assign seq_loop_intf_3.pre_loop_state2 = 148'h0;
    assign seq_loop_intf_3.pre_states_valid[2] = 1'b0;
    assign seq_loop_intf_3.pre_loop_state3 = 148'h0;
    assign seq_loop_intf_3.pre_states_valid[3] = 1'b0;
    assign seq_loop_intf_3.post_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state108;
    assign seq_loop_intf_3.post_states_valid[0] = 1'b1;
    assign seq_loop_intf_3.post_loop_state1 = AESL_inst_large_getrf_v4.ap_ST_fsm_state148;
    assign seq_loop_intf_3.post_states_valid[1] = 1'b1;
    assign seq_loop_intf_3.quit_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state29;
    assign seq_loop_intf_3.quit_states_valid[0] = 1'b1;
    assign seq_loop_intf_3.quit_loop_state1 = AESL_inst_large_getrf_v4.ap_ST_fsm_state93;
    assign seq_loop_intf_3.quit_states_valid[1] = 1'b1;
    assign seq_loop_intf_3.cur_state = AESL_inst_large_getrf_v4.ap_CS_fsm;
    assign seq_loop_intf_3.iter_start_state = AESL_inst_large_getrf_v4.ap_ST_fsm_state29;
    assign seq_loop_intf_3.iter_end_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state107;
    assign seq_loop_intf_3.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_3.one_state_loop = 1'b0;
    assign seq_loop_intf_3.one_state_block = 1'b0;
    assign seq_loop_intf_3.finish = finish;
    csv_file_dump seq_loop_csv_dumper_3;
    seq_loop_monitor #(148) seq_loop_monitor_3;
    seq_loop_intf#(148) seq_loop_intf_4(clock,reset);
    assign seq_loop_intf_4.pre_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state4;
    assign seq_loop_intf_4.pre_states_valid[0] = 1'b1;
    assign seq_loop_intf_4.pre_loop_state1 = 148'h0;
    assign seq_loop_intf_4.pre_states_valid[1] = 1'b0;
    assign seq_loop_intf_4.pre_loop_state2 = 148'h0;
    assign seq_loop_intf_4.pre_states_valid[2] = 1'b0;
    assign seq_loop_intf_4.pre_loop_state3 = 148'h0;
    assign seq_loop_intf_4.pre_states_valid[3] = 1'b0;
    assign seq_loop_intf_4.post_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state1;
    assign seq_loop_intf_4.post_states_valid[0] = 1'b1;
    assign seq_loop_intf_4.post_loop_state1 = 148'h0;
    assign seq_loop_intf_4.post_states_valid[1] = 1'b0;
    assign seq_loop_intf_4.quit_loop_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state5;
    assign seq_loop_intf_4.quit_states_valid[0] = 1'b1;
    assign seq_loop_intf_4.quit_loop_state1 = 148'h0;
    assign seq_loop_intf_4.quit_states_valid[1] = 1'b0;
    assign seq_loop_intf_4.cur_state = AESL_inst_large_getrf_v4.ap_CS_fsm;
    assign seq_loop_intf_4.iter_start_state = AESL_inst_large_getrf_v4.ap_ST_fsm_state5;
    assign seq_loop_intf_4.iter_end_state0 = AESL_inst_large_getrf_v4.ap_ST_fsm_state148;
    assign seq_loop_intf_4.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_4.one_state_loop = 1'b0;
    assign seq_loop_intf_4.one_state_block = 1'b0;
    assign seq_loop_intf_4.finish = finish;
    csv_file_dump seq_loop_csv_dumper_4;
    seq_loop_monitor #(148) seq_loop_monitor_4;
    upc_loop_intf#(1) upc_loop_intf_1(clock,reset);
    assign upc_loop_intf_1.cur_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_CS_fsm;
    assign upc_loop_intf_1.iter_start_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.iter_end_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.quit_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.iter_start_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.iter_end_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.quit_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.iter_start_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_1.iter_end_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_1.quit_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_1.loop_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_start;
    assign upc_loop_intf_1.loop_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_ready;
    assign upc_loop_intf_1.loop_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_53_3_fu_1346.ap_done_int;
    assign upc_loop_intf_1.loop_continue = 1'b1;
    assign upc_loop_intf_1.quit_at_end = 1'b0;
    assign upc_loop_intf_1.finish = finish;
    csv_file_dump upc_loop_csv_dumper_1;
    upc_loop_monitor #(1) upc_loop_monitor_1;
    upc_loop_intf#(1) upc_loop_intf_2(clock,reset);
    assign upc_loop_intf_2.cur_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_CS_fsm;
    assign upc_loop_intf_2.iter_start_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.iter_end_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.quit_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.iter_start_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.iter_end_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.quit_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.iter_start_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_2.iter_end_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_2.quit_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_2.loop_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_start;
    assign upc_loop_intf_2.loop_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_ready;
    assign upc_loop_intf_2.loop_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_57_4_fu_1360.ap_done_int;
    assign upc_loop_intf_2.loop_continue = 1'b1;
    assign upc_loop_intf_2.quit_at_end = 1'b0;
    assign upc_loop_intf_2.finish = finish;
    csv_file_dump upc_loop_csv_dumper_2;
    upc_loop_monitor #(1) upc_loop_monitor_2;
    upc_loop_intf#(9) upc_loop_intf_3(clock,reset);
    assign upc_loop_intf_3.cur_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_CS_fsm;
    assign upc_loop_intf_3.iter_start_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_3.iter_end_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_ST_fsm_pp0_stage4;
    assign upc_loop_intf_3.quit_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_ST_fsm_pp0_stage4;
    assign upc_loop_intf_3.iter_start_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_3.iter_end_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_block_pp0_stage4_subdone;
    assign upc_loop_intf_3.quit_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_block_pp0_stage4_subdone;
    assign upc_loop_intf_3.iter_start_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_3.iter_end_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_3.quit_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_3.loop_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_start;
    assign upc_loop_intf_3.loop_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_ready;
    assign upc_loop_intf_3.loop_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_61_5_fu_1374.ap_done_int;
    assign upc_loop_intf_3.loop_continue = 1'b1;
    assign upc_loop_intf_3.quit_at_end = 1'b1;
    assign upc_loop_intf_3.finish = finish;
    csv_file_dump upc_loop_csv_dumper_3;
    upc_loop_monitor #(9) upc_loop_monitor_3;
    upc_loop_intf#(1) upc_loop_intf_4(clock,reset);
    assign upc_loop_intf_4.cur_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_CS_fsm;
    assign upc_loop_intf_4.iter_start_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.iter_end_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.quit_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.iter_start_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.iter_end_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.quit_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.iter_start_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_4.iter_end_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_4.quit_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_4.loop_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_start;
    assign upc_loop_intf_4.loop_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_ready;
    assign upc_loop_intf_4.loop_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_80_7_fu_1401.ap_done_int;
    assign upc_loop_intf_4.loop_continue = 1'b1;
    assign upc_loop_intf_4.quit_at_end = 1'b0;
    assign upc_loop_intf_4.finish = finish;
    csv_file_dump upc_loop_csv_dumper_4;
    upc_loop_monitor #(1) upc_loop_monitor_4;
    upc_loop_intf#(12) upc_loop_intf_5(clock,reset);
    assign upc_loop_intf_5.cur_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_CS_fsm;
    assign upc_loop_intf_5.iter_start_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_ST_fsm_pp0_stage1;
    assign upc_loop_intf_5.iter_end_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_ST_fsm_pp0_stage3;
    assign upc_loop_intf_5.quit_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_ST_fsm_pp0_stage3;
    assign upc_loop_intf_5.iter_start_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_block_pp0_stage1_subdone;
    assign upc_loop_intf_5.iter_end_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_block_pp0_stage3_subdone;
    assign upc_loop_intf_5.quit_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_block_pp0_stage3_subdone;
    assign upc_loop_intf_5.iter_start_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_5.iter_end_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_5.quit_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_5.loop_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_start;
    assign upc_loop_intf_5.loop_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_ready;
    assign upc_loop_intf_5.loop_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_107_13_fu_1435.ap_done_int;
    assign upc_loop_intf_5.loop_continue = 1'b1;
    assign upc_loop_intf_5.quit_at_end = 1'b1;
    assign upc_loop_intf_5.finish = finish;
    csv_file_dump upc_loop_csv_dumper_5;
    upc_loop_monitor #(12) upc_loop_monitor_5;
    upc_loop_intf#(12) upc_loop_intf_6(clock,reset);
    assign upc_loop_intf_6.cur_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_CS_fsm;
    assign upc_loop_intf_6.iter_start_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_ST_fsm_pp0_stage1;
    assign upc_loop_intf_6.iter_end_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_ST_fsm_pp0_stage3;
    assign upc_loop_intf_6.quit_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_ST_fsm_pp0_stage3;
    assign upc_loop_intf_6.iter_start_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_block_pp0_stage1_subdone;
    assign upc_loop_intf_6.iter_end_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_block_pp0_stage3_subdone;
    assign upc_loop_intf_6.quit_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_block_pp0_stage3_subdone;
    assign upc_loop_intf_6.iter_start_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_6.iter_end_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_6.quit_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_6.loop_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_start;
    assign upc_loop_intf_6.loop_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_ready;
    assign upc_loop_intf_6.loop_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_101_12_fu_1471.ap_done_int;
    assign upc_loop_intf_6.loop_continue = 1'b1;
    assign upc_loop_intf_6.quit_at_end = 1'b1;
    assign upc_loop_intf_6.finish = finish;
    csv_file_dump upc_loop_csv_dumper_6;
    upc_loop_monitor #(12) upc_loop_monitor_6;
    upc_loop_intf#(2) upc_loop_intf_7(clock,reset);
    assign upc_loop_intf_7.cur_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_CS_fsm;
    assign upc_loop_intf_7.iter_start_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_ST_fsm_pp0_stage1;
    assign upc_loop_intf_7.iter_end_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_ST_fsm_pp0_stage1;
    assign upc_loop_intf_7.quit_state = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_7.iter_start_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_block_pp0_stage1_subdone;
    assign upc_loop_intf_7.iter_end_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_block_pp0_stage1_subdone;
    assign upc_loop_intf_7.quit_block = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_7.iter_start_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_7.iter_end_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_7.quit_enable = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_7.loop_start = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_start;
    assign upc_loop_intf_7.loop_ready = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_ready;
    assign upc_loop_intf_7.loop_done = AESL_inst_large_getrf_v4.grp_large_getrf_v4_Pipeline_VITIS_LOOP_116_14_fu_1507.ap_done_int;
    assign upc_loop_intf_7.loop_continue = 1'b1;
    assign upc_loop_intf_7.quit_at_end = 1'b0;
    assign upc_loop_intf_7.finish = finish;
    csv_file_dump upc_loop_csv_dumper_7;
    upc_loop_monitor #(2) upc_loop_monitor_7;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;



    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);
    mstatus_csv_dumper_2 = new("./module_status2.csv");
    module_monitor_2 = new(module_intf_2,mstatus_csv_dumper_2);
    mstatus_csv_dumper_3 = new("./module_status3.csv");
    module_monitor_3 = new(module_intf_3,mstatus_csv_dumper_3);
    mstatus_csv_dumper_4 = new("./module_status4.csv");
    module_monitor_4 = new(module_intf_4,mstatus_csv_dumper_4);
    mstatus_csv_dumper_5 = new("./module_status5.csv");
    module_monitor_5 = new(module_intf_5,mstatus_csv_dumper_5);
    mstatus_csv_dumper_6 = new("./module_status6.csv");
    module_monitor_6 = new(module_intf_6,mstatus_csv_dumper_6);
    mstatus_csv_dumper_7 = new("./module_status7.csv");
    module_monitor_7 = new(module_intf_7,mstatus_csv_dumper_7);
    mstatus_csv_dumper_8 = new("./module_status8.csv");
    module_monitor_8 = new(module_intf_8,mstatus_csv_dumper_8);
    mstatus_csv_dumper_9 = new("./module_status9.csv");
    module_monitor_9 = new(module_intf_9,mstatus_csv_dumper_9);
    mstatus_csv_dumper_10 = new("./module_status10.csv");
    module_monitor_10 = new(module_intf_10,mstatus_csv_dumper_10);



    seq_loop_csv_dumper_1 = new("./seq_loop_status1.csv");
    seq_loop_monitor_1 = new(seq_loop_intf_1,seq_loop_csv_dumper_1);
    seq_loop_csv_dumper_2 = new("./seq_loop_status2.csv");
    seq_loop_monitor_2 = new(seq_loop_intf_2,seq_loop_csv_dumper_2);
    seq_loop_csv_dumper_3 = new("./seq_loop_status3.csv");
    seq_loop_monitor_3 = new(seq_loop_intf_3,seq_loop_csv_dumper_3);
    seq_loop_csv_dumper_4 = new("./seq_loop_status4.csv");
    seq_loop_monitor_4 = new(seq_loop_intf_4,seq_loop_csv_dumper_4);

    upc_loop_csv_dumper_1 = new("./upc_loop_status1.csv");
    upc_loop_monitor_1 = new(upc_loop_intf_1,upc_loop_csv_dumper_1);
    upc_loop_csv_dumper_2 = new("./upc_loop_status2.csv");
    upc_loop_monitor_2 = new(upc_loop_intf_2,upc_loop_csv_dumper_2);
    upc_loop_csv_dumper_3 = new("./upc_loop_status3.csv");
    upc_loop_monitor_3 = new(upc_loop_intf_3,upc_loop_csv_dumper_3);
    upc_loop_csv_dumper_4 = new("./upc_loop_status4.csv");
    upc_loop_monitor_4 = new(upc_loop_intf_4,upc_loop_csv_dumper_4);
    upc_loop_csv_dumper_5 = new("./upc_loop_status5.csv");
    upc_loop_monitor_5 = new(upc_loop_intf_5,upc_loop_csv_dumper_5);
    upc_loop_csv_dumper_6 = new("./upc_loop_status6.csv");
    upc_loop_monitor_6 = new(upc_loop_intf_6,upc_loop_csv_dumper_6);
    upc_loop_csv_dumper_7 = new("./upc_loop_status7.csv");
    upc_loop_monitor_7 = new(upc_loop_intf_7,upc_loop_csv_dumper_7);

    sample_manager_inst.add_one_monitor(module_monitor_1);
    sample_manager_inst.add_one_monitor(module_monitor_2);
    sample_manager_inst.add_one_monitor(module_monitor_3);
    sample_manager_inst.add_one_monitor(module_monitor_4);
    sample_manager_inst.add_one_monitor(module_monitor_5);
    sample_manager_inst.add_one_monitor(module_monitor_6);
    sample_manager_inst.add_one_monitor(module_monitor_7);
    sample_manager_inst.add_one_monitor(module_monitor_8);
    sample_manager_inst.add_one_monitor(module_monitor_9);
    sample_manager_inst.add_one_monitor(module_monitor_10);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_1);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_2);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_3);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_4);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_1);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_2);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_3);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_4);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_5);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_6);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_7);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1) begin
                @(negedge clock);
                break;
            end
            else
                @(posedge clock);
        end
    endtask


endmodule
