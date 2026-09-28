set moduleName pe_46
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
set C_modelName {pe.46}
set C_modelType { void 0 }
set C_modelArgList {
	{ cblock4 int 134 regular {fifo 0 volatile }  }
	{ vblock4 int 134 regular {fifo 0 volatile }  }
	{ cblock4d int 134 regular {fifo 0 volatile }  }
	{ vblock4d int 134 regular {fifo 0 volatile }  }
	{ pe4_job int 66 regular {fifo 0 volatile }  }
	{ p_pe4 int 263 regular {fifo 1 volatile }  }
	{ B_rlen_pe412 int 32 regular {fifo 0 volatile }  }
	{ mc_pe4 int 66 regular {fifo 1 volatile }  }
	{ pe4_idle4 int 1 regular {fifo 1 volatile }  }
	{ efinish424 int 1 regular {fifo 0 volatile }  }
	{ workload_counter4 int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock4", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "cblock4d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "vblock4d", "interface" : "fifo", "bitwidth" : 134, "direction" : "READONLY"} , 
 	{ "Name" : "pe4_job", "interface" : "fifo", "bitwidth" : 66, "direction" : "READONLY"} , 
 	{ "Name" : "p_pe4", "interface" : "fifo", "bitwidth" : 263, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_rlen_pe412", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mc_pe4", "interface" : "fifo", "bitwidth" : 66, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pe4_idle4", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "efinish424", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "workload_counter4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ cblock4_dout sc_in sc_lv 134 signal 0 } 
	{ cblock4_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ cblock4_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ cblock4_empty_n sc_in sc_logic 1 signal 0 } 
	{ cblock4_read sc_out sc_logic 1 signal 0 } 
	{ vblock4_dout sc_in sc_lv 134 signal 1 } 
	{ vblock4_num_data_valid sc_in sc_lv 8 signal 1 } 
	{ vblock4_fifo_cap sc_in sc_lv 8 signal 1 } 
	{ vblock4_empty_n sc_in sc_logic 1 signal 1 } 
	{ vblock4_read sc_out sc_logic 1 signal 1 } 
	{ cblock4d_dout sc_in sc_lv 134 signal 2 } 
	{ cblock4d_num_data_valid sc_in sc_lv 8 signal 2 } 
	{ cblock4d_fifo_cap sc_in sc_lv 8 signal 2 } 
	{ cblock4d_empty_n sc_in sc_logic 1 signal 2 } 
	{ cblock4d_read sc_out sc_logic 1 signal 2 } 
	{ vblock4d_dout sc_in sc_lv 134 signal 3 } 
	{ vblock4d_num_data_valid sc_in sc_lv 8 signal 3 } 
	{ vblock4d_fifo_cap sc_in sc_lv 8 signal 3 } 
	{ vblock4d_empty_n sc_in sc_logic 1 signal 3 } 
	{ vblock4d_read sc_out sc_logic 1 signal 3 } 
	{ pe4_job_dout sc_in sc_lv 66 signal 4 } 
	{ pe4_job_num_data_valid sc_in sc_lv 8 signal 4 } 
	{ pe4_job_fifo_cap sc_in sc_lv 8 signal 4 } 
	{ pe4_job_empty_n sc_in sc_logic 1 signal 4 } 
	{ pe4_job_read sc_out sc_logic 1 signal 4 } 
	{ p_pe4_din sc_out sc_lv 263 signal 5 } 
	{ p_pe4_num_data_valid sc_in sc_lv 11 signal 5 } 
	{ p_pe4_fifo_cap sc_in sc_lv 11 signal 5 } 
	{ p_pe4_full_n sc_in sc_logic 1 signal 5 } 
	{ p_pe4_write sc_out sc_logic 1 signal 5 } 
	{ B_rlen_pe412_dout sc_in sc_lv 32 signal 6 } 
	{ B_rlen_pe412_num_data_valid sc_in sc_lv 7 signal 6 } 
	{ B_rlen_pe412_fifo_cap sc_in sc_lv 7 signal 6 } 
	{ B_rlen_pe412_empty_n sc_in sc_logic 1 signal 6 } 
	{ B_rlen_pe412_read sc_out sc_logic 1 signal 6 } 
	{ mc_pe4_din sc_out sc_lv 66 signal 7 } 
	{ mc_pe4_num_data_valid sc_in sc_lv 7 signal 7 } 
	{ mc_pe4_fifo_cap sc_in sc_lv 7 signal 7 } 
	{ mc_pe4_full_n sc_in sc_logic 1 signal 7 } 
	{ mc_pe4_write sc_out sc_logic 1 signal 7 } 
	{ pe4_idle4_din sc_out sc_lv 1 signal 8 } 
	{ pe4_idle4_num_data_valid sc_in sc_lv 8 signal 8 } 
	{ pe4_idle4_fifo_cap sc_in sc_lv 8 signal 8 } 
	{ pe4_idle4_full_n sc_in sc_logic 1 signal 8 } 
	{ pe4_idle4_write sc_out sc_logic 1 signal 8 } 
	{ efinish424_dout sc_in sc_lv 1 signal 9 } 
	{ efinish424_num_data_valid sc_in sc_lv 7 signal 9 } 
	{ efinish424_fifo_cap sc_in sc_lv 7 signal 9 } 
	{ efinish424_empty_n sc_in sc_logic 1 signal 9 } 
	{ efinish424_read sc_out sc_logic 1 signal 9 } 
	{ workload_counter4 sc_out sc_lv 32 signal 10 } 
	{ workload_counter4_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cblock4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock4", "role": "dout" }} , 
 	{ "name": "cblock4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4", "role": "num_data_valid" }} , 
 	{ "name": "cblock4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4", "role": "fifo_cap" }} , 
 	{ "name": "cblock4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "empty_n" }} , 
 	{ "name": "cblock4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4", "role": "read" }} , 
 	{ "name": "vblock4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock4", "role": "dout" }} , 
 	{ "name": "vblock4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4", "role": "num_data_valid" }} , 
 	{ "name": "vblock4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4", "role": "fifo_cap" }} , 
 	{ "name": "vblock4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "empty_n" }} , 
 	{ "name": "vblock4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4", "role": "read" }} , 
 	{ "name": "cblock4d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "cblock4d", "role": "dout" }} , 
 	{ "name": "cblock4d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4d", "role": "num_data_valid" }} , 
 	{ "name": "cblock4d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cblock4d", "role": "fifo_cap" }} , 
 	{ "name": "cblock4d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4d", "role": "empty_n" }} , 
 	{ "name": "cblock4d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cblock4d", "role": "read" }} , 
 	{ "name": "vblock4d_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":134, "type": "signal", "bundle":{"name": "vblock4d", "role": "dout" }} , 
 	{ "name": "vblock4d_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4d", "role": "num_data_valid" }} , 
 	{ "name": "vblock4d_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "vblock4d", "role": "fifo_cap" }} , 
 	{ "name": "vblock4d_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4d", "role": "empty_n" }} , 
 	{ "name": "vblock4d_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vblock4d", "role": "read" }} , 
 	{ "name": "pe4_job_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "pe4_job", "role": "dout" }} , 
 	{ "name": "pe4_job_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_job", "role": "num_data_valid" }} , 
 	{ "name": "pe4_job_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_job", "role": "fifo_cap" }} , 
 	{ "name": "pe4_job_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_job", "role": "empty_n" }} , 
 	{ "name": "pe4_job_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_job", "role": "read" }} , 
 	{ "name": "p_pe4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":263, "type": "signal", "bundle":{"name": "p_pe4", "role": "din" }} , 
 	{ "name": "p_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe4", "role": "num_data_valid" }} , 
 	{ "name": "p_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_pe4", "role": "fifo_cap" }} , 
 	{ "name": "p_pe4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe4", "role": "full_n" }} , 
 	{ "name": "p_pe4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_pe4", "role": "write" }} , 
 	{ "name": "B_rlen_pe412_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_rlen_pe412", "role": "dout" }} , 
 	{ "name": "B_rlen_pe412_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "B_rlen_pe412", "role": "num_data_valid" }} , 
 	{ "name": "B_rlen_pe412_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "B_rlen_pe412", "role": "fifo_cap" }} , 
 	{ "name": "B_rlen_pe412_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe412", "role": "empty_n" }} , 
 	{ "name": "B_rlen_pe412_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_rlen_pe412", "role": "read" }} , 
 	{ "name": "mc_pe4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "mc_pe4", "role": "din" }} , 
 	{ "name": "mc_pe4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "mc_pe4", "role": "num_data_valid" }} , 
 	{ "name": "mc_pe4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "mc_pe4", "role": "fifo_cap" }} , 
 	{ "name": "mc_pe4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe4", "role": "full_n" }} , 
 	{ "name": "mc_pe4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mc_pe4", "role": "write" }} , 
 	{ "name": "pe4_idle4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle4", "role": "din" }} , 
 	{ "name": "pe4_idle4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_idle4", "role": "num_data_valid" }} , 
 	{ "name": "pe4_idle4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pe4_idle4", "role": "fifo_cap" }} , 
 	{ "name": "pe4_idle4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle4", "role": "full_n" }} , 
 	{ "name": "pe4_idle4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pe4_idle4", "role": "write" }} , 
 	{ "name": "efinish424_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish424", "role": "dout" }} , 
 	{ "name": "efinish424_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "efinish424", "role": "num_data_valid" }} , 
 	{ "name": "efinish424_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "efinish424", "role": "fifo_cap" }} , 
 	{ "name": "efinish424_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish424", "role": "empty_n" }} , 
 	{ "name": "efinish424_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "efinish424", "role": "read" }} , 
 	{ "name": "workload_counter4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "workload_counter4", "role": "default" }} , 
 	{ "name": "workload_counter4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "workload_counter4", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "pe_46",
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
			{"Name" : "cblock4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pe_46_Pipeline_VITIS_LOOP_35_2_fu_137", "Port" : "cblock4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "vblock4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pe_46_Pipeline_VITIS_LOOP_35_2_fu_137", "Port" : "vblock4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cblock4d", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pe_46_Pipeline_VITIS_LOOP_35_2_fu_137", "Port" : "cblock4d", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "vblock4d", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "100", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pe_46_Pipeline_VITIS_LOOP_35_2_fu_137", "Port" : "vblock4d", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "pe4_job", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe4_job_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_pe4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1000", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "p_pe4_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pe_46_Pipeline_VITIS_LOOP_35_2_fu_137", "Port" : "p_pe4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "B_rlen_pe412", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "B_rlen_pe412_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mc_pe4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mc_pe4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pe4_idle4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "128", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "pe4_idle4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "efinish424", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "efinish424_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "workload_counter4", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pe_46_Pipeline_VITIS_LOOP_35_2_fu_137", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
		"CDFG" : "pe_46_Pipeline_VITIS_LOOP_35_2",
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
			{"Name" : "p_pe4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_pe4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "vblock4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vblock4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cblock4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmp12", "Type" : "None", "Direction" : "I"},
			{"Name" : "vblock4d", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "vblock4d_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cblock4d", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cblock4d_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_35_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pe_46_Pipeline_VITIS_LOOP_35_2_fu_137.fmul_32ns_32ns_32_5_full_dsp_1_U1916", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pe_46_Pipeline_VITIS_LOOP_35_2_fu_137.fmul_32ns_32ns_32_5_full_dsp_1_U1917", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pe_46_Pipeline_VITIS_LOOP_35_2_fu_137.fmul_32ns_32ns_32_5_full_dsp_1_U1918", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pe_46_Pipeline_VITIS_LOOP_35_2_fu_137.fmul_32ns_32ns_32_5_full_dsp_1_U1919", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pe_46_Pipeline_VITIS_LOOP_35_2_fu_137.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	pe_46 {
		cblock4 {Type I LastRead 0 FirstWrite -1}
		vblock4 {Type I LastRead 0 FirstWrite -1}
		cblock4d {Type I LastRead 0 FirstWrite -1}
		vblock4d {Type I LastRead 0 FirstWrite -1}
		pe4_job {Type I LastRead 1 FirstWrite -1}
		p_pe4 {Type O LastRead -1 FirstWrite 5}
		B_rlen_pe412 {Type I LastRead 2 FirstWrite -1}
		mc_pe4 {Type O LastRead -1 FirstWrite 1}
		pe4_idle4 {Type O LastRead -1 FirstWrite 0}
		efinish424 {Type I LastRead 5 FirstWrite -1}
		workload_counter4 {Type O LastRead -1 FirstWrite 5}}
	pe_46_Pipeline_VITIS_LOOP_35_2 {
		b_rlen {Type I LastRead 0 FirstWrite -1}
		curr_job_val {Type I LastRead 0 FirstWrite -1}
		p_pe4 {Type O LastRead -1 FirstWrite 5}
		vblock4 {Type I LastRead 0 FirstWrite -1}
		cblock4 {Type I LastRead 0 FirstWrite -1}
		cmp12 {Type I LastRead 0 FirstWrite -1}
		vblock4d {Type I LastRead 0 FirstWrite -1}
		cblock4d {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cblock4 { ap_fifo {  { cblock4_dout fifo_port_we 0 134 }  { cblock4_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock4_fifo_cap fifo_update 0 8 }  { cblock4_empty_n fifo_status 0 1 }  { cblock4_read fifo_data 1 1 } } }
	vblock4 { ap_fifo {  { vblock4_dout fifo_port_we 0 134 }  { vblock4_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock4_fifo_cap fifo_update 0 8 }  { vblock4_empty_n fifo_status 0 1 }  { vblock4_read fifo_data 1 1 } } }
	cblock4d { ap_fifo {  { cblock4d_dout fifo_port_we 0 134 }  { cblock4d_num_data_valid fifo_status_num_data_valid 0 8 }  { cblock4d_fifo_cap fifo_update 0 8 }  { cblock4d_empty_n fifo_status 0 1 }  { cblock4d_read fifo_data 1 1 } } }
	vblock4d { ap_fifo {  { vblock4d_dout fifo_port_we 0 134 }  { vblock4d_num_data_valid fifo_status_num_data_valid 0 8 }  { vblock4d_fifo_cap fifo_update 0 8 }  { vblock4d_empty_n fifo_status 0 1 }  { vblock4d_read fifo_data 1 1 } } }
	pe4_job { ap_fifo {  { pe4_job_dout fifo_port_we 0 66 }  { pe4_job_num_data_valid fifo_status_num_data_valid 0 8 }  { pe4_job_fifo_cap fifo_update 0 8 }  { pe4_job_empty_n fifo_status 0 1 }  { pe4_job_read fifo_data 1 1 } } }
	p_pe4 { ap_fifo {  { p_pe4_din fifo_port_we 1 263 }  { p_pe4_num_data_valid fifo_status_num_data_valid 0 11 }  { p_pe4_fifo_cap fifo_update 0 11 }  { p_pe4_full_n fifo_status 0 1 }  { p_pe4_write fifo_data 1 1 } } }
	B_rlen_pe412 { ap_fifo {  { B_rlen_pe412_dout fifo_port_we 0 32 }  { B_rlen_pe412_num_data_valid fifo_status_num_data_valid 0 7 }  { B_rlen_pe412_fifo_cap fifo_update 0 7 }  { B_rlen_pe412_empty_n fifo_status 0 1 }  { B_rlen_pe412_read fifo_data 1 1 } } }
	mc_pe4 { ap_fifo {  { mc_pe4_din fifo_port_we 1 66 }  { mc_pe4_num_data_valid fifo_status_num_data_valid 0 7 }  { mc_pe4_fifo_cap fifo_update 0 7 }  { mc_pe4_full_n fifo_status 0 1 }  { mc_pe4_write fifo_data 1 1 } } }
	pe4_idle4 { ap_fifo {  { pe4_idle4_din fifo_port_we 1 1 }  { pe4_idle4_num_data_valid fifo_status_num_data_valid 0 8 }  { pe4_idle4_fifo_cap fifo_update 0 8 }  { pe4_idle4_full_n fifo_status 0 1 }  { pe4_idle4_write fifo_data 1 1 } } }
	efinish424 { ap_fifo {  { efinish424_dout fifo_port_we 0 1 }  { efinish424_num_data_valid fifo_status_num_data_valid 0 7 }  { efinish424_fifo_cap fifo_update 0 7 }  { efinish424_empty_n fifo_status 0 1 }  { efinish424_read fifo_data 1 1 } } }
	workload_counter4 { ap_vld {  { workload_counter4 out_data 1 32 }  { workload_counter4_ap_vld out_vld 1 1 } } }
}
