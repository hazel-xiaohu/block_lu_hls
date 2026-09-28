set moduleName A_element_distributor
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {A_element_distributor}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_A_element_as int 98 regular {fifo 0 volatile }  }
	{ pe1_idle2 int 1 regular {fifo 0 volatile }  }
	{ pe2_idle3 int 1 regular {fifo 0 volatile }  }
	{ pe3_idle4 int 1 regular {fifo 0 volatile }  }
	{ pe4_idle5 int 1 regular {fifo 0 volatile }  }
	{ rm1_idle6 int 1 regular {fifo 0 volatile }  }
	{ rm2_idle7 int 1 regular {fifo 0 volatile }  }
	{ rm3_idle8 int 1 regular {fifo 0 volatile }  }
	{ rm4_idle9 int 1 regular {fifo 0 volatile }  }
	{ pe1_job int 66 regular {fifo 1 volatile }  }
	{ pe2_job int 66 regular {fifo 1 volatile }  }
	{ pe3_job int 66 regular {fifo 1 volatile }  }
	{ pe4_job int 66 regular {fifo 1 volatile }  }
	{ rcache_stream1 int 230 regular {fifo 1 volatile }  }
	{ rcache_stream2 int 230 regular {fifo 1 volatile }  }
	{ rcache_stream3 int 230 regular {fifo 1 volatile }  }
	{ rcache_stream4 int 230 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_A_element_as", "interface" : "fifo", "bitwidth" : 98, "direction" : "READONLY"} , 
 	{ "Name" : "pe1_idle2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe2_idle3", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe3_idle4", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe4_idle5", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm1_idle6", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm2_idle7", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm3_idle8", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm4_idle9", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe1_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe2_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe3_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe4_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_stream1", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_stream2", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_stream3", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_stream4", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 92
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_A_element_as_dout sc_in sc_lv 98 signal 0 } 
	{ p_A_element_as_num_data_valid sc_in sc_lv 9 signal 0 } 
	{ p_A_element_as_fifo_cap sc_in sc_lv 9 signal 0 } 
	{ p_A_element_as_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_A_element_as_read sc_out sc_logic 1 signal 0 } 
	{ pe1_idle2_dout sc_in sc_lv 1 signal 1 } 
	{ pe1_idle2_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ pe1_idle2_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ pe1_idle2_empty_n sc_in sc_logic 1 signal 1 } 
	{ pe1_idle2_read sc_out sc_logic 1 signal 1 } 
	{ pe2_idle3_dout sc_in sc_lv 1 signal 2 } 
	{ pe2_idle3_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ pe2_idle3_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ pe2_idle3_empty_n sc_in sc_logic 1 signal 2 } 
	{ pe2_idle3_read sc_out sc_logic 1 signal 2 } 
	{ pe3_idle4_dout sc_in sc_lv 1 signal 3 } 
	{ pe3_idle4_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ pe3_idle4_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ pe3_idle4_empty_n sc_in sc_logic 1 signal 3 } 
	{ pe3_idle4_read sc_out sc_logic 1 signal 3 } 
	{ pe4_idle5_dout sc_in sc_lv 1 signal 4 } 
	{ pe4_idle5_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ pe4_idle5_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ pe4_idle5_empty_n sc_in sc_logic 1 signal 4 } 
	{ pe4_idle5_read sc_out sc_logic 1 signal 4 } 
	{ rm1_idle6_dout sc_in sc_lv 1 signal 5 } 
	{ rm1_idle6_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ rm1_idle6_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ rm1_idle6_empty_n sc_in sc_logic 1 signal 5 } 
	{ rm1_idle6_read sc_out sc_logic 1 signal 5 } 
	{ rm2_idle7_dout sc_in sc_lv 1 signal 6 } 
	{ rm2_idle7_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ rm2_idle7_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ rm2_idle7_empty_n sc_in sc_logic 1 signal 6 } 
	{ rm2_idle7_read sc_out sc_logic 1 signal 6 } 
	{ rm3_idle8_dout sc_in sc_lv 1 signal 7 } 
	{ rm3_idle8_num_data_valid sc_in sc_lv 8 signal 7 } 
	{ rm3_idle8_fifo_cap sc_in sc_lv 8 signal 7 } 
	{ rm3_idle8_empty_n sc_in sc_logic 1 signal 7 } 
	{ rm3_idle8_read sc_out sc_logic 1 signal 7 } 
	{ rm4_idle9_dout sc_in sc_lv 1 signal 8 } 
	{ rm4_idle9_num_data_valid sc_in sc_lv 8 signal 8 } 
	{ rm4_idle9_fifo_cap sc_in sc_lv 8 signal 8 } 
	{ rm4_idle9_empty_n sc_in sc_logic 1 signal 8 } 
	{ rm4_idle9_read sc_out sc_logic 1 signal 8 } 
	{ pe1_job_din sc_out sc_lv 66 signal 9 } 
	{ pe1_job_num_data_valid sc_in sc_lv 8 signal 9 } 
	{ pe1_job_fifo_cap sc_in sc_lv 8 signal 9 } 
	{ pe1_job_full_n sc_in sc_logic 1 signal 9 } 
	{ pe1_job_write sc_out sc_logic 1 signal 9 } 
	{ pe2_job_din sc_out sc_lv 66 signal 10 } 
	{ pe2_job_num_data_valid sc_in sc_lv 8 signal 10 } 
	{ pe2_job_fifo_cap sc_in sc_lv 8 signal 10 } 
	{ pe2_job_full_n sc_in sc_logic 1 signal 10 } 
	{ pe2_job_write sc_out sc_logic 1 signal 10 } 
	{ pe3_job_din sc_out sc_lv 66 signal 11 } 
	{ pe3_job_num_data_valid sc_in sc_lv 8 signal 11 } 
	{ pe3_job_fifo_cap sc_in sc_lv 8 signal 11 } 
	{ pe3_job_full_n sc_in sc_logic 1 signal 11 } 
	{ pe3_job_write sc_out sc_logic 1 signal 11 } 
	{ pe4_job_din sc_out sc_lv 66 signal 12 } 
	{ pe4_job_num_data_valid sc_in sc_lv 8 signal 12 } 
	{ pe4_job_fifo_cap sc_in sc_lv 8 signal 12 } 
	{ pe4_job_full_n sc_in sc_logic 1 signal 12 } 
	{ pe4_job_write sc_out sc_logic 1 signal 12 } 
	{ rcache_stream1_din sc_out sc_lv 230 signal 13 } 
	{ rcache_stream1_num_data_valid sc_in sc_lv 7 signal 13 } 
	{ rcache_stream1_fifo_cap sc_in sc_lv 7 signal 13 } 
	{ rcache_stream1_full_n sc_in sc_logic 1 signal 13 } 
	{ rcache_stream1_write sc_out sc_logic 1 signal 13 } 
	{ rcache_stream2_din sc_out sc_lv 230 signal 14 } 
	{ rcache_stream2_num_data_valid sc_in sc_lv 7 signal 14 } 
	{ rcache_stream2_fifo_cap sc_in sc_lv 7 signal 14 } 
	{ rcache_stream2_full_n sc_in sc_logic 1 signal 14 } 
	{ rcache_stream2_write sc_out sc_logic 1 signal 14 } 
	{ rcache_stream3_din sc_out sc_lv 230 signal 15 } 
	{ rcache_stream3_num_data_valid sc_in sc_lv 7 signal 15 } 
	{ rcache_stream3_fifo_cap sc_in sc_lv 7 signal 15 } 
	{ rcache_stream3_full_n sc_in sc_logic 1 signal 15 } 
	{ rcache_stream3_write sc_out sc_logic 1 signal 15 } 
	{ rcache_stream4_din sc_out sc_lv 230 signal 16 } 
	{ rcache_stream4_num_data_valid sc_in sc_lv 7 signal 16 } 
	{ rcache_stream4_fifo_cap sc_in sc_lv 7 signal 16 } 
	{ rcache_stream4_full_n sc_in sc_logic 1 signal 16 } 
	{ rcache_stream4_write sc_out sc_logic 1 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_A_element_as_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":98, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "dout" }} , 
 	{ "name": "p_A_element_as_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "num_data_valid" }} , 
 	{ "name": "p_A_element_as_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "fifo_cap" }} , 
 	{ "name": "p_A_element_as_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "empty_n" }} , 
 	{ "name": "p_A_element_as_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "read" }} , 
 	{ "name": "pe1_idle2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle2", "role": "dout" }} , 
 	{ "name": "pe1_idle2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_idle2", "role": "num_data_valid" }} , 
 	{ "name": "pe1_idle2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_idle2", "role": "fifo_cap" }} , 
 	{ "name": "pe1_idle2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle2", "role": "empty_n" }} , 
 	{ "name": "pe1_idle2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle2", "role": "read" }} , 
 	{ "name": "pe2_idle3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle3", "role": "dout" }} , 
 	{ "name": "pe2_idle3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe2_idle3", "role": "num_data_valid" }} , 
 	{ "name": "pe2_idle3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe2_idle3", "role": "fifo_cap" }} , 
 	{ "name": "pe2_idle3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle3", "role": "empty_n" }} , 
 	{ "name": "pe2_idle3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle3", "role": "read" }} , 
 	{ "name": "pe3_idle4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle4", "role": "dout" }} , 
 	{ "name": "pe3_idle4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe3_idle4", "role": "num_data_valid" }} , 
 	{ "name": "pe3_idle4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe3_idle4", "role": "fifo_cap" }} , 
 	{ "name": "pe3_idle4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle4", "role": "empty_n" }} , 
 	{ "name": "pe3_idle4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle4", "role": "read" }} , 
 	{ "name": "pe4_idle5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle5", "role": "dout" }} , 
 	{ "name": "pe4_idle5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_idle5", "role": "num_data_valid" }} , 
 	{ "name": "pe4_idle5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_idle5", "role": "fifo_cap" }} , 
 	{ "name": "pe4_idle5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle5", "role": "empty_n" }} , 
 	{ "name": "pe4_idle5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle5", "role": "read" }} , 
 	{ "name": "rm1_idle6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm1_idle6", "role": "dout" }} , 
 	{ "name": "rm1_idle6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm1_idle6", "role": "num_data_valid" }} , 
 	{ "name": "rm1_idle6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm1_idle6", "role": "fifo_cap" }} , 
 	{ "name": "rm1_idle6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm1_idle6", "role": "empty_n" }} , 
 	{ "name": "rm1_idle6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm1_idle6", "role": "read" }} , 
 	{ "name": "rm2_idle7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "dout" }} , 
 	{ "name": "rm2_idle7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "num_data_valid" }} , 
 	{ "name": "rm2_idle7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "fifo_cap" }} , 
 	{ "name": "rm2_idle7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "empty_n" }} , 
 	{ "name": "rm2_idle7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "read" }} , 
 	{ "name": "rm3_idle8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm3_idle8", "role": "dout" }} , 
 	{ "name": "rm3_idle8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm3_idle8", "role": "num_data_valid" }} , 
 	{ "name": "rm3_idle8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm3_idle8", "role": "fifo_cap" }} , 
 	{ "name": "rm3_idle8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm3_idle8", "role": "empty_n" }} , 
 	{ "name": "rm3_idle8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm3_idle8", "role": "read" }} , 
 	{ "name": "rm4_idle9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "dout" }} , 
 	{ "name": "rm4_idle9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "num_data_valid" }} , 
 	{ "name": "rm4_idle9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "fifo_cap" }} , 
 	{ "name": "rm4_idle9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "empty_n" }} , 
 	{ "name": "rm4_idle9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "read" }} , 
 	{ "name": "pe1_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe1_job", "role": "din" }} , 
 	{ "name": "pe1_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_job", "role": "num_data_valid" }} , 
 	{ "name": "pe1_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_job", "role": "fifo_cap" }} , 
 	{ "name": "pe1_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_job", "role": "full_n" }} , 
 	{ "name": "pe1_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_job", "role": "write" }} , 
 	{ "name": "pe2_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe2_job", "role": "din" }} , 
 	{ "name": "pe2_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe2_job", "role": "num_data_valid" }} , 
 	{ "name": "pe2_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe2_job", "role": "fifo_cap" }} , 
 	{ "name": "pe2_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_job", "role": "full_n" }} , 
 	{ "name": "pe2_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_job", "role": "write" }} , 
 	{ "name": "pe3_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe3_job", "role": "din" }} , 
 	{ "name": "pe3_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe3_job", "role": "num_data_valid" }} , 
 	{ "name": "pe3_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe3_job", "role": "fifo_cap" }} , 
 	{ "name": "pe3_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_job", "role": "full_n" }} , 
 	{ "name": "pe3_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_job", "role": "write" }} , 
 	{ "name": "pe4_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe4_job", "role": "din" }} , 
 	{ "name": "pe4_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_job", "role": "num_data_valid" }} , 
 	{ "name": "pe4_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_job", "role": "fifo_cap" }} , 
 	{ "name": "pe4_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_job", "role": "full_n" }} , 
 	{ "name": "pe4_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_job", "role": "write" }} , 
 	{ "name": "rcache_stream1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "din" }} , 
 	{ "name": "rcache_stream1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "full_n" }} , 
 	{ "name": "rcache_stream1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "write" }} , 
 	{ "name": "rcache_stream2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "din" }} , 
 	{ "name": "rcache_stream2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "full_n" }} , 
 	{ "name": "rcache_stream2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "write" }} , 
 	{ "name": "rcache_stream3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "din" }} , 
 	{ "name": "rcache_stream3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "full_n" }} , 
 	{ "name": "rcache_stream3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "write" }} , 
 	{ "name": "rcache_stream4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "din" }} , 
 	{ "name": "rcache_stream4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "full_n" }} , 
 	{ "name": "rcache_stream4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "A_element_distributor",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_A_element_as", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_A_element_as_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "p_A_element_as", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe1_idle2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe1_idle2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe1_idle2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe2_idle3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe2_idle3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe2_idle3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe3_idle4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe3_idle4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe3_idle4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe4_idle5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe4_idle5_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe4_idle5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rm1_idle6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rm1_idle6_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rm1_idle6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rm2_idle7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rm2_idle7_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rm2_idle7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rm3_idle8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rm3_idle8_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rm3_idle8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rm4_idle9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rm4_idle9_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rm4_idle9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe1_job", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe1_job_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe1_job", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe2_job", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe2_job_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe2_job", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe3_job", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe3_job_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe3_job", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe4_job", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe4_job_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe4_job", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rcache_stream1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_stream1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rcache_stream1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rcache_stream2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_stream2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rcache_stream2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rcache_stream3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_stream3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rcache_stream3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rcache_stream4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_stream4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rcache_stream4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "A_element_distributor_Pipeline_VITIS_LOOP_96_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp_avc_rid", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_avc_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln95_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_avc_end", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_avc_row_end", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe1_job", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pe1_job_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe2_job", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pe2_job_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe3_job", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pe3_job_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe4_job", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pe4_job_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_A_element_as", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_A_element_as_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe4_idle5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pe4_idle5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe3_idle4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pe3_idle4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe2_idle3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pe2_idle3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe1_idle2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pe1_idle2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm1_idle6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rm1_idle6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm2_idle7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rm2_idle7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm3_idle8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rm3_idle8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm4_idle9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rm4_idle9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_stream1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_stream1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_stream2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_stream2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_stream3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_stream3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_stream4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_stream4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_rcache_request_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_rcache_request_Acid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_rcache_request_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_rcache_request_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_pe_rid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_96_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	A_element_distributor {
		p_A_element_as {Type I LastRead 1 FirstWrite -1}
		pe1_idle2 {Type I LastRead 3 FirstWrite -1}
		pe2_idle3 {Type I LastRead 3 FirstWrite -1}
		pe3_idle4 {Type I LastRead 3 FirstWrite -1}
		pe4_idle5 {Type I LastRead 3 FirstWrite -1}
		rm1_idle6 {Type I LastRead 3 FirstWrite -1}
		rm2_idle7 {Type I LastRead 3 FirstWrite -1}
		rm3_idle8 {Type I LastRead 3 FirstWrite -1}
		rm4_idle9 {Type I LastRead 3 FirstWrite -1}
		pe1_job {Type O LastRead -1 FirstWrite 2}
		pe2_job {Type O LastRead -1 FirstWrite 2}
		pe3_job {Type O LastRead -1 FirstWrite 2}
		pe4_job {Type O LastRead -1 FirstWrite 2}
		rcache_stream1 {Type O LastRead -1 FirstWrite 2}
		rcache_stream2 {Type O LastRead -1 FirstWrite 2}
		rcache_stream3 {Type O LastRead -1 FirstWrite 2}
		rcache_stream4 {Type O LastRead -1 FirstWrite 2}}
	A_element_distributor_Pipeline_VITIS_LOOP_96_1 {
		temp_avc_rid {Type I LastRead 0 FirstWrite -1}
		temp_avc_cid {Type I LastRead 0 FirstWrite -1}
		trunc_ln95_1 {Type I LastRead 0 FirstWrite -1}
		temp_avc_end {Type I LastRead 0 FirstWrite -1}
		temp_avc_row_end {Type I LastRead 0 FirstWrite -1}
		pe1_job {Type O LastRead -1 FirstWrite 2}
		pe2_job {Type O LastRead -1 FirstWrite 2}
		pe3_job {Type O LastRead -1 FirstWrite 2}
		pe4_job {Type O LastRead -1 FirstWrite 2}
		p_A_element_as {Type I LastRead 1 FirstWrite -1}
		pe4_idle5 {Type I LastRead 1 FirstWrite -1}
		pe3_idle4 {Type I LastRead 1 FirstWrite -1}
		pe2_idle3 {Type I LastRead 1 FirstWrite -1}
		pe1_idle2 {Type I LastRead 1 FirstWrite -1}
		rm1_idle6 {Type I LastRead 1 FirstWrite -1}
		rm2_idle7 {Type I LastRead 1 FirstWrite -1}
		rm3_idle8 {Type I LastRead 1 FirstWrite -1}
		rm4_idle9 {Type I LastRead 1 FirstWrite -1}
		rcache_stream1 {Type O LastRead -1 FirstWrite 2}
		rcache_stream2 {Type O LastRead -1 FirstWrite 2}
		rcache_stream3 {Type O LastRead -1 FirstWrite 2}
		rcache_stream4 {Type O LastRead -1 FirstWrite 2}
		temp_rcache_request_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_rcache_request_Acid_out {Type O LastRead -1 FirstWrite 1}
		temp_rcache_request_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_rcache_request_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_pe_rid_out {Type O LastRead -1 FirstWrite 1}
		p_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_A_element_as { ap_fifo {  { p_A_element_as_dout fifo_port_we 0 98 }  { p_A_element_as_num_data_valid fifo_status_num_data_valid 0 9 }  { p_A_element_as_fifo_cap fifo_update 0 9 }  { p_A_element_as_empty_n fifo_status 0 1 }  { p_A_element_as_read fifo_data 1 1 } } }
	pe1_idle2 { ap_fifo {  { pe1_idle2_dout fifo_port_we 0 1 }  { pe1_idle2_num_data_valid fifo_status_num_data_valid 0 8 }  { pe1_idle2_fifo_cap fifo_update 0 8 }  { pe1_idle2_empty_n fifo_status 0 1 }  { pe1_idle2_read fifo_data 1 1 } } }
	pe2_idle3 { ap_fifo {  { pe2_idle3_dout fifo_port_we 0 1 }  { pe2_idle3_num_data_valid fifo_status_num_data_valid 0 8 }  { pe2_idle3_fifo_cap fifo_update 0 8 }  { pe2_idle3_empty_n fifo_status 0 1 }  { pe2_idle3_read fifo_data 1 1 } } }
	pe3_idle4 { ap_fifo {  { pe3_idle4_dout fifo_port_we 0 1 }  { pe3_idle4_num_data_valid fifo_status_num_data_valid 0 8 }  { pe3_idle4_fifo_cap fifo_update 0 8 }  { pe3_idle4_empty_n fifo_status 0 1 }  { pe3_idle4_read fifo_data 1 1 } } }
	pe4_idle5 { ap_fifo {  { pe4_idle5_dout fifo_port_we 0 1 }  { pe4_idle5_num_data_valid fifo_status_num_data_valid 0 8 }  { pe4_idle5_fifo_cap fifo_update 0 8 }  { pe4_idle5_empty_n fifo_status 0 1 }  { pe4_idle5_read fifo_data 1 1 } } }
	rm1_idle6 { ap_fifo {  { rm1_idle6_dout fifo_port_we 0 1 }  { rm1_idle6_num_data_valid fifo_status_num_data_valid 0 8 }  { rm1_idle6_fifo_cap fifo_update 0 8 }  { rm1_idle6_empty_n fifo_status 0 1 }  { rm1_idle6_read fifo_data 1 1 } } }
	rm2_idle7 { ap_fifo {  { rm2_idle7_dout fifo_port_we 0 1 }  { rm2_idle7_num_data_valid fifo_status_num_data_valid 0 8 }  { rm2_idle7_fifo_cap fifo_update 0 8 }  { rm2_idle7_empty_n fifo_status 0 1 }  { rm2_idle7_read fifo_data 1 1 } } }
	rm3_idle8 { ap_fifo {  { rm3_idle8_dout fifo_port_we 0 1 }  { rm3_idle8_num_data_valid fifo_status_num_data_valid 0 8 }  { rm3_idle8_fifo_cap fifo_update 0 8 }  { rm3_idle8_empty_n fifo_status 0 1 }  { rm3_idle8_read fifo_data 1 1 } } }
	rm4_idle9 { ap_fifo {  { rm4_idle9_dout fifo_port_we 0 1 }  { rm4_idle9_num_data_valid fifo_status_num_data_valid 0 8 }  { rm4_idle9_fifo_cap fifo_update 0 8 }  { rm4_idle9_empty_n fifo_status 0 1 }  { rm4_idle9_read fifo_data 1 1 } } }
	pe1_job { ap_fifo {  { pe1_job_din fifo_port_we 1 66 }  { pe1_job_num_data_valid fifo_status_num_data_valid 0 8 }  { pe1_job_fifo_cap fifo_update 0 8 }  { pe1_job_full_n fifo_status 0 1 }  { pe1_job_write fifo_data 1 1 } } }
	pe2_job { ap_fifo {  { pe2_job_din fifo_port_we 1 66 }  { pe2_job_num_data_valid fifo_status_num_data_valid 0 8 }  { pe2_job_fifo_cap fifo_update 0 8 }  { pe2_job_full_n fifo_status 0 1 }  { pe2_job_write fifo_data 1 1 } } }
	pe3_job { ap_fifo {  { pe3_job_din fifo_port_we 1 66 }  { pe3_job_num_data_valid fifo_status_num_data_valid 0 8 }  { pe3_job_fifo_cap fifo_update 0 8 }  { pe3_job_full_n fifo_status 0 1 }  { pe3_job_write fifo_data 1 1 } } }
	pe4_job { ap_fifo {  { pe4_job_din fifo_port_we 1 66 }  { pe4_job_num_data_valid fifo_status_num_data_valid 0 8 }  { pe4_job_fifo_cap fifo_update 0 8 }  { pe4_job_full_n fifo_status 0 1 }  { pe4_job_write fifo_data 1 1 } } }
	rcache_stream1 { ap_fifo {  { rcache_stream1_din fifo_port_we 1 230 }  { rcache_stream1_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_stream1_fifo_cap fifo_update 0 7 }  { rcache_stream1_full_n fifo_status 0 1 }  { rcache_stream1_write fifo_data 1 1 } } }
	rcache_stream2 { ap_fifo {  { rcache_stream2_din fifo_port_we 1 230 }  { rcache_stream2_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_stream2_fifo_cap fifo_update 0 7 }  { rcache_stream2_full_n fifo_status 0 1 }  { rcache_stream2_write fifo_data 1 1 } } }
	rcache_stream3 { ap_fifo {  { rcache_stream3_din fifo_port_we 1 230 }  { rcache_stream3_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_stream3_fifo_cap fifo_update 0 7 }  { rcache_stream3_full_n fifo_status 0 1 }  { rcache_stream3_write fifo_data 1 1 } } }
	rcache_stream4 { ap_fifo {  { rcache_stream4_din fifo_port_we 1 230 }  { rcache_stream4_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_stream4_fifo_cap fifo_update 0 7 }  { rcache_stream4_full_n fifo_status 0 1 }  { rcache_stream4_write fifo_data 1 1 } } }
}
set moduleName A_element_distributor
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {A_element_distributor}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_A_element_as int 98 regular {fifo 0 volatile }  }
	{ pe1_idle2 int 1 regular {fifo 0 volatile }  }
	{ pe2_idle3 int 1 regular {fifo 0 volatile }  }
	{ pe3_idle4 int 1 regular {fifo 0 volatile }  }
	{ pe4_idle5 int 1 regular {fifo 0 volatile }  }
	{ rm1_idle6 int 1 regular {fifo 0 volatile }  }
	{ rm2_idle7 int 1 regular {fifo 0 volatile }  }
	{ rm3_idle8 int 1 regular {fifo 0 volatile }  }
	{ rm4_idle9 int 1 regular {fifo 0 volatile }  }
	{ pe1_job int 66 regular {fifo 1 volatile }  }
	{ pe2_job int 66 regular {fifo 1 volatile }  }
	{ pe3_job int 66 regular {fifo 1 volatile }  }
	{ pe4_job int 66 regular {fifo 1 volatile }  }
	{ rcache_stream1 int 230 regular {fifo 1 volatile }  }
	{ rcache_stream2 int 230 regular {fifo 1 volatile }  }
	{ rcache_stream3 int 230 regular {fifo 1 volatile }  }
	{ rcache_stream4 int 230 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_A_element_as", "interface" : "fifo", "bitwidth" : 98, "direction" : "READONLY"} , 
 	{ "Name" : "pe1_idle2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe2_idle3", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe3_idle4", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe4_idle5", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm1_idle6", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm2_idle7", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm3_idle8", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rm4_idle9", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pe1_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe2_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe3_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe4_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_stream1", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_stream2", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_stream3", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_stream4", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 92
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_A_element_as_dout sc_in sc_lv 98 signal 0 } 
	{ p_A_element_as_num_data_valid sc_in sc_lv 9 signal 0 } 
	{ p_A_element_as_fifo_cap sc_in sc_lv 9 signal 0 } 
	{ p_A_element_as_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_A_element_as_read sc_out sc_logic 1 signal 0 } 
	{ pe1_idle2_dout sc_in sc_lv 1 signal 1 } 
	{ pe1_idle2_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ pe1_idle2_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ pe1_idle2_empty_n sc_in sc_logic 1 signal 1 } 
	{ pe1_idle2_read sc_out sc_logic 1 signal 1 } 
	{ pe2_idle3_dout sc_in sc_lv 1 signal 2 } 
	{ pe2_idle3_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ pe2_idle3_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ pe2_idle3_empty_n sc_in sc_logic 1 signal 2 } 
	{ pe2_idle3_read sc_out sc_logic 1 signal 2 } 
	{ pe3_idle4_dout sc_in sc_lv 1 signal 3 } 
	{ pe3_idle4_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ pe3_idle4_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ pe3_idle4_empty_n sc_in sc_logic 1 signal 3 } 
	{ pe3_idle4_read sc_out sc_logic 1 signal 3 } 
	{ pe4_idle5_dout sc_in sc_lv 1 signal 4 } 
	{ pe4_idle5_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ pe4_idle5_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ pe4_idle5_empty_n sc_in sc_logic 1 signal 4 } 
	{ pe4_idle5_read sc_out sc_logic 1 signal 4 } 
	{ rm1_idle6_dout sc_in sc_lv 1 signal 5 } 
	{ rm1_idle6_num_data_valid sc_in sc_lv 8 signal 5 } 
	{ rm1_idle6_fifo_cap sc_in sc_lv 8 signal 5 } 
	{ rm1_idle6_empty_n sc_in sc_logic 1 signal 5 } 
	{ rm1_idle6_read sc_out sc_logic 1 signal 5 } 
	{ rm2_idle7_dout sc_in sc_lv 1 signal 6 } 
	{ rm2_idle7_num_data_valid sc_in sc_lv 8 signal 6 } 
	{ rm2_idle7_fifo_cap sc_in sc_lv 8 signal 6 } 
	{ rm2_idle7_empty_n sc_in sc_logic 1 signal 6 } 
	{ rm2_idle7_read sc_out sc_logic 1 signal 6 } 
	{ rm3_idle8_dout sc_in sc_lv 1 signal 7 } 
	{ rm3_idle8_num_data_valid sc_in sc_lv 8 signal 7 } 
	{ rm3_idle8_fifo_cap sc_in sc_lv 8 signal 7 } 
	{ rm3_idle8_empty_n sc_in sc_logic 1 signal 7 } 
	{ rm3_idle8_read sc_out sc_logic 1 signal 7 } 
	{ rm4_idle9_dout sc_in sc_lv 1 signal 8 } 
	{ rm4_idle9_num_data_valid sc_in sc_lv 8 signal 8 } 
	{ rm4_idle9_fifo_cap sc_in sc_lv 8 signal 8 } 
	{ rm4_idle9_empty_n sc_in sc_logic 1 signal 8 } 
	{ rm4_idle9_read sc_out sc_logic 1 signal 8 } 
	{ pe1_job_din sc_out sc_lv 66 signal 9 } 
	{ pe1_job_num_data_valid sc_in sc_lv 8 signal 9 } 
	{ pe1_job_fifo_cap sc_in sc_lv 8 signal 9 } 
	{ pe1_job_full_n sc_in sc_logic 1 signal 9 } 
	{ pe1_job_write sc_out sc_logic 1 signal 9 } 
	{ pe2_job_din sc_out sc_lv 66 signal 10 } 
	{ pe2_job_num_data_valid sc_in sc_lv 8 signal 10 } 
	{ pe2_job_fifo_cap sc_in sc_lv 8 signal 10 } 
	{ pe2_job_full_n sc_in sc_logic 1 signal 10 } 
	{ pe2_job_write sc_out sc_logic 1 signal 10 } 
	{ pe3_job_din sc_out sc_lv 66 signal 11 } 
	{ pe3_job_num_data_valid sc_in sc_lv 8 signal 11 } 
	{ pe3_job_fifo_cap sc_in sc_lv 8 signal 11 } 
	{ pe3_job_full_n sc_in sc_logic 1 signal 11 } 
	{ pe3_job_write sc_out sc_logic 1 signal 11 } 
	{ pe4_job_din sc_out sc_lv 66 signal 12 } 
	{ pe4_job_num_data_valid sc_in sc_lv 8 signal 12 } 
	{ pe4_job_fifo_cap sc_in sc_lv 8 signal 12 } 
	{ pe4_job_full_n sc_in sc_logic 1 signal 12 } 
	{ pe4_job_write sc_out sc_logic 1 signal 12 } 
	{ rcache_stream1_din sc_out sc_lv 230 signal 13 } 
	{ rcache_stream1_num_data_valid sc_in sc_lv 7 signal 13 } 
	{ rcache_stream1_fifo_cap sc_in sc_lv 7 signal 13 } 
	{ rcache_stream1_full_n sc_in sc_logic 1 signal 13 } 
	{ rcache_stream1_write sc_out sc_logic 1 signal 13 } 
	{ rcache_stream2_din sc_out sc_lv 230 signal 14 } 
	{ rcache_stream2_num_data_valid sc_in sc_lv 7 signal 14 } 
	{ rcache_stream2_fifo_cap sc_in sc_lv 7 signal 14 } 
	{ rcache_stream2_full_n sc_in sc_logic 1 signal 14 } 
	{ rcache_stream2_write sc_out sc_logic 1 signal 14 } 
	{ rcache_stream3_din sc_out sc_lv 230 signal 15 } 
	{ rcache_stream3_num_data_valid sc_in sc_lv 7 signal 15 } 
	{ rcache_stream3_fifo_cap sc_in sc_lv 7 signal 15 } 
	{ rcache_stream3_full_n sc_in sc_logic 1 signal 15 } 
	{ rcache_stream3_write sc_out sc_logic 1 signal 15 } 
	{ rcache_stream4_din sc_out sc_lv 230 signal 16 } 
	{ rcache_stream4_num_data_valid sc_in sc_lv 7 signal 16 } 
	{ rcache_stream4_fifo_cap sc_in sc_lv 7 signal 16 } 
	{ rcache_stream4_full_n sc_in sc_logic 1 signal 16 } 
	{ rcache_stream4_write sc_out sc_logic 1 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_A_element_as_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":98, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "dout" }} , 
 	{ "name": "p_A_element_as_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "num_data_valid" }} , 
 	{ "name": "p_A_element_as_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "fifo_cap" }} , 
 	{ "name": "p_A_element_as_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "empty_n" }} , 
 	{ "name": "p_A_element_as_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_A_element_as", "role": "read" }} , 
 	{ "name": "pe1_idle2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle2", "role": "dout" }} , 
 	{ "name": "pe1_idle2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_idle2", "role": "num_data_valid" }} , 
 	{ "name": "pe1_idle2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_idle2", "role": "fifo_cap" }} , 
 	{ "name": "pe1_idle2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle2", "role": "empty_n" }} , 
 	{ "name": "pe1_idle2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle2", "role": "read" }} , 
 	{ "name": "pe2_idle3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle3", "role": "dout" }} , 
 	{ "name": "pe2_idle3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe2_idle3", "role": "num_data_valid" }} , 
 	{ "name": "pe2_idle3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe2_idle3", "role": "fifo_cap" }} , 
 	{ "name": "pe2_idle3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle3", "role": "empty_n" }} , 
 	{ "name": "pe2_idle3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_idle3", "role": "read" }} , 
 	{ "name": "pe3_idle4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle4", "role": "dout" }} , 
 	{ "name": "pe3_idle4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe3_idle4", "role": "num_data_valid" }} , 
 	{ "name": "pe3_idle4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe3_idle4", "role": "fifo_cap" }} , 
 	{ "name": "pe3_idle4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle4", "role": "empty_n" }} , 
 	{ "name": "pe3_idle4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_idle4", "role": "read" }} , 
 	{ "name": "pe4_idle5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle5", "role": "dout" }} , 
 	{ "name": "pe4_idle5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_idle5", "role": "num_data_valid" }} , 
 	{ "name": "pe4_idle5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_idle5", "role": "fifo_cap" }} , 
 	{ "name": "pe4_idle5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle5", "role": "empty_n" }} , 
 	{ "name": "pe4_idle5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle5", "role": "read" }} , 
 	{ "name": "rm1_idle6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm1_idle6", "role": "dout" }} , 
 	{ "name": "rm1_idle6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm1_idle6", "role": "num_data_valid" }} , 
 	{ "name": "rm1_idle6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm1_idle6", "role": "fifo_cap" }} , 
 	{ "name": "rm1_idle6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm1_idle6", "role": "empty_n" }} , 
 	{ "name": "rm1_idle6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm1_idle6", "role": "read" }} , 
 	{ "name": "rm2_idle7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "dout" }} , 
 	{ "name": "rm2_idle7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "num_data_valid" }} , 
 	{ "name": "rm2_idle7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "fifo_cap" }} , 
 	{ "name": "rm2_idle7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "empty_n" }} , 
 	{ "name": "rm2_idle7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm2_idle7", "role": "read" }} , 
 	{ "name": "rm3_idle8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm3_idle8", "role": "dout" }} , 
 	{ "name": "rm3_idle8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm3_idle8", "role": "num_data_valid" }} , 
 	{ "name": "rm3_idle8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm3_idle8", "role": "fifo_cap" }} , 
 	{ "name": "rm3_idle8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm3_idle8", "role": "empty_n" }} , 
 	{ "name": "rm3_idle8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm3_idle8", "role": "read" }} , 
 	{ "name": "rm4_idle9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "dout" }} , 
 	{ "name": "rm4_idle9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "num_data_valid" }} , 
 	{ "name": "rm4_idle9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "fifo_cap" }} , 
 	{ "name": "rm4_idle9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "empty_n" }} , 
 	{ "name": "rm4_idle9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rm4_idle9", "role": "read" }} , 
 	{ "name": "pe1_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe1_job", "role": "din" }} , 
 	{ "name": "pe1_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_job", "role": "num_data_valid" }} , 
 	{ "name": "pe1_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_job", "role": "fifo_cap" }} , 
 	{ "name": "pe1_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_job", "role": "full_n" }} , 
 	{ "name": "pe1_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_job", "role": "write" }} , 
 	{ "name": "pe2_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe2_job", "role": "din" }} , 
 	{ "name": "pe2_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe2_job", "role": "num_data_valid" }} , 
 	{ "name": "pe2_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe2_job", "role": "fifo_cap" }} , 
 	{ "name": "pe2_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_job", "role": "full_n" }} , 
 	{ "name": "pe2_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe2_job", "role": "write" }} , 
 	{ "name": "pe3_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe3_job", "role": "din" }} , 
 	{ "name": "pe3_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe3_job", "role": "num_data_valid" }} , 
 	{ "name": "pe3_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe3_job", "role": "fifo_cap" }} , 
 	{ "name": "pe3_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_job", "role": "full_n" }} , 
 	{ "name": "pe3_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe3_job", "role": "write" }} , 
 	{ "name": "pe4_job_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe4_job", "role": "din" }} , 
 	{ "name": "pe4_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_job", "role": "num_data_valid" }} , 
 	{ "name": "pe4_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_job", "role": "fifo_cap" }} , 
 	{ "name": "pe4_job_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_job", "role": "full_n" }} , 
 	{ "name": "pe4_job_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_job", "role": "write" }} , 
 	{ "name": "rcache_stream1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "din" }} , 
 	{ "name": "rcache_stream1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "full_n" }} , 
 	{ "name": "rcache_stream1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream1", "role": "write" }} , 
 	{ "name": "rcache_stream2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "din" }} , 
 	{ "name": "rcache_stream2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "full_n" }} , 
 	{ "name": "rcache_stream2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream2", "role": "write" }} , 
 	{ "name": "rcache_stream3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "din" }} , 
 	{ "name": "rcache_stream3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "full_n" }} , 
 	{ "name": "rcache_stream3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream3", "role": "write" }} , 
 	{ "name": "rcache_stream4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "din" }} , 
 	{ "name": "rcache_stream4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "num_data_valid" }} , 
 	{ "name": "rcache_stream4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "fifo_cap" }} , 
 	{ "name": "rcache_stream4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "full_n" }} , 
 	{ "name": "rcache_stream4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "A_element_distributor",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_A_element_as", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_A_element_as_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "p_A_element_as", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe1_idle2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe1_idle2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe1_idle2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe2_idle3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe2_idle3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe2_idle3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe3_idle4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe3_idle4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe3_idle4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe4_idle5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe4_idle5_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe4_idle5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rm1_idle6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rm1_idle6_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rm1_idle6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rm2_idle7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rm2_idle7_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rm2_idle7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rm3_idle8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rm3_idle8_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rm3_idle8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rm4_idle9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rm4_idle9_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rm4_idle9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe1_job", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe1_job_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe1_job", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe2_job", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe2_job_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe2_job", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe3_job", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe3_job_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe3_job", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pe4_job", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe4_job_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "pe4_job", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rcache_stream1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_stream1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rcache_stream1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rcache_stream2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_stream2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rcache_stream2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rcache_stream3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_stream3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rcache_stream3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rcache_stream4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0","0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_stream4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Port" : "rcache_stream4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "A_element_distributor_Pipeline_VITIS_LOOP_96_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "temp_avc_rid", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_avc_cid", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln95_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_avc_end", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_avc_row_end", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe1_job", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pe1_job_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe2_job", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pe2_job_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe3_job", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pe3_job_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe4_job", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pe4_job_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_A_element_as", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_A_element_as_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe4_idle5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pe4_idle5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe3_idle4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pe3_idle4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe2_idle3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pe2_idle3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe1_idle2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "pe1_idle2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm1_idle6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rm1_idle6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm2_idle7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rm2_idle7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm3_idle8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rm3_idle8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rm4_idle9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rm4_idle9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_stream1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_stream1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_stream2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_stream2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_stream3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_stream3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_stream4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_stream4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_rcache_request_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_rcache_request_Acid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_rcache_request_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_rcache_request_dest_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_pe_rid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_96_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_A_element_distributor_Pipeline_VITIS_LOOP_96_1_fu_240.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	A_element_distributor {
		p_A_element_as {Type I LastRead 1 FirstWrite -1}
		pe1_idle2 {Type I LastRead 3 FirstWrite -1}
		pe2_idle3 {Type I LastRead 3 FirstWrite -1}
		pe3_idle4 {Type I LastRead 3 FirstWrite -1}
		pe4_idle5 {Type I LastRead 3 FirstWrite -1}
		rm1_idle6 {Type I LastRead 3 FirstWrite -1}
		rm2_idle7 {Type I LastRead 3 FirstWrite -1}
		rm3_idle8 {Type I LastRead 3 FirstWrite -1}
		rm4_idle9 {Type I LastRead 3 FirstWrite -1}
		pe1_job {Type O LastRead -1 FirstWrite 2}
		pe2_job {Type O LastRead -1 FirstWrite 2}
		pe3_job {Type O LastRead -1 FirstWrite 2}
		pe4_job {Type O LastRead -1 FirstWrite 2}
		rcache_stream1 {Type O LastRead -1 FirstWrite 2}
		rcache_stream2 {Type O LastRead -1 FirstWrite 2}
		rcache_stream3 {Type O LastRead -1 FirstWrite 2}
		rcache_stream4 {Type O LastRead -1 FirstWrite 2}}
	A_element_distributor_Pipeline_VITIS_LOOP_96_1 {
		temp_avc_rid {Type I LastRead 0 FirstWrite -1}
		temp_avc_cid {Type I LastRead 0 FirstWrite -1}
		trunc_ln95_1 {Type I LastRead 0 FirstWrite -1}
		temp_avc_end {Type I LastRead 0 FirstWrite -1}
		temp_avc_row_end {Type I LastRead 0 FirstWrite -1}
		pe1_job {Type O LastRead -1 FirstWrite 2}
		pe2_job {Type O LastRead -1 FirstWrite 2}
		pe3_job {Type O LastRead -1 FirstWrite 2}
		pe4_job {Type O LastRead -1 FirstWrite 2}
		p_A_element_as {Type I LastRead 1 FirstWrite -1}
		pe4_idle5 {Type I LastRead 1 FirstWrite -1}
		pe3_idle4 {Type I LastRead 1 FirstWrite -1}
		pe2_idle3 {Type I LastRead 1 FirstWrite -1}
		pe1_idle2 {Type I LastRead 1 FirstWrite -1}
		rm1_idle6 {Type I LastRead 1 FirstWrite -1}
		rm2_idle7 {Type I LastRead 1 FirstWrite -1}
		rm3_idle8 {Type I LastRead 1 FirstWrite -1}
		rm4_idle9 {Type I LastRead 1 FirstWrite -1}
		rcache_stream1 {Type O LastRead -1 FirstWrite 2}
		rcache_stream2 {Type O LastRead -1 FirstWrite 2}
		rcache_stream3 {Type O LastRead -1 FirstWrite 2}
		rcache_stream4 {Type O LastRead -1 FirstWrite 2}
		temp_rcache_request_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_rcache_request_Acid_out {Type O LastRead -1 FirstWrite 1}
		temp_rcache_request_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_rcache_request_dest_V_out {Type O LastRead -1 FirstWrite 1}
		temp_pe_rid_out {Type O LastRead -1 FirstWrite 1}
		p_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_A_element_as { ap_fifo {  { p_A_element_as_dout fifo_port_we 0 98 }  { p_A_element_as_num_data_valid fifo_status_num_data_valid 0 9 }  { p_A_element_as_fifo_cap fifo_update 0 9 }  { p_A_element_as_empty_n fifo_status 0 1 }  { p_A_element_as_read fifo_data 1 1 } } }
	pe1_idle2 { ap_fifo {  { pe1_idle2_dout fifo_port_we 0 1 }  { pe1_idle2_num_data_valid fifo_status_num_data_valid 0 8 }  { pe1_idle2_fifo_cap fifo_update 0 8 }  { pe1_idle2_empty_n fifo_status 0 1 }  { pe1_idle2_read fifo_data 1 1 } } }
	pe2_idle3 { ap_fifo {  { pe2_idle3_dout fifo_port_we 0 1 }  { pe2_idle3_num_data_valid fifo_status_num_data_valid 0 8 }  { pe2_idle3_fifo_cap fifo_update 0 8 }  { pe2_idle3_empty_n fifo_status 0 1 }  { pe2_idle3_read fifo_data 1 1 } } }
	pe3_idle4 { ap_fifo {  { pe3_idle4_dout fifo_port_we 0 1 }  { pe3_idle4_num_data_valid fifo_status_num_data_valid 0 8 }  { pe3_idle4_fifo_cap fifo_update 0 8 }  { pe3_idle4_empty_n fifo_status 0 1 }  { pe3_idle4_read fifo_data 1 1 } } }
	pe4_idle5 { ap_fifo {  { pe4_idle5_dout fifo_port_we 0 1 }  { pe4_idle5_num_data_valid fifo_status_num_data_valid 0 8 }  { pe4_idle5_fifo_cap fifo_update 0 8 }  { pe4_idle5_empty_n fifo_status 0 1 }  { pe4_idle5_read fifo_data 1 1 } } }
	rm1_idle6 { ap_fifo {  { rm1_idle6_dout fifo_port_we 0 1 }  { rm1_idle6_num_data_valid fifo_status_num_data_valid 0 8 }  { rm1_idle6_fifo_cap fifo_update 0 8 }  { rm1_idle6_empty_n fifo_status 0 1 }  { rm1_idle6_read fifo_data 1 1 } } }
	rm2_idle7 { ap_fifo {  { rm2_idle7_dout fifo_port_we 0 1 }  { rm2_idle7_num_data_valid fifo_status_num_data_valid 0 8 }  { rm2_idle7_fifo_cap fifo_update 0 8 }  { rm2_idle7_empty_n fifo_status 0 1 }  { rm2_idle7_read fifo_data 1 1 } } }
	rm3_idle8 { ap_fifo {  { rm3_idle8_dout fifo_port_we 0 1 }  { rm3_idle8_num_data_valid fifo_status_num_data_valid 0 8 }  { rm3_idle8_fifo_cap fifo_update 0 8 }  { rm3_idle8_empty_n fifo_status 0 1 }  { rm3_idle8_read fifo_data 1 1 } } }
	rm4_idle9 { ap_fifo {  { rm4_idle9_dout fifo_port_we 0 1 }  { rm4_idle9_num_data_valid fifo_status_num_data_valid 0 8 }  { rm4_idle9_fifo_cap fifo_update 0 8 }  { rm4_idle9_empty_n fifo_status 0 1 }  { rm4_idle9_read fifo_data 1 1 } } }
	pe1_job { ap_fifo {  { pe1_job_din fifo_port_we 1 66 }  { pe1_job_num_data_valid fifo_status_num_data_valid 0 8 }  { pe1_job_fifo_cap fifo_update 0 8 }  { pe1_job_full_n fifo_status 0 1 }  { pe1_job_write fifo_data 1 1 } } }
	pe2_job { ap_fifo {  { pe2_job_din fifo_port_we 1 66 }  { pe2_job_num_data_valid fifo_status_num_data_valid 0 8 }  { pe2_job_fifo_cap fifo_update 0 8 }  { pe2_job_full_n fifo_status 0 1 }  { pe2_job_write fifo_data 1 1 } } }
	pe3_job { ap_fifo {  { pe3_job_din fifo_port_we 1 66 }  { pe3_job_num_data_valid fifo_status_num_data_valid 0 8 }  { pe3_job_fifo_cap fifo_update 0 8 }  { pe3_job_full_n fifo_status 0 1 }  { pe3_job_write fifo_data 1 1 } } }
	pe4_job { ap_fifo {  { pe4_job_din fifo_port_we 1 66 }  { pe4_job_num_data_valid fifo_status_num_data_valid 0 8 }  { pe4_job_fifo_cap fifo_update 0 8 }  { pe4_job_full_n fifo_status 0 1 }  { pe4_job_write fifo_data 1 1 } } }
	rcache_stream1 { ap_fifo {  { rcache_stream1_din fifo_port_we 1 230 }  { rcache_stream1_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_stream1_fifo_cap fifo_update 0 7 }  { rcache_stream1_full_n fifo_status 0 1 }  { rcache_stream1_write fifo_data 1 1 } } }
	rcache_stream2 { ap_fifo {  { rcache_stream2_din fifo_port_we 1 230 }  { rcache_stream2_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_stream2_fifo_cap fifo_update 0 7 }  { rcache_stream2_full_n fifo_status 0 1 }  { rcache_stream2_write fifo_data 1 1 } } }
	rcache_stream3 { ap_fifo {  { rcache_stream3_din fifo_port_we 1 230 }  { rcache_stream3_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_stream3_fifo_cap fifo_update 0 7 }  { rcache_stream3_full_n fifo_status 0 1 }  { rcache_stream3_write fifo_data 1 1 } } }
	rcache_stream4 { ap_fifo {  { rcache_stream4_din fifo_port_we 1 230 }  { rcache_stream4_num_data_valid fifo_status_num_data_valid 0 7 }  { rcache_stream4_fifo_cap fifo_update 0 7 }  { rcache_stream4_full_n fifo_status 0 1 }  { rcache_stream4_write fifo_data 1 1 } } }
}
