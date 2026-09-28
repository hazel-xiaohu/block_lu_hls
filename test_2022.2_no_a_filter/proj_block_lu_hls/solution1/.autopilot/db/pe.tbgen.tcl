set moduleName pe
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
set C_modelName {pe}
set C_modelType { void 0 }
set C_modelArgList {
	{ cblock1 int 134 regular {fifo 0 volatile }  }
	{ vblock1 int 134 regular {fifo 0 volatile }  }
	{ cblock1d int 134 regular {fifo 0 volatile }  }
	{ vblock1d int 134 regular {fifo 0 volatile }  }
	{ pe1_job int 66 regular {fifo 0 volatile }  }
	{ p_pe1 int 263 regular {fifo 1 volatile }  }
	{ B_rlen_pe19 int 32 regular {fifo 0 volatile }  }
	{ mc_pe1 int 66 regular {fifo 1 volatile }  }
	{ pe1_idle1 int 1 regular {fifo 1 volatile }  }
	{ efinish121 int 1 regular {fifo 0 volatile }  }
	{ workload_counter1 int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cblock1", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock1", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock1d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock1d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "pe1_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "p_pe1", "interface" : "fifo", "bitwidth" : 263, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rlen_pe19", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mc_pe1", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe1_idle1", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "efinish121", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "workload_counter1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cblock1_dout sc_in sc_lv 134 signal 0 } 
	{ cblock1_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ cblock1_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ cblock1_empty_n sc_in sc_logic 1 signal 0 } 
	{ cblock1_read sc_out sc_logic 1 signal 0 } 
	{ vblock1_dout sc_in sc_lv 134 signal 1 } 
	{ vblock1_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ vblock1_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ vblock1_empty_n sc_in sc_logic 1 signal 1 } 
	{ vblock1_read sc_out sc_logic 1 signal 1 } 
	{ cblock1d_dout sc_in sc_lv 134 signal 2 } 
	{ cblock1d_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ cblock1d_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ cblock1d_empty_n sc_in sc_logic 1 signal 2 } 
	{ cblock1d_read sc_out sc_logic 1 signal 2 } 
	{ vblock1d_dout sc_in sc_lv 134 signal 3 } 
	{ vblock1d_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vblock1d_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ vblock1d_empty_n sc_in sc_logic 1 signal 3 } 
	{ vblock1d_read sc_out sc_logic 1 signal 3 } 
	{ pe1_job_dout sc_in sc_lv 66 signal 4 } 
	{ pe1_job_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ pe1_job_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ pe1_job_empty_n sc_in sc_logic 1 signal 4 } 
	{ pe1_job_read sc_out sc_logic 1 signal 4 } 
	{ p_pe1_din sc_out sc_lv 263 signal 5 } 
	{ p_pe1_num_data_valid sc_in sc_lv 11 signal 5 } 
	{ p_pe1_fifo_cap sc_in sc_lv 11 signal 5 } 
	{ p_pe1_full_n sc_in sc_logic 1 signal 5 } 
	{ p_pe1_write sc_out sc_logic 1 signal 5 } 
	{ B_rlen_pe19_dout sc_in sc_lv 32 signal 6 } 
	{ B_rlen_pe19_num_data_valid sc_in sc_lv 7 signal 6 } 
	{ B_rlen_pe19_fifo_cap sc_in sc_lv 7 signal 6 } 
	{ B_rlen_pe19_empty_n sc_in sc_logic 1 signal 6 } 
	{ B_rlen_pe19_read sc_out sc_logic 1 signal 6 } 
	{ mc_pe1_din sc_out sc_lv 66 signal 7 } 
	{ mc_pe1_num_data_valid sc_in sc_lv 7 signal 7 } 
	{ mc_pe1_fifo_cap sc_in sc_lv 7 signal 7 } 
	{ mc_pe1_full_n sc_in sc_logic 1 signal 7 } 
	{ mc_pe1_write sc_out sc_logic 1 signal 7 } 
	{ pe1_idle1_din sc_out sc_lv 1 signal 8 } 
	{ pe1_idle1_num_data_valid sc_in sc_lv 8 signal 8 } 
	{ pe1_idle1_fifo_cap sc_in sc_lv 8 signal 8 } 
	{ pe1_idle1_full_n sc_in sc_logic 1 signal 8 } 
	{ pe1_idle1_write sc_out sc_logic 1 signal 8 } 
	{ efinish121_dout sc_in sc_lv 1 signal 9 } 
	{ efinish121_num_data_valid sc_in sc_lv 7 signal 9 } 
	{ efinish121_fifo_cap sc_in sc_lv 7 signal 9 } 
	{ efinish121_empty_n sc_in sc_logic 1 signal 9 } 
	{ efinish121_read sc_out sc_logic 1 signal 9 } 
	{ workload_counter1 sc_out sc_lv 32 signal 10 } 
	{ workload_counter1_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cblock1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock1", "role": "dout" }} , 
 	{ "name": "cblock1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1", "role": "num_data_valid" }} , 
 	{ "name": "cblock1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1", "role": "fifo_cap" }} , 
 	{ "name": "cblock1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1", "role": "empty_n" }} , 
 	{ "name": "cblock1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1", "role": "read" }} , 
 	{ "name": "vblock1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock1", "role": "dout" }} , 
 	{ "name": "vblock1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1", "role": "num_data_valid" }} , 
 	{ "name": "vblock1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1", "role": "fifo_cap" }} , 
 	{ "name": "vblock1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1", "role": "empty_n" }} , 
 	{ "name": "vblock1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1", "role": "read" }} , 
 	{ "name": "cblock1d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock1d", "role": "dout" }} , 
 	{ "name": "cblock1d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1d", "role": "num_data_valid" }} , 
 	{ "name": "cblock1d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock1d", "role": "fifo_cap" }} , 
 	{ "name": "cblock1d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1d", "role": "empty_n" }} , 
 	{ "name": "cblock1d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock1d", "role": "read" }} , 
 	{ "name": "vblock1d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock1d", "role": "dout" }} , 
 	{ "name": "vblock1d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1d", "role": "num_data_valid" }} , 
 	{ "name": "vblock1d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock1d", "role": "fifo_cap" }} , 
 	{ "name": "vblock1d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1d", "role": "empty_n" }} , 
 	{ "name": "vblock1d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock1d", "role": "read" }} , 
 	{ "name": "pe1_job_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe1_job", "role": "dout" }} , 
 	{ "name": "pe1_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_job", "role": "num_data_valid" }} , 
 	{ "name": "pe1_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_job", "role": "fifo_cap" }} , 
 	{ "name": "pe1_job_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_job", "role": "empty_n" }} , 
 	{ "name": "pe1_job_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_job", "role": "read" }} , 
 	{ "name": "p_pe1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe1", "role": "din" }} , 
 	{ "name": "p_pe1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe1", "role": "num_data_valid" }} , 
 	{ "name": "p_pe1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe1", "role": "fifo_cap" }} , 
 	{ "name": "p_pe1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe1", "role": "full_n" }} , 
 	{ "name": "p_pe1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe1", "role": "write" }} , 
 	{ "name": "B_rlen_pe19_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rlen_pe19", "role": "dout" }} , 
 	{ "name": "B_rlen_pe19_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "B_rlen_pe19", "role": "num_data_valid" }} , 
 	{ "name": "B_rlen_pe19_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "B_rlen_pe19", "role": "fifo_cap" }} , 
 	{ "name": "B_rlen_pe19_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe19", "role": "empty_n" }} , 
 	{ "name": "B_rlen_pe19_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe19", "role": "read" }} , 
 	{ "name": "mc_pe1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "mc_pe1", "role": "din" }} , 
 	{ "name": "mc_pe1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "mc_pe1", "role": "num_data_valid" }} , 
 	{ "name": "mc_pe1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "mc_pe1", "role": "fifo_cap" }} , 
 	{ "name": "mc_pe1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe1", "role": "full_n" }} , 
 	{ "name": "mc_pe1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe1", "role": "write" }} , 
 	{ "name": "pe1_idle1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle1", "role": "din" }} , 
 	{ "name": "pe1_idle1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_idle1", "role": "num_data_valid" }} , 
 	{ "name": "pe1_idle1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe1_idle1", "role": "fifo_cap" }} , 
 	{ "name": "pe1_idle1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle1", "role": "full_n" }} , 
 	{ "name": "pe1_idle1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe1_idle1", "role": "write" }} , 
 	{ "name": "efinish121_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish121", "role": "dout" }} , 
 	{ "name": "efinish121_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "efinish121", "role": "num_data_valid" }} , 
 	{ "name": "efinish121_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "efinish121", "role": "fifo_cap" }} , 
 	{ "name": "efinish121_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish121", "role": "empty_n" }} , 
 	{ "name": "efinish121_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish121", "role": "read" }} , 
 	{ "name": "workload_counter1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "workload_counter1", "role": "default" }} , 
 	{ "name": "workload_counter1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "workload_counter1", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "pe",
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
			{"Name" : "cblock1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pe_Pipeline_VITIS_LOOP_35_2_fu_137", "Port" : "cblock1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "vblock1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pe_Pipeline_VITIS_LOOP_35_2_fu_137", "Port" : "vblock1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cblock1d", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pe_Pipeline_VITIS_LOOP_35_2_fu_137", "Port" : "cblock1d", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "vblock1d", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pe_Pipeline_VITIS_LOOP_35_2_fu_137", "Port" : "vblock1d", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "pe1_job", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe1_job_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_pe1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_pe1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pe_Pipeline_VITIS_LOOP_35_2_fu_137", "Port" : "p_pe1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "B_rlen_pe19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "B_rlen_pe19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mc_pe1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mc_pe1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe1_idle1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe1_idle1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "efinish121", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "efinish121_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "workload_counter1", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pe_Pipeline_VITIS_LOOP_35_2_fu_137", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
		"CDFG" : "pe_Pipeline_VITIS_LOOP_35_2",
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
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b_rlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "curr_job_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_pe1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_pe1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vblock1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vblock1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cblock1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmp12", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock1d", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vblock1d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock1d", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cblock1d_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_35_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pe_Pipeline_VITIS_LOOP_35_2_fu_137.fmul_32ns_32ns_32_5_full_dsp_1_U1846", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pe_Pipeline_VITIS_LOOP_35_2_fu_137.fmul_32ns_32ns_32_5_full_dsp_1_U1847", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pe_Pipeline_VITIS_LOOP_35_2_fu_137.fmul_32ns_32ns_32_5_full_dsp_1_U1848", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pe_Pipeline_VITIS_LOOP_35_2_fu_137.fmul_32ns_32ns_32_5_full_dsp_1_U1849", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pe_Pipeline_VITIS_LOOP_35_2_fu_137.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	pe {
		cblock1 {Type I LastRead 0 FirstWrite -1}
		vblock1 {Type I LastRead 0 FirstWrite -1}
		cblock1d {Type I LastRead 0 FirstWrite -1}
		vblock1d {Type I LastRead 0 FirstWrite -1}
		pe1_job {Type I LastRead 1 FirstWrite -1}
		p_pe1 {Type O LastRead -1 FirstWrite 5}
		B_rlen_pe19 {Type I LastRead 2 FirstWrite -1}
		mc_pe1 {Type O LastRead -1 FirstWrite 1}
		pe1_idle1 {Type O LastRead -1 FirstWrite 0}
		efinish121 {Type I LastRead 5 FirstWrite -1}
		workload_counter1 {Type O LastRead -1 FirstWrite 5}}
	pe_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe1 {Type O LastRead -1 FirstWrite 5}
		vblock1 {Type I LastRead 0 FirstWrite -1}
		cblock1 {Type I LastRead 0 FirstWrite -1}
		cmp12 {Type I LastRead 0 FirstWrite -1}
		vblock1d {Type I LastRead 0 FirstWrite -1}
		cblock1d {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cblock1 { ap_fifo {  { cblock1_dout fifo_port_we 0 134 }  { cblock1_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock1_fifo_cap fifo_update 0 8 }  { cblock1_empty_n fifo_status 0 1 }  { cblock1_read fifo_data 1 1 } } }
	vblock1 { ap_fifo {  { vblock1_dout fifo_port_we 0 134 }  { vblock1_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock1_fifo_cap fifo_update 0 8 }  { vblock1_empty_n fifo_status 0 1 }  { vblock1_read fifo_data 1 1 } } }
	cblock1d { ap_fifo {  { cblock1d_dout fifo_port_we 0 134 }  { cblock1d_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock1d_fifo_cap fifo_update 0 8 }  { cblock1d_empty_n fifo_status 0 1 }  { cblock1d_read fifo_data 1 1 } } }
	vblock1d { ap_fifo {  { vblock1d_dout fifo_port_we 0 134 }  { vblock1d_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock1d_fifo_cap fifo_update 0 8 }  { vblock1d_empty_n fifo_status 0 1 }  { vblock1d_read fifo_data 1 1 } } }
	pe1_job { ap_fifo {  { pe1_job_dout fifo_port_we 0 66 }  { pe1_job_num_data_valid fifo_status_num_data_valid 0 8 }  { pe1_job_fifo_cap fifo_update 0 8 }  { pe1_job_empty_n fifo_status 0 1 }  { pe1_job_read fifo_data 1 1 } } }
	p_pe1 { ap_fifo {  { p_pe1_din fifo_port_we 1 263 }  { p_pe1_num_data_valid fifo_status_num_data_valid 0 11 }  { p_pe1_fifo_cap fifo_update 0 11 }  { p_pe1_full_n fifo_status 0 1 }  { p_pe1_write fifo_data 1 1 } } }
	B_rlen_pe19 { ap_fifo {  { B_rlen_pe19_dout fifo_port_we 0 32 }  { B_rlen_pe19_num_data_valid fifo_status_num_data_valid 0 7 }  { B_rlen_pe19_fifo_cap fifo_update 0 7 }  { B_rlen_pe19_empty_n fifo_status 0 1 }  { B_rlen_pe19_read fifo_data 1 1 } } }
	mc_pe1 { ap_fifo {  { mc_pe1_din fifo_port_we 1 66 }  { mc_pe1_num_data_valid fifo_status_num_data_valid 0 7 }  { mc_pe1_fifo_cap fifo_update 0 7 }  { mc_pe1_full_n fifo_status 0 1 }  { mc_pe1_write fifo_data 1 1 } } }
	pe1_idle1 { ap_fifo {  { pe1_idle1_din fifo_port_we 1 1 }  { pe1_idle1_num_data_valid fifo_status_num_data_valid 0 8 }  { pe1_idle1_fifo_cap fifo_update 0 8 }  { pe1_idle1_full_n fifo_status 0 1 }  { pe1_idle1_write fifo_data 1 1 } } }
	efinish121 { ap_fifo {  { efinish121_dout fifo_port_we 0 1 }  { efinish121_num_data_valid fifo_status_num_data_valid 0 7 }  { efinish121_fifo_cap fifo_update 0 7 }  { efinish121_empty_n fifo_status 0 1 }  { efinish121_read fifo_data 1 1 } } }
	workload_counter1 { ap_vld {  { workload_counter1 out_data 1 32 }  { workload_counter1_ap_vld out_vld 1 1 } } }
}
