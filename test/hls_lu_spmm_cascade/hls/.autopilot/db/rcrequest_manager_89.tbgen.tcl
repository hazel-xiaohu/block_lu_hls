set moduleName rcrequest_manager_89
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type dataflow
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
set C_modelName {rcrequest_manager.89}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ rcache_stream4 int 398 regular {fifo 0 volatile }  }
	{ rrequest4 int 398 regular {fifo 1 volatile }  }
	{ rresponse4 int 168 regular {fifo 0 volatile }  }
	{ rblock4 int 398 regular {fifo 1 volatile }  }
	{ brcsr4 int 128 regular {axi_master 0}  }
	{ B_rcsr int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "rcache_stream4", "interface" : "fifo", "bitwidth" : 398, "direction" : "READONLY"} , 
 	{ "Name" : "rrequest4", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rresponse4", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "rblock4", "interface" : "fifo", "bitwidth" : 398, "direction" : "WRITEONLY"} , 
 	{ "Name" : "brcsr4", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "B_rcsr4","offset": { "type": "dynamic","port_name": "B_rcsr4","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_rcsr", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 67
set portList { 
	{ rcache_stream4_dout sc_in sc_lv 398 signal 0 } 
	{ rcache_stream4_empty_n sc_in sc_logic 1 signal 0 } 
	{ rcache_stream4_read sc_out sc_logic 1 signal 0 } 
	{ rrequest4_din sc_out sc_lv 398 signal 1 } 
	{ rrequest4_full_n sc_in sc_logic 1 signal 1 } 
	{ rrequest4_write sc_out sc_logic 1 signal 1 } 
	{ rresponse4_dout sc_in sc_lv 168 signal 2 } 
	{ rresponse4_empty_n sc_in sc_logic 1 signal 2 } 
	{ rresponse4_read sc_out sc_logic 1 signal 2 } 
	{ rblock4_din sc_out sc_lv 398 signal 3 } 
	{ rblock4_full_n sc_in sc_logic 1 signal 3 } 
	{ rblock4_write sc_out sc_logic 1 signal 3 } 
	{ m_axi_brcsr4_0_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_brcsr4_0_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_0_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_brcsr4_0_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr4_0_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_0_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_0_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_0_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr4_0_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_0_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_0_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_0_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_WDATA sc_out sc_lv 128 signal 4 } 
	{ m_axi_brcsr4_0_WSTRB sc_out sc_lv 16 signal 4 } 
	{ m_axi_brcsr4_0_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_0_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_0_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_brcsr4_0_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_0_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_brcsr4_0_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr4_0_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_0_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_0_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_0_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_brcsr4_0_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_0_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_brcsr4_0_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_0_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_RDATA sc_in sc_lv 128 signal 4 } 
	{ m_axi_brcsr4_0_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_0_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_brcsr4_0_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_0_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_0_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_brcsr4_0_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_brcsr4_0_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_brcsr4_0_BUSER sc_in sc_lv 1 signal 4 } 
	{ B_rcsr sc_in sc_lv 64 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ B_rcsr_ap_vld sc_in sc_logic 1 invld 5 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rcache_stream4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "dout" }} , 
 	{ "name": "rcache_stream4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "empty_n" }} , 
 	{ "name": "rcache_stream4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rcache_stream4", "role": "read" }} , 
 	{ "name": "rrequest4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rrequest4", "role": "din" }} , 
 	{ "name": "rrequest4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest4", "role": "full_n" }} , 
 	{ "name": "rrequest4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rrequest4", "role": "write" }} , 
 	{ "name": "rresponse4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "rresponse4", "role": "dout" }} , 
 	{ "name": "rresponse4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse4", "role": "empty_n" }} , 
 	{ "name": "rresponse4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rresponse4", "role": "read" }} , 
 	{ "name": "rblock4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":398, "type": "signal", "bundle":{"name": "rblock4", "role": "din" }} , 
 	{ "name": "rblock4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock4", "role": "full_n" }} , 
 	{ "name": "rblock4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rblock4", "role": "write" }} , 
 	{ "name": "m_axi_brcsr4_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_brcsr4_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_brcsr4_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_brcsr4_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWID" }} , 
 	{ "name": "m_axi_brcsr4_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_brcsr4_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_brcsr4_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_brcsr4_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_brcsr4_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_brcsr4_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_brcsr4_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_brcsr4_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_brcsr4_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_brcsr4_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_brcsr4_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_brcsr4_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_brcsr4_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_brcsr4_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_brcsr4_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_WID" }} , 
 	{ "name": "m_axi_brcsr4_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_brcsr4_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_brcsr4_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_brcsr4_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_brcsr4_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARID" }} , 
 	{ "name": "m_axi_brcsr4_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_brcsr4_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_brcsr4_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_brcsr4_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_brcsr4_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_brcsr4_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_brcsr4_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_brcsr4_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_brcsr4_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_brcsr4_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_brcsr4_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_brcsr4_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_brcsr4_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_brcsr4_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_RID" }} , 
 	{ "name": "m_axi_brcsr4_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_brcsr4_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_brcsr4_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_brcsr4_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_brcsr4_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_brcsr4_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_brcsr4_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_BID" }} , 
 	{ "name": "m_axi_brcsr4_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brcsr4", "role": "0_BUSER" }} , 
 	{ "name": "B_rcsr", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_rcsr", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "B_rcsr_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B_rcsr", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	rcrequest_manager_89 {
		rcache_stream4 {Type I LastRead 0 FirstWrite -1}
		rrequest4 {Type O LastRead -1 FirstWrite 1}
		rresponse4 {Type I LastRead 2 FirstWrite -1}
		rblock4 {Type O LastRead -1 FirstWrite 1}
		brcsr4 {Type I LastRead 3 FirstWrite -1}
		B_rcsr {Type I LastRead 2 FirstWrite -1}}
	rrequest_splitter_83 {
		rcache_stream4 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}}
	rrequest_splitter_83_Pipeline_VITIS_LOOP_9_1 {
		rcache_stream4 {Type I LastRead 0 FirstWrite -1}
		rrequest {Type O LastRead -1 FirstWrite 1}
		rcollec {Type O LastRead -1 FirstWrite 1}
		rscheduler {Type O LastRead -1 FirstWrite 1}
		temp_r_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_3_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_4_0_out {Type O LastRead -1 FirstWrite 0}
		temp_r_6_0_out {Type O LastRead -1 FirstWrite 0}}
	rrequest_manager_84 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}}
	rrequest_manager_84_Pipeline_VITIS_LOOP_40_1 {
		rrequest {Type I LastRead 0 FirstWrite -1}
		r_first {Type O LastRead -1 FirstWrite 1}
		curr_request_0_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_3_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_4_0_out {Type O LastRead -1 FirstWrite 0}
		curr_request_6_0_out {Type O LastRead -1 FirstWrite 0}}
	rschedule_access_98 {
		rscheduler {Type I LastRead 1 FirstWrite -1}
		rresponse4 {Type I LastRead 2 FirstWrite -1}
		roff {Type O LastRead -1 FirstWrite 3}
		brcsr4 {Type I LastRead 3 FirstWrite -1}
		off_pointer {Type I LastRead 0 FirstWrite -1}
		r_req {Type O LastRead -1 FirstWrite 1}}
	rschedule_access_98_Pipeline_VITIS_LOOP_87_3 {
		zext_ln87 {Type I LastRead 0 FirstWrite -1}
		add_ln87 {Type I LastRead 0 FirstWrite -1}
		brcsr4 {Type I LastRead 1 FirstWrite -1}
		sext_ln87 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		Bridx {Type O LastRead -1 FirstWrite 2}}
	rrequest_merger_85 {
		r_first {Type I LastRead 0 FirstWrite -1}
		r_req {Type I LastRead 0 FirstWrite -1}
		rrequest4 {Type O LastRead -1 FirstWrite 1}}
	rrequest_merger_85_Pipeline_VITIS_LOOP_125_1 {
		r_first {Type I LastRead 0 FirstWrite -1}
		rrequest4 {Type O LastRead -1 FirstWrite 1}
		r_req {Type I LastRead 0 FirstWrite -1}
		temp_5_sroa_100_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_95_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_90_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_85_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_80_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_75_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_70_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_65_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_60_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_55_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_50_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_45_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_40_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_35_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_30_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_25_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_20_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_15_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_10_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_5_0_out {Type O LastRead -1 FirstWrite 0}
		temp_5_sroa_0_0_out {Type O LastRead -1 FirstWrite 0}
		temp_6_0_out {Type O LastRead -1 FirstWrite 0}
		temp_4225_0_out {Type O LastRead -1 FirstWrite 0}
		temp_3224_0_out {Type O LastRead -1 FirstWrite 0}
		temp_2_0_out {Type O LastRead -1 FirstWrite 0}
		temp_0_0_out {Type O LastRead -1 FirstWrite 0}}
	rcollector_86 {
		rcollec {Type I LastRead 1 FirstWrite -1}
		roff {Type I LastRead 2 FirstWrite -1}
		rblock4 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rcache_stream4 { ap_fifo {  { rcache_stream4_dout fifo_data_out 0 398 }  { rcache_stream4_empty_n fifo_status_empty 0 1 }  { rcache_stream4_read fifo_data_in 1 1 } } }
	rrequest4 { ap_fifo {  { rrequest4_din fifo_data_out 1 398 }  { rrequest4_full_n fifo_status_empty 0 1 }  { rrequest4_write fifo_data_in 1 1 } } }
	rresponse4 { ap_fifo {  { rresponse4_dout fifo_data_out 0 168 }  { rresponse4_empty_n fifo_status_empty 0 1 }  { rresponse4_read fifo_data_in 1 1 } } }
	rblock4 { ap_fifo {  { rblock4_din fifo_data_out 1 398 }  { rblock4_full_n fifo_status_empty 0 1 }  { rblock4_write fifo_data_in 1 1 } } }
	 { m_axi {  { m_axi_brcsr4_0_AWVALID VALID 1 1 }  { m_axi_brcsr4_0_AWREADY READY 0 1 }  { m_axi_brcsr4_0_AWADDR ADDR 1 64 }  { m_axi_brcsr4_0_AWID ID 1 1 }  { m_axi_brcsr4_0_AWLEN SIZE 1 32 }  { m_axi_brcsr4_0_AWSIZE BURST 1 3 }  { m_axi_brcsr4_0_AWBURST LOCK 1 2 }  { m_axi_brcsr4_0_AWLOCK CACHE 1 2 }  { m_axi_brcsr4_0_AWCACHE PROT 1 4 }  { m_axi_brcsr4_0_AWPROT QOS 1 3 }  { m_axi_brcsr4_0_AWQOS REGION 1 4 }  { m_axi_brcsr4_0_AWREGION USER 1 4 }  { m_axi_brcsr4_0_AWUSER DATA 1 1 }  { m_axi_brcsr4_0_WVALID VALID 1 1 }  { m_axi_brcsr4_0_WREADY READY 0 1 }  { m_axi_brcsr4_0_WDATA FIFONUM 1 128 }  { m_axi_brcsr4_0_WSTRB STRB 1 16 }  { m_axi_brcsr4_0_WLAST LAST 1 1 }  { m_axi_brcsr4_0_WID ID 1 1 }  { m_axi_brcsr4_0_WUSER DATA 1 1 }  { m_axi_brcsr4_0_ARVALID VALID 1 1 }  { m_axi_brcsr4_0_ARREADY READY 0 1 }  { m_axi_brcsr4_0_ARADDR ADDR 1 64 }  { m_axi_brcsr4_0_ARID ID 1 1 }  { m_axi_brcsr4_0_ARLEN SIZE 1 32 }  { m_axi_brcsr4_0_ARSIZE BURST 1 3 }  { m_axi_brcsr4_0_ARBURST LOCK 1 2 }  { m_axi_brcsr4_0_ARLOCK CACHE 1 2 }  { m_axi_brcsr4_0_ARCACHE PROT 1 4 }  { m_axi_brcsr4_0_ARPROT QOS 1 3 }  { m_axi_brcsr4_0_ARQOS REGION 1 4 }  { m_axi_brcsr4_0_ARREGION USER 1 4 }  { m_axi_brcsr4_0_ARUSER DATA 1 1 }  { m_axi_brcsr4_0_RVALID VALID 0 1 }  { m_axi_brcsr4_0_RREADY READY 1 1 }  { m_axi_brcsr4_0_RDATA FIFONUM 0 128 }  { m_axi_brcsr4_0_RLAST LAST 0 1 }  { m_axi_brcsr4_0_RID ID 0 1 }  { m_axi_brcsr4_0_RFIFONUM LEN 0 9 }  { m_axi_brcsr4_0_RUSER DATA 0 1 }  { m_axi_brcsr4_0_RRESP RESP 0 2 }  { m_axi_brcsr4_0_BVALID VALID 0 1 }  { m_axi_brcsr4_0_BREADY READY 1 1 }  { m_axi_brcsr4_0_BRESP RESP 0 2 }  { m_axi_brcsr4_0_BID ID 0 1 }  { m_axi_brcsr4_0_BUSER DATA 0 1 } } }
	B_rcsr { ap_none {  { B_rcsr in_data 0 64 }  { B_rcsr_ap_vld in_vld 0 1 } } }
}
