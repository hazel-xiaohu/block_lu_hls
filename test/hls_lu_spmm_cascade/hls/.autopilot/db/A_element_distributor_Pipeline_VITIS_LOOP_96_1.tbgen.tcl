set moduleName A_element_distributor_Pipeline_VITIS_LOOP_96_1
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
set C_modelName {A_element_distributor_Pipeline_VITIS_LOOP_96_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ temp_avc_rid int 32 regular  }
	{ temp_avc_cid int 32 regular  }
	{ trunc_ln95_s int 32 regular  }
	{ empty_249 int 1 regular  }
	{ empty int 1 regular  }
	{ pe1_job int 66 regular {fifo 1 volatile }  }
	{ pe2_job int 66 regular {fifo 1 volatile }  }
	{ pe3_job int 66 regular {fifo 1 volatile }  }
	{ pe4_job int 66 regular {fifo 1 volatile }  }
	{ p_A_element_as int 98 regular {fifo 0 volatile }  }
	{ pe4_idle int 1 regular {fifo 0 volatile }  }
	{ pe3_idle int 1 regular {fifo 0 volatile }  }
	{ pe2_idle int 1 regular {fifo 0 volatile }  }
	{ pe1_idle int 1 regular {fifo 0 volatile }  }
	{ rm1_idle int 1 regular {fifo 0 volatile }  }
	{ rm2_idle int 1 regular {fifo 0 volatile }  }
	{ rm3_idle int 1 regular {fifo 0 volatile }  }
	{ rm4_idle int 1 regular {fifo 0 volatile }  }
	{ rcache_stream1 int 398 regular {fifo 1 volatile }  }
	{ rcache_stream2 int 398 regular {fifo 1 volatile }  }
	{ rcache_stream3 int 398 regular {fifo 1 volatile }  }
	{ rcache_stream4 int 398 regular {fifo 1 volatile }  }
	{ temp_rcache_request_3810_1_out int 32 regular {pointer 1}  }
	{ temp_rcache_request_2_1_out int 2 regular {pointer 1}  }
	{ temp_rcache_request_0_1_out int 3 regular {pointer 1}  }
	{ temp_pe_rid_out int 32 regular {pointer 1}  }
	{ p_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "temp_avc_rid", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "temp_avc_cid", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln95_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_249", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe1_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe2_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe3_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe4_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_A_element_as", "interface" : "fifo", "bitwidth" : 98, "direction" : "READONLY"} , 
 	{ "Name" : "pe4_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe3_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe2_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe1_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm1_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm2_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm3_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm4_idle", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_stream1", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_stream2", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_stream3", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_stream4", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_rcache_request_3810_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_rcache_request_2_1_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_rcache_request_0_1_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_pe_rid_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 106
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pe4_idle_dout sc_in sc_lv 1 signal 10 } 
	{ pe4_idle_empty_n sc_in sc_logic 1 signal 10 } 
	{ pe4_idle_read sc_out sc_logic 1 signal 10 } 
	{ pe4_idle_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ pe4_idle_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ rm4_idle_dout sc_in sc_lv 1 signal 17 } 
	{ rm4_idle_empty_n sc_in sc_logic 1 signal 17 } 
	{ rm4_idle_read sc_out sc_logic 1 signal 17 } 
	{ rm4_idle_num_data_valid sc_in sc_lv 3 signal 17 } 
	{ rm4_idle_fifo_cap sc_in sc_lv 3 signal 17 } 
	{ pe3_idle_dout sc_in sc_lv 1 signal 11 } 
	{ pe3_idle_empty_n sc_in sc_logic 1 signal 11 } 
	{ pe3_idle_read sc_out sc_logic 1 signal 11 } 
	{ pe3_idle_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ pe3_idle_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ rm3_idle_dout sc_in sc_lv 1 signal 16 } 
	{ rm3_idle_empty_n sc_in sc_logic 1 signal 16 } 
	{ rm3_idle_read sc_out sc_logic 1 signal 16 } 
	{ rm3_idle_num_data_valid sc_in sc_lv 3 signal 16 } 
	{ rm3_idle_fifo_cap sc_in sc_lv 3 signal 16 } 
	{ pe2_idle_dout sc_in sc_lv 1 signal 12 } 
	{ pe2_idle_empty_n sc_in sc_logic 1 signal 12 } 
	{ pe2_idle_read sc_out sc_logic 1 signal 12 } 
	{ pe2_idle_num_data_valid sc_in sc_lv 3 signal 12 } 
	{ pe2_idle_fifo_cap sc_in sc_lv 3 signal 12 } 
	{ rm2_idle_dout sc_in sc_lv 1 signal 15 } 
	{ rm2_idle_empty_n sc_in sc_logic 1 signal 15 } 
	{ rm2_idle_read sc_out sc_logic 1 signal 15 } 
	{ rm2_idle_num_data_valid sc_in sc_lv 3 signal 15 } 
	{ rm2_idle_fifo_cap sc_in sc_lv 3 signal 15 } 
	{ pe1_idle_dout sc_in sc_lv 1 signal 13 } 
	{ pe1_idle_empty_n sc_in sc_logic 1 signal 13 } 
	{ pe1_idle_read sc_out sc_logic 1 signal 13 } 
	{ pe1_idle_num_data_valid sc_in sc_lv 3 signal 13 } 
	{ pe1_idle_fifo_cap sc_in sc_lv 3 signal 13 } 
	{ rm1_idle_dout sc_in sc_lv 1 signal 14 } 
	{ rm1_idle_empty_n sc_in sc_logic 1 signal 14 } 
	{ rm1_idle_read sc_out sc_logic 1 signal 14 } 
	{ rm1_idle_num_data_valid sc_in sc_lv 3 signal 14 } 
	{ rm1_idle_fifo_cap sc_in sc_lv 3 signal 14 } 
	{ p_A_element_as_dout sc_in sc_lv 98 signal 9 } 
	{ p_A_element_as_empty_n sc_in sc_logic 1 signal 9 } 
	{ p_A_element_as_read sc_out sc_logic 1 signal 9 } 
	{ p_A_element_as_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ p_A_element_as_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ pe4_job_din sc_out sc_lv 66 signal 8 } 
	{ pe4_job_full_n sc_in sc_logic 1 signal 8 } 
	{ pe4_job_write sc_out sc_logic 1 signal 8 } 
	{ pe4_job_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ pe4_job_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ rcache_stream4_din sc_out sc_lv 398 signal 21 } 
	{ rcache_stream4_full_n sc_in sc_logic 1 signal 21 } 
	{ rcache_stream4_write sc_out sc_logic 1 signal 21 } 
	{ rcache_stream4_num_data_valid sc_in sc_lv 3 signal 21 } 
	{ rcache_stream4_fifo_cap sc_in sc_lv 3 signal 21 } 
	{ pe3_job_din sc_out sc_lv 66 signal 7 } 
	{ pe3_job_full_n sc_in sc_logic 1 signal 7 } 
	{ pe3_job_write sc_out sc_logic 1 signal 7 } 
	{ pe3_job_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ pe3_job_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ rcache_stream3_din sc_out sc_lv 398 signal 20 } 
	{ rcache_stream3_full_n sc_in sc_logic 1 signal 20 } 
	{ rcache_stream3_write sc_out sc_logic 1 signal 20 } 
	{ rcache_stream3_num_data_valid sc_in sc_lv 3 signal 20 } 
	{ rcache_stream3_fifo_cap sc_in sc_lv 3 signal 20 } 
	{ pe2_job_din sc_out sc_lv 66 signal 6 } 
	{ pe2_job_full_n sc_in sc_logic 1 signal 6 } 
	{ pe2_job_write sc_out sc_logic 1 signal 6 } 
	{ pe2_job_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ pe2_job_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ rcache_stream2_din sc_out sc_lv 398 signal 19 } 
	{ rcache_stream2_full_n sc_in sc_logic 1 signal 19 } 
	{ rcache_stream2_write sc_out sc_logic 1 signal 19 } 
	{ rcache_stream2_num_data_valid sc_in sc_lv 3 signal 19 } 
	{ rcache_stream2_fifo_cap sc_in sc_lv 3 signal 19 } 
	{ pe1_job_din sc_out sc_lv 66 signal 5 } 
	{ pe1_job_full_n sc_in sc_logic 1 signal 5 } 
	{ pe1_job_write sc_out sc_logic 1 signal 5 } 
	{ pe1_job_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ pe1_job_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ rcache_stream1_din sc_out sc_lv 398 signal 18 } 
	{ rcache_stream1_full_n sc_in sc_logic 1 signal 18 } 
	{ rcache_stream1_write sc_out sc_logic 1 signal 18 } 
	{ rcache_stream1_num_data_valid sc_in sc_lv 3 signal 18 } 
	{ rcache_stream1_fifo_cap sc_in sc_lv 3 signal 18 } 
	{ temp_avc_rid sc_in sc_lv 32 signal 0 } 
	{ temp_avc_cid sc_in sc_lv 32 signal 1 } 
	{ trunc_ln95_s sc_in sc_lv 32 signal 2 } 
	{ empty_249 sc_in sc_lv 1 signal 3 } 
	{ empty sc_in sc_lv 1 signal 4 } 
	{ temp_rcache_request_3810_1_out sc_out sc_lv 32 signal 22 } 
	{ temp_rcache_request_3810_1_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ temp_rcache_request_2_1_out sc_out sc_lv 2 signal 23 } 
	{ temp_rcache_request_2_1_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ temp_rcache_request_0_1_out sc_out sc_lv 3 signal 24 } 
	{ temp_rcache_request_0_1_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ temp_pe_rid_out sc_out sc_lv 32 signal 25 } 
	{ temp_pe_rid_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ p_out sc_out sc_lv 32 signal 26 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 26 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pe4_idle_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle", "role": "dout" }} , 
 	{ "name": "pe4_idle_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle", "role": "empty_n" }} , 
 	{ "name": "pe4_idle_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle", "role": "read" }} , 
 	{ "name": "pe4_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe4_idle", "role": "num_data_valid" }} , 
 	{ "name": "pe4_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe4_idle", "role": "fifo_cap" }} , 
 	{ "name": "rm4_idle_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle", "role": "dout" }} , 
 	{ "name": "rm4_idle_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle", "role": "empty_n" }} , 
 	{ "name": "rm4_idle_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle", "role": "read" }} , 
 	{ "name": "rm4_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rm4_idle", "role": "num_data_valid" }} , 
 	{ "name": "rm4_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rm4_idle", "role": "fifo_cap" }} , 
 	{ "name": "pe3_idle_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle", "role": "dout" }} , 
 	{ "name": "pe3_idle_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle", "role": "empty_n" }} , 
 	{ "name": "pe3_idle_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle", "role": "read" }} , 
 	{ "name": "pe3_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe3_idle", "role": "num_data_valid" }} , 
 	{ "name": "pe3_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe3_idle", "role": "fifo_cap" }} , 
 	{ "name": "rm3_idle_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm3_idle", "role": "dout" }} , 
 	{ "name": "rm3_idle_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm3_idle", "role": "empty_n" }} , 
 	{ "name": "rm3_idle_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm3_idle", "role": "read" }} , 
 	{ "name": "rm3_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rm3_idle", "role": "num_data_valid" }} , 
 	{ "name": "rm3_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rm3_idle", "role": "fifo_cap" }} , 
 	{ "name": "pe2_idle_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle", "role": "dout" }} , 
 	{ "name": "pe2_idle_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle", "role": "empty_n" }} , 
 	{ "name": "pe2_idle_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle", "role": "read" }} , 
 	{ "name": "pe2_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe2_idle", "role": "num_data_valid" }} , 
 	{ "name": "pe2_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe2_idle", "role": "fifo_cap" }} , 
 	{ "name": "rm2_idle_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle", "role": "dout" }} , 
 	{ "name": "rm2_idle_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle", "role": "empty_n" }} , 
 	{ "name": "rm2_idle_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle", "role": "read" }} , 
 	{ "name": "rm2_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rm2_idle", "role": "num_data_valid" }} , 
 	{ "name": "rm2_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rm2_idle", "role": "fifo_cap" }} , 
 	{ "name": "pe1_idle_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle", "role": "dout" }} , 
 	{ "name": "pe1_idle_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle", "role": "empty_n" }} , 
 	{ "name": "pe1_idle_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle", "role": "read" }} , 
 	{ "name": "pe1_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe1_idle", "role": "num_data_valid" }} , 
 	{ "name": "pe1_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe1_idle", "role": "fifo_cap" }} , 
 	{ "name": "rm1_idle_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm1_idle", "role": "dout" }} , 
 	{ "name": "rm1_idle_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm1_idle", "role": "empty_n" }} , 
 	{ "name": "rm1_idle_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm1_idle", "role": "read" }} , 
 	{ "name": "rm1_idle_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rm1_idle", "role": "num_data_valid" }} , 
 	{ "name": "rm1_idle_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rm1_idle", "role": "fifo_cap" }} , 
 	{ "name": "p_A_element_as_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":98, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "dout" }} , 
 	{ "name": "p_A_element_as_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "empty_n" }} , 
 	{ "name": "p_A_element_as_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "read" }} , 
 	{ "name": "p_A_element_as_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "num_data_valid" }} , 
 	{ "name": "p_A_element_as_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "fifo_cap" }} , 
 	{ "name": "pe4_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe4_job", "role": "din" }} , 
 	{ "name": "pe4_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_job", "role": "full_n" }} , 
 	{ "name": "pe4_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_job", "role": "write" }} , 
 	{ "name": "pe4_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe4_job", "role": "num_data_valid" }} , 
 	{ "name": "pe4_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe4_job", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "din" }} , 
 	{ "name": "rcache_stream4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "full_n" }} , 
 	{ "name": "rcache_stream4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "write" }} , 
 	{ "name": "rcache_stream4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "fifo_cap" }} , 
 	{ "name": "pe3_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe3_job", "role": "din" }} , 
 	{ "name": "pe3_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_job", "role": "full_n" }} , 
 	{ "name": "pe3_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_job", "role": "write" }} , 
 	{ "name": "pe3_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe3_job", "role": "num_data_valid" }} , 
 	{ "name": "pe3_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe3_job", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "din" }} , 
 	{ "name": "rcache_stream3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "full_n" }} , 
 	{ "name": "rcache_stream3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "write" }} , 
 	{ "name": "rcache_stream3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "fifo_cap" }} , 
 	{ "name": "pe2_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe2_job", "role": "din" }} , 
 	{ "name": "pe2_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_job", "role": "full_n" }} , 
 	{ "name": "pe2_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_job", "role": "write" }} , 
 	{ "name": "pe2_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe2_job", "role": "num_data_valid" }} , 
 	{ "name": "pe2_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe2_job", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "din" }} , 
 	{ "name": "rcache_stream2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "full_n" }} , 
 	{ "name": "rcache_stream2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "write" }} , 
 	{ "name": "rcache_stream2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "fifo_cap" }} , 
 	{ "name": "pe1_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe1_job", "role": "din" }} , 
 	{ "name": "pe1_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_job", "role": "full_n" }} , 
 	{ "name": "pe1_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_job", "role": "write" }} , 
 	{ "name": "pe1_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe1_job", "role": "num_data_valid" }} , 
 	{ "name": "pe1_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pe1_job", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "din" }} , 
 	{ "name": "rcache_stream1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "full_n" }} , 
 	{ "name": "rcache_stream1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "write" }} , 
 	{ "name": "rcache_stream1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "fifo_cap" }} , 
 	{ "name": "temp_avc_rid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_avc_rid", "role": "default" }} , 
 	{ "name": "temp_avc_cid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_avc_cid", "role": "default" }} , 
 	{ "name": "trunc_ln95_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln95_s", "role": "default" }} , 
 	{ "name": "empty_249", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_249", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "temp_rcache_request_3810_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_rcache_request_3810_1_out", "role": "default" }} , 
 	{ "name": "temp_rcache_request_3810_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_rcache_request_3810_1_out", "role": "ap_vld" }} , 
 	{ "name": "temp_rcache_request_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "temp_rcache_request_2_1_out", "role": "default" }} , 
 	{ "name": "temp_rcache_request_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_rcache_request_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "temp_rcache_request_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_rcache_request_0_1_out", "role": "default" }} , 
 	{ "name": "temp_rcache_request_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_rcache_request_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "temp_pe_rid_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_pe_rid_out", "role": "default" }} , 
 	{ "name": "temp_pe_rid_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_pe_rid_out", "role": "ap_vld" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	A_element_distributor_Pipeline_VITIS_LOOP_96_1 {
		temp_avc_rid {Type I LastRead 0 FirstWrite -1}
		temp_avc_cid {Type I LastRead 0 FirstWrite -1}
		trunc_ln95_s {Type I LastRead 0 FirstWrite -1}
		empty_249 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		pe1_job {Type O LastRead -1 FirstWrite 2}
		pe2_job {Type O LastRead -1 FirstWrite 2}
		pe3_job {Type O LastRead -1 FirstWrite 2}
		pe4_job {Type O LastRead -1 FirstWrite 2}
		p_A_element_as {Type I LastRead 1 FirstWrite -1}
		pe4_idle {Type I LastRead 1 FirstWrite -1}
		pe3_idle {Type I LastRead 1 FirstWrite -1}
		pe2_idle {Type I LastRead 1 FirstWrite -1}
		pe1_idle {Type I LastRead 1 FirstWrite -1}
		rm1_idle {Type I LastRead 1 FirstWrite -1}
		rm2_idle {Type I LastRead 1 FirstWrite -1}
		rm3_idle {Type I LastRead 1 FirstWrite -1}
		rm4_idle {Type I LastRead 1 FirstWrite -1}
		rcache_stream1 {Type O LastRead -1 FirstWrite 2}
		rcache_stream2 {Type O LastRead -1 FirstWrite 2}
		rcache_stream3 {Type O LastRead -1 FirstWrite 2}
		rcache_stream4 {Type O LastRead -1 FirstWrite 2}
		temp_rcache_request_3810_1_out {Type O LastRead -1 FirstWrite 1}
		temp_rcache_request_2_1_out {Type O LastRead -1 FirstWrite 1}
		temp_rcache_request_0_1_out {Type O LastRead -1 FirstWrite 1}
		temp_pe_rid_out {Type O LastRead -1 FirstWrite 1}
		p_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	temp_avc_rid { ap_none {  { temp_avc_rid in_data 0 32 } } }
	temp_avc_cid { ap_none {  { temp_avc_cid in_data 0 32 } } }
	trunc_ln95_s { ap_none {  { trunc_ln95_s in_data 0 32 } } }
	empty_249 { ap_none {  { empty_249 in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	pe1_job { ap_fifo {  { pe1_job_din fifo_data_out 1 66 }  { pe1_job_full_n fifo_status_empty 0 1 }  { pe1_job_write fifo_data_in 1 1 }  { pe1_job_num_data_valid fifo_update 0 3 }  { pe1_job_fifo_cap fifo_data 0 3 } } }
	pe2_job { ap_fifo {  { pe2_job_din fifo_data_out 1 66 }  { pe2_job_full_n fifo_status_empty 0 1 }  { pe2_job_write fifo_data_in 1 1 }  { pe2_job_num_data_valid fifo_update 0 3 }  { pe2_job_fifo_cap fifo_data 0 3 } } }
	pe3_job { ap_fifo {  { pe3_job_din fifo_data_out 1 66 }  { pe3_job_full_n fifo_status_empty 0 1 }  { pe3_job_write fifo_data_in 1 1 }  { pe3_job_num_data_valid fifo_update 0 3 }  { pe3_job_fifo_cap fifo_data 0 3 } } }
	pe4_job { ap_fifo {  { pe4_job_din fifo_data_out 1 66 }  { pe4_job_full_n fifo_status_empty 0 1 }  { pe4_job_write fifo_data_in 1 1 }  { pe4_job_num_data_valid fifo_update 0 3 }  { pe4_job_fifo_cap fifo_data 0 3 } } }
	p_A_element_as { ap_fifo {  { p_A_element_as_dout fifo_data_out 0 98 }  { p_A_element_as_empty_n fifo_status_empty 0 1 }  { p_A_element_as_read fifo_data_in 1 1 }  { p_A_element_as_num_data_valid fifo_update 0 3 }  { p_A_element_as_fifo_cap fifo_data 0 3 } } }
	pe4_idle { ap_fifo {  { pe4_idle_dout fifo_data_out 0 1 }  { pe4_idle_empty_n fifo_status_empty 0 1 }  { pe4_idle_read fifo_data_in 1 1 }  { pe4_idle_num_data_valid fifo_update 0 3 }  { pe4_idle_fifo_cap fifo_data 0 3 } } }
	pe3_idle { ap_fifo {  { pe3_idle_dout fifo_data_out 0 1 }  { pe3_idle_empty_n fifo_status_empty 0 1 }  { pe3_idle_read fifo_data_in 1 1 }  { pe3_idle_num_data_valid fifo_update 0 3 }  { pe3_idle_fifo_cap fifo_data 0 3 } } }
	pe2_idle { ap_fifo {  { pe2_idle_dout fifo_data_out 0 1 }  { pe2_idle_empty_n fifo_status_empty 0 1 }  { pe2_idle_read fifo_data_in 1 1 }  { pe2_idle_num_data_valid fifo_update 0 3 }  { pe2_idle_fifo_cap fifo_data 0 3 } } }
	pe1_idle { ap_fifo {  { pe1_idle_dout fifo_data_out 0 1 }  { pe1_idle_empty_n fifo_status_empty 0 1 }  { pe1_idle_read fifo_data_in 1 1 }  { pe1_idle_num_data_valid fifo_update 0 3 }  { pe1_idle_fifo_cap fifo_data 0 3 } } }
	rm1_idle { ap_fifo {  { rm1_idle_dout fifo_data_out 0 1 }  { rm1_idle_empty_n fifo_status_empty 0 1 }  { rm1_idle_read fifo_data_in 1 1 }  { rm1_idle_num_data_valid fifo_update 0 3 }  { rm1_idle_fifo_cap fifo_data 0 3 } } }
	rm2_idle { ap_fifo {  { rm2_idle_dout fifo_data_out 0 1 }  { rm2_idle_empty_n fifo_status_empty 0 1 }  { rm2_idle_read fifo_data_in 1 1 }  { rm2_idle_num_data_valid fifo_update 0 3 }  { rm2_idle_fifo_cap fifo_data 0 3 } } }
	rm3_idle { ap_fifo {  { rm3_idle_dout fifo_data_out 0 1 }  { rm3_idle_empty_n fifo_status_empty 0 1 }  { rm3_idle_read fifo_data_in 1 1 }  { rm3_idle_num_data_valid fifo_update 0 3 }  { rm3_idle_fifo_cap fifo_data 0 3 } } }
	rm4_idle { ap_fifo {  { rm4_idle_dout fifo_data_out 0 1 }  { rm4_idle_empty_n fifo_status_empty 0 1 }  { rm4_idle_read fifo_data_in 1 1 }  { rm4_idle_num_data_valid fifo_update 0 3 }  { rm4_idle_fifo_cap fifo_data 0 3 } } }
	rcache_stream1 { ap_fifo {  { rcache_stream1_din fifo_data_out 1 398 }  { rcache_stream1_full_n fifo_status_empty 0 1 }  { rcache_stream1_write fifo_data_in 1 1 }  { rcache_stream1_num_data_valid fifo_update 0 3 }  { rcache_stream1_fifo_cap fifo_data 0 3 } } }
	rcache_stream2 { ap_fifo {  { rcache_stream2_din fifo_data_out 1 398 }  { rcache_stream2_full_n fifo_status_empty 0 1 }  { rcache_stream2_write fifo_data_in 1 1 }  { rcache_stream2_num_data_valid fifo_update 0 3 }  { rcache_stream2_fifo_cap fifo_data 0 3 } } }
	rcache_stream3 { ap_fifo {  { rcache_stream3_din fifo_data_out 1 398 }  { rcache_stream3_full_n fifo_status_empty 0 1 }  { rcache_stream3_write fifo_data_in 1 1 }  { rcache_stream3_num_data_valid fifo_update 0 3 }  { rcache_stream3_fifo_cap fifo_data 0 3 } } }
	rcache_stream4 { ap_fifo {  { rcache_stream4_din fifo_data_out 1 398 }  { rcache_stream4_full_n fifo_status_empty 0 1 }  { rcache_stream4_write fifo_data_in 1 1 }  { rcache_stream4_num_data_valid fifo_update 0 3 }  { rcache_stream4_fifo_cap fifo_data 0 3 } } }
	temp_rcache_request_3810_1_out { ap_vld {  { temp_rcache_request_3810_1_out out_data 1 32 }  { temp_rcache_request_3810_1_out_ap_vld out_vld 1 1 } } }
	temp_rcache_request_2_1_out { ap_vld {  { temp_rcache_request_2_1_out out_data 1 2 }  { temp_rcache_request_2_1_out_ap_vld out_vld 1 1 } } }
	temp_rcache_request_0_1_out { ap_vld {  { temp_rcache_request_0_1_out out_data 1 3 }  { temp_rcache_request_0_1_out_ap_vld out_vld 1 1 } } }
	temp_pe_rid_out { ap_vld {  { temp_pe_rid_out out_data 1 32 }  { temp_pe_rid_out_ap_vld out_vld 1 1 } } }
	p_out { ap_vld {  { p_out out_data 1 32 }  { p_out_ap_vld out_vld 1 1 } } }
}
