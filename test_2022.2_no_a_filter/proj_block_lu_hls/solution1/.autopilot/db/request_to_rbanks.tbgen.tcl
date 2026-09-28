set moduleName request_to_rbanks
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
set C_modelName {request_to_rbanks}
set C_modelType { void 0 }
set C_modelArgList {
	{ rrequestf int 230 regular {fifo 0 volatile }  }
	{ base_addr_rcsr int 32 regular {fifo 0}  }
	{ rcache_re_bank1 int 230 regular {fifo 1 volatile }  }
	{ rcache_re_bank2 int 230 regular {fifo 1 volatile }  }
	{ rcache_re_bank3 int 230 regular {fifo 1 volatile }  }
	{ rcache_re_bank4 int 230 regular {fifo 1 volatile }  }
	{ B_rcsr_base_c int 32 regular {fifo 1}  }
	{ B_rcsr_base_c167 int 32 regular {fifo 1}  }
	{ B_rcsr_base_c168 int 32 regular {fifo 1}  }
	{ B_rcsr_base_c169 int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rrequestf", "interface" : "fifo", "bitwidth" : 230, "direction" : "READONLY"} , 
 	{ "Name" : "base_addr_rcsr", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rcache_re_bank1", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank2", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank3", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rcache_re_bank4", "interface" : "fifo", "bitwidth" : 230, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rcsr_base_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rcsr_base_c167", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rcsr_base_c168", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rcsr_base_c169", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rrequestf_dout sc_in sc_lv 230 signal 0 } 
	{ rrequestf_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ rrequestf_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ rrequestf_empty_n sc_in sc_logic 1 signal 0 } 
	{ rrequestf_read sc_out sc_logic 1 signal 0 } 
	{ base_addr_rcsr_dout sc_in sc_lv 32 signal 1 } 
	{ base_addr_rcsr_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ base_addr_rcsr_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ base_addr_rcsr_empty_n sc_in sc_logic 1 signal 1 } 
	{ base_addr_rcsr_read sc_out sc_logic 1 signal 1 } 
	{ rcache_re_bank1_din sc_out sc_lv 230 signal 2 } 
	{ rcache_re_bank1_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ rcache_re_bank1_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ rcache_re_bank1_full_n sc_in sc_logic 1 signal 2 } 
	{ rcache_re_bank1_write sc_out sc_logic 1 signal 2 } 
	{ rcache_re_bank2_din sc_out sc_lv 230 signal 3 } 
	{ rcache_re_bank2_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ rcache_re_bank2_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ rcache_re_bank2_full_n sc_in sc_logic 1 signal 3 } 
	{ rcache_re_bank2_write sc_out sc_logic 1 signal 3 } 
	{ rcache_re_bank3_din sc_out sc_lv 230 signal 4 } 
	{ rcache_re_bank3_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ rcache_re_bank3_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ rcache_re_bank3_full_n sc_in sc_logic 1 signal 4 } 
	{ rcache_re_bank3_write sc_out sc_logic 1 signal 4 } 
	{ rcache_re_bank4_din sc_out sc_lv 230 signal 5 } 
	{ rcache_re_bank4_num_data_valid sc_in sc_lv 4 signal 5 } 
	{ rcache_re_bank4_fifo_cap sc_in sc_lv 4 signal 5 } 
	{ rcache_re_bank4_full_n sc_in sc_logic 1 signal 5 } 
	{ rcache_re_bank4_write sc_out sc_logic 1 signal 5 } 
	{ B_rcsr_base_c_din sc_out sc_lv 32 signal 6 } 
	{ B_rcsr_base_c_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ B_rcsr_base_c_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ B_rcsr_base_c_full_n sc_in sc_logic 1 signal 6 } 
	{ B_rcsr_base_c_write sc_out sc_logic 1 signal 6 } 
	{ B_rcsr_base_c167_din sc_out sc_lv 32 signal 7 } 
	{ B_rcsr_base_c167_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ B_rcsr_base_c167_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ B_rcsr_base_c167_full_n sc_in sc_logic 1 signal 7 } 
	{ B_rcsr_base_c167_write sc_out sc_logic 1 signal 7 } 
	{ B_rcsr_base_c168_din sc_out sc_lv 32 signal 8 } 
	{ B_rcsr_base_c168_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ B_rcsr_base_c168_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ B_rcsr_base_c168_full_n sc_in sc_logic 1 signal 8 } 
	{ B_rcsr_base_c168_write sc_out sc_logic 1 signal 8 } 
	{ B_rcsr_base_c169_din sc_out sc_lv 32 signal 9 } 
	{ B_rcsr_base_c169_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ B_rcsr_base_c169_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ B_rcsr_base_c169_full_n sc_in sc_logic 1 signal 9 } 
	{ B_rcsr_base_c169_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rrequestf_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rrequestf", "role": "dout" }} , 
 	{ "name": "rrequestf_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequestf", "role": "num_data_valid" }} , 
 	{ "name": "rrequestf_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rrequestf", "role": "fifo_cap" }} , 
 	{ "name": "rrequestf_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequestf", "role": "empty_n" }} , 
 	{ "name": "rrequestf_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequestf", "role": "read" }} , 
 	{ "name": "base_addr_rcsr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "dout" }} , 
 	{ "name": "base_addr_rcsr_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "num_data_valid" }} , 
 	{ "name": "base_addr_rcsr_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "fifo_cap" }} , 
 	{ "name": "base_addr_rcsr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "empty_n" }} , 
 	{ "name": "base_addr_rcsr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "base_addr_rcsr", "role": "read" }} , 
 	{ "name": "rcache_re_bank1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "din" }} , 
 	{ "name": "rcache_re_bank1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank1", "role": "write" }} , 
 	{ "name": "rcache_re_bank2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_re_bank2", "role": "din" }} , 
 	{ "name": "rcache_re_bank2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank2", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank2", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank2", "role": "write" }} , 
 	{ "name": "rcache_re_bank3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "din" }} , 
 	{ "name": "rcache_re_bank3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank3", "role": "write" }} , 
 	{ "name": "rcache_re_bank4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":230, "type": "signal", "bundle":{"name": "rcache_re_bank4", "role": "din" }} , 
 	{ "name": "rcache_re_bank4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank4", "role": "num_data_valid" }} , 
 	{ "name": "rcache_re_bank4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "rcache_re_bank4", "role": "fifo_cap" }} , 
 	{ "name": "rcache_re_bank4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank4", "role": "full_n" }} , 
 	{ "name": "rcache_re_bank4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_re_bank4", "role": "write" }} , 
 	{ "name": "B_rcsr_base_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base_c", "role": "din" }} , 
 	{ "name": "B_rcsr_base_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_rcsr_base_c", "role": "num_data_valid" }} , 
 	{ "name": "B_rcsr_base_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_rcsr_base_c", "role": "fifo_cap" }} , 
 	{ "name": "B_rcsr_base_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c", "role": "full_n" }} , 
 	{ "name": "B_rcsr_base_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c", "role": "write" }} , 
 	{ "name": "B_rcsr_base_c167_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base_c167", "role": "din" }} , 
 	{ "name": "B_rcsr_base_c167_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_rcsr_base_c167", "role": "num_data_valid" }} , 
 	{ "name": "B_rcsr_base_c167_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_rcsr_base_c167", "role": "fifo_cap" }} , 
 	{ "name": "B_rcsr_base_c167_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c167", "role": "full_n" }} , 
 	{ "name": "B_rcsr_base_c167_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c167", "role": "write" }} , 
 	{ "name": "B_rcsr_base_c168_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base_c168", "role": "din" }} , 
 	{ "name": "B_rcsr_base_c168_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_rcsr_base_c168", "role": "num_data_valid" }} , 
 	{ "name": "B_rcsr_base_c168_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_rcsr_base_c168", "role": "fifo_cap" }} , 
 	{ "name": "B_rcsr_base_c168_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c168", "role": "full_n" }} , 
 	{ "name": "B_rcsr_base_c168_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c168", "role": "write" }} , 
 	{ "name": "B_rcsr_base_c169_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rcsr_base_c169", "role": "din" }} , 
 	{ "name": "B_rcsr_base_c169_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_rcsr_base_c169", "role": "num_data_valid" }} , 
 	{ "name": "B_rcsr_base_c169_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_rcsr_base_c169", "role": "fifo_cap" }} , 
 	{ "name": "B_rcsr_base_c169_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c169", "role": "full_n" }} , 
 	{ "name": "B_rcsr_base_c169_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rcsr_base_c169", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "request_to_rbanks",
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
			{"Name" : "rrequestf", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_to_rbanks_Pipeline_VITIS_LOOP_266_1_fu_162", "Port" : "rrequestf", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "base_addr_rcsr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "base_addr_rcsr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_re_bank1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_to_rbanks_Pipeline_VITIS_LOOP_266_1_fu_162", "Port" : "rcache_re_bank1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rcache_re_bank2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_to_rbanks_Pipeline_VITIS_LOOP_266_1_fu_162", "Port" : "rcache_re_bank2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rcache_re_bank3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_to_rbanks_Pipeline_VITIS_LOOP_266_1_fu_162", "Port" : "rcache_re_bank3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rcache_re_bank4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_request_to_rbanks_Pipeline_VITIS_LOOP_266_1_fu_162", "Port" : "rcache_re_bank4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "B_rcsr_base_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_rcsr_base_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_rcsr_base_c167", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_rcsr_base_c167_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_rcsr_base_c168", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_rcsr_base_c168_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_rcsr_base_c169", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "B_rcsr_base_c169_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_request_to_rbanks_Pipeline_VITIS_LOOP_266_1_fu_162", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "request_to_rbanks_Pipeline_VITIS_LOOP_266_1",
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
			{"Name" : "rrequestf", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rrequestf_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_re_bank1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "base_addr_rcsr_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "rcache_re_bank2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_re_bank3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rcache_re_bank4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rcache_re_bank4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "temp_req_data_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_req_Acid1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_req_Acid_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_req_type_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "temp_req_dest_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_266_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_request_to_rbanks_Pipeline_VITIS_LOOP_266_1_fu_162.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	request_to_rbanks {
		rrequestf {Type I LastRead 0 FirstWrite -1}
		base_addr_rcsr {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank1 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4 {Type O LastRead -1 FirstWrite 1}
		B_rcsr_base_c {Type O LastRead -1 FirstWrite 0}
		B_rcsr_base_c167 {Type O LastRead -1 FirstWrite 0}
		B_rcsr_base_c168 {Type O LastRead -1 FirstWrite 0}
		B_rcsr_base_c169 {Type O LastRead -1 FirstWrite 0}}
	request_to_rbanks_Pipeline_VITIS_LOOP_266_1 {
		rrequestf {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank1 {Type O LastRead -1 FirstWrite 1}
		base_addr_rcsr_cast {Type I LastRead 0 FirstWrite -1}
		rcache_re_bank2 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank3 {Type O LastRead -1 FirstWrite 1}
		rcache_re_bank4 {Type O LastRead -1 FirstWrite 1}
		temp_req_data_V_out {Type O LastRead -1 FirstWrite 1}
		temp_req_Acid1_out {Type O LastRead -1 FirstWrite 1}
		temp_req_Acid_out {Type O LastRead -1 FirstWrite 1}
		temp_req_type_V_out {Type O LastRead -1 FirstWrite 1}
		temp_req_dest_V_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rrequestf { ap_fifo {  { rrequestf_dout fifo_port_we 0 230 }  { rrequestf_num_data_valid fifo_status_num_data_valid 0 3 }  { rrequestf_fifo_cap fifo_update 0 3 }  { rrequestf_empty_n fifo_status 0 1 }  { rrequestf_read fifo_data 1 1 } } }
	base_addr_rcsr { ap_fifo {  { base_addr_rcsr_dout fifo_port_we 0 32 }  { base_addr_rcsr_num_data_valid fifo_status_num_data_valid 0 4 }  { base_addr_rcsr_fifo_cap fifo_update 0 4 }  { base_addr_rcsr_empty_n fifo_status 0 1 }  { base_addr_rcsr_read fifo_data 1 1 } } }
	rcache_re_bank1 { ap_fifo {  { rcache_re_bank1_din fifo_port_we 1 230 }  { rcache_re_bank1_num_data_valid fifo_status_num_data_valid 0 4 }  { rcache_re_bank1_fifo_cap fifo_update 0 4 }  { rcache_re_bank1_full_n fifo_status 0 1 }  { rcache_re_bank1_write fifo_data 1 1 } } }
	rcache_re_bank2 { ap_fifo {  { rcache_re_bank2_din fifo_port_we 1 230 }  { rcache_re_bank2_num_data_valid fifo_status_num_data_valid 0 4 }  { rcache_re_bank2_fifo_cap fifo_update 0 4 }  { rcache_re_bank2_full_n fifo_status 0 1 }  { rcache_re_bank2_write fifo_data 1 1 } } }
	rcache_re_bank3 { ap_fifo {  { rcache_re_bank3_din fifo_port_we 1 230 }  { rcache_re_bank3_num_data_valid fifo_status_num_data_valid 0 4 }  { rcache_re_bank3_fifo_cap fifo_update 0 4 }  { rcache_re_bank3_full_n fifo_status 0 1 }  { rcache_re_bank3_write fifo_data 1 1 } } }
	rcache_re_bank4 { ap_fifo {  { rcache_re_bank4_din fifo_port_we 1 230 }  { rcache_re_bank4_num_data_valid fifo_status_num_data_valid 0 4 }  { rcache_re_bank4_fifo_cap fifo_update 0 4 }  { rcache_re_bank4_full_n fifo_status 0 1 }  { rcache_re_bank4_write fifo_data 1 1 } } }
	B_rcsr_base_c { ap_fifo {  { B_rcsr_base_c_din fifo_port_we 1 32 }  { B_rcsr_base_c_num_data_valid fifo_status_num_data_valid 0 2 }  { B_rcsr_base_c_fifo_cap fifo_update 0 2 }  { B_rcsr_base_c_full_n fifo_status 0 1 }  { B_rcsr_base_c_write fifo_data 1 1 } } }
	B_rcsr_base_c167 { ap_fifo {  { B_rcsr_base_c167_din fifo_port_we 1 32 }  { B_rcsr_base_c167_num_data_valid fifo_status_num_data_valid 0 2 }  { B_rcsr_base_c167_fifo_cap fifo_update 0 2 }  { B_rcsr_base_c167_full_n fifo_status 0 1 }  { B_rcsr_base_c167_write fifo_data 1 1 } } }
	B_rcsr_base_c168 { ap_fifo {  { B_rcsr_base_c168_din fifo_port_we 1 32 }  { B_rcsr_base_c168_num_data_valid fifo_status_num_data_valid 0 2 }  { B_rcsr_base_c168_fifo_cap fifo_update 0 2 }  { B_rcsr_base_c168_full_n fifo_status 0 1 }  { B_rcsr_base_c168_write fifo_data 1 1 } } }
	B_rcsr_base_c169 { ap_fifo {  { B_rcsr_base_c169_din fifo_port_we 1 32 }  { B_rcsr_base_c169_num_data_valid fifo_status_num_data_valid 0 2 }  { B_rcsr_base_c169_fifo_cap fifo_update 0 2 }  { B_rcsr_base_c169_full_n fifo_status 0 1 }  { B_rcsr_base_c169_write fifo_data 1 1 } } }
}
