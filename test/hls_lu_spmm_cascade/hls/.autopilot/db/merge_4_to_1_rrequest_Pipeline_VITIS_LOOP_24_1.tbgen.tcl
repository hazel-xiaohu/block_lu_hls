set moduleName merge_4_to_1_rrequest_Pipeline_VITIS_LOOP_24_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 272
set C_modelName {merge_4_to_1_rrequest_Pipeline_VITIS_LOOP_24_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rrequest1 int 398 regular {fifo 0 volatile }  }
	{ rrequest2 int 398 regular {fifo 0 volatile }  }
	{ rrequest3 int 398 regular {fifo 0 volatile }  }
	{ rrequest4 int 398 regular {fifo 0 volatile }  }
	{ rrequestf int 398 regular {fifo 1 volatile }  }
	{ temp_5_sroa_180_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_171_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_162_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_153_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_144_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_135_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_126_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_117_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_108_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_99_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_90_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_81_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_72_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_63_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_54_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_45_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_36_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_27_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_18_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_9_0_out int 8 regular {pointer 1}  }
	{ temp_5_sroa_0_0_out int 8 regular {pointer 1}  }
	{ temp_6_0_out int 160 regular {pointer 1}  }
	{ temp_4511_0_out int 32 regular {pointer 1}  }
	{ temp_3510_0_out int 32 regular {pointer 1}  }
	{ temp_2_0_out int 2 regular {pointer 1}  }
	{ temp_0_0_out int 3 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rrequest1", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest2", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest3", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest4", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequestf", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_180_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_171_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_162_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_153_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_144_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_135_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_126_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_117_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_108_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_99_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_90_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_81_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_72_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_63_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_54_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_45_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_36_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_27_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_18_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_9_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_sroa_0_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_6_0_out", "interface" : "wire", "bitwidth" : 160, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_4511_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_3510_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_2_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_0_0_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 83
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rrequest4_dout sc_in sc_lv 398 signal 3 } 
	{ rrequest4_empty_n sc_in sc_logic 1 signal 3 } 
	{ rrequest4_read sc_out sc_logic 1 signal 3 } 
	{ rrequest4_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ rrequest4_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ rrequest3_dout sc_in sc_lv 398 signal 2 } 
	{ rrequest3_empty_n sc_in sc_logic 1 signal 2 } 
	{ rrequest3_read sc_out sc_logic 1 signal 2 } 
	{ rrequest3_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ rrequest3_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ rrequest2_dout sc_in sc_lv 398 signal 1 } 
	{ rrequest2_empty_n sc_in sc_logic 1 signal 1 } 
	{ rrequest2_read sc_out sc_logic 1 signal 1 } 
	{ rrequest2_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ rrequest2_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ rrequest1_dout sc_in sc_lv 398 signal 0 } 
	{ rrequest1_empty_n sc_in sc_logic 1 signal 0 } 
	{ rrequest1_read sc_out sc_logic 1 signal 0 } 
	{ rrequest1_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ rrequest1_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ rrequestf_din sc_out sc_lv 398 signal 4 } 
	{ rrequestf_full_n sc_in sc_logic 1 signal 4 } 
	{ rrequestf_write sc_out sc_logic 1 signal 4 } 
	{ rrequestf_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ rrequestf_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ temp_5_sroa_180_0_out sc_out sc_lv 8 signal 5 } 
	{ temp_5_sroa_180_0_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ temp_5_sroa_171_0_out sc_out sc_lv 8 signal 6 } 
	{ temp_5_sroa_171_0_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ temp_5_sroa_162_0_out sc_out sc_lv 8 signal 7 } 
	{ temp_5_sroa_162_0_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ temp_5_sroa_153_0_out sc_out sc_lv 8 signal 8 } 
	{ temp_5_sroa_153_0_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ temp_5_sroa_144_0_out sc_out sc_lv 8 signal 9 } 
	{ temp_5_sroa_144_0_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ temp_5_sroa_135_0_out sc_out sc_lv 8 signal 10 } 
	{ temp_5_sroa_135_0_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ temp_5_sroa_126_0_out sc_out sc_lv 8 signal 11 } 
	{ temp_5_sroa_126_0_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ temp_5_sroa_117_0_out sc_out sc_lv 8 signal 12 } 
	{ temp_5_sroa_117_0_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ temp_5_sroa_108_0_out sc_out sc_lv 8 signal 13 } 
	{ temp_5_sroa_108_0_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ temp_5_sroa_99_0_out sc_out sc_lv 8 signal 14 } 
	{ temp_5_sroa_99_0_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ temp_5_sroa_90_0_out sc_out sc_lv 8 signal 15 } 
	{ temp_5_sroa_90_0_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ temp_5_sroa_81_0_out sc_out sc_lv 8 signal 16 } 
	{ temp_5_sroa_81_0_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ temp_5_sroa_72_0_out sc_out sc_lv 8 signal 17 } 
	{ temp_5_sroa_72_0_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ temp_5_sroa_63_0_out sc_out sc_lv 8 signal 18 } 
	{ temp_5_sroa_63_0_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ temp_5_sroa_54_0_out sc_out sc_lv 8 signal 19 } 
	{ temp_5_sroa_54_0_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ temp_5_sroa_45_0_out sc_out sc_lv 8 signal 20 } 
	{ temp_5_sroa_45_0_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ temp_5_sroa_36_0_out sc_out sc_lv 8 signal 21 } 
	{ temp_5_sroa_36_0_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ temp_5_sroa_27_0_out sc_out sc_lv 8 signal 22 } 
	{ temp_5_sroa_27_0_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ temp_5_sroa_18_0_out sc_out sc_lv 8 signal 23 } 
	{ temp_5_sroa_18_0_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ temp_5_sroa_9_0_out sc_out sc_lv 8 signal 24 } 
	{ temp_5_sroa_9_0_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ temp_5_sroa_0_0_out sc_out sc_lv 8 signal 25 } 
	{ temp_5_sroa_0_0_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ temp_6_0_out sc_out sc_lv 160 signal 26 } 
	{ temp_6_0_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ temp_4511_0_out sc_out sc_lv 32 signal 27 } 
	{ temp_4511_0_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ temp_3510_0_out sc_out sc_lv 32 signal 28 } 
	{ temp_3510_0_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ temp_2_0_out sc_out sc_lv 2 signal 29 } 
	{ temp_2_0_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ temp_0_0_out sc_out sc_lv 3 signal 30 } 
	{ temp_0_0_out_ap_vld sc_out sc_logic 1 outvld 30 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rrequest4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest4", "role": "dout" }} , 
 	{ "name": "rrequest4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest4", "role": "empty_n" }} , 
 	{ "name": "rrequest4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest4", "role": "read" }} , 
 	{ "name": "rrequest4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest4", "role": "num_data_valid" }} , 
 	{ "name": "rrequest4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest4", "role": "fifo_cap" }} , 
 	{ "name": "rrequest3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest3", "role": "dout" }} , 
 	{ "name": "rrequest3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest3", "role": "empty_n" }} , 
 	{ "name": "rrequest3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest3", "role": "read" }} , 
 	{ "name": "rrequest3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest3", "role": "num_data_valid" }} , 
 	{ "name": "rrequest3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest3", "role": "fifo_cap" }} , 
 	{ "name": "rrequest2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest2", "role": "dout" }} , 
 	{ "name": "rrequest2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest2", "role": "empty_n" }} , 
 	{ "name": "rrequest2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest2", "role": "read" }} , 
 	{ "name": "rrequest2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest2", "role": "num_data_valid" }} , 
 	{ "name": "rrequest2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest2", "role": "fifo_cap" }} , 
 	{ "name": "rrequest1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest1", "role": "dout" }} , 
 	{ "name": "rrequest1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest1", "role": "empty_n" }} , 
 	{ "name": "rrequest1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest1", "role": "read" }} , 
 	{ "name": "rrequest1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest1", "role": "num_data_valid" }} , 
 	{ "name": "rrequest1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequest1", "role": "fifo_cap" }} , 
 	{ "name": "rrequestf_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequestf", "role": "din" }} , 
 	{ "name": "rrequestf_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequestf", "role": "full_n" }} , 
 	{ "name": "rrequestf_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequestf", "role": "write" }} , 
 	{ "name": "rrequestf_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequestf", "role": "num_data_valid" }} , 
 	{ "name": "rrequestf_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequestf", "role": "fifo_cap" }} , 
 	{ "name": "temp_5_sroa_180_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_180_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_180_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_180_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_171_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_171_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_171_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_171_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_162_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_162_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_162_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_162_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_153_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_153_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_153_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_153_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_144_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_144_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_144_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_144_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_135_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_135_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_135_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_135_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_126_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_126_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_126_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_126_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_117_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_117_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_117_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_117_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_108_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_108_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_108_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_108_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_99_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_99_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_99_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_99_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_90_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_90_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_90_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_90_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_81_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_81_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_81_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_81_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_72_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_72_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_72_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_72_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_63_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_63_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_63_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_63_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_54_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_54_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_54_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_54_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_45_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_45_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_45_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_45_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_36_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_36_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_36_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_36_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_27_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_27_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_27_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_27_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_18_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_18_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_18_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_18_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_9_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_sroa_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_5_sroa_0_0_out", "role": "default" }} , 
 	{ "name": "temp_5_sroa_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_sroa_0_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_6_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "temp_6_0_out", "role": "default" }} , 
 	{ "name": "temp_6_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_6_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_4511_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_4511_0_out", "role": "default" }} , 
 	{ "name": "temp_4511_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_4511_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_3510_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_3510_0_out", "role": "default" }} , 
 	{ "name": "temp_3510_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_3510_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "temp_2_0_out", "role": "default" }} , 
 	{ "name": "temp_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_0_0_out", "role": "default" }} , 
 	{ "name": "temp_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_0_0_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	merge_4_to_1_rrequest_Pipeline_VITIS_LOOP_24_1 {
		rrequest1 {Type I LastRead 0 FirstWrite -1}
		rrequest2 {Type I LastRead 0 FirstWrite -1}
		rrequest3 {Type I LastRead 0 FirstWrite -1}
		rrequest4 {Type I LastRead 0 FirstWrite -1}
		rrequestf {Type O LastRead -1 FirstWrite 1}
		temp_5_sroa_180_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_171_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_162_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_153_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_144_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_135_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_126_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_117_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_108_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_99_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_90_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_81_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_72_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_63_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_54_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_45_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_36_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_27_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_18_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_6_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4511_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3510_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_0_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rrequest1 { ap_fifo {  { rrequest1_dout fifo_data_out 0 398 }  { rrequest1_empty_n fifo_status_empty 0 1 }  { rrequest1_read fifo_data_in 1 1 }  { rrequest1_num_data_valid fifo_update 0 3 }  { rrequest1_fifo_cap fifo_data 0 3 } } }
	rrequest2 { ap_fifo {  { rrequest2_dout fifo_data_out 0 398 }  { rrequest2_empty_n fifo_status_empty 0 1 }  { rrequest2_read fifo_data_in 1 1 }  { rrequest2_num_data_valid fifo_update 0 3 }  { rrequest2_fifo_cap fifo_data 0 3 } } }
	rrequest3 { ap_fifo {  { rrequest3_dout fifo_data_out 0 398 }  { rrequest3_empty_n fifo_status_empty 0 1 }  { rrequest3_read fifo_data_in 1 1 }  { rrequest3_num_data_valid fifo_update 0 3 }  { rrequest3_fifo_cap fifo_data 0 3 } } }
	rrequest4 { ap_fifo {  { rrequest4_dout fifo_data_out 0 398 }  { rrequest4_empty_n fifo_status_empty 0 1 }  { rrequest4_read fifo_data_in 1 1 }  { rrequest4_num_data_valid fifo_update 0 3 }  { rrequest4_fifo_cap fifo_data 0 3 } } }
	rrequestf { ap_fifo {  { rrequestf_din fifo_data_out 1 398 }  { rrequestf_full_n fifo_status_empty 0 1 }  { rrequestf_write fifo_data_in 1 1 }  { rrequestf_num_data_valid fifo_update 0 3 }  { rrequestf_fifo_cap fifo_data 0 3 } } }
	temp_5_sroa_180_0_out { ap_vld {  { temp_5_sroa_180_0_out out_data 1 8 }  { temp_5_sroa_180_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_171_0_out { ap_vld {  { temp_5_sroa_171_0_out out_data 1 8 }  { temp_5_sroa_171_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_162_0_out { ap_vld {  { temp_5_sroa_162_0_out out_data 1 8 }  { temp_5_sroa_162_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_153_0_out { ap_vld {  { temp_5_sroa_153_0_out out_data 1 8 }  { temp_5_sroa_153_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_144_0_out { ap_vld {  { temp_5_sroa_144_0_out out_data 1 8 }  { temp_5_sroa_144_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_135_0_out { ap_vld {  { temp_5_sroa_135_0_out out_data 1 8 }  { temp_5_sroa_135_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_126_0_out { ap_vld {  { temp_5_sroa_126_0_out out_data 1 8 }  { temp_5_sroa_126_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_117_0_out { ap_vld {  { temp_5_sroa_117_0_out out_data 1 8 }  { temp_5_sroa_117_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_108_0_out { ap_vld {  { temp_5_sroa_108_0_out out_data 1 8 }  { temp_5_sroa_108_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_99_0_out { ap_vld {  { temp_5_sroa_99_0_out out_data 1 8 }  { temp_5_sroa_99_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_90_0_out { ap_vld {  { temp_5_sroa_90_0_out out_data 1 8 }  { temp_5_sroa_90_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_81_0_out { ap_vld {  { temp_5_sroa_81_0_out out_data 1 8 }  { temp_5_sroa_81_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_72_0_out { ap_vld {  { temp_5_sroa_72_0_out out_data 1 8 }  { temp_5_sroa_72_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_63_0_out { ap_vld {  { temp_5_sroa_63_0_out out_data 1 8 }  { temp_5_sroa_63_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_54_0_out { ap_vld {  { temp_5_sroa_54_0_out out_data 1 8 }  { temp_5_sroa_54_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_45_0_out { ap_vld {  { temp_5_sroa_45_0_out out_data 1 8 }  { temp_5_sroa_45_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_36_0_out { ap_vld {  { temp_5_sroa_36_0_out out_data 1 8 }  { temp_5_sroa_36_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_27_0_out { ap_vld {  { temp_5_sroa_27_0_out out_data 1 8 }  { temp_5_sroa_27_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_18_0_out { ap_vld {  { temp_5_sroa_18_0_out out_data 1 8 }  { temp_5_sroa_18_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_9_0_out { ap_vld {  { temp_5_sroa_9_0_out out_data 1 8 }  { temp_5_sroa_9_0_out_ap_vld out_vld 1 1 } } }
	temp_5_sroa_0_0_out { ap_vld {  { temp_5_sroa_0_0_out out_data 1 8 }  { temp_5_sroa_0_0_out_ap_vld out_vld 1 1 } } }
	temp_6_0_out { ap_vld {  { temp_6_0_out out_data 1 160 }  { temp_6_0_out_ap_vld out_vld 1 1 } } }
	temp_4511_0_out { ap_vld {  { temp_4511_0_out out_data 1 32 }  { temp_4511_0_out_ap_vld out_vld 1 1 } } }
	temp_3510_0_out { ap_vld {  { temp_3510_0_out out_data 1 32 }  { temp_3510_0_out_ap_vld out_vld 1 1 } } }
	temp_2_0_out { ap_vld {  { temp_2_0_out out_data 1 2 }  { temp_2_0_out_ap_vld out_vld 1 1 } } }
	temp_0_0_out { ap_vld {  { temp_0_0_out out_data 1 3 }  { temp_0_0_out_ap_vld out_vld 1 1 } } }
}
