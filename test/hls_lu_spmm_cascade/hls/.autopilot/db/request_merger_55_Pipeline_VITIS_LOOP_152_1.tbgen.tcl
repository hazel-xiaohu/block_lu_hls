set moduleName request_merger_55_Pipeline_VITIS_LOOP_152_1
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
set C_modelName {request_merger.55_Pipeline_VITIS_LOOP_152_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ c_first int 225 regular {fifo 0 volatile }  }
	{ crequest1 int 225 regular {fifo 1 volatile }  }
	{ c_req int 225 regular {fifo 0 volatile }  }
	{ temp_8_sroa_5_0_out int 8 regular {pointer 1}  }
	{ temp_8_sroa_0_0_out int 8 regular {pointer 1}  }
	{ temp_9_0_out int 128 regular {pointer 1}  }
	{ temp_797_0_out int 32 regular {pointer 1}  }
	{ temp_696_0_out int 32 regular {pointer 1}  }
	{ temp_5_0_out int 3 regular {pointer 1}  }
	{ temp_4_0_out int 5 regular {pointer 1}  }
	{ temp_3_0_out int 3 regular {pointer 1}  }
	{ temp_2_0_out int 3 regular {pointer 1}  }
	{ temp_1_0_out int 2 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "c_first", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "crequest1", "interface" : "fifo", "bitwidth" : 225, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_req", "interface" : "fifo", "bitwidth" : 225, "direction" : "READONLY"} , 
 	{ "Name" : "temp_8_sroa_5_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_8_sroa_0_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_9_0_out", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_797_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_696_0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_5_0_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_4_0_out", "interface" : "wire", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_3_0_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_2_0_out", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "temp_1_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_req_dout sc_in sc_lv 225 signal 2 } 
	{ c_req_empty_n sc_in sc_logic 1 signal 2 } 
	{ c_req_read sc_out sc_logic 1 signal 2 } 
	{ c_req_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ c_req_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ c_first_dout sc_in sc_lv 225 signal 0 } 
	{ c_first_empty_n sc_in sc_logic 1 signal 0 } 
	{ c_first_read sc_out sc_logic 1 signal 0 } 
	{ c_first_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ c_first_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ crequest1_din sc_out sc_lv 225 signal 1 } 
	{ crequest1_full_n sc_in sc_logic 1 signal 1 } 
	{ crequest1_write sc_out sc_logic 1 signal 1 } 
	{ crequest1_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ crequest1_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ temp_8_sroa_5_0_out sc_out sc_lv 8 signal 3 } 
	{ temp_8_sroa_5_0_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ temp_8_sroa_0_0_out sc_out sc_lv 8 signal 4 } 
	{ temp_8_sroa_0_0_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ temp_9_0_out sc_out sc_lv 128 signal 5 } 
	{ temp_9_0_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ temp_797_0_out sc_out sc_lv 32 signal 6 } 
	{ temp_797_0_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ temp_696_0_out sc_out sc_lv 32 signal 7 } 
	{ temp_696_0_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ temp_5_0_out sc_out sc_lv 3 signal 8 } 
	{ temp_5_0_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ temp_4_0_out sc_out sc_lv 5 signal 9 } 
	{ temp_4_0_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ temp_3_0_out sc_out sc_lv 3 signal 10 } 
	{ temp_3_0_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ temp_2_0_out sc_out sc_lv 3 signal 11 } 
	{ temp_2_0_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ temp_1_0_out sc_out sc_lv 2 signal 12 } 
	{ temp_1_0_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_req_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "c_req", "role": "dout" }} , 
 	{ "name": "c_req_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_req", "role": "empty_n" }} , 
 	{ "name": "c_req_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_req", "role": "read" }} , 
 	{ "name": "c_req_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_req", "role": "num_data_valid" }} , 
 	{ "name": "c_req_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_req", "role": "fifo_cap" }} , 
 	{ "name": "c_first_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "c_first", "role": "dout" }} , 
 	{ "name": "c_first_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_first", "role": "empty_n" }} , 
 	{ "name": "c_first_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_first", "role": "read" }} , 
 	{ "name": "c_first_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_first", "role": "num_data_valid" }} , 
 	{ "name": "c_first_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_first", "role": "fifo_cap" }} , 
 	{ "name": "crequest1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":225, "type": "signal", "bundle":{"name": "crequest1", "role": "din" }} , 
 	{ "name": "crequest1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest1", "role": "full_n" }} , 
 	{ "name": "crequest1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crequest1", "role": "write" }} , 
 	{ "name": "crequest1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crequest1", "role": "num_data_valid" }} , 
 	{ "name": "crequest1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crequest1", "role": "fifo_cap" }} , 
 	{ "name": "temp_8_sroa_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_8_sroa_5_0_out", "role": "default" }} , 
 	{ "name": "temp_8_sroa_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_8_sroa_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_8_sroa_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_8_sroa_0_0_out", "role": "default" }} , 
 	{ "name": "temp_8_sroa_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_8_sroa_0_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "temp_9_0_out", "role": "default" }} , 
 	{ "name": "temp_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_797_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_797_0_out", "role": "default" }} , 
 	{ "name": "temp_797_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_797_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_696_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_696_0_out", "role": "default" }} , 
 	{ "name": "temp_696_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_696_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_5_0_out", "role": "default" }} , 
 	{ "name": "temp_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_4_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "temp_4_0_out", "role": "default" }} , 
 	{ "name": "temp_4_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_4_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_3_0_out", "role": "default" }} , 
 	{ "name": "temp_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "temp_2_0_out", "role": "default" }} , 
 	{ "name": "temp_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "temp_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "temp_1_0_out", "role": "default" }} , 
 	{ "name": "temp_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "temp_1_0_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	request_merger_55_Pipeline_VITIS_LOOP_152_1 {
		c_first {Type I LastRead 0 FirstWrite -1}
		crequest1 {Type O LastRead -1 FirstWrite 1}
		c_req {Type I LastRead 0 FirstWrite -1}
		temp_8_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_8_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_9_0_out {Type O LastRead -1 FirstWrite 0}
		temp_797_0_out {Type O LastRead -1 FirstWrite 0}
		temp_696_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_1_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	c_first { ap_fifo {  { c_first_dout fifo_data_out 0 225 }  { c_first_empty_n fifo_status_empty 0 1 }  { c_first_read fifo_data_in 1 1 }  { c_first_num_data_valid fifo_update 0 3 }  { c_first_fifo_cap fifo_data 0 3 } } }
	crequest1 { ap_fifo {  { crequest1_din fifo_data_out 1 225 }  { crequest1_full_n fifo_status_empty 0 1 }  { crequest1_write fifo_data_in 1 1 }  { crequest1_num_data_valid fifo_update 0 3 }  { crequest1_fifo_cap fifo_data 0 3 } } }
	c_req { ap_fifo {  { c_req_dout fifo_data_out 0 225 }  { c_req_empty_n fifo_status_empty 0 1 }  { c_req_read fifo_data_in 1 1 }  { c_req_num_data_valid fifo_update 0 3 }  { c_req_fifo_cap fifo_data 0 3 } } }
	temp_8_sroa_5_0_out { ap_vld {  { temp_8_sroa_5_0_out out_data 1 8 }  { temp_8_sroa_5_0_out_ap_vld out_vld 1 1 } } }
	temp_8_sroa_0_0_out { ap_vld {  { temp_8_sroa_0_0_out out_data 1 8 }  { temp_8_sroa_0_0_out_ap_vld out_vld 1 1 } } }
	temp_9_0_out { ap_vld {  { temp_9_0_out out_data 1 128 }  { temp_9_0_out_ap_vld out_vld 1 1 } } }
	temp_797_0_out { ap_vld {  { temp_797_0_out out_data 1 32 }  { temp_797_0_out_ap_vld out_vld 1 1 } } }
	temp_696_0_out { ap_vld {  { temp_696_0_out out_data 1 32 }  { temp_696_0_out_ap_vld out_vld 1 1 } } }
	temp_5_0_out { ap_vld {  { temp_5_0_out out_data 1 3 }  { temp_5_0_out_ap_vld out_vld 1 1 } } }
	temp_4_0_out { ap_vld {  { temp_4_0_out out_data 1 5 }  { temp_4_0_out_ap_vld out_vld 1 1 } } }
	temp_3_0_out { ap_vld {  { temp_3_0_out out_data 1 3 }  { temp_3_0_out_ap_vld out_vld 1 1 } } }
	temp_2_0_out { ap_vld {  { temp_2_0_out out_data 1 3 }  { temp_2_0_out_ap_vld out_vld 1 1 } } }
	temp_1_0_out { ap_vld {  { temp_1_0_out out_data 1 2 }  { temp_1_0_out_ap_vld out_vld 1 1 } } }
}
