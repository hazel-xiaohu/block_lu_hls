set moduleName large_getrf_v4_Pipeline_VITIS_LOOP_107_13
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {large_getrf_v4_Pipeline_VITIS_LOOP_107_13}
set C_modelType { void 0 }
set C_modelArgList {
	{ empty_51 int 64 regular  }
	{ valid int 1 regular  }
	{ valid_1 int 1 regular  }
	{ valid_2 int 1 regular  }
	{ muladds int 64 regular {pointer 1}  }
	{ vs float 32 regular  }
	{ vs_2 float 32 regular  }
	{ vs_4 float 32 regular  }
	{ vs_6 float 32 regular  }
	{ lik float 32 regular  }
	{ js int 32 regular  }
	{ js_2 int 32 regular  }
	{ js_4 int 32 regular  }
	{ js_6 int 32 regular  }
	{ worktag_bank int 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ worktag_bank_1 int 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ worktag_bank_2 int 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ worktag_bank_3 int 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ add_ln52_3 int 64 regular  }
	{ work_bank float 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ work_bank_1 float 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ work_bank_2 float 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ work_bank_3 float 32 regular {array 1024 { 1 0 } 1 1 }  }
	{ empty int 32 regular  }
	{ p_out int 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "empty_51", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "valid_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "valid_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "muladds", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vs", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vs_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vs_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "vs_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lik", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "js", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "js_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "js_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "js_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "worktag_bank", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "worktag_bank_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "worktag_bank_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "worktag_bank_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "add_ln52_3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "work_bank", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "work_bank_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "work_bank_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "work_bank_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 81
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ empty_51 sc_in sc_lv 64 signal 0 } 
	{ valid sc_in sc_lv 1 signal 1 } 
	{ valid_1 sc_in sc_lv 1 signal 2 } 
	{ valid_2 sc_in sc_lv 1 signal 3 } 
	{ muladds sc_out sc_lv 64 signal 4 } 
	{ muladds_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ vs sc_in sc_lv 32 signal 5 } 
	{ vs_2 sc_in sc_lv 32 signal 6 } 
	{ vs_4 sc_in sc_lv 32 signal 7 } 
	{ vs_6 sc_in sc_lv 32 signal 8 } 
	{ lik sc_in sc_lv 32 signal 9 } 
	{ js sc_in sc_lv 32 signal 10 } 
	{ js_2 sc_in sc_lv 32 signal 11 } 
	{ js_4 sc_in sc_lv 32 signal 12 } 
	{ js_6 sc_in sc_lv 32 signal 13 } 
	{ worktag_bank_address0 sc_out sc_lv 10 signal 14 } 
	{ worktag_bank_ce0 sc_out sc_logic 1 signal 14 } 
	{ worktag_bank_q0 sc_in sc_lv 32 signal 14 } 
	{ worktag_bank_address1 sc_out sc_lv 10 signal 14 } 
	{ worktag_bank_ce1 sc_out sc_logic 1 signal 14 } 
	{ worktag_bank_we1 sc_out sc_logic 1 signal 14 } 
	{ worktag_bank_d1 sc_out sc_lv 32 signal 14 } 
	{ worktag_bank_1_address0 sc_out sc_lv 10 signal 15 } 
	{ worktag_bank_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ worktag_bank_1_q0 sc_in sc_lv 32 signal 15 } 
	{ worktag_bank_1_address1 sc_out sc_lv 10 signal 15 } 
	{ worktag_bank_1_ce1 sc_out sc_logic 1 signal 15 } 
	{ worktag_bank_1_we1 sc_out sc_logic 1 signal 15 } 
	{ worktag_bank_1_d1 sc_out sc_lv 32 signal 15 } 
	{ worktag_bank_2_address0 sc_out sc_lv 10 signal 16 } 
	{ worktag_bank_2_ce0 sc_out sc_logic 1 signal 16 } 
	{ worktag_bank_2_q0 sc_in sc_lv 32 signal 16 } 
	{ worktag_bank_2_address1 sc_out sc_lv 10 signal 16 } 
	{ worktag_bank_2_ce1 sc_out sc_logic 1 signal 16 } 
	{ worktag_bank_2_we1 sc_out sc_logic 1 signal 16 } 
	{ worktag_bank_2_d1 sc_out sc_lv 32 signal 16 } 
	{ worktag_bank_3_address0 sc_out sc_lv 10 signal 17 } 
	{ worktag_bank_3_ce0 sc_out sc_logic 1 signal 17 } 
	{ worktag_bank_3_q0 sc_in sc_lv 32 signal 17 } 
	{ worktag_bank_3_address1 sc_out sc_lv 10 signal 17 } 
	{ worktag_bank_3_ce1 sc_out sc_logic 1 signal 17 } 
	{ worktag_bank_3_we1 sc_out sc_logic 1 signal 17 } 
	{ worktag_bank_3_d1 sc_out sc_lv 32 signal 17 } 
	{ add_ln52_3 sc_in sc_lv 64 signal 18 } 
	{ work_bank_address0 sc_out sc_lv 10 signal 19 } 
	{ work_bank_ce0 sc_out sc_logic 1 signal 19 } 
	{ work_bank_q0 sc_in sc_lv 32 signal 19 } 
	{ work_bank_address1 sc_out sc_lv 10 signal 19 } 
	{ work_bank_ce1 sc_out sc_logic 1 signal 19 } 
	{ work_bank_we1 sc_out sc_logic 1 signal 19 } 
	{ work_bank_d1 sc_out sc_lv 32 signal 19 } 
	{ work_bank_1_address0 sc_out sc_lv 10 signal 20 } 
	{ work_bank_1_ce0 sc_out sc_logic 1 signal 20 } 
	{ work_bank_1_q0 sc_in sc_lv 32 signal 20 } 
	{ work_bank_1_address1 sc_out sc_lv 10 signal 20 } 
	{ work_bank_1_ce1 sc_out sc_logic 1 signal 20 } 
	{ work_bank_1_we1 sc_out sc_logic 1 signal 20 } 
	{ work_bank_1_d1 sc_out sc_lv 32 signal 20 } 
	{ work_bank_2_address0 sc_out sc_lv 10 signal 21 } 
	{ work_bank_2_ce0 sc_out sc_logic 1 signal 21 } 
	{ work_bank_2_q0 sc_in sc_lv 32 signal 21 } 
	{ work_bank_2_address1 sc_out sc_lv 10 signal 21 } 
	{ work_bank_2_ce1 sc_out sc_logic 1 signal 21 } 
	{ work_bank_2_we1 sc_out sc_logic 1 signal 21 } 
	{ work_bank_2_d1 sc_out sc_lv 32 signal 21 } 
	{ work_bank_3_address0 sc_out sc_lv 10 signal 22 } 
	{ work_bank_3_ce0 sc_out sc_logic 1 signal 22 } 
	{ work_bank_3_q0 sc_in sc_lv 32 signal 22 } 
	{ work_bank_3_address1 sc_out sc_lv 10 signal 22 } 
	{ work_bank_3_ce1 sc_out sc_logic 1 signal 22 } 
	{ work_bank_3_we1 sc_out sc_logic 1 signal 22 } 
	{ work_bank_3_d1 sc_out sc_lv 32 signal 22 } 
	{ empty sc_in sc_lv 32 signal 23 } 
	{ p_out sc_out sc_lv 64 signal 24 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 24 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "empty_51", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "empty_51", "role": "default" }} , 
 	{ "name": "valid", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "valid", "role": "default" }} , 
 	{ "name": "valid_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "valid_1", "role": "default" }} , 
 	{ "name": "valid_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "valid_2", "role": "default" }} , 
 	{ "name": "muladds", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "muladds", "role": "default" }} , 
 	{ "name": "muladds_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "muladds", "role": "ap_vld" }} , 
 	{ "name": "vs", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vs", "role": "default" }} , 
 	{ "name": "vs_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vs_2", "role": "default" }} , 
 	{ "name": "vs_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vs_4", "role": "default" }} , 
 	{ "name": "vs_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vs_6", "role": "default" }} , 
 	{ "name": "lik", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lik", "role": "default" }} , 
 	{ "name": "js", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "js", "role": "default" }} , 
 	{ "name": "js_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "js_2", "role": "default" }} , 
 	{ "name": "js_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "js_4", "role": "default" }} , 
 	{ "name": "js_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "js_6", "role": "default" }} , 
 	{ "name": "worktag_bank_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank", "role": "address0" }} , 
 	{ "name": "worktag_bank_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank", "role": "ce0" }} , 
 	{ "name": "worktag_bank_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank", "role": "q0" }} , 
 	{ "name": "worktag_bank_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank", "role": "address1" }} , 
 	{ "name": "worktag_bank_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank", "role": "ce1" }} , 
 	{ "name": "worktag_bank_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank", "role": "we1" }} , 
 	{ "name": "worktag_bank_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank", "role": "d1" }} , 
 	{ "name": "worktag_bank_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "address0" }} , 
 	{ "name": "worktag_bank_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "ce0" }} , 
 	{ "name": "worktag_bank_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "q0" }} , 
 	{ "name": "worktag_bank_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "address1" }} , 
 	{ "name": "worktag_bank_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "ce1" }} , 
 	{ "name": "worktag_bank_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "we1" }} , 
 	{ "name": "worktag_bank_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_1", "role": "d1" }} , 
 	{ "name": "worktag_bank_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "address0" }} , 
 	{ "name": "worktag_bank_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "ce0" }} , 
 	{ "name": "worktag_bank_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "q0" }} , 
 	{ "name": "worktag_bank_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "address1" }} , 
 	{ "name": "worktag_bank_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "ce1" }} , 
 	{ "name": "worktag_bank_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "we1" }} , 
 	{ "name": "worktag_bank_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_2", "role": "d1" }} , 
 	{ "name": "worktag_bank_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "address0" }} , 
 	{ "name": "worktag_bank_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "ce0" }} , 
 	{ "name": "worktag_bank_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "q0" }} , 
 	{ "name": "worktag_bank_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "address1" }} , 
 	{ "name": "worktag_bank_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "ce1" }} , 
 	{ "name": "worktag_bank_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "we1" }} , 
 	{ "name": "worktag_bank_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "worktag_bank_3", "role": "d1" }} , 
 	{ "name": "add_ln52_3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add_ln52_3", "role": "default" }} , 
 	{ "name": "work_bank_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank", "role": "address0" }} , 
 	{ "name": "work_bank_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank", "role": "ce0" }} , 
 	{ "name": "work_bank_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank", "role": "q0" }} , 
 	{ "name": "work_bank_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank", "role": "address1" }} , 
 	{ "name": "work_bank_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank", "role": "ce1" }} , 
 	{ "name": "work_bank_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank", "role": "we1" }} , 
 	{ "name": "work_bank_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank", "role": "d1" }} , 
 	{ "name": "work_bank_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_1", "role": "address0" }} , 
 	{ "name": "work_bank_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_1", "role": "ce0" }} , 
 	{ "name": "work_bank_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_1", "role": "q0" }} , 
 	{ "name": "work_bank_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_1", "role": "address1" }} , 
 	{ "name": "work_bank_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_1", "role": "ce1" }} , 
 	{ "name": "work_bank_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_1", "role": "we1" }} , 
 	{ "name": "work_bank_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_1", "role": "d1" }} , 
 	{ "name": "work_bank_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_2", "role": "address0" }} , 
 	{ "name": "work_bank_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_2", "role": "ce0" }} , 
 	{ "name": "work_bank_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_2", "role": "q0" }} , 
 	{ "name": "work_bank_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_2", "role": "address1" }} , 
 	{ "name": "work_bank_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_2", "role": "ce1" }} , 
 	{ "name": "work_bank_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_2", "role": "we1" }} , 
 	{ "name": "work_bank_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_2", "role": "d1" }} , 
 	{ "name": "work_bank_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_3", "role": "address0" }} , 
 	{ "name": "work_bank_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_3", "role": "ce0" }} , 
 	{ "name": "work_bank_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_3", "role": "q0" }} , 
 	{ "name": "work_bank_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "work_bank_3", "role": "address1" }} , 
 	{ "name": "work_bank_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_3", "role": "ce1" }} , 
 	{ "name": "work_bank_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "work_bank_3", "role": "we1" }} , 
 	{ "name": "work_bank_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "work_bank_3", "role": "d1" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "large_getrf_v4_Pipeline_VITIS_LOOP_107_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "52", "EstimateLatencyMax" : "52",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "valid_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "muladds", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vs", "Type" : "None", "Direction" : "I"},
			{"Name" : "vs_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "vs_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "vs_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "lik", "Type" : "None", "Direction" : "I"},
			{"Name" : "js", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "js_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "worktag_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "worktag_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "add_ln52_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_bank", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "work_bank_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_8_full_dsp_1_U79", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_5_max_dsp_1_U80", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U81", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U82", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U83", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U84", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U85", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	large_getrf_v4_Pipeline_VITIS_LOOP_107_13 {
		empty_51 {Type I LastRead 0 FirstWrite -1}
		valid {Type I LastRead 0 FirstWrite -1}
		valid_1 {Type I LastRead 0 FirstWrite -1}
		valid_2 {Type I LastRead 0 FirstWrite -1}
		muladds {Type O LastRead -1 FirstWrite 1}
		vs {Type I LastRead 0 FirstWrite -1}
		vs_2 {Type I LastRead 0 FirstWrite -1}
		vs_4 {Type I LastRead 0 FirstWrite -1}
		vs_6 {Type I LastRead 0 FirstWrite -1}
		lik {Type I LastRead 0 FirstWrite -1}
		js {Type I LastRead 0 FirstWrite -1}
		js_2 {Type I LastRead 0 FirstWrite -1}
		js_4 {Type I LastRead 0 FirstWrite -1}
		js_6 {Type I LastRead 0 FirstWrite -1}
		worktag_bank {Type IO LastRead 1 FirstWrite 3}
		worktag_bank_1 {Type IO LastRead 1 FirstWrite 3}
		worktag_bank_2 {Type IO LastRead 1 FirstWrite 3}
		worktag_bank_3 {Type IO LastRead 1 FirstWrite 3}
		add_ln52_3 {Type I LastRead 0 FirstWrite -1}
		work_bank {Type IO LastRead 5 FirstWrite 4}
		work_bank_1 {Type IO LastRead 5 FirstWrite 4}
		work_bank_2 {Type IO LastRead 5 FirstWrite 4}
		work_bank_3 {Type IO LastRead 5 FirstWrite 4}
		empty {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "52", "Max" : "52"}
	, {"Name" : "Interval", "Min" : "52", "Max" : "52"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	empty_51 { ap_none {  { empty_51 in_data 0 64 } } }
	valid { ap_none {  { valid in_data 0 1 } } }
	valid_1 { ap_none {  { valid_1 in_data 0 1 } } }
	valid_2 { ap_none {  { valid_2 in_data 0 1 } } }
	muladds { ap_vld {  { muladds out_data 1 64 }  { muladds_ap_vld out_vld 1 1 } } }
	vs { ap_none {  { vs in_data 0 32 } } }
	vs_2 { ap_none {  { vs_2 in_data 0 32 } } }
	vs_4 { ap_none {  { vs_4 in_data 0 32 } } }
	vs_6 { ap_none {  { vs_6 in_data 0 32 } } }
	lik { ap_none {  { lik in_data 0 32 } } }
	js { ap_none {  { js in_data 0 32 } } }
	js_2 { ap_none {  { js_2 in_data 0 32 } } }
	js_4 { ap_none {  { js_4 in_data 0 32 } } }
	js_6 { ap_none {  { js_6 in_data 0 32 } } }
	worktag_bank { ap_memory {  { worktag_bank_address0 mem_address 1 10 }  { worktag_bank_ce0 mem_ce 1 1 }  { worktag_bank_q0 in_data 0 32 }  { worktag_bank_address1 MemPortADDR2 1 10 }  { worktag_bank_ce1 MemPortCE2 1 1 }  { worktag_bank_we1 MemPortWE2 1 1 }  { worktag_bank_d1 MemPortDIN2 1 32 } } }
	worktag_bank_1 { ap_memory {  { worktag_bank_1_address0 mem_address 1 10 }  { worktag_bank_1_ce0 mem_ce 1 1 }  { worktag_bank_1_q0 in_data 0 32 }  { worktag_bank_1_address1 MemPortADDR2 1 10 }  { worktag_bank_1_ce1 MemPortCE2 1 1 }  { worktag_bank_1_we1 MemPortWE2 1 1 }  { worktag_bank_1_d1 MemPortDIN2 1 32 } } }
	worktag_bank_2 { ap_memory {  { worktag_bank_2_address0 mem_address 1 10 }  { worktag_bank_2_ce0 mem_ce 1 1 }  { worktag_bank_2_q0 in_data 0 32 }  { worktag_bank_2_address1 MemPortADDR2 1 10 }  { worktag_bank_2_ce1 MemPortCE2 1 1 }  { worktag_bank_2_we1 MemPortWE2 1 1 }  { worktag_bank_2_d1 MemPortDIN2 1 32 } } }
	worktag_bank_3 { ap_memory {  { worktag_bank_3_address0 mem_address 1 10 }  { worktag_bank_3_ce0 mem_ce 1 1 }  { worktag_bank_3_q0 in_data 0 32 }  { worktag_bank_3_address1 MemPortADDR2 1 10 }  { worktag_bank_3_ce1 MemPortCE2 1 1 }  { worktag_bank_3_we1 MemPortWE2 1 1 }  { worktag_bank_3_d1 MemPortDIN2 1 32 } } }
	add_ln52_3 { ap_none {  { add_ln52_3 in_data 0 64 } } }
	work_bank { ap_memory {  { work_bank_address0 mem_address 1 10 }  { work_bank_ce0 mem_ce 1 1 }  { work_bank_q0 in_data 0 32 }  { work_bank_address1 MemPortADDR2 1 10 }  { work_bank_ce1 MemPortCE2 1 1 }  { work_bank_we1 MemPortWE2 1 1 }  { work_bank_d1 MemPortDIN2 1 32 } } }
	work_bank_1 { ap_memory {  { work_bank_1_address0 mem_address 1 10 }  { work_bank_1_ce0 mem_ce 1 1 }  { work_bank_1_q0 in_data 0 32 }  { work_bank_1_address1 MemPortADDR2 1 10 }  { work_bank_1_ce1 MemPortCE2 1 1 }  { work_bank_1_we1 MemPortWE2 1 1 }  { work_bank_1_d1 MemPortDIN2 1 32 } } }
	work_bank_2 { ap_memory {  { work_bank_2_address0 mem_address 1 10 }  { work_bank_2_ce0 mem_ce 1 1 }  { work_bank_2_q0 in_data 0 32 }  { work_bank_2_address1 MemPortADDR2 1 10 }  { work_bank_2_ce1 MemPortCE2 1 1 }  { work_bank_2_we1 MemPortWE2 1 1 }  { work_bank_2_d1 MemPortDIN2 1 32 } } }
	work_bank_3 { ap_memory {  { work_bank_3_address0 mem_address 1 10 }  { work_bank_3_ce0 mem_ce 1 1 }  { work_bank_3_q0 in_data 0 32 }  { work_bank_3_address1 MemPortADDR2 1 10 }  { work_bank_3_ce1 MemPortCE2 1 1 }  { work_bank_3_we1 MemPortWE2 1 1 }  { work_bank_3_d1 MemPortDIN2 1 32 } } }
	empty { ap_none {  { empty in_data 0 32 } } }
	p_out { ap_vld {  { p_out out_data 1 64 }  { p_out_ap_vld out_vld 1 1 } } }
}
