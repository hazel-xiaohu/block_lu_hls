set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ B_rcsr_base int 32 regular  }
	{ B_rcsr_base_c170 int 32 regular {fifo 1}  }
	{ B_val_base int 32 regular  }
	{ B_val_base_c172 int 32 regular {fifo 1}  }
	{ B_val_base_c173 int 32 regular {fifo 1}  }
	{ B_val_base_c174 int 32 regular {fifo 1}  }
	{ B_val_base_c175 int 32 regular {fifo 1}  }
	{ B_val_base_c176 int 32 regular {fifo 1}  }
	{ B_val_base_c177 int 32 regular {fifo 1}  }
	{ B_val_base_c178 int 32 regular {fifo 1}  }
	{ B_val_base_c179 int 32 regular {fifo 1}  }
	{ B_cid_base int 32 regular  }
	{ B_cid_base_c181 int 32 regular {fifo 1}  }
	{ B_cid_base_c182 int 32 regular {fifo 1}  }
	{ B_cid_base_c183 int 32 regular {fifo 1}  }
	{ B_cid_base_c184 int 32 regular {fifo 1}  }
	{ B_cid_base_c185 int 32 regular {fifo 1}  }
	{ B_cid_base_c186 int 32 regular {fifo 1}  }
	{ B_cid_base_c187 int 32 regular {fifo 1}  }
	{ B_cid_base_c188 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "B_rcsr_base", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_rcsr_base_c170", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_val_base_c172", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c173", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c174", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c175", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c176", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c177", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c178", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c179", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_cid_base_c181", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c182", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c183", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c184", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c185", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c186", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c187", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c188", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 95
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ B_rcsr_base sc_in sc_lv 32 signal 0 } 
	{ B_rcsr_base_c170_din sc_out sc_lv 32 signal 1 } 
	{ B_rcsr_base_c170_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ B_rcsr_base_c170_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ B_rcsr_base_c170_full_n sc_in sc_logic 1 signal 1 } 
	{ B_rcsr_base_c170_write sc_out sc_logic 1 signal 1 } 
	{ B_val_base sc_in sc_lv 32 signal 2 } 
	{ B_val_base_c172_din sc_out sc_lv 32 signal 3 } 
	{ B_val_base_c172_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ B_val_base_c172_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ B_val_base_c172_full_n sc_in sc_logic 1 signal 3 } 
	{ B_val_base_c172_write sc_out sc_logic 1 signal 3 } 
	{ B_val_base_c173_din sc_out sc_lv 32 signal 4 } 
	{ B_val_base_c173_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ B_val_base_c173_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ B_val_base_c173_full_n sc_in sc_logic 1 signal 4 } 
	{ B_val_base_c173_write sc_out sc_logic 1 signal 4 } 
	{ B_val_base_c174_din sc_out sc_lv 32 signal 5 } 
	{ B_val_base_c174_num_data_valid sc_in sc_lv 4 signal 5 } 
	{ B_val_base_c174_fifo_cap sc_in sc_lv 4 signal 5 } 
	{ B_val_base_c174_full_n sc_in sc_logic 1 signal 5 } 
	{ B_val_base_c174_write sc_out sc_logic 1 signal 5 } 
	{ B_val_base_c175_din sc_out sc_lv 32 signal 6 } 
	{ B_val_base_c175_num_data_valid sc_in sc_lv 4 signal 6 } 
	{ B_val_base_c175_fifo_cap sc_in sc_lv 4 signal 6 } 
	{ B_val_base_c175_full_n sc_in sc_logic 1 signal 6 } 
	{ B_val_base_c175_write sc_out sc_logic 1 signal 6 } 
	{ B_val_base_c176_din sc_out sc_lv 32 signal 7 } 
	{ B_val_base_c176_num_data_valid sc_in sc_lv 4 signal 7 } 
	{ B_val_base_c176_fifo_cap sc_in sc_lv 4 signal 7 } 
	{ B_val_base_c176_full_n sc_in sc_logic 1 signal 7 } 
	{ B_val_base_c176_write sc_out sc_logic 1 signal 7 } 
	{ B_val_base_c177_din sc_out sc_lv 32 signal 8 } 
	{ B_val_base_c177_num_data_valid sc_in sc_lv 4 signal 8 } 
	{ B_val_base_c177_fifo_cap sc_in sc_lv 4 signal 8 } 
	{ B_val_base_c177_full_n sc_in sc_logic 1 signal 8 } 
	{ B_val_base_c177_write sc_out sc_logic 1 signal 8 } 
	{ B_val_base_c178_din sc_out sc_lv 32 signal 9 } 
	{ B_val_base_c178_num_data_valid sc_in sc_lv 4 signal 9 } 
	{ B_val_base_c178_fifo_cap sc_in sc_lv 4 signal 9 } 
	{ B_val_base_c178_full_n sc_in sc_logic 1 signal 9 } 
	{ B_val_base_c178_write sc_out sc_logic 1 signal 9 } 
	{ B_val_base_c179_din sc_out sc_lv 32 signal 10 } 
	{ B_val_base_c179_num_data_valid sc_in sc_lv 4 signal 10 } 
	{ B_val_base_c179_fifo_cap sc_in sc_lv 4 signal 10 } 
	{ B_val_base_c179_full_n sc_in sc_logic 1 signal 10 } 
	{ B_val_base_c179_write sc_out sc_logic 1 signal 10 } 
	{ B_cid_base sc_in sc_lv 32 signal 11 } 
	{ B_cid_base_c181_din sc_out sc_lv 32 signal 12 } 
	{ B_cid_base_c181_num_data_valid sc_in sc_lv 4 signal 12 } 
	{ B_cid_base_c181_fifo_cap sc_in sc_lv 4 signal 12 } 
	{ B_cid_base_c181_full_n sc_in sc_logic 1 signal 12 } 
	{ B_cid_base_c181_write sc_out sc_logic 1 signal 12 } 
	{ B_cid_base_c182_din sc_out sc_lv 32 signal 13 } 
	{ B_cid_base_c182_num_data_valid sc_in sc_lv 4 signal 13 } 
	{ B_cid_base_c182_fifo_cap sc_in sc_lv 4 signal 13 } 
	{ B_cid_base_c182_full_n sc_in sc_logic 1 signal 13 } 
	{ B_cid_base_c182_write sc_out sc_logic 1 signal 13 } 
	{ B_cid_base_c183_din sc_out sc_lv 32 signal 14 } 
	{ B_cid_base_c183_num_data_valid sc_in sc_lv 4 signal 14 } 
	{ B_cid_base_c183_fifo_cap sc_in sc_lv 4 signal 14 } 
	{ B_cid_base_c183_full_n sc_in sc_logic 1 signal 14 } 
	{ B_cid_base_c183_write sc_out sc_logic 1 signal 14 } 
	{ B_cid_base_c184_din sc_out sc_lv 32 signal 15 } 
	{ B_cid_base_c184_num_data_valid sc_in sc_lv 4 signal 15 } 
	{ B_cid_base_c184_fifo_cap sc_in sc_lv 4 signal 15 } 
	{ B_cid_base_c184_full_n sc_in sc_logic 1 signal 15 } 
	{ B_cid_base_c184_write sc_out sc_logic 1 signal 15 } 
	{ B_cid_base_c185_din sc_out sc_lv 32 signal 16 } 
	{ B_cid_base_c185_num_data_valid sc_in sc_lv 4 signal 16 } 
	{ B_cid_base_c185_fifo_cap sc_in sc_lv 4 signal 16 } 
	{ B_cid_base_c185_full_n sc_in sc_logic 1 signal 16 } 
	{ B_cid_base_c185_write sc_out sc_logic 1 signal 16 } 
	{ B_cid_base_c186_din sc_out sc_lv 32 signal 17 } 
	{ B_cid_base_c186_num_data_valid sc_in sc_lv 4 signal 17 } 
	{ B_cid_base_c186_fifo_cap sc_in sc_lv 4 signal 17 } 
	{ B_cid_base_c186_full_n sc_in sc_logic 1 signal 17 } 
	{ B_cid_base_c186_write sc_out sc_logic 1 signal 17 } 
	{ B_cid_base_c187_din sc_out sc_lv 32 signal 18 } 
	{ B_cid_base_c187_num_data_valid sc_in sc_lv 4 signal 18 } 
	{ B_cid_base_c187_fifo_cap sc_in sc_lv 4 signal 18 } 
	{ B_cid_base_c187_full_n sc_in sc_logic 1 signal 18 } 
	{ B_cid_base_c187_write sc_out sc_logic 1 signal 18 } 
	{ B_cid_base_c188_din sc_out sc_lv 32 signal 19 } 
	{ B_cid_base_c188_num_data_valid sc_in sc_lv 4 signal 19 } 
	{ B_cid_base_c188_fifo_cap sc_in sc_lv 4 signal 19 } 
	{ B_cid_base_c188_full_n sc_in sc_logic 1 signal 19 } 
	{ B_cid_base_c188_write sc_out sc_logic 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "B_rcsr_base", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base", "role": "default" }} , 
 	{ "name": "B_rcsr_base_c170_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base_c170", "role": "din" }} , 
 	{ "name": "B_rcsr_base_c170_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_rcsr_base_c170", "role": "num_data_valid" }} , 
 	{ "name": "B_rcsr_base_c170_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_rcsr_base_c170", "role": "fifo_cap" }} , 
 	{ "name": "B_rcsr_base_c170_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c170", "role": "full_n" }} , 
 	{ "name": "B_rcsr_base_c170_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c170", "role": "write" }} , 
 	{ "name": "B_val_base", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base", "role": "default" }} , 
 	{ "name": "B_val_base_c172_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c172", "role": "din" }} , 
 	{ "name": "B_val_base_c172_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c172", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c172_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c172", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c172_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c172", "role": "full_n" }} , 
 	{ "name": "B_val_base_c172_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c172", "role": "write" }} , 
 	{ "name": "B_val_base_c173_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c173", "role": "din" }} , 
 	{ "name": "B_val_base_c173_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c173", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c173_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c173", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c173_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c173", "role": "full_n" }} , 
 	{ "name": "B_val_base_c173_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c173", "role": "write" }} , 
 	{ "name": "B_val_base_c174_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c174", "role": "din" }} , 
 	{ "name": "B_val_base_c174_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c174", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c174_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c174", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c174_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c174", "role": "full_n" }} , 
 	{ "name": "B_val_base_c174_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c174", "role": "write" }} , 
 	{ "name": "B_val_base_c175_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c175", "role": "din" }} , 
 	{ "name": "B_val_base_c175_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c175", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c175_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c175", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c175_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c175", "role": "full_n" }} , 
 	{ "name": "B_val_base_c175_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c175", "role": "write" }} , 
 	{ "name": "B_val_base_c176_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c176", "role": "din" }} , 
 	{ "name": "B_val_base_c176_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c176", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c176_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c176", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c176_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c176", "role": "full_n" }} , 
 	{ "name": "B_val_base_c176_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c176", "role": "write" }} , 
 	{ "name": "B_val_base_c177_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c177", "role": "din" }} , 
 	{ "name": "B_val_base_c177_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c177", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c177_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c177", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c177_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c177", "role": "full_n" }} , 
 	{ "name": "B_val_base_c177_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c177", "role": "write" }} , 
 	{ "name": "B_val_base_c178_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c178", "role": "din" }} , 
 	{ "name": "B_val_base_c178_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c178", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c178_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c178", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c178_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c178", "role": "full_n" }} , 
 	{ "name": "B_val_base_c178_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c178", "role": "write" }} , 
 	{ "name": "B_val_base_c179_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c179", "role": "din" }} , 
 	{ "name": "B_val_base_c179_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c179", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c179_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c179", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c179_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c179", "role": "full_n" }} , 
 	{ "name": "B_val_base_c179_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c179", "role": "write" }} , 
 	{ "name": "B_cid_base", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base", "role": "default" }} , 
 	{ "name": "B_cid_base_c181_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c181", "role": "din" }} , 
 	{ "name": "B_cid_base_c181_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c181", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c181_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c181", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c181_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c181", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c181_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c181", "role": "write" }} , 
 	{ "name": "B_cid_base_c182_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c182", "role": "din" }} , 
 	{ "name": "B_cid_base_c182_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c182", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c182_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c182", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c182_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c182", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c182_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c182", "role": "write" }} , 
 	{ "name": "B_cid_base_c183_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c183", "role": "din" }} , 
 	{ "name": "B_cid_base_c183_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c183", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c183_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c183", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c183_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c183", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c183_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c183", "role": "write" }} , 
 	{ "name": "B_cid_base_c184_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c184", "role": "din" }} , 
 	{ "name": "B_cid_base_c184_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c184", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c184_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c184", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c184_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c184", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c184_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c184", "role": "write" }} , 
 	{ "name": "B_cid_base_c185_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c185", "role": "din" }} , 
 	{ "name": "B_cid_base_c185_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c185", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c185_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c185", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c185_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c185", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c185_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c185", "role": "write" }} , 
 	{ "name": "B_cid_base_c186_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c186", "role": "din" }} , 
 	{ "name": "B_cid_base_c186_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c186", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c186_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c186", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c186_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c186", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c186_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c186", "role": "write" }} , 
 	{ "name": "B_cid_base_c187_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c187", "role": "din" }} , 
 	{ "name": "B_cid_base_c187_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c187", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c187_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c187", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c187_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c187", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c187_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c187", "role": "write" }} , 
 	{ "name": "B_cid_base_c188_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c188", "role": "din" }} , 
 	{ "name": "B_cid_base_c188_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c188", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c188_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c188", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c188_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c188", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c188_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c188", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "B_rcsr_base", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_rcsr_base_c170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_rcsr_base_c170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_val_base_c172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_cid_base_c181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c188_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		B_rcsr_base {Type I LastRead 0 FirstWrite -1}
		B_rcsr_base_c170 {Type O LastRead -1 FirstWrite 0}
		B_val_base {Type I LastRead 0 FirstWrite -1}
		B_val_base_c172 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c173 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c174 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c175 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c176 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c177 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c178 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c179 {Type O LastRead -1 FirstWrite 0}
		B_cid_base {Type I LastRead 0 FirstWrite -1}
		B_cid_base_c181 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c182 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c183 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c184 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c185 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c186 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c187 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c188 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	B_rcsr_base { ap_none {  { B_rcsr_base in_data 0 32 } } }
	B_rcsr_base_c170 { ap_fifo {  { B_rcsr_base_c170_din fifo_port_we 1 32 }  { B_rcsr_base_c170_num_data_valid fifo_status_num_data_valid 0 4 }  { B_rcsr_base_c170_fifo_cap fifo_update 0 4 }  { B_rcsr_base_c170_full_n fifo_status 0 1 }  { B_rcsr_base_c170_write fifo_data 1 1 } } }
	B_val_base { ap_none {  { B_val_base in_data 0 32 } } }
	B_val_base_c172 { ap_fifo {  { B_val_base_c172_din fifo_port_we 1 32 }  { B_val_base_c172_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c172_fifo_cap fifo_update 0 4 }  { B_val_base_c172_full_n fifo_status 0 1 }  { B_val_base_c172_write fifo_data 1 1 } } }
	B_val_base_c173 { ap_fifo {  { B_val_base_c173_din fifo_port_we 1 32 }  { B_val_base_c173_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c173_fifo_cap fifo_update 0 4 }  { B_val_base_c173_full_n fifo_status 0 1 }  { B_val_base_c173_write fifo_data 1 1 } } }
	B_val_base_c174 { ap_fifo {  { B_val_base_c174_din fifo_port_we 1 32 }  { B_val_base_c174_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c174_fifo_cap fifo_update 0 4 }  { B_val_base_c174_full_n fifo_status 0 1 }  { B_val_base_c174_write fifo_data 1 1 } } }
	B_val_base_c175 { ap_fifo {  { B_val_base_c175_din fifo_port_we 1 32 }  { B_val_base_c175_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c175_fifo_cap fifo_update 0 4 }  { B_val_base_c175_full_n fifo_status 0 1 }  { B_val_base_c175_write fifo_data 1 1 } } }
	B_val_base_c176 { ap_fifo {  { B_val_base_c176_din fifo_port_we 1 32 }  { B_val_base_c176_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c176_fifo_cap fifo_update 0 4 }  { B_val_base_c176_full_n fifo_status 0 1 }  { B_val_base_c176_write fifo_data 1 1 } } }
	B_val_base_c177 { ap_fifo {  { B_val_base_c177_din fifo_port_we 1 32 }  { B_val_base_c177_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c177_fifo_cap fifo_update 0 4 }  { B_val_base_c177_full_n fifo_status 0 1 }  { B_val_base_c177_write fifo_data 1 1 } } }
	B_val_base_c178 { ap_fifo {  { B_val_base_c178_din fifo_port_we 1 32 }  { B_val_base_c178_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c178_fifo_cap fifo_update 0 4 }  { B_val_base_c178_full_n fifo_status 0 1 }  { B_val_base_c178_write fifo_data 1 1 } } }
	B_val_base_c179 { ap_fifo {  { B_val_base_c179_din fifo_port_we 1 32 }  { B_val_base_c179_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c179_fifo_cap fifo_update 0 4 }  { B_val_base_c179_full_n fifo_status 0 1 }  { B_val_base_c179_write fifo_data 1 1 } } }
	B_cid_base { ap_none {  { B_cid_base in_data 0 32 } } }
	B_cid_base_c181 { ap_fifo {  { B_cid_base_c181_din fifo_port_we 1 32 }  { B_cid_base_c181_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c181_fifo_cap fifo_update 0 4 }  { B_cid_base_c181_full_n fifo_status 0 1 }  { B_cid_base_c181_write fifo_data 1 1 } } }
	B_cid_base_c182 { ap_fifo {  { B_cid_base_c182_din fifo_port_we 1 32 }  { B_cid_base_c182_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c182_fifo_cap fifo_update 0 4 }  { B_cid_base_c182_full_n fifo_status 0 1 }  { B_cid_base_c182_write fifo_data 1 1 } } }
	B_cid_base_c183 { ap_fifo {  { B_cid_base_c183_din fifo_port_we 1 32 }  { B_cid_base_c183_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c183_fifo_cap fifo_update 0 4 }  { B_cid_base_c183_full_n fifo_status 0 1 }  { B_cid_base_c183_write fifo_data 1 1 } } }
	B_cid_base_c184 { ap_fifo {  { B_cid_base_c184_din fifo_port_we 1 32 }  { B_cid_base_c184_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c184_fifo_cap fifo_update 0 4 }  { B_cid_base_c184_full_n fifo_status 0 1 }  { B_cid_base_c184_write fifo_data 1 1 } } }
	B_cid_base_c185 { ap_fifo {  { B_cid_base_c185_din fifo_port_we 1 32 }  { B_cid_base_c185_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c185_fifo_cap fifo_update 0 4 }  { B_cid_base_c185_full_n fifo_status 0 1 }  { B_cid_base_c185_write fifo_data 1 1 } } }
	B_cid_base_c186 { ap_fifo {  { B_cid_base_c186_din fifo_port_we 1 32 }  { B_cid_base_c186_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c186_fifo_cap fifo_update 0 4 }  { B_cid_base_c186_full_n fifo_status 0 1 }  { B_cid_base_c186_write fifo_data 1 1 } } }
	B_cid_base_c187 { ap_fifo {  { B_cid_base_c187_din fifo_port_we 1 32 }  { B_cid_base_c187_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c187_fifo_cap fifo_update 0 4 }  { B_cid_base_c187_full_n fifo_status 0 1 }  { B_cid_base_c187_write fifo_data 1 1 } } }
	B_cid_base_c188 { ap_fifo {  { B_cid_base_c188_din fifo_port_we 1 32 }  { B_cid_base_c188_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c188_fifo_cap fifo_update 0 4 }  { B_cid_base_c188_full_n fifo_status 0 1 }  { B_cid_base_c188_write fifo_data 1 1 } } }
}
set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ B_rcsr_base int 32 regular  }
	{ B_rcsr_base_c170 int 32 regular {fifo 1}  }
	{ B_val_base int 32 regular  }
	{ B_val_base_c172 int 32 regular {fifo 1}  }
	{ B_val_base_c173 int 32 regular {fifo 1}  }
	{ B_val_base_c174 int 32 regular {fifo 1}  }
	{ B_val_base_c175 int 32 regular {fifo 1}  }
	{ B_val_base_c176 int 32 regular {fifo 1}  }
	{ B_val_base_c177 int 32 regular {fifo 1}  }
	{ B_val_base_c178 int 32 regular {fifo 1}  }
	{ B_val_base_c179 int 32 regular {fifo 1}  }
	{ B_cid_base int 32 regular  }
	{ B_cid_base_c181 int 32 regular {fifo 1}  }
	{ B_cid_base_c182 int 32 regular {fifo 1}  }
	{ B_cid_base_c183 int 32 regular {fifo 1}  }
	{ B_cid_base_c184 int 32 regular {fifo 1}  }
	{ B_cid_base_c185 int 32 regular {fifo 1}  }
	{ B_cid_base_c186 int 32 regular {fifo 1}  }
	{ B_cid_base_c187 int 32 regular {fifo 1}  }
	{ B_cid_base_c188 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "B_rcsr_base", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_rcsr_base_c170", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_val_base_c172", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c173", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c174", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c175", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c176", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c177", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c178", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_val_base_c179", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_cid_base_c181", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c182", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c183", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c184", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c185", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c186", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c187", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_cid_base_c188", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 95
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ B_rcsr_base sc_in sc_lv 32 signal 0 } 
	{ B_rcsr_base_c170_din sc_out sc_lv 32 signal 1 } 
	{ B_rcsr_base_c170_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ B_rcsr_base_c170_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ B_rcsr_base_c170_full_n sc_in sc_logic 1 signal 1 } 
	{ B_rcsr_base_c170_write sc_out sc_logic 1 signal 1 } 
	{ B_val_base sc_in sc_lv 32 signal 2 } 
	{ B_val_base_c172_din sc_out sc_lv 32 signal 3 } 
	{ B_val_base_c172_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ B_val_base_c172_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ B_val_base_c172_full_n sc_in sc_logic 1 signal 3 } 
	{ B_val_base_c172_write sc_out sc_logic 1 signal 3 } 
	{ B_val_base_c173_din sc_out sc_lv 32 signal 4 } 
	{ B_val_base_c173_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ B_val_base_c173_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ B_val_base_c173_full_n sc_in sc_logic 1 signal 4 } 
	{ B_val_base_c173_write sc_out sc_logic 1 signal 4 } 
	{ B_val_base_c174_din sc_out sc_lv 32 signal 5 } 
	{ B_val_base_c174_num_data_valid sc_in sc_lv 4 signal 5 } 
	{ B_val_base_c174_fifo_cap sc_in sc_lv 4 signal 5 } 
	{ B_val_base_c174_full_n sc_in sc_logic 1 signal 5 } 
	{ B_val_base_c174_write sc_out sc_logic 1 signal 5 } 
	{ B_val_base_c175_din sc_out sc_lv 32 signal 6 } 
	{ B_val_base_c175_num_data_valid sc_in sc_lv 4 signal 6 } 
	{ B_val_base_c175_fifo_cap sc_in sc_lv 4 signal 6 } 
	{ B_val_base_c175_full_n sc_in sc_logic 1 signal 6 } 
	{ B_val_base_c175_write sc_out sc_logic 1 signal 6 } 
	{ B_val_base_c176_din sc_out sc_lv 32 signal 7 } 
	{ B_val_base_c176_num_data_valid sc_in sc_lv 4 signal 7 } 
	{ B_val_base_c176_fifo_cap sc_in sc_lv 4 signal 7 } 
	{ B_val_base_c176_full_n sc_in sc_logic 1 signal 7 } 
	{ B_val_base_c176_write sc_out sc_logic 1 signal 7 } 
	{ B_val_base_c177_din sc_out sc_lv 32 signal 8 } 
	{ B_val_base_c177_num_data_valid sc_in sc_lv 4 signal 8 } 
	{ B_val_base_c177_fifo_cap sc_in sc_lv 4 signal 8 } 
	{ B_val_base_c177_full_n sc_in sc_logic 1 signal 8 } 
	{ B_val_base_c177_write sc_out sc_logic 1 signal 8 } 
	{ B_val_base_c178_din sc_out sc_lv 32 signal 9 } 
	{ B_val_base_c178_num_data_valid sc_in sc_lv 4 signal 9 } 
	{ B_val_base_c178_fifo_cap sc_in sc_lv 4 signal 9 } 
	{ B_val_base_c178_full_n sc_in sc_logic 1 signal 9 } 
	{ B_val_base_c178_write sc_out sc_logic 1 signal 9 } 
	{ B_val_base_c179_din sc_out sc_lv 32 signal 10 } 
	{ B_val_base_c179_num_data_valid sc_in sc_lv 4 signal 10 } 
	{ B_val_base_c179_fifo_cap sc_in sc_lv 4 signal 10 } 
	{ B_val_base_c179_full_n sc_in sc_logic 1 signal 10 } 
	{ B_val_base_c179_write sc_out sc_logic 1 signal 10 } 
	{ B_cid_base sc_in sc_lv 32 signal 11 } 
	{ B_cid_base_c181_din sc_out sc_lv 32 signal 12 } 
	{ B_cid_base_c181_num_data_valid sc_in sc_lv 4 signal 12 } 
	{ B_cid_base_c181_fifo_cap sc_in sc_lv 4 signal 12 } 
	{ B_cid_base_c181_full_n sc_in sc_logic 1 signal 12 } 
	{ B_cid_base_c181_write sc_out sc_logic 1 signal 12 } 
	{ B_cid_base_c182_din sc_out sc_lv 32 signal 13 } 
	{ B_cid_base_c182_num_data_valid sc_in sc_lv 4 signal 13 } 
	{ B_cid_base_c182_fifo_cap sc_in sc_lv 4 signal 13 } 
	{ B_cid_base_c182_full_n sc_in sc_logic 1 signal 13 } 
	{ B_cid_base_c182_write sc_out sc_logic 1 signal 13 } 
	{ B_cid_base_c183_din sc_out sc_lv 32 signal 14 } 
	{ B_cid_base_c183_num_data_valid sc_in sc_lv 4 signal 14 } 
	{ B_cid_base_c183_fifo_cap sc_in sc_lv 4 signal 14 } 
	{ B_cid_base_c183_full_n sc_in sc_logic 1 signal 14 } 
	{ B_cid_base_c183_write sc_out sc_logic 1 signal 14 } 
	{ B_cid_base_c184_din sc_out sc_lv 32 signal 15 } 
	{ B_cid_base_c184_num_data_valid sc_in sc_lv 4 signal 15 } 
	{ B_cid_base_c184_fifo_cap sc_in sc_lv 4 signal 15 } 
	{ B_cid_base_c184_full_n sc_in sc_logic 1 signal 15 } 
	{ B_cid_base_c184_write sc_out sc_logic 1 signal 15 } 
	{ B_cid_base_c185_din sc_out sc_lv 32 signal 16 } 
	{ B_cid_base_c185_num_data_valid sc_in sc_lv 4 signal 16 } 
	{ B_cid_base_c185_fifo_cap sc_in sc_lv 4 signal 16 } 
	{ B_cid_base_c185_full_n sc_in sc_logic 1 signal 16 } 
	{ B_cid_base_c185_write sc_out sc_logic 1 signal 16 } 
	{ B_cid_base_c186_din sc_out sc_lv 32 signal 17 } 
	{ B_cid_base_c186_num_data_valid sc_in sc_lv 4 signal 17 } 
	{ B_cid_base_c186_fifo_cap sc_in sc_lv 4 signal 17 } 
	{ B_cid_base_c186_full_n sc_in sc_logic 1 signal 17 } 
	{ B_cid_base_c186_write sc_out sc_logic 1 signal 17 } 
	{ B_cid_base_c187_din sc_out sc_lv 32 signal 18 } 
	{ B_cid_base_c187_num_data_valid sc_in sc_lv 4 signal 18 } 
	{ B_cid_base_c187_fifo_cap sc_in sc_lv 4 signal 18 } 
	{ B_cid_base_c187_full_n sc_in sc_logic 1 signal 18 } 
	{ B_cid_base_c187_write sc_out sc_logic 1 signal 18 } 
	{ B_cid_base_c188_din sc_out sc_lv 32 signal 19 } 
	{ B_cid_base_c188_num_data_valid sc_in sc_lv 4 signal 19 } 
	{ B_cid_base_c188_fifo_cap sc_in sc_lv 4 signal 19 } 
	{ B_cid_base_c188_full_n sc_in sc_logic 1 signal 19 } 
	{ B_cid_base_c188_write sc_out sc_logic 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "B_rcsr_base", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base", "role": "default" }} , 
 	{ "name": "B_rcsr_base_c170_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base_c170", "role": "din" }} , 
 	{ "name": "B_rcsr_base_c170_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_rcsr_base_c170", "role": "num_data_valid" }} , 
 	{ "name": "B_rcsr_base_c170_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_rcsr_base_c170", "role": "fifo_cap" }} , 
 	{ "name": "B_rcsr_base_c170_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c170", "role": "full_n" }} , 
 	{ "name": "B_rcsr_base_c170_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c170", "role": "write" }} , 
 	{ "name": "B_val_base", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base", "role": "default" }} , 
 	{ "name": "B_val_base_c172_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c172", "role": "din" }} , 
 	{ "name": "B_val_base_c172_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c172", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c172_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c172", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c172_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c172", "role": "full_n" }} , 
 	{ "name": "B_val_base_c172_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c172", "role": "write" }} , 
 	{ "name": "B_val_base_c173_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c173", "role": "din" }} , 
 	{ "name": "B_val_base_c173_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c173", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c173_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c173", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c173_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c173", "role": "full_n" }} , 
 	{ "name": "B_val_base_c173_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c173", "role": "write" }} , 
 	{ "name": "B_val_base_c174_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c174", "role": "din" }} , 
 	{ "name": "B_val_base_c174_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c174", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c174_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c174", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c174_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c174", "role": "full_n" }} , 
 	{ "name": "B_val_base_c174_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c174", "role": "write" }} , 
 	{ "name": "B_val_base_c175_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c175", "role": "din" }} , 
 	{ "name": "B_val_base_c175_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c175", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c175_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c175", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c175_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c175", "role": "full_n" }} , 
 	{ "name": "B_val_base_c175_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c175", "role": "write" }} , 
 	{ "name": "B_val_base_c176_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c176", "role": "din" }} , 
 	{ "name": "B_val_base_c176_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c176", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c176_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c176", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c176_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c176", "role": "full_n" }} , 
 	{ "name": "B_val_base_c176_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c176", "role": "write" }} , 
 	{ "name": "B_val_base_c177_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c177", "role": "din" }} , 
 	{ "name": "B_val_base_c177_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c177", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c177_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c177", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c177_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c177", "role": "full_n" }} , 
 	{ "name": "B_val_base_c177_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c177", "role": "write" }} , 
 	{ "name": "B_val_base_c178_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c178", "role": "din" }} , 
 	{ "name": "B_val_base_c178_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c178", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c178_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c178", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c178_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c178", "role": "full_n" }} , 
 	{ "name": "B_val_base_c178_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c178", "role": "write" }} , 
 	{ "name": "B_val_base_c179_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_val_base_c179", "role": "din" }} , 
 	{ "name": "B_val_base_c179_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c179", "role": "num_data_valid" }} , 
 	{ "name": "B_val_base_c179_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_val_base_c179", "role": "fifo_cap" }} , 
 	{ "name": "B_val_base_c179_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c179", "role": "full_n" }} , 
 	{ "name": "B_val_base_c179_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_val_base_c179", "role": "write" }} , 
 	{ "name": "B_cid_base", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base", "role": "default" }} , 
 	{ "name": "B_cid_base_c181_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c181", "role": "din" }} , 
 	{ "name": "B_cid_base_c181_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c181", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c181_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c181", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c181_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c181", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c181_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c181", "role": "write" }} , 
 	{ "name": "B_cid_base_c182_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c182", "role": "din" }} , 
 	{ "name": "B_cid_base_c182_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c182", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c182_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c182", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c182_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c182", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c182_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c182", "role": "write" }} , 
 	{ "name": "B_cid_base_c183_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c183", "role": "din" }} , 
 	{ "name": "B_cid_base_c183_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c183", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c183_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c183", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c183_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c183", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c183_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c183", "role": "write" }} , 
 	{ "name": "B_cid_base_c184_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c184", "role": "din" }} , 
 	{ "name": "B_cid_base_c184_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c184", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c184_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c184", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c184_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c184", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c184_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c184", "role": "write" }} , 
 	{ "name": "B_cid_base_c185_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c185", "role": "din" }} , 
 	{ "name": "B_cid_base_c185_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c185", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c185_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c185", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c185_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c185", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c185_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c185", "role": "write" }} , 
 	{ "name": "B_cid_base_c186_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c186", "role": "din" }} , 
 	{ "name": "B_cid_base_c186_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c186", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c186_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c186", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c186_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c186", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c186_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c186", "role": "write" }} , 
 	{ "name": "B_cid_base_c187_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c187", "role": "din" }} , 
 	{ "name": "B_cid_base_c187_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c187", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c187_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c187", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c187_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c187", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c187_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c187", "role": "write" }} , 
 	{ "name": "B_cid_base_c188_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_cid_base_c188", "role": "din" }} , 
 	{ "name": "B_cid_base_c188_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c188", "role": "num_data_valid" }} , 
 	{ "name": "B_cid_base_c188_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_cid_base_c188", "role": "fifo_cap" }} , 
 	{ "name": "B_cid_base_c188_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c188", "role": "full_n" }} , 
 	{ "name": "B_cid_base_c188_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_cid_base_c188", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "B_rcsr_base", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_rcsr_base_c170", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_rcsr_base_c170_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_val_base_c172", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c172_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c173", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c173_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c174", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c174_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c175", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c175_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c176", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c176_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c177", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c177_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c178", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c178_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_val_base_c179", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_val_base_c179_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_cid_base_c181", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c181_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c182", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c182_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c183", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c183_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c184", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c184_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c185", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c185_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c186", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c186_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c187", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c187_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_cid_base_c188", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_cid_base_c188_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		B_rcsr_base {Type I LastRead 0 FirstWrite -1}
		B_rcsr_base_c170 {Type O LastRead -1 FirstWrite 0}
		B_val_base {Type I LastRead 0 FirstWrite -1}
		B_val_base_c172 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c173 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c174 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c175 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c176 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c177 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c178 {Type O LastRead -1 FirstWrite 0}
		B_val_base_c179 {Type O LastRead -1 FirstWrite 0}
		B_cid_base {Type I LastRead 0 FirstWrite -1}
		B_cid_base_c181 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c182 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c183 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c184 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c185 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c186 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c187 {Type O LastRead -1 FirstWrite 0}
		B_cid_base_c188 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	B_rcsr_base { ap_none {  { B_rcsr_base in_data 0 32 } } }
	B_rcsr_base_c170 { ap_fifo {  { B_rcsr_base_c170_din fifo_port_we 1 32 }  { B_rcsr_base_c170_num_data_valid fifo_status_num_data_valid 0 4 }  { B_rcsr_base_c170_fifo_cap fifo_update 0 4 }  { B_rcsr_base_c170_full_n fifo_status 0 1 }  { B_rcsr_base_c170_write fifo_data 1 1 } } }
	B_val_base { ap_none {  { B_val_base in_data 0 32 } } }
	B_val_base_c172 { ap_fifo {  { B_val_base_c172_din fifo_port_we 1 32 }  { B_val_base_c172_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c172_fifo_cap fifo_update 0 4 }  { B_val_base_c172_full_n fifo_status 0 1 }  { B_val_base_c172_write fifo_data 1 1 } } }
	B_val_base_c173 { ap_fifo {  { B_val_base_c173_din fifo_port_we 1 32 }  { B_val_base_c173_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c173_fifo_cap fifo_update 0 4 }  { B_val_base_c173_full_n fifo_status 0 1 }  { B_val_base_c173_write fifo_data 1 1 } } }
	B_val_base_c174 { ap_fifo {  { B_val_base_c174_din fifo_port_we 1 32 }  { B_val_base_c174_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c174_fifo_cap fifo_update 0 4 }  { B_val_base_c174_full_n fifo_status 0 1 }  { B_val_base_c174_write fifo_data 1 1 } } }
	B_val_base_c175 { ap_fifo {  { B_val_base_c175_din fifo_port_we 1 32 }  { B_val_base_c175_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c175_fifo_cap fifo_update 0 4 }  { B_val_base_c175_full_n fifo_status 0 1 }  { B_val_base_c175_write fifo_data 1 1 } } }
	B_val_base_c176 { ap_fifo {  { B_val_base_c176_din fifo_port_we 1 32 }  { B_val_base_c176_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c176_fifo_cap fifo_update 0 4 }  { B_val_base_c176_full_n fifo_status 0 1 }  { B_val_base_c176_write fifo_data 1 1 } } }
	B_val_base_c177 { ap_fifo {  { B_val_base_c177_din fifo_port_we 1 32 }  { B_val_base_c177_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c177_fifo_cap fifo_update 0 4 }  { B_val_base_c177_full_n fifo_status 0 1 }  { B_val_base_c177_write fifo_data 1 1 } } }
	B_val_base_c178 { ap_fifo {  { B_val_base_c178_din fifo_port_we 1 32 }  { B_val_base_c178_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c178_fifo_cap fifo_update 0 4 }  { B_val_base_c178_full_n fifo_status 0 1 }  { B_val_base_c178_write fifo_data 1 1 } } }
	B_val_base_c179 { ap_fifo {  { B_val_base_c179_din fifo_port_we 1 32 }  { B_val_base_c179_num_data_valid fifo_status_num_data_valid 0 4 }  { B_val_base_c179_fifo_cap fifo_update 0 4 }  { B_val_base_c179_full_n fifo_status 0 1 }  { B_val_base_c179_write fifo_data 1 1 } } }
	B_cid_base { ap_none {  { B_cid_base in_data 0 32 } } }
	B_cid_base_c181 { ap_fifo {  { B_cid_base_c181_din fifo_port_we 1 32 }  { B_cid_base_c181_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c181_fifo_cap fifo_update 0 4 }  { B_cid_base_c181_full_n fifo_status 0 1 }  { B_cid_base_c181_write fifo_data 1 1 } } }
	B_cid_base_c182 { ap_fifo {  { B_cid_base_c182_din fifo_port_we 1 32 }  { B_cid_base_c182_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c182_fifo_cap fifo_update 0 4 }  { B_cid_base_c182_full_n fifo_status 0 1 }  { B_cid_base_c182_write fifo_data 1 1 } } }
	B_cid_base_c183 { ap_fifo {  { B_cid_base_c183_din fifo_port_we 1 32 }  { B_cid_base_c183_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c183_fifo_cap fifo_update 0 4 }  { B_cid_base_c183_full_n fifo_status 0 1 }  { B_cid_base_c183_write fifo_data 1 1 } } }
	B_cid_base_c184 { ap_fifo {  { B_cid_base_c184_din fifo_port_we 1 32 }  { B_cid_base_c184_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c184_fifo_cap fifo_update 0 4 }  { B_cid_base_c184_full_n fifo_status 0 1 }  { B_cid_base_c184_write fifo_data 1 1 } } }
	B_cid_base_c185 { ap_fifo {  { B_cid_base_c185_din fifo_port_we 1 32 }  { B_cid_base_c185_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c185_fifo_cap fifo_update 0 4 }  { B_cid_base_c185_full_n fifo_status 0 1 }  { B_cid_base_c185_write fifo_data 1 1 } } }
	B_cid_base_c186 { ap_fifo {  { B_cid_base_c186_din fifo_port_we 1 32 }  { B_cid_base_c186_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c186_fifo_cap fifo_update 0 4 }  { B_cid_base_c186_full_n fifo_status 0 1 }  { B_cid_base_c186_write fifo_data 1 1 } } }
	B_cid_base_c187 { ap_fifo {  { B_cid_base_c187_din fifo_port_we 1 32 }  { B_cid_base_c187_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c187_fifo_cap fifo_update 0 4 }  { B_cid_base_c187_full_n fifo_status 0 1 }  { B_cid_base_c187_write fifo_data 1 1 } } }
	B_cid_base_c188 { ap_fifo {  { B_cid_base_c188_din fifo_port_we 1 32 }  { B_cid_base_c188_num_data_valid fifo_status_num_data_valid 0 4 }  { B_cid_base_c188_fifo_cap fifo_update 0 4 }  { B_cid_base_c188_full_n fifo_status 0 1 }  { B_cid_base_c188_write fifo_data 1 1 } } }
}
